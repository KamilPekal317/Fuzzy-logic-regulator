%Regulatory rozmyte - logika rozmyta
clc
clear all

%Parametry obwodu regulacji:
Tm = 0.2;
Te = 0.001;

%Model odniesienia G(s)_ref :
omega = 30;
ksi = 1;

%Regulator rozmyty adaptacyjny
Kp_adap = 750;
Kd_adap = 50;
    

%%Nastawy prowadz¹cego:
Ke1 = 1
Kde1 = 0.02
Ku1 = 70

%%Nastawy moje dla 25 adaptacyjnego:
Ke2 = 1
Kde2 = 0.05
Ku2 = 125

%Wykresy:
figure
plot(czas,Reg25);
grid on;
ylabel("omega [p.u]");
xlabel("t[s]");
legend( "omega_{ref}","omega");


%Wykresy:
figure
plot(czas,Reg25);
grid on;
ylabel("omega [p.u]");
xlabel("t[s]");
legend( "omega_{ref}","Mo=0.5","Mo=0.8","Mo=1.0");


%Wykresy:
figure
plot(czas,Reg25);
grid on;
ylabel("omega [p.u]");
xlabel("t[s]");
legend( "omega_{ref}","Tm","2Tm","4Tm");


figure
plot(czas,Reg25);
grid on;
ylabel("omega [p.u]");
xlabel("t[s]");
legend( "omega_{ref}","omega");
axis([0,3, 0, 0.3]);
