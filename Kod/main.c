/*
 * TimerMEProjekt.c
 *
 * Created: 16.04.2021 15:30:58
 * Author : Piotr Wilk 259106
 * 
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/atomic.h>

#define FALSE 0
#define TRUE 1

#define MODE_SELECTION_MODE 0
#define TIME_SELECTION_MODE 1
#define TIMER_MODE_SHORT 2
#define TIMER_MODE_LONG 3
#define STOPWATCH_MODE 4
#define TIMER_DONE_MODE 5
#define STOPWATCH_PAUSED_MODE 6

#define SECOND_L_PART 5
#define SECOND_H_PART 4
#define MINUTE_L_PART 3
#define MINUTE_H_PART 2
#define HOUR_L_PART 1
#define HOUR_H_PART 0

#define S_A (1<<PB0)
#define S_B (1<<PB1)
#define S_C (1<<PB2)
#define S_D (1<<PB3)
#define S_E (1<<PB4)
#define S_F (1<<PB5)
#define S_G (1<<PB6)
#define S_DP (1<<PB7)

#define DISP_1 PD5
#define DISP_2 PD4
#define DISP_3 PD1
#define DISP_4 PD0

#define DC_PWM_BUTTON PD6
#define BUTTON_1 PD2
#define BUTTON_2 PD3
#define BUZZ_PIN PA0

#define TurnOnDisplay(display) (PORTD &= ~(1 << display))
#define TurnOffDisplay(display) (PORTD |= (1 << display))
#define TurnOffAllDisplayes() (PORTD |= ((1 << DISP_1)|(1 << DISP_2)|(1 << DISP_3)|(1 << DISP_4)))

#define NUM_DOT (S_DP)
#define NUM_BAR (S_G);
#define NUM_ZERO (S_A|S_B|S_C|S_D|S_E|S_F)
#define NUM_ONE (S_B|S_C)
#define NUM_TWO (S_A|S_B|S_G|S_E|S_D)
#define NUM_THREE (S_A|S_B|S_G|S_C|S_D)
#define NUM_FOUR (S_B|S_F|S_G|S_C)
#define NUM_FIVE ((1 << PB0)|(1 << PB5)|(1 << PB6)|(1 << PB2)|(1 << PB3))
#define NUM_SIX ((1 << PB0)|(1 << PB5)|(1 << PB6)|(1 << PB4)|(1 << PB2)|(1 << PB3))
#define NUM_SEVEN (S_A|S_B|S_C)
#define NUM_EIGHT (NUM_ZERO|S_G)
#define NUM_NINE (NUM_SEVEN|S_F|S_G)

#define DisplayNumber(number) ({\
	/*Set number*/\
	PORTB =  number;\
})

#define Initialize() ({\
	DDRB = (1 << PB7) | (1 << PB6) | (1 << PB5) | (1 << PB4) | (1 << PB3) | (1 << PB2)| (1 << PB1)| (1 << PB0);\
	DDRD = (1 << PD0) | (1 << PD1) | (1 << PD4) | (1 << PD5);\
	DDRA = (1 << BUZZ_PIN);\
	PORTD = (1 << DC_PWM_BUTTON)|(1 << BUTTON_1)|(1 << BUTTON_2);\
	/* External interrupt for btn1 and btn2 are set when they're low*/\
	/*Setup interrupt request*/\
	/*GIMSK = (1 << INT1)|(1 << INT0);*/\
	/*------DISPLAY UPDATE TIMER-------*/\
	/*overall 240Hz*/\
	/*Set timer to FAST PWM mode*/\
	TCCR0A = (1 << WGM01)|(1 << WGM00);\
	/*duty cycle 90%*/\
	OCR0A = (243); \
	/*set interrupt when number of ticks in OCR0A*/\
	TIMSK = (1 << OCIE0A)|(1 << TOIE0);\
	/*number of ticks accumulated by the timer*/\
	/*Set prescaler to /64*/\
	TCCR0B =  (1 << CS01)|(1 << CS00);\
	/*------TIME UPDATE TIMER-------*/\
	/*CTC mode, 5Hz, 0.2ms update*/\
	TCCR1B = (1<<WGM12)|(1<<CS12);\
	/*Set prescaler to /256*/\
	/*Compare ticks value*/\
	OCR1A = 3125;\
	TIMSK |= ( 1<< OCIE1A );/* Interrupt flag on compare with OCR1A*/\
	sei();\
})


volatile uint16_t milisElapsed = 0;
 int8_t seconds = 0;
 int8_t minutes = 0;
 int8_t hours = 0;
 int8_t numbersParts[6] = {0,0,0,0,0,0};
 uint8_t numbersPartsMaxVal[6] = {0,0,0,0,0,0};
 uint8_t numberPartsToDisplay[4] = {0,0,0,0};
 uint8_t screen[4] = {NUM_ZERO, NUM_ZERO, NUM_ZERO, NUM_ONE}; //Initialize display with some digits 
 uint8_t displayes[4] = {DISP_1, DISP_2, DISP_3, DISP_4};
 uint8_t digits[11] = {NUM_ZERO, NUM_ONE, NUM_TWO, NUM_THREE, NUM_FOUR, NUM_FIVE, NUM_SIX, NUM_SEVEN,
								NUM_EIGHT, NUM_NINE, NUM_DOT};
 uint8_t activeDisplay = 0;
volatile uint8_t turnOffDisplay = FALSE;
volatile uint8_t turnOnDisplay = TRUE;
uint8_t buzzEnabled = FALSE;
uint8_t pwmMode[6] = {15 ,51, 102, 153, 204, 243};
uint8_t currentPwmMode = 3;
uint8_t pwmButtonEnabled = TRUE;
uint8_t dcPwmButtonHeld = FALSE;
uint8_t button1Held = FALSE;
uint8_t button2Held = FALSE;
uint8_t currentDeviceMode = MODE_SELECTION_MODE; 
uint8_t selectedDeviceMode = TIMER_MODE_SHORT;
uint8_t selectedNumberPart = 3;
uint8_t displayIgnoreZeros = TRUE;

#define SetDisplayNumber(num_l, disp_l, num_h, disp_h) ({\
	screen[disp_l] = digits[num_l];\
	screen[disp_h] = digits[num_h];\
})
#define SetNumbersMaxPartsValues(a1, a2, b1, b2, c1, c2)({\
	numbersPartsMaxVal[0] = a1;\
	numbersPartsMaxVal[1] = a2;\
	numbersPartsMaxVal[2] = b1;\
	numbersPartsMaxVal[3] = b2;\
	numbersPartsMaxVal[4] = c1;\
	numbersPartsMaxVal[5] = c2;\
})
#define SetAvailableParts(p1, p2, p3, p4)({\
	numberPartsToDisplay[0] = p1;\
	numberPartsToDisplay[1] = p2;\
	numberPartsToDisplay[2] = p3;\
	numberPartsToDisplay[3] = p4;\
})
#define SetDutyCycle(dutyCycle) (OCR0A = dutyCycle)
#define PIN_HIGH(pinx, pin) (((pinx & (1<<pin)) == (1<<pin)))


void SetupStop();

void HandleTimer() 
{
	if (milisElapsed >= 1000)
	{
		ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
		{
			screen[3] = digits[numbersParts[numberPartsToDisplay[3]]];
			screen[2] = digits[numbersParts[numberPartsToDisplay[2]]];
			screen[1] = digits[numbersParts[numberPartsToDisplay[1]]];
			screen[0] = digits[numbersParts[numberPartsToDisplay[0]]];
		}
		milisElapsed = 0;
		
		if(--numbersParts[SECOND_L_PART] < 0)
		{
			numbersParts[SECOND_L_PART] = numbersPartsMaxVal[SECOND_L_PART];
			if(--numbersParts[SECOND_H_PART] < 0)
				numbersParts[SECOND_H_PART] = numbersPartsMaxVal[SECOND_H_PART] ;
		}
		
		if(--seconds < 0)
		{
			seconds = 59;
			
			if(--numbersParts[MINUTE_L_PART] < 0)
			{
				numbersParts[MINUTE_L_PART] = numbersPartsMaxVal[MINUTE_L_PART];
				if(--numbersParts[MINUTE_H_PART] < 0)
					numbersParts[MINUTE_H_PART] = numbersPartsMaxVal[MINUTE_H_PART];
			}
			
			if (--minutes < 0)
			{
				minutes = 59;
				
				if (--numbersParts[HOUR_L_PART] < 0)
				{
					numbersParts[HOUR_L_PART] = numbersPartsMaxVal[HOUR_L_PART];
					if(--numbersParts[HOUR_H_PART] < 0)
						numbersParts[HOUR_H_PART] = numbersPartsMaxVal[HOUR_H_PART];
				}	
				if (--hours < 0)
				{
					SetupStop();
				}
			}
		}	
	}
	if (minutes + seconds + hours == 0) 
	{
		SetupStop();
	}
}

void HandleStopwatch()
{
	if (milisElapsed >= 1000 && currentDeviceMode != STOPWATCH_PAUSED_MODE)
	{
		screen[0] = digits[numbersParts[MINUTE_H_PART]];
		screen[1] = digits[numbersParts[MINUTE_L_PART]];
		screen[2] = digits[numbersParts[SECOND_H_PART]];
		screen[3] = digits[numbersParts[SECOND_L_PART]];
		milisElapsed = 0;
			
		if(++numbersParts[SECOND_L_PART] == 10)
		{
			numbersParts[SECOND_L_PART] = 0;
			if(++numbersParts[SECOND_H_PART] == 6)
			{
				numbersParts[SECOND_H_PART] =  0;
				if(++numbersParts[MINUTE_L_PART] == 10)
				{
					numbersParts[MINUTE_L_PART] = 0;
					if(++numbersParts[MINUTE_H_PART] == 10)
					{
						numbersParts[MINUTE_H_PART] = 9;
						numbersParts[MINUTE_L_PART] = 9;
						SetupStop();
					}
				}
			}
		}
	}
	else if (currentDeviceMode == STOPWATCH_PAUSED_MODE && !button2Held)
		milisElapsed = 0;
		
	//Button 2 pressed
	if(!PIN_HIGH(PIND, BUTTON_2))
	{
		if (!button2Held)
		{
			button2Held = TRUE;
			milisElapsed = 0;
			currentDeviceMode = (currentDeviceMode == STOPWATCH_MODE) ? STOPWATCH_PAUSED_MODE : STOPWATCH_MODE;
		}
		else if(milisElapsed >= 1000)
		{
			currentDeviceMode = STOPWATCH_MODE;
			numbersParts[MINUTE_H_PART] = 0;
			numbersParts[MINUTE_L_PART] = 0;
			numbersParts[SECOND_H_PART] = 0;
			numbersParts[SECOND_L_PART] = 0;
		}
	}
	else
		button2Held = FALSE;
}

void SetupStop()
{
	screen[1] = NUM_BAR;
	screen[2] = NUM_BAR;
	currentPwmMode = 5;
	SetDutyCycle(pwmMode[5]);
	pwmButtonEnabled = FALSE;
	milisElapsed = 0;
	currentDeviceMode = TIMER_DONE_MODE;
	displayIgnoreZeros = FALSE;
}

void HandleDisplayRefresh()
{		
	if(turnOffDisplay)
	{
		++activeDisplay;
		if(activeDisplay > 3)
			activeDisplay = 0;
		if(activeDisplay == 0)
			{TurnOffDisplay(displayes[3]);} //Turn off last display
		else
			{TurnOffDisplay(displayes[activeDisplay-1]);}
		turnOffDisplay = FALSE;
	}
	if(turnOnDisplay)
	{
		TurnOnDisplay(displayes[activeDisplay]);
		turnOnDisplay = FALSE;
	}
}

void HandlePWMButtonInput()
{
	if(!PIN_HIGH(PIND, DC_PWM_BUTTON))
	{
		if(!dcPwmButtonHeld)
		{
			dcPwmButtonHeld = TRUE;
			++currentPwmMode;
			currentPwmMode = currentPwmMode % 6;
			SetDutyCycle(pwmMode[currentPwmMode]);
		}
	}
	else
	{
		dcPwmButtonHeld = FALSE;
	}
}

void HandleTimeSelection()
{
	if (!PIN_HIGH(PIND, BUTTON_2))
	{
		if (!button2Held)
		{
			button1Held = TRUE;
			button2Held = TRUE;
			
			//Increment selected digit and check for overflow
			if (++numbersParts[numberPartsToDisplay[selectedNumberPart]] > numbersPartsMaxVal[numberPartsToDisplay[selectedNumberPart]])
			{
				numbersParts[numberPartsToDisplay[selectedNumberPart]] = 0;
			}
		}
	}
	else if(!PIN_HIGH(PIND, BUTTON_1))
	{
		if(!button1Held)
		{
			milisElapsed = 0;
			button1Held = TRUE;
			button2Held = TRUE;
			
			//Jump to next available digit (in range of screen size)
			++selectedNumberPart;
			selectedNumberPart = selectedNumberPart % 4;
		}
		else if (milisElapsed >= 1000) //After one second
		{
			currentDeviceMode = selectedDeviceMode; //Get device mode from 'selected' because
			//we wouldn't know if we were supposed to set timer long or short after 
			//time selection which is in active mode
			milisElapsed = 0;
			seconds = (10 * numbersParts[SECOND_H_PART] + numbersParts[SECOND_L_PART])+1; 
			minutes = (10 * numbersParts[MINUTE_H_PART] + numbersParts[MINUTE_L_PART]);
			hours = (10 * numbersParts[HOUR_H_PART] + numbersParts[HOUR_L_PART]);
			//
			if(currentDeviceMode != TIMER_MODE_LONG)
				displayIgnoreZeros = TRUE;
		}
	}
	else
	{
		button1Held = FALSE;
		button2Held = FALSE;
	}
	screen[0] = digits[numbersParts[numberPartsToDisplay[0]]];
	screen[1] = digits[numbersParts[numberPartsToDisplay[1]]];
	screen[2] = digits[numbersParts[numberPartsToDisplay[2]]];
	screen[3] = digits[numbersParts[numberPartsToDisplay[3]]];
}

void HandleModeSelection()
{
	//Button 2 pressed
	if(!PIN_HIGH(PIND, BUTTON_2))
	{
		if (!button2Held)
		{
			button2Held = TRUE;
			button1Held = TRUE;
			switch (selectedDeviceMode)
			{
				case TIMER_MODE_SHORT:
					screen[3] = NUM_TWO;
					selectedDeviceMode = TIMER_MODE_LONG;
					break;
				case TIMER_MODE_LONG:
					screen[3] = NUM_THREE;
					selectedDeviceMode = STOPWATCH_MODE;
					break;
				case STOPWATCH_MODE:
					screen[3] = NUM_ONE;
					selectedDeviceMode = TIMER_MODE_SHORT;
					break;
				default: break;
			}
		}
	}		
	else if(!PIN_HIGH(PIND, BUTTON_1))
	{
		if (!button1Held)
		{
			button1Held = TRUE;
			button2Held = TRUE;
			switch(selectedDeviceMode)
			{
				case TIMER_MODE_SHORT:
					SetNumbersMaxPartsValues(0,0,9,9,5,9);
					SetAvailableParts(MINUTE_H_PART, MINUTE_L_PART, SECOND_H_PART, SECOND_L_PART);
					currentDeviceMode = TIME_SELECTION_MODE; 
					break;
				case TIMER_MODE_LONG:
					SetNumbersMaxPartsValues(2,4,5,9,0,0);
					SetAvailableParts(HOUR_H_PART, HOUR_L_PART, MINUTE_H_PART, MINUTE_L_PART);
					currentDeviceMode = TIME_SELECTION_MODE;
					break;
				case STOPWATCH_MODE:
					currentDeviceMode = STOPWATCH_MODE;
					break;
				default: break;
			}
// 			screen[0] = NUM_ZERO;
// 			screen[1] = NUM_ZERO;
// 			screen[2] = NUM_ZERO;
			screen[3] = NUM_ZERO;
			
			button1Held = FALSE;
			button2Held = FALSE;
			
			displayIgnoreZeros = FALSE;
		}
	}	
	else
	{
		button1Held = FALSE;
		button2Held = FALSE;
	}
}

int main(void)
{
	Initialize();

    while (1)
    {
		HandleDisplayRefresh();
		if (pwmButtonEnabled)
		{
			HandlePWMButtonInput();
		}
		if(currentDeviceMode == TIMER_MODE_SHORT || currentDeviceMode == TIMER_MODE_LONG)
		{
			HandleTimer();
		}
		else if (currentDeviceMode == STOPWATCH_MODE || currentDeviceMode == STOPWATCH_PAUSED_MODE)
		{
			HandleStopwatch();
		}
		else if(currentDeviceMode == TIME_SELECTION_MODE)
		{
			HandleTimeSelection();
		}
		else if(currentDeviceMode == MODE_SELECTION_MODE)
		{
			HandleModeSelection();
		}
		else if(currentDeviceMode == TIMER_DONE_MODE)
		{
			//Every 500ms change prescaler from /256 to /1024
			//so frequency of buzz changes
			if (milisElapsed > 500)
			{
				milisElapsed = 0;
				currentPwmMode++;
				currentPwmMode = currentPwmMode % 2;
				SetDutyCycle(pwmMode[3-currentPwmMode]);
			}
			buzzEnabled = TRUE;
		}
		
		//Update display with digits that are in this array
		ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
		{
			DisplayNumber(screen[activeDisplay]);
		}
    }
}

//Updating time
ISR(TIMER1_COMPA_vect)
{
	milisElapsed+=200;
}

//Updating display
ISR(TIMER0_COMPA_vect)
{
	turnOffDisplay = TRUE;
	if(buzzEnabled)
		PORTA &= ~(1<<BUZZ_PIN);
}

ISR(TIMER0_OVF_vect)
{
	if(!turnOffDisplay && (screen[activeDisplay] != NUM_ZERO || !displayIgnoreZeros))
		turnOnDisplay = TRUE;
	if(buzzEnabled)
		PORTA |= (1<<BUZZ_PIN);
}

