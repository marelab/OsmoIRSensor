/*
 File		: IR-MARELAB-WATERLEVEL.c
 Created	: 06.02.2017 11:15:52
 Author		: Marc Philipp Hammermann
 mail		: marc@marelab.org
 
 Copyright (C) 2017  by Marc Philpp Hammermann
 
 Program written for ATTINY45 to drive Vishay "AGC P" type proximity sensor. 
 Best results are obtained with a burst length between 100ms and 150ms and a burst period of 500ms or more. The
 TSSP4P38 requires a long idle period for its AGC to recover full sensitivity after repressing the burst.
 

 This program is free software; you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation; either version 2 of the License, or
 (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License along
 with this program; if not, write to the Free Software Foundation, Inc.,
 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
  */ 
#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdint.h>
 
 const int BUFFER_SIZE = 4;                  // buffer for serial input, max 3 digits for burst and burstrep
 uint16_t burst = 0;                         // length of burst in ms
 uint16_t burstrep = 0;                      // burst period in ms
 uint16_t burst_count = 0;                   // number of carrier cycles in burst
 uint16_t burstrep_count = 0;                // number of carrier cycles in burst period
 volatile uint16_t input_capture =0;         // counter used to capture the receiver pulse length in timer1
 enum {INACTIVE, ACTIVE} state = INACTIVE;   // INACTIVE is waiting for burst times, ACTIVE is where Rx/TX is started or stopped
 enum {PENDING, DONE, BAD} rx_flag = PENDING;// PENDING= Rx is capturing a pulse, DONE=Rx captured the pulse
 const uint8_t HALF_PERIOD = 210;            // (Period_38kHz/2) / Period_16MHz
 const uint8_t DUTY = 63;                    // duty cycle of the 38kHz signal = 30% x HALF_PERIOD (e.g. 30% duty cycle, 30% x HALF_PERIOD = 630)


static unsigned long carrier_count = 0;       // persistent counter used to count carrier cycles
//static boolean lastState=FALSE;


//*********************************************************************************************************
//  Interrupt service routine
//  Timer2 overflow - used to count carrier cycles
//*********************************************************************************************************

ISR(TIMER1_OVF_vect){
  carrier_count++;                         // increment carrier counter
  if (carrier_count == 4000){       //5700 if burst is completed
    //TCCR1 = (0<<COM1A1)|(0<<COM1A0);        // disconnect OC2B pin driving IR emitter
	TCCR1 &= ~(1<<COM1A1);
	TCCR1 &= ~(1<<COM1A0);
   //DDRB  = (0<<DDB1);
  }                                        // end if
  if (carrier_count == 8000){    //16000 if burst cycle is completed
    TCCR1 |= (1<<COM1A1);
	TCCR1 |= (1<<COM1A0);      // re-connect OC2B pin driving IR emitter
	//DDRB  = (1<<DDB1);
    carrier_count= 0;                      // reset counter for start of new cycle
  }                                        // end if
  
}                                          // end ISR

//*********************************************************************************************************
//  Interrupt service routine
//  PIN INTERRUPT TO MEASURE TIME
//*********************************************************************************************************

ISR(PCINT0_vect){
if (carrier_count > 80){
	if (carrier_count < 400){ //1800
		PORTB &= ~(1 << PB2);   /* LED OFF */	
		// lastState = TRUE;
	}
	else
	{
		 PORTB |= (1 << PB2);    /* LED ON setzt Bit 2 an PortB auf 1 */
	}
}
}                                          // end ISR

void setup() {  
  // Timer 1 Fast  PWM
  TCCR1	=  (1<<PWM1A)  | (0<<CS13)| (0<<CS12)| (1<<CS11) | (0<<CS10);
  GTCCR = (0<<PWM1B);
  TCCR1 |= (1<<COM1A1)|(1<<COM1A0);
  OCR1A		= 80; // Duty
  OCR1C		= 255;
  TCNT1 =  0;
  TIMSK = (0 << OCIE1B) | (0 << OCIE1A) | (1 << TOIE1);
  DDRB	   |= (1<<DDB1) ;
  // -------------------------------------
  
  // Pin Interrupt setup
  GIMSK		|= (1<<PCIE);
  PCMSK		|= (1<<PCINT0)|(0<<PCINT1)|(0<<PCINT2)|(0<<PCINT3)|(0<<PCINT4)|(0<<PCINT5); // PB0
  //PCMSK		|= (0<<PCINT0)|(0<<PCINT1)|(0<<PCINT2)|(0<<PCINT3)|(0<<PCINT4)|(1<<PCINT5); // PB5
  DDRB	    |= (0<<DDB0);
  PORTB		 = 0x01;
  // -------------------------------------
  
  // Ausgabe Port
  DDRB	   |= (1<<DDB2) ;
  
  sei();                                   // a formality, interrupts enabled in IDE
  
  burst = 150;                    // convert ASCII to integer
  burst_count = burst * 38;              // calculate number of modulation cycles in burst
  burstrep_count = 400 * 38;        // calculate number of modulation cycles in burst period
  state = ACTIVE;                      // state may now send and receive

}                                          // end setup


int main(void)
{
  setup();
  //*********************************************************************************************************
  //  Get user variables for burst length and repetition time. Calculate no. of carrier
  //  cycles for each. Set machine state to ACTIVE.
  //*********************************************************************************************************
  //*********************************************************************************************************
  //   Main routine where the action happens
  //*********************************************************************************************************
  while(state == ACTIVE){
        
  }                                         // end while
}


