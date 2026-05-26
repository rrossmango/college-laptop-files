TB_D = [1 0 0 -20; 0 cosd(30) -sind(30) -20; 0 sind(30) cosd(30) 80; 0 0 0 1;];
TB_E = [cosd(30) -sind(30) 0 10; sind(30) cosd(30) 0 50; 0 0 1 0; 0 0 0 1;];

TD_E = TB_D^-1 * TB_E;

TE_D = TD_E^-1;

RE_E2 = [1 0 0; 0 cosd(30) -sind(30); 0 sind(30) cosd(30); 0 0 0;];

RD_E2 = TD_E*RE_E2;

TD_E2 = [.866 -.433 .25 20; .433 .8995 .058 -10; -.25 .058 .9665 0; 0 0 0 1;];

TB_E2 = TB_D*TD_E2;