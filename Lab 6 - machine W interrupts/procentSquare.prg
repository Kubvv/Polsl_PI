SOB program
SOB przerw1
SOB przerw2
SOB przerw3
SOB przerw4

program:   POB dzie
           £AD liczRz
           £AD liczKol
           POB proc
loopRz:    POB liczRz
           ODE jeden
           £AD liczRz
           SOM koniec
loopKol:   POB liczKol
           ODE jeden
           £AD liczKol
           SOM konKol
           POB proc
           WYP 2
           SOB loopKol
konKol:    POB dzie
           £AD liczKol
           POB eol
           WYP 2
           SOB loopRz
koniec:    STP           

przerw1:   CZM MASKA 
           MAS 15
           DNS
           POB jedenL           
           WYP 2
           PZS
           MSK MASKA
           STP

przerw2:   CZM MASKA 
           MAS 15
           DNS
           POB dwaL
           WYP 2
           PZS
           MSK MASKA
           PWR 
           
przerw3:   CZM MASKA 
           MAS 15
           DNS
           POB trzyL
           WYP 2
           PZS
           MSK MASKA
           PWR
           
przerw4:   CZM MASKA 
           MAS 15
           DNS
           POB czteryL
           WYP 2
           PZS
           MSK MASKA
           PWR      


MASKA: RST 0           
proc: RST 37
eol: RST 10
liczRz: RPA
liczKol: RPA
zero: RST 0
jeden: RST 1
jedenL: RST '1'
dwaL: RST '2'
trzyL: RST '3'
czteryL: RST '4'
dzie: RST 10 