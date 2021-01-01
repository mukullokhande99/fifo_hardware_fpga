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
static const char *ng0 = "H:/FIFO - VLSI Project/RTL Design/FIFO_TOP_3/bin_to_gray_top_1.v";
static int ng1[] = {2, 0};
static int ng2[] = {3, 0};
static int ng3[] = {0, 0};
static int ng4[] = {1, 0};



static void Always_16_0(char *t0)
{
    char t6[8];
    char t15[8];
    char t25[8];
    char t28[8];
    char t34[8];
    char t47[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    int t22;
    char *t23;
    char *t24;
    char *t26;
    char *t27;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    unsigned int t55;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(16, ng0);
    t2 = (t0 + 2848);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(17, ng0);

LAB5:    xsi_set_current_line(18, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t6 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 2);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 2);
    t13 = (t12 & 1);
    *((unsigned int *)t4) = t13;
    t14 = (t0 + 1608);
    t16 = (t0 + 1608);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t15, t18, 2, t19, 32, 1);
    t20 = (t15 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (!(t21));
    if (t22 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(19, ng0);
    xsi_set_current_line(19, ng0);
    t2 = ((char*)((ng2)));
    t3 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_signed_minus(t6, 32, t2, 32, t3, 32);
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t6, 0, 0, 32);

LAB8:    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_greatereq(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB9;

LAB10:    goto LAB2;

LAB6:    xsi_vlogvar_assign_value(t14, t6, 0, *((unsigned int *)t15), 1);
    goto LAB7;

LAB9:    xsi_set_current_line(20, ng0);
    t14 = (t0 + 1048U);
    t16 = *((char **)t14);
    t14 = (t0 + 1008U);
    t17 = (t14 + 72U);
    t18 = *((char **)t17);
    t19 = (t0 + 1448);
    t20 = (t19 + 56U);
    t23 = *((char **)t20);
    t24 = ((char*)((ng4)));
    memset(t25, 0, 8);
    xsi_vlog_signed_add(t25, 32, t23, 32, t24, 32);
    xsi_vlog_generic_get_index_select_value(t15, 1, t16, t18, 2, t25, 32, 1);
    t26 = (t0 + 1048U);
    t27 = *((char **)t26);
    t26 = (t0 + 1008U);
    t29 = (t26 + 72U);
    t30 = *((char **)t29);
    t31 = (t0 + 1448);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    xsi_vlog_generic_get_index_select_value(t28, 1, t27, t30, 2, t33, 32, 1);
    t13 = *((unsigned int *)t15);
    t21 = *((unsigned int *)t28);
    t35 = (t13 ^ t21);
    *((unsigned int *)t34) = t35;
    t36 = (t15 + 4);
    t37 = (t28 + 4);
    t38 = (t34 + 4);
    t39 = *((unsigned int *)t36);
    t40 = *((unsigned int *)t37);
    t41 = (t39 | t40);
    *((unsigned int *)t38) = t41;
    t42 = *((unsigned int *)t38);
    t43 = (t42 != 0);
    if (t43 == 1)
        goto LAB11;

LAB12:
LAB13:    t46 = (t0 + 1608);
    t48 = (t0 + 1608);
    t49 = (t48 + 72U);
    t50 = *((char **)t49);
    t51 = (t0 + 1448);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    xsi_vlog_generic_convert_bit_index(t47, t50, 2, t53, 32, 1);
    t54 = (t47 + 4);
    t55 = *((unsigned int *)t54);
    t22 = (!(t55));
    if (t22 == 1)
        goto LAB14;

LAB15:    xsi_set_current_line(19, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_minus(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1448);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB8;

LAB11:    t44 = *((unsigned int *)t34);
    t45 = *((unsigned int *)t38);
    *((unsigned int *)t34) = (t44 | t45);
    goto LAB13;

LAB14:    xsi_vlogvar_assign_value(t46, t34, 0, *((unsigned int *)t47), 1);
    goto LAB15;

}


extern void work_m_00000000002328824920_3826715604_init()
{
	static char *pe[] = {(void *)Always_16_0};
	xsi_register_didat("work_m_00000000002328824920_3826715604", "isim/test_bench3_isim_beh.exe.sim/work/m_00000000002328824920_3826715604.didat");
	xsi_register_executes(pe);
}
