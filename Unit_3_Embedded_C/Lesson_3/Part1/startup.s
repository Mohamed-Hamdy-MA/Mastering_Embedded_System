.section .vectors
.word    0x20001000
.word    _reset
.word    vector_handler        /* 2 NMI */
.word    vector_handler        /* 3 Hard Fault */
.word    vector_handler        /* 4 MM Fault */
.word    vector_handler        /* 5 Bus Fault */
.word    vector_handler        /* 6 Usage Fault */
         /* To IRQ67 */        /* 7 ...... */

.section .text
_reset:
   bl main
   b .

.thumb_func
vector_handler:
   b _reset