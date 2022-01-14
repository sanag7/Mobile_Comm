M = 4;          %   M = 1 (BPSK), 2 (QPSK), 4 (16QAM), 6 (64QAM)
Rolloff = 0.25;    %   Rolloff Factor : 0 ~ 1
EbN0 = 10;      %   EbN0
if(M==1)
    Buff = 4;
    norm = 1;
    GroupDelay = 4;
elseif(M==2)
    norm = sqrt(2);
    Buff = 4;
    GroupDelay = 4;
elseif(M==4)
    norm = sqrt(10);
    Buff = 4;
    GroupDelay = 4;
elseif(M==6)
    norm = sqrt(42);
    Buff = 6;
    GroupDelay = 4;
end

