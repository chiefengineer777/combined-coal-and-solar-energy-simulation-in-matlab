% Kuwait coal-solar Hybrid power plant
PE = 92090625; % Electrical power in watts required to preheat the steam
P = 150; % Price of one PV module in dollars
Irr = [500 800 1000]; % Values of Irradiance
Temp = [10 25 30]; % Values of temperarture
for i = 3
I = Irr(i); % Irradiance to be simulated
T = Temp(i); % Temperature to be simulated
sim('Kuwait_Hyrbrid_Power_Plant'); % run the simulation
hp(i,:) = yout(:,2);
end
plot(tout,hp(1,:), tout,hp(2,:), tout,hp(3,:)); % plot power against time
xlabel('Time (seconds)');
ylabel('Power (watts)');
title('Power produced in summer');
legend('Irradiance = 500 W/m^2, Irradiance = 800 W/m^2, Irradiance = 1000
W/m^2'); % plot legend