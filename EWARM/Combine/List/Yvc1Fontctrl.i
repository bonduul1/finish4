 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 
 

 



 
 
 
                                                     



 
 
                                                     
                                                     
                                                     

 




 


 


 


 




 
 

 


 

 
 
 
typedef char			C08;			 
typedef signed char		S08;			 
typedef signed short	S16;			 
typedef signed long		S32;			 
typedef unsigned char	U08;			 
typedef unsigned short	U16;			 
typedef unsigned long	U32;			 
typedef float			F32;			 
typedef void*			VP;				 
typedef int				BOOL;			 


 
 
 
 
 
 
 
 
 

 
 
 
 
 

 
 
 

 
 
 

	 

	


 
 
 


 

 



 
 
 

 

 

 

  
 
 
typedef enum {
	Y643_PORT_GENTBL_DATA = 0,
	Y643_PORT_PLT_GAM_WRP_DATA,
	Y643_PORT_PTNMEM_READACS,
	Y643_PORT_PTNMEM_DATA,
	Y643_PORT_REG_SEL,
	Y643_PORT_REG_DATA,
	Y643_PORT_FLG_STATUS1,
	Y643_PORT_FLG_STATUS2
} T_Y643_PORT_NUMBER;

  
 
 

 
 
 
typedef enum {
	REG_R00H = 0,	REG_R01H,	REG_R02H,	REG_R03H,	REG_R04H,	REG_R05H,	REG_R06H,	REG_R07H,
	REG_R08H,		REG_R09H,	REG_R0AH,	REG_R0BH,	REG_R0CH,	REG_R0DH,	REG_R0EH,	REG_R0FH,
	REG_R10H,		REG_R11H,	REG_R12H,	REG_R13H,	REG_R14H,	REG_R15H,	REG_R16H,	REG_R17H,
	REG_R18H,		REG_R19H,	REG_R1AH,	REG_R1BH,	REG_R1CH,	REG_R1DH,	REG_R1EH,	REG_R1FH,
	REG_R20H,		REG_R21H,	REG_R22H,	REG_R23H,	REG_R24H,	REG_R25H,	REG_R26H,	REG_R27H,
	REG_R28H,		REG_R29H,	REG_R2AH,	REG_R2BH,	REG_R2CH,	REG_R2DH,	REG_R2EH,	REG_R2FH,
	REG_R30H,		REG_R31H,	REG_R32H,	REG_R33H,	REG_R34H,	REG_R35H,	REG_R36H,	REG_R37H,
	REG_R38H,		REG_R39H,	REG_R3AH,	REG_R3BH,	REG_R3CH,	REG_R3DH,	REG_R3EH,	REG_R3FH,
	REG_R40H,		REG_R41H,	REG_R42H,	REG_R43H,	REG_R44H,	REG_R45H,	REG_R46H,	REG_R47H,
	REG_R48H,		REG_R49H,	REG_R4AH,	REG_R4BH,	REG_R4CH,	REG_R4DH,	REG_R4EH,	REG_R4FH,
	REG_R50H,		REG_R51H,	REG_R52H,	REG_R53H,	REG_R54H,	REG_R55H,	REG_R56H,	REG_R57H,
	REG_R58H,		REG_R59H,	REG_R5AH,	REG_R5BH,	REG_R5CH,	REG_R5DH,	REG_R5EH,	REG_R5FH,
	REG_R60H,		REG_R61H,	REG_R62H,	REG_R63H
} T_Y643_REG_NUMBER_0;

typedef enum {
	REG_R64H = 100,	REG_R65H,	REG_R66H,	REG_R67H,	REG_R68H,	REG_R69H,	REG_R6AH,	REG_R6BH,
	REG_R6CH,		REG_R6DH,	REG_R6EH,	REG_R6FH,	REG_R70H,	REG_R71H,	REG_R72H,	REG_R73H,
	REG_R74H,		REG_R75H,	REG_R76H,	REG_R77H,	REG_R78H,	REG_R79H,	REG_R7AH,	REG_R7BH,
	REG_R7CH,		REG_R7DH,	REG_R7EH,	REG_R7FH,	REG_R80H,	REG_R81H,	REG_R82H,	REG_R83H,
	REG_R84H,		REG_R85H,	REG_R86H,	REG_R87H,	REG_R88H,	REG_R89H,	REG_R8AH,	REG_R8BH,
	REG_R8CH,		REG_R8DH,	REG_R8EH,	REG_R8FH,	REG_R90H,	REG_R91H,	REG_R92H,	REG_R93H,
	REG_R94H,		REG_R95H,	REG_R96H,	REG_R97H,	REG_R98H,	REG_R99H,	REG_R9AH,	REG_R9BH,
	REG_R9CH,		REG_R9DH,	REG_R9EH,	REG_R9FH,	REG_RA0H,	REG_RA1H,	REG_RA2H,	REG_RA3H,
	REG_RA4H,		REG_RA5H,	REG_RA6H,	REG_RA7H,	REG_RA8H,	REG_RA9H,	REG_RAAH,	REG_RABH,
	REG_RACH,		REG_RADH,	REG_RAEH,	REG_RAFH,	REG_RB0H,	REG_RB1H,	REG_RB2H,	REG_RB3H,
	REG_RB4H,		REG_RB5H,	REG_RB6H,	REG_RB7H,	REG_RB8H,	REG_RB9H,	REG_RBAH,	REG_RBBH,
	REG_RBCH,		REG_RBDH,	REG_RBEH,	REG_RBFH,	REG_RC0H,	REG_RC1H,	REG_RC2H,	REG_RC3H,
	REG_RC4H,		REG_RC5H,	REG_RC6H,	REG_RC7H
} T_Y643_REG_NUMBER_1;

typedef enum {
	REG_RC8H = 200,	REG_RC9H,	REG_RCAH,	REG_RCBH,	REG_RCCH,	REG_RCDH,	REG_RCEH,	REG_RCFH,
	REG_RD0H,		REG_RD1H,	REG_RD2H,	REG_RD3H,	REG_RD4H,	REG_RD5H,	REG_RD6H,	REG_RD7H,
	REG_RD8H,		REG_RD9H,	REG_RDAH,	REG_RDBH,	REG_RDCH,	REG_RDDH,	REG_RDEH,	REG_RDFH,
	REG_RE0H,		REG_RE1H,	REG_RE2H,	REG_RE3H,	REG_RE4H,	REG_RE5H,	REG_RE6H,	REG_RE7H,
	REG_RE8H,		REG_RE9H,	REG_REAH,	REG_REBH,	REG_RECH,	REG_REDH,	REG_REEH,	REG_REFH,
	REG_RF0H,		REG_RF1H,	REG_RF2H,	REG_RF3H,	REG_RF4H,	REG_RF5H,	REG_RF6H,	REG_RF7H,
	REG_RF8H,		REG_RF9H,	REG_RFAH,	REG_RFBH,	REG_RFCH,	REG_RFDH,	REG_RFEH,	REG_RFFH
} T_Y643_REG_NUMBER_2;


 
 

 

 



 
 
 


	 
	 
	 
	 
	 
	 
	 
	 
	typedef union {
		U08		BYTE;
		struct {
			U08		STARES		:1;
			U08		RGN_7		:1;
			U08		FSS			:1;
			U08		FSAE		:1;
			U08		CSNEG		:1;
			U08		INIEND		:1;
			U08		PWBUSY		:1;
			U08		PMRREQ		:1;
		} BIT;
	} T_Y643_PORT_PTNMEM;

	 
	 
	 
	 
	typedef union {
		U08 	BYTE;
		struct {
			U08 	RGN_0 		:7;
			U08 	AIRG		:1;
		} BIT;
	} T_Y643_PORT_REGSEL;

	 
	 
	 
	 
	typedef union {
		U08 	BYTE;
		struct {
			U08 	VB			:1;
			U08 	FB			:1;
			U08 	STALN		:1;
			U08 	FD			:1;
			U08 	FERR		:1;
			U08 	FV			:1;
			U08 	FP			:1;
			U08 	FR			:1;
		} BIT;
	} T_Y643_PORT_FLAG1;

	 
	 
	 
	 
	typedef union {
		U08 	BYTE;
		struct {
			U08 	FRSE		:1;
			U08 	FRRE		:1;
			U08 	FWE 		:1;
			U08 	FMCE		:1;
			U08 	FMF 		:1;
			U08 	FML 		:1;
			U08 	FME 		:1;
			U08 	FMC 		:1;
		} BIT;
	} T_Y643_PORT_FLAG2;

	 
	 
	 

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 VER			:6;
			U08 dummy1		:1;
			U08 SR			:1;
		} BIT;
	} T_Y643_R00H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DTSEL_1		:1;
			U08 dummy1		:2;
			U08 PLLR		:5;
		} BIT;
	} T_Y643_R01H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 PLLF		:7;
			U08 dummy1		:1;
		} BIT;
	} T_Y643_R02H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DTDV		:6;
			U08 REVCK		:1;
			U08 DTSEL_0		:1;
		} BIT;
	} T_Y643_R03H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 dummy1		:3;
			U08 RPLLR		:5;
		} BIT;
	} T_Y643_R04H;
	
	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 RPLLF		:7;
			U08 dummy1		:1;
		} BIT;
	} T_Y643_R05H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 VTL_8		:2;
			U08 REVBL		:1;
			U08 REVSY		:1;
			U08 VSTM		:1;
			U08 CSYOE		:1;
			U08 CSYPAL		:1;
			U08 INTL		:1;
		} BIT;
	} T_Y643_R06H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 VTL_0		:8;
		} BIT;
	} T_Y643_R07H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 HTL_8		:3;
			U08 dummy1		:5;
		} BIT;
	} T_Y643_R08H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 HTL_0		:8;
		} BIT;
	} T_Y643_R09H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 VBLS_8		:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_R0AH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 VBLS_0		:8;
		} BIT;
	} T_Y643_R0BH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 HBLS_8		:3;
			U08 dummy1		:5;
		} BIT;
	} T_Y643_R0CH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 HBLS_0		:8;
		} BIT;
	} T_Y643_R0DH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 VBLE_8		:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_R0EH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 VBLE_0		:8;
		} BIT;
	} T_Y643_R0FH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 HBLE_8		:3;
			U08 dummy1		:5;
		} BIT;
	} T_Y643_R10H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 HBLE_0		:8;
		} BIT;
	} T_Y643_R11H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 VDS_8		:2;
			U08 NMCMD		:1;
			U08 PDDS		:5;
		} BIT;
	} T_Y643_R12H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 VDS_0		:8;
		} BIT;
	} T_Y643_R13H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 HDS_8		:3;
			U08 dummy1		:5;
		} BIT;
	} T_Y643_R14H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 HDS_0		:8;
		} BIT;
	} T_Y643_R15H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 VDE_8		:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_R16H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 VDE_0		:8;
		} BIT;
	} T_Y643_R17H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 HDE_8		:3;
			U08 dummy1		:5;
		} BIT;
	} T_Y643_R18H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 HDE_0		:8;
		} BIT;
	} T_Y643_R19H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 VSW			:4;
			U08 HSW_8		:2;
			U08 dummy1		:2;
		} BIT;
	} T_Y643_R1AH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 HSW_0		:8;
		} BIT;
	} T_Y643_R1BH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DTEN		:1;
			U08 SYEN		:1;
			U08 dummy1		:1;
			U08 EVEN		:1;
			U08 dummy2		:2;
			U08 DMASEL		:2;
		} BIT;
	} T_Y643_R1CH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DRTIM_8		:8;
		} BIT;
	} T_Y643_R1DH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DRTIM_0		:8;
		} BIT;
	} T_Y643_R1EH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CON			:8;
		} BIT;
	} T_Y643_R1FH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 BRI_8		:1;
			U08 dummy1		:7;
		} BIT;
	} T_Y643_R20H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 BRI_0		:8;
		} BIT;
	} T_Y643_R21H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 IEHNG		:1;
			U08 IEB			:1;
			U08 dummy1		:1;
			U08 IED			:1;
			U08 IERR		:1;
			U08 IEV			:1;
			U08 IEP			:1;
			U08 IER			:1;
		} BIT;
	} T_Y643_R22H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 dummy1		:1;
			U08 IESE		:1;
			U08 IESS		:1;
			U08 IESA		:1;
			U08 IEMF		:1;
			U08 IEML		:1;
			U08 IEME		:1;
			U08 IEMC		:1;
		} BIT;
	} T_Y643_R23H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 IH_0		:8;
		} BIT;
	} T_Y643_R24H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 IL_8		:2;
			U08 dummy1		:2;
			U08 IH_8		:3;
			U08 FPM			:1;
		} BIT;
	} T_Y643_R25H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 IL_0		:8;
		} BIT;
	} T_Y643_R26H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 AICP		:1;
			U08 AIST		:1;
			U08 AIPM		:1;
			U08 dummy1		:5;
		} BIT;
	} T_Y643_R27H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 SA_8		:6;
			U08 dummy1		:2;
		} BIT;
	} T_Y643_R28H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 SA_0		:8;
		} BIT;
	} T_Y643_R29H;
	
	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CP_8		:7;
			U08 dummy1		:1;
		} BIT;
	} T_Y643_R2AH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CP_0		:8;
		} BIT;
	} T_Y643_R2BH;
	
	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 PMA_24		:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_R2CH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 PMA_16		:8;
		} BIT;
	} T_Y643_R2DH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 PMA_8		:8;
		} BIT;
	} T_Y643_R2EH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 PMA_0		:8;
		} BIT;
	} T_Y643_R2FH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 ALPBSEL		:1;
			U08 EXLY		:1;
			U08 dummy1		:1;
			U08 STAPLY		:1;
			U08 dummy2		:4;
		} BIT;
	} T_Y643_R30H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 VOBSEL			:1;
			U08 FRCM			:1;
			U08 FRCE			:1;
			U08 dummy1			:5;
		} BIT;
	} T_Y643_R31H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 STSEL		:2;
			U08 dummy1		:1;
			U08 FSE			:1;
			U08 FSA			:1;
			U08 FDDBUF		:1;
			U08 FDSREND		:1;
			U08 FDDEC		:1;
		} BIT;
	} T_Y643_R32H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CHS			:1;
			U08 dummy1		:7;
		} BIT;
	} T_Y643_R33H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CSSA_24		:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_R34H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CSSA_16		:8;
		} BIT;
	} T_Y643_R35H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CSSA_8		:8;
		} BIT;
	} T_Y643_R36H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CSSA_0		:8;
		} BIT;
	} T_Y643_R37H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CSEA_24		:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_R38H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CSEA_16		:8;
		} BIT;
	} T_Y643_R39H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CSEA_8		:8;
		} BIT;
	} T_Y643_R3AH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CSEA_0		:8;
		} BIT;
	} T_Y643_R3BH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 SUMD_8		:8;
		} BIT;
	} T_Y643_R3CH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 SUMD_0		:8;
		} BIT;
	} T_Y643_R3DH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 LYSAC_8		:4;
			U08 dummy1		:2;
			U08 LYBSELC		:1;
			U08 LYDC		:1;
		} BIT;
	} T_Y643_R3EH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 dummy1		:2;
			U08 LYSAC_2		:6;
		} BIT;
	} T_Y643_R3FH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 LYEAC_8		:4;
			U08 dummy1		:4;
		} BIT;
	} T_Y643_R40H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 dummy1		:2;
			U08 LYEAC_2		:6;
		} BIT;
	} T_Y643_R41H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 LYSAM_8		:4;
			U08 dummy1		:2;
			U08 LYBSELM		:1;
			U08 LYDM		:1;
		} BIT;
	} T_Y643_R42H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 dummy1		:2;
			U08 LYSAM_2		:6;
		} BIT;
	} T_Y643_R43H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 LYEAM_8		:4;
			U08 dummy1		:4;
		} BIT;
	} T_Y643_R44H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 dummy1		:2;
			U08 LYEAM_2		:6;
		} BIT;
	} T_Y643_R45H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 SPSR		:8;
		} BIT;
	} T_Y643_R46H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 SPSG		:8;
		} BIT;
	} T_Y643_R47H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 SPSB		:8;
		} BIT;
	} T_Y643_R48H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 TPR			:8;
		} BIT;
	} T_Y643_R49H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 TPG			:8;
		} BIT;
	} T_Y643_R4AH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 TPB			:8;
		} BIT;
	} T_Y643_R4BH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 FFCR		:8;
		} BIT;
	} T_Y643_R4CH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 FFCG		:8;
		} BIT;
	} T_Y643_R4DH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 FFCB		:8;
		} BIT;
	} T_Y643_R4EH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 FBCR		:8;
		} BIT;
	} T_Y643_R4FH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 FBCG		:8;
		} BIT;
	} T_Y643_R50H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 FBCB		:8;
		} BIT;
	} T_Y643_R51H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 BDR			:8;
		} BIT;
	} T_Y643_R52H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 BDG			:8;
		} BIT;
	} T_Y643_R53H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 BDB			:8;
		} BIT;
	} T_Y643_R54H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 MMOD		:2;
			U08 CAP			:2;
			U08 SP			:1;
			U08 INSKIP		:1;
			U08 CSCAP		:2;
		} BIT;
	} T_Y643_R55H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DTTIM		:3;
			U08 CSTIM		:3;
			U08 NMBIT		:2;
		} BIT;
	} T_Y643_R56H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 MBTIM		:3;
			U08 ADTIM		:3;
			U08 PMOD		:2;
		} BIT;
	} T_Y643_R57H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 INTIM		:2;
			U08 DMTIM		:6;
		} BIT;
	} T_Y643_R58H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 INCOD		:8;
		} BIT;
	} T_Y643_R59H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DMBIT_8		:8;
		} BIT;
	} T_Y643_R5AH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DMBIT_0		:8;
		} BIT;
	} T_Y643_R5BH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 SSA_24		:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_R5CH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 SSA_16		:8;
		} BIT;
	} T_Y643_R5DH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 SSA_8		:8;
		} BIT;
	} T_Y643_R5EH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 dummy1		:2;
			U08 SSA_2		:6;
		} BIT;
	} T_Y643_R5FH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 STEP		:1;
			U08 dummy1		:2;
			U08 MCRS		:1;
			U08 BREAK		:1;
			U08 STOP		:1;
			U08 PAUSE		:1;
			U08 PLAY		:1;
		} BIT;
	} T_Y643_R60H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 PC_24		:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_R61H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 PC_16		:8;
		} BIT;
	} T_Y643_R62H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 PC_8		:8;
		} BIT;
	} T_Y643_R63H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 PC_0		:8;
		} BIT;
	} T_Y643_R64H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 LC			:8;
		} BIT;
	} T_Y643_R65H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 IVC			:8;
		} BIT;
	} T_Y643_R66H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 STHS_8		:3;
			U08 STHE_8		:3;
			U08 dummy1		:1;
			U08 REVSH		:1;
		} BIT;
	} T_Y643_R67H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 STHE_0		:8;
		} BIT;
	} T_Y643_R68H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 STHS_0		:8;
		} BIT;
	} T_Y643_R69H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 LDHS_8		:3;
			U08 LDHE_8		:3;
			U08 dummy1		:1;
			U08 REVLH		:1;
		} BIT;
	} T_Y643_R6AH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 LDHE_0		:8;
		} BIT;
	} T_Y643_R6BH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 LDHS_0		:8;
		} BIT;
	} T_Y643_R6CH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CKVS_8		:3;
			U08 CKVE_8		:3;
			U08 dummy1		:1;
			U08 REVCV		:1;
		} BIT;
	} T_Y643_R6DH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CKVE_0		:8;
		} BIT;
	} T_Y643_R6EH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CKVS_0		:8;
		} BIT;
	} T_Y643_R6FH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 STVSV_8		:2;
			U08 STVEV_8		:2;
			U08 dummy1		:2;
			U08 REVSVV		:1;
			U08 REVSV		:1;
		} BIT;
	} T_Y643_R70H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 STVEV_0		:8;	
		} BIT;
	} T_Y643_R71H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 STVSV_0		:8;
		} BIT;
	} T_Y643_R72H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 STVSH_8		:3;
			U08 STVEH_8		:3;
			U08 dummy1		:1;
			U08 REVSVH		:1;
		} BIT;
	} T_Y643_R73H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 STVEH_0		:8;
		} BIT;
	} T_Y643_R74H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 STVSH_0		:8;
		} BIT;
	} T_Y643_R75H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 OESV_8		:2;
			U08 OEEV_8		:2;
			U08 dummy1		:2;
			U08 REVOEV		:1;
			U08 REVOE		:1;
		} BIT;
	} T_Y643_R76H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 OEEV_0		:8;
		} BIT;
	} T_Y643_R77H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 OESV_0		:8;
		} BIT;
	} T_Y643_R78H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 OESH_8		:3;
			U08 OEEH_8		:3;
			U08 dummy1		:1;
			U08 REVOEH		:1;
		} BIT;
	} T_Y643_R79H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 OEEH_0		:8;
		} BIT;
	} T_Y643_R7AH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 OESH_0		:8;
		} BIT;
	} T_Y643_R7BH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 POLP_8		:3;
			U08 POLM		:3;
			U08 dummy1		:1;
			U08 POLE		:1;
		} BIT;
	} T_Y643_R7CH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 POLP_0		:8;
		} BIT;
	} T_Y643_R7DH;

	

 
	typedef union {
		U08		BYTE;
	} T_Y643_R7EH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 TMP			:8;
		} BIT;
	} T_Y643_R7FH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 dummy1		:7;
			U08 WPEN		:1;
		} BIT;
	} T_Y643_R80H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CAPSY_8		:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_R81H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CAPSY_0		:8;
		} BIT;
	} T_Y643_R82H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CAPSX_8		:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_R83H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CAPSX_0		:8;
		} BIT;
	} T_Y643_R84H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CAPEY_8		:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_R85H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CAPEY_0		:8;
		} BIT;
	} T_Y643_R86H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CAPEX_8		:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_R87H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CAPEX_0		:8;
		} BIT;
	} T_Y643_R88H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 FBX			:8;
		} BIT;
	} T_Y643_R89H;

	

 
	typedef union {
		U08		BYTE;
	} T_Y643_R8AH;

	

 
	typedef union {
		U08		BYTE;
	} T_Y643_R8BH;

	

 
	typedef union {
		U08		BYTE;
	} T_Y643_R8CH;

	

 
	typedef union {
		U08		BYTE;
	} T_Y643_R8DH;

	

 
	typedef union {
		U08		BYTE;
	} T_Y643_R8EH;

	

 
	typedef union {
		U08		BYTE;
	} T_Y643_R8FH;

	

 
	typedef union {
		U08		BYTE;
	} T_Y643_R90H;

	

 
	typedef union {
		U08		BYTE;
	} T_Y643_R91H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 LIDL_8		:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_R92H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 LIDL_0		:8;
		} BIT;
	} T_Y643_R93H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 dummy1		:4;
			U08 CTC			:1;
			U08 GME			:1;
			U08 EEF			:1;
			U08 BLF			:1;
		} BIT;
	} T_Y643_R94H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DCON		:8;
		} BIT;
	} T_Y643_R95H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DBRI_8		:1;
			U08 dummy1		:7;
		} BIT;
	} T_Y643_R96H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DBRI_0		:8;
		} BIT;
	} T_Y643_R97H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DSATU		:8;
		} BIT;
	} T_Y643_R98H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DHUE		:8;
		} BIT;
	} T_Y643_R99H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 EEFC		:8;
		} BIT;
	} T_Y643_R9AH;

	

 
	typedef union {
		U08		BYTE;
	} T_Y643_R9BH;

	

 
	typedef union {
		U08		BYTE;
	} T_Y643_R9CH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 dummy1		:2;
			U08 WCCOMP		:1;
			U08 WTBLSEL		:1;
			U08 WCIPMH		:1;
			U08 WCIPMV		:1;
			U08 dummy2		:1;
			U08 WCEN		:1;
		} BIT;
	} T_Y643_R9DH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 WCSY_8		:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_R9EH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 WCSY_0		:8;
		} BIT;
	} T_Y643_R9FH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 WCSX_8		:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_RA0H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 WCSX_0		:8;
		} BIT;
	} T_Y643_RA1H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 WCSTPY_8	:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_RA2H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 WCSTPY_0	:8;
		} BIT;
	} T_Y643_RA3H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 WCSTPX_8	:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_RA4H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 WCSTPX_0	:8;
		} BIT;
	} T_Y643_RA5H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 WCNUMY_8	:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_RA6H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 WCNUMY_0	:8;
		} BIT;
	} T_Y643_RA7H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 WCNUMX_8	:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_RA8H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 WCNUMX_0	:8;
		} BIT;
	} T_Y643_RA9H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 WPBA_24		:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_RAAH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 WPBA_16		:8;
		} BIT;
	} T_Y643_RABH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 WPBA_8		:8;
		} BIT;
	} T_Y643_RACH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 WPBA_0		:8;
		} BIT;
	} T_Y643_RADH;

	

 
	typedef union {
		U08		BYTE;
	} T_Y643_RAEH;

	

 
	typedef union {
		U08		BYTE;
	} T_Y643_RAFH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 SOCEAD_24	:2;
			U08 dummy1		:5;
			U08 SDCOMP		:1;
		} BIT;
	} T_Y643_RB0H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 SOCEAD_16	:8;
		} BIT;
	} T_Y643_RB1H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 SOCEAD_8	:8;
		} BIT;
	} T_Y643_RB2H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 SOCEAD_0	:8;
		} BIT;
	} T_Y643_RB3H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DESTAD_8	:5;
			U08 dummy1		:2;
			U08 DESTSEL		:1;
		} BIT;
	} T_Y643_RB4H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DESTAD_0	:8;
		} BIT;
	} T_Y643_RB5H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 BYTECNT_8	:6;
			U08 dummy1		:2;
		} BIT;
	} T_Y643_RB6H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 BYTECNT_0	:8;
		} BIT;
	} T_Y643_RB7H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 dummy1		:5;
			U08 DMACLR		:1;
			U08 dummy2		:1;
			U08 DSTART		:1;
		} BIT;
	} T_Y643_RB8H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 dummy1		:1;
			U08 DESTERR		:1;
			U08 SOCEERR		:1;
			U08 NODMAERR	:1;
			U08 DMAEND		:1;
			U08 dummy2		:3;
		} BIT;
	} T_Y643_RB9H;

	

 
	typedef union {
		U08		BYTE;
	} T_Y643_RBAH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 dummy1		:5;
			U08 CODR		:3;
		} BIT;
	} T_Y643_RBBH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC0TY_16	:1;
			U08 dummy1		:7;
		} BIT;
	} T_Y643_RBCH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC0TY_8		:8;
		} BIT;
	} T_Y643_RBDH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC0TY_0		:8;
		} BIT;
	} T_Y643_RBEH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC0TX_16	:1;
			U08 dummy1		:7;
		} BIT;
	} T_Y643_RBFH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC0TX_8		:8;
		} BIT;
	} T_Y643_RC0H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC0TX_0		:8;
		} BIT;
	} T_Y643_RC1H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CA_8		:4;
			U08 dummy1		:4;
		} BIT;
	} T_Y643_RC2H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CA_0		:8;
		} BIT;
	} T_Y643_RC3H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CB_8		:4;
			U08 dummy1		:4;
		} BIT;
	} T_Y643_RC4H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CB_0		:8;
		} BIT;
	} T_Y643_RC5H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC_8		:4;
			U08 dummy1		:4;
		} BIT;
	} T_Y643_RC6H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC_0		:8;
		} BIT;
	} T_Y643_RC7H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CD_8		:4;
			U08 dummy1		:4;
		} BIT;
	} T_Y643_RC8H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CD_0		:8;
		} BIT;
	} T_Y643_RC9H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC1SELSH	:1;
			U08 CC1SELX		:2;
			U08 CC1SELY		:2;
			U08 dummy1		:2;
			U08 CC1SELA		:1;
		} BIT;
	} T_Y643_RCAH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC1TY_16	:1;
			U08 dummy1		:7;
		} BIT;
	} T_Y643_RCBH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC1TY_8		:8;
		} BIT;
	} T_Y643_RCCH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC1TY_0		:8;
		} BIT;
	} T_Y643_RCDH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC1TX_16	:1;
			U08 dummy1		:7;
		} BIT;
	} T_Y643_RCEH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC1TX_8		:8;
		} BIT;
	} T_Y643_RCFH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC1TX_0		:8;
		} BIT;
	} T_Y643_RD0H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC1KC_8		:6;
			U08 dummy1		:2;
		} BIT;
	} T_Y643_RD1H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC1KC_0		:8;
		} BIT;
	} T_Y643_RD2H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC2SELSH	:1;
			U08 CC2SELX		:2;
			U08 CC2SELY		:2;
			U08 CC2SELC		:1;
			U08 CC2SELB		:1;
			U08 CC2SELA		:1;
		} BIT;
	} T_Y643_RD3H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC2TY_16	:1;
			U08 dummy1		:7;
		} BIT;
	} T_Y643_RD4H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC2TY_8		:8;
		} BIT;
	} T_Y643_RD5H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC2TY_0		:8;
		} BIT;
	} T_Y643_RD6H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC2TX_16	:1;
			U08 dummy1		:7;
		} BIT;
	} T_Y643_RD7H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC2TX_8		:8;
		} BIT;
	} T_Y643_RD8H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC2TX_0		:8;
		} BIT;
	} T_Y643_RD9H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC2KC_8		:6;
			U08 dummy1		:2;
		} BIT;
	} T_Y643_RDAH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC2KC_0		:8;
		} BIT;
	} T_Y643_RDBH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC3TY_16	:1;
			U08 dummy1		:7;
		} BIT;
	} T_Y643_RDCH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC3TY_8		:8;
		} BIT;
	} T_Y643_RDDH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC3TY_0		:8;
		} BIT;
	} T_Y643_RDEH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC3TX_16	:1;
			U08 dummy1		:7;
		} BIT;
	} T_Y643_RDFH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC3TX_8		:8;
		} BIT;
	} T_Y643_RE0H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 CC3TX_0		:8;
		} BIT;
	} T_Y643_RE1H;

	

 
	typedef union {
		U08		BYTE;
	} T_Y643_RE2H;

	

 
	typedef union {
		U08		BYTE;
	} T_Y643_RE3H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 VSADJ		:6;
			U08 dummy1		:1;
			U08 SYNCE		:1;
		} BIT;
	} T_Y643_RE4H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DVIF		:2;
			U08 DVINTL		:1;
			U08 CRCBS		:1;
			U08 DVSP		:1;
			U08 DVPAL		:1;
			U08 EXGAM		:2;
		} BIT;
	} T_Y643_RE5H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DVHTL_8		:3;
			U08 dummy1		:3;
			U08 DVCSM		:1;
			U08 DVCSE		:1;
		} BIT;
	} T_Y643_RE6H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DVHTL_0		:8;
		} BIT;
	} T_Y643_RE7H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DVHSW_8		:1;
			U08 dummy1		:7;
		} BIT;
	} T_Y643_RE8H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DVHSW_0		:8;
		} BIT;
	} T_Y643_RE9H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 BPAOFF		:1;
			U08 dummy1		:1;
			U08 BPHLFE		:1;
			U08 BPFLX		:1;
			U08 SFSEL		:1;
			U08 SCE			:1;
			U08 dummy2		:1;
			U08 BPD			:1;
		} BIT;
	} T_Y643_REAH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 EISD_8		:5;
			U08 dummy1		:3;
		} BIT;
	} T_Y643_REBH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 EISD_0		:8;
		} BIT;
	} T_Y643_RECH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 BPSL_8		:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_REDH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 BPSL_0		:8;
		} BIT;
	} T_Y643_REEH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 BPSD_8		:3;
			U08 dummy1		:5;
		} BIT;
	} T_Y643_REFH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 BPSD_0		:8;
		} BIT;
	} T_Y643_RF0H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 BPEL_8		:2;
			U08 dummy1		:6;
		} BIT;
	} T_Y643_RF1H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 BPEL_0		:8;
		} BIT;
	} T_Y643_RF2H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 BPED_8		:3;
			U08 dummy1		:5;
		} BIT;
	} T_Y643_RF3H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 BPED_0		:8;
		} BIT;
	} T_Y643_RF4H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 SCFY_8		:6;
			U08 dummy1		:2;
		} BIT;
	} T_Y643_RF5H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 SCFY_0		:8;
		} BIT;
	} T_Y643_RF6H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 SCFX_8		:6;
			U08 dummy1		:2;
		} BIT;
	} T_Y643_RF7H;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 SCFX_0		:8;
		} BIT;
	} T_Y643_RF8H;

	

 
	typedef union {
		U08		BYTE;
	} T_Y643_RF9H;

	

 
	typedef union {
		U08		BYTE;
	} T_Y643_RFAH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 EXADJHTL_8	:3;
			U08 dummy1		:5;
		} BIT;
	} T_Y643_RFBH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 EXADJHTL_0	:8;
		} BIT;
	} T_Y643_RFCH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 IEDER		:1;
			U08 IEDEN		:1;
			U08 dummy1		:3;
			U08 IENME		:1;
			U08 IEDV		:1;
			U08 IENDS		:1;
		} BIT;
	} T_Y643_RFDH;

	


 
	typedef union {
		U08		BYTE;
		struct {
			U08 DEVEN		:1;
			U08 DVB			:1;
			U08 NDS			:1;
			U08 dummy1		:2;
			U08 FNME		:1;
			U08 DFV			:1;
			U08 FNDS		:1;
		} BIT;
	} T_Y643_RFEH;

	

 
	typedef union {
		U08		BYTE;
		struct {
			U08 dummy1		:8;
		} BIT;
	} T_Y643_RFFH;

	 
	 
	 
	

 
	typedef union {
		U08 BYTE[13];
		struct {
			U08 DOY_8	:3;				 
			U08 MXSL	:1;
			U08 MX8		:1;
			U08 CLM		:3;
			U08 DOY_0	:8;				 
			U08 DOX_8	:3;				 
			U08 PLTI_8	:1;
			U08 MX_4	:4;
			U08 DOX_0	:8;				 
			U08 SZY		:6;				 
			U08 TP		:1;
			U08 ALPHA_1	:1;
			U08 SZX		:6;				 
			U08 COMPM	:2;
			union {						 
				struct {
					U08 LSYM	:3;
					U08 LSYE	:1;
					U08 DCM		:2;
					U08 LSYS	:1;
					U08 dummy1	:1;
				} RGB;
				struct {
					U08 PLTI_0	:8;
				} PLT;
			} COLOR;
			U08 PN_19	:7;				 
			U08 ALPHA_0	:1;
			U08 PN_11	:8;				 
			U08 PN_3	:8;				 
			U08 MAGY	:8;				 
			U08 MAGX	:8;				 
			struct {					 
				U08 MX_0	:4;
				U08 dummy1	:4;
			} EXLY;
		} BIT;
	} T_Y643_LYR_SPRTATTR;

	

 
	typedef union {
		U08 BYTE[13];
		struct {
			U08 FDOY_8	:3;				 
			U08 FMXSL	:1;
			U08 FMX8	:1;
			U08 LYSEL	:3;
			U08 FDOY_0	:8;				 
			U08 FDOX_8	:3;				 
			U08 FPLTI_8	:1;
			U08 FMX_4	:4;
			U08 FDOX_0	:8;				 
			U08 FTYP_10	:2;				 
			U08 FKNE	:1;
			U08 FDIR	:1;
			U08 FPFE	:1;
			U08 FPLTS	:1;
			U08 FTP		:1;
			U08 dummy1	:1;
			U08 FTYP_2	:8;				 
			U08 FPLTI_0	:8;				 
			U08 FCEA_9	:3;				 
			U08 dummy3	:1;
			U08 FCSA_9	:3;
			U08 dummy2	:1;
			U08 FCSA_1	:8;				 
			U08 FCEA_1	:8;				 
			U08 dummy4	:8;				 
			U08 dummy5	:8;				 
			struct {					 
				U08 FMX_0	:4;
				U08	dummy1	:4;
			} EXLY;
		} BIT;
	} T_Y643_LYR_FONTATTR;

	

 
	typedef union {
		U08 BYTE[8];
		struct {
			U08 FN_19		:7;			 
			U08 CMODE		:1;
			U08 FN_11		:8;			 
			U08 FN_3		:8;			 
			U08 dummy1		:5;			 
			U08 FCOMPV		:1;
			U08 FCOMPE		:1;
			U08 FHSZ		:1;
			U08 FSZX		:6;			 
			U08 dummy2		:2;
			U08 FSZY		:6;			 
			U08 dummy3		:2;
			U08 FDAB		:5;			 
			U08 dummy4		:3;
			U08 FDLB		:5;			 
			U08 dummy5		:3;
		} BIT;
	} T_Y643_FONT_TYPATTR;

	

 
	typedef union {
		U08 BYTE[4];
		struct {
			union {
				struct {
					U08 FCODE_8		:8;			 
					U08 FCODE_0		:8;			 
					U08 XS			:6;			 
					U08 dummy1		:2;
					U08 XE			:6;			 
					U08 dummy2		:2;
				} DOUBLE;
				struct {
					U08 FCODE_8		:7;			 
					U08 dummy1		:1;
					U08 FCODE_0		:8;			 
					U08 XS			:6;			 
					U08 dummy2		:2;
					U08 XE			:6;			 
					U08 dummy3		:2;
				} MIX;
			} GLYPH;
		} BIT;
	} T_Y643_TEXT_PFONT;

	

 
	typedef union {
		U08 BYTE[12];
		struct {
			U08 dummy1	:5; 		    
			U08 LYSEL	:3;
			U08 CLPE	:2; 		    
			U08 dummy2	:6;
			U08 dummy3	:8; 		    
			U08 dummy4	:8; 		    
			U08 dummy5	:8; 		    
			U08 dummy6	:8; 		    
			U08 CLPSX_8 :3; 		    
			U08 dummy8	:1;
			U08 CLPSY_8 :3;
			U08 dummy7	:1;
			U08 CLPSY_0 :8; 		    
			U08 CLPSX_0 :8; 		    
			U08 CLPEX_8 :3; 		    
			U08 dummy10	:1;
			U08 CLPEY_8 :3;
			U08 dummy9  :1;
			U08 CLPEY_0 :8; 		    
			U08 CLPEX_0 :8; 		    
		} BIT;
	} T_Y643_LYR_CLIPATTR;


 



 
















 
 

 


 

















  

 


 
 


















 
 

 


 
 

 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 




 






 



 


 






 


 

 


 


 



 
 

 

 

 

 

 

 
 
 


 




 


 




 


 


 
















 

 


 

















 

 


 


























 



 



 
    

   


 
  


 



 
   


 



 



 



 























 



 



 
    




 



 



 
  


 




 
typedef enum
{
 
  NonMaskableInt_IRQn         = -14,     
  MemoryManagement_IRQn       = -12,     
  BusFault_IRQn               = -11,     
  UsageFault_IRQn             = -10,     
  SVCall_IRQn                 = -5,      
  DebugMonitor_IRQn           = -4,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      
 
  WWDG_IRQn                   = 0,       
  PVD_IRQn                    = 1,       
  TAMP_STAMP_IRQn             = 2,       
  RTC_WKUP_IRQn               = 3,       
  FLASH_IRQn                  = 4,       
  RCC_IRQn                    = 5,       
  EXTI0_IRQn                  = 6,       
  EXTI1_IRQn                  = 7,       
  EXTI2_IRQn                  = 8,       
  EXTI3_IRQn                  = 9,       
  EXTI4_IRQn                  = 10,      
  DMA1_Stream0_IRQn           = 11,      
  DMA1_Stream1_IRQn           = 12,      
  DMA1_Stream2_IRQn           = 13,      
  DMA1_Stream3_IRQn           = 14,      
  DMA1_Stream4_IRQn           = 15,      
  DMA1_Stream5_IRQn           = 16,      
  DMA1_Stream6_IRQn           = 17,      
  ADC_IRQn                    = 18,      
  CAN1_TX_IRQn                = 19,      
  CAN1_RX0_IRQn               = 20,      
  CAN1_RX1_IRQn               = 21,      
  CAN1_SCE_IRQn               = 22,      
  EXTI9_5_IRQn                = 23,      
  TIM1_BRK_TIM9_IRQn          = 24,      
  TIM1_UP_TIM10_IRQn          = 25,      
  TIM1_TRG_COM_TIM11_IRQn     = 26,      
  TIM1_CC_IRQn                = 27,      
  TIM2_IRQn                   = 28,      
  TIM3_IRQn                   = 29,      
  TIM4_IRQn                   = 30,      
  I2C1_EV_IRQn                = 31,      
  I2C1_ER_IRQn                = 32,      
  I2C2_EV_IRQn                = 33,      
  I2C2_ER_IRQn                = 34,      
  SPI1_IRQn                   = 35,      
  SPI2_IRQn                   = 36,      
  USART1_IRQn                 = 37,      
  USART2_IRQn                 = 38,      
  USART3_IRQn                 = 39,      
  EXTI15_10_IRQn              = 40,      
  RTC_Alarm_IRQn              = 41,      
  OTG_FS_WKUP_IRQn            = 42,      
  TIM8_BRK_TIM12_IRQn         = 43,      
  TIM8_UP_TIM13_IRQn          = 44,      
  TIM8_TRG_COM_TIM14_IRQn     = 45,      
  TIM8_CC_IRQn                = 46,      
  DMA1_Stream7_IRQn           = 47,      
  FSMC_IRQn                   = 48,      
  SDIO_IRQn                   = 49,      
  TIM5_IRQn                   = 50,      
  SPI3_IRQn                   = 51,      
  UART4_IRQn                  = 52,      
  UART5_IRQn                  = 53,      
  TIM6_DAC_IRQn               = 54,      
  TIM7_IRQn                   = 55,      
  DMA2_Stream0_IRQn           = 56,      
  DMA2_Stream1_IRQn           = 57,      
  DMA2_Stream2_IRQn           = 58,      
  DMA2_Stream3_IRQn           = 59,      
  DMA2_Stream4_IRQn           = 60,      
  ETH_IRQn                    = 61,      
  ETH_WKUP_IRQn               = 62,      
  CAN2_TX_IRQn                = 63,      
  CAN2_RX0_IRQn               = 64,      
  CAN2_RX1_IRQn               = 65,      
  CAN2_SCE_IRQn               = 66,      
  OTG_FS_IRQn                 = 67,      
  DMA2_Stream5_IRQn           = 68,      
  DMA2_Stream6_IRQn           = 69,      
  DMA2_Stream7_IRQn           = 70,      
  USART6_IRQn                 = 71,      
  I2C3_EV_IRQn                = 72,      
  I2C3_ER_IRQn                = 73,      
  OTG_HS_EP1_OUT_IRQn         = 74,      
  OTG_HS_EP1_IN_IRQn          = 75,      
  OTG_HS_WKUP_IRQn            = 76,      
  OTG_HS_IRQn                 = 77,      
  DCMI_IRQn                   = 78,      
  RNG_IRQn                    = 80,      
  FPU_IRQn                    = 81       
} IRQn_Type;
 



 

 




 
















 

  #pragma system_include          


 
 

  #pragma system_include

 
 

 

  #pragma system_include














 


 
 


  #pragma system_include

 



  

 

 

 
#pragma rtmodel = "__dlib_version", "6"

 


 



























 


  #pragma system_include

 
 
 


  #pragma system_include

 

 

 

 

   

 
 


   #pragma system_include






 




 


 


 


 

 


 

 

 

 

 

 

 

 

 















 



















 











 























 





 



 










 














 













 








 













 













 















 











 








 








 






 





 












 





 













 






 


   


  







 





 






 




 




 













 

   




 







 







 







 










 




 


















 


 



 














 

   


 



 



 

 

 
  typedef unsigned long int _Wchart;
    typedef unsigned long int _Wintt;

 

 
typedef unsigned int     _Sizet;

 
typedef struct _Mbstatet
{  
    unsigned int _Wchar;   
    unsigned int _State;   

} _Mbstatet;

 

 

  typedef struct __va_list
  {
    char  *_Ap;
  } __va_list;
  typedef __va_list __Va_list;


    typedef struct __FILE _Filet;

 
typedef struct
{       
    long long _Off;     
  _Mbstatet _Wstate;
} _Fpost;


 

 
  
    
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_StaticGuard(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_StaticGuard(void);

      _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Lockfilelock(_Filet *);
      _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlockfilelock(_Filet *);

  typedef void *__iar_Rmtx;

  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Initdynamiclock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Dstdynamiclock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Lockdynamiclock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlockdynamiclock(__iar_Rmtx *);

  






 


 
  typedef signed char          int8_t;
  typedef unsigned char        uint8_t;

  typedef signed short int         int16_t;
  typedef unsigned short int       uint16_t;

  typedef signed int         int32_t;
  typedef unsigned int       uint32_t;

  typedef signed long long int         int64_t;
  typedef unsigned long long int       uint64_t;


 
typedef signed char      int_least8_t;
typedef unsigned char    uint_least8_t;

typedef signed short int     int_least16_t;
typedef unsigned short int   uint_least16_t;

typedef signed int     int_least32_t;
typedef unsigned int   uint_least32_t;

 
  typedef signed long long int   int_least64_t;
  typedef unsigned long long int uint_least64_t;



 
typedef signed int       int_fast8_t;
typedef unsigned int     uint_fast8_t;

typedef signed int      int_fast16_t;
typedef unsigned int    uint_fast16_t;

typedef signed int      int_fast32_t;
typedef unsigned int    uint_fast32_t;

  typedef signed long long int    int_fast64_t;
  typedef unsigned long long int  uint_fast64_t;

 
typedef signed long long int          intmax_t;
typedef unsigned long long int        uintmax_t;


 
typedef signed int          intptr_t;
typedef unsigned int        uintptr_t;

 
typedef int __data_intptr_t; typedef unsigned int __data_uintptr_t;

 






















 











 














 




 



 

 




 
















 

  #pragma system_include          


 

 




 


 




 
















 





 
 




 





















#pragma system_include






 

 















#pragma language=save
#pragma language=extended
_Pragma("inline=forced") __intrinsic uint16_t __iar_uint16_read(void const *ptr)
{
  return *(__packed uint16_t*)(ptr);
}
#pragma language=restore


#pragma language=save
#pragma language=extended
_Pragma("inline=forced") __intrinsic void __iar_uint16_write(void const *ptr, uint16_t val)
{
  *(__packed uint16_t*)(ptr) = val;;
}
#pragma language=restore

#pragma language=save
#pragma language=extended
_Pragma("inline=forced") __intrinsic uint32_t __iar_uint32_read(void const *ptr)
{
  return *(__packed uint32_t*)(ptr);
}
#pragma language=restore

#pragma language=save
#pragma language=extended
_Pragma("inline=forced") __intrinsic void __iar_uint32_write(void const *ptr, uint32_t val)
{
  *(__packed uint32_t*)(ptr) = val;;
}
#pragma language=restore

#pragma language=save
#pragma language=extended
__packed struct  __iar_u32 { uint32_t v; };
#pragma language=restore


















 



  #pragma system_include



 


 


#pragma language=save
#pragma language=extended

__intrinsic __nounwind void    __no_operation(void);

__intrinsic __nounwind void    __disable_interrupt(void);
__intrinsic __nounwind void    __enable_interrupt(void);

typedef unsigned long __istate_t;

__intrinsic __nounwind __istate_t __get_interrupt_state(void);
__intrinsic __nounwind void __set_interrupt_state(__istate_t);


 
__intrinsic __nounwind unsigned long __get_PSR( void );
__intrinsic __nounwind unsigned long __get_IPSR( void );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __get_MSP( void );
__intrinsic __nounwind void          __set_MSP( unsigned long );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __get_PSP( void );
__intrinsic __nounwind void          __set_PSP( unsigned long );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __get_PRIMASK( void );
__intrinsic __nounwind void          __set_PRIMASK( unsigned long );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __get_CONTROL( void );
__intrinsic __nounwind void          __set_CONTROL( unsigned long );


 
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __get_FAULTMASK( void );
__intrinsic __nounwind void          __set_FAULTMASK(unsigned long);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __get_BASEPRI( void );
__intrinsic __nounwind void          __set_BASEPRI( unsigned long );


__intrinsic __nounwind void __disable_fiq(void);
__intrinsic __nounwind void __enable_fiq(void);


 

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __SWP( unsigned long, volatile unsigned long * );
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned char __SWPB( unsigned char, volatile unsigned char * );

typedef unsigned long __ul;


 

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind void __CDP (unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) opc1, unsigned __constrange(0,15) CRd, unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opc2) ;
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind void __CDP2(unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) opc1, unsigned __constrange(0,15) CRd, unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opc2) ;

 
__intrinsic __nounwind void          __MCR( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1, __ul src,
                                 unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 )  ;
__intrinsic __nounwind unsigned long __MRC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1,
                                 unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 )  ;
__intrinsic __nounwind void          __MCR2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1, __ul src,
                                  unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 ) ;
__intrinsic __nounwind unsigned long __MRC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1,
                                  unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 ) ;

__intrinsic __nounwind void __MCRR (unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opc1, unsigned long long src, unsigned __constrange(0,15) CRm) ;
__intrinsic __nounwind void __MCRR2(unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opc1, unsigned long long src, unsigned __constrange(0,15) CRm) ;

__intrinsic __nounwind unsigned long long __MRRC (unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opc1, unsigned __constrange(0,15) CRm) ;
__intrinsic __nounwind unsigned long long __MRRC2(unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opc1, unsigned __constrange(0,15) CRm) ;

 
__intrinsic __nounwind void __LDC  ( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src) ;
__intrinsic __nounwind void __LDCL ( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src) ;
__intrinsic __nounwind void __LDC2 ( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src) ;
__intrinsic __nounwind void __LDC2L( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src) ;

 
__intrinsic __nounwind void __STC  ( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst) ;
__intrinsic __nounwind void __STCL ( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst) ;
__intrinsic __nounwind void __STC2 ( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst) ;
__intrinsic __nounwind void __STC2L( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst) ;

 
__intrinsic __nounwind void __LDC_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                              unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDCL_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDC2_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDC2L_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                                unsigned __constrange(0,255) option);

 
__intrinsic __nounwind void __STC_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                              unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STCL_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STC2_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STC2L_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                                unsigned __constrange(0,255) option);


 
__intrinsic __nounwind unsigned long      __arm_rsr(__spec_string const char * special_register)   ;
__intrinsic __nounwind unsigned long long __arm_rsr64(__spec_string const char * special_register) ;
__intrinsic __nounwind void*              __arm_rsrp(__spec_string const char * special_register)  ;

 
__intrinsic __nounwind void __arm_wsr(__spec_string const char * special_register, unsigned long value)        ;
__intrinsic __nounwind void __arm_wsr64(__spec_string const char * special_register, unsigned long long value) ;
__intrinsic __nounwind void __arm_wsrp(__spec_string const char * special_register, const void *value)         ;

 
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind void __arm_cdp (unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) opc1, unsigned __constrange(0,15) CRd, unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opc2) ;
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind void __arm_cdp2(unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) opc1, unsigned __constrange(0,15) CRd, unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opc2) ;

__intrinsic __nounwind void __arm_ldc  (unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRd, const void* p) ;
__intrinsic __nounwind void __arm_ldcl (unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRd, const void* p) ;
__intrinsic __nounwind void __arm_ldc2 (unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRd, const void* p) ;
__intrinsic __nounwind void __arm_ldc2l(unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRd, const void* p) ;

__intrinsic __nounwind void __arm_stc  (unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRd, const void* p) ;
__intrinsic __nounwind void __arm_stcl (unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRd, const void* p) ;
__intrinsic __nounwind void __arm_stc2 (unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRd, const void* p) ;
__intrinsic __nounwind void __arm_stc2l(unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRd, const void* p) ;

__intrinsic __nounwind void __arm_mcr (unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opc1, __ul src, unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opc2) ;
__intrinsic __nounwind void __arm_mcr2(unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opc1, __ul src, unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opc2) ;

__intrinsic __nounwind unsigned long __arm_mrc (unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opc1, unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opc2) ;
__intrinsic __nounwind unsigned long __arm_mrc2(unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opc1, unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opc2) ;

__intrinsic __nounwind void __arm_mcrr (unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opc1, unsigned long long src, unsigned __constrange(0,15) CRm) ;
__intrinsic __nounwind void __arm_mcrr2(unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opc1, unsigned long long src, unsigned __constrange(0,15) CRm) ;

__intrinsic __nounwind unsigned long long __arm_mrrc (unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opc1, unsigned __constrange(0,15) CRm) ;
__intrinsic __nounwind unsigned long long __arm_mrrc2(unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opc1, unsigned __constrange(0,15) CRm) ;

 
__intrinsic __nounwind unsigned long __get_APSR( void );
__intrinsic __nounwind void          __set_APSR( unsigned long );

 
__intrinsic __nounwind unsigned long __get_FPSCR( void );
__intrinsic __nounwind void __set_FPSCR( unsigned long );

 
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned char __CLZ( unsigned long );

 
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind signed long __QADD( signed long, signed long );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind signed long __QDADD( signed long, signed long );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind signed long __QSUB( signed long, signed long );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind signed long __QDSUB( signed long, signed long );

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind signed long __QDOUBLE( signed long );

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind int         __QFlag( void );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind void __reset_Q_flag( void );

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind int         __QCFlag( void );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind void __reset_QC_flag( void );

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind signed long __SMUL( signed short, signed short );

 
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __REV( unsigned long );
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind signed long __REVSH( short );

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __REV16( unsigned long );
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __RBIT( unsigned long );

_Pragma("function_effects = no_state, no_write(1), always_returns") __intrinsic __nounwind unsigned char  __LDREXB( volatile unsigned char const * );
_Pragma("function_effects = no_state, no_write(1), always_returns") __intrinsic __nounwind unsigned short __LDREXH( volatile unsigned short const * );
_Pragma("function_effects = no_state, no_write(1), always_returns") __intrinsic __nounwind unsigned long  __LDREX ( volatile unsigned long const * );
_Pragma("function_effects = no_state, no_write(1), always_returns") __intrinsic __nounwind unsigned long long __LDREXD( volatile unsigned long long const * );

_Pragma("function_effects = no_state, no_read(2), always_returns") __intrinsic __nounwind unsigned long  __STREXB( unsigned char, volatile unsigned char * );
_Pragma("function_effects = no_state, no_read(2), always_returns") __intrinsic __nounwind unsigned long  __STREXH( unsigned short, volatile unsigned short * );
_Pragma("function_effects = no_state, no_read(2), always_returns") __intrinsic __nounwind unsigned long  __STREX ( unsigned long, volatile unsigned long * );
_Pragma("function_effects = no_state, no_read(2), always_returns") __intrinsic __nounwind unsigned long  __STREXD( unsigned long long, volatile unsigned long long * );

__intrinsic __nounwind void __CLREX( void );

__intrinsic __nounwind void __SEV( void );
__intrinsic __nounwind void __WFE( void );
__intrinsic __nounwind void __WFI( void );
__intrinsic __nounwind void __YIELD( void );

__intrinsic __nounwind void __PLI( volatile void const * );
__intrinsic __nounwind void __PLD( volatile void const * );
__intrinsic __nounwind void __PLDW( volatile void const * );

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind   signed long __SSAT     (unsigned long val,
                                      unsigned int __constrange( 1, 32 ) sat );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __USAT     (unsigned long val,
                                      unsigned int __constrange( 0, 31 ) sat );



 
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __SEL( unsigned long op1, unsigned long op2 );

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __SADD8    (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __SADD16   (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __SSUB8    (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __SSUB16   (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __SADDSUBX (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __SSUBADDX (unsigned long pair1, unsigned long pair2);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __SHADD8   (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __SHADD16  (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __SHSUB8   (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __SHSUB16  (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __SHADDSUBX(unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __SHSUBADDX(unsigned long pair1, unsigned long pair2);

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __QADD8    (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __QADD16   (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __QSUB8    (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __QSUB16   (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __QADDSUBX (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __QSUBADDX (unsigned long pair1, unsigned long pair2);

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __UADD8    (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __UADD16   (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __USUB8    (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __USUB16   (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __UADDSUBX (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __USUBADDX (unsigned long pair1, unsigned long pair2);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __UHADD8   (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __UHADD16  (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __UHSUB8   (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __UHSUB16  (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __UHADDSUBX(unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __UHSUBADDX(unsigned long pair1, unsigned long pair2);

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __UQADD8   (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __UQADD16  (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __UQSUB8   (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __UQSUB16  (unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __UQADDSUBX(unsigned long pair1, unsigned long pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __UQSUBADDX(unsigned long pair1, unsigned long pair2);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __USAD8(unsigned long x, unsigned long y );
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __USADA8(unsigned long x, unsigned long y,
                                   unsigned long acc );

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __SSAT16   (unsigned long pair,
                                      unsigned int __constrange( 1, 16 ) sat );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __USAT16   (unsigned long pair,
                                      unsigned int __constrange( 0, 15 ) sat );

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind long __SMUAD (unsigned long x, unsigned long y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long __SMUSD (unsigned long x, unsigned long y);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind long __SMUADX(unsigned long x, unsigned long y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long __SMUSDX(unsigned long x, unsigned long y);

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind long __SMLAD (unsigned long x, unsigned long y, long sum);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind long __SMLSD (unsigned long x, unsigned long y, long sum);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind long __SMLADX(unsigned long x, unsigned long y, long sum);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind long __SMLSDX(unsigned long x, unsigned long y, long sum);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long long __SMLALD (unsigned long pair1,
                                 unsigned long pair2,
                                 long long acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long long __SMLALDX(unsigned long pair1,
                                 unsigned long pair2,
                                 long long acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long long __SMLSLD (unsigned long pair1,
                                 unsigned long pair2,
                                 long long acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long long __SMLSLDX(unsigned long pair1,
                                 unsigned long pair2,
                                 long long acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __PKHBT(unsigned long x,
                                  unsigned long y,
                                  unsigned __constrange(0,31) count);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __PKHTB(unsigned long x,
                                  unsigned long y,
                                  unsigned __constrange(0,32) count);

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind long __SMLABB(unsigned long x, unsigned long y, long acc);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind long __SMLABT(unsigned long x, unsigned long y, long acc);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind long __SMLATB(unsigned long x, unsigned long y, long acc);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind long __SMLATT(unsigned long x, unsigned long y, long acc);

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind long __SMLAWB(long x, unsigned long y, long acc);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind long __SMLAWT(long x, unsigned long y, long acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long __SMMLA (long x, long y, long acc);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long __SMMLAR(long x, long y, long acc);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long __SMMLS (long x, long y, long acc);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long __SMMLSR(long x, long y, long acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long __SMMUL (long x, long y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long __SMMULR(long x, long y);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long __SMULBB(unsigned long x, unsigned long y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long __SMULBT(unsigned long x, unsigned long y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long __SMULTB(unsigned long x, unsigned long y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long __SMULTT(unsigned long x, unsigned long y);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long __SMULWB(long x, unsigned long y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long __SMULWT(long x, unsigned long y);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long __SXTAB (long x, unsigned long y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long __SXTAH (long x, unsigned long y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __UXTAB (unsigned long x, unsigned long y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __UXTAH (unsigned long x, unsigned long y);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long long __UMAAL(unsigned long x,
                                       unsigned long y,
                                       unsigned long a,
                                       unsigned long b);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long long __SMLALBB(unsigned long x,
                                 unsigned long y,
                                 long long acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long long __SMLALBT(unsigned long x,
                                 unsigned long y,
                                 long long acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long long __SMLALTB(unsigned long x,
                                 unsigned long y,
                                 long long acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long long __SMLALTT(unsigned long x,
                                 unsigned long y,
                                 long long acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __UXTB16(unsigned long x);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __UXTAB16(unsigned long acc, unsigned long x);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __SXTB16(unsigned long x);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __SXTAB16(unsigned long acc, unsigned long x);

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __SASX(unsigned long, unsigned long) ;
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __SSAX(unsigned long, unsigned long) ;
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __SHASX(unsigned long, unsigned long) ;
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __SHSAX(unsigned long, unsigned long) ;
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __QASX(unsigned long, unsigned long) ;
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __QSAX(unsigned long, unsigned long) ;

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __UASX(unsigned long, unsigned long) ;
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __USAX(unsigned long, unsigned long) ;
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __UHASX(unsigned long, unsigned long) ;
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __UHSAX(unsigned long, unsigned long) ;
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __UQASX(unsigned long, unsigned long) ;
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __UQSAX(unsigned long, unsigned long) ;

 
__intrinsic __nounwind void __DMB(void);
__intrinsic __nounwind void __DSB(void);
__intrinsic __nounwind void __ISB(void);

 
__intrinsic __nounwind unsigned long __TT(unsigned long);
__intrinsic __nounwind unsigned long __TTT(unsigned long);
__intrinsic __nounwind unsigned long __TTA(unsigned long);
__intrinsic __nounwind unsigned long __TTAT(unsigned long);


__intrinsic __nounwind unsigned long __get_LR(void);
__intrinsic __nounwind void __set_LR(unsigned long);

__intrinsic __nounwind unsigned long __get_SP(void);
__intrinsic __nounwind void __set_SP(unsigned long);

#pragma language=restore






  #pragma diag_suppress=Pe940
  #pragma diag_suppress=Pe177




    _Pragma("inline=forced") __intrinsic uint32_t __LDREXW(uint32_t volatile *ptr)
    {
      return __LDREX((unsigned long *)ptr);
    }

    _Pragma("inline=forced") __intrinsic uint32_t __STREXW(uint32_t value, uint32_t volatile *ptr)
    {
      return __STREX(value, (unsigned long *)ptr);
    }


   

    _Pragma("inline=forced") __intrinsic uint32_t __RRX(uint32_t value)
    {
      uint32_t result;
      __asm("RRX      %0, %1" : "=r"(result) : "r" (value) : "cc");
      return(result);
    }

    _Pragma("inline=forced") __intrinsic void __set_BASEPRI_MAX(uint32_t value)
    {
      __asm volatile("MSR      BASEPRI_MAX,%0"::"r" (value));
    }





  _Pragma("inline=forced") __intrinsic uint32_t __ROR(uint32_t op1, uint32_t op2)
  {
    return (op1 >> op2) | (op1 << ((sizeof(op1)*8)-op2));
  }






  _Pragma("inline=forced") __intrinsic uint8_t __LDRBT(volatile uint8_t *addr)
  {
    uint32_t res;
    __asm("LDRBT %0, [%1]" : "=r" (res) : "r" (addr) : "memory");
    return ((uint8_t)res);
  }

  _Pragma("inline=forced") __intrinsic uint16_t __LDRHT(volatile uint16_t *addr)
  {
    uint32_t res;
    __asm("LDRHT %0, [%1]" : "=r" (res) : "r" (addr) : "memory");
    return ((uint16_t)res);
  }

  _Pragma("inline=forced") __intrinsic uint32_t __LDRT(volatile uint32_t *addr)
  {
    uint32_t res;
    __asm("LDRT %0, [%1]" : "=r" (res) : "r" (addr) : "memory");
    return res;
  }

  _Pragma("inline=forced") __intrinsic void __STRBT(uint8_t value, volatile uint8_t *addr)
  {
    __asm("STRBT %1, [%0]" : : "r" (addr), "r" ((uint32_t)value) : "memory");
  }

  _Pragma("inline=forced") __intrinsic void __STRHT(uint16_t value, volatile uint16_t *addr)
  {
    __asm("STRHT %1, [%0]" : : "r" (addr), "r" ((uint32_t)value) : "memory");
  }

  _Pragma("inline=forced") __intrinsic void __STRT(uint32_t value, volatile uint32_t *addr)
  {
    __asm("STRT %1, [%0]" : : "r" (addr), "r" (value) : "memory");
  }




#pragma diag_default=Pe940
#pragma diag_default=Pe177





 










 

 






 

 

 













 



 






 



 
typedef union
{
  struct
  {
    uint32_t _reserved0:16;               
    uint32_t GE:4;                        
    uint32_t _reserved1:7;                
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;

 









 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;

 




 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:1;                
    uint32_t ICI_IT_1:6;                  
    uint32_t GE:4;                        
    uint32_t _reserved1:4;                
    uint32_t T:1;                         
    uint32_t ICI_IT_2:2;                  
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;

 













 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 



 







 



 
typedef struct
{
  volatile uint32_t ISER[8U];                
        uint32_t RESERVED0[24U];
  volatile uint32_t ICER[8U];                
        uint32_t RSERVED1[24U];
  volatile uint32_t ISPR[8U];                
        uint32_t RESERVED2[24U];
  volatile uint32_t ICPR[8U];                
        uint32_t RESERVED3[24U];
  volatile uint32_t IABR[8U];                
        uint32_t RESERVED4[56U];
  volatile uint8_t  IP[240U];                
        uint32_t RESERVED5[644U];
  volatile  uint32_t STIR;                    
}  NVIC_Type;

 

 







 



 
typedef struct
{
  volatile const  uint32_t CPUID;                   
  volatile uint32_t ICSR;                    
  volatile uint32_t VTOR;                    
  volatile uint32_t AIRCR;                   
  volatile uint32_t SCR;                     
  volatile uint32_t CCR;                     
  volatile uint8_t  SHP[12U];                
  volatile uint32_t SHCSR;                   
  volatile uint32_t CFSR;                    
  volatile uint32_t HFSR;                    
  volatile uint32_t DFSR;                    
  volatile uint32_t MMFAR;                   
  volatile uint32_t BFAR;                    
  volatile uint32_t AFSR;                    
  volatile const  uint32_t PFR[2U];                 
  volatile const  uint32_t DFR;                     
  volatile const  uint32_t ADR;                     
  volatile const  uint32_t MMFR[4U];                
  volatile const  uint32_t ISAR[5U];                
        uint32_t RESERVED0[5U];
  volatile uint32_t CPACR;                   
} SCB_Type;

 





 










 

 







 



 






 














 



 






 







 






 



 





 







 



 
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile const  uint32_t ICTR;                    
  volatile uint32_t ACTLR;                   
} SCnSCB_Type;

 

 





 







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t LOAD;                    
  volatile uint32_t VAL;                     
  volatile const  uint32_t CALIB;                   
} SysTick_Type;

 




 

 

 



 







 



 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                  
    volatile  uint16_t   u16;                 
    volatile  uint32_t   u32;                 
  }  PORT [32U];                          
        uint32_t RESERVED0[864U];
  volatile uint32_t TER;                     
        uint32_t RESERVED1[15U];
  volatile uint32_t TPR;                     
        uint32_t RESERVED2[15U];
  volatile uint32_t TCR;                     
        uint32_t RESERVED3[29U];
  volatile  uint32_t IWR;                     
  volatile const  uint32_t IRR;                     
  volatile uint32_t IMCR;                    
        uint32_t RESERVED4[43U];
  volatile  uint32_t LAR;                     
  volatile const  uint32_t LSR;                     
        uint32_t RESERVED5[6U];
  volatile const  uint32_t PID4;                    
  volatile const  uint32_t PID5;                    
  volatile const  uint32_t PID6;                    
  volatile const  uint32_t PID7;                    
  volatile const  uint32_t PID0;                    
  volatile const  uint32_t PID1;                    
  volatile const  uint32_t PID2;                    
  volatile const  uint32_t PID3;                    
  volatile const  uint32_t CID0;                    
  volatile const  uint32_t CID1;                    
  volatile const  uint32_t CID2;                    
  volatile const  uint32_t CID3;                    
} ITM_Type;

 

 









 

 

 

 



   







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t CYCCNT;                  
  volatile uint32_t CPICNT;                  
  volatile uint32_t EXCCNT;                  
  volatile uint32_t SLEEPCNT;                
  volatile uint32_t LSUCNT;                  
  volatile uint32_t FOLDCNT;                 
  volatile const  uint32_t PCSR;                    
  volatile uint32_t COMP0;                   
  volatile uint32_t MASK0;                   
  volatile uint32_t FUNCTION0;               
        uint32_t RESERVED0[1U];
  volatile uint32_t COMP1;                   
  volatile uint32_t MASK1;                   
  volatile uint32_t FUNCTION1;               
        uint32_t RESERVED1[1U];
  volatile uint32_t COMP2;                   
  volatile uint32_t MASK2;                   
  volatile uint32_t FUNCTION2;               
        uint32_t RESERVED2[1U];
  volatile uint32_t COMP3;                   
  volatile uint32_t MASK3;                   
  volatile uint32_t FUNCTION3;               
} DWT_Type;

 


















 

 

 

 

 

 

 









   







 



 
typedef struct
{
  volatile const  uint32_t SSPSR;                   
  volatile uint32_t CSPSR;                   
        uint32_t RESERVED0[2U];
  volatile uint32_t ACPR;                    
        uint32_t RESERVED1[55U];
  volatile uint32_t SPPR;                    
        uint32_t RESERVED2[131U];
  volatile const  uint32_t FFSR;                    
  volatile uint32_t FFCR;                    
  volatile const  uint32_t FSCR;                    
        uint32_t RESERVED3[759U];
  volatile const  uint32_t TRIGGER;                 
  volatile const  uint32_t FIFO0;                   
  volatile const  uint32_t ITATBCTR2;               
        uint32_t RESERVED4[1U];
  volatile const  uint32_t ITATBCTR0;               
  volatile const  uint32_t FIFO1;                   
  volatile uint32_t ITCTRL;                  
        uint32_t RESERVED5[39U];
  volatile uint32_t CLAIMSET;                
  volatile uint32_t CLAIMCLR;                
        uint32_t RESERVED7[8U];
  volatile const  uint32_t DEVID;                   
  volatile const  uint32_t DEVTYPE;                 
} TPI_Type;

 

 

 




 


 

 







 


 







 


 

 






 


   







 



 
typedef struct
{
  volatile const  uint32_t TYPE;                    
  volatile uint32_t CTRL;                    
  volatile uint32_t RNR;                     
  volatile uint32_t RBAR;                    
  volatile uint32_t RASR;                    
  volatile uint32_t RBAR_A1;                 
  volatile uint32_t RASR_A1;                 
  volatile uint32_t RBAR_A2;                 
  volatile uint32_t RASR_A2;                 
  volatile uint32_t RBAR_A3;                 
  volatile uint32_t RASR_A3;                 
} MPU_Type;


 



 



 

 



 










 







 



 
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile uint32_t FPCCR;                   
  volatile uint32_t FPCAR;                   
  volatile uint32_t FPDSCR;                  
  volatile const  uint32_t MVFR0;                   
  volatile const  uint32_t MVFR1;                   
} FPU_Type;

 









 

 




 








 




 







 



 
typedef struct
{
  volatile uint32_t DHCSR;                   
  volatile  uint32_t DCRSR;                   
  volatile uint32_t DCRDR;                   
  volatile uint32_t DEMCR;                   
} CoreDebug_Type;

 












 


 













 







 






 






 

 







 

 




 










 


 



 





 





 










 
static inline void __NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);              

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((uint32_t)((0xFFFFUL << 16U) | (7UL << 8U)));  
  reg_value  =  (reg_value                                   |
                ((uint32_t)0x5FAUL << 16U) |
                (PriorityGroupTmp << 8U)  );               
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}






 
static inline uint32_t __NVIC_GetPriorityGrouping(void)
{
  return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) >> 8U));
}







 
static inline void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}









 
static inline uint32_t __NVIC_GetEnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}







 
static inline void __NVIC_DisableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __DSB();
    __ISB();
  }
}









 
static inline uint32_t __NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}







 
static inline void __NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}







 
static inline void __NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}









 
static inline uint32_t __NVIC_GetActive(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}










 
static inline void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - 4U)) & (uint32_t)0xFFUL);
  }
  else
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - 4U)) & (uint32_t)0xFFUL);
  }
}










 
static inline uint32_t __NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) >= 0)
  {
    return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)]               >> (8U - 4U)));
  }
  else
  {
    return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] >> (8U - 4U)));
  }
}












 
static inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4U)) ? (uint32_t)(4U) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4U)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4U));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
         );
}












 
static inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4U)) ? (uint32_t)(4U) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4U)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4U));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL);
}










 
static inline void __NVIC_SetVector(IRQn_Type IRQn, uint32_t vector)
{
  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  vectors[(int32_t)IRQn + 16] = vector;
}









 
static inline uint32_t __NVIC_GetVector(IRQn_Type IRQn)
{
  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  return vectors[(int32_t)IRQn + 16];
}





 
__attribute__((__noreturn__)) static inline void __NVIC_SystemReset(void)
{
  __DSB();                                                          
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = (uint32_t)((0x5FAUL << 16U)    |
                           (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) |
                            (1UL << 2U)    );          
  __DSB();                                                           

  for(;;)                                                            
  {
    __no_operation();
  }
}

 

 







 
















 
 
  #pragma system_include          
 







 








   









 
  











                          







  









  











  



 



 



 



 




 
typedef struct {
  uint32_t RBAR; 
  uint32_t RASR; 
} ARM_MPU_Region_t;
    


 
static inline void ARM_MPU_Enable(uint32_t MPU_Control)
{
  __DSB();
  __ISB();
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL = MPU_Control | (1UL );
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHCSR |= (1UL << 16U);
}


 
static inline void ARM_MPU_Disable(void)
{
  __DSB();
  __ISB();
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHCSR &= ~(1UL << 16U);
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL  &= ~(1UL );
}



 
static inline void ARM_MPU_ClrRegion(uint32_t rnr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RNR = rnr;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = 0U;
}




    
static inline void ARM_MPU_SetRegion(uint32_t rbar, uint32_t rasr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR = rbar;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = rasr;
}





    
static inline void ARM_MPU_SetRegionEx(uint32_t rnr, uint32_t rbar, uint32_t rasr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RNR = rnr;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR = rbar;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = rasr;
}





 
static inline void orderedCpy(volatile uint32_t* dst, const uint32_t* __restrict src, uint32_t len)
{
  uint32_t i;
  for (i = 0U; i < len; ++i) 
  {
    dst[i] = src[i];
  }
}




 
static inline void ARM_MPU_Load(ARM_MPU_Region_t const* table, uint32_t cnt) 
{
  const uint32_t rowWordSize = sizeof(ARM_MPU_Region_t)/4U;
  while (cnt > 4U) {
    orderedCpy(&(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR), &(table->RBAR), 4U*rowWordSize);
    table += 4U;
    cnt -= 4U;
  }
  orderedCpy(&(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR), &(table->RBAR), cnt*rowWordSize);
}




 





 








 
static inline uint32_t SCB_GetFPUType(void)
{
  uint32_t mvfr0;

  mvfr0 = ((FPU_Type *) ((0xE000E000UL) + 0x0F30UL) )->MVFR0;
  if      ((mvfr0 & ((0xFUL << 4U) | (0xFUL << 8U))) == 0x020U)
  {
    return 1U;            
  }
  else
  {
    return 0U;            
  }
}


 



 





 












 
static inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);                                                    
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (uint32_t)(ticks - 1UL);                          
  __NVIC_SetPriority (SysTick_IRQn, (1UL << 4U) - 1UL);  
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0UL;                                              
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2U) |
                   (1UL << 1U)   |
                   (1UL );                          
  return (0UL);                                                      
}


 



 





 

extern volatile int32_t ITM_RxBuffer;                               









 
static inline uint32_t ITM_SendChar (uint32_t ch)
{
  if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&       
      ((((ITM_Type *) (0xE0000000UL) )->TER & 1UL               ) != 0UL)   )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0U].u32 == 0UL)
    {
      __no_operation();
    }
    ((ITM_Type *) (0xE0000000UL) )->PORT[0U].u8 = (uint8_t)ch;
  }
  return (ch);
}







 
static inline int32_t ITM_ReceiveChar (void)
{
  int32_t ch = -1;                            

  if (ITM_RxBuffer != ((int32_t)0x5AA55AA5U))
  {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = ((int32_t)0x5AA55AA5U);        
  }

  return (ch);
}







 
static inline int32_t ITM_CheckChar (void)
{

  if (ITM_RxBuffer == ((int32_t)0x5AA55AA5U))
  {
    return (0);                               
  }
  else
  {
    return (1);                               
  }
}

 






















  



 



   
  


 




 



 




 
  






 
extern uint32_t SystemCoreClock;           

extern const uint8_t  AHBPrescTable[16];     
extern const uint8_t  APBPrescTable[8];      



 



 



 



 



 



 
  
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);


 





 
  


   



    



 

typedef struct
{
  volatile uint32_t SR;      
  volatile uint32_t CR1;     
  volatile uint32_t CR2;     
  volatile uint32_t SMPR1;   
  volatile uint32_t SMPR2;   
  volatile uint32_t JOFR1;   
  volatile uint32_t JOFR2;   
  volatile uint32_t JOFR3;   
  volatile uint32_t JOFR4;   
  volatile uint32_t HTR;     
  volatile uint32_t LTR;     
  volatile uint32_t SQR1;    
  volatile uint32_t SQR2;    
  volatile uint32_t SQR3;    
  volatile uint32_t JSQR;    
  volatile uint32_t JDR1;    
  volatile uint32_t JDR2;    
  volatile uint32_t JDR3;    
  volatile uint32_t JDR4;    
  volatile uint32_t DR;      
} ADC_TypeDef;

typedef struct
{
  volatile uint32_t CSR;     
  volatile uint32_t CCR;     
  volatile uint32_t CDR;    
 
} ADC_Common_TypeDef;




 

typedef struct
{
  volatile uint32_t TIR;   
  volatile uint32_t TDTR;  
  volatile uint32_t TDLR;  
  volatile uint32_t TDHR;  
} CAN_TxMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t RIR;   
  volatile uint32_t RDTR;  
  volatile uint32_t RDLR;  
  volatile uint32_t RDHR;  
} CAN_FIFOMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t FR1;  
  volatile uint32_t FR2;  
} CAN_FilterRegister_TypeDef;



 
  
typedef struct
{
  volatile uint32_t              MCR;                  
  volatile uint32_t              MSR;                  
  volatile uint32_t              TSR;                  
  volatile uint32_t              RF0R;                 
  volatile uint32_t              RF1R;                 
  volatile uint32_t              IER;                  
  volatile uint32_t              ESR;                  
  volatile uint32_t              BTR;                  
  uint32_t                   RESERVED0[88];        
  CAN_TxMailBox_TypeDef      sTxMailBox[3];        
  CAN_FIFOMailBox_TypeDef    sFIFOMailBox[2];      
  uint32_t                   RESERVED1[12];        
  volatile uint32_t              FMR;                  
  volatile uint32_t              FM1R;                 
  uint32_t                   RESERVED2;            
  volatile uint32_t              FS1R;                 
  uint32_t                   RESERVED3;            
  volatile uint32_t              FFA1R;                
  uint32_t                   RESERVED4;            
  volatile uint32_t              FA1R;                 
  uint32_t                   RESERVED5[8];          
  CAN_FilterRegister_TypeDef sFilterRegister[28];  
} CAN_TypeDef;



 

typedef struct
{
  volatile uint32_t DR;          
  volatile uint8_t  IDR;         
  uint8_t       RESERVED0;   
  uint16_t      RESERVED1;   
  volatile uint32_t CR;          
} CRC_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;        
  volatile uint32_t SWTRIGR;   
  volatile uint32_t DHR12R1;   
  volatile uint32_t DHR12L1;   
  volatile uint32_t DHR8R1;    
  volatile uint32_t DHR12R2;   
  volatile uint32_t DHR12L2;   
  volatile uint32_t DHR8R2;    
  volatile uint32_t DHR12RD;   
  volatile uint32_t DHR12LD;   
  volatile uint32_t DHR8RD;    
  volatile uint32_t DOR1;      
  volatile uint32_t DOR2;      
  volatile uint32_t SR;        
} DAC_TypeDef;



 

typedef struct
{
  volatile uint32_t IDCODE;   
  volatile uint32_t CR;       
  volatile uint32_t APB1FZ;   
  volatile uint32_t APB2FZ;   
}DBGMCU_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;        
  volatile uint32_t SR;        
  volatile uint32_t RISR;      
  volatile uint32_t IER;       
  volatile uint32_t MISR;      
  volatile uint32_t ICR;       
  volatile uint32_t ESCR;      
  volatile uint32_t ESUR;      
  volatile uint32_t CWSTRTR;   
  volatile uint32_t CWSIZER;   
  volatile uint32_t DR;        
} DCMI_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;      
  volatile uint32_t NDTR;    
  volatile uint32_t PAR;     
  volatile uint32_t M0AR;    
  volatile uint32_t M1AR;    
  volatile uint32_t FCR;     
} DMA_Stream_TypeDef;

typedef struct
{
  volatile uint32_t LISR;    
  volatile uint32_t HISR;    
  volatile uint32_t LIFCR;   
  volatile uint32_t HIFCR;   
} DMA_TypeDef;



 

typedef struct
{
  volatile uint32_t MACCR;
  volatile uint32_t MACFFR;
  volatile uint32_t MACHTHR;
  volatile uint32_t MACHTLR;
  volatile uint32_t MACMIIAR;
  volatile uint32_t MACMIIDR;
  volatile uint32_t MACFCR;
  volatile uint32_t MACVLANTR;              
  uint32_t      RESERVED0[2];
  volatile uint32_t MACRWUFFR;              
  volatile uint32_t MACPMTCSR;
  uint32_t      RESERVED1;
  volatile uint32_t MACDBGR;
  volatile uint32_t MACSR;                  
  volatile uint32_t MACIMR;
  volatile uint32_t MACA0HR;
  volatile uint32_t MACA0LR;
  volatile uint32_t MACA1HR;
  volatile uint32_t MACA1LR;
  volatile uint32_t MACA2HR;
  volatile uint32_t MACA2LR;
  volatile uint32_t MACA3HR;
  volatile uint32_t MACA3LR;                
  uint32_t      RESERVED2[40];
  volatile uint32_t MMCCR;                  
  volatile uint32_t MMCRIR;
  volatile uint32_t MMCTIR;
  volatile uint32_t MMCRIMR;
  volatile uint32_t MMCTIMR;                
  uint32_t      RESERVED3[14];
  volatile uint32_t MMCTGFSCCR;             
  volatile uint32_t MMCTGFMSCCR;
  uint32_t      RESERVED4[5];
  volatile uint32_t MMCTGFCR;
  uint32_t      RESERVED5[10];
  volatile uint32_t MMCRFCECR;
  volatile uint32_t MMCRFAECR;
  uint32_t      RESERVED6[10];
  volatile uint32_t MMCRGUFCR;
  uint32_t      RESERVED7[334];
  volatile uint32_t PTPTSCR;
  volatile uint32_t PTPSSIR;
  volatile uint32_t PTPTSHR;
  volatile uint32_t PTPTSLR;
  volatile uint32_t PTPTSHUR;
  volatile uint32_t PTPTSLUR;
  volatile uint32_t PTPTSAR;
  volatile uint32_t PTPTTHR;
  volatile uint32_t PTPTTLR;
  volatile uint32_t RESERVED8;
  volatile uint32_t PTPTSSR;
  uint32_t      RESERVED9[565];
  volatile uint32_t DMABMR;
  volatile uint32_t DMATPDR;
  volatile uint32_t DMARPDR;
  volatile uint32_t DMARDLAR;
  volatile uint32_t DMATDLAR;
  volatile uint32_t DMASR;
  volatile uint32_t DMAOMR;
  volatile uint32_t DMAIER;
  volatile uint32_t DMAMFBOCR;
  volatile uint32_t DMARSWTR;
  uint32_t      RESERVED10[8];
  volatile uint32_t DMACHTDR;
  volatile uint32_t DMACHRDR;
  volatile uint32_t DMACHTBAR;
  volatile uint32_t DMACHRBAR;
} ETH_TypeDef;



 

typedef struct
{
  volatile uint32_t IMR;     
  volatile uint32_t EMR;     
  volatile uint32_t RTSR;    
  volatile uint32_t FTSR;    
  volatile uint32_t SWIER;   
  volatile uint32_t PR;      
} EXTI_TypeDef;



 

typedef struct
{
  volatile uint32_t ACR;       
  volatile uint32_t KEYR;      
  volatile uint32_t OPTKEYR;   
  volatile uint32_t SR;        
  volatile uint32_t CR;        
  volatile uint32_t OPTCR;     
  volatile uint32_t OPTCR1;    
} FLASH_TypeDef;





 

typedef struct
{
  volatile uint32_t BTCR[8];        
} FSMC_Bank1_TypeDef;



 

typedef struct
{
  volatile uint32_t BWTR[7];     
} FSMC_Bank1E_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR2;        
  volatile uint32_t SR2;         
  volatile uint32_t PMEM2;       
  volatile uint32_t PATT2;       
  uint32_t      RESERVED0;   
  volatile uint32_t ECCR2;       
  uint32_t      RESERVED1;   
  uint32_t      RESERVED2;   
  volatile uint32_t PCR3;        
  volatile uint32_t SR3;         
  volatile uint32_t PMEM3;       
  volatile uint32_t PATT3;       
  uint32_t      RESERVED3;   
  volatile uint32_t ECCR3;       
} FSMC_Bank2_3_TypeDef;



 

typedef struct
{
  volatile uint32_t PCR4;        
  volatile uint32_t SR4;         
  volatile uint32_t PMEM4;       
  volatile uint32_t PATT4;       
  volatile uint32_t PIO4;        
} FSMC_Bank4_TypeDef; 



 

typedef struct
{
  volatile uint32_t MODER;     
  volatile uint32_t OTYPER;    
  volatile uint32_t OSPEEDR;   
  volatile uint32_t PUPDR;     
  volatile uint32_t IDR;       
  volatile uint32_t ODR;       
  volatile uint32_t BSRR;      
  volatile uint32_t LCKR;      
  volatile uint32_t AFR[2];    
} GPIO_TypeDef;



 

typedef struct
{
  volatile uint32_t MEMRMP;        
  volatile uint32_t PMC;           
  volatile uint32_t EXTICR[4];     
  uint32_t      RESERVED[2];   
  volatile uint32_t CMPCR;         
} SYSCFG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR1;         
  volatile uint32_t CR2;         
  volatile uint32_t OAR1;        
  volatile uint32_t OAR2;        
  volatile uint32_t DR;          
  volatile uint32_t SR1;         
  volatile uint32_t SR2;         
  volatile uint32_t CCR;         
  volatile uint32_t TRISE;       
} I2C_TypeDef;



 

typedef struct
{
  volatile uint32_t KR;    
  volatile uint32_t PR;    
  volatile uint32_t RLR;   
  volatile uint32_t SR;    
} IWDG_TypeDef;




 

typedef struct
{
  volatile uint32_t CR;    
  volatile uint32_t CSR;   
} PWR_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;             
  volatile uint32_t PLLCFGR;        
  volatile uint32_t CFGR;           
  volatile uint32_t CIR;            
  volatile uint32_t AHB1RSTR;       
  volatile uint32_t AHB2RSTR;       
  volatile uint32_t AHB3RSTR;       
  uint32_t      RESERVED0;      
  volatile uint32_t APB1RSTR;       
  volatile uint32_t APB2RSTR;       
  uint32_t      RESERVED1[2];   
  volatile uint32_t AHB1ENR;        
  volatile uint32_t AHB2ENR;        
  volatile uint32_t AHB3ENR;        
  uint32_t      RESERVED2;      
  volatile uint32_t APB1ENR;        
  volatile uint32_t APB2ENR;        
  uint32_t      RESERVED3[2];   
  volatile uint32_t AHB1LPENR;      
  volatile uint32_t AHB2LPENR;      
  volatile uint32_t AHB3LPENR;      
  uint32_t      RESERVED4;      
  volatile uint32_t APB1LPENR;      
  volatile uint32_t APB2LPENR;      
  uint32_t      RESERVED5[2];   
  volatile uint32_t BDCR;           
  volatile uint32_t CSR;            
  uint32_t      RESERVED6[2];   
  volatile uint32_t SSCGR;          
  volatile uint32_t PLLI2SCFGR;     
} RCC_TypeDef;



 

typedef struct
{
  volatile uint32_t TR;       
  volatile uint32_t DR;       
  volatile uint32_t CR;       
  volatile uint32_t ISR;      
  volatile uint32_t PRER;     
  volatile uint32_t WUTR;     
  volatile uint32_t CALIBR;   
  volatile uint32_t ALRMAR;   
  volatile uint32_t ALRMBR;   
  volatile uint32_t WPR;      
  volatile uint32_t SSR;      
  volatile uint32_t SHIFTR;   
  volatile uint32_t TSTR;     
  volatile uint32_t TSDR;     
  volatile uint32_t TSSSR;    
  volatile uint32_t CALR;     
  volatile uint32_t TAFCR;    
  volatile uint32_t ALRMASSR; 
  volatile uint32_t ALRMBSSR; 
  uint32_t RESERVED7;     
  volatile uint32_t BKP0R;    
  volatile uint32_t BKP1R;    
  volatile uint32_t BKP2R;    
  volatile uint32_t BKP3R;    
  volatile uint32_t BKP4R;    
  volatile uint32_t BKP5R;    
  volatile uint32_t BKP6R;    
  volatile uint32_t BKP7R;    
  volatile uint32_t BKP8R;    
  volatile uint32_t BKP9R;    
  volatile uint32_t BKP10R;   
  volatile uint32_t BKP11R;   
  volatile uint32_t BKP12R;   
  volatile uint32_t BKP13R;   
  volatile uint32_t BKP14R;   
  volatile uint32_t BKP15R;   
  volatile uint32_t BKP16R;   
  volatile uint32_t BKP17R;   
  volatile uint32_t BKP18R;   
  volatile uint32_t BKP19R;   
} RTC_TypeDef;



 

typedef struct
{
  volatile uint32_t POWER;                  
  volatile uint32_t CLKCR;                  
  volatile uint32_t ARG;                    
  volatile uint32_t CMD;                    
  volatile const uint32_t  RESPCMD;         
  volatile const uint32_t  RESP1;           
  volatile const uint32_t  RESP2;           
  volatile const uint32_t  RESP3;           
  volatile const uint32_t  RESP4;           
  volatile uint32_t DTIMER;                 
  volatile uint32_t DLEN;                   
  volatile uint32_t DCTRL;                  
  volatile const uint32_t  DCOUNT;          
  volatile const uint32_t  STA;             
  volatile uint32_t ICR;                    
  volatile uint32_t MASK;                   
  uint32_t      RESERVED0[2];           
  volatile const uint32_t  FIFOCNT;         
  uint32_t      RESERVED1[13];          
  volatile uint32_t FIFO;                   
} SDIO_TypeDef;



 

typedef struct
{
  volatile uint32_t CR1;         
  volatile uint32_t CR2;         
  volatile uint32_t SR;          
  volatile uint32_t DR;          
  volatile uint32_t CRCPR;       
  volatile uint32_t RXCRCR;      
  volatile uint32_t TXCRCR;      
  volatile uint32_t I2SCFGR;     
  volatile uint32_t I2SPR;       
} SPI_TypeDef;




 

typedef struct
{
  volatile uint32_t CR1;          
  volatile uint32_t CR2;          
  volatile uint32_t SMCR;         
  volatile uint32_t DIER;         
  volatile uint32_t SR;           
  volatile uint32_t EGR;          
  volatile uint32_t CCMR1;        
  volatile uint32_t CCMR2;        
  volatile uint32_t CCER;         
  volatile uint32_t CNT;          
  volatile uint32_t PSC;          
  volatile uint32_t ARR;          
  volatile uint32_t RCR;          
  volatile uint32_t CCR1;         
  volatile uint32_t CCR2;         
  volatile uint32_t CCR3;         
  volatile uint32_t CCR4;         
  volatile uint32_t BDTR;         
  volatile uint32_t DCR;          
  volatile uint32_t DMAR;         
  volatile uint32_t OR;           
} TIM_TypeDef;



 
 
typedef struct
{
  volatile uint32_t SR;          
  volatile uint32_t DR;          
  volatile uint32_t BRR;         
  volatile uint32_t CR1;         
  volatile uint32_t CR2;         
  volatile uint32_t CR3;         
  volatile uint32_t GTPR;        
} USART_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;    
  volatile uint32_t CFR;   
  volatile uint32_t SR;    
} WWDG_TypeDef;



 
  
typedef struct 
{
  volatile uint32_t CR;   
  volatile uint32_t SR;   
  volatile uint32_t DR;   
} RNG_TypeDef;



 
typedef struct
{
  volatile uint32_t GOTGCTL;               
  volatile uint32_t GOTGINT;               
  volatile uint32_t GAHBCFG;               
  volatile uint32_t GUSBCFG;               
  volatile uint32_t GRSTCTL;               
  volatile uint32_t GINTSTS;               
  volatile uint32_t GINTMSK;               
  volatile uint32_t GRXSTSR;               
  volatile uint32_t GRXSTSP;               
  volatile uint32_t GRXFSIZ;               
  volatile uint32_t DIEPTXF0_HNPTXFSIZ;    
  volatile uint32_t HNPTXSTS;              
  uint32_t Reserved30[2];              
  volatile uint32_t GCCFG;                 
  volatile uint32_t CID;                   
  uint32_t  Reserved40[48];            
  volatile uint32_t HPTXFSIZ;              
  volatile uint32_t DIEPTXF[0x0F];         
} USB_OTG_GlobalTypeDef;



 
typedef struct 
{
  volatile uint32_t DCFG;             
  volatile uint32_t DCTL;             
  volatile uint32_t DSTS;             
  uint32_t Reserved0C;            
  volatile uint32_t DIEPMSK;          
  volatile uint32_t DOEPMSK;          
  volatile uint32_t DAINT;            
  volatile uint32_t DAINTMSK;         
  uint32_t  Reserved20;           
  uint32_t Reserved9;             
  volatile uint32_t DVBUSDIS;         
  volatile uint32_t DVBUSPULSE;       
  volatile uint32_t DTHRCTL;          
  volatile uint32_t DIEPEMPMSK;       
  volatile uint32_t DEACHINT;         
  volatile uint32_t DEACHMSK;         
  uint32_t Reserved40;            
  volatile uint32_t DINEP1MSK;        
  uint32_t  Reserved44[15];       
  volatile uint32_t DOUTEP1MSK;       
} USB_OTG_DeviceTypeDef;



 
typedef struct 
{
  volatile uint32_t DIEPCTL;            
  uint32_t Reserved04;              
  volatile uint32_t DIEPINT;            
  uint32_t Reserved0C;              
  volatile uint32_t DIEPTSIZ;           
  volatile uint32_t DIEPDMA;            
  volatile uint32_t DTXFSTS;            
  uint32_t Reserved18;              
} USB_OTG_INEndpointTypeDef;



 
typedef struct 
{
  volatile uint32_t DOEPCTL;        
  uint32_t Reserved04;          
  volatile uint32_t DOEPINT;        
  uint32_t Reserved0C;          
  volatile uint32_t DOEPTSIZ;       
  volatile uint32_t DOEPDMA;        
  uint32_t Reserved18[2];       
} USB_OTG_OUTEndpointTypeDef;



 
typedef struct 
{
  volatile uint32_t HCFG;              
  volatile uint32_t HFIR;              
  volatile uint32_t HFNUM;             
  uint32_t Reserved40C;            
  volatile uint32_t HPTXSTS;           
  volatile uint32_t HAINT;             
  volatile uint32_t HAINTMSK;          
} USB_OTG_HostTypeDef;



 
typedef struct
{
  volatile uint32_t HCCHAR;            
  volatile uint32_t HCSPLT;            
  volatile uint32_t HCINT;             
  volatile uint32_t HCINTMSK;          
  volatile uint32_t HCTSIZ;            
  volatile uint32_t HCDMA;             
  uint32_t Reserved[2];            
} USB_OTG_HostChannelTypeDef;



 



 

 

 

 

 
 

 

 

 


 
 




 



   
 



 



 



 


 

  

 
    
 
 
 

 
 
 
 
 


 

 

 
  
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 
 
 
 
 
 
 

 



 

 

 

 



 


 
 

 

 

 

 

 

 

 

 

   

 

 

 

 

 

 

 

 

 

 

 
 

 

 

 

 


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 
 
 
 
 


 


 

 
 
 
 
 


 
 









 

 

 

 

 

 

 

 

 

 

 

 

 

 
 
 
 
 
 

 

 
 

 
 

 

 

 

 

 

 

 

 

 

 
 
 
 
 
 

 

 

  

  

  

  

  

 

 

 


 
 
 
 
 
 

 

 

 

 

 

 

 

 
 
 
 
 
 



 

 

 

                                             
 

 
 
 
 
 
 




 




 




 




 







 







 







 







 





 





 





 





 






 






 






 

 

 

 




 




 




 




 




 




 




 

 

 
 
 
 
 
 

 

 

 

 

 

 

 

 

 

 
 

 

 
 
 

 

 

 


 
 
 
 
 
 

 


 



 

 

 

 

 

 


 
 
 
 
 
 

 

 

 



 
 
 
 
 
 


 

 

 

 

 
 
 
 
 
 





 


 






 
 


 


 


 


 


 

 





 




 

 
 


 

 

 

 
 


 


 


 


 

 

 


 

 

 

 

 



 
 

 

 



 
 
 
 
 
 

 

 
 
 
 
 


 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 


 
 
 
 
 
 

 



 

 



 

 

 

 

 

 

 

 

 



 

 

 

 

 

 

 
 
 
 
 

 



 

 

 

 

 

 

 







 

 
 
 
 
 
 
 
 

 


 



 



 



 

 



 



 



 



 

 



 



 



 



 

 



 



 



 



 

 

 
 
 
 
 
 




 



 






 

 

 

 








 





 








 





 

 

 

 

 

 

 

 

 

 



 


 

 



 
 
 
 
 
 

 

 

 

 



 

 


 
 
 
 
 
 
 


 
 

 


 


 
 
 
 
 
 

 


 
 

 

 
 
 
 
 
 

 

 

 

 

 

 

 

  

 








 

  

 

 

 

 

 

 

 

 

 

 

 

 
 
 

 

 

 

 

 

 

 

 

 

 

 

 
 
 

 


 

 

 

 

 

 

 

 

 

 
 
 

 

 

 

 

 

 
   

 

 

 

 

 

 

 

 
 
 
 
 
 

 


 







 

 

 


 

 

 


 

 


 



 

 


 

 
 

 

 

 

 

 

 

 

 

 

 



 



 

 

 

 

 

 

 




 

 

 



 





 




 

 

 

 

 

 

 

 

 

 


 
 



 

 
 






  



 



 

 



 
 

 

 

 

 

 

 

 


 
 

 

 


 


 

 

 

 

 

 

 

 

 

 

 

 

 
 

 

 

 

 

 

 

 


 

 

 

 

 

 

 
 
 

 

 

 

 
 

 

 


 

 

 

 

 

 



 





 
 
 
 
 
 
 
 

 



 



 



 





 



  
typedef enum 
{
  RESET = 0U, 
  SET = !RESET
} FlagStatus, ITStatus;

typedef enum 
{
  DISABLE = 0U, 
  ENABLE = !DISABLE
} FunctionalState;

typedef enum
{
  SUCCESS = 0U,
  ERROR = !SUCCESS
} ErrorStatus;



 




 








 
 

 

 

 

 

 



 


















  

 






 



 

















 

 


 
 
 



 


 



 






 



 




 



 



 



 


 



 


 



 




 



 







 



 







 



 




 



 




 



 




 




 


 



 



 



 












 



 


 



 






 



 


 



 



 



 


 



 




 
 




 


 



 



 




 



 



 



 












 



 




 



 

 

 



 



 












 




 





 




 


 



 






 



 









 



 


 



 








 




 




 



 



 



 



 



 






 



 




 





 



 

 



 


 



 




 



 



 


 

 











 



 



 



 



 



 





 



 









 



 


 



 


 



 


 



 


 



 


 




 



 

 



 


 



 




 




 








 



 



 



 






 



 




 




 




 



 




 



 



 



 





 



 







 




 


 




 




 




 



 




 



 




 










 





























 



 



 



 






 



 



 





 



 






 



 


 



 




 



 






 




 





 



 









 



 






 



 




 



 


 



 


 



 


 



 


 



 


 



 


 



 



 




 
 

  #pragma system_include

 
 

 

  #pragma system_include














 


 
 


  #pragma system_include

 
 

 

  #pragma system_include














 



 
  typedef _Sizet size_t;

typedef unsigned int __data_size_t;



 


 
  typedef   signed int ptrdiff_t;

  typedef   _Wchart wchar_t;


    typedef union
    {
      long long _ll;
      long double _ld;
      void *_vp;
    } _Max_align_t;
    typedef _Max_align_t max_align_t;






 

 



   
typedef enum 
{
  HAL_OK       = 0x00U,
  HAL_ERROR    = 0x01U,
  HAL_BUSY     = 0x02U,
  HAL_TIMEOUT  = 0x03U
} HAL_StatusTypeDef;



 
typedef enum 
{
  HAL_UNLOCKED = 0x00U,
  HAL_LOCKED   = 0x01U  
} HAL_LockTypeDef;

 



















 





 




  



 




  


 






 
 















  

 


 



 



  

 


 



 
typedef struct
{
  uint32_t PLLState;   
 

  uint32_t PLLSource;  
 

  uint32_t PLLM;       
 

  uint32_t PLLN;       

 

  uint32_t PLLP;       
 

  uint32_t PLLQ;       
 
}RCC_PLLInitTypeDef;







 
typedef struct
{
                                
  uint32_t PLLI2SN;    


 

  uint32_t PLLI2SR;    

 

}RCC_PLLI2SInitTypeDef;
 


 
typedef struct
{
  uint32_t PeriphClockSelection; 
 

  RCC_PLLI2SInitTypeDef PLLI2S;  
 

  uint32_t RTCClockSelection;      
 
}RCC_PeriphCLKInitTypeDef;


  

 


 



 
 
 

 
 

 
 
    
 
 

 
 

 
 


 


 


 



 


 



 


 



 


 

      









 


 




 
     
 


 
 
 

 






 


 



 


 
  






   



 


 


 
  






 
                                        





 








 





   
  






 


 







 


    
   






 


 
 






  

  

 
  






  



 







 
  


 
    



 



 




 


   



 




  



 




 



 




 
                                          


 
                                        







 



 








 





 
                                        







 


 
                                        







 



 
                                        







 



 
 

 
 

 
 

 
 

 
 

 
 

 




























 
 
                             
 



 















 


 

 
 

 
                                 

 

 







 







 
                                 

      


      

 





 

 


 



 
HAL_StatusTypeDef HAL_RCCEx_PeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit);
void HAL_RCCEx_GetPeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit);

uint32_t HAL_RCCEx_GetPeriphCLKFreq(uint32_t PeriphClk);

HAL_StatusTypeDef HAL_RCCEx_EnablePLLI2S(RCC_PLLI2SInitTypeDef  *PLLI2SInit);
HAL_StatusTypeDef HAL_RCCEx_DisablePLLI2S(void);


  



 
 
 
 


 




 
   

 

 

 
 
      
      




 



 

 


 


 
      






      
      







      




 



 



  



   





 



 

 


 



 
typedef struct
{
  uint32_t OscillatorType;       
 

  uint32_t HSEState;             
 

  uint32_t LSEState;             
 

  uint32_t HSIState;             
 

  uint32_t HSICalibrationValue;  
 

  uint32_t LSIState;             
 

  RCC_PLLInitTypeDef PLL;         
}RCC_OscInitTypeDef;



 
typedef struct
{
  uint32_t ClockType;             
 

  uint32_t SYSCLKSource;          
 

  uint32_t AHBCLKDivider;         
 

  uint32_t APB1CLKDivider;        
 

  uint32_t APB2CLKDivider;        
 

}RCC_ClkInitTypeDef;



 

 


 



 


 



 


 



 


 



 



 



 


 



 


 



 


 



 


 



 


 





 


 





 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 









 
 

 

 


 



 

 


 







 



 







 



 







 



 







 



 







 



 







 



 




 



 




 



 




 



 








 



 








 



 








 



 



 















 







 


 



 








 


 



 





















 


 



 


















 


 



 



 





















 








 





 





 


 



 







 








 









 


 



 









 









 






 


 



 















 


















 


 




 











 











 












 












 



 


















 



 



 

 
 

 



 
 
HAL_StatusTypeDef HAL_RCC_DeInit(void);
HAL_StatusTypeDef HAL_RCC_OscConfig(RCC_OscInitTypeDef *RCC_OscInitStruct);
HAL_StatusTypeDef HAL_RCC_ClockConfig(RCC_ClkInitTypeDef *RCC_ClkInitStruct, uint32_t FLatency);


 



 
 
void     HAL_RCC_MCOConfig(uint32_t RCC_MCOx, uint32_t RCC_MCOSource, uint32_t RCC_MCODiv);
void     HAL_RCC_EnableCSS(void);
void     HAL_RCC_DisableCSS(void);
uint32_t HAL_RCC_GetSysClockFreq(void);
uint32_t HAL_RCC_GetHCLKFreq(void);
uint32_t HAL_RCC_GetPCLK1Freq(void);
uint32_t HAL_RCC_GetPCLK2Freq(void);
void     HAL_RCC_GetOscConfig(RCC_OscInitTypeDef *RCC_OscInitStruct);
void     HAL_RCC_GetClockConfig(RCC_ClkInitTypeDef *RCC_ClkInitStruct, uint32_t *pFLatency);

 
void HAL_RCC_NMI_IRQHandler(void);

 
void HAL_RCC_CSSCallback(void);



 



 

 
 
 


 




 
 
 
 
 

 
 
 

 
 

 

 

 

 





 



 

 


 



 




















 



 



 



 




















  

 


 



 



  

 


 



  
typedef struct
{
  uint32_t Pin;       
 

  uint32_t Mode;      
 

  uint32_t Pull;      
 

  uint32_t Speed;     
 

  uint32_t Alternate;  
 
}GPIO_InitTypeDef;



 
typedef enum
{
  GPIO_PIN_RESET = 0,
  GPIO_PIN_SET
}GPIO_PinState;


 

 



  



 



 









  

    
 



 




 


 

 


   


 
  


 

 


 






 






 






 






 






 


 

 
















  

 


 



 



  

 
 


 
  


 

 
 

 
 

 


  



  



  



  



  



  



  



  



  



  



  



  



  



  



  
 

 

 

 
 

 

 

 

 

 

 
 

 
 


  



 

 


 


 

 


 


 

 
 
 


 


 

 


 


 







 



   
 
 

 
 

 

 

 

 

 
 
 

 
 

 
 

 
 

 
 

 
 



  



 

 


 



 



  



  
  



 


 



 
 
void  HAL_GPIO_Init(GPIO_TypeDef  *GPIOx, GPIO_InitTypeDef *GPIO_Init);
void  HAL_GPIO_DeInit(GPIO_TypeDef  *GPIOx, uint32_t GPIO_Pin);


 



 
 
GPIO_PinState HAL_GPIO_ReadPin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void HAL_GPIO_WritePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState);
void HAL_GPIO_TogglePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
HAL_StatusTypeDef HAL_GPIO_LockPin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void HAL_GPIO_EXTI_IRQHandler(uint16_t GPIO_Pin);
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin);



  



  
 
 
 


 



 

 


 


 

 


 



 



  



 




















 

 


 



 




 

 



 
typedef enum
{
  HAL_EXTI_COMMON_CB_ID          = 0x00U
} EXTI_CallbackIDTypeDef;



 
typedef struct
{
  uint32_t Line;                     
  void (* PendingCallback)(void);    
} EXTI_HandleTypeDef;



 
typedef struct
{
  uint32_t Line;      
 
  uint32_t Mode;      
 
  uint32_t Trigger;   
 
  uint32_t GPIOSel;   

 
} EXTI_ConfigTypeDef;



 

 


 



 



 



 


 



 



 




 



 



 

 


 



 

 


 


 



 



 



 



 



 

 


 








 

 



 




 
 
HAL_StatusTypeDef HAL_EXTI_SetConfigLine(EXTI_HandleTypeDef *hexti, EXTI_ConfigTypeDef *pExtiConfig);
HAL_StatusTypeDef HAL_EXTI_GetConfigLine(EXTI_HandleTypeDef *hexti, EXTI_ConfigTypeDef *pExtiConfig);
HAL_StatusTypeDef HAL_EXTI_ClearConfigLine(EXTI_HandleTypeDef *hexti);
HAL_StatusTypeDef HAL_EXTI_RegisterCallback(EXTI_HandleTypeDef *hexti, EXTI_CallbackIDTypeDef CallbackID, void (*pPendingCbfn)(void));
HAL_StatusTypeDef HAL_EXTI_GetHandle(EXTI_HandleTypeDef *hexti, uint32_t ExtiLine);


 




 
 
void HAL_EXTI_IRQHandler(EXTI_HandleTypeDef *hexti);
uint32_t HAL_EXTI_GetPending(EXTI_HandleTypeDef *hexti, uint32_t Edge);
void HAL_EXTI_ClearPending(EXTI_HandleTypeDef *hexti, uint32_t Edge);
void HAL_EXTI_GenerateSWI(EXTI_HandleTypeDef *hexti);



 



 



 



 




















  

 


 



 



  

 




 
   


 
typedef struct
{
  uint32_t Channel;              
 

  uint32_t Direction;            

 

  uint32_t PeriphInc;            
 

  uint32_t MemInc;               
 

  uint32_t PeriphDataAlignment;  
 

  uint32_t MemDataAlignment;     
 

  uint32_t Mode;                 


 

  uint32_t Priority;             
 

  uint32_t FIFOMode;             


 

  uint32_t FIFOThreshold;        
 

  uint32_t MemBurst;             



 

  uint32_t PeriphBurst;          



 
}DMA_InitTypeDef;




 
typedef enum
{
  HAL_DMA_STATE_RESET             = 0x00U,   
  HAL_DMA_STATE_READY             = 0x01U,   
  HAL_DMA_STATE_BUSY              = 0x02U,   
  HAL_DMA_STATE_TIMEOUT           = 0x03U,   
  HAL_DMA_STATE_ERROR             = 0x04U,   
  HAL_DMA_STATE_ABORT             = 0x05U,   
}HAL_DMA_StateTypeDef;



 
typedef enum
{
  HAL_DMA_FULL_TRANSFER           = 0x00U,   
  HAL_DMA_HALF_TRANSFER           = 0x01U    
}HAL_DMA_LevelCompleteTypeDef;



 
typedef enum
{
  HAL_DMA_XFER_CPLT_CB_ID         = 0x00U,   
  HAL_DMA_XFER_HALFCPLT_CB_ID     = 0x01U,   
  HAL_DMA_XFER_M1CPLT_CB_ID       = 0x02U,   
  HAL_DMA_XFER_M1HALFCPLT_CB_ID   = 0x03U,   
  HAL_DMA_XFER_ERROR_CB_ID        = 0x04U,   
  HAL_DMA_XFER_ABORT_CB_ID        = 0x05U,   
  HAL_DMA_XFER_ALL_CB_ID          = 0x06U    
}HAL_DMA_CallbackIDTypeDef;



 
typedef struct __DMA_HandleTypeDef
{
  DMA_Stream_TypeDef         *Instance;                                                         

  DMA_InitTypeDef            Init;                                                               

  HAL_LockTypeDef            Lock;                                                                

  volatile HAL_DMA_StateTypeDef  State;                                                             

  void                       *Parent;                                                            

  void                       (* XferCpltCallback)( struct __DMA_HandleTypeDef * hdma);          

  void                       (* XferHalfCpltCallback)( struct __DMA_HandleTypeDef * hdma);      

  void                       (* XferM1CpltCallback)( struct __DMA_HandleTypeDef * hdma);        
  
  void                       (* XferM1HalfCpltCallback)( struct __DMA_HandleTypeDef * hdma);    
  
  void                       (* XferErrorCallback)( struct __DMA_HandleTypeDef * hdma);         
  
  void                       (* XferAbortCallback)( struct __DMA_HandleTypeDef * hdma);           

  volatile uint32_t              ErrorCode;                                                         
  
  uint32_t                   StreamBaseAddress;                                                 

  uint32_t                   StreamIndex;                                                       
 
}DMA_HandleTypeDef;



 

 




 




  


 




  


 




  


 
        



  


  




  


 




  


  




 


 




  


 




 


  




 


  




 


  




  


  




  


 




 


 




  


 



 
 
 




 












 





 





 

 





 





       





 





 





 













 













 












 












 












 

















 






 


 
















 

 


 



 



  

 



 
   


  
typedef enum
{
  MEMORY0      = 0x00U,     
  MEMORY1      = 0x01U      
}HAL_DMA_MemoryTypeDef;



 

 



 




 

 
HAL_StatusTypeDef HAL_DMAEx_MultiBufferStart(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t SecondMemAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMAEx_MultiBufferStart_IT(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t SecondMemAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMAEx_ChangeMemory(DMA_HandleTypeDef *hdma, uint32_t Address, HAL_DMA_MemoryTypeDef memory);



 


 
         
 



 


 



 



 




 




 




 
HAL_StatusTypeDef HAL_DMA_Init(DMA_HandleTypeDef *hdma); 
HAL_StatusTypeDef HAL_DMA_DeInit(DMA_HandleTypeDef *hdma);


 




 
HAL_StatusTypeDef HAL_DMA_Start (DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMA_Start_IT(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMA_Abort(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_Abort_IT(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_PollForTransfer(DMA_HandleTypeDef *hdma, HAL_DMA_LevelCompleteTypeDef CompleteLevel, uint32_t Timeout);
void              HAL_DMA_IRQHandler(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_CleanCallbacks(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_RegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef CallbackID, void (* pCallback)(DMA_HandleTypeDef *_hdma));
HAL_StatusTypeDef HAL_DMA_UnRegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef CallbackID);



  




 
HAL_DMA_StateTypeDef HAL_DMA_GetState(DMA_HandleTypeDef *hdma);
uint32_t             HAL_DMA_GetError(DMA_HandleTypeDef *hdma);


  


  
 



 


  

 



 














  

 



 


 



  



 



















  

 


 



 



  
 


 




 
typedef struct
{
  uint8_t                Enable;                
 
  uint8_t                Number;                
 
  uint32_t               BaseAddress;            
  uint8_t                Size;                  
 
  uint8_t                SubRegionDisable;      
          
  uint8_t                TypeExtField;          
                  
  uint8_t                AccessPermission;      
 
  uint8_t                DisableExec;           
 
  uint8_t                IsShareable;           
 
  uint8_t                IsCacheable;           
 
  uint8_t                IsBufferable;          
 
}MPU_Region_InitTypeDef;


 



 

 



 



 


 



 



 



 



 



 


 



 


 



 


 



 


 



 


 



 


 



 


 
   


 


 



 


 



 


 

 


 
  


 
 
void HAL_NVIC_SetPriorityGrouping(uint32_t PriorityGroup);
void HAL_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority);
void HAL_NVIC_EnableIRQ(IRQn_Type IRQn);
void HAL_NVIC_DisableIRQ(IRQn_Type IRQn);
void HAL_NVIC_SystemReset(void);
uint32_t HAL_SYSTICK_Config(uint32_t TicksNumb);


 



 
 
uint32_t HAL_NVIC_GetPriorityGrouping(void);
void HAL_NVIC_GetPriority(IRQn_Type IRQn, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority);
uint32_t HAL_NVIC_GetPendingIRQ(IRQn_Type IRQn);
void HAL_NVIC_SetPendingIRQ(IRQn_Type IRQn);
void HAL_NVIC_ClearPendingIRQ(IRQn_Type IRQn);
uint32_t HAL_NVIC_GetActive(IRQn_Type IRQn);
void HAL_SYSTICK_CLKSourceConfig(uint32_t CLKSource);
void HAL_SYSTICK_IRQHandler(void);
void HAL_SYSTICK_Callback(void);

void HAL_MPU_Enable(uint32_t MPU_Control);
void HAL_MPU_Disable(void);
void HAL_MPU_ConfigRegion(MPU_Region_InitTypeDef *MPU_Init);


 



 

 
 
 
 


 

















 

 



  



 
  

 


















 

 


 

 
















 

 


 



 




 

 
 

 


 

 
 
 
 

 
 


 
 

 
 
 
 
 

 
 

 
 


 
 
 
 

 
 
 

 
 
 

 



 
 
 
 

 
 
 

 
 
 

 

 
 
 
 
 
 
 
 

 

 
 


 
 

 
 

 
 
 
 
 
 

 



 

 

 
 
 



 


 


 








 








 



 


 

 


 




 


 




 


 



 
 
 
 


 



 


 



 
 
 
 
 
 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 




 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 









 
  
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 

 
 
 
 



 



 


 


 



 







 






 


 



 





































 





































 














































 




























































 
























 




















































































































 



















 



















 













 










 

















 













 


















 
















 

























 

 
 
 












































 












































 



 



 


 


 



 
 
 
 






























 
static inline uint32_t LL_ADC_DMA_GetRegAddr(ADC_TypeDef *ADCx, uint32_t Register)
{
  uint32_t data_reg_addr = 0UL;
  
  if (Register == 0x00000000UL)
  {
     
    data_reg_addr = (uint32_t)&(ADCx->DR);
  }
  else  
  {
     
    data_reg_addr = (uint32_t)&(((((ADC_Common_TypeDef *) ((0x40000000UL + 0x00010000UL) + 0x2300UL))))->CDR);
  }
  
  return data_reg_addr;
}



 



 












 
static inline void LL_ADC_SetCommonClock(ADC_Common_TypeDef *ADCxy_COMMON, uint32_t CommonClock)
{
  (((ADCxy_COMMON->CCR)) = ((((((ADCxy_COMMON->CCR))) & (~((0x3UL << (16U))))) | (CommonClock))));
}











 
static inline uint32_t LL_ADC_GetCommonClock(ADC_Common_TypeDef *ADCxy_COMMON)
{
  return (uint32_t)(((ADCxy_COMMON->CCR) & ((0x3UL << (16U)))));
}




























 
static inline void LL_ADC_SetCommonPathInternalCh(ADC_Common_TypeDef *ADCxy_COMMON, uint32_t PathInternal)
{
  (((ADCxy_COMMON->CCR)) = ((((((ADCxy_COMMON->CCR))) & (~((0x1UL << (23U)) | (0x1UL << (22U))))) | (PathInternal))));
}
















 
static inline uint32_t LL_ADC_GetCommonPathInternalCh(ADC_Common_TypeDef *ADCxy_COMMON)
{
  return (uint32_t)(((ADCxy_COMMON->CCR) & ((0x1UL << (23U)) | (0x1UL << (22U)))));
}



 



 













 
static inline void LL_ADC_SetResolution(ADC_TypeDef *ADCx, uint32_t Resolution)
{
  (((ADCx->CR1)) = ((((((ADCx->CR1))) & (~((0x3UL << (24U))))) | (Resolution))));
}












 
static inline uint32_t LL_ADC_GetResolution(ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CR1) & ((0x3UL << (24U)))));
}











 
static inline void LL_ADC_SetDataAlignment(ADC_TypeDef *ADCx, uint32_t DataAlignment)
{
  (((ADCx->CR2)) = ((((((ADCx->CR2))) & (~((0x1UL << (11U))))) | (DataAlignment))));
}










 
static inline uint32_t LL_ADC_GetDataAlignment(ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CR2) & ((0x1UL << (11U)))));
}





















 
static inline void LL_ADC_SetSequencersScanMode(ADC_TypeDef *ADCx, uint32_t ScanMode)
{
  (((ADCx->CR1)) = ((((((ADCx->CR1))) & (~((0x1UL << (8U))))) | (ScanMode))));
}




















 
static inline uint32_t LL_ADC_GetSequencersScanMode(ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CR1) & ((0x1UL << (8U)))));
}



 



 































 
static inline void LL_ADC_REG_SetTriggerSource(ADC_TypeDef *ADCx, uint32_t TriggerSource)
{
 
 
 
 
 
  (((ADCx->CR2)) = ((((((ADCx->CR2))) & (~((0xFUL << (24U))))) | ((TriggerSource & (0xFUL << (24U)))))));
}


































 
static inline uint32_t LL_ADC_REG_GetTriggerSource(ADC_TypeDef *ADCx)
{
  uint32_t TriggerSource = ((ADCx->CR2) & ((0xFUL << (24U)) | (0x3UL << (28U))));
  
   
   
  uint32_t ShiftExten = ((TriggerSource & (0x3UL << (28U))) >> ((28UL) - 2UL));
  
   
   
  return ((TriggerSource
           & ((((0x00000000UL & (0xFUL << (24U))) >> (4UL * 0UL)) | (((0xFUL << (24U))) >> (4UL * 1UL)) | (((0xFUL << (24U))) >> (4UL * 2UL)) | (((0xFUL << (24U))) >> (4UL * 3UL))) << ShiftExten) & (0xFUL << (24U)))
          | (((((0x00000000UL & (0x3UL << (28U))) >> (4UL * 0UL)) | ((((0x1UL << (28U)))) >> (4UL * 1UL)) | ((((0x1UL << (28U)))) >> (4UL * 2UL)) | ((((0x1UL << (28U)))) >> (4UL * 3UL))) << ShiftExten) & (0x3UL << (28U)))
         );
}











 
static inline uint32_t LL_ADC_REG_IsTriggerSourceSWStart(ADC_TypeDef *ADCx)
{
  return (((ADCx->CR2) & ((0x3UL << (28U)))) == (0x00000000UL & (0x3UL << (28U))));
}












 
static inline uint32_t LL_ADC_REG_GetTriggerEdge(ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CR2) & ((0x3UL << (28U)))));
}

























































 
static inline void LL_ADC_REG_SetSequencerLength(ADC_TypeDef *ADCx, uint32_t SequencerNbRanks)
{
  (((ADCx->SQR1)) = ((((((ADCx->SQR1))) & (~((0xFUL << (20U))))) | (SequencerNbRanks))));
}























































 
static inline uint32_t LL_ADC_REG_GetSequencerLength(ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->SQR1) & ((0xFUL << (20U)))));
}























 
static inline void LL_ADC_REG_SetSequencerDiscont(ADC_TypeDef *ADCx, uint32_t SeqDiscont)
{
  (((ADCx->CR1)) = ((((((ADCx->CR1))) & (~((0x1UL << (11U)) | (0x7UL << (13U))))) | (SeqDiscont))));
}


















 
static inline uint32_t LL_ADC_REG_GetSequencerDiscont(ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CR1) & ((0x1UL << (11U)) | (0x7UL << (13U)))));
}














































































 
static inline void LL_ADC_REG_SetSequencerRanks(ADC_TypeDef *ADCx, uint32_t Rank, uint32_t Channel)
{
   
   
   
   
  volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->SQR1)) + (((((Rank) & ((0x00000000UL | 0x00000100UL | 0x00000200UL | 0x00000300UL))) >> (__CLZ(__RBIT(((0x00000000UL | 0x00000100UL | 0x00000200UL | 0x00000300UL))))))) << 2UL))));
  
  (((*preg)) = ((((((*preg))) & (~(((0x1FUL << (0U))) << (Rank & (0x0000001FU))))) | ((Channel & ((0x1FUL << (0U)))) << (Rank & (0x0000001FU))))));
}




















































































 
static inline uint32_t LL_ADC_REG_GetSequencerRanks(ADC_TypeDef *ADCx, uint32_t Rank)
{
  volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->SQR1)) + (((((Rank) & ((0x00000000UL | 0x00000100UL | 0x00000200UL | 0x00000300UL))) >> (__CLZ(__RBIT(((0x00000000UL | 0x00000100UL | 0x00000200UL | 0x00000300UL))))))) << 2UL))));
  
  return (uint32_t) (((*preg) & (((0x1FUL << (0U))) << (Rank & (0x0000001FU))))
                     >> (Rank & (0x0000001FU))
                    );
}















 
static inline void LL_ADC_REG_SetContinuousMode(ADC_TypeDef *ADCx, uint32_t Continuous)
{
  (((ADCx->CR2)) = ((((((ADCx->CR2))) & (~((0x1UL << (1U))))) | (Continuous))));
}












 
static inline uint32_t LL_ADC_REG_GetContinuousMode(ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CR2) & ((0x1UL << (1U)))));
}































 
static inline void LL_ADC_REG_SetDMATransfer(ADC_TypeDef *ADCx, uint32_t DMATransfer)
{
  (((ADCx->CR2)) = ((((((ADCx->CR2))) & (~((0x1UL << (8U)) | (0x1UL << (9U))))) | (DMATransfer))));
}






























 
static inline uint32_t LL_ADC_REG_GetDMATransfer(ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CR2) & ((0x1UL << (8U)) | (0x1UL << (9U)))));
}

















 
static inline void LL_ADC_REG_SetFlagEndOfConversion(ADC_TypeDef *ADCx, uint32_t EocSelection)
{
  (((ADCx->CR2)) = ((((((ADCx->CR2))) & (~((0x1UL << (10U))))) | (EocSelection))));
}










 
static inline uint32_t LL_ADC_REG_GetFlagEndOfConversion(ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CR2) & ((0x1UL << (10U)))));
}



 



 































 
static inline void LL_ADC_INJ_SetTriggerSource(ADC_TypeDef *ADCx, uint32_t TriggerSource)
{
 
 
 
 
 
  (((ADCx->CR2)) = ((((((ADCx->CR2))) & (~((0xFUL << (16U))))) | ((TriggerSource & (0xFUL << (16U)))))));
}


































 
static inline uint32_t LL_ADC_INJ_GetTriggerSource(ADC_TypeDef *ADCx)
{
  uint32_t TriggerSource = ((ADCx->CR2) & ((0xFUL << (16U)) | (0x3UL << (20U))));
  
   
   
  uint32_t ShiftExten = ((TriggerSource & (0x3UL << (20U))) >> ((20UL) - 2UL));
  
   
   
  return ((TriggerSource
           & ((((0x00000000UL & (0xFUL << (16U))) >> (4UL * 0UL)) | (((0xFUL << (16U))) >> (4UL * 1UL)) | (((0xFUL << (16U))) >> (4UL * 2UL)) | (((0xFUL << (16U))) >> (4UL * 3UL))) << ShiftExten) & (0xFUL << (16U)))
          | (((((0x00000000UL & (0x3UL << (20U))) >> (4UL * 0UL)) | ((((0x1UL << (20U)))) >> (4UL * 1UL)) | ((((0x1UL << (20U)))) >> (4UL * 2UL)) | ((((0x1UL << (20U)))) >> (4UL * 3UL))) << ShiftExten) & (0x3UL << (20U)))
         );
}











 
static inline uint32_t LL_ADC_INJ_IsTriggerSourceSWStart(ADC_TypeDef *ADCx)
{
  return (((ADCx->CR2) & ((0x3UL << (20U)))) == (0x00000000UL & (0x3UL << (20U))));
}










 
static inline uint32_t LL_ADC_INJ_GetTriggerEdge(ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CR2) & ((0x3UL << (20U)))));
}























 
static inline void LL_ADC_INJ_SetSequencerLength(ADC_TypeDef *ADCx, uint32_t SequencerNbRanks)
{
  (((ADCx->JSQR)) = ((((((ADCx->JSQR))) & (~((0x3UL << (20U))))) | (SequencerNbRanks))));
}






















 
static inline uint32_t LL_ADC_INJ_GetSequencerLength(ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->JSQR) & ((0x3UL << (20U)))));
}













 
static inline void LL_ADC_INJ_SetSequencerDiscont(ADC_TypeDef *ADCx, uint32_t SeqDiscont)
{
  (((ADCx->CR1)) = ((((((ADCx->CR1))) & (~((0x1UL << (12U))))) | (SeqDiscont))));
}










 
static inline uint32_t LL_ADC_INJ_GetSequencerDiscont(ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CR1) & ((0x1UL << (12U)))));
}















































 
static inline void LL_ADC_INJ_SetSequencerRanks(ADC_TypeDef *ADCx, uint32_t Rank, uint32_t Channel)
{
   
   
   
   
  uint32_t tmpreg1 = (((ADCx->JSQR) & ((0x3UL << (20U)))) >> (20U)) + 1UL;
  
  (((ADCx->JSQR)) = ((((((ADCx->JSQR))) & (~(((0x1FUL << (0U))) << (5UL * (uint8_t)(((Rank) + 3UL) - (tmpreg1)))))) | ((Channel & ((0x1FUL << (0U)))) << (5UL * (uint8_t)(((Rank) + 3UL) - (tmpreg1)))))));
}
























































 
static inline uint32_t LL_ADC_INJ_GetSequencerRanks(ADC_TypeDef *ADCx, uint32_t Rank)
{
  uint32_t tmpreg1 = (((ADCx->JSQR) & ((0x3UL << (20U)))) >> (20U))  + 1UL;
  
  return (uint32_t)(((ADCx->JSQR) & (((0x1FUL << (0U))) << (5UL * (uint8_t)(((Rank) + 3UL) - (tmpreg1)))))
                    >> (5UL * (uint8_t)(((Rank) + 3UL) - (tmpreg1)))
                   );
}


























 
static inline void LL_ADC_INJ_SetTrigAuto(ADC_TypeDef *ADCx, uint32_t TrigAuto)
{
  (((ADCx->CR1)) = ((((((ADCx->CR1))) & (~((0x1UL << (10U))))) | (TrigAuto))));
}









 
static inline uint32_t LL_ADC_INJ_GetTrigAuto(ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CR1) & ((0x1UL << (10U)))));
}

























 
static inline void LL_ADC_INJ_SetOffset(ADC_TypeDef *ADCx, uint32_t Rank, uint32_t OffsetLevel)
{
  volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->JOFR1)) + (((((Rank) & ((0x00000000UL | 0x00001000UL | 0x00002000UL | 0x00003000UL))) >> (__CLZ(__RBIT(((0x00000000UL | 0x00001000UL | 0x00002000UL | 0x00003000UL))))))) << 2UL))));
  
  (((*preg)) = ((((((*preg))) & (~((0xFFFUL << (0U))))) | (OffsetLevel))));
}


















 
static inline uint32_t LL_ADC_INJ_GetOffset(ADC_TypeDef *ADCx, uint32_t Rank)
{
  volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->JOFR1)) + (((((Rank) & ((0x00000000UL | 0x00001000UL | 0x00002000UL | 0x00003000UL))) >> (__CLZ(__RBIT(((0x00000000UL | 0x00001000UL | 0x00002000UL | 0x00003000UL))))))) << 2UL))));
  
  return (uint32_t)(((*preg) & ((0xFFFUL << (0U))))
                   );
}



 



 












































































 
static inline void LL_ADC_SetChannelSamplingTime(ADC_TypeDef *ADCx, uint32_t Channel, uint32_t SamplingTime)
{
   
   
   
   
  volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->SMPR1)) + (((((Channel) & ((0x00000000UL | 0x02000000UL))) >> (__CLZ(__RBIT(((0x00000000UL | 0x02000000UL))))))) << 2UL))));
  
  (((*preg)) = ((((((*preg))) & (~((0x7UL << (0U)) << (((Channel) & (0x01F00000UL)) >> (__CLZ(__RBIT((0x01F00000UL)))))))) | (SamplingTime << (((Channel) & (0x01F00000UL)) >> (__CLZ(__RBIT((0x01F00000UL)))))))));
}
































































 
static inline uint32_t LL_ADC_GetChannelSamplingTime(ADC_TypeDef *ADCx, uint32_t Channel)
{
  volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->SMPR1)) + (((((Channel) & ((0x00000000UL | 0x02000000UL))) >> (__CLZ(__RBIT(((0x00000000UL | 0x02000000UL))))))) << 2UL))));
  
  return (uint32_t)(((*preg) & ((0x7UL << (0U)) << (((Channel) & (0x01F00000UL)) >> (__CLZ(__RBIT((0x01F00000UL)))))))
                    >> (((Channel) & (0x01F00000UL)) >> (__CLZ(__RBIT((0x01F00000UL)))))
                   );
}



 



 
































































































 
static inline void LL_ADC_SetAnalogWDMonitChannels(ADC_TypeDef *ADCx, uint32_t AWDChannelGroup)
{
  (((ADCx->CR1)) = ((((((ADCx->CR1))) & (~(((0x1UL << (23U)) | (0x1UL << (22U)) | (0x1UL << (9U)) | (0x1FUL << (0U)))))) | (AWDChannelGroup))));
}

























































































 
static inline uint32_t LL_ADC_GetAnalogWDMonitChannels(ADC_TypeDef *ADCx)
{
  return (uint32_t)(((ADCx->CR1) & (((0x1UL << (23U)) | (0x1UL << (22U)) | (0x1UL << (9U)) | (0x1FUL << (0U))))));
}






















 
static inline void LL_ADC_SetAnalogWDThresholds(ADC_TypeDef *ADCx, uint32_t AWDThresholdsHighLow, uint32_t AWDThresholdValue)
{
  volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->HTR)) + ((AWDThresholdsHighLow) << 2UL))));
  
  (((*preg)) = ((((((*preg))) & (~((0xFFFUL << (0U))))) | (AWDThresholdValue))));
}














 
static inline uint32_t LL_ADC_GetAnalogWDThresholds(ADC_TypeDef *ADCx, uint32_t AWDThresholdsHighLow)
{
  volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->HTR)) + ((AWDThresholdsHighLow) << 2UL))));
  
  return (uint32_t)(((*preg) & ((0xFFFUL << (0U)))));
}



 



 


























 
static inline void LL_ADC_SetMultimode(ADC_Common_TypeDef *ADCxy_COMMON, uint32_t Multimode)
{
  (((ADCxy_COMMON->CCR)) = ((((((ADCxy_COMMON->CCR))) & (~((0x1FUL << (0U))))) | (Multimode))));
}

























 
static inline uint32_t LL_ADC_GetMultimode(ADC_Common_TypeDef *ADCxy_COMMON)
{
  return (uint32_t)(((ADCxy_COMMON->CCR) & ((0x1FUL << (0U)))));
}












































 
static inline void LL_ADC_SetMultiDMATransfer(ADC_Common_TypeDef *ADCxy_COMMON, uint32_t MultiDMATransfer)
{
  (((ADCxy_COMMON->CCR)) = ((((((ADCxy_COMMON->CCR))) & (~((0x3UL << (14U)) | (0x1UL << (13U))))) | (MultiDMATransfer))));
}











































 
static inline uint32_t LL_ADC_GetMultiDMATransfer(ADC_Common_TypeDef *ADCxy_COMMON)
{
  return (uint32_t)(((ADCxy_COMMON->CCR) & ((0x3UL << (14U)) | (0x1UL << (13U)))));
}





























 
static inline void LL_ADC_SetMultiTwoSamplingDelay(ADC_Common_TypeDef *ADCxy_COMMON, uint32_t MultiTwoSamplingDelay)
{
  (((ADCxy_COMMON->CCR)) = ((((((ADCxy_COMMON->CCR))) & (~((0xFUL << (8U))))) | (MultiTwoSamplingDelay))));
}























 
static inline uint32_t LL_ADC_GetMultiTwoSamplingDelay(ADC_Common_TypeDef *ADCxy_COMMON)
{
  return (uint32_t)(((ADCxy_COMMON->CCR) & ((0xFUL << (8U)))));
}



 


 










 
static inline void LL_ADC_Enable(ADC_TypeDef *ADCx)
{
  ((ADCx->CR2) |= ((0x1UL << (0U))));
}






 
static inline void LL_ADC_Disable(ADC_TypeDef *ADCx)
{
  ((ADCx->CR2) &= ~((0x1UL << (0U))));
}






 
static inline uint32_t LL_ADC_IsEnabled(ADC_TypeDef *ADCx)
{
  return (((ADCx->CR2) & ((0x1UL << (0U)))) == ((0x1UL << (0U))));
}



 



 
















 
static inline void LL_ADC_REG_StartConversionSWStart(ADC_TypeDef *ADCx)
{
  ((ADCx->CR2) |= ((0x1UL << (30U))));
}
















 
static inline void LL_ADC_REG_StartConversionExtTrig(ADC_TypeDef *ADCx, uint32_t ExternalTriggerEdge)
{
  ((ADCx->CR2) |= (ExternalTriggerEdge));
}













 
static inline void LL_ADC_REG_StopConversionExtTrig(ADC_TypeDef *ADCx)
{
  ((ADCx->CR2) &= ~((0x3UL << (28U))));
}









 
static inline uint32_t LL_ADC_REG_ReadConversionData32(ADC_TypeDef *ADCx)
{
  return (uint16_t)(((ADCx->DR) & ((0xFFFFUL << (0U)))));
}










 
static inline uint16_t LL_ADC_REG_ReadConversionData12(ADC_TypeDef *ADCx)
{
  return (uint16_t)(((ADCx->DR) & ((0xFFFFUL << (0U)))));
}










 
static inline uint16_t LL_ADC_REG_ReadConversionData10(ADC_TypeDef *ADCx)
{
  return (uint16_t)(((ADCx->DR) & ((0xFFFFUL << (0U)))));
}










 
static inline uint8_t LL_ADC_REG_ReadConversionData8(ADC_TypeDef *ADCx)
{
  return (uint16_t)(((ADCx->DR) & ((0xFFFFUL << (0U)))));
}










 
static inline uint8_t LL_ADC_REG_ReadConversionData6(ADC_TypeDef *ADCx)
{
  return (uint16_t)(((ADCx->DR) & ((0xFFFFUL << (0U)))));
}





















 
static inline uint32_t LL_ADC_REG_ReadMultiConversionData32(ADC_Common_TypeDef *ADCxy_COMMON, uint32_t ConversionData)
{
  return (uint32_t)(((ADCxy_COMMON->CDR) & ((0xFFFFUL << (16U))))
                    >> (__CLZ(__RBIT(ConversionData)))
                   );
}



 



 
















 
static inline void LL_ADC_INJ_StartConversionSWStart(ADC_TypeDef *ADCx)
{
  ((ADCx->CR2) |= ((0x1UL << (22U))));
}
















 
static inline void LL_ADC_INJ_StartConversionExtTrig(ADC_TypeDef *ADCx, uint32_t ExternalTriggerEdge)
{
  ((ADCx->CR2) |= (ExternalTriggerEdge));
}













 
static inline void LL_ADC_INJ_StopConversionExtTrig(ADC_TypeDef *ADCx)
{
  ((ADCx->CR2) &= ~((0x3UL << (20U))));
}

















 
static inline uint32_t LL_ADC_INJ_ReadConversionData32(ADC_TypeDef *ADCx, uint32_t Rank)
{
  volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->JDR1)) + (((((Rank) & ((0x00000000UL | 0x00000100UL | 0x00000200UL | 0x00000300UL))) >> (__CLZ(__RBIT(((0x00000000UL | 0x00000100UL | 0x00000200UL | 0x00000300UL))))))) << 2UL))));
  
  return (uint32_t)(((*preg) & ((0xFFFFUL << (0U))))
                   );
}


















 
static inline uint16_t LL_ADC_INJ_ReadConversionData12(ADC_TypeDef *ADCx, uint32_t Rank)
{
  volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->JDR1)) + (((((Rank) & ((0x00000000UL | 0x00000100UL | 0x00000200UL | 0x00000300UL))) >> (__CLZ(__RBIT(((0x00000000UL | 0x00000100UL | 0x00000200UL | 0x00000300UL))))))) << 2UL))));
  
  return (uint16_t)(((*preg) & ((0xFFFFUL << (0U))))
                   );
}


















 
static inline uint16_t LL_ADC_INJ_ReadConversionData10(ADC_TypeDef *ADCx, uint32_t Rank)
{
  volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->JDR1)) + (((((Rank) & ((0x00000000UL | 0x00000100UL | 0x00000200UL | 0x00000300UL))) >> (__CLZ(__RBIT(((0x00000000UL | 0x00000100UL | 0x00000200UL | 0x00000300UL))))))) << 2UL))));
  
  return (uint16_t)(((*preg) & ((0xFFFFUL << (0U))))
                   );
}


















 
static inline uint8_t LL_ADC_INJ_ReadConversionData8(ADC_TypeDef *ADCx, uint32_t Rank)
{
  volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->JDR1)) + (((((Rank) & ((0x00000000UL | 0x00000100UL | 0x00000200UL | 0x00000300UL))) >> (__CLZ(__RBIT(((0x00000000UL | 0x00000100UL | 0x00000200UL | 0x00000300UL))))))) << 2UL))));
  
  return (uint8_t)(((*preg) & ((0xFFFFUL << (0U))))
                  );
}


















 
static inline uint8_t LL_ADC_INJ_ReadConversionData6(ADC_TypeDef *ADCx, uint32_t Rank)
{
  volatile uint32_t *preg = ((volatile uint32_t *)((uint32_t) ((uint32_t)(&(ADCx->JDR1)) + (((((Rank) & ((0x00000000UL | 0x00000100UL | 0x00000200UL | 0x00000300UL))) >> (__CLZ(__RBIT(((0x00000000UL | 0x00000100UL | 0x00000200UL | 0x00000300UL))))))) << 2UL))));
  
  return (uint8_t)(((*preg) & ((0xFFFFUL << (0U))))
                  );
}



 



 










 
static inline uint32_t LL_ADC_IsActiveFlag_EOCS(ADC_TypeDef *ADCx)
{
  return (((ADCx->SR) & ((0x1UL << (1U)))) == ((0x1UL << (1U))));
}






 
static inline uint32_t LL_ADC_IsActiveFlag_OVR(ADC_TypeDef *ADCx)
{
  return (((ADCx->SR) & ((0x1UL << (5U)))) == ((0x1UL << (5U))));
}







 
static inline uint32_t LL_ADC_IsActiveFlag_JEOS(ADC_TypeDef *ADCx)
{
   
   
   
   
  return (((ADCx->SR) & ((0x1UL << (2U)))) == ((0x1UL << (2U))));
}






 
static inline uint32_t LL_ADC_IsActiveFlag_AWD1(ADC_TypeDef *ADCx)
{
  return (((ADCx->SR) & ((0x1UL << (0U)))) == ((0x1UL << (0U))));
}










 
static inline void LL_ADC_ClearFlag_EOCS(ADC_TypeDef *ADCx)
{
  ((ADCx->SR) = (~(0x1UL << (1U))));
}






 
static inline void LL_ADC_ClearFlag_OVR(ADC_TypeDef *ADCx)
{
  ((ADCx->SR) = (~(0x1UL << (5U))));
}







 
static inline void LL_ADC_ClearFlag_JEOS(ADC_TypeDef *ADCx)
{
   
   
   
   
  ((ADCx->SR) = (~(0x1UL << (2U))));
}






 
static inline void LL_ADC_ClearFlag_AWD1(ADC_TypeDef *ADCx)
{
  ((ADCx->SR) = (~(0x1UL << (0U))));
}











 
static inline uint32_t LL_ADC_IsActiveFlag_MST_EOCS(ADC_Common_TypeDef *ADCxy_COMMON)
{
  return (((ADCxy_COMMON->CSR) & ((0x1UL << (1U)))) == ((0x1UL << (1U))));
}











 
static inline uint32_t LL_ADC_IsActiveFlag_SLV1_EOCS(ADC_Common_TypeDef *ADCxy_COMMON)
{
  return (((ADCxy_COMMON->CSR) & ((0x1UL << (9U)))) == ((0x1UL << (9U))));
}











 
static inline uint32_t LL_ADC_IsActiveFlag_SLV2_EOCS(ADC_Common_TypeDef *ADCxy_COMMON)
{
  return (((ADCxy_COMMON->CSR) & ((0x1UL << (17U)))) == ((0x1UL << (17U))));
}






 
static inline uint32_t LL_ADC_IsActiveFlag_MST_OVR(ADC_Common_TypeDef *ADCxy_COMMON)
{
  return (((ADCxy_COMMON->CSR) & ((0x1UL << (5U)))) == ((0x1UL << (5U))));
}







 
static inline uint32_t LL_ADC_IsActiveFlag_SLV1_OVR(ADC_Common_TypeDef *ADCxy_COMMON)
{
  return (((ADCxy_COMMON->CSR) & ((0x1UL << (13U)))) == ((0x1UL << (13U))));
}







 
static inline uint32_t LL_ADC_IsActiveFlag_SLV2_OVR(ADC_Common_TypeDef *ADCxy_COMMON)
{
  return (((ADCxy_COMMON->CSR) & ((0x1UL << (21U)))) == ((0x1UL << (21U))));
}








 
static inline uint32_t LL_ADC_IsActiveFlag_MST_JEOS(ADC_Common_TypeDef *ADCxy_COMMON)
{
   
   
   
   
  return (((ADCxy_COMMON->CSR) & ((0x1UL << (2U)))) == ((0x1UL << (2U))));
}







 
static inline uint32_t LL_ADC_IsActiveFlag_SLV1_JEOS(ADC_Common_TypeDef *ADCxy_COMMON)
{
   
   
   
   
  return (((ADCxy_COMMON->CSR) & ((0x1UL << (10U)))) == ((0x1UL << (10U))));
}







 
static inline uint32_t LL_ADC_IsActiveFlag_SLV2_JEOS(ADC_Common_TypeDef *ADCxy_COMMON)
{
   
   
   
   
  return (((ADCxy_COMMON->CSR) & ((0x1UL << (18U)))) == ((0x1UL << (18U))));
}







 
static inline uint32_t LL_ADC_IsActiveFlag_MST_AWD1(ADC_Common_TypeDef *ADCxy_COMMON)
{
  return (((ADCxy_COMMON->CSR) & ((0x1UL << (0U)))) == ((0x1UL << (0U))));
}







 
static inline uint32_t LL_ADC_IsActiveFlag_SLV1_AWD1(ADC_Common_TypeDef *ADCxy_COMMON)
{
  return (((ADCxy_COMMON->CSR) & ((0x1UL << (8U)))) == ((0x1UL << (8U))));
}







 
static inline uint32_t LL_ADC_IsActiveFlag_SLV2_AWD1(ADC_Common_TypeDef *ADCxy_COMMON)
{
    return (((ADCxy_COMMON->CSR) & ((0x1UL << (16U)))) == ((0x1UL << (16U))));
}




 



 










 
static inline void LL_ADC_EnableIT_EOCS(ADC_TypeDef *ADCx)
{
  ((ADCx->CR1) |= ((0x1UL << (5U))));
}






 
static inline void LL_ADC_EnableIT_OVR(ADC_TypeDef *ADCx)
{
  ((ADCx->CR1) |= ((0x1UL << (26U))));
}







 
static inline void LL_ADC_EnableIT_JEOS(ADC_TypeDef *ADCx)
{
   
   
   
   
  ((ADCx->CR1) |= ((0x1UL << (7U))));
}






 
static inline void LL_ADC_EnableIT_AWD1(ADC_TypeDef *ADCx)
{
  ((ADCx->CR1) |= ((0x1UL << (6U))));
}










 
static inline void LL_ADC_DisableIT_EOCS(ADC_TypeDef *ADCx)
{
  ((ADCx->CR1) &= ~((0x1UL << (5U))));
}






 
static inline void LL_ADC_DisableIT_OVR(ADC_TypeDef *ADCx)
{
  ((ADCx->CR1) &= ~((0x1UL << (26U))));
}







 
static inline void LL_ADC_DisableIT_JEOS(ADC_TypeDef *ADCx)
{
   
   
   
   
  ((ADCx->CR1) &= ~((0x1UL << (7U))));
}






 
static inline void LL_ADC_DisableIT_AWD1(ADC_TypeDef *ADCx)
{
  ((ADCx->CR1) &= ~((0x1UL << (6U))));
}











 
static inline uint32_t LL_ADC_IsEnabledIT_EOCS(ADC_TypeDef *ADCx)
{
  return (((ADCx->CR1) & ((0x1UL << (5U)))) == ((0x1UL << (5U))));
}







 
static inline uint32_t LL_ADC_IsEnabledIT_OVR(ADC_TypeDef *ADCx)
{
  return (((ADCx->CR1) & ((0x1UL << (26U)))) == ((0x1UL << (26U))));
}








 
static inline uint32_t LL_ADC_IsEnabledIT_JEOS(ADC_TypeDef *ADCx)
{
   
   
   
   
  return (((ADCx->CR1) & ((0x1UL << (7U)))) == ((0x1UL << (7U))));
}







 
static inline uint32_t LL_ADC_IsEnabledIT_AWD1(ADC_TypeDef *ADCx)
{
  return (((ADCx->CR1) & ((0x1UL << (6U)))) == ((0x1UL << (6U))));
}



 




 



 




 






 



  

 


 













 
typedef struct
{
  uint32_t ClockPrescaler;               

 
  uint32_t Resolution;                   
 
  uint32_t DataAlign;                    

 
  uint32_t ScanConvMode;                 





 
  uint32_t EOCSelection;                 





 
  FunctionalState ContinuousConvMode;    

 
  uint32_t NbrOfConversion;              

 
  FunctionalState DiscontinuousConvMode; 


 
  uint32_t NbrOfDiscConversion;          

 
  uint32_t ExternalTrigConv;             


 
  uint32_t ExternalTrigConvEdge;         

 
  FunctionalState DMAContinuousRequests; 



 
}ADC_InitTypeDef;







  
typedef struct 
{
  uint32_t Channel;                
 
  uint32_t Rank;                   
 
  uint32_t SamplingTime;           







 
  uint32_t Offset;                  
}ADC_ChannelConfTypeDef;



  
typedef struct
{
  uint32_t WatchdogMode;      
 
  uint32_t HighThreshold;     
      
  uint32_t LowThreshold;      
 
  uint32_t Channel;           

       
  FunctionalState ITMode;     

 
  uint32_t WatchdogNumber;     
}ADC_AnalogWDGConfTypeDef;



  
 

 

 

 

 

 




  
typedef struct
{
  ADC_TypeDef                   *Instance;                    

  ADC_InitTypeDef               Init;                         

  volatile uint32_t                 NbrOfCurrentConversionRank;   

  DMA_HandleTypeDef             *DMA_Handle;                  

  HAL_LockTypeDef               Lock;                         

  volatile uint32_t                 State;                        

  volatile uint32_t                 ErrorCode;                    
}ADC_HandleTypeDef;




 

 


 



 


 




  


  



  


  



  


  



  


  



 
 
 


  



  


  



  



  



  


  

  

  


  



  


 



  


  
    


  


  
    


  


  



  


 



  

 


 




 





 





 






 






 





 






 






 



 

 
















 

 


 



 



  

 


 
   











 
typedef struct 
{
  uint32_t InjectedChannel;                      

 
  uint32_t InjectedRank;                         

 
  uint32_t InjectedSamplingTime;                 







 
  uint32_t InjectedOffset;                       


 
  uint32_t InjectedNbrOfConversion;              



 
  FunctionalState InjectedDiscontinuousConvMode; 





 
  FunctionalState AutoInjectedConv;              






 
  uint32_t ExternalTrigInjecConv;                






 
  uint32_t ExternalTrigInjecConvEdge;            



 
}ADC_InjectionConfTypeDef; 



  
typedef struct
{
  uint32_t Mode;              
 
  uint32_t DMAAccessMode;     
 
  uint32_t TwoSamplingDelay;  
 
}ADC_MultiModeTypeDef;



 

 


 



  


  



  


  



  


  



  


  



  


 



 



  




  

 


 


  

 


 



 

 
HAL_StatusTypeDef HAL_ADCEx_InjectedStart(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef HAL_ADCEx_InjectedStop(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef HAL_ADCEx_InjectedPollForConversion(ADC_HandleTypeDef* hadc, uint32_t Timeout);
HAL_StatusTypeDef HAL_ADCEx_InjectedStart_IT(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef HAL_ADCEx_InjectedStop_IT(ADC_HandleTypeDef* hadc);
uint32_t HAL_ADCEx_InjectedGetValue(ADC_HandleTypeDef* hadc, uint32_t InjectedRank);
HAL_StatusTypeDef HAL_ADCEx_MultiModeStart_DMA(ADC_HandleTypeDef* hadc, uint32_t* pData, uint32_t Length);
HAL_StatusTypeDef HAL_ADCEx_MultiModeStop_DMA(ADC_HandleTypeDef* hadc);
uint32_t HAL_ADCEx_MultiModeGetValue(ADC_HandleTypeDef* hadc);
void HAL_ADCEx_InjectedConvCpltCallback(ADC_HandleTypeDef* hadc);

 
HAL_StatusTypeDef HAL_ADCEx_InjectedConfigChannel(ADC_HandleTypeDef* hadc,ADC_InjectionConfTypeDef* sConfigInjected);
HAL_StatusTypeDef HAL_ADCEx_MultiModeConfigChannel(ADC_HandleTypeDef* hadc, ADC_MultiModeTypeDef* multimode);



  



 
 
 
 


 



 

 


 
      








 






 


 

 


 



 



  



 





 


 



 
 
HAL_StatusTypeDef HAL_ADC_Init(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef HAL_ADC_DeInit(ADC_HandleTypeDef *hadc);
void HAL_ADC_MspInit(ADC_HandleTypeDef* hadc);
void HAL_ADC_MspDeInit(ADC_HandleTypeDef* hadc);



 



 
 
HAL_StatusTypeDef HAL_ADC_Start(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef HAL_ADC_Stop(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef HAL_ADC_PollForConversion(ADC_HandleTypeDef* hadc, uint32_t Timeout);

HAL_StatusTypeDef HAL_ADC_PollForEvent(ADC_HandleTypeDef* hadc, uint32_t EventType, uint32_t Timeout);

HAL_StatusTypeDef HAL_ADC_Start_IT(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef HAL_ADC_Stop_IT(ADC_HandleTypeDef* hadc);

void HAL_ADC_IRQHandler(ADC_HandleTypeDef* hadc);

HAL_StatusTypeDef HAL_ADC_Start_DMA(ADC_HandleTypeDef* hadc, uint32_t* pData, uint32_t Length);
HAL_StatusTypeDef HAL_ADC_Stop_DMA(ADC_HandleTypeDef* hadc);

uint32_t HAL_ADC_GetValue(ADC_HandleTypeDef* hadc);

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc);
void HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef* hadc);
void HAL_ADC_LevelOutOfWindowCallback(ADC_HandleTypeDef* hadc);
void HAL_ADC_ErrorCallback(ADC_HandleTypeDef *hadc);


 



 
 
HAL_StatusTypeDef HAL_ADC_ConfigChannel(ADC_HandleTypeDef* hadc, ADC_ChannelConfTypeDef* sConfig);
HAL_StatusTypeDef HAL_ADC_AnalogWDGConfig(ADC_HandleTypeDef* hadc, ADC_AnalogWDGConfTypeDef* AnalogWDGConfig);


 



 
 
uint32_t HAL_ADC_GetState(ADC_HandleTypeDef* hadc);
uint32_t HAL_ADC_GetError(ADC_HandleTypeDef *hadc);


 



 
 
 
 


 
 
 
 
 
 
 


 

 



 

 





 






 






 







 





 

    






 






 






 






 






 






 





 





 





 





 





 





 



 

 


 



 



  



 





















 

 


 



 



 

 


 


 
typedef enum
{
  HAL_CAN_STATE_RESET             = 0x00U,   
  HAL_CAN_STATE_READY             = 0x01U,   
  HAL_CAN_STATE_LISTENING         = 0x02U,   
  HAL_CAN_STATE_SLEEP_PENDING     = 0x03U,   
  HAL_CAN_STATE_SLEEP_ACTIVE      = 0x04U,   
  HAL_CAN_STATE_ERROR             = 0x05U    

} HAL_CAN_StateTypeDef;



 
typedef struct
{
  uint32_t Prescaler;                  
 

  uint32_t Mode;                       
 

  uint32_t SyncJumpWidth;              

 

  uint32_t TimeSeg1;                   
 

  uint32_t TimeSeg2;                   
 

  FunctionalState TimeTriggeredMode;   
 

  FunctionalState AutoBusOff;          
 

  FunctionalState AutoWakeUp;          
 

  FunctionalState AutoRetransmission;  
 

  FunctionalState ReceiveFifoLocked;   
 

  FunctionalState TransmitFifoPriority;
 

} CAN_InitTypeDef;



 
typedef struct
{
  uint32_t FilterIdHigh;          

 

  uint32_t FilterIdLow;           

 

  uint32_t FilterMaskIdHigh;      


 

  uint32_t FilterMaskIdLow;       


 

  uint32_t FilterFIFOAssignment;  
 

  uint32_t FilterBank;            



 

  uint32_t FilterMode;            
 

  uint32_t FilterScale;           
 

  uint32_t FilterActivation;      
 

  uint32_t SlaveStartFilterBank;  




 

} CAN_FilterTypeDef;



 
typedef struct
{
  uint32_t StdId;    
 

  uint32_t ExtId;    
 

  uint32_t IDE;      
 

  uint32_t RTR;      
 

  uint32_t DLC;      
 

  FunctionalState TransmitGlobalTime; 



 

} CAN_TxHeaderTypeDef;



 
typedef struct
{
  uint32_t StdId;    
 

  uint32_t ExtId;    
 

  uint32_t IDE;      
 

  uint32_t RTR;      
 

  uint32_t DLC;      
 

  uint32_t Timestamp; 

 

  uint32_t FilterMatchIndex; 
 

} CAN_RxHeaderTypeDef;



 
typedef struct __CAN_HandleTypeDef
{
  CAN_TypeDef                 *Instance;                  

  CAN_InitTypeDef             Init;                       

  volatile HAL_CAN_StateTypeDef   State;                      

  volatile uint32_t               ErrorCode;                 
 

} CAN_HandleTypeDef;



 

 



 



 




 



 


 



 


 




 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 
 

 

 

 


 




 
 

 

 

 


 



 

 


 




 







 







 






 






 
























 



 

 


 




 

 
HAL_StatusTypeDef HAL_CAN_Init(CAN_HandleTypeDef *hcan);
HAL_StatusTypeDef HAL_CAN_DeInit(CAN_HandleTypeDef *hcan);
void HAL_CAN_MspInit(CAN_HandleTypeDef *hcan);
void HAL_CAN_MspDeInit(CAN_HandleTypeDef *hcan);



 




 

 
HAL_StatusTypeDef HAL_CAN_ConfigFilter(CAN_HandleTypeDef *hcan, CAN_FilterTypeDef *sFilterConfig);



 




 

 
HAL_StatusTypeDef HAL_CAN_Start(CAN_HandleTypeDef *hcan);
HAL_StatusTypeDef HAL_CAN_Stop(CAN_HandleTypeDef *hcan);
HAL_StatusTypeDef HAL_CAN_RequestSleep(CAN_HandleTypeDef *hcan);
HAL_StatusTypeDef HAL_CAN_WakeUp(CAN_HandleTypeDef *hcan);
uint32_t HAL_CAN_IsSleepActive(CAN_HandleTypeDef *hcan);
HAL_StatusTypeDef HAL_CAN_AddTxMessage(CAN_HandleTypeDef *hcan, CAN_TxHeaderTypeDef *pHeader, uint8_t aData[], uint32_t *pTxMailbox);
HAL_StatusTypeDef HAL_CAN_AbortTxRequest(CAN_HandleTypeDef *hcan, uint32_t TxMailboxes);
uint32_t HAL_CAN_GetTxMailboxesFreeLevel(CAN_HandleTypeDef *hcan);
uint32_t HAL_CAN_IsTxMessagePending(CAN_HandleTypeDef *hcan, uint32_t TxMailboxes);
uint32_t HAL_CAN_GetTxTimestamp(CAN_HandleTypeDef *hcan, uint32_t TxMailbox);
HAL_StatusTypeDef HAL_CAN_GetRxMessage(CAN_HandleTypeDef *hcan, uint32_t RxFifo, CAN_RxHeaderTypeDef *pHeader, uint8_t aData[]);
uint32_t HAL_CAN_GetRxFifoFillLevel(CAN_HandleTypeDef *hcan, uint32_t RxFifo);



 




 
 
HAL_StatusTypeDef HAL_CAN_ActivateNotification(CAN_HandleTypeDef *hcan, uint32_t ActiveITs);
HAL_StatusTypeDef HAL_CAN_DeactivateNotification(CAN_HandleTypeDef *hcan, uint32_t InactiveITs);
void HAL_CAN_IRQHandler(CAN_HandleTypeDef *hcan);



 




 
 

void HAL_CAN_TxMailbox0CompleteCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_TxMailbox1CompleteCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_TxMailbox2CompleteCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_TxMailbox0AbortCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_TxMailbox1AbortCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_TxMailbox2AbortCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_RxFifo0FullCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_RxFifo1MsgPendingCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_RxFifo1FullCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_SleepCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_WakeUpFromRxMsgCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_ErrorCallback(CAN_HandleTypeDef *hcan);



 




 
 
HAL_CAN_StateTypeDef HAL_CAN_GetState(CAN_HandleTypeDef *hcan);
uint32_t HAL_CAN_GetError(CAN_HandleTypeDef *hcan);
HAL_StatusTypeDef HAL_CAN_ResetError(CAN_HandleTypeDef *hcan);



 



 

 


 



 

 


 



 

 


 


 

 


 




 
 



 




 

























  

 


 



 



  

 


 
 


 
typedef enum 
{
  FLASH_PROC_NONE = 0U, 
  FLASH_PROC_SECTERASE,
  FLASH_PROC_MASSERASE,
  FLASH_PROC_PROGRAM
} FLASH_ProcedureTypeDef;



 
typedef struct
{
  volatile FLASH_ProcedureTypeDef ProcedureOnGoing;    
  
  volatile uint32_t               NbSectorsToErase;    
  
  volatile uint8_t                VoltageForErase;     
  
  volatile uint32_t               Sector;              
  
  volatile uint32_t               Bank;                
  
  volatile uint32_t               Address;             
  
  HAL_LockTypeDef             Lock;                

  volatile uint32_t               ErrorCode;           

}FLASH_ProcessTypeDef;



 

 


   



  


 
  


  


 




  


 
  



  


   



 


  



  


  



  
  
 


 





  





  




  




  




  




  




  




  





 





 







   








   















 














 


 

 















  

 


 



 



  

 


 



 
typedef struct
{
  uint32_t TypeErase;   
 

  uint32_t Banks;       
 

  uint32_t Sector;      
 

  uint32_t NbSectors;   
 

  uint32_t VoltageRange;
 

} FLASH_EraseInitTypeDef;



 
typedef struct
{
  uint32_t OptionType;   
 

  uint32_t WRPState;     
 

  uint32_t WRPSector;         
 

  uint32_t Banks;        
         

  uint32_t RDPLevel;     
 

  uint32_t BORLevel;     
 

  uint8_t  USERConfig;    

} FLASH_OBProgramInitTypeDef;



 


 

 



 



  


 
  


  


 
  


  


 
  


  


 
  


 


  
  


  


  
  


  


  




  


     



   


 




  



 



 
   
 

  
     
 



  
  



 



  
    


 



  



 
    
 

    
       

  
 

  
 

  
 

 
 



  



 
   
 

  
     
      
  
 

 
 
 
 
 

 
 


 
  


 
    
 
      
 
       

 
 

 
 

 
 



 
  


 


 



 


 



  
  
 

 


 



 
 
HAL_StatusTypeDef HAL_FLASHEx_Erase(FLASH_EraseInitTypeDef *pEraseInit, uint32_t *SectorError);
HAL_StatusTypeDef HAL_FLASHEx_Erase_IT(FLASH_EraseInitTypeDef *pEraseInit);
HAL_StatusTypeDef HAL_FLASHEx_OBProgram(FLASH_OBProgramInitTypeDef *pOBInit);
void              HAL_FLASHEx_OBGetConfig(FLASH_OBProgramInitTypeDef *pOBInit);




 



 
 
 
 


 
  

 

  

  

  

 



  



 

 


 



 












  



 







  





   








 



 

 


 
void FLASH_Erase_Sector(uint32_t Sector, uint8_t VoltageRange);
void FLASH_FlushCaches(void);


  



  



 


















  

 





 


 


 
 
HAL_StatusTypeDef HAL_FLASH_Program(uint32_t TypeProgram, uint32_t Address, uint64_t Data);
HAL_StatusTypeDef HAL_FLASH_Program_IT(uint32_t TypeProgram, uint32_t Address, uint64_t Data);
 
void HAL_FLASH_IRQHandler(void);
  
void HAL_FLASH_EndOfOperationCallback(uint32_t ReturnValue);
void HAL_FLASH_OperationErrorCallback(uint32_t ReturnValue);


 



 
 
HAL_StatusTypeDef HAL_FLASH_Unlock(void);
HAL_StatusTypeDef HAL_FLASH_Lock(void);
HAL_StatusTypeDef HAL_FLASH_OB_Unlock(void);
HAL_StatusTypeDef HAL_FLASH_OB_Lock(void);
 
HAL_StatusTypeDef HAL_FLASH_OB_Launch(void);


 



 
 
uint32_t HAL_FLASH_GetError(void);
HAL_StatusTypeDef FLASH_WaitForLastOperation(uint32_t Timeout);


 



  
 
 


 



 
 


 



  


  


  


  


  



 

 


 



 


 



 

 


 



 



  



 


























 

 


 



 



 

 


 




 
typedef struct
{
  uint32_t ClockSpeed;       
 

  uint32_t DutyCycle;        
 

  uint32_t OwnAddress1;      
 

  uint32_t AddressingMode;   
 

  uint32_t DualAddressMode;  
 

  uint32_t OwnAddress2;      
 

  uint32_t GeneralCallMode;  
 

  uint32_t NoStretchMode;    
 

} I2C_InitTypeDef;



 



























 
typedef enum
{
  HAL_I2C_STATE_RESET             = 0x00U,    
  HAL_I2C_STATE_READY             = 0x20U,    
  HAL_I2C_STATE_BUSY              = 0x24U,    
  HAL_I2C_STATE_BUSY_TX           = 0x21U,    
  HAL_I2C_STATE_BUSY_RX           = 0x22U,    
  HAL_I2C_STATE_LISTEN            = 0x28U,    
  HAL_I2C_STATE_BUSY_TX_LISTEN    = 0x29U,   
 
  HAL_I2C_STATE_BUSY_RX_LISTEN    = 0x2AU,   
 
  HAL_I2C_STATE_ABORT             = 0x60U,    
  HAL_I2C_STATE_TIMEOUT           = 0xA0U,    
  HAL_I2C_STATE_ERROR             = 0xE0U     

} HAL_I2C_StateTypeDef;



 


















 
typedef enum
{
  HAL_I2C_MODE_NONE               = 0x00U,    
  HAL_I2C_MODE_MASTER             = 0x10U,    
  HAL_I2C_MODE_SLAVE              = 0x20U,    
  HAL_I2C_MODE_MEM                = 0x40U     

} HAL_I2C_ModeTypeDef;



 




 


 




 
typedef struct
{
  I2C_TypeDef                *Instance;       

  I2C_InitTypeDef            Init;            

  uint8_t                    *pBuffPtr;       

  uint16_t                   XferSize;        

  volatile uint16_t              XferCount;       

  volatile uint32_t              XferOptions;     

  volatile uint32_t              PreviousState;  
 

  DMA_HandleTypeDef          *hdmatx;         

  DMA_HandleTypeDef          *hdmarx;         

  HAL_LockTypeDef            Lock;            

  volatile HAL_I2C_StateTypeDef  State;           

  volatile HAL_I2C_ModeTypeDef   Mode;            

  volatile uint32_t              ErrorCode;       

  volatile uint32_t              Devaddress;      

  volatile uint32_t              Memaddress;      

  volatile uint32_t              MemaddSize;      

  volatile uint32_t              EventCount;      


} I2C_HandleTypeDef;



 



 
 



 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 



 


 






 


 



 



 



 

 



 




 









 









 























 










 





 




 




 




 



 

 
















 

 







 


 



 
 
HAL_StatusTypeDef HAL_I2C_Init(I2C_HandleTypeDef *hi2c);
HAL_StatusTypeDef HAL_I2C_DeInit(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MspInit(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MspDeInit(I2C_HandleTypeDef *hi2c);

 


 



 
 
 
HAL_StatusTypeDef HAL_I2C_Master_Transmit(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Master_Receive(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Slave_Transmit(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Slave_Receive(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Mem_Write(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Mem_Read(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_IsDeviceReady(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint32_t Trials, uint32_t Timeout);

 
HAL_StatusTypeDef HAL_I2C_Master_Transmit_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Master_Receive_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Transmit_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Receive_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Write_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Read_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint8_t *pData, uint16_t Size);

HAL_StatusTypeDef HAL_I2C_Master_Seq_Transmit_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Master_Seq_Receive_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Transmit_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Receive_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_EnableListen_IT(I2C_HandleTypeDef *hi2c);
HAL_StatusTypeDef HAL_I2C_DisableListen_IT(I2C_HandleTypeDef *hi2c);
HAL_StatusTypeDef HAL_I2C_Master_Abort_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress);

 
HAL_StatusTypeDef HAL_I2C_Master_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Master_Receive_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Receive_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Write_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Read_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint8_t *pData, uint16_t Size);

HAL_StatusTypeDef HAL_I2C_Master_Seq_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Master_Seq_Receive_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Receive_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, uint32_t XferOptions);


 



 
 
void HAL_I2C_EV_IRQHandler(I2C_HandleTypeDef *hi2c);
void HAL_I2C_ER_IRQHandler(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MasterTxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MasterRxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_SlaveTxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_SlaveRxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_AddrCallback(I2C_HandleTypeDef *hi2c, uint8_t TransferDirection, uint16_t AddrMatchCode);
void HAL_I2C_ListenCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MemTxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MemRxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_ErrorCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_AbortCpltCallback(I2C_HandleTypeDef *hi2c);


 



 
 
HAL_I2C_StateTypeDef HAL_I2C_GetState(I2C_HandleTypeDef *hi2c);
HAL_I2C_ModeTypeDef HAL_I2C_GetMode(I2C_HandleTypeDef *hi2c);
uint32_t HAL_I2C_GetError(I2C_HandleTypeDef *hi2c);



 



 
 
 
 


 


 

 


 







 




 



 

 


 



 



 



 
























  

 


 



 



  

 



 
   


 
typedef struct
{
  uint32_t PVDLevel;   
 

  uint32_t Mode;      
 
}PWR_PVDTypeDef;



 

 


 
  


 


 



  


    
 


 


 




 


 
    


 


 



 


 



 


 



  
  
 


 





















 






 




 




 




 




 




 




 




 





 





 





 




 




 




 



 

 















  

 


 



 



  

  
 


 



 


 



  
  
 


 









 



 

 


 
 


 
void HAL_PWREx_EnableFlashPowerDown(void);
void HAL_PWREx_DisableFlashPowerDown(void); 
HAL_StatusTypeDef HAL_PWREx_EnableBkUpReg(void);
HAL_StatusTypeDef HAL_PWREx_DisableBkUpReg(void); 
uint32_t HAL_PWREx_GetVoltageRange(void);
HAL_StatusTypeDef HAL_PWREx_ControlVoltageScaling(uint32_t VoltageScaling);





 



 
 
 
 


 



 
 
 
 

 

 
    
 

 

 

 



   
 
 



 



 

 


 



 




 



 



  



 
  



 


 
  


 
 
void HAL_PWR_DeInit(void);
void HAL_PWR_EnableBkUpAccess(void);
void HAL_PWR_DisableBkUpAccess(void);


 



 
 
 
void HAL_PWR_ConfigPVD(PWR_PVDTypeDef *sConfigPVD);
void HAL_PWR_EnablePVD(void);
void HAL_PWR_DisablePVD(void);

 
void HAL_PWR_EnableWakeUpPin(uint32_t WakeUpPinx);
void HAL_PWR_DisableWakeUpPin(uint32_t WakeUpPinx);

 
void HAL_PWR_EnterSTOPMode(uint32_t Regulator, uint8_t STOPEntry);
void HAL_PWR_EnterSLEEPMode(uint32_t Regulator, uint8_t SLEEPEntry);
void HAL_PWR_EnterSTANDBYMode(void);

 
void HAL_PWR_PVD_IRQHandler(void);
void HAL_PWR_PVDCallback(void);

 
void HAL_PWR_EnableSleepOnExit(void);
void HAL_PWR_DisableSleepOnExit(void);
void HAL_PWR_EnableSEVOnPend(void);
void HAL_PWR_DisableSEVOnPend(void);


 



 

 
 
 


 



 


 



 
 


 



 
 
 

 

 


 



 
 
 


 



 
 


 



 


 



 



  



 
  























 

 


 



 



 

 


 



 
typedef struct
{
  uint32_t Mode;                
 

  uint32_t Direction;           
 

  uint32_t DataSize;            
 

  uint32_t CLKPolarity;         
 

  uint32_t CLKPhase;            
 

  uint32_t NSS;                 

 

  uint32_t BaudRatePrescaler;   



 

  uint32_t FirstBit;            
 

  uint32_t TIMode;              
 

  uint32_t CRCCalculation;      
 

  uint32_t CRCPolynomial;       
 
} SPI_InitTypeDef;



 
typedef enum
{
  HAL_SPI_STATE_RESET      = 0x00U,     
  HAL_SPI_STATE_READY      = 0x01U,     
  HAL_SPI_STATE_BUSY       = 0x02U,     
  HAL_SPI_STATE_BUSY_TX    = 0x03U,     
  HAL_SPI_STATE_BUSY_RX    = 0x04U,     
  HAL_SPI_STATE_BUSY_TX_RX = 0x05U,     
  HAL_SPI_STATE_ERROR      = 0x06U,     
  HAL_SPI_STATE_ABORT      = 0x07U      
} HAL_SPI_StateTypeDef;



 
typedef struct __SPI_HandleTypeDef
{
  SPI_TypeDef                *Instance;       

  SPI_InitTypeDef            Init;            

  uint8_t                    *pTxBuffPtr;     

  uint16_t                   TxXferSize;      

  volatile uint16_t              TxXferCount;     

  uint8_t                    *pRxBuffPtr;     

  uint16_t                   RxXferSize;      

  volatile uint16_t              RxXferCount;     

  void (*RxISR)(struct __SPI_HandleTypeDef *hspi);    

  void (*TxISR)(struct __SPI_HandleTypeDef *hspi);    

  DMA_HandleTypeDef          *hdmatx;         

  DMA_HandleTypeDef          *hdmarx;         

  HAL_LockTypeDef            Lock;            

  volatile HAL_SPI_StateTypeDef  State;           

  volatile uint32_t              ErrorCode;       

} SPI_HandleTypeDef;



 

 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 

 


 





 










 










 










 














 





 





 





 





 





 





 



 

 


 





 





 





 













 









 





 





 




 




 





 





 





 





 





 





 





 





 





 




 



 

 


 



 
 
HAL_StatusTypeDef HAL_SPI_Init(SPI_HandleTypeDef *hspi);
HAL_StatusTypeDef HAL_SPI_DeInit(SPI_HandleTypeDef *hspi);
void HAL_SPI_MspInit(SPI_HandleTypeDef *hspi);
void HAL_SPI_MspDeInit(SPI_HandleTypeDef *hspi);

 


 



 
 
HAL_StatusTypeDef HAL_SPI_Transmit(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_SPI_Receive(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_SPI_TransmitReceive(SPI_HandleTypeDef *hspi, uint8_t *pTxData, uint8_t *pRxData, uint16_t Size,
                                          uint32_t Timeout);
HAL_StatusTypeDef HAL_SPI_Transmit_IT(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_SPI_Receive_IT(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_SPI_TransmitReceive_IT(SPI_HandleTypeDef *hspi, uint8_t *pTxData, uint8_t *pRxData,
                                             uint16_t Size);
HAL_StatusTypeDef HAL_SPI_Transmit_DMA(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_SPI_Receive_DMA(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_SPI_TransmitReceive_DMA(SPI_HandleTypeDef *hspi, uint8_t *pTxData, uint8_t *pRxData,
                                              uint16_t Size);
HAL_StatusTypeDef HAL_SPI_DMAPause(SPI_HandleTypeDef *hspi);
HAL_StatusTypeDef HAL_SPI_DMAResume(SPI_HandleTypeDef *hspi);
HAL_StatusTypeDef HAL_SPI_DMAStop(SPI_HandleTypeDef *hspi);
 
HAL_StatusTypeDef HAL_SPI_Abort(SPI_HandleTypeDef *hspi);
HAL_StatusTypeDef HAL_SPI_Abort_IT(SPI_HandleTypeDef *hspi);

void HAL_SPI_IRQHandler(SPI_HandleTypeDef *hspi);
void HAL_SPI_TxCpltCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_RxCpltCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_TxRxCpltCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_TxHalfCpltCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_RxHalfCpltCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_TxRxHalfCpltCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_ErrorCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_AbortCpltCallback(SPI_HandleTypeDef *hspi);


 



 
 
HAL_SPI_StateTypeDef HAL_SPI_GetState(SPI_HandleTypeDef *hspi);
uint32_t             HAL_SPI_GetError(SPI_HandleTypeDef *hspi);


 



 



 



 




















 

 


 



 



 

 


 



 
typedef struct
{
  uint32_t Prescaler;         
 

  uint32_t CounterMode;       
 

  uint32_t Period;            

 

  uint32_t ClockDivision;     
 

  uint32_t RepetitionCounter;  








 

  uint32_t AutoReloadPreload;  
 
} TIM_Base_InitTypeDef;



 
typedef struct
{
  uint32_t OCMode;        
 

  uint32_t Pulse;         
 

  uint32_t OCPolarity;    
 

  uint32_t OCNPolarity;   

 

  uint32_t OCFastMode;    

 


  uint32_t OCIdleState;   

 

  uint32_t OCNIdleState;  

 
} TIM_OC_InitTypeDef;



 
typedef struct
{
  uint32_t OCMode;        
 

  uint32_t Pulse;         
 

  uint32_t OCPolarity;    
 

  uint32_t OCNPolarity;   

 

  uint32_t OCIdleState;   

 

  uint32_t OCNIdleState;  

 

  uint32_t ICPolarity;    
 

  uint32_t ICSelection;   
 

  uint32_t ICFilter;      
 
} TIM_OnePulse_InitTypeDef;



 
typedef struct
{
  uint32_t  ICPolarity;  
 

  uint32_t ICSelection;  
 

  uint32_t ICPrescaler;  
 

  uint32_t ICFilter;     
 
} TIM_IC_InitTypeDef;



 
typedef struct
{
  uint32_t EncoderMode;   
 

  uint32_t IC1Polarity;   
 

  uint32_t IC1Selection;  
 

  uint32_t IC1Prescaler;  
 

  uint32_t IC1Filter;     
 

  uint32_t IC2Polarity;   
 

  uint32_t IC2Selection;  
 

  uint32_t IC2Prescaler;  
 

  uint32_t IC2Filter;     
 
} TIM_Encoder_InitTypeDef;



 
typedef struct
{
  uint32_t ClockSource;     
 
  uint32_t ClockPolarity;   
 
  uint32_t ClockPrescaler;  
 
  uint32_t ClockFilter;     
 
} TIM_ClockConfigTypeDef;



 
typedef struct
{
  uint32_t ClearInputState;      
 
  uint32_t ClearInputSource;     
 
  uint32_t ClearInputPolarity;   
 
  uint32_t ClearInputPrescaler;  

 
  uint32_t ClearInputFilter;     
 
} TIM_ClearInputConfigTypeDef;



 
typedef struct
{
  uint32_t  MasterOutputTrigger;   
 
  uint32_t  MasterSlaveMode;       





 
} TIM_MasterConfigTypeDef;



 
typedef struct
{
  uint32_t  SlaveMode;         
 
  uint32_t  InputTrigger;      
 
  uint32_t  TriggerPolarity;   
 
  uint32_t  TriggerPrescaler;  
 
  uint32_t  TriggerFilter;     
 

} TIM_SlaveConfigTypeDef;





 
typedef struct
{
  uint32_t OffStateRunMode;       

  uint32_t OffStateIDLEMode;      

  uint32_t LockLevel;             

  uint32_t DeadTime;              

  uint32_t BreakState;            

  uint32_t BreakPolarity;         

  uint32_t BreakFilter;           

  uint32_t AutomaticOutput;       

} TIM_BreakDeadTimeConfigTypeDef;



 
typedef enum
{
  HAL_TIM_STATE_RESET             = 0x00U,     
  HAL_TIM_STATE_READY             = 0x01U,     
  HAL_TIM_STATE_BUSY              = 0x02U,     
  HAL_TIM_STATE_TIMEOUT           = 0x03U,     
  HAL_TIM_STATE_ERROR             = 0x04U      
} HAL_TIM_StateTypeDef;



 
typedef enum
{
  HAL_TIM_CHANNEL_STATE_RESET             = 0x00U,     
  HAL_TIM_CHANNEL_STATE_READY             = 0x01U,     
  HAL_TIM_CHANNEL_STATE_BUSY              = 0x02U,     
} HAL_TIM_ChannelStateTypeDef;



 
typedef enum
{
  HAL_DMA_BURST_STATE_RESET             = 0x00U,     
  HAL_DMA_BURST_STATE_READY             = 0x01U,     
  HAL_DMA_BURST_STATE_BUSY              = 0x02U,     
} HAL_TIM_DMABurstStateTypeDef;



 
typedef enum
{
  HAL_TIM_ACTIVE_CHANNEL_1        = 0x01U,     
  HAL_TIM_ACTIVE_CHANNEL_2        = 0x02U,     
  HAL_TIM_ACTIVE_CHANNEL_3        = 0x04U,     
  HAL_TIM_ACTIVE_CHANNEL_4        = 0x08U,     
  HAL_TIM_ACTIVE_CHANNEL_CLEARED  = 0x00U      
} HAL_TIM_ActiveChannel;



 
typedef struct
{
  TIM_TypeDef                        *Instance;          
  TIM_Base_InitTypeDef               Init;               
  HAL_TIM_ActiveChannel              Channel;            
  DMA_HandleTypeDef                  *hdma[7];          
 
  HAL_LockTypeDef                    Lock;               
  volatile HAL_TIM_StateTypeDef          State;              
  volatile HAL_TIM_ChannelStateTypeDef   ChannelState[4];    
  volatile HAL_TIM_ChannelStateTypeDef   ChannelNState[4];   
  volatile HAL_TIM_DMABurstStateTypeDef  DMABurstState;      

} TIM_HandleTypeDef;




 
 

 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 



 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 


 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 
 

 


 




 





 





 





 







 






 














 














 













 













 


















 


















 















 














 







 






 






 





 






 





 










 








 


















 















 












 











 











 











 















 















 








 











 















 








 



 
 

 


 

 


 
 

 


 
































































 
 

 
















 

 


 



 



 

 


 



 

typedef struct
{
  uint32_t IC1Polarity;         
 

  uint32_t IC1Prescaler;        
 

  uint32_t IC1Filter;           
 

  uint32_t Commutation_Delay;   
 
} TIM_HallSensor_InitTypeDef;


 
 

 


 



 





 



 
 

 


 



 
 

 


 



 
 

 


 




 
 
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Init(TIM_HandleTypeDef *htim, TIM_HallSensor_InitTypeDef *sConfig);
HAL_StatusTypeDef HAL_TIMEx_HallSensor_DeInit(TIM_HandleTypeDef *htim);

void HAL_TIMEx_HallSensor_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIMEx_HallSensor_MspDeInit(TIM_HandleTypeDef *htim);

 
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start_IT(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop_IT(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start_DMA(TIM_HandleTypeDef *htim, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop_DMA(TIM_HandleTypeDef *htim);


 




 
 
 
HAL_StatusTypeDef HAL_TIMEx_OCN_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIMEx_OCN_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);

 
HAL_StatusTypeDef HAL_TIMEx_OCN_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIMEx_OCN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);

 
HAL_StatusTypeDef HAL_TIMEx_OCN_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIMEx_OCN_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);


 




 
 
 
HAL_StatusTypeDef HAL_TIMEx_PWMN_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);

 
HAL_StatusTypeDef HAL_TIMEx_PWMN_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIMEx_PWMN_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);


 




 
 
 
HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Start(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Stop(TIM_HandleTypeDef *htim, uint32_t OutputChannel);

 
HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Start_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel);


 




 
 
HAL_StatusTypeDef HAL_TIMEx_ConfigCommutEvent(TIM_HandleTypeDef *htim, uint32_t  InputTrigger,
                                              uint32_t  CommutationSource);
HAL_StatusTypeDef HAL_TIMEx_ConfigCommutEvent_IT(TIM_HandleTypeDef *htim, uint32_t  InputTrigger,
                                                 uint32_t  CommutationSource);
HAL_StatusTypeDef HAL_TIMEx_ConfigCommutEvent_DMA(TIM_HandleTypeDef *htim, uint32_t  InputTrigger,
                                                  uint32_t  CommutationSource);
HAL_StatusTypeDef HAL_TIMEx_MasterConfigSynchronization(TIM_HandleTypeDef *htim,
                                                        TIM_MasterConfigTypeDef *sMasterConfig);
HAL_StatusTypeDef HAL_TIMEx_ConfigBreakDeadTime(TIM_HandleTypeDef *htim,
                                                TIM_BreakDeadTimeConfigTypeDef *sBreakDeadTimeConfig);
HAL_StatusTypeDef HAL_TIMEx_RemapConfig(TIM_HandleTypeDef *htim, uint32_t Remap);


 




 
 
void HAL_TIMEx_CommutCallback(TIM_HandleTypeDef *htim);
void HAL_TIMEx_CommutHalfCpltCallback(TIM_HandleTypeDef *htim);
void HAL_TIMEx_BreakCallback(TIM_HandleTypeDef *htim);


 




 
 
HAL_TIM_StateTypeDef HAL_TIMEx_HallSensor_GetState(TIM_HandleTypeDef *htim);
HAL_TIM_ChannelStateTypeDef HAL_TIMEx_GetChannelNState(TIM_HandleTypeDef *htim,  uint32_t ChannelN);


 



 
 

 


 
void TIMEx_DMACommutationCplt(DMA_HandleTypeDef *hdma);
void TIMEx_DMACommutationHalfCplt(DMA_HandleTypeDef *hdma);


 
 



 



 




 


 




 
 
HAL_StatusTypeDef HAL_TIM_Base_Init(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_Base_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_Base_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_Base_MspDeInit(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_Base_Start(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_Base_Stop(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_Base_Start_IT(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_Base_Stop_IT(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_Base_Start_DMA(TIM_HandleTypeDef *htim, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIM_Base_Stop_DMA(TIM_HandleTypeDef *htim);


 




 
 
HAL_StatusTypeDef HAL_TIM_OC_Init(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_OC_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_OC_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_OC_MspDeInit(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_OC_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_OC_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_OC_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_OC_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_OC_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIM_OC_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);


 




 
 
HAL_StatusTypeDef HAL_TIM_PWM_Init(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_PWM_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_PWM_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_PWM_MspDeInit(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_PWM_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_PWM_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_PWM_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_PWM_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_PWM_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIM_PWM_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);


 




 
 
HAL_StatusTypeDef HAL_TIM_IC_Init(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_IC_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_IC_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_IC_MspDeInit(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_IC_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_IC_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_IC_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_IC_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_IC_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIM_IC_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);


 




 
 
HAL_StatusTypeDef HAL_TIM_OnePulse_Init(TIM_HandleTypeDef *htim, uint32_t OnePulseMode);
HAL_StatusTypeDef HAL_TIM_OnePulse_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_OnePulse_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_OnePulse_MspDeInit(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_OnePulse_Start(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
HAL_StatusTypeDef HAL_TIM_OnePulse_Stop(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
 
HAL_StatusTypeDef HAL_TIM_OnePulse_Start_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
HAL_StatusTypeDef HAL_TIM_OnePulse_Stop_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel);


 




 
 
HAL_StatusTypeDef HAL_TIM_Encoder_Init(TIM_HandleTypeDef *htim,  TIM_Encoder_InitTypeDef *sConfig);
HAL_StatusTypeDef HAL_TIM_Encoder_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_Encoder_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_Encoder_MspDeInit(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_Encoder_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_Encoder_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_Encoder_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_Encoder_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_Encoder_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData1,
                                            uint32_t *pData2, uint16_t Length);
HAL_StatusTypeDef HAL_TIM_Encoder_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);


 




 
 
void HAL_TIM_IRQHandler(TIM_HandleTypeDef *htim);


 




 
 
HAL_StatusTypeDef HAL_TIM_OC_ConfigChannel(TIM_HandleTypeDef *htim, TIM_OC_InitTypeDef *sConfig, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_PWM_ConfigChannel(TIM_HandleTypeDef *htim, TIM_OC_InitTypeDef *sConfig, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_IC_ConfigChannel(TIM_HandleTypeDef *htim, TIM_IC_InitTypeDef *sConfig, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_OnePulse_ConfigChannel(TIM_HandleTypeDef *htim, TIM_OnePulse_InitTypeDef *sConfig,
                                                 uint32_t OutputChannel,  uint32_t InputChannel);
HAL_StatusTypeDef HAL_TIM_ConfigOCrefClear(TIM_HandleTypeDef *htim, TIM_ClearInputConfigTypeDef *sClearInputConfig,
                                           uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_ConfigClockSource(TIM_HandleTypeDef *htim, TIM_ClockConfigTypeDef *sClockSourceConfig);
HAL_StatusTypeDef HAL_TIM_ConfigTI1Input(TIM_HandleTypeDef *htim, uint32_t TI1_Selection);
HAL_StatusTypeDef HAL_TIM_SlaveConfigSynchro(TIM_HandleTypeDef *htim, TIM_SlaveConfigTypeDef *sSlaveConfig);
HAL_StatusTypeDef HAL_TIM_SlaveConfigSynchro_IT(TIM_HandleTypeDef *htim, TIM_SlaveConfigTypeDef *sSlaveConfig);
HAL_StatusTypeDef HAL_TIM_DMABurst_WriteStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress,
                                              uint32_t BurstRequestSrc, uint32_t  *BurstBuffer, uint32_t  BurstLength);
HAL_StatusTypeDef HAL_TIM_DMABurst_MultiWriteStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress,
                                                   uint32_t BurstRequestSrc, uint32_t *BurstBuffer,
                                                   uint32_t BurstLength,  uint32_t DataLength);
HAL_StatusTypeDef HAL_TIM_DMABurst_WriteStop(TIM_HandleTypeDef *htim, uint32_t BurstRequestSrc);
HAL_StatusTypeDef HAL_TIM_DMABurst_ReadStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress,
                                             uint32_t BurstRequestSrc, uint32_t  *BurstBuffer, uint32_t  BurstLength);
HAL_StatusTypeDef HAL_TIM_DMABurst_MultiReadStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress,
                                                  uint32_t BurstRequestSrc, uint32_t  *BurstBuffer,
                                                  uint32_t  BurstLength, uint32_t  DataLength);
HAL_StatusTypeDef HAL_TIM_DMABurst_ReadStop(TIM_HandleTypeDef *htim, uint32_t BurstRequestSrc);
HAL_StatusTypeDef HAL_TIM_GenerateEvent(TIM_HandleTypeDef *htim, uint32_t EventSource);
uint32_t HAL_TIM_ReadCapturedValue(TIM_HandleTypeDef *htim, uint32_t Channel);


 




 
 
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_PeriodElapsedHalfCpltCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_OC_DelayElapsedCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_IC_CaptureCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_IC_CaptureHalfCpltCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_PWM_PulseFinishedCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_PWM_PulseFinishedHalfCpltCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_TriggerCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_TriggerHalfCpltCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_ErrorCallback(TIM_HandleTypeDef *htim);

 



 




 
 
HAL_TIM_StateTypeDef HAL_TIM_Base_GetState(TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_OC_GetState(TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_PWM_GetState(TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_IC_GetState(TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_OnePulse_GetState(TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_Encoder_GetState(TIM_HandleTypeDef *htim);

 
HAL_TIM_ActiveChannel HAL_TIM_GetActiveChannel(TIM_HandleTypeDef *htim);
HAL_TIM_ChannelStateTypeDef HAL_TIM_GetChannelState(TIM_HandleTypeDef *htim,  uint32_t Channel);
HAL_TIM_DMABurstStateTypeDef HAL_TIM_DMABurstState(TIM_HandleTypeDef *htim);


 



 
 

 


 
void TIM_Base_SetConfig(TIM_TypeDef *TIMx, TIM_Base_InitTypeDef *Structure);
void TIM_TI1_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection, uint32_t TIM_ICFilter);
void TIM_OC2_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config);
void TIM_ETR_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ExtTRGPrescaler,
                       uint32_t TIM_ExtTRGPolarity, uint32_t ExtTRGFilter);

void TIM_DMADelayPulseHalfCplt(DMA_HandleTypeDef *hdma);
void TIM_DMAError(DMA_HandleTypeDef *hdma);
void TIM_DMACaptureCplt(DMA_HandleTypeDef *hdma);
void TIM_DMACaptureHalfCplt(DMA_HandleTypeDef *hdma);
void TIM_CCxChannelCmd(TIM_TypeDef *TIMx, uint32_t Channel, uint32_t ChannelState);




 
 



 



 



















 

 


 



 



 

 


 



 
typedef struct
{
  uint32_t BaudRate;                  



 

  uint32_t WordLength;                
 

  uint32_t StopBits;                  
 

  uint32_t Parity;                    




 

  uint32_t Mode;                      
 

  uint32_t HwFlowCtl;                 
 

  uint32_t OverSampling;              
 
} UART_InitTypeDef;







































 
typedef enum
{
  HAL_UART_STATE_RESET             = 0x00U,    
 
  HAL_UART_STATE_READY             = 0x20U,    
 
  HAL_UART_STATE_BUSY              = 0x24U,    
 
  HAL_UART_STATE_BUSY_TX           = 0x21U,    
 
  HAL_UART_STATE_BUSY_RX           = 0x22U,    
 
  HAL_UART_STATE_BUSY_TX_RX        = 0x23U,    

 
  HAL_UART_STATE_TIMEOUT           = 0xA0U,    
 
  HAL_UART_STATE_ERROR             = 0xE0U     
 
} HAL_UART_StateTypeDef;







 
typedef uint32_t HAL_UART_RxTypeTypeDef;



 
typedef struct __UART_HandleTypeDef
{
  USART_TypeDef                 *Instance;         

  UART_InitTypeDef              Init;              

  const uint8_t                 *pTxBuffPtr;       

  uint16_t                      TxXferSize;        

  volatile uint16_t                 TxXferCount;       

  uint8_t                       *pRxBuffPtr;       

  uint16_t                      RxXferSize;        

  volatile uint16_t                 RxXferCount;       

  volatile HAL_UART_RxTypeTypeDef ReceptionType;       

  DMA_HandleTypeDef             *hdmatx;           

  DMA_HandleTypeDef             *hdmarx;           

  HAL_LockTypeDef               Lock;              

  volatile HAL_UART_StateTypeDef    gState;           

 

  volatile HAL_UART_StateTypeDef    RxState;          
 

  volatile uint32_t                 ErrorCode;         


} UART_HandleTypeDef;




 

 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 



 


 





 


 









 





 



 


 



 

 


 






 





 


















 






















 






 






 






 






 






 
















 
















 















 














 














 














 














 




 




 




 




 


 

 


 



 

 
HAL_StatusTypeDef HAL_UART_Init(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_HalfDuplex_Init(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_LIN_Init(UART_HandleTypeDef *huart, uint32_t BreakDetectLength);
HAL_StatusTypeDef HAL_MultiProcessor_Init(UART_HandleTypeDef *huart, uint8_t Address, uint32_t WakeUpMethod);
HAL_StatusTypeDef HAL_UART_DeInit(UART_HandleTypeDef *huart);
void HAL_UART_MspInit(UART_HandleTypeDef *huart);
void HAL_UART_MspDeInit(UART_HandleTypeDef *huart);

 



 



 

 
HAL_StatusTypeDef HAL_UART_Transmit(UART_HandleTypeDef *huart, const uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_UART_Receive(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_UART_Transmit_IT(UART_HandleTypeDef *huart, const uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_Receive_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_Transmit_DMA(UART_HandleTypeDef *huart, const uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_Receive_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_DMAPause(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_DMAResume(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_DMAStop(UART_HandleTypeDef *huart);

HAL_StatusTypeDef HAL_UARTEx_ReceiveToIdle(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint16_t *RxLen,
                                           uint32_t Timeout);
HAL_StatusTypeDef HAL_UARTEx_ReceiveToIdle_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UARTEx_ReceiveToIdle_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);

 
HAL_StatusTypeDef HAL_UART_Abort(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortTransmit(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortReceive(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_Abort_IT(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortTransmit_IT(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortReceive_IT(UART_HandleTypeDef *huart);

void HAL_UART_IRQHandler(UART_HandleTypeDef *huart);
void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_TxHalfCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_RxHalfCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_ErrorCallback(UART_HandleTypeDef *huart);
void HAL_UART_AbortCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_AbortTransmitCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_AbortReceiveCpltCallback(UART_HandleTypeDef *huart);

void HAL_UARTEx_RxEventCallback(UART_HandleTypeDef *huart, uint16_t Size);



 



 
 
HAL_StatusTypeDef HAL_LIN_SendBreak(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_MultiProcessor_EnterMuteMode(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_MultiProcessor_ExitMuteMode(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_HalfDuplex_EnableTransmitter(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_HalfDuplex_EnableReceiver(UART_HandleTypeDef *huart);


 



 
 
HAL_UART_StateTypeDef HAL_UART_GetState(UART_HandleTypeDef *huart);
uint32_t              HAL_UART_GetError(UART_HandleTypeDef *huart);


 



 
 
 
 


 


 



 

 


 


 


 



 

 


 

HAL_StatusTypeDef UART_Start_Receive_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef UART_Start_Receive_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);



 



 



 



















 





 



  

 
 



 



 
typedef enum
{
  HAL_TICK_FREQ_10HZ         = 100U,
  HAL_TICK_FREQ_100HZ        = 10U,
  HAL_TICK_FREQ_1KHZ         = 1U,
  HAL_TICK_FREQ_DEFAULT      = HAL_TICK_FREQ_1KHZ
} HAL_TickFreqTypeDef;


 



 
   
 


 


 



 


 


 


 




 



 


 

 



 
extern volatile uint32_t uwTick;
extern uint32_t uwTickPrio;
extern HAL_TickFreqTypeDef uwTickFreq;


 

 


 


 
 
HAL_StatusTypeDef HAL_Init(void);
HAL_StatusTypeDef HAL_DeInit(void);
void HAL_MspInit(void);
void HAL_MspDeInit(void);
HAL_StatusTypeDef HAL_InitTick (uint32_t TickPriority);


 



 
 
void HAL_IncTick(void);
void HAL_Delay(uint32_t Delay);
uint32_t HAL_GetTick(void);
uint32_t HAL_GetTickPrio(void);
HAL_StatusTypeDef HAL_SetTickFreq(HAL_TickFreqTypeDef Freq);
HAL_TickFreqTypeDef HAL_GetTickFreq(void);
void HAL_SuspendTick(void);
void HAL_ResumeTick(void);
uint32_t HAL_GetHalVersion(void);
uint32_t HAL_GetREVID(void);
uint32_t HAL_GetDEVID(void);
void HAL_DBGMCU_EnableDBGSleepMode(void);
void HAL_DBGMCU_DisableDBGSleepMode(void);
void HAL_DBGMCU_EnableDBGStopMode(void);
void HAL_DBGMCU_DisableDBGStopMode(void);
void HAL_DBGMCU_EnableDBGStandbyMode(void);
void HAL_DBGMCU_DisableDBGStandbyMode(void);
void HAL_EnableCompensationCell(void);
void HAL_DisableCompensationCell(void);
uint32_t HAL_GetUIDw0(void);
uint32_t HAL_GetUIDw1(void);
uint32_t HAL_GetUIDw2(void);


 



 
 
 


 


 
 


 


 
 
 


 



  
  




 
 
 
 

  #pragma system_include

 
 

 

  #pragma system_include














 











 


  #pragma system_include


  





 


  




 




  


 


  #pragma inline=forced_no_body
  _Pragma("function_effects = no_state, no_read(1), no_write(2), returns 1, always_returns") __intrinsic __nounwind void * memcpy(void * _D, const void * _S, size_t _N)
  {
    __aeabi_memcpy(_D, _S, _N);
    return _D;
  }

  #pragma inline=forced_no_body
  _Pragma("function_effects = no_state, no_read(1), no_write(2), returns 1, always_returns") __intrinsic __nounwind void * memmove(void * _D, const void * _S, size_t _N)
  {
    __aeabi_memmove(_D, _S, _N);
    return _D;
  }

  #pragma inline=forced_no_body
  _Pragma("function_effects = no_state, no_read(1), returns 1, always_returns") __intrinsic __nounwind void * memset(void * _D, int _C, size_t _N)
  {
    __aeabi_memset(_D, _N, _C);
    return _D;
  }




 

 

 

  _Pragma("function_effects = no_state, no_write(1,2), always_returns")   __intrinsic __nounwind   int       memcmp(const void *, const void *,
                                                   size_t);
  _Pragma("function_effects = no_state, no_read(1), no_write(2), returns 1, always_returns")  __intrinsic __nounwind void *    memcpy(void *restrict, 
                                                   const void *restrict,
                                                   size_t);
  _Pragma("function_effects = no_state, no_read(1), no_write(2), returns 1, always_returns")  __intrinsic __nounwind void *    memmove(void *, const void *,
                                                    size_t);
  _Pragma("function_effects = no_state, no_read(1), returns 1, always_returns")     __intrinsic __nounwind void *    memset(void *, int, size_t);
  _Pragma("function_effects = no_state, no_write(2), returns 1, always_returns")     __intrinsic __nounwind char *    strcat(char *restrict, 
                                                   const char *restrict);
  _Pragma("function_effects = no_state, no_write(1,2), always_returns")   __intrinsic __nounwind   int       strcmp(const char *, const char *);
  _Pragma("function_effects = no_write(1,2), always_returns")     __intrinsic __nounwind   int       strcoll(const char *, const char *);
  _Pragma("function_effects = no_state, no_read(1), no_write(2), returns 1, always_returns")  __intrinsic __nounwind char *    strcpy(char *restrict, 
                                                   const char *restrict);
  _Pragma("function_effects = no_state, no_write(1,2), always_returns")   __intrinsic __nounwind   size_t    strcspn(const char *, const char *);
                    __intrinsic __nounwind char *    strerror(int);
  _Pragma("function_effects = no_state, no_write(1), always_returns")      __intrinsic __nounwind   size_t    strlen(const char *);
  _Pragma("function_effects = no_state, no_write(2), returns 1, always_returns")     __intrinsic __nounwind char *    strncat(char *restrict, 
                                                    const char *restrict,
                                                    size_t);
  _Pragma("function_effects = no_state, no_write(1,2), always_returns")   __intrinsic __nounwind   int       strncmp(const char *, const char *, 
                                                    size_t);
  _Pragma("function_effects = no_state, no_read(1), no_write(2), returns 1, always_returns")  __intrinsic __nounwind char *    strncpy(char *restrict, 
                                                    const char *restrict,
                                                    size_t);
  _Pragma("function_effects = no_state, no_write(1,2), always_returns")   __intrinsic __nounwind   size_t    strspn(const char *, const char *);
  _Pragma("function_effects = no_write(2), always_returns")         __intrinsic __nounwind char *    strtok(char *restrict, 
                                                   const char *restrict);
  _Pragma("function_effects = no_write(2), always_returns")        __intrinsic __nounwind   size_t    strxfrm(char *restrict, 
                                                    const char *restrict,
                                                    size_t);
    _Pragma("function_effects = no_write(1), always_returns")      __intrinsic __nounwind   char *    strdup(const char *);
    _Pragma("function_effects = no_write(1,2), always_returns")   __intrinsic __nounwind   int       strcasecmp(const char *,
                                                       const char *);
    _Pragma("function_effects = no_write(1,2), always_returns")   __intrinsic __nounwind   int       strncasecmp(const char *,
                                                        const char *, size_t);
    _Pragma("function_effects = no_state, no_write(2), always_returns")    __intrinsic __nounwind   char *    strtok_r(char *, const char *,
                                                     char **);
    _Pragma("function_effects = no_state, no_write(1), always_returns")     __intrinsic __nounwind size_t    strnlen(char const *, size_t);


  _Pragma("function_effects = no_state, no_write(1), always_returns")    __intrinsic __nounwind void *memchr(const void *_S, int _C, size_t _N);
  _Pragma("function_effects = no_state, no_write(1), always_returns")    __intrinsic __nounwind char *strchr(const char *_S, int _C);
  _Pragma("function_effects = no_state, no_write(1,2), always_returns") __intrinsic __nounwind char *strpbrk(const char *_S, const char *_P);
  _Pragma("function_effects = no_state, no_write(1), always_returns")    __intrinsic __nounwind char *strrchr(const char *_S, int _C);
  _Pragma("function_effects = no_state, no_write(1,2), always_returns") __intrinsic __nounwind char *strstr(const char *_S, const char *_P);






 
 
 

  #pragma system_include

 
 

 

  #pragma system_include














 



 
#pragma rtmodel="__dlib_file_descriptor","1"

 

  typedef _Filet FILE;


      
         extern FILE __iar_Stdin;
         extern FILE __iar_Stdout;
         extern FILE __iar_Stderr;
      




 
typedef _Fpost fpos_t;


 


   
  
    __intrinsic __nounwind    void   clearerr(FILE *);
    __intrinsic __nounwind    int    fclose(FILE *);
    __intrinsic __nounwind    int    feof(FILE *);
    __intrinsic __nounwind    int    ferror(FILE *);
    __intrinsic __nounwind    int    fflush(FILE *);
    __intrinsic __nounwind    int    fgetc(FILE *);
    __intrinsic __nounwind    int    fgetpos(FILE *restrict, fpos_t *restrict);
    __intrinsic __nounwind    char * fgets(char *restrict, int, FILE *restrict);
     __intrinsic __nounwind  FILE * fopen(const char *restrict, const char *restrict);
     _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int    fprintf(FILE *restrict,
                                   const char *restrict, ...);
    __intrinsic __nounwind    int    fputc(int, FILE *);
    __intrinsic __nounwind    int    fputs(const char *restrict, FILE *restrict);
    __intrinsic __nounwind    size_t fread(void *restrict, size_t, size_t,
                                 FILE *restrict);
     __intrinsic __nounwind  FILE * freopen(const char *restrict,
                                   const char *restrict, FILE *restrict);
     _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown") __intrinsic __nounwind  int    fscanf(FILE *restrict, const char *restrict, ...);
    __intrinsic __nounwind    int    fseek(FILE *, long, int);
    __intrinsic __nounwind    int    fsetpos(FILE *, const fpos_t *);
    __intrinsic __nounwind    long   ftell(FILE *);
    __intrinsic __nounwind    size_t fwrite(const void *restrict, size_t, size_t, 
                                  FILE *restrict);
    __intrinsic __nounwind    void   rewind(FILE *);
    __intrinsic __nounwind    void   setbuf(FILE *restrict, char *restrict);
    __intrinsic __nounwind    int    setvbuf(FILE *restrict, char *restrict,
                                   int, size_t);
     __intrinsic __nounwind  char * tmpnam(char *);
     __intrinsic __nounwind  FILE * tmpfile(void);
    __intrinsic __nounwind    int    ungetc(int, FILE *);
     _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int    vfprintf(FILE *restrict, const char *restrict,
                                    __Va_list);
       _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown") __intrinsic __nounwind int   vfscanf(FILE *restrict, const char *restrict,
                                   __Va_list);
      __intrinsic __nounwind FILE *   fdopen(signed char, const char *);
      __intrinsic __nounwind signed char fileno(FILE *);
      __intrinsic __nounwind int      getw(FILE *);
      __intrinsic __nounwind int      putw(int, FILE *);
    __intrinsic __nounwind int        getc(FILE *);
    __intrinsic __nounwind int        putc(int, FILE *);
  


     
    _Pragma("function_effects = no_read(1), always_returns") __intrinsic __nounwind   char * __gets(char *, int);
    _Pragma("function_effects = no_read(1), always_returns")  __intrinsic __nounwind char * gets(char *);
  _Pragma("function_effects = no_write(1), always_returns")    __intrinsic __nounwind    void   perror(const char *);
  _Pragma("function_effects = no_write(1), always_returns")     _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int    printf(const char *restrict, ...);
  _Pragma("function_effects = no_write(1), always_returns")    __intrinsic __nounwind    int    puts(const char *);
  _Pragma("function_effects = no_write(1), always_returns")     _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown") __intrinsic __nounwind  int    scanf(const char *restrict, ...);
  _Pragma("function_effects = no_read(1), no_write(2), always_returns")  _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int    sprintf(char *restrict, 
                                              const char *restrict, ...);
  _Pragma("function_effects = no_write(1,2), always_returns")  _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown") __intrinsic __nounwind  int    sscanf(const char *restrict, 
                                             const char *restrict, ...);
                                       
  __intrinsic __nounwind                 int    __ungetchar(int);
  _Pragma("function_effects = no_write(1), always_returns")     _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int    vprintf(const char *restrict,
                                              __Va_list);
    _Pragma("function_effects = no_write(1), always_returns")     _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown") __intrinsic __nounwind int vscanf(const char *restrict, __Va_list);
    _Pragma("function_effects = no_write(1,2), always_returns")  _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown") __intrinsic __nounwind int vsscanf(const char *restrict, 
                                            const char *restrict, __Va_list);
  _Pragma("function_effects = no_read(1), no_write(2), always_returns")   _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vsprintf(char *restrict, 
                                             const char *restrict, __Va_list);
                                 
  _Pragma("function_effects = no_write(1), always_returns") __intrinsic __nounwind size_t   __write_array(const void *, size_t, size_t);
    _Pragma("function_effects = no_read(1), no_write(3), always_returns")  _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int snprintf(char *restrict, size_t, 
                                              const char *restrict, ...);
    _Pragma("function_effects = no_read(1), no_write(3), always_returns")  _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vsnprintf(char *restrict, size_t,
                                               const char *restrict,
                                               __Va_list);

  __intrinsic __nounwind int                getchar(void);
  __intrinsic __nounwind int                putchar(int);
  
 
  __intrinsic __nounwind int                remove(const char *);
  __intrinsic __nounwind int                rename(const char *, const char *);







 
 
 


  #pragma system_include

 
 

 

  #pragma system_include














 



 
#pragma rtmodel="__dlib_full_locale_support",   "1"

  
    __intrinsic __nounwind size_t __iar_Mbcurmax(void);
  


 



 

typedef struct
{  
  int quot;
  int rem;
} div_t;

typedef struct
{  
  long quot;
  long rem;
} ldiv_t;

  typedef struct
  {  
    long long quot;
    long long rem;
  } lldiv_t;


 
  
  __intrinsic __nounwind int             atexit(void (*)(void));
    __intrinsic __nounwind          int  at_quick_exit(void (*)(void)) ;
    __intrinsic __noreturn __nounwind void _Exit(int) ;
    __intrinsic __noreturn __nounwind void quick_exit(int) ;
  __intrinsic __noreturn __nounwind void   exit(int);
   __intrinsic __nounwind        char * getenv(const char *);
  __intrinsic __nounwind          int    system(const char *);



               __intrinsic __nounwind void *    aligned_alloc(size_t, size_t);
          __intrinsic __noreturn __nounwind void  abort(void) ;
  _Pragma("function_effects = no_state, always_returns")     __intrinsic __nounwind int       abs(int);
               __intrinsic __nounwind void *    calloc(size_t, size_t);
  _Pragma("function_effects = no_state, always_returns")     __intrinsic __nounwind div_t     div(int, int);
               __intrinsic __nounwind void      free(void *);
  _Pragma("function_effects = no_state, always_returns")     __intrinsic __nounwind long      labs(long);
  _Pragma("function_effects = no_state, always_returns")     __intrinsic __nounwind ldiv_t    ldiv(long, long);
    _Pragma("function_effects = no_state, always_returns")   __intrinsic __nounwind long long llabs(long long);
    _Pragma("function_effects = no_state, always_returns")   __intrinsic __nounwind lldiv_t   lldiv(long long, long long);
               __intrinsic __nounwind void *    malloc(size_t);
  _Pragma("function_effects = no_write(1), always_returns")    __intrinsic __nounwind int       mblen(const char *, size_t);
    _Pragma("function_effects = no_read(1), no_write(2), always_returns")  __intrinsic __nounwind size_t mbstowcs(wchar_t *restrict, 
                                                const char *restrict, size_t);
    _Pragma("function_effects = no_read(1), no_write(2), always_returns") __intrinsic __nounwind   int    mbtowc(wchar_t *restrict,
                                              const char *restrict, size_t);
               __intrinsic __nounwind int    rand(void);
               __intrinsic __nounwind void   srand(unsigned int);
               __intrinsic __nounwind void * realloc(void *, size_t);
               __intrinsic __nounwind void * __iar_realloc_in_place(void *, size_t);
  _Pragma("function_effects = no_write(1), no_read(2), always_returns") __intrinsic __nounwind long          strtol(const char *restrict, 
                                                 char **restrict, int);
  _Pragma("function_effects = no_write(1), no_read(2), always_returns") __intrinsic __nounwind unsigned long strtoul(const char *, char **, int);
    _Pragma("function_effects = no_read(1), no_write(2), always_returns")  __intrinsic __nounwind size_t wcstombs(char *restrict, 
                                               const wchar_t *restrict,
                                               size_t);
    _Pragma("function_effects = no_read(1), always_returns")     __intrinsic __nounwind int    wctomb(char *, wchar_t);
    _Pragma("function_effects = no_write(1), no_read(2), always_returns") __intrinsic __nounwind long long strtoll(const char *, char **, int);
    _Pragma("function_effects = no_write(1), no_read(2), always_returns") __intrinsic __nounwind unsigned long long strtoull(const char *, 
                                                          char **, int);



  typedef int _Cmpfun(const void *, const void *);
  _Pragma("function_effects = no_write(1,2), always_returns")  __intrinsic void * bsearch(const void *, 
                                                       const void *, size_t,
                                                       size_t, _Cmpfun *);
                __intrinsic void   qsort(void *, size_t, size_t, 
                                                     _Cmpfun *);
               __intrinsic void     __qsortbbl(void *, size_t,
                                                          size_t, _Cmpfun *);
  _Pragma("function_effects = no_write(1), always_returns")    __intrinsic __nounwind double             atof(const char *);
  _Pragma("function_effects = no_write(1), always_returns")    __intrinsic __nounwind int                atoi(const char *);
  _Pragma("function_effects = no_write(1), always_returns")    __intrinsic __nounwind long               atol(const char *);
     _Pragma("function_effects = no_write(1), always_returns") __intrinsic __nounwind long long        atoll(const char *);
     _Pragma("function_effects = no_write(1), no_read(2), always_returns") __intrinsic __nounwind float         strtof(const char *restrict, 
                                                    char **restrict);
     _Pragma("function_effects = no_write(1), no_read(2), always_returns") __intrinsic __nounwind long double   strtold(const char *, char **);
  _Pragma("function_effects = no_write(1), no_read(2), always_returns") __intrinsic __nounwind double           strtod(const char *restrict, 
                                                    char **restrict);
    _Pragma("function_effects = no_state, always_returns")   __intrinsic __nounwind int              __iar_DLib_library_version(void);


  
  #pragma inline=no_body
  int abs(int i)
  {       
    return i < 0 ? -i : i;
  }

  #pragma inline=no_body
  long labs(long i)
  {  
    return i < 0 ? -i : i;
  }

    #pragma inline=no_body
    long long llabs(long long i)
    {  
      return i < 0 ? -i : i;
    }
  









 


  #pragma system_include



#pragma type_attribute=__value_in_regs
div_t __aeabi_idivmod(int n, int d);

  #pragma type_attribute=__value_in_regs
  lldiv_t __aeabi_ldivmod(long long n, long long d);

#pragma inline=forced_no_body
__intrinsic __nounwind
div_t div(int a, int b)
{
  int q = a / b;
  int r = a - (q*b);
  div_t d;
  d.quot = q;
  d.rem = r;
  return d;
}

#pragma inline=forced_no_body
__intrinsic __nounwind
ldiv_t ldiv(long a, long b)
{
  int q = a / b;
  int r = a - (q*b);
  ldiv_t ld;
  ld.quot = q;
  ld.rem = r;
  return ld;
}

  #pragma inline=forced_no_body
  __intrinsic __nounwind
  lldiv_t lldiv(long long a, long long b)
  {
    return __aeabi_ldivmod(a, b);
  }








 


 



  
  
  

  
  


  
 


 


 
 
















 
 

 

 

void watchdog_init();
void watchdog_enable();
void watchdog_disable();
void watchdog_trigger();
  


 

 
 

 

 
 

 

 
 

 

 
void Error_Handler(void);

 
void user_delay(uint32_t delay);
 

 

 


typedef union {
  uint32_t data;
  struct {
    uint32_t oneMs      : 1;
    uint32_t twoMs      : 1;
    uint32_t tenMs      : 1;
    uint32_t hundredMs  : 1;
    uint32_t oneSecond  : 1;
    uint32_t fiftyMs    : 1;
    
    uint32_t res        : 26;
  };
} flagTimer_t;
extern flagTimer_t flagTimer;
extern uint32_t localEngineHourTimer;
extern uint32_t localJobHourTimer;
 



 













  



 
typedef enum
{
  LOGO_PAGE = 0,
  MAIN_PAGE,
    
  WARNING_PAGE,
  
} pageState_t;

extern float jobHour;

extern uint8_t  tFuelPercent;
extern float    tPowerVoltage;

 

typedef enum 
{
  W_FUEL_EMPTY = 0,                                                             
  W_ENGINE_OIL_EXCHANGE,
  W_MISSION_OIL_EXCHANGE,
  W_BATTERY,
  
  W_ENGINE_STOP_SWITCH,                                                         
  W_CHARGE,
  W_ENGINE_OIL_PRESSURE,
  W_ENGINE_COOLING_TEMPERATURE,
  W_TALKUK_BIN,
  W_2_SENSOR,
  W_GUGMUL_MANYANG,
  
  TOTAL_NUMBER_OF_WARNINGS
} wIndex_t;

typedef enum
{
  W_FLAG_PASSIVE = 0,
  W_FLAG_ACTIVE
} wFlag_t;

typedef enum
{
  W_STATE_NO_ERROR = 0,
  W_STATE_ACTIVE,
  W_STATE_PASSIVE
} wState_t;

typedef enum
{
  W_LEVEL_PASSIVE = 0,                          
  W_LEVEL_ACTIVE,                               
  W_LEVEL_ON_TOP                                
} wLevel_t;

typedef enum
{
  W_NO_PAGE = 0,
  W_PAGE_1,
  W_PAGE_2
} wPage_t;

typedef union 
{
  uint32_t data[2];
  struct {
    uint32_t index                      : 8;
    
    uint32_t detected                   : 1;
    uint32_t engineOilExchange          : 1;
    uint32_t missionOilExchange         : 1;
    uint32_t fuel                       : 1;
    uint32_t airFilter                  : 1;                                    
    uint32_t waterSeparator             : 1;                                    
    uint32_t oilPressure                : 1;                                    
    uint32_t can_timeout_warning_025    : 1;
    
    uint32_t can_timeout_warning_035    : 1;
    uint32_t can_timeout_warning_31x    : 1;
    uint32_t can_timeout_warning_33x    : 1;
    uint32_t can_timeout_warning_340    : 1;
    uint32_t can_timeout_warning_350    : 1;
    uint32_t can_timeout_warning_360    : 1;
    uint32_t can_timeout_warning_381    : 1;
    uint32_t can_timeout_warning_390    : 1;

    uint32_t MC_HST_chuhen_motor_error  : 1;
    uint32_t MC_HST_chuhyan_motor_error : 1;
    uint32_t MC_HST_chuhen_lever_error  : 1;
    uint32_t MC_HST_chuhyan_lever_error : 1;
  
    uint32_t charge                     : 1;
    uint32_t battery                    : 1;
    uint32_t nason2                     : 1;
    uint32_t nasonYangug                : 1;
    
    uint32_t nason2BlockSwitch          : 1;
    uint32_t talkukBin                  : 1;
    uint32_t sensor2                    : 1;
    uint32_t chipbechulBlockage         : 1;
    uint32_t bon_2                      : 1; 
    uint32_t pre_heating                : 1; 
    
    uint32_t res0                       : 2;
    
    uint32_t res1                       : 8;
    uint32_t res2                       : 8;
    uint32_t res3                       : 8;
  };
} flagWarning_t;
extern flagWarning_t flagWarning;
 

 
enum
{
  MEMORY_READ = 0,
  MEMORY_WRITE = 1
};
  
enum 
{
  CONFIGURE_JOB_HOUR_MSB = 0,
  CONFIGURE_JOB_HOUR_LSB,
  CONFIGURE_ENGINE_HOUR_MSB,
  CONFIGURE_ENGINE_HOUR_LSB,
  CONFIGURE_ENGINE_OIL_HOUR_MSB,
  CONFIGURE_ENGINE_OIL_HOUR_LSB,
  CONFIGURE_MISSION_OIL_HOUR_MSB,
  CONFIGURE_MISSION_OIL_HOUR_LSB,
  
  CONFIGURE_ENGINE_OIL_EXCHANGE_COUNTER,
  CONFIGURE_MISSION_OIL_EXCHANGE_COUNTER,
  CONFIGURE_LCD_BRIGHTNESS_NIGHT,
  CONFIGURE_LCD_BRIGHTNESS_DAY,

  NUMBER_OF_CONFIGURATION
};
   

float getEngineHour();
uint16_t get_memory(uint8_t* data);
uint16_t set_memory(uint8_t* data);
void memory_update();
void default_memory_update();
 



 
void     YVC_Reset(void);
void     WaitMSec(uint16_t cnt);
uint8_t  YVC_BurstWritePort(uint8_t pPort_num, const uint8_t *uWr_data, uint16_t num);
uint8_t  YVC_BurstReadPort(uint8_t pPort_num,  uint8_t *uRd_data, uint16_t num);
uint8_t  YVC_WritePort(uint8_t pPort_num, uint8_t uWr_data);
uint8_t  YVC_ReadPort(uint8_t pPort_num);

void ygv643_initialize();


uint16_t display_function(uint16_t _imgCnt );
uint16_t draw_main_page(uint16_t _imgCnt);
uint16_t draw_main_settings(uint16_t _imgCnt);
uint16_t draw_sub_settings_1(uint16_t _imgCnt);
uint16_t draw_sub_settings_2(uint16_t _imgCnt);
uint16_t draw_sub_settings_3(uint16_t _imgCnt);
uint16_t draw_sub_settings_4(uint16_t _imgCnt);
uint16_t draw_sub_settings_5(uint16_t _imgCnt);

uint16_t DrawWarningCombineCheckModeTwo(uint16_t _imgCnt);
uint16_t DrawWarningCombineCheckMessage(uint16_t _imgCnt);
 

 


  






  
  

typedef union
{
  uint32_t data;
  struct {
    uint32_t sound                      : 1;
    uint32_t alarm                      : 1;
    uint32_t engineStarted              : 1;
    uint32_t isBrigthnessSetting        : 1;
    
    uint32_t res                        : 28;
  };
} flag_t;

typedef struct  {
  uint16_t minValue;
  uint16_t maxValue;
  uint16_t defaultValue;
  uint16_t *value;
} nvData_t;

uint8_t control_init();
void control_process();

extern uint16_t timerKuRPMDelay;
 

 
void eeprom_init(void);
void ygv643_init();
void lcd_init();
void update_hours();
 


 
 
 
 
 
 
 


 
 
 


 
typedef struct {
	U08 Clk[3];							 
	U08 Disp[23];						 
	U08 VideoOut;						 
	U08 TCON[23];						 
} T_YVC1_DATA;



 
typedef struct {
	U08 SDCOMP;							 
	U08 DESTSEL;						 
	U32 SOCEAD;							 
	U16 DESTAD;							 
	U16 BYTECNT;						 
} T_YVC1_DMA_INIT;


 
 
 
BOOL YVC1_PmemSet(void);
BOOL YVC1_WriteReg(U08 RegNo, U08 Data);
BOOL YVC1_ReadReg(U08 RegNo, U08 *Data);
BOOL YVC1_WriteRegs(U08 RegNo, const U08 *Buff, U08 Num);
BOOL YVC1_ReadTbls(U16 Addr, U08 *Buff, U16 Num);
BOOL YVC1_WriteTbls(U16 Addr, const U08 *Buff, U16 Num);
BOOL YVC1_ReadPlts(U16 Addr, U08 *Buff, U16 Num);
BOOL YVC1_WritePlts(U16 Addr, const U08 *Buff, U16 Num);
BOOL YVC1_ReadGamTbls(U16 Addr, U08 *Buff, U16 Num);
BOOL YVC1_WriteGamTbls(U16 Addr, const U08 *Buff, U16 Num);
BOOL YVC1_ReadWrpTbls(U16 Addr, U08 *Buff, U16 Num);
BOOL YVC1_WriteWrpTbls(U16 Addr, const U08 *Buff, U16 Num);
BOOL YVC1_DmaInit(const T_YVC1_DMA_INIT *tYvc1DmaInit);
BOOL YVC1_DmaCtrl(BOOL Enable);
BOOL YVC1_Init(const T_YVC1_DATA *tYvc1Data);
BOOL YVC1_GetVer(U08 *DevVer, C08 *DrvVer);
BOOL YVC1_FlipTbl(void);
BOOL YVC1_VBWait(U32 Count);

BOOL YVC1_GetChecksum(U32 startAddr, U32 endAddr , U16 *Checksum);
BOOL Vsync_Filp_Check(void);
U16 YVC1_ReadFlag(void );

 


 
 
 
 
 
 
 
 
 
 


 
 
 

 
 
 
typedef struct {
	U16	StartCode1;						 
	U16	EndCode1;						 
	U16	StartCode2;						 
	U16	EndCode2;						 
	U16	SeqOffset;						 
	U08	PropData;						 
	U08	HalfSizeFont;					 
} T_YGFONT_TBL;

 
 
 
typedef struct {
	U08	XS;										 
	U08	XE;										 
} T_YGFONT_PDATA;

 
 
 
typedef struct {
	const T_Y643_FONT_TYPATTR	*FontTypAttr;	 
	U08							YgfontTblSize;	 
	const T_YGFONT_TBL			*YgfontTbl;	     
	const T_YGFONT_PDATA		*YgfontPData;    
} T_YGFONT_DATA;


 
 
 
 
BOOL YVC1_SetSprtAttr(U16 LyrId, const T_Y643_LYR_SPRTATTR *tY643LyrSprtAttr);
BOOL YVC1_GetSprtAttr(U16 LyrId, T_Y643_LYR_SPRTATTR *tY643LyrSprtAttr);

 
BOOL YVC1_SetFontAttr(U16 LyrId, const T_Y643_LYR_FONTATTR *tY643LyrFontAttr);
BOOL YVC1_GetFontAttr(U16 LyrId, T_Y643_LYR_FONTATTR *tY643LyrFontAttr);
BOOL YVC1_SetFontTypAttr(U08 FontTypId, const T_Y643_FONT_TYPATTR *tY643FontTypAttr);
BOOL YVC1_SetPCharCodes(U16 CharCodeId, const T_Y643_TEXT_PFONT *tY643TextPFont, U16 CharCodeNum);
BOOL YVC1_ConvFCode(U16 Utf16, const T_YGFONT_DATA *tYgfontData, U16 *Fcode);

 
U08 YVC1_GetMacroStatus(void);
BOOL YVC1_PlayMacro(U32 u32SceneAddr);
void YVC1_StopMacro(void);
void YVC1_McrSetAllLyrDisp(BOOL Disp);
void YVC1_CpuSetAllLyrDisp(BOOL Disp);
BOOL YVC1_SetSprtAttrWithParam(U16 LyrId, const T_Y643_LYR_SPRTATTR *tY643LyrSprtAttr , S16 s16x , S16 s16y, U16 u16Alpha);
void YVC1_SetHostContLyrWithFlip(U16 u16LyrStartAddr,U16 NumofLayers);



 






 






 



 
typedef struct {
	U16						StartCode;	 
	U16						EndCode;	 
	U16						SeqOffset;	 
} T_YGFONT_TBL_LYT;



 
typedef struct {
	const U08				FontTypAttr[8];	 
	const U08				YgfontTblSize;	 
	const T_YGFONT_TBL_LYT	*tYgfontTbl;	 
	const T_YGFONT_PDATA	*tYgfontPData;	 
} T_YGFONT_DATA_LYT;



 
typedef struct t_fontctrl {
	const U08				*FontAttr;		 
	const U08				*FCode;			 
	const T_YGFONT_DATA_LYT	*tYgfontData;	 
	U16						Width;			 
	U08						AlignX;			 
	U08						FontAttrNum;	 
	U16						MaxCharNum;		 
	U16						LayerIndex;		 
	const struct t_fontctrl	*tRelation;		 
} T_YGFONTCTRL;





 



 



 



 
extern const U08 PaletteData_LYT[8];



enum E_WARNING_1 {		 
	warning_1_bg_001 = 0,				 
	warning_1_bg_002,					 
	Warning_fuel_alarm,					 
	Warning_engine_oil,					 
	Warning_mission_oil,					 
	Warning_center_error,					 
	Warning_starting_safety,					 
	Warning_starting_safety_threshing,					 
	Warning_preheater,					 
	Warning_grain_emission_complete,					 
	Warning_grain_emission_blockage,					 
	Warning_can_error_1,					 
	Warning_can_error_2,					 
	Warning_can_error_3,					 
	Warning_can_error_4,					 
	Warning_can_error_5,					 
	Warning_can_error_6,					 
	Warning_can_error_7,					 
	Warning_can_error_8,					 
	Warning_can_error_9,					 
	Warning_chuyan,					 
	Warning_auger_motor,					 
	Warning_threshing_depth,					 
	Warning_chuhen_motor,					 
	Warning_chuyan_motor,					 
	Warning_battery,					 
	Warning_chuhen_cont,					 
	WARNING_1_NUM				 
};



 
extern const U08 WARNING_1_GT[27][12];		 



 
extern const U08 WARNING_1_EL[40];		 



enum E_CHECK_MODE {		 
	bg_new_1 = 0,				 
	bg_new_2,					 
	fuel_logo,					 
	fuel_level_1,					 
	fuel_level_2,					 
	fuel_level_3,					 
	fuel_level_4,					 
	fuel_level_5,					 
	fuel_level_frame,					 
	diagnol,					 
	horizontal1,					 
	horizontal2,					 
	conveyer1,					 
	conveyer2,					 
	conveyer3,					 
	conveyer4,					 
	conveyer5,					 
	conveyer6,					 
	conveyer7,					 
	conveyer8,					 
	conveyer9,					 
	conveyer10,					 
	conveyer11,					 
	conveyer12,					 
	conveyer13,					 
	conveyer14,					 
	conveyer15,					 
	tank_level1,					 
	tank_level2,					 
	tank_level3,					 
	tank_level4,					 
	tank_box,					 
	bank_level11,					 
	bank_level12,					 
	bank_level13,					 
	bank_level14,					 
	bank_level15,					 
	bank_box_1,					 
	bank_level21,					 
	bank_level22,					 
	bank_level23,					 
	bank_level24,					 
	bank_level25,					 
	bank_box_2,					 
	unitf,					 
	unite,					 
	unit_half,					 
	dash1,					 
	dash2,					 
	dash_block,					 
	check_mode_text1,					 
	check_mode_text2,					 
	check_mode_text3,					 
	check_mode_text4,					 
	check_mode_text5,					 
	CHECK_MODE_NUM				 
};



 
extern const U08 CHECK_MODE_GT[55][12];		 



 
extern const U08 CHECK_MODE_EL[82];		 



enum E_WARNING_2 {		 
	warning_2_bg_001 = 0,				 
	combine_pic,					 
	combine_pic_info,					 
	warning_gugmuli_arrow,					 
	warning_gugmuli_message,					 
	warning_gugmuli_logo,					 
	WARNING_2_NUM				 
};



 
extern const U08 WARNING_2_GT[6][12];		 



 
extern const U08 WARNING_2_EL[8];		 



enum E_WARNING_3 {		 
	warning_3_bg_001 = 0,				 
	warning_3_bg_002,					 
	Data1_value,					 
	Data2_value,					 
	Data3_value,					 
	Data4_value,					 
	unit_percent,					 
	unit_voltage,					 
	unit_on,					 
	unit_off,					 
	MH1_title,					 
	MH1_sub_title,					 
	MH1_message_1,					 
	MH2_sub_title,					 
	MH2_title,					 
	MH2_message_1,					 
	MH3_sub_title,					 
	MH3_title,					 
	MH3_message_1,					 
	MH4_title,					 
	MH4_sub_title,					 
	MH4_message_1,					 
	MH4_message_2,					 
	MH4_message_3,					 
	MH4_message_4,					 
	MH5_title,					 
	MH5_sub_title,					 
	MH5_message_1,					 
	MH5_message_2,					 
	MH5_message_3,					 
	MH5_message_4,					 
	MH6_title,					 
	MH6_sub_title,					 
	MH6_message_1,					 
	MH6_message_2,					 
	MH7_title,					 
	MH7_sub_title,					 
	MH7_message_1,					 
	MH7_message_2,					 
	MH8_title,					 
	MH8_sub_title,					 
	MH8_message_1,					 
	MH8_message_2,					 
	MH9_title,					 
	MH9_sub_title,					 
	MH9_message_1,					 
	MH10_title,					 
	MH10_sub_title,					 
	MH10_message_1,					 
	MH11_title,					 
	MH11_sub_title,					 
	MH11_message_1,					 
	MH12_title,					 
	MH12_sub_title,					 
	MH12_message_1,					 
	MH13_title,					 
	MH13_sub_title,					 
	MH13_message_1,					 
	MH13_message_2,					 
	MH14_title,					 
	MH14_sub_title,					 
	MH14_message_1,					 
	MH14_message_2,					 
	MH15_title,					 
	MH15_sub_title,					 
	MH15_message_1,					 
	MH15_message_2,					 
	MH16_title,					 
	MH16_sub_title,					 
	MH16_message_1,					 
	MH16_message_2,					 
	WARNING_3_NUM				 
};



 
extern const U08 WARNING_3_GT[71][12];		 



 
extern const U08 WARNING_3_EL[106];		 



 
extern const T_YGFONTCTRL Data1_value_FC;		 

extern const T_YGFONTCTRL Data2_value_FC;		 

extern const T_YGFONTCTRL Data3_value_FC;		 

extern const T_YGFONTCTRL Data4_value_FC;		 




enum E_UNITS {		 
	UNITS_BG_1 = 0,				 
	UNITS_BG_2,					 
	Layer_1,					 
	Layer_2,					 
	Layer_3,					 
	Layer_4,					 
	Layer_5,					 
	Layer_6,					 
	Layer_7,					 
	Layer_8,					 
	Layer_9,					 
	Layer_10,					 
	Layer_11,					 
	Layer_12,					 
	Layer_13,					 
	Layer_14,					 
	Layer_15,					 
	Layer_16,					 
	Layer_17,					 
	Layer_18,					 
	Layer_19,					 
	Layer_20,					 
	Layer_21,					 
	Layer_22,					 
	Layer_23,					 
	Layer_24,					 
	Layer_25,					 
	Layer_26,					 
	Layer_27,					 
	Layer_28,					 
	Layer_29,					 
	Layer_30,					 
	Layer_31,					 
	Layer_32,					 
	Layer_33,					 
	Layer_34,					 
	Layer_35,					 
	Layer_36,					 
	Layer_37,					 
	Layer_38,					 
	Layer_39,					 
	Layer_40,					 
	Layer_41,					 
	Layer_42,					 
	Layer_43,					 
	Layer_44,					 
	Layer_45,					 
	Layer_46,					 
	Layer_47,					 
	Layer_48,					 
	Layer_49,					 
	Layer_50,					 
	Layer_51,					 
	Layer_52,					 
	Layer_53,					 
	Layer_54,					 
	Layer_55,					 
	Layer_56,					 
	Layer_57,					 
	Layer_58,					 
	Layer_59,					 
	Layer_60,					 
	Layer_61,					 
	Layer_62,					 
	Layer_63,					 
	Layer_64,					 
	Layer_65,					 
	Layer_66,					 
	Layer_67,					 
	Layer_68,					 
	units_a,					 
	units_Cellius,					 
	units_cm,					 
	units_comm_ok,					 
	units_gradius,					 
	units_hz,					 
	units_msec,					 
	units_off,					 
	units_on,					 
	units_percent,					 
	units_rpm,					 
	units_s,					 
	units_sec,					 
	units_v,					 
	units_val,					 
	UNITS_NUM				 
};



 
extern const U08 UNITS_GT[85][12];		 



 
extern const U08 UNITS_EL[127];		 



enum E_BTN_PAGE {		 
	Btn_selected_1 = 0,				 
	Btn_selected_2,					 
	Btn_selected_3,					 
	Btn_selected_4,					 
	Btn_unselect_1,					 
	Btn_unselect_2,					 
	Btn_unselect_3,					 
	Btn_unselect_4,					 
	Btn_unselect_5,					 
	Btn_huagin,					 
	Btn_ok,					 
	Btn_select,					 
	Btn_complete,					 
	Btn_agree,					 
	Btn_change_section,					 
	Btn_previous,					 
	Btn_cancel,					 
	Btn_next_item,					 
	Btn_forward,					 
	Btn_down,					 
	Btn_decrease,					 
	Btn_previous_item,					 
	Btn_used,					 
	Btn_up,					 
	Btn_increase,					 
	Btn_back,					 
	Btn_not_used,					 
	Btn_menu,					 
	Btn_menu_1,					 
	Btn_menu_2,					 
	Btn_help,					 
	Btn_exchange,					 
	Btn_forward_text,					 
	Btn_home,					 
	Btn_pgup,					 
	Btn_pgdn,					 
	Btn_mode,					 
	Btn_escape,					 
	Btn_next_eng,					 
	Btn_camera,					 
	Btn_camera_2,					 
	Btn_camera_1,					 
	Btn_engine,					 
	Btn_mission,					 
	Btn_next_han,					 
	Btn_mode_han,					 
	SelectRow,					 
	BTN_PAGE_NUM				 
};



 
extern const U08 BTN_PAGE_GT[47][12];		 



 
extern const U08 BTN_PAGE_EL[70];		 



enum E_MAIN {		 
	BG_002 = 0,				 
	BG_001,					 
	enginecheck01,					 
	mulpulli,					 
	preheating,					 
	dpf_1,					 
	kukmulpechul,					 
	kukmul,					 
	talkuk,					 
	bon_2,					 
	chunjon,					 
	engineOil,					 
	kitaanjon,					 
	yusu,					 
	BG_kukmul,					 
	clock_box,					 
	error_box,					 
	Text,					 
	chuhenkimji,					 
	chagowgvgan,					 
	chagowkimji,					 
	Error_message_2,					 
	oil_lamp,					 
	charge_lamp,					 
	turn_right,					 
	turn_left,					 
	front_light,					 
	clock1,					 
	clock2,					 
	clock3,					 
	clock4,					 
	clock5,					 
	clock6,					 
	clock7,					 
	clock8,					 
	fuel_red,					 
	load_rate001,					 
	load_rate002,					 
	load_rate003,					 
	load_rate004,					 
	load_rate005,					 
	load_rate006,					 
	load_rate007,					 
	load_rate008,					 
	load_rate009,					 
	load_rate010,					 
	load_rate011,					 
	load_rate012,					 
	load_rate013,					 
	load_rate014,					 
	load_rate015,					 
	load_rate016,					 
	load_rate017,					 
	load_rate018,					 
	load_rate019,					 
	load_rate020,					 
	load_rate021,					 
	load_rate022,					 
	load_rate023,					 
	load_rate024,					 
	load_rate025,					 
	gokmul001,					 
	gokmul002,					 
	gokmul003,					 
	gokmul004,					 
	fuelorange001,					 
	fuelwhite001,					 
	fuelwhite002,					 
	fuelwhite003,					 
	fuelwhite004,					 
	fuelwhite005,					 
	fuelwhite006,					 
	fuelwhite007,					 
	fuelwhite008,					 
	fuelwhite009,					 
	check001Desox_inhibit_by_switch,					 
	check001Emission_failure_indicator,					 
	check002forced_Desox,					 
	check002DeSox_active,					 
	check002regen_request,					 
	MAIN_NUM				 
};



 
extern const U08 MAIN_GT[80][12];		 



 
extern const U08 MAIN_EL[119];		 



 
extern const T_YGFONTCTRL Text_FC;		 

extern const T_YGFONTCTRL Error_message_2_FC;		 




enum E_MAIN_RPM {		 
	rpm001 = 0,				 
	rpm002,					 
	rpm003,					 
	rpm004,					 
	rpm005,					 
	rpm006,					 
	rpm007,					 
	rpm008,					 
	rpm009,					 
	rpm010,					 
	rpm011,					 
	rpm012,					 
	rpm013,					 
	rpm014,					 
	rpm015,					 
	rpm016,					 
	rpm017,					 
	rpm018,					 
	rpm019,					 
	rpm020,					 
	rpm021,					 
	rpm022,					 
	rpm023,					 
	rpm024,					 
	rpm025,					 
	rpm026,					 
	rpm027,					 
	rpm028,					 
	rpm029,					 
	rpm030,					 
	rpm031,					 
	rpm032,					 
	rpm033,					 
	rpm034,					 
	rpm035,					 
	rpm036,					 
	rpm037,					 
	rpm038,					 
	rpm039,					 
	rpm040,					 
	rpm041,					 
	rpm042,					 
	rpm043,					 
	rpm044,					 
	rpm045,					 
	rpm046,					 
	rpm047,					 
	rpm048,					 
	rpm049,					 
	rpm050,					 
	rpm051,					 
	rpm052,					 
	rpm053,					 
	rpm054,					 
	rpm055,					 
	rpm056,					 
	rpm057,					 
	rpm058,					 
	rpm059,					 
	rpm060,					 
	rpm061,					 
	rpm062,					 
	rpm063,					 
	rpm064,					 
	rpm065,					 
	rpm066,					 
	rpm067,					 
	rpm068,					 
	rpm069,					 
	rpm070,					 
	rpm071,					 
	rpm072,					 
	rpm073,					 
	rpm074,					 
	rpm075,					 
	rpm076,					 
	rpm077,					 
	rpm078,					 
	rpm079,					 
	rpm080,					 
	rpm081,					 
	rpm082,					 
	rpm083,					 
	rpm084,					 
	rpm085,					 
	rpm086,					 
	rpm087,					 
	rpm088,					 
	rpm089,					 
	rpm090,					 
	rpm091,					 
	rpm092,					 
	rpm093,					 
	rpm094,					 
	rpm095,					 
	rpm096,					 
	rpm097,					 
	rpm098,					 
	rpm099,					 
	rpm100,					 
	rpm101,					 
	rpm102,					 
	rpm103,					 
	rpm104,					 
	rpm105,					 
	rpm106,					 
	rpm107,					 
	rpm108,					 
	rpm109,					 
	rpm110,					 
	rpm111,					 
	rpm112,					 
	rpm113,					 
	rpm114,					 
	rpm115,					 
	rpm116,					 
	rpm117,					 
	rpm118,					 
	rpm119,					 
	rpm120,					 
	rpm121,					 
	rpm122,					 
	rpm123,					 
	rpm124,					 
	rpm125,					 
	rpm126,					 
	rpm127,					 
	rpm128,					 
	rpm129,					 
	rpm130,					 
	rpm131,					 
	rpm132,					 
	rpm133,					 
	rpm134,					 
	rpm135,					 
	rpm136,					 
	rpm137,					 
	rpm138,					 
	rpm139,					 
	rpm140,					 
	rpm141,					 
	rpm142,					 
	rpm143,					 
	rpm144,					 
	rpm145,					 
	rpm146,					 
	rpm147,					 
	rpm148,					 
	rpm149,					 
	rpm150,					 
	rpm151,					 
	rpm152,					 
	rpm153,					 
	rpm154,					 
	rpm155,					 
	rpm156,					 
	rpm157,					 
	rpm158,					 
	rpm159,					 
	rpm160,					 
	rpm161,					 
	rpm162,					 
	rpm163,					 
	rpm164,					 
	rpm165,					 
	rpm166,					 
	rpm167,					 
	rpm168,					 
	rpm169,					 
	rpm170,					 
	rpm171,					 
	rpm172,					 
	rpm173,					 
	rpm174,					 
	rpm175,					 
	rpm176,					 
	rpm177,					 
	rpm178,					 
	rpm179,					 
	rpm180,					 
	rpm181,					 
	rpm182,					 
	rpm183,					 
	rpm184,					 
	rpm185,					 
	rpm186,					 
	rpm187,					 
	rpm188,					 
	rpm189,					 
	rpm190,					 
	rpm191,					 
	rpm192,					 
	rpm193,					 
	rpm194,					 
	rpm195,					 
	rpm196,					 
	rpm197,					 
	rpm198,					 
	rpm199,					 
	MAIN_RPM_NUM				 
};



 
extern const U08 MAIN_RPM_GT[199][12];		 



 
extern const U08 MAIN_RPM_EL[298];		 



enum E_MODE000 {		 
	MODE000_BG_1 = 0,				 
	MODE000_BG_2,					 
	MODE000_TITLE2,					 
	MODE000_TITLE1,					 
	Main_1_1_0,					 
	Main_1_1_1,					 
	Main_1_1_2,					 
	Main_1_1_3,					 
	Main_1_1_4,					 
	Main_1_1_5,					 
	Main_1_1_6,					 
	MODE000_NUM				 
};



 
extern const U08 MODE000_GT[11][12];		 



 
extern const U08 MODE000_EL[16];		 



enum E_MODE1xx {		 
	MODEbg_003 = 0,				 
	MODEbg_004,					 
	page_normal_text,					 
	page_abnormal_text,					 
	page_11_0,					 
	page_11_1,					 
	page_11_2,					 
	page_11_3,					 
	page_11_4,					 
	page_11_5,					 
	page_11_6,					 
	MODE1xx_NUM				 
};



 
extern const U08 MODE1xx_GT[11][12];		 



 
extern const U08 MODE1xx_EL[16];		 



enum E_MODE1111 {		 
	MODE1111_BG_1 = 0,				 
	MODE1111_BG_2,					 
	page_111_0,					 
	page_111_1,					 
	page_111_2,					 
	page_111_3,					 
	MODE1111_NUM				 
};



 
extern const U08 MODE1111_GT[6][12];		 



 
extern const U08 MODE1111_EL[8];		 



enum E_MODE1112 {		 
	MODE1112_BG_1 = 0,				 
	MODE1112_BG_2,					 
	page_112_0,					 
	page_112_1,					 
	page_112_2,					 
	MODE1112_NUM				 
};



 
extern const U08 MODE1112_GT[5][12];		 



 
extern const U08 MODE1112_EL[7];		 



enum E_MODE1113 {		 
	MODE1113_BG_1 = 0,				 
	MODE1113_BG_2,					 
	page_113_0,					 
	page_113_1,					 
	page_113_2,					 
	page_113_3,					 
	MODE1113_NUM				 
};



 
extern const U08 MODE1113_GT[6][12];		 



 
extern const U08 MODE1113_EL[8];		 



enum E_MODE1114 {		 
	MODE1114_BG_1 = 0,				 
	MODE1114_BG_2,					 
	page114_text,					 
	page_114_0,					 
	page_114_1,					 
	page_114_2,					 
	MODE1114_NUM				 
};



 
extern const U08 MODE1114_GT[6][12];		 



 
extern const U08 MODE1114_EL[8];		 



 
extern const T_YGFONTCTRL page114_text_FC;		 




enum E_MODE1115 {		 
	MODE1115_BG_1 = 0,				 
	MODE1115_BG_2,					 
	page115_text2,					 
	page115_text1,					 
	page_115_0,					 
	page_115_1,					 
	page_115_2,					 
	page_115_1_1,					 
	page_115_1_2,					 
	page_115_1_3,					 
	page_115_2_1,					 
	page_115_2_2,					 
	page_115_2_3,					 
	page_115_3_1,					 
	page_115_3_2,					 
	page_115_3_3,					 
	page_115_4_1,					 
	page_115_4_2,					 
	page_115_4_3,					 
	page_115_5_1,					 
	page_115_5_2,					 
	page_115_5_3,					 
	page_115_6_1,					 
	page_115_6_2,					 
	page_115_6_3,					 
	page_115_7_1,					 
	page_115_7_2,					 
	page_115_7_3,					 
	page_115_8_1,					 
	page_115_8_2,					 
	page_115_8_3,					 
	page_115_9_1,					 
	page_115_9_2,					 
	page_115_9_3,					 
	page_115_10_1,					 
	page_115_10_2,					 
	page_115_10_3,					 
	page_115_11_1,					 
	page_115_11_2,					 
	page_115_11_3,					 
	page_115_12_1,					 
	MODE1115_NUM				 
};



 
extern const U08 MODE1115_GT[41][12];		 



 
extern const U08 MODE1115_EL[61];		 



 
extern const T_YGFONTCTRL page115_text2_FC;		 

extern const T_YGFONTCTRL page115_text1_FC;		 




enum E_MODE1116 {		 
	MODE1116_BG_1 = 0,				 
	MODE1116_BG_2,					 
	page_116_0,					 
	page_116_1,					 
	page_116_1_1,					 
	page_116_2_1,					 
	page_116_3_1,					 
	MODE1116_NUM				 
};



 
extern const U08 MODE1116_GT[7][12];		 



 
extern const U08 MODE1116_EL[10];		 



enum E_MODE2xx {		 
	MODE2xx_BG_1 = 0,				 
	MODE2xx_BG_2,					 
	Setting_value_change_completed,					 
	value,					 
	page_12_0,					 
	page_12_1,					 
	page_12_2,					 
	page_12_3,					 
	page_12_4,					 
	page_12_5,					 
	page_12_6,					 
	page_121_1_text,					 
	page_121_2_text,					 
	page_121_3_text,					 
	page_121_4_text,					 
	page_121_4_2,					 
	page_121_4_3,					 
	page_121_5_text,					 
	page_121_5_2,					 
	page_121_5_3,					 
	page_121_6_text,					 
	page_121_6_2,					 
	page_121_6_3,					 
	page_121_7_text,					 
	page_121_8_text,					 
	page_121_8_2,					 
	page_121_8_3,					 
	page_121_0,					 
	page_122_1_text,					 
	page_122_2_text,					 
	page_122_3_text,					 
	page_122_4_text,					 
	page_122_5_text,					 
	page_122_6_text,					 
	page_122_6_2,					 
	page_122_6_3,					 
	page_122_7_text,					 
	page_122_7_2,					 
	page_122_7_3,					 
	page_122_0,					 
	page_123_1_text,					 
	page_123_2_text,					 
	page_123_3_text,					 
	page_123_4_text,					 
	page_123_5_text,					 
	page_123_6_text,					 
	page_123_7_text,					 
	page_123_8_text,					 
	page_123_0,					 
	page_124_1_text,					 
	page_124_0,					 
	page_125_10_0,					 
	page_125_10_1,					 
	page_125_10_2,					 
	page_125_9_0,					 
	page_125_8_0,					 
	page_125_7_0,					 
	page_125_6_0,					 
	page_125_6_1,					 
	page_125_6_2,					 
	page_125_5_0,					 
	page_125_4_0,					 
	page_125_3_0,					 
	page_125_3_1,					 
	page_125_3_2,					 
	page_125_2_0,					 
	page_125_2_1,					 
	page_125_2_2,					 
	page_125_1_0,					 
	page_125_1_1,					 
	page_125_1_2,					 
	page_125_1_3,					 
	page_125_1_4,					 
	page_125_0,					 
	page_125_1,					 
	page_126_1_text,					 
	page_126_2_text,					 
	page_126_0,					 
	MODE2xx_NUM				 
};



 
extern const U08 MODE2xx_GT[78][12];		 



 
extern const U08 MODE2xx_EL[116];		 



 
extern const T_YGFONTCTRL value_FC;		 




enum E_MODE3xx {		 
	MODE3xx_BG_1 = 0,				 
	MODE3xx_BG_2,					 
	page_13_0,					 
	page_13_1,					 
	page_13_2,					 
	page_13_3,					 
	page_13_4,					 
	page_13_5,					 
	page_13_6,					 
	MODE3xx_NUM				 
};



 
extern const U08 MODE3xx_GT[9][12];		 



 
extern const U08 MODE3xx_EL[13];		 



enum E_MODE31x {		 
	MODE31x_BG_1 = 0,				 
	MODE31x_BG_2,					 
	can_raw_data_1,					 
	can_raw_data_2,					 
	can_raw_data_3,					 
	can_raw_data_4,					 
	can_raw_data_5,					 
	can_raw_data_6,					 
	can_raw_data_7,					 
	can_raw_data_8,					 
	can_raw_data_9,					 
	can_raw_data_10,					 
	can_raw_data_11,					 
	can_raw_data_12,					 
	page_131_0,					 
	page_131_1,					 
	page_131_2,					 
	page_131_3,					 
	page_131_4,					 
	page_131_5,					 
	MODE31x_NUM				 
};



 
extern const U08 MODE31x_GT[20][12];		 



 
extern const U08 MODE31x_EL[29];		 



 
extern const T_YGFONTCTRL can_raw_data_1_FC;		 

extern const T_YGFONTCTRL can_raw_data_2_FC;		 

extern const T_YGFONTCTRL can_raw_data_3_FC;		 

extern const T_YGFONTCTRL can_raw_data_4_FC;		 

extern const T_YGFONTCTRL can_raw_data_5_FC;		 

extern const T_YGFONTCTRL can_raw_data_6_FC;		 

extern const T_YGFONTCTRL can_raw_data_7_FC;		 

extern const T_YGFONTCTRL can_raw_data_8_FC;		 

extern const T_YGFONTCTRL can_raw_data_9_FC;		 

extern const T_YGFONTCTRL can_raw_data_10_FC;		 

extern const T_YGFONTCTRL can_raw_data_11_FC;		 

extern const T_YGFONTCTRL can_raw_data_12_FC;		 




enum E_MODE311 {		 
	MODE311_BG_1 = 0,				 
	MODE311_BG_2,					 
	page_1311_0,					 
	page_1311_1,					 
	page_1311_2,					 
	page_1311_3,					 
	page_13111_0,					 
	page_13111_1,					 
	page_13111_2,					 
	page_13111_3,					 
	page_13111_4,					 
	page_13111_5,					 
	page_13111_6,					 
	page_13111_7,					 
	page_13111_8,					 
	page_13111_9,					 
	page_13111_10,					 
	page_13111_11,					 
	page_13111_12,					 
	page_13111_13,					 
	page_13111_14,					 
	page_13111_15,					 
	page_13111_16,					 
	page_13111_17,					 
	page_13111_18,					 
	page_13111_19,					 
	page_13111_20,					 
	page_13111_21,					 
	page_13111_22,					 
	page_13111_23,					 
	page_13111_24,					 
	page_13111_25,					 
	page_13111_26,					 
	page_13111_27,					 
	page_13111_28,					 
	page_13111_29,					 
	page_13111_30,					 
	page_13111_31,					 
	page_13111_32,					 
	page_13111_33,					 
	page_13111_34,					 
	page_13111_35,					 
	page_13111_36,					 
	page_13111_37,					 
	page_13111_38,					 
	page_13111_39,					 
	page_13111_40,					 
	page_13111_41,					 
	page_13111_42,					 
	page_13111_43,					 
	page_13111_44,					 
	page_13111_45,					 
	page_13111_46,					 
	page_13111_47,					 
	page_13111_48,					 
	page_13111_49,					 
	page_13111_50,					 
	page_13111_51,					 
	page_13111_52,					 
	page_13111_53,					 
	page_13111_54,					 
	page_13111_55,					 
	page_13111_56,					 
	page_13111_total,					 
	page_13112_0,					 
	page_13112_1,					 
	page_13112_2,					 
	page_13112_3,					 
	page_13112_4,					 
	page_13112_5,					 
	page_13112_6,					 
	page_13112_7,					 
	page_13112_8,					 
	page_13112_9,					 
	page_13112_10,					 
	page_13112_11,					 
	page_13112_12,					 
	page_13112_13,					 
	page_13112_14,					 
	page_13112_15,					 
	page_13112_16,					 
	page_13112_17,					 
	page_13112_18,					 
	page_13112_19,					 
	page_13112_total,					 
	page_13113_0,					 
	page_13113_1,					 
	page_13113_2,					 
	page_13113_3,					 
	page_13113_4,					 
	page_13113_5,					 
	page_13113_6,					 
	page_13113_total,					 
	MODE311_NUM				 
};



 
extern const U08 MODE311_GT[93][12];		 



 
extern const U08 MODE311_EL[139];		 



enum E_MODE312 {		 
	MODE312_BG_1 = 0,				 
	MODE312_BG_2,					 
	page_1312_0,					 
	page_1312_1,					 
	page_1312_2,					 
	page_1312_3,					 
	page_1312_4,					 
	page_1312_5,					 
	page_1312_6,					 
	page_1312_7,					 
	page_1312_8,					 
	page_1312_9,					 
	page_1312_total,					 
	MODE312_NUM				 
};



 
extern const U08 MODE312_GT[13][12];		 



 
extern const U08 MODE312_EL[19];		 



enum E_MODE313 {		 
	MODE313_BG_1 = 0,				 
	MODE313_BG_2,					 
	page_1313_0,					 
	page_1313_1,					 
	page_1313_2,					 
	page_1313_3,					 
	page_1313_4,					 
	page_1313_5,					 
	page_1313_6,					 
	page_1313_7,					 
	page_1313_8,					 
	page_1313_total,					 
	MODE313_NUM				 
};



 
extern const U08 MODE313_GT[12][12];		 



 
extern const U08 MODE313_EL[17];		 



enum E_MODE314 {		 
	MODE314_BG_1 = 0,				 
	MODE314_BG_2,					 
	page_1314_0,					 
	page_1314_1,					 
	page_1314_2,					 
	page_1314_3,					 
	page_13143_0,					 
	page_13143_1,					 
	page_13143_2,					 
	page_13143_3,					 
	page_13143_4,					 
	page_13142_0,					 
	page_13142_1,					 
	page_13142_2,					 
	page_13142_3,					 
	page_13142_4,					 
	page_13142_total,					 
	page_13141_0,					 
	page_13141_1,					 
	page_13141_2,					 
	page_13141_3,					 
	page_13141_4,					 
	page_13141_5,					 
	page_13141_6,					 
	page_13141_7,					 
	page_13141_8,					 
	page_13141_9,					 
	page_13141_10,					 
	page_13141_11,					 
	page_13141_12,					 
	page_13141_13,					 
	page_13141_14,					 
	page_13141_15,					 
	page_13141_16,					 
	page_13141_17,					 
	page_13141_18,					 
	page_13141_19,					 
	page_13141_20,					 
	page_13141_21,					 
	page_13141_22,					 
	page_13141_23,					 
	page_13141_24,					 
	page_13141_25,					 
	page_13141_26,					 
	page_13141_27,					 
	page_13141_28,					 
	page_13141_29,					 
	page_13141_30,					 
	page_13141_31,					 
	page_13141_32,					 
	page_13141_33,					 
	page_13141_34,					 
	page_13141_35,					 
	page_13141_total,					 
	MODE314_NUM				 
};



 
extern const U08 MODE314_GT[54][12];		 



 
extern const U08 MODE314_EL[80];		 



enum E_MODE315 {		 
	MODE315_BG_1 = 0,				 
	MODE315_BG_2,					 
	page_1315_0,					 
	page_1315_1,					 
	page_1315_2,					 
	page_1315_3,					 
	page_1315_4,					 
	page_1315_5,					 
	page_1315_6,					 
	page_1315_7,					 
	page_1315_8,					 
	page_1315_9,					 
	page_1315_10,					 
	page_1315_11,					 
	page_1315_12,					 
	page_1315_13,					 
	page_1315_14,					 
	page_1315_15,					 
	page_1315_16,					 
	page_1315_17,					 
	page_1315_18,					 
	page_1315_19,					 
	page_1315_20,					 
	page_1315_21,					 
	page_1315_22,					 
	page_1315_23,					 
	page_1315_24,					 
	page_1315_25,					 
	page_1315_26,					 
	page_1315_27,					 
	page_1315_28,					 
	page_1315_29,					 
	page_1315_30,					 
	page_1315_31,					 
	page_1315_32,					 
	page_1315_33,					 
	page_1315_34,					 
	page_1315_35,					 
	page_1315_36,					 
	page_1315_37,					 
	page_1315_38,					 
	page_1315_39,					 
	page_1315_40,					 
	page_1315_41,					 
	page_1315_42,					 
	page_1315_43,					 
	page_1315_44,					 
	page_1315_45,					 
	page_1315_46,					 
	page_1315_47,					 
	page_1315_48,					 
	page_1315_49,					 
	page_1315_50,					 
	page_1315_51,					 
	page_1315_52,					 
	page_1315_53,					 
	page_1315_54,					 
	page_1315_55,					 
	page_1315_56,					 
	page_1315_57,					 
	page_1315_58,					 
	page_1315_59,					 
	page_1315_60,					 
	page_1315_61,					 
	page_1315_62,					 
	page_1315_63,					 
	page_1315_64,					 
	page_1315_65,					 
	page_1315_66,					 
	page_1315_67,					 
	page_1315_68,					 
	page_1315_69,					 
	page_1315_70,					 
	page_1315_71,					 
	page_1315_72,					 
	page_1315_73,					 
	page_1315_74,					 
	page_1315_75,					 
	page_1315_76,					 
	page_1315_77,					 
	page_1315_78,					 
	page_1315_79,					 
	page_1315_80,					 
	page_1315_81,					 
	page_1315_82,					 
	page_1315_83,					 
	page_1315_84,					 
	page_1315_85,					 
	page_1315_86,					 
	page_1315_87,					 
	page_1315_88,					 
	page_1315_89,					 
	page_1315_90,					 
	page_1315_91,					 
	page_1315_92,					 
	page_1315_93,					 
	page_1315_94,					 
	page_1315_95,					 
	page_1315_96,					 
	page_1315_97,					 
	page_1315_98,					 
	page_1315_99,					 
	page_1315_100,					 
	page_1315_101,					 
	page_1315_102,					 
	page_1315_103,					 
	page_1315_104,					 
	page_1315_105,					 
	page_1315_106,					 
	page_1315_107,					 
	page_1315_108,					 
	page_1315_109,					 
	page_1315_110,					 
	page_1315_111,					 
	page_1315_112,					 
	page_1315_113,					 
	page_1315_114,					 
	page_1315_115,					 
	page_1315_116,					 
	page_1315_117,					 
	page_1315_118,					 
	page_1315_119,					 
	page_1315_120,					 
	page_1315_121,					 
	page_1315_122,					 
	page_1315_123,					 
	page_1315_124,					 
	page_1315_125,					 
	page_1315_126,					 
	page_1315_127,					 
	page_1315_128,					 
	page_1315_129,					 
	page_1315_130,					 
	page_1315_131,					 
	page_1315_132,					 
	page_1315_133,					 
	page_1315_134,					 
	page_1315_135,					 
	page_1315_136,					 
	page_1315_137,					 
	page_1315_138,					 
	page_1315_139,					 
	page_1315_140,					 
	page_1315_141,					 
	page_1315_total,					 
	MODE315_NUM				 
};



 
extern const U08 MODE315_GT[145][12];		 



 
extern const U08 MODE315_EL[217];		 



enum E_MODE32x {		 
	MODE32x_BG_1 = 0,				 
	MODE32x_BG_2,					 
	can_data_ck1,					 
	can_data_ck2,					 
	can_data_ck3,					 
	can_data_ck4,					 
	can_data_ck5,					 
	page_132_0,					 
	page_132_1,					 
	page_132_2,					 
	page_132_3,					 
	page_132_4,					 
	page_132_5,					 
	page_132_6,					 
	page_132_7,					 
	page_132_8,					 
	page_132_9,					 
	page_132_10,					 
	page_132_11,					 
	page_132_12,					 
	page_132_13,					 
	page_132_14,					 
	page_132_16,					 
	page_132_17,					 
	page_132_18,					 
	page_132_19,					 
	page_132_20,					 
	page_132_21,					 
	page_132_22,					 
	page_132_23,					 
	page_132_24,					 
	MODE32x_NUM				 
};



 
extern const U08 MODE32x_GT[31][12];		 



 
extern const U08 MODE32x_EL[46];		 



 
extern const T_YGFONTCTRL can_data_ck1_FC;		 

extern const T_YGFONTCTRL can_data_ck2_FC;		 

extern const T_YGFONTCTRL can_data_ck3_FC;		 

extern const T_YGFONTCTRL can_data_ck4_FC;		 

extern const T_YGFONTCTRL can_data_ck5_FC;		 




enum E_MODE33x {		 
	MODE33x_BG_1 = 0,				 
	MODE33x_BG_2,					 
	can_data_eg4,					 
	can_data_eg3,					 
	can_data_eg2,					 
	can_data_eg1,					 
	page_1332_1,					 
	page_1331_1,					 
	page_133_0,					 
	page_133_1,					 
	page_133_2,					 
	page_133_3,					 
	page_133_4,					 
	page_133_5,					 
	page_133_6,					 
	page_133_7,					 
	page_133_8,					 
	MODE33x_NUM				 
};



 
extern const U08 MODE33x_GT[17][12];		 



 
extern const U08 MODE33x_EL[25];		 



 
extern const T_YGFONTCTRL can_data_eg4_FC;		 

extern const T_YGFONTCTRL can_data_eg3_FC;		 

extern const T_YGFONTCTRL can_data_eg2_FC;		 

extern const T_YGFONTCTRL can_data_eg1_FC;		 




enum E_MODE34x {		 
	MODE34x_BG_1 = 0,				 
	MODE34x_BG_2,					 
	page_134_0,					 
	page_134_1,					 
	page_134_2,					 
	page_134_3,					 
	page_134_4,					 
	page_134_5,					 
	page_134_6,					 
	page_134_7,					 
	page_134_8,					 
	page_134_9,					 
	page_134_10,					 
	page_134_11,					 
	page_134_12,					 
	MODE34x_NUM				 
};



 
extern const U08 MODE34x_GT[15][12];		 



 
extern const U08 MODE34x_EL[22];		 



enum E_MODE35x {		 
	MODE35x_BG_1 = 0,				 
	MODE35x_BG_2,					 
	page_135_0,					 
	page_135_1,					 
	page_135_2,					 
	page_135_3,					 
	page_135_4,					 
	page_135_5,					 
	page_135_6,					 
	page_135_7,					 
	page_135_8,					 
	MODE35x_NUM				 
};



 
extern const U08 MODE35x_GT[11][12];		 



 
extern const U08 MODE35x_EL[16];		 



enum E_MODE36x {		 
	MODE36x_BG_1 = 0,				 
	MODE36x_BG_2,					 
	page_1361_0,					 
	page_1361_1,					 
	page_1361_2,					 
	page_136_0,					 
	MODE36x_NUM				 
};



 
extern const U08 MODE36x_GT[6][12];		 



 
extern const U08 MODE36x_EL[8];		 



enum E_MODE4xx {		 
	MODE4xx_BG_1 = 0,				 
	MODE4xx_BG_2,					 
	page_14_1,					 
	MODE4xx_NUM				 
};



 
extern const U08 MODE4xx_GT[3][12];		 



 
extern const U08 MODE4xx_EL[4];		 



enum E_MODE5xx {		 
	MODE5xx_BG_1 = 0,				 
	MODE5xx_BG_2,					 
	Time,					 
	digits_0,					 
	digits_1,					 
	digits_2,					 
	digits_3,					 
	digits_4,					 
	digits_5,					 
	digits_6,					 
	digits_7,					 
	digits_8,					 
	digits_9,					 
	digits_bg,					 
	page_15_0,					 
	page_15_1,					 
	page_15_1_1,					 
	page_15_1_2,					 
	page_15_1_3,					 
	page_15_1_4,					 
	page_15_1_5,					 
	page_15_2_0,					 
	page_15_2_1,					 
	page_15_2_2,					 
	page_15_3_0,					 
	page_15_3_1,					 
	page_15_3_2,					 
	page_15_4_0,					 
	page_15_5_0,					 
	page_15_6_0,					 
	MODE5xx_NUM				 
};



 
extern const U08 MODE5xx_GT[30][12];		 



 
extern const U08 MODE5xx_EL[44];		 



 
extern const T_YGFONTCTRL Time_FC;		 




enum E_MODE6xx {		 
	MODE6xx_BG_1 = 0,				 
	MODE6xx_BG_2,					 
	lcd3_value,					 
	lcd2_value,					 
	lcd1_value,					 
	page6_lcd_1,					 
	page6_lcd_4,					 
	page6_lcd_0,					 
	page6_lcd_2,					 
	page6_lcd_5,					 
	page6_lcd_select_1,					 
	page6_lcd_select_2,					 
	page6_lcd_select_3,					 
	MODE6xx_NUM				 
};



 
extern const U08 MODE6xx_GT[13][12];		 



 
extern const U08 MODE6xx_EL[19];		 



 
extern const T_YGFONTCTRL lcd3_value_FC;		 

extern const T_YGFONTCTRL lcd2_value_FC;		 

extern const T_YGFONTCTRL lcd1_value_FC;		 



 
 
 
 
 
 
 
 
 
 


 
 
 








 
 
 

U16 ConvFCodeString(const T_YGFONTCTRL *t_fontctrl, U08 *pu1_Utf16, U08 u1_Utf16Num,U08 *pu1_FCode, U16 u2_FCodeByteNum);
U16 ConvFCodeString_utf8(const T_YGFONTCTRL *t_fontctrl, C08 *pu1_Utf8, U16 u1_Utf16Num,U08 *pu1_FCode, U16 u2_FCodeByteNum);
U16 YVC1_SetChar(T_YGFONTCTRL tYgfontCtrl , C08 *text );


 


 
 
 



 


 
 
 
 
 
 															
 
static U08 GetFSize(U08 *pu1_FontTypeAttr)
{
	U08	u1_FSZX;
	U08	u1_FSZY;
	U08	u1_FSize;
	u1_FSize = (U08)(0xFFFFFFFF);

	if(pu1_FontTypeAttr != ((void *)0)){
		 
		u1_FSZX = pu1_FontTypeAttr[(U08)(4)] & (U08)(0x3F);
		u1_FSZX += 1;
		u1_FSize = u1_FSZX;
		 
		u1_FSZY = pu1_FontTypeAttr[(U08)(5)] & (U08)(0x3F);
		u1_FSZY += 1;

		if(u1_FSize > u1_FSZY){
			u1_FSize = u1_FSZY;
		}
	}
	return u1_FSize;
}
 
 
 
 
 
 															
 

static U08 *GetFontTypeAttr(const T_YGFONTCTRL *t_fontctrl)
{
	U08* pu1_FontTypAttr;

	pu1_FontTypAttr = ((void *)0);
	 
	if(t_fontctrl != ((void *)0)){
		if(t_fontctrl->tYgfontData != ((void *)0)){
			pu1_FontTypAttr = (U08 *)&t_fontctrl->tYgfontData->FontTypAttr[0];
		}
	}
	return pu1_FontTypAttr;
}


 
 
 


 
 
 															
 
static U08 GetXsXe(U16 u2_FCode, const T_YGFONT_DATA_LYT *tYgfontData, U08 *pu1_XS, U08 *pu1_XE)
{
	U08						u1_Ret;
	const T_YGFONT_PDATA	*tYgfontPData;

	u1_Ret = (U08)(1);

	if((tYgfontData != ((void *)0)) && (pu1_XS != ((void *)0)) && (pu1_XE != ((void *)0))){
		 
		 
		 
		tYgfontPData = &tYgfontData->tYgfontPData[0];
		if(tYgfontPData != ((void *)0)){
			*pu1_XS = tYgfontPData[u2_FCode].XS;
			*pu1_XE = tYgfontPData[u2_FCode].XE;

			u1_Ret = (U08)(0);
		}
	}
	return u1_Ret;
}

 
 
 


 
 
 															
 

static U08 ConvFCode(U16 u2_Utf16, const T_YGFONT_DATA_LYT *tYgfontData, U16 *u2_FCode)
{
	U08	u1_Ret;
	U08	u1_Found;
	U08	u1_YgfntTblSize;
	U08	u1_TblCnt;
	const T_YGFONT_TBL_LYT   *tYgfontTbl;

	u1_Ret		= (U08)(1);
	u1_Found	= (U08)(0);

	if((tYgfontData != ((void *)0)) || (u2_FCode != ((void *)0))){
		tYgfontTbl		= &tYgfontData->tYgfontTbl[0];
		u1_YgfntTblSize	= tYgfontData->YgfontTblSize;

		 
		 
		 
		for(u1_TblCnt=0; (u1_TblCnt<u1_YgfntTblSize)&&(u1_Found==(U08)(0)); u1_TblCnt++)
		{
			if( (u2_Utf16 >= tYgfontTbl[u1_TblCnt].StartCode) &&
			    (u2_Utf16 <= tYgfontTbl[u1_TblCnt].EndCode  ) )
			{
				u1_Found = (U08)(1);
				*u2_FCode = tYgfontTbl[u1_TblCnt].SeqOffset + 
                                         (u2_Utf16 - tYgfontTbl[u1_TblCnt].StartCode);
			}
		}
		if(u1_Found == (U08)(1))
		{
			u1_Ret = (U08)(0);
		}
	}
	return u1_Ret;
}



 
 
 
 
 
 
 
 
 
 															
 

U16 ConvFCodeString(const T_YGFONTCTRL *t_fontctrl, U08 *pu1_Utf16, U08 u1_Utf16Num,U08 *pu1_FCode, U16 u2_FCodeByteNum)
{
	U08	u1_error;
	U08	u1_Utf16Cnt;
	U16	u2_Utf16;
	U16	u2_FCode;
	U08	u1_XS;
	U08	u1_XE;
	U16	u2_ByteCnt;
	U16	u2_TextWidth;
	U08	u1_FCodeStr[(64) * (4)];
	U16	u2_DispWidth;
	U16	u2_SpaceDot;
	U16	u2_FCode_Space;
	U08	*pu1_FontTypeAttr;
	U08	u1_FontXSize;
	U16	u2_SetFCodeByte;
	U16	u2_SetDataByte;


	u1_error		= (U08)(1);
	if(t_fontctrl != ((void *)0)){
		if((pu1_Utf16 != ((void *)0)) && (u1_Utf16Num <= (U08)(64))){
			if((pu1_FCode != ((void *)0)) && ((u2_FCodeByteNum % 4) == 0)){
				u1_error = (U08)(0);
			}
		}
	}

	 
	 
	 
	if(u1_error == (U08)(0)){
		u2_ByteCnt		= 0;
		u2_TextWidth	= 0;
		for(u1_Utf16Cnt=0; (u1_Utf16Cnt<u1_Utf16Num)&&(u1_error==(U08)(0)); u1_Utf16Cnt++){
			 
			u2_Utf16 = ((U16)pu1_Utf16[u1_Utf16Cnt*2]<<(U08)(8)) | pu1_Utf16[u1_Utf16Cnt*2+1];
			u1_error = ConvFCode(u2_Utf16, t_fontctrl->tYgfontData, &u2_FCode);
			if(u1_error == (U08)(0)){
				 
				u1_error = GetXsXe(u2_FCode, t_fontctrl->tYgfontData, &u1_XS, &u1_XE);
				if(u1_error == (U08)(0)){
					u1_FCodeStr[u2_ByteCnt++] = (U08)(u2_FCode >> (U08)(8));
					u1_FCodeStr[u2_ByteCnt++] = (U08)u2_FCode;
					u1_FCodeStr[u2_ByteCnt++] = u1_XS;
					u1_FCodeStr[u2_ByteCnt++] = u1_XE;
					u2_TextWidth += (u1_XE - u1_XS) + 1;
				}
			}
		}
	}

	 
	 
	 
	if(u1_error == (U08)(0)){
		u2_DispWidth = t_fontctrl->Width;
	}

	 
	 
	 
	if(u1_error == (U08)(0)){
		switch(t_fontctrl->AlignX)
		{
		case (1):
			if(u2_DispWidth > u2_TextWidth){
				u2_SpaceDot = (u2_DispWidth - u2_TextWidth) / 2;
			}
			break;
		case (2):
			if(u2_DispWidth > u2_TextWidth){
				u2_SpaceDot = u2_DispWidth - u2_TextWidth;
			}
			break;
		case (0):
		default:
			u2_SpaceDot = 0;
			break;
		}
	}

	 
	 
	 
	if(u1_error == (U08)(0)){
		u1_error = ConvFCode((U16)(0x0020), t_fontctrl->tYgfontData, &u2_FCode_Space);
	}

	 
	 
	 
	if(u1_error == (U08)(0)){
		pu1_FontTypeAttr = GetFontTypeAttr(t_fontctrl);
		if(pu1_FontTypeAttr != ((void *)0)){
			u1_FontXSize = GetFSize(pu1_FontTypeAttr);
			if(u1_FontXSize == (U08)(0xFFFFFFFF)){
				u1_error = (U08)(1);
			}
		}
	}

	 
	 
	 
	u2_SetFCodeByte	= 0;
	u2_SetDataByte	= 0;
	if(u1_error == (U08)(0)){

		 
		while((u2_SpaceDot > 0) && (u2_SetDataByte < u2_FCodeByteNum)){
			pu1_FCode[u2_SetDataByte + 0] = (U08)(u2_FCode_Space >> (U08)(8));
			pu1_FCode[u2_SetDataByte + 1] = (U08)u2_FCode_Space;
			pu1_FCode[u2_SetDataByte + 2] = 0;
			if(u2_SpaceDot > u1_FontXSize){
				pu1_FCode[u2_SetDataByte + 3] = u1_FontXSize - 1;
				u2_SpaceDot -= u1_FontXSize;
			}
			else{
				pu1_FCode[u2_SetDataByte + 3] = (U08)(u2_SpaceDot - 1);
				u2_SpaceDot -= u2_SpaceDot;
			}
			u2_SetDataByte += 4;
		}

		 
		for(u1_Utf16Cnt=0; u1_Utf16Cnt < u1_Utf16Num; u1_Utf16Cnt++){
			if(u2_SetDataByte < u2_FCodeByteNum){
				pu1_FCode[u2_SetDataByte + 0] = u1_FCodeStr[u2_SetFCodeByte + 0];
				pu1_FCode[u2_SetDataByte + 1] = u1_FCodeStr[u2_SetFCodeByte + 1];
				pu1_FCode[u2_SetDataByte + 2] = u1_FCodeStr[u2_SetFCodeByte + 2];
				pu1_FCode[u2_SetDataByte + 3] = u1_FCodeStr[u2_SetFCodeByte + 3];
				u2_SetDataByte += 4;
				u2_SetFCodeByte+= 4;
			}
		}

		 
		while(u2_SetDataByte < u2_FCodeByteNum){
			pu1_FCode[u2_SetDataByte + 0] = (U08)(u2_FCode_Space >> (U08)(8));
			pu1_FCode[u2_SetDataByte + 1] = (U08)u2_FCode_Space;
			pu1_FCode[u2_SetDataByte + 2] = 0;
			pu1_FCode[u2_SetDataByte + 3] = u1_FontXSize - 1;
			u2_SetDataByte += 4;
		}
	}
	return u2_SetDataByte;
}
 




 
 
 
 
 
 
 
 
 
 															
 

U16 ConvFCodeString_utf8(const T_YGFONTCTRL *t_fontctrl, C08 *pu1_Utf8, U16 u1_Utf16Num,U08 *pu1_FCode, U16 u2_FCodeByteNum)
{
	U08	u1_error;
	U08	u1_Utf16Cnt;
	U16	u2_Utf16;
	U16	u2_FCode;
	U08	u1_XS;
	U08	u1_XE;
	U16	u2_ByteCnt;
	U16	u2_TextWidth;
	U08	u1_FCodeStr[(64) * (4)];
	U16	u2_DispWidth;
	U16	u2_SpaceDot;
	U16	u2_FCode_Space;
	U08	*pu1_FontTypeAttr;
	U08	u1_FontXSize;
	U16	u2_SetFCodeByte;
	U16	u2_SetDataByte;


	u1_error		= (U08)(1);
	if(t_fontctrl != ((void *)0)){
		if((pu1_Utf8 != ((void *)0)) && (u1_Utf16Num <= (U08)(64))){
			if((pu1_FCode != ((void *)0)) && ((u2_FCodeByteNum % 4) == 0)){
				u1_error = (U08)(0);
			}
		}
	}

	 
	 
	 
	if(u1_error == (U08)(0)){
		u2_ByteCnt		= 0;
		u2_TextWidth	= 0;
		for(u1_Utf16Cnt=0; (u1_Utf16Cnt<u1_Utf16Num)&&(u1_error==(U08)(0)); u1_Utf16Cnt++){
			 
			u2_Utf16 = 0x00FF&(U16)(pu1_Utf8[u1_Utf16Cnt]);
			u1_error = ConvFCode(u2_Utf16, t_fontctrl->tYgfontData, &u2_FCode);
			if(u1_error == (U08)(0)){
				 
				u1_error = GetXsXe(u2_FCode, t_fontctrl->tYgfontData, &u1_XS, &u1_XE);
				if(u1_error == (U08)(0)){
					u1_FCodeStr[u2_ByteCnt++] = (U08)(u2_FCode >> (U08)(8));
					u1_FCodeStr[u2_ByteCnt++] = (U08)u2_FCode;
					u1_FCodeStr[u2_ByteCnt++] = u1_XS;
					u1_FCodeStr[u2_ByteCnt++] = u1_XE;
					u2_TextWidth += (u1_XE - u1_XS) + 1;
				}
			}
		}
	}

	 
	 
	 
	if(u1_error == (U08)(0)){
		u2_DispWidth = t_fontctrl->Width;
	}

	 
	 
	 
	if(u1_error == (U08)(0)){
		switch(t_fontctrl->AlignX)
		{
		case (1):
			if(u2_DispWidth > u2_TextWidth){
				u2_SpaceDot = (u2_DispWidth - u2_TextWidth) / 2;
			}
			break;
		case (2):
			if(u2_DispWidth > u2_TextWidth){
				u2_SpaceDot = u2_DispWidth - u2_TextWidth;
			}
			break;
		case (0):
		default:
			u2_SpaceDot = 0;
			break;
		}
	}

	 
	 
	 
	if(u1_error == (U08)(0)){
		u1_error = ConvFCode((U16)(0x0020), t_fontctrl->tYgfontData, &u2_FCode_Space);
	}

	 
	 
	 
	if(u1_error == (U08)(0)){
		pu1_FontTypeAttr = GetFontTypeAttr(t_fontctrl);
		if(pu1_FontTypeAttr != ((void *)0)){
			u1_FontXSize = GetFSize(pu1_FontTypeAttr);
			if(u1_FontXSize == (U08)(0xFFFFFFFF)){
				u1_error = (U08)(1);
			}
		}
	}

	 
	 
	 
	u2_SetFCodeByte	= 0;
	u2_SetDataByte	= 0;
	if(u1_error == (U08)(0)){

		 
		while((u2_SpaceDot > 0) && (u2_SetDataByte < u2_FCodeByteNum)){
			pu1_FCode[u2_SetDataByte + 0] = (U08)(u2_FCode_Space >> (U08)(8));
			pu1_FCode[u2_SetDataByte + 1] = (U08)u2_FCode_Space;
			pu1_FCode[u2_SetDataByte + 2] = 0;
			if(u2_SpaceDot > u1_FontXSize){
				pu1_FCode[u2_SetDataByte + 3] = u1_FontXSize - 1;
				u2_SpaceDot -= u1_FontXSize;
			}
			else{
				pu1_FCode[u2_SetDataByte + 3] = (U08)(u2_SpaceDot - 1);
				u2_SpaceDot -= u2_SpaceDot;
			}
			u2_SetDataByte += 4;
		}

		 
		for(u1_Utf16Cnt=0; u1_Utf16Cnt < u1_Utf16Num; u1_Utf16Cnt++){
			if(u2_SetDataByte < u2_FCodeByteNum){
				pu1_FCode[u2_SetDataByte + 0] = u1_FCodeStr[u2_SetFCodeByte + 0];
				pu1_FCode[u2_SetDataByte + 1] = u1_FCodeStr[u2_SetFCodeByte + 1];
				pu1_FCode[u2_SetDataByte + 2] = u1_FCodeStr[u2_SetFCodeByte + 2];
				pu1_FCode[u2_SetDataByte + 3] = u1_FCodeStr[u2_SetFCodeByte + 3];
				u2_SetDataByte += 4;
				u2_SetFCodeByte+= 4;
			}
		}

		 
		while(u2_SetDataByte < u2_FCodeByteNum){
			pu1_FCode[u2_SetDataByte + 0] = (U08)(u2_FCode_Space >> (U08)(8));
			pu1_FCode[u2_SetDataByte + 1] = (U08)u2_FCode_Space;
			pu1_FCode[u2_SetDataByte + 2] = 0;
			pu1_FCode[u2_SetDataByte + 3] = u1_FontXSize - 1;
			u2_SetDataByte += 4;
		}
	}
	return u2_TextWidth;

}

































 
 
 
 
 
 
 
 
U16 YVC1_SetChar(T_YGFONTCTRL tYgfontCtrl , C08 *text )
{
	U08 t_ConvFcode[4*40];
	U16 u16RetPos = 0;
	U16 u16Addr = 0;
	U16 u16id = 0;
	
	if( tYgfontCtrl.MaxCharNum*4 > 4*40 )
	{
		
		return 0;
	}
	
	u16Addr = (((U16)(tYgfontCtrl.FontAttr[7] & 0xf0) << 4 ) & 0xff00) |  tYgfontCtrl.FontAttr[8];
	u16Addr = u16Addr << 1;
	u16id = ((u16Addr - ((0x0C9C)) )/ (4))  ;
	
	u16RetPos = ConvFCodeString_utf8(&tYgfontCtrl, text, strlen( text ),t_ConvFcode ,tYgfontCtrl.MaxCharNum*4);
	YVC1_SetPCharCodes(u16id , (const T_Y643_TEXT_PFONT *)(t_ConvFcode), tYgfontCtrl.MaxCharNum);

	return u16RetPos;
}
 



