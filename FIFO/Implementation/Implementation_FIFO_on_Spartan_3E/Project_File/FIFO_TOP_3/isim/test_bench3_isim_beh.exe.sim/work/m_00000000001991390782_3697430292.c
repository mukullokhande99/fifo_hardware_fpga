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
static const char *ng0 = "G:/FIFO - VLSI Project/RTL Design/flag_logic/flag_logic_7/rd_ptr_diff.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {7U, 0U};



static void Always_30_0(char *t0)
{
    char t4[8];
    char t31[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;

LAB0:    t1 = (t0 + 2960U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 3280);
    *((int *)t2) = 1;
    t3 = (t0 + 2992);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t5 = (t0 + 1640U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB11;

LAB10:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t4 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1320U);
    t3 = *((char **)t2);
    t2 = (t0 + 1480U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t3 + 4);
    if (*((unsigned int *)t2) != 0)
        goto LAB16;

LAB15:    t6 = (t5 + 4);
    if (*((unsigned int *)t6) != 0)
        goto LAB16;

LAB19:    if (*((unsigned int *)t3) < *((unsigned int *)t5))
        goto LAB18;

LAB17:    *((unsigned int *)t4) = 1;

LAB18:    t13 = (t4 + 4);
    t7 = *((unsigned int *)t13);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB20;

LAB21:    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1480U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_minus(t4, 3, t2, 3, t5, 3);
    t3 = (t0 + 1320U);
    t6 = *((char **)t3);
    memset(t31, 0, 8);
    xsi_vlog_unsigned_add(t31, 3, t4, 3, t6, 3);
    t3 = (t0 + 2040);
    xsi_vlogvar_wait_assign_value(t3, t31, 0, 0, 3, 0LL);

LAB22:
LAB14:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB11:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB10;

LAB12:    xsi_set_current_line(33, ng0);
    t29 = ((char*)((ng1)));
    t30 = (t0 + 2040);
    xsi_vlogvar_wait_assign_value(t30, t29, 0, 0, 3, 0LL);
    goto LAB14;

LAB16:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB18;

LAB20:    xsi_set_current_line(36, ng0);
    t14 = (t0 + 1320U);
    t23 = *((char **)t14);
    t14 = (t0 + 1480U);
    t29 = *((char **)t14);
    memset(t31, 0, 8);
    xsi_vlog_unsigned_minus(t31, 3, t23, 3, t29, 3);
    t14 = (t0 + 2040);
    xsi_vlogvar_wait_assign_value(t14, t31, 0, 0, 3, 0LL);
    goto LAB22;

}


extern void work_m_00000000001991390782_3697430292_init()
{
	static char *pe[] = {(void *)Always_30_0};
	xsi_register_didat("work_m_00000000001991390782_3697430292", "isim/test_bench3_isim_beh.exe.sim/work/m_00000000001991390782_3697430292.didat");
	xsi_register_executes(pe);
}
