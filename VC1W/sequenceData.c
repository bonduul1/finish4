/******************************
	Sequence Data
	Filename	: sequenceData.c
	Format Ver	: 1.4.0.60
	Date		: 2025-07-07 오후 1:29:31 +09:00
*******************************/

#include "Yvc1.h"

#define GENTBL_START_ADDR	(0x0000)
#define GENTBL_END_ADDR		(0x0000)

#define PLTTBL_START_ADDR	(0x0300)
#define PLTTBL_END_ADDR		(0x0000)

/*----------------------------------------
 *	 Sequence Information Data
 *----------------------------------------*/

enum SequenceName {
	QN__CPU_WARNING_1_1 = 0,
	QN__CPU_CHECK_MODE_1,
	QN__CPU_WARNING_2_1,
	QN__CPU_WARNING_3_1,
	QN__CPU_UNITS_1,
	QN__CPU_BTN_PAGE_1,
	QN__CPU_MAIN_1,
	QN__CPU_MAIN_RPM_1,
	QN__CPU_MODE000_1,
	QN__CPU_MODE1xx_1,
	QN__CPU_MODE1111_1,
	QN__CPU_MODE1112_1,
	QN__CPU_MODE1113_1,
	QN__CPU_MODE1114_1,
	QN__CPU_MODE1115_1,
	QN__CPU_MODE1116_1,
	QN__CPU_MODE2xx_1,
	QN__CPU_MODE3xx_1,
	QN__CPU_MODE31x_1,
	QN__CPU_MODE311_1,
	QN__CPU_MODE312_1,
	QN__CPU_MODE313_1,
	QN__CPU_MODE314_1,
	QN__CPU_MODE315_1,
	QN__CPU_MODE32x_1,
	QN__CPU_MODE33x_1,
	QN__CPU_MODE34x_1,
	QN__CPU_MODE35x_1,
	QN__CPU_MODE36x_1,
	QN__CPU_MODE4xx_1,
	QN__CPU_MODE5xx_1,
	QN__CPU_MODE6xx_1
};

static const T_YSEQ_INFO tYSeqInfo[32] = {
	/*   SceneAddr,           Action, YSeqButtonNum,        tYSeqButton,    NextSeqID */
	{ 0x0044A6B0UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 0: #1: <CPU>WARNING_1: #1 */
	{ 0x0044A6C4UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 1: #2: <CPU>CHECK_MODE: #1 */
	{ 0x0044A6C8UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 2: #3: <CPU>WARNING_2: #1 */
	{ 0x0044A6CCUL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 3: #4: <CPU>WARNING_3: #1 */
	{ 0x0044A6D0UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 4: #5: <CPU>UNITS: #1 */
	{ 0x0044A6D4UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 5: #6: <CPU>BTN_PAGE: #1 */
	{ 0x0044A6D8UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 6: #7: <CPU>MAIN: #1 */
	{ 0x0044A6DCUL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 7: #9: <CPU>MAIN_RPM: #1 */
	{ 0x0044A6E0UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 8: #10: <CPU>MODE000: #1 */
	{ 0x0044A6E4UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 9: #11: <CPU>MODE1xx: #1 */
	{ 0x0044A6E8UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 10: #12: <CPU>MODE1111: #1 */
	{ 0x0044A6ECUL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 11: #13: <CPU>MODE1112: #1 */
	{ 0x0044A6F0UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 12: #14: <CPU>MODE1113: #1 */
	{ 0x0044A6F4UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 13: #15: <CPU>MODE1114: #1 */
	{ 0x0044A6F8UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 14: #16: <CPU>MODE1115: #1 */
	{ 0x0044A6FCUL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 15: #18: <CPU>MODE1116: #1 */
	{ 0x0044A700UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 16: #19: <CPU>MODE2xx: #1 */
	{ 0x0044A704UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 17: #20: <CPU>MODE3xx: #1 */
	{ 0x0044A708UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 18: #21: <CPU>MODE31x: #1 */
	{ 0x0044A70CUL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 19: #22: <CPU>MODE311: #1 */
	{ 0x0044A710UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 20: #23: <CPU>MODE312: #1 */
	{ 0x0044A714UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 21: #24: <CPU>MODE313: #1 */
	{ 0x0044A718UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 22: #25: <CPU>MODE314: #1 */
	{ 0x0044A71CUL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 23: #26: <CPU>MODE315: #1 */
	{ 0x0044A720UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 24: #27: <CPU>MODE32x: #1 */
	{ 0x0044A724UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 25: #28: <CPU>MODE33x: #1 */
	{ 0x0044A728UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 26: #29: <CPU>MODE34x: #1 */
	{ 0x0044A72CUL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 27: #30: <CPU>MODE35x: #1 */
	{ 0x0044A730UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 28: #31: <CPU>MODE36x: #1 */
	{ 0x0044A734UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 29: #32: <CPU>MODE4xx: #1 */
	{ 0x0044A738UL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID },	/* 30: #33: <CPU>MODE5xx: #1 */
	{ 0x0044A73CUL, YSEQ_ACTION_NONE,             0, NULL              , YSEQ_INVALID }		/* 31: #34: <CPU>MODE6xx: #1 */
};

/*----------------------------------------
 *	 Sequence Data
 *----------------------------------------*/
const T_YSEQ_DATA tYSeqData = {
	/*  tYSeqInfo, YSeqInfoNum */
	&tYSeqInfo[0], 32
};
