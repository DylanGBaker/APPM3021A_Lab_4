function submission4

%% Question 1.1
Resistance = [1101.0; 911.3; 636.0; 451.1; 233.5];
Temperature = [25.113; 30.131; 40.120; 50.128; 60.136];

[co, T] = NewtonInterp(Resistance, Temperature)
%% Question 1.2
Rq = [1050.1; 901.56; 875.11; 711.40; 545.27; 333.1; 200];

Tq = NewtonInterpolation2(Resistance, Temperature, Rq)

plot(Temperature, Resistance, '-d')
hold on
plot(Tq,Rq, '-*')
legend("T VS R", "Tq VS Rq")
xlabel("Temperature")
ylabel("Resistance")
hold off

%% Question 2.1



%% Question 2.2


 
 %% Question 3a

 %% Question 3b