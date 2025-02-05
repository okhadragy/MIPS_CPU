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
static const char *ng0 = "C:/Projects/Phase1/Sign_extension.vhd";
extern char *IEEE_P_2592010699;



static void work_a_0633136110_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(36, ng0);

LAB3:    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t5 = (16 - 1);
    t6 = (t5 - 15);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t3 = (t4 + t9);
    t10 = *((unsigned char *)t3);
    memset(t2, t10, 16U);
    t11 = (t0 + 3416);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 16U);
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 3320);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0633136110_3212880686_p_1(char *t0)
{
    char t4[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(37, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 5140U);
    t7 = (t0 + 5108U);
    t1 = xsi_base_array_concat(t1, t4, t5, (char)97, t2, t6, (char)97, t3, t7, (char)101);
    t8 = (16U + 16U);
    t9 = (32U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 3480);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 32U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 3336);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t8, 0);
    goto LAB6;

}


extern void work_a_0633136110_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0633136110_3212880686_p_0,(void *)work_a_0633136110_3212880686_p_1};
	xsi_register_didat("work_a_0633136110_3212880686", "isim/testbench_isim_beh.exe.sim/work/a_0633136110_3212880686.didat");
	xsi_register_executes(pe);
}
