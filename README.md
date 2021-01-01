# fifo_hardware_fpga
FIFO implemented on FPGA Spartan 6

First-In-First-Out (FIFO) memory buffers are widely used to link to different clock domain
systems. The design of the FIFO buffer architecture and demonstrating it on the Spartan 3E
FPGA Board using Xilinx ISE 14.7 is done here. The type of FIFO designed is the circular
type FIFO. So it has its own advantages over other architectures. It also uses level
synchronizers and other important logic.

Exchange of data between different PCBs. It requires the need of intermediate buffering
elements as the data on receiving PCB arrive at higher speed than the ability of PCB to process
it. That is different Input and Output clocks in simple words. Then such intermediates are called
FIFO memories.
Two electronic systems are invariably connected to the input and output of a FIFO - one
that writes and one that reads. The first to be implemented is an Exclusive FIFOs as it is
easy to do so. It means only reading or writing is possible at a time. But now-a-days,
Concurrent FIFOs are popular and mostly used because so numerous applications need
synchronous read / write versions and it is easy to modify it to use as Exclusive FIFO.
More examples of such kind of system are -
1. Customer queue at the shop working on the basis of First Come First Serve.
2. Electronics system with different components of different propagation delays.
3. A Compact Disk (CD) player compensating the data rate of rotation of the disk and analog
to digital converter by using Buffering Element.

FIFOs can be implemented using software as well as hardware. The choice between a software
and a hardware solution depends on the application and the features desired. The only
advantage software has is that when requirements change, a software FIFO easily can be
adapted to new requirements by modifying its program, while a hardware FIFO may demand
a new circuit board. Software is more flexible than hardware. The advantage of the hardware
FIFOs can be seen in their operating speed and other performance parameter.

The asynchronous FIFO is implemented using Xilinx ISE 14.7 on Verilog was used for
synthesis. The data width in asynchronous FIFO is eight bits, while FIFO depth is one
kilobyte.
An asynchronous FIFO structure appropriate for RTL modeling implementation using
the standard design tools and design flow is presented. An approach for construction of
the asynchronous circuits using Verilog HDL is presented. This approach uses
construction of RTL model using applicable basic blocks like flipflops and latches,
which is represented with verilog code.
The only drawback of the presented asynchronous FIFO design is inefficient as timing
model constructed using circuit level. (Output is one cycle delayed in flag model).
