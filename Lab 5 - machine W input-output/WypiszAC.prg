//wpisywanie do tablicy do napotkania 4 *
             pob b1
             �ad czytet
             pob b2
             �ad �adet
             pob Zero
             �ad dlug
             �ad liczA
             �ad liczC
             pob cztery
             �ad licz
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
             �ad licz
             soz koniecInput
             sob loop

AdoG:        dod Gplus
�adet:       �ad tab
             pob �adet
             dod jeden
             �ad �adet
             pob dlug
             dod jeden
             �ad dlug
             sob loop

//Liczenie wystapien A i C            
koniecInput: pob dlug
             sdp Write
             pob EOL
             wyp 2
loop2:       pob dlug
             ode jeden
             �ad dlug
             som loopA
czytet:      pob tab
             ode A
             soz jestA
             dod A
             ode C
             soz jestC
powrot:      pob czytet
             dod jeden
             �ad czytet       
             sob loop2     
             
jestA:       pob liczA
             dod jeden
             �ad liczA
             sob powrot
             
jestC:       pob liczC
             dod jeden
             �ad liczC
             sob powrot

//Wypisywanie A i C             
loopA:       pob liczA
             ode jeden
             �ad liczA
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
             �ad liczC
             som koniec
             pob C
             wyp 2
             pob spacja
             wyp 2
             sob loopC

koniec:      stp
       
//Podprogram Write
Write:       �AD liczba
             POB Zero
             DNS
             POB liczba
             SOM Abs
             
Posit:       DZI St10
             MNO St10
             �AD tmp
             POB liczba
             ODE tmp
             DOD Znak0
             DNS
             POB tmp
             DZI St10
             SOZ Koncz
             �AD liczba
             SOB Posit
             
Abs:         POB Minus
             WYP 2
             POB Zero
             ODE liczba
             �AD liczba
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
b2:    �AD tab 
tab:   RPA
   