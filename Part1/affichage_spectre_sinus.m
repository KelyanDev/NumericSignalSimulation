clc;
close;    %ferme les anciennes figures

f=1000;  %fréquence du signal x(t)
A=5;  %amplitude de x(t)

fe=40000; %fréquence d'échantillonnage
Te=1/fe;  %durée d'un échantillon
Ns=2000; %nombre d'échantillons

t=0:Te:(Ns-1)*Te;

x=A*cos(2*pi*f*t); % génération de x(t)

% Affichage de x(t)
subplot(2,1,1)
plot(t*1000,x,"r")
title('représentation d''un cosinus de 1000Hz')
xlabel('t (ms)')
ylabel('volt')
legend('x(t)=5scos(2pi.1000.t)')
grid on
axis([0 2 -6 6])

%calcul de X(f): spectre en amplitude de x(t)
[X f]=spectre(x,fe,Ns);  % appel à la fonction  spectre.

% affichage du spectre en amplitude
subplot(2,1,2)
plot(f,X,"b");
title('représentation du spectre en amplitude de x(t)')
xlabel('f (Hz)')
ylabel('Volt')
legend('|X(f)|')
axis([0 10000 0 6])  %affichage entre 0 et 10kHz
grid on


