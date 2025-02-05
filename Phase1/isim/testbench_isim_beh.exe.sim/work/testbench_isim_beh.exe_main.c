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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *WORK_P_4053066488;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *IEEE_P_0774719531;
char *IEEE_P_1242562249;
char *IEEE_P_3564397177;
char *STD_TEXTIO;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    work_p_4053066488_init();
    ieee_p_0774719531_init();
    std_textio_init();
    ieee_p_3564397177_init();
    ieee_p_3620187407_init();
    work_a_3660693623_3212880686_init();
    work_a_3295581965_3212880686_init();
    work_a_2251915414_3212880686_init();
    work_a_3240567653_3212880686_init();
    work_a_0305289373_3212880686_init();
    work_a_0633136110_3212880686_init();
    work_a_3215900657_3212880686_init();
    work_a_0272744515_3212880686_init();
    work_a_4176254232_3212880686_init();
    work_a_4167037896_3212880686_init();
    work_a_3934397045_3212880686_init();
    work_a_2051080426_3212880686_init();
    work_a_1037769429_3212880686_init();
    work_a_1846741030_3212880686_init();
    work_a_1208337864_3212880686_init();
    work_a_0378656823_3212880686_init();
    work_a_1130845995_3212880686_init();
    work_a_3720894149_3212880686_init();
    work_a_1951935198_3212880686_init();
    work_a_1949178628_2372691052_init();


    xsi_register_tops("work_a_1949178628_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_4053066488 = xsi_get_engine_memory("work_p_4053066488");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");

    return xsi_run_simulation(argc, argv);

}
