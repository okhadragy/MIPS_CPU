/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Projects/Phase1/testTop.vhd";



static void work_a_1949178628_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 2832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 3480);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3544);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(32, ng0);
    t7 = (1 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 3480);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(34, ng0);
    t7 = (1 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1949178628_2372691052_p_1(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    unsigned char t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned char t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 1472U);
    t4 = xsi_signal_has_event(t3);
    if (t4 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t3 = (t0 + 3400);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(39, ng0);
    t5 = (t0 + 1192U);
    t13 = *((char **)t5);
    t5 = (t0 + 5407);
    t15 = 1;
    if (32U == 32U)
        goto LAB17;

LAB18:    t15 = 0;

LAB19:    if (t15 == 1)
        goto LAB14;

LAB15:    t12 = (unsigned char)0;

LAB16:    if (t12 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB3;

LAB5:    t5 = (t0 + 1352U);
    t9 = *((char **)t5);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t1 = t11;
    goto LAB7;

LAB8:    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t2 = t8;
    goto LAB10;

LAB11:    xsi_set_current_line(40, ng0);
    t26 = (t0 + 5471);
    xsi_report(t26, 15U, 0);
    goto LAB12;

LAB14:    t19 = (t0 + 1032U);
    t20 = *((char **)t19);
    t19 = (t0 + 5439);
    t22 = 1;
    if (32U == 32U)
        goto LAB23;

LAB24:    t22 = 0;

LAB25:    t12 = t22;
    goto LAB16;

LAB17:    t16 = 0;

LAB20:    if (t16 < 32U)
        goto LAB21;
    else
        goto LAB19;

LAB21:    t17 = (t13 + t16);
    t18 = (t5 + t16);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB18;

LAB22:    t16 = (t16 + 1);
    goto LAB20;

LAB23:    t23 = 0;

LAB26:    if (t23 < 32U)
        goto LAB27;
    else
        goto LAB25;

LAB27:    t24 = (t20 + t23);
    t25 = (t19 + t23);
    if (*((unsigned char *)t24) != *((unsigned char *)t25))
        goto LAB24;

LAB28:    t23 = (t23 + 1);
    goto LAB26;

}


extern void work_a_1949178628_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1949178628_2372691052_p_0,(void *)work_a_1949178628_2372691052_p_1};
	xsi_register_didat("work_a_1949178628_2372691052", "isim/testbench_isim_beh.exe.sim/work/a_1949178628_2372691052.didat");
	xsi_register_executes(pe);
}
