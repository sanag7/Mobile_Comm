clear

EbN0dB = (0:1:20)';
EbN0   = 10.^(EbN0dB/10);

t=[0 5 10 15 20];
v=[          ]; % BER20

%QPSK
qpsk_BER = 0.5*(erfc(sqrt(EbN0)));

% Rayleigh Theoretical BER for QPSK
Rayleigh_BER = 0.5.*(1-sqrt(EbN0./(EbN0+1)));

semilogy(EbN0dB(:,1),qpsk_BER(:,1),'-rd','LineWidth',2)
hold on, grid on
semilogy(EbN0dB(:,1),Rayleigh_BER(:,1),'-b*','LineWidth',2)
plot(t,v,'-k+','LineWidth',2)
hold off
axis([0 20 1e-7 1])
xlabel('EbN0[dB]'), ylabel('BER')
legend('Analytic AWGN QPSK','Analytic Rayleigh QPSK', 'Multi-path, Rake Receiver')
title('BER curve for Rayleigh Channel (QPSK)')