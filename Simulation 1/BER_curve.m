clear

EbN0dB = (0:1:10)';
EbN0   = 10.^(EbN0dB/10);

% QPSK
M=4;
four_qam_BER = (1-1/sqrt(M))/log2(sqrt(M))*(erfc(sqrt((3*log2(sqrt(M))*EbN0*log2(M))/((M-1)*log2(M)))));
% 16QAM
M=16;
sixteen_qam_BER =  (1-1/sqrt(M))/log2(sqrt(M))*(erfc(sqrt((3*log2(sqrt(M))*EbN0*log2(M))/((M-1)*log2(M)))));
% 64QAM
M=64;
sixtyfour_qam_BER = (1-1/sqrt(M))/log2(sqrt(M))*(erfc(sqrt((3*log2(sqrt(M))*EbN0*log2(M))/((M-1)*log2(M)))));

%16QAM Analytic BER
semilogy(EbN0dB(:,1),sixteen_qam_BER(:,1),'-g','LineWidth',2); hold on
%64QAM Analytic BER
semilogy(EbN0dB(:,1),sixtyfour_qam_BER(:,1),'-b','LineWidth',2);


x=[0 3 6 10];
y=[    ];  %16QAM BER 
plot(x,y,'kx','LineWidth',10)


x=[0 3 6 10];
y=[     ];  %64QAM BER
plot(x,y,'rx','LineWidth',10)


title ('BER Curve for AWGN Channel (Analytic / Simulation)')
xlabel('EbN0[dB]')
ylabel('BER')
legend('Analytic-16QAM','Analytic-64QAM','Simulation-16QAM','Simulation-64QAM')
grid on
hold off
