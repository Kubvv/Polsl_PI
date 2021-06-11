loop:        wpr 1
             ode gwiaz
             soz bylaGwiazda
             sob loop

bylaGwiazda: pob licz
             ode jeden
             ³ad licz
             soz koniec
             sob loop
             
koniec:      stp
 

licz:  RST 4
jeden: RST 1
gwiaz: RST 42 