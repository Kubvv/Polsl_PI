//wpisywanie do tablicy do napotkania 4 *
             pob b1
             ³ad czytet
             pob b2
             ³ad ³adet
             pob Zero
             ³ad dlug
             ³ad liczA
             ³ad liczC
             pob cztery
             ³ad licz
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
             soz koniecInput
             sob loop

AdoG:        dod Gplus
³adet:       ³ad tab
             pob ³adet
             dod jeden
             ³ad ³adet
             pob dlug
             dod jeden
             ³ad dlug
             sob loop

//Liczenie wystapien A i C            
koniecInput: pob dlug
             sdp Write
             pob EOL
             wyp 2
loop2:       pob dlug
             ode jeden
             ³ad dlug
             som loopA
czytet:      pob tab
             ode A
             soz jestA
             dod A
             ode C
             soz jestC
powrot:      pob czytet
             dod jeden
             ³ad czytet       
             sob loop2     
             
jestA:       pob liczA
             dod jeden
             ³ad liczA
             sob powrot
             
jestC:       pob liczC
             dod jeden
             ³ad liczC
             sob powrot

//Wypisywanie A i C             
loopA:       pob liczA
             ode jeden
             ³ad liczA
             som gotoC
             pob A
             wyp 2
             pob spacja
             wyp 2
             sob loopA

gotoC:       pob EOL
             wyp 2             
loopC:       pob liczC
             ode jeden
             ³ad liczC
             som koniec
             pob C
             wyp 2
             pob spacja
             wyp 2
             sob loopC

koniec:      stp
       
//Podprogram Write
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

liczba:      RPA
tmp:         RPA
St10:        RST 10
Znak0:       RST '0'
Minus:       RST '-'

Zero:  RST 0
cztery: RST 4
licz:  RPA
liczA: RPA
liczC: RPA
jeden: RST 1
gwiaz: RST 42
A:     RST 65
C:     RST 67
spacja: RST 32
Gplus: RST 72
EOL:   RST 10
dlug:  RPA
b1:    POB tab
b2:    £AD tab 
tab:   RPA
   