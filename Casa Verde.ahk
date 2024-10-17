; Script pentru Casa Verde
; Tasta "," completeaza datele pentru pasul 1
; Tasta "." completeaza datele pentru pasul 2
; Tasta "esc" inchide programul

; Modificati valorile cu datele voastre
nume := "Manole"
prenume := "Corina"
email := "corina.manole@gmail.com"
serie_act_identitate := "AX"
numar_act_identitate := "123456"
valabil_de_la := "01012023" ; data in format zi luna an
valabil_pana_la := "01012026" ; data in format zi luna an
cnp := "1990101100100"
adresa_domiciliu := "Localitate, strada, numar"
judet := "Bacau"
telefon := "0712345678"

SuspendHotkeys() {
    Suspend(True)  ; Suspend hotkeys
    Sleep(100)     ; Short delay to ensure it's suspended
}

ResumeHotkeys() {
    Suspend(False)  ; Resume hotkeys
}

; Define the hotkey for ","
,:: {
    ; Date Pas 1
    SuspendHotkeys()
    Send(email "{Tab}" email "{Tab}")
    ResumeHotkeys()
}

; Define the hotkey for "."
.:: {
    ; Date Pas 2
    SuspendHotkeys()
    Send(nume "{Tab}" prenume "{Tab}" serie_act_identitate "{Tab}" numar_act_identitate "{Tab}" valabil_de_la "{Tab}" valabil_pana_la "{Tab}" cnp "{Tab}" adresa_domiciliu "{Tab}" judet "{Tab}" telefon)
    ResumeHotkeys()
}

Esc::ExitApp  ; Press Esc to terminate the script