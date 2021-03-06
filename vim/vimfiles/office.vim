function! SetMyWinPos()
    let monitorInfo=system('WhereAmI.exe')
    " Laptop
    if monitorInfo=='1[0:38:2048:1152]'
        echom "Laptop" 
        set linespace=2
        set lines=30
        set columns=135
        winpos 7 46
    " Laptop 2K
    elseif monitorInfo=='1[0:38:1920:1080]'
        echom "Laptop 2K"
        set linespace=2
        set lines=28
        set columns=127
        winpos 1 48
    " Laptop 4K
    elseif monitorInfo=='1[0:76:3840:2160]'
        echom "Laptop 4K"
        set linespace=3
        simalt ~x
        " winpos 6 90
        " if match(&guifont, '^VictorMono') >= 0
            " set lines=29
            " set columns=131
        " elseif match(&guifont, '^CaskaydiaCove') >= 0
            " set lines=31
            " set columns=136
        " elseif match(&guifont, '^Cascadia_Code_iCursive_Cg') >= 0
            " set lines=34
            " set columns=136
        " endif
    " Laptop 4k & Large Taskbar
    elseif monitorInfo=='1[0:100:3840:2160]'
        echom "Laptop 4 & Large Taskbar"
        simalt ~x
    " Dockingstation Office
    elseif monitorInfo=='1[0:54:1680:1050][1680:40:3360:1050]'
        echom "Office"
        " set lines=35
        " set columns=151
        " set linespace=2
        " winpos 1677 33
        simalt ~x
    else
        echom "office.vim - Unkwown location: " . monitorInfo
    endif
endfunction
