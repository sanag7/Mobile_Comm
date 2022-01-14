clear

EbN0dB = (0:1:10)';
EbN0   = 10.^(EbN0dB/10);

x=[0 2 4 6 8 10];
y=[       ]; % BERspread8
q=[0 2 4 6 8 10];
p=[       ]; % BERnormal8

qpsk_BER = 0.5*(erfc(sqrt(EbN0)));

semilogy(EbN0dB(:,1),qpsk_BER(:,1),'r','LineWidth',2)
hold on
grid on

plot(x,y,'-ks') 
plot(q,p,'-bs')
hold off
axis([0 10 1e-7 1])
xlabel('EbN0[dB]'), ylabel('BER')
legend('Analytic QPSK','DSSS QPSK','No DSSS QPSK','Location','SouthWest')
title('BER curve for AWGN channel ( Analytic / Simulation )')