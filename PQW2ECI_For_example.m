P_pqw1=[1 2 3;4 5 6;7 8 9];
P_xyz1=PQW2ECI(30,15,30)*P_pqw1;

P_pqw2=[15 30 45;20 30 40;50 60 70];
P_xyz2=PQW2ECI(30,15,30)*P_pqw2;

P_pqw3=[150 300 405;200 300 400;500 600 700];
P_xyz3=PQW2ECI(300,150,270)*P_pqw3;