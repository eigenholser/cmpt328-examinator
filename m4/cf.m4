ifdef(`_CF_DIR_', `',
    `ifelse(__file__, `__file__',
        `define(`_CF_DIR_', `../')',
        `define(`_CF_DIR_',
            substr(__file__, 0, eval(len(__file__) - 8)))')')dnl
divert(0)dnl
include(_CF_DIR_`'m4/cfhead.m4)dnl
