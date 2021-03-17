;-----------------------------------------
; Mac keyboard to Windows Key Mappings
;=========================================

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;
; Debug action snippet: MsgBox You pressed Control-A while Notepad is active.

#InstallKeybdHook
SetTitleMatchMode 2
SendMode Input

; --------------------------------------------------------------
; media/function keys all mapped to the right option key
; --------------------------------------------------------------

RAlt & F7::SendInput {Media_Prev}
RAlt & F8::SendInput {Media_Play_Pause}
RAlt & F9::SendInput {Media_Next}
F10::SendInput {Volume_Mute}
F11::SendInput {Volume_Down}
F12::SendInput {Volume_Up}

; F13-15, standard windows mapping
F13::SendInput {PrintScreen}
F14::SendInput {ScrollLock}
F15::SendInput {Pause}

; -------------------------------
;  Cursor Movement
;
; cmd + arrows - start & end of lines, with shift for selecting text
; -------------------------------
<#Left::SendInput {Home}
<#Right::SendInput {End}
+<#Left::SendInput +{Home}
+<#Right::SendInput +{End}

; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------


#s::SendInput ^{s}
#a::SendInput ^{a}
#c::SendInput ^{c}
#v::SendInput ^{v}
#x::SendInput ^{x}
#o::SendInput ^{o}
#f::SendInput ^{f}
#z::SendInput ^{z}
#+z::SendInput ^{y}
#y::SendInput ^{y}
#t::SendInput ^{t}
#w::SendInput ^{w}
#n::SendInput ^{n}

; Close windows (cmd + q to Alt + F4)
#q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
Lwin & Tab::AltTab

; Remap windows to Ctrl
Lwin::LCtrl

; minimize windows
#m::WinMinimize,a

; Move window
;^!Right::SendEvent {LWin down}{Right down}{LWin up}
;^!Left:: SendEvent {LWin down}{Left}{LWin up}
;^<!<#Right:: SendEvent {LWin down}{Right down}{LWin up}{Right up}
;^<!<#Left:: SendEvent {LWin down}{Left down}{LWin up}{Left up}

; Shift + Wheel for horizontal scrolling
+WheelDown::WheelRight
+WheelUp::WheelLeft

; --------------------------------------------------------------
; OS X keyboard mappings for special chars
; --------------------------------------------------------------

; Map Alt + N to ~
!n::SendInput {~}

; --------------------------------------------------------------		
; Custom mappings for special chars
; --------------------------------------------------------------

;#ö::SendInput {[} 
;#ä::SendInput {]} 

;^ö::SendInput {{} 
;^ä::SendInput {}} 


; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

; Google Chrome
#IfWinActive, ahk_class Chrome_WidgetWin_1

    ; Show Web Developer Tools with cmd + alt + i
    #!i::Send {F12}

    ; Show source code with cmd + alt + u
    #!u::Send ^u

    #r::SendInput ^{r}


#IfWinActive


;; Intellij 


#IfWinActive, ahk_exe idea64.exe

    ; ====== COMMON ========================================

    ; Find Action (⌘+Shift+A) -> (Ctrl+Shift+A)
    #+a::SendInput ^+a

    ; ====== EDITING =======================================

    ; Duplicate Line (⌘+D) -> (Ctrl+D)
    #d::SendInput ^{d}

    ; Delete Line (⌘+Backspace) -> (Ctrl+Y)
    #backspace::SendInput ^{backspace}

    ; Quick Documentation (F1) -> (Ctrl+Q)
    F1::SendInput ^q

    ; Find (⌘+F) -> (Ctrl+F)
    #f::SendInput ^f

    ; Find in Path (⌘+Shift-F) -> (Ctrl+Shift+F)
    #+f::SendInput ^+f

    ; Replace (⌘+R) -> (Ctrl+R)
    #r::SendInput ^#r

    ; Replace in Path (⌘+Shift+R) -> (Ctrl+Shift+R)
    #+r::SendInput ^+#r

    ; Move Statement Up (⌘+Shift+Up) -> (Ctrl+Shift+Up)
    #+up::SendInput !+{Up}

    ; Move Statement Down (⌘+Shift+Down) -> (Ctrl+Shift+Down)
    #+down::SendInput !+{Down}
     

    ; Extend Selection (⌘+Up) -> (Ctrl+W)
    !up::SendInput ^w

    ; Shrink Selection (⌘+Down) -> (Ctrl-Shift+W)
    !down::SendInput ^+w

    ; New (⌘+N) -> (Alt+Insert)
    #n::SendInput !{Insert}

    ; Complete Current Statement (⌘+Shift+Enter) -> (Ctrl+Shift+Enter)
    #+enter::SendInput ^+{Enter}

    ; Toggle Case (⌘+Shift+U) -> (Ctrl+Shift+U)
    #+u::SendInput ^+u

    ; ====== NAVIGATION ====================================

    ; Jump to Navigation Bar (⌘+Up) -> (Alt+Home)
    #up::SendInput !{Home}

    ; Navigate to Declaration (⌘+B) -> (Ctrl+B)
    #b::SendInput ^b

    ; Navigate to previous word block
    ;!Left::SendInput ^{Left}

    ; Navigate to next word block
    ;!Right::SendInput ^{Right}

    ; Go to Line Number (⌘+Shift+L) -> (Ctrl+G)
    #+L::SendInput ^g

    ; Hide All Windows (⌘+Shift+F12) -> (Ctrl+Shift+F12)
    #+F12::SendInput ^+{F12}

    ; Select Next Tab (⌘+Shift+]) -> (Alt-Right)
    #+]::SendInput !{Right}

    ; Select Previous Tab (⌘+Shift+[) -> (Alt-Left)
    #+[::SendInput !{Left}

    #1::SendInput !1

    #2::SendInput !2

    #4::SendInput !4

    #5::SendInput !5

    #6::SendInput !6

    #7::SendInput !7

    #9::SendInput !9

    
    ; ====== SOURCE CONTROL ================================

    ;; commit
    #k::SendInput ^k


    ; Update Project (⌘+T) -> (Ctrl+T)
    #t::SendInput ^t

    ; ====== RUN / DEBUG ===================================

    !^d::SendInput +{F9}

    !^r::SendInput +{F10}


    +#o::SendInput +^{o}
    !#v::SendInput !^{v}
    !#m::SendInput !^{m}
    !#f::SendInput !^{f}
    !#p::SendInput !^{p}
    #g::SendInput ^{g}
    ;^#g::SendInput +^{g}
    #e::SendInput ^{e}
    +#t::SendInput ^+{t}
    !#l::SendInput !^{l}

    !<#Left::SendInput ^!{Left}
    !<#Right::SendInput ^!{Right}


    ; NOTES
    ; --------------------------------------------------------------
    ; ! = ALT
    ; ^ = CTRL
    ; + = SHIFT
    ; # = WIN
#IfWinActive
