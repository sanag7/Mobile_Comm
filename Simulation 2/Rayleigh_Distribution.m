clf;
figure(1)
hist(real,30); hold on;
p=normpdf(-5:0.1:5,0, 0.7);
plot(-5:0.1:5,length(real)*p/5,'r','LineWidth',5); 
title('Distribution for Real Signal');


figure(2)
hist(imag,30); hold on;
q=normpdf(-5:0.1:5,0,  0.7);
plot(-5:0.1:5,length(imag)*q/5,'r','LineWidth',5);
title('Distribution for Imag Signal');


figure(3)
hist(magnitude,30); hold on;
w=raylpdf(0:0.1:5,0.7);
plot(0:0.1:5,length(magnitude)*w/10,'r','LineWidth',5);
title('Distribution for Magnitude');

hold off;

