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
static const char *ng0 = "G:/FIFO - VLSI Project/RTL Design/FIFO_TOP_3/dpsram_basic_top_1.v";



static void Always_39_0(char *t0)
{
    char t20[8];
    char t21[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    int t31;
    char *t32;
    unsigned int t33;
    int t34;
    int t35;
    unsigned int t36;
    unsigned int t37;
    int t38;
    int t39;

LAB0:    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 4696);
    *((int *)t2) = 1;
    t3 = (t0 + 4160);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(40, ng0);

LAB5:    xsi_set_current_line(41, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(42, ng0);

LAB9:    xsi_set_current_line(43, ng0);
    t11 = (t0 + 1688U);
    t12 = *((char **)t11);
    t11 = (t12 + 4);
    t13 = *((unsigned int *)t11);
    t14 = (~(t13));
    t15 = *((unsigned int *)t12);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3208);
    t11 = (t5 + 72U);
    t12 = *((char **)t11);
    t18 = (t0 + 3208);
    t19 = (t18 + 64U);
    t22 = *((char **)t19);
    t23 = (t0 + 2008U);
    t24 = *((char **)t23);
    xsi_vlog_generic_get_array_select_value(t20, 8, t4, t12, t22, 2, 1, t24, 3, 2);
    t23 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t23, t20, 0, 0, 8, 0LL);

LAB12:    goto LAB8;

LAB10:    xsi_set_current_line(44, ng0);
    t18 = (t0 + 2328U);
    t19 = *((char **)t18);
    t18 = (t0 + 3208);
    t22 = (t0 + 3208);
    t23 = (t22 + 72U);
    t24 = *((char **)t23);
    t25 = (t0 + 3208);
    t26 = (t25 + 64U);
    t27 = *((char **)t26);
    t28 = (t0 + 2008U);
    t29 = *((char **)t28);
    xsi_vlog_generic_convert_array_indices(t20, t21, t24, t27, 2, 1, t29, 3, 2);
    t28 = (t20 + 4);
    t30 = *((unsigned int *)t28);
    t31 = (!(t30));
    t32 = (t21 + 4);
    t33 = *((unsigned int *)t32);
    t34 = (!(t33));
    t35 = (t31 && t34);
    if (t35 == 1)
        goto LAB13;

LAB14:    goto LAB12;

LAB13:    t36 = *((unsigned int *)t20);
    t37 = *((unsigned int *)t21);
    t38 = (t36 - t37);
    t39 = (t38 + 1);
    xsi_vlogvar_wait_assign_value(t18, t19, 0, *((unsigned int *)t21), t39, 0LL);
    goto LAB14;

}

static void Always_50_1(char *t0)
{
    char t20[8];
    char t21[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    int t31;
    char *t32;
    unsigned int t33;
    int t34;
    int t35;
    unsigned int t36;
    unsigned int t37;
    int t38;
    int t39;

LAB0:    t1 = (t0 + 4376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 4712);
    *((int *)t2) = 1;
    t3 = (t0 + 4408);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(51, ng0);

LAB5:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(53, ng0);

LAB9:    xsi_set_current_line(54, ng0);
    t11 = (t0 + 1848U);
    t12 = *((char **)t11);
    t11 = (t12 + 4);
    t13 = *((unsigned int *)t11);
    t14 = (~(t13));
    t15 = *((unsigned int *)t12);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3208);
    t11 = (t5 + 72U);
    t12 = *((char **)t11);
    t18 = (t0 + 3208);
    t19 = (t18 + 64U);
    t22 = *((char **)t19);
    t23 = (t0 + 2168U);
    t24 = *((char **)t23);
    xsi_vlog_generic_get_array_select_value(t20, 8, t4, t12, t22, 2, 1, t24, 3, 2);
    t23 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t23, t20, 0, 0, 8, 0LL);

LAB12:    goto LAB8;

LAB10:    xsi_set_current_line(55, ng0);
    t18 = (t0 + 2488U);
    t19 = *((char **)t18);
    t18 = (t0 + 3208);
    t22 = (t0 + 3208);
    t23 = (t22 + 72U);
    t24 = *((char **)t23);
    t25 = (t0 + 3208);
    t26 = (t25 + 64U);
    t27 = *((char **)t26);
    t28 = (t0 + 2168U);
    t29 = *((char **)t28);
    xsi_vlog_generic_convert_array_indices(t20, t21, t24, t27, 2, 1, t29, 3, 2);
    t28 = (t20 + 4);
    t30 = *((unsigned int *)t28);
    t31 = (!(t30));
    t32 = (t21 + 4);
    t33 = *((unsigned int *)t32);
    t34 = (!(t33));
    t35 = (t31 && t34);
    if (t35 == 1)
        goto LAB13;

LAB14:    goto LAB12;

LAB13:    t36 = *((unsigned int *)t20);
    t37 = *((unsigned int *)t21);
    t38 = (t36 - t37);
    t39 = (t38 + 1);
    xsi_vlogvar_wait_assign_value(t18, t19, 0, *((unsigned int *)t21), t39, 0LL);
    goto LAB14;

}


extern void work_m_00000000000581827982_3451714476_init()
{
	static char *pe[] = {(void *)Always_39_0,(void *)Always_50_1};
	xsi_register_didat("work_m_00000000000581827982_3451714476", "isim/test_bench3_isim_beh.exe.sim/work/m_00000000000581827982_3451714476.didat");
	xsi_register_executes(pe);
}
