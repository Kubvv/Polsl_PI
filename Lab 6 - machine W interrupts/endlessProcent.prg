SOB program
SOB przerw1
SOB przerw2
SOB przerw3
SOB przerw4

program:   POB proc
           WYP 2
           SOB program
           
przerw1:   CZM MASKA 
           MAS 15
           DNS
           POB dwa
Jloop:     ODE jeden
           £AD N
           SOM Jend
           POB jedenL 
           WYP 2
           POB N
           SOB Jloop
Jend:      POB liczJe
           DOD jeden
           £AD liczJe
           ODE trzy
           SOZ koniec
           PZS
           MSK MASKA
           PWR
           
przerw2:   CZM MASKA 
           MAS 15
           DNS
           POB cztery
Dloop:     ODE jeden
           £AD N
           SOM Dend
           POB dwaL 
           WYP 2
           POB N
           SOB Dloop
Dend:      POB liczDw
           DOD jeden
           £AD liczDw
           ODE trzy
           SOZ koniec
           PZS
           MSK MASKA
           PWR 
           
przerw3:   CZM MASKA 
           MAS 15
           DNS
           POB szesc
Tloop:     ODE jeden
           £AD N
           SOM Tend
           POB trzyL 
           WYP 2
           POB N
           SOB Tloop
Tend:      POB liczTr
           DOD jeden
           £AD liczTr
           ODE szesc
           SOZ koniec
           PZS
           MSK MASKA
           PWR
           
przerw4:   CZM MASKA 
           MAS 15
           DNS
           POB osiem
Cloop:     ODE jeden
           £AD N
           SOM Cend
           POB czteryL 
           WYP 2
           POB N
           SOB Cloop
Cend:      POB liczCz
           DOD jeden
           £AD liczCz
           ODE szesc
           SOZ koniec
           PZS
           MSK MASKA
           PWR
           
koniec:    POB zero
           £AD liczJe
           £AD liczDw
           £AD liczTr
           £AD liczCz
           STP

MASKA:     RST 0           
proc:      RST '%'
jedenL:    RST '1'
dwaL:      RST '2'
trzyL:     RST '3'
czteryL:   RST '4'
liczJe:    RST 0
liczDw:    RST 0
liczTr:    RST 0
liczCz:    RST 0
zero:      RST 0
jeden:     RST 1
dwa:       RST 2
trzy:      RST 3
cztery:    RST 4
szesc:     RST 6
osiem:     RST 8
N:         RPA 