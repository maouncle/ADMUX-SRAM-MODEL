/*================================================================


	FILE NAME:		Config-AC.v
	DESCRIPTION:
=================================================================*/

/*----------------------------------
	Paremeters for Async-Read
-----------------------------------*/
specify
	specparam tAA   = 70.0;		//max Address access time
	specparam tAADV = 70.0;		//max ADV# access time
	specparam tAPA  = 20.0;		//max Page access time
endspecify
	parameter tAVH  =  2.0;		//min Address hold from ADV# HIGH
	parameter tAVS  =  5.0;		//min Address setup to ADV# HIGH
specify
	specparam tBA   = 70.0;		//max LB#/UB# access time
	specparam tBHZ  =  8.0;		//max BY# disable to HIGH-Z output
	parameter tCO   = 70.0;		//max Chip select access time
endspecify
	parameter tBLZ  =  6.0;		//min LB#/UB# enable to LOW-Z output 
	parameter tCEM  =  4e3;		//max Maximum CE# pulse width
	parameter tCEWm =  1.0;		//min CE# or ADV# LOW to WAIT valid
	parameter tCEWM =  7.5;		//max CE# or ADV# LOW to WAIT valid
	parameter tCVS  =  7.0;		//min CE# LOW to ADV# HIGH
	parameter tHZ_async = 8.0;
	parameter tLZ   = 6.0;		//min Chip enable to LOW-Z output
specify
	specparam tOE   = 20.0;		//max Output enable to valid output
	specparam tOH   =  5.0;		//min Output hold from address change
endspecify
	parameter tOHZ_async = 8.0;	//max Output disable to DQ High-Z output
	parameter tOLZ  =  3.0;		//min Output enable to LOW-Z output
	parameter tPC   = 20.0;		//min Page READ cycle time
	parameter tRC   = 70.0;		//min READ cycle time
	parameter tVP   =  5.0;		//min ADV# pulse width LOW


/*-------------------------------------------------------------
	Paremeters for Sync-Read (excepting already declared)
--------------------------------------------------------------*/
`ifdef sg70_133
	parameter tABA  = 35.5;		//max Burst to read access time
	parameter tACLK	=  5.5;		//max CLK to output delay
specify
	specparam tBOE  = 20.0;		//max Burst OE# LOW to output delay
	specparam tHZ   =  7.0;		//max Chip disable to WAIT HIGH-Z output 
endspecify
	parameter tCBPH =  5.0;		//min CE# HIGH between subsequent burst or mixed mode
	parameter tCLK  =  7.5;		//min CLK period
	parameter tCSP  =  2.5;		//min CE# setup time to active clk edge
	parameter tHD   =  1.5;		//min Hold time from active clk edge
	parameter tKHKL =  1.2;		//max CLK rising or falling time
	parameter tKHTL =  5.5;		//max CLK to WAIT valid
	parameter tKOH  =  2.0;		//min Output hold from CLK
	parameter tKP   =  3.0;		//min CLK HIGH or LOW time
specify
	specparam tOHZ  =  7.0;		//max Output disable to DQ HIGH-Z output
endspecify
	parameter tSP   =  2.0;		//min Setup time to active clk edge
`else	// sg70_104
	parameter tABA  = 35;		//max Burst to read access time
	parameter tACLK	=  7.0;		//max CLK to output delay
specify
	specparam tBOE  = 20.0;		//max Burst OE# LOW to output delay
	specparam tHZ   =  8.0;		//max Chip disable to WAIT HIGH-Z output 
endspecify
	parameter tCBPH =  5.0;		//min CE# HIGH between subsequent burst or mixed mode
	parameter tCLK  = 9.62;		//min CLK period
	parameter tCSP  =  3.0;		//min CE# setup time to active clk edge
	parameter tHD   =  2.0;		//min Hold time from active clk edge
	parameter tKHKL =  1.6;		//max CLK rising or falling time
	parameter tKHTL =  7.0;		//max CLK to WAIT valid
	parameter tKOH  =  2.0;		//min Output hold from CLK
	parameter tKP   =  3.0;		//min CLK HIGH or LOW time
specify
	specparam tOHZ  =  8.0;		//max Output disable to DQ HIGH-Z output
endspecify
	parameter tSP   =  3.0;		//min Setup time to active clk edge
`endif

/*-------------------------------------------------------------
	Paremeters for Async-Write (excepting already declared)
--------------------------------------------------------------*/
	parameter tAS   =  0.0;		//min  Address and ADV# LOW setup time
	parameter tAW   = 70.0;		//min Address valid to end of WRITE
	parameter tBW   = 70.0;		//min BY# select to end of WRITE 
	parameter tCPH  =  5.0;		//min CE# HIGH between subsequent async op.
	parameter tCW   = 70.0;		//min Chip enable to end of WRITE
	parameter tDH   =  0.0;		//min Data hold from WRITE time 
specify
	specparam tDW   = 20.0;		//min Data WRITE setup time
	specparam tOW   =  5.0;		//min End WRITE to LOW-Z output
	specparam tWHZ  =  8.0;		//max WRITE to DQ HIGH-Z output
endspecify
	parameter tVS   = 70.0;		//min ADV# setup to end of WRITE
	parameter tWC   = 70.0;		//min WRITE cycle time
	parameter tWP   = 45.0;		//min WRITE pulse width
	parameter tWPH  = 10.0;		//min WRITE pulse width HIGH
	parameter tWR   =  0.0;		//min WRITE recovery time

/*-------------------------------------------------------------
	Paremeters for Sync-Write (excepting already declared)
--------------------------------------------------------------*/
// all parameters are already declared

parameter tDPD  = 150e3;
parameter tDPDX  = 10e3;
parameter tPU   = 150e3; // Initialization period (required before normal operations) 



//etc---------------------------------------------
parameter MAX_FREQ = tCLK;
parameter MHz133 = 7.5; 
parameter MHz104 = 9.62;

parameter tADVB_wait = 0.0;
parameter tCEB_wait = 0.0;
parameter tWEB_wait = 0.0;
parameter tOEB_wait = 0.0;
parameter tLBB_wait = 0.0;
parameter tUBB_wait = 0.0;

parameter LOW	= 'b0;
parameter HIGH	= 'b1;
parameter HIZ	= 'bz;
parameter XX	= 'bx;

parameter DQ_BITS	= 16;
parameter BY_BITS	= 2;
parameter ADDR_BITS	= 24;
parameter COL_BITS	= 8;
parameter MEM_BITS	= 25;


// for the Configuration Register
parameter BCR		= 2'b10;
parameter RCR		= 2'b00;
parameter DIDR		= 2'b01;

parameter DEFAULT_RCR  = 16'b00000000_0_00_1_0_000;
parameter DEFAULT_RCR_SOFT  = 21'b0_00_00_00000000_0_00_1_0_000;
parameter DEFAULT_RCR2 = 16'b00000000_0_00_1_0_000;		// dpd mode enable

parameter DEFAULT_BCR  = 16'b1_0_011_1_0_1_00_01_1_111;
parameter DEFAULT_BCR_SOFT  = 21'b0_10_00_1_0_011_1_0_1_00_01_1_111;
parameter DEFAULT_BCR2 = 16'b0_0_100_0_0_0_00_01_1_011;	// async-->sync, actHigh-->actLow, before-->during

parameter DEFAULT_DIDR = 16'b1_0010_010_010_00110;
parameter DEFAULT_DIDR_SOFT = 21'b0_01_00_1_0010_010_010_00110;


/*---------------------------------------------------
	RCR table for the software access
----------------------------------------------------*/
parameter RCR_TEST  = 21'b0_00_00_00000000_1_00_1_0_000;
parameter RCR_TEST2 = 21'b0_00_00_00000000_0_00_1_0_000;	// page mode disabled
parameter RCR_TEST3 = 21'b0_00_00_00000000_0_00_0_0_000;	// dpd enabled

parameter BCR_TEST  = 21'b0_10_00_0_0_011_1_0_1_00_01_1_010;
parameter BCR_TEST2 = 21'b0_10_00_0_0_010_1_0_1_00_01_1_001;
parameter BCR_TEST3 = 21'b0_10_00_0_0_011_1_0_1_00_01_1_001;
parameter DIDR_TEST = 21'b0_01_00_1_0010_010_010_00110;

parameter TEST_DELAY = 0.1;
parameter PAGE_SIZE  = 16;	// for the PAGE READ
parameter refresh_cycle = 4e3;  // optional value
