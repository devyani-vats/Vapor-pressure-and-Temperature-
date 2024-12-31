%Assignment 16 

clc, clear 
format compact

 syms A B C P T
  eq1 = (B/(A -log10(P))-C -T);
  T_solved = solve(eq1, P);
 
 T_solved_water = subs(T_solved, [A, B , C, T] ,[8.14019, 1810.94, 244.485, 100]);
 water_eq = subs(T_solved, [A, B , C ] ,[8.14019, 1810.94, 244.485]);
 Ben_eq = subs(T_solved, [A, B , C ] ,[6.89272, 1203.523, 219.888]);


disp('Water vapor pressure at 100 degrees Celcius of water : ')
disp(double(T_solved_water))

ezplot(water_eq,[100, 370] )
title('P vs T for Water: ')
ylabel('Pressure')
grid on 
subplot(1, 2, 2)
ezplot(Ben_eq, [100, 1000])
title('P vs T for Benzene: ')
ylabel('Pressure')
grid on 

% Output: 
% Warning: Solutions are only valid under certain
% conditions. To include parameters and conditions in the
% solution, specify the 'ReturnConditions' value as
% 'true'. 
% > In sym/solve>warnIfParams (line 478)
% In sym/solve (line 357)
% In Assignment16 (line 8) 
% Water vapor pressure at 100 degrees Celcius of water : 
%   764.2602