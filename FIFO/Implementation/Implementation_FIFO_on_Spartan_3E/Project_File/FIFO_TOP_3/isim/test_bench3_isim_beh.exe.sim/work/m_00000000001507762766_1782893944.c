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
static const char *ng0 = "G:/FIFO - VLSI Project/RTL Design/FIFO_TOP_3/gray_to_bin_top_1.v";
static int ng1[] = {2, 0};
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};



static void Always_33_0(char *t0)
{
    char t6[8];
    char t15[8];
    char t29[8];
    char t37[8];
    char t38[8];
    char t51[8];
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
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    unsigned int t59;

LAB0:    t1 = (t0 + 2824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 3144);
    *((int *)t2) = 1;
    t3 = (t0 + 2856);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);

LAB5:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 1184U);
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
    t14 = (t0 + 1904);
    t16 = (t0 + 1904);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t15, t18, 2, t19, 32, 1);
    t20 = (t15 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (!(t21));
    if (t22 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(36, ng0);
    xsi_set_current_line(36, ng0);
    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_signed_minus(t6, 32, t3, 32, t2, 32);
    t4 = (t0 + 1584);
    xsi_vlogvar_assign_value(t4, t6, 0, 0, 32);

LAB8:    t2 = (t0 + 1584);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
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

LAB9:    xsi_set_current_line(37, ng0);

LAB11:    xsi_set_current_line(38, ng0);
    xsi_set_current_line(38, ng0);
    t14 = (t0 + 472);
    t16 = *((char **)t14);
    t14 = ((char*)((ng3)));
    memset(t15, 0, 8);
    xsi_vlog_signed_minus(t15, 32, t16, 32, t14, 32);
    t17 = (t0 + 1744);
    xsi_vlogvar_assign_value(t17, t15, 0, 0, 32);

LAB12:    t2 = (t0 + 1744);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1584);
    t7 = (t5 + 56U);
    t14 = *((char **)t7);
    memset(t6, 0, 8);
    xsi_vlog_signed_greatereq(t6, 32, t4, 32, t14, 32);
    t16 = (t6 + 4);
    t8 = *((unsigned int *)t16);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB13;

LAB14:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1584);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_minus(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1584);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB8;

LAB13:    xsi_set_current_line(39, ng0);
    t17 = (t0 + 1184U);
    t18 = *((char **)t17);
    t17 = (t0 + 1144U);
    t19 = (t17 + 72U);
    t20 = *((char **)t19);
    t23 = (t0 + 1584);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    xsi_vlog_generic_get_index_select_value(t15, 1, t18, t20, 2, t25, 32, 1);
    t26 = (t0 + 1904);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t30 = (t0 + 1904);
    t31 = (t30 + 72U);
    t32 = *((char **)t31);
    t33 = (t0 + 1584);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = ((char*)((ng3)));
    memset(t37, 0, 8);
    xsi_vlog_signed_add(t37, 32, t35, 32, t36, 32);
    xsi_vlog_generic_get_index_select_value(t29, 1, t28, t32, 2, t37, 32, 1);
    t13 = *((unsigned int *)t15);
    t21 = *((unsigned int *)t29);
    t39 = (t13 ^ t21);
    *((unsigned int *)t38) = t39;
    t40 = (t15 + 4);
    t41 = (t29 + 4);
    t42 = (t38 + 4);
    t43 = *((unsigned int *)t40);
    t44 = *((unsigned int *)t41);
    t45 = (t43 | t44);
    *((unsigned int *)t42) = t45;
    t46 = *((unsigned int *)t42);
    t47 = (t46 != 0);
    if (t47 == 1)
        goto LAB15;

LAB16:
LAB17:    t50 = (t0 + 1904);
    t52 = (t0 + 1904);
    t53 = (t52 + 72U);
    t54 = *((char **)t53);
    t55 = (t0 + 1584);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    xsi_vlog_generic_convert_bit_index(t51, t54, 2, t57, 32, 1);
    t58 = (t51 + 4);
    t59 = *((unsigned int *)t58);
    t22 = (!(t59));
    if (t22 == 1)
        goto LAB18;

LAB19:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1744);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_minus(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1744);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB12;

LAB15:    t48 = *((unsigned int *)t38);
    t49 = *((unsigned int *)t42);
    *((unsigned int *)t38) = (t48 | t49);
    goto LAB17;

LAB18:    xsi_vlogvar_assign_value(t50, t38, 0, *((unsigned int *)t51), 1);
    goto LAB19;

}


extern void work_m_00000000001507762766_1782893944_init()
{
	static char *pe[] = {(void *)Always_33_0};
	xsi_register_didat("work_m_00000000001507762766_1782893944", "isim/test_bench3_isim_beh.exe.sim/work/m_00000000001507762766_1782893944.didat");
	xsi_register_executes(pe);
}
