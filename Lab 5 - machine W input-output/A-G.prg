             pob b2
             ³ad et
loop:        wpr 1
             ode gwiaz
             soz bylaGwiazda
             dod gwiaz
             ode A
             som loop
             dod A
             ode Gplus
             som AdoG
             sob loop

bylaGwiazda: pob licz
             ode jeden
             ³ad licz
             soz koniec
             sob loop

AdoG:        dod Gplus
et:          ³ad tab
             pob et
             dod jeden
             ³ad et
             pob dlug
             dod jeden
             ³ad dlug
             sob loop
             
koniec:      pob dlug
             sdp Write
             stp

Write:       £AD liczba
             POB Zero
             DNS
             POB liczba
             SOM Abs
             
Posit:       DZI St10
             MNO St10
             £AD tmp
             POB liczba
             ODE tmp
             DOD Znak0
             DNS
             POB tmp
             DZI St10
             SOZ Koncz
             £AD liczba
             SOB Posit
             
Abs:         POB Minus
             WYP 2
             POB Zero
             ODE liczba
             £AD liczba
             SOB Posit
             
Koncz:       PZS
             SOZ Wracaj
             WYP 2
             SOB Koncz

Wracaj:      PWR

Zero:        RST 0
liczba:      RPA
tmp:         RPA
St10:        RST 10
Znak0:       RST '0'
Minus:       RST '-'

licz:  RST 4
jeden: RST 1
gwiaz: RST 42
A:     RST 65
Gplus: RST 72
dlug:  RST 0
b2:    £AD tab 
tab:   RPA
   