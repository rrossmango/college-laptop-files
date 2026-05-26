syms t1 t2 t3 t4 xo yo zo t5 t6

T_01=[cos(t1) -sin(t1) 0 0;
    sin(t1) cos(t1) 0 0; 
    0 0 1 0;
    0 0 0 1;];

T_12 = [cos(t2) -sin(t2) 0 0;
    0 0 1 1;
    -sin(t2) -cos(t2) 0 0; 
    0 0 0 1;];

T_23 = [cos(t3) -sin(t3) 0 0;
    sin(t3)/sqrt(2) cos(t3)/sqrt(2) -1/sqrt(2) -1/sqrt(2);
    sin(t3)/sqrt(2) cos(t3)/sqrt(2) 1/sqrt(2) 1/sqrt(2);
    0 0 0 1;];

T_34 = [cos(t4) -sin(t4) 0 1;
    sin(t4) cos(t4) 0 0;
    0 0 1 0;
    0 0 0 1;];

T_04 = T_01*T_12*T_23*T_34;

T_04 = simplify(expand(T_04));

x = T_04(1,4);
y = T_04(2,4);
z = T_04(3,4);
d = T_04(4,4);

x=simplify(expand(x));

eqn = x^2 + y^2 + z^2;
expanded_eqn = expand(eqn);
vpa_eqn = vpa(eqn);
simplifed_eqn = simplify(eqn);
plswork = simplify(expanded_eqn);

%theta3plus(xo,yo,zo) = atan2((xo^2+yo^2+zo^2-sqrt(2)-3)/sqrt(2),sqrt(1-(xo^2+yo^2+zo^2-sqrt(2)-3)/sqrt(2))^2);
%theta3neg(xo,yo,zo) = atan2((xo^2+yo^2+zo^2-sqrt(2)-3)/sqrt(2),-sqrt(1-(xo^2+yo^2+zo^2-sqrt(2)-3)/sqrt(2))^2);
atan2d(0,sqrt(2))
%theta3neg(0,1,sqrt(2))

T_45 = [cos(t5) -sin(t5) 0 0;
    0 0 1 0;
    -sin(t5) -cos(t5) 0 0;
    0 0 0 1;];

T_56 = [cos(t6) -sin(t6) 0 0;
    0 0 -1 0;
    sin(t6) cos(t6) 0 0;
    0 0 0 1;];

T_46 = T_45*T_56;
T_46