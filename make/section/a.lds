_myown_start = .; 
.myown : {
     *(.myown) } = 0x90000000 _myown_end = .; 
    code_segment : { *(code_segment)
}

