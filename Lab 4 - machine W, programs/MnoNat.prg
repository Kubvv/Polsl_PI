        POB wynik
        £AD zero
        POB N
        £AD licz
petla:  ODE jeden
        SOM koniec
        POB licz
        DNS
        SDP mnoz
        PZS
        DOD wynik
        £AD wynik
        POB licz
        ODE jeden
        £AD licz
        SOB petla        
koniec: POB wynik        
STP

N: RST 7
licz: RPA
wynik: RPA


mnoz:   POB zero
        £AD mnowyn
        PZS
        £AD powrot
        PZS
        £AD wart
        £AD ile
mnopet: ODE jeden
        SOM konmno
        POB wart
        DOD mnowyn
        £AD mnowyn
        POB ile
        ODE jeden
        £AD ile
        SOB mnopet      
konmno: POB mnowyn
        DNS
        POB powrot
        DNS
        PWR

powrot: RPA
wart:   RPA        
ile:    RPA
mnowyn: RPA
jeden:  RST 1
zero:   RST 0