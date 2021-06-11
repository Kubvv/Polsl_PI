//Max w tabeli
        POB TAB
        £AD max
pêtla:  POB N
        ODE jeden
        SOM koniec
        £AD N
rozkaz: POB TAB
        £AD potMax
        ODE max
        SOM nieMax
        POB potMax
        £AD max
nieMax: POB rozkaz
        DOD jeden
        £AD rozkaz
        SOB pêtla
koniec: POB max
        STP        
N:      RST 7
TAB:    RST -1
        RST -2
        RST -3
        RST -3
        RST -4
        RST -3
        RST -2
potMax: RPA
max:    RST 0
jeden:  RST 1