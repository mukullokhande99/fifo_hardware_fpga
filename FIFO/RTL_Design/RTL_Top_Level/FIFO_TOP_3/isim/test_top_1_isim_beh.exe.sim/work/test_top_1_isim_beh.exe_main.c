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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003568049123_3451714476_init();
    work_m_00000000003554499899_1337205316_init();
    work_m_00000000002378184497_3574421834_init();
    work_m_00000000003664026540_1807786054_init();
    work_m_00000000001459285761_1926123570_init();
    work_m_00000000002328824920_3826715604_init();
    work_m_00000000002644430199_4206705972_init();
    work_m_00000000001507762766_1782893944_init();
    work_m_00000000000390079308_1905352544_init();
    work_m_00000000002312413852_0814343318_init();
    work_m_00000000003116819741_0922284194_init();
    work_m_00000000000010719938_0090658997_init();
    work_m_00000000002147688592_0983050704_init();
    work_m_00000000004202746137_4204950712_init();
    work_m_00000000003391706222_1850679554_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003391706222_1850679554");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
