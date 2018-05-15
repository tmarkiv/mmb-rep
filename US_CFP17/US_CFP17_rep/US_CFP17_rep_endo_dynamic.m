function [residual, g1, g2, g3] = US_CFP17_rep_endo_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [M_.exo_nbr by nperiods] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           rows: equations in order of declaration
%                                                           columns: variables in order stored in M_.lead_lag_incidence
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(77, 1);
T27 = 1+params(3)*params(7)^2;
T187 = (-4)*(params(54)-params(8))/params(54);
T229 = params(55)/params(58);
T234 = T229*y(57)+y(55)*(1-T229);
T322 = params(52)/params(50);
T325 = params(51)/params(50);
T374 = (-4)*(params(53)-params(8))/params(53);
residual(1) = y(67);
residual(2) = y(88);
lhs =y(100);
rhs =y(52)-y(45)-y(26);
residual(3)= lhs-rhs;
lhs =y(43);
rhs =(params(3)*params(7)*y(107)-T27*y(44)+params(7)*y(6))/((1-params(3)*params(7))*(1-params(7)))+y(25)*(1-params(3)*params(7)*params(48))/(1-params(3)*params(7));
residual(4)= lhs-rhs;
lhs =y(72);
rhs =y(25)*(1-params(3)*params(7)*params(48))/(1-params(3)*params(7))+(params(3)*params(7)*y(114)-T27*y(73)+params(7)*y(18))/((1-params(3)*params(7))*(1-params(7)));
residual(5)= lhs-rhs;
lhs =y(26);
rhs =y(25)+y(45)*params(5)-y(43);
residual(6)= lhs-rhs;
lhs =y(82);
rhs =y(25)+params(5)*y(81)-y(72);
residual(7)= lhs-rhs;
lhs =y(48)-y(109)+y(106);
rhs =y(43);
residual(8)= lhs-rhs;
lhs =y(74)-y(115)+y(113);
rhs =y(72);
residual(9)= lhs-rhs;
lhs =y(43)+y(61)+y(41);
rhs =y(106)+(1-params(3)*(1-params(4)))*y(108)+params(3)*(1-params(4))*(y(112)+y(105));
residual(10)= lhs-rhs;
lhs =y(72)+y(76)+y(77);
rhs =y(113)+(1-params(3)*(1-params(4)))*y(118)+params(3)*(1-params(4))*(y(116)+y(117));
residual(11)= lhs-rhs;
lhs =y(41)+y(43)+y(40);
rhs =y(106)+params(3)*params(9)*(y(105)+y(104))-y(109);
residual(12)= lhs-rhs;
lhs =y(77)+y(72)+y(79);
rhs =y(113)+params(3)*params(9)*(y(117)+y(119))-y(115);
residual(13)= lhs-rhs;
lhs =(1-params(9))*(y(61)+y(60));
rhs =y(55)-params(9)*(y(40)+y(13)-y(5)-y(51));
residual(14)= lhs-rhs;
lhs =(1-params(9))*(y(76)+y(85));
rhs =y(86)-params(9)*(y(79)+y(23)-y(20)-y(75));
residual(15)= lhs-rhs;
lhs =y(49);
rhs =params(9)*y(104)/params(54)-y(40);
residual(16)= lhs-rhs;
lhs =y(80);
rhs =params(9)*y(119)/params(54)-y(79);
residual(17)= lhs-rhs;
lhs =y(49);
rhs =params(8)*y(110)/params(54)-y(54);
residual(18)= lhs-rhs;
lhs =y(80);
rhs =params(8)*y(122)/params(54)-y(92);
residual(19)= lhs-rhs;
lhs =y(64);
rhs =y(54)*T187;
residual(20)= lhs-rhs;
lhs =y(89);
rhs =y(92)*T187;
residual(21)= lhs-rhs;
lhs =(y(49)-y(48))*(params(6)-1);
rhs =y(42)+(1+params(6)*(params(59)-1))*y(71);
residual(22)= lhs-rhs;
lhs =(params(6)-1)*(y(80)-y(74));
rhs =(1+params(6)*(params(59)-1))*y(71)+y(95);
residual(23)= lhs-rhs;
lhs =params(11)*y(58);
rhs =((y(49)-y(48))*params(6)*params(59)+y(42)*params(6)*(params(59)-1))/(1+params(6)*(params(59)-1));
residual(24)= lhs-rhs;
lhs =params(11)*y(87);
rhs =((y(80)-y(74))*params(6)*params(59)+params(6)*(params(59)-1)*y(95))/(1+params(6)*(params(59)-1));
residual(25)= lhs-rhs;
lhs =y(42);
rhs =T234-y(58);
residual(26)= lhs-rhs;
lhs =y(95);
rhs =T229*y(93)+y(86)*(1-T229)-y(87);
residual(27)= lhs-rhs;
lhs =y(57)*params(55)/params(57)+y(55)*(params(6)-params(55)/params(57));
rhs =y(58)+(params(6)-1)*y(56);
residual(28)= lhs-rhs;
lhs =y(39);
rhs =T234;
residual(29)= lhs-rhs;
lhs =y(46);
rhs =y(52)+y(62)-y(45);
residual(30)= lhs-rhs;
lhs =y(82);
rhs =y(83)-y(81);
residual(31)= lhs-rhs;
lhs =y(50);
rhs =y(52)+y(62)-y(14);
residual(32)= lhs-rhs;
lhs =y(78);
rhs =y(83)-y(21);
residual(33)= lhs-rhs;
lhs =y(51)*(1+params(3)*params(24));
rhs =params(24)*y(10)+y(62)*params(27)+params(3)*y(109)-y(29);
residual(34)= lhs-rhs;
lhs =y(27)-y(10)*params(25);
rhs =params(26)*(y(26)-y(46))+params(3)*(y(102)-y(51)*params(25))-y(28);
residual(35)= lhs-rhs;
lhs =y(61);
rhs =params(10)*(y(60)-y(15)-params(3)*(y(111)-y(60)))-y(69);
residual(36)= lhs-rhs;
lhs =y(76);
rhs =params(10)*(y(85)-y(22)-params(3)*(y(120)-y(85)))-y(69);
residual(37)= lhs-rhs;
lhs =y(44)*T322+y(60)*T325;
rhs =y(52);
residual(38)= lhs-rhs;
lhs =y(73)*T322+y(85)*T325;
rhs =y(83);
residual(39)= lhs-rhs;
lhs =y(52);
rhs =y(47)+y(14)*params(1)+y(45)*(1-params(1));
residual(40)= lhs-rhs;
lhs =y(83);
rhs =y(47)+y(21)*params(1)+y(81)*(1-params(1));
residual(41)= lhs-rhs;
lhs =y(59);
rhs =(1-params(4))*y(14)+params(4)*(y(60)+y(69));
residual(42)= lhs-rhs;
lhs =y(84);
rhs =(1-params(4))*y(21)+params(4)*(y(85)+y(69));
residual(43)= lhs-rhs;
lhs =y(48);
rhs =params(8)*y(103)/params(53)-y(37);
residual(44)= lhs-rhs;
lhs =y(74);
rhs =params(8)*y(121)/params(53)-y(91);
residual(45)= lhs-rhs;
lhs =y(68);
rhs =y(37)*T374;
residual(46)= lhs-rhs;
lhs =y(90);
rhs =y(91)*T374;
residual(47)= lhs-rhs;
lhs =y(67);
rhs =y(64)-y(68);
residual(48)= lhs-rhs;
lhs =y(88);
rhs =y(89)-y(90);
residual(49)= lhs-rhs;
lhs =y(94);
rhs =y(52)-y(83);
residual(50)= lhs-rhs;
lhs =y(30);
rhs =4*(y(52)-y(11));
residual(51)= lhs-rhs;
lhs =y(31);
rhs =4*(y(60)-y(15));
residual(52)= lhs-rhs;
lhs =y(46);
rhs =y(27)+y(7)-y(51);
residual(53)= lhs-rhs;
lhs =y(32);
rhs =y(65)-y(66);
residual(54)= lhs-rhs;
lhs =y(47);
rhs =params(43)*y(8)+x(it_, 1);
residual(55)= lhs-rhs;
lhs =y(71);
rhs =params(46)*y(17)+x(it_, 4);
residual(56)= lhs-rhs;
lhs =y(69);
rhs =params(47)*y(16)+x(it_, 3);
residual(57)= lhs-rhs;
lhs =y(53);
rhs =params(19)*y(12)+x(it_, 2);
residual(58)= lhs-rhs;
lhs =y(25);
rhs =params(48)*y(1)+x(it_, 8)/(1-params(48));
residual(59)= lhs-rhs;
lhs =y(28);
rhs =params(38)*y(2)+x(it_, 6);
residual(60)= lhs-rhs;
lhs =y(29);
rhs =params(39)*y(3)+x(it_, 5);
residual(61)= lhs-rhs;
lhs =y(36);
rhs =x(it_, 7)+params(44)*y(4)+params(45)*y(24);
residual(62)= lhs-rhs;
lhs =y(48);
rhs =y(53)+params(42)*y(9)+(1-params(42))*(y(51)*params(15)+y(94)*params(14)+y(67)*params(18)/4);
residual(63)= lhs-rhs;
lhs =y(74);
rhs =y(53)+params(42)*y(19)+(1-params(42))*(y(75)*params(15)+y(88)*params(18)/4);
residual(64)= lhs-rhs;
residual(65) = y(38);
lhs =y(63);
rhs =y(51)*4;
residual(66)= lhs-rhs;
lhs =y(34);
rhs =y(63);
residual(67)= lhs-rhs;
lhs =y(66);
rhs =y(48)*4;
residual(68)= lhs-rhs;
lhs =y(65);
rhs =y(49)*4;
residual(69)= lhs-rhs;
lhs =y(70);
rhs =y(65);
residual(70)= lhs-rhs;
lhs =y(33);
rhs =y(57);
residual(71)= lhs-rhs;
lhs =y(35);
rhs =y(66);
residual(72)= lhs-rhs;
lhs =y(96);
rhs =y(64);
residual(73)= lhs-rhs;
lhs =y(97);
rhs =y(63);
residual(74)= lhs-rhs;
lhs =y(98);
rhs =y(30);
residual(75)= lhs-rhs;
lhs =y(99);
rhs =y(31);
residual(76)= lhs-rhs;
lhs =y(101);
rhs =y(4);
residual(77)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(77, 130);

  %
  % Jacobian matrix
  %

  g1(1,67)=1;
  g1(2,88)=1;
  g1(3,26)=1;
  g1(3,45)=1;
  g1(3,52)=(-1);
  g1(3,100)=1;
  g1(4,25)=(-((1-params(3)*params(7)*params(48))/(1-params(3)*params(7))));
  g1(4,43)=1;
  g1(4,6)=(-(params(7)/((1-params(3)*params(7))*(1-params(7)))));
  g1(4,44)=(-((-T27)/((1-params(3)*params(7))*(1-params(7)))));
  g1(4,107)=(-(params(3)*params(7)/((1-params(3)*params(7))*(1-params(7)))));
  g1(5,25)=(-((1-params(3)*params(7)*params(48))/(1-params(3)*params(7))));
  g1(5,72)=1;
  g1(5,18)=(-(params(7)/((1-params(3)*params(7))*(1-params(7)))));
  g1(5,73)=(-((-T27)/((1-params(3)*params(7))*(1-params(7)))));
  g1(5,114)=(-(params(3)*params(7)/((1-params(3)*params(7))*(1-params(7)))));
  g1(6,25)=(-1);
  g1(6,26)=1;
  g1(6,43)=1;
  g1(6,45)=(-params(5));
  g1(7,25)=(-1);
  g1(7,72)=1;
  g1(7,81)=(-params(5));
  g1(7,82)=1;
  g1(8,43)=(-1);
  g1(8,106)=1;
  g1(8,48)=1;
  g1(8,109)=(-1);
  g1(9,72)=(-1);
  g1(9,113)=1;
  g1(9,74)=1;
  g1(9,115)=(-1);
  g1(10,41)=1;
  g1(10,105)=(-(params(3)*(1-params(4))));
  g1(10,43)=1;
  g1(10,106)=(-1);
  g1(10,108)=(-(1-params(3)*(1-params(4))));
  g1(10,61)=1;
  g1(10,112)=(-(params(3)*(1-params(4))));
  g1(11,72)=1;
  g1(11,113)=(-1);
  g1(11,76)=1;
  g1(11,116)=(-(params(3)*(1-params(4))));
  g1(11,77)=1;
  g1(11,117)=(-(params(3)*(1-params(4))));
  g1(11,118)=(-(1-params(3)*(1-params(4))));
  g1(12,40)=1;
  g1(12,104)=(-(params(3)*params(9)));
  g1(12,41)=1;
  g1(12,105)=(-(params(3)*params(9)));
  g1(12,43)=1;
  g1(12,106)=(-1);
  g1(12,109)=1;
  g1(13,72)=1;
  g1(13,113)=(-1);
  g1(13,115)=1;
  g1(13,77)=1;
  g1(13,117)=(-(params(3)*params(9)));
  g1(13,79)=1;
  g1(13,119)=(-(params(3)*params(9)));
  g1(14,5)=(-params(9));
  g1(14,40)=params(9);
  g1(14,51)=(-params(9));
  g1(14,13)=params(9);
  g1(14,55)=(-1);
  g1(14,60)=1-params(9);
  g1(14,61)=1-params(9);
  g1(15,75)=(-params(9));
  g1(15,76)=1-params(9);
  g1(15,20)=(-params(9));
  g1(15,79)=params(9);
  g1(15,85)=1-params(9);
  g1(15,23)=params(9);
  g1(15,86)=(-1);
  g1(16,40)=1;
  g1(16,104)=(-(params(9)/params(54)));
  g1(16,49)=1;
  g1(17,79)=1;
  g1(17,119)=(-(params(9)/params(54)));
  g1(17,80)=1;
  g1(18,49)=1;
  g1(18,54)=1;
  g1(18,110)=(-(params(8)/params(54)));
  g1(19,80)=1;
  g1(19,92)=1;
  g1(19,122)=(-(params(8)/params(54)));
  g1(20,54)=(-T187);
  g1(20,64)=1;
  g1(21,89)=1;
  g1(21,92)=(-T187);
  g1(22,42)=(-1);
  g1(22,48)=(-(params(6)-1));
  g1(22,49)=params(6)-1;
  g1(22,71)=(-(1+params(6)*(params(59)-1)));
  g1(23,71)=(-(1+params(6)*(params(59)-1)));
  g1(23,74)=(-(params(6)-1));
  g1(23,80)=params(6)-1;
  g1(23,95)=(-1);
  g1(24,42)=(-(params(6)*(params(59)-1)/(1+params(6)*(params(59)-1))));
  g1(24,48)=(-((-(params(6)*params(59)))/(1+params(6)*(params(59)-1))));
  g1(24,49)=(-(params(6)*params(59)/(1+params(6)*(params(59)-1))));
  g1(24,58)=params(11);
  g1(25,74)=(-((-(params(6)*params(59)))/(1+params(6)*(params(59)-1))));
  g1(25,80)=(-(params(6)*params(59)/(1+params(6)*(params(59)-1))));
  g1(25,87)=params(11);
  g1(25,95)=(-(params(6)*(params(59)-1)/(1+params(6)*(params(59)-1))));
  g1(26,42)=1;
  g1(26,55)=(-(1-T229));
  g1(26,57)=(-T229);
  g1(26,58)=1;
  g1(27,86)=(-(1-T229));
  g1(27,87)=1;
  g1(27,93)=(-T229);
  g1(27,95)=1;
  g1(28,55)=params(6)-params(55)/params(57);
  g1(28,56)=(-(params(6)-1));
  g1(28,57)=params(55)/params(57);
  g1(28,58)=(-1);
  g1(29,39)=1;
  g1(29,55)=(-(1-T229));
  g1(29,57)=(-T229);
  g1(30,45)=1;
  g1(30,46)=1;
  g1(30,52)=(-1);
  g1(30,62)=(-1);
  g1(31,81)=1;
  g1(31,82)=1;
  g1(31,83)=(-1);
  g1(32,50)=1;
  g1(32,52)=(-1);
  g1(32,14)=1;
  g1(32,62)=(-1);
  g1(33,78)=1;
  g1(33,83)=(-1);
  g1(33,21)=1;
  g1(34,29)=1;
  g1(34,10)=(-params(24));
  g1(34,51)=1+params(3)*params(24);
  g1(34,109)=(-params(3));
  g1(34,62)=(-params(27));
  g1(35,26)=(-params(26));
  g1(35,27)=1;
  g1(35,102)=(-params(3));
  g1(35,28)=1;
  g1(35,46)=params(26);
  g1(35,10)=(-params(25));
  g1(35,51)=(-(params(3)*(-params(25))));
  g1(36,15)=params(10);
  g1(36,60)=(-(params(10)*(1-(-params(3)))));
  g1(36,111)=(-(params(10)*(-params(3))));
  g1(36,61)=1;
  g1(36,69)=1;
  g1(37,69)=1;
  g1(37,76)=1;
  g1(37,22)=params(10);
  g1(37,85)=(-(params(10)*(1-(-params(3)))));
  g1(37,120)=(-(params(10)*(-params(3))));
  g1(38,44)=T322;
  g1(38,52)=(-1);
  g1(38,60)=T325;
  g1(39,73)=T322;
  g1(39,83)=(-1);
  g1(39,85)=T325;
  g1(40,45)=(-(1-params(1)));
  g1(40,47)=(-1);
  g1(40,52)=1;
  g1(40,14)=(-params(1));
  g1(41,47)=(-1);
  g1(41,81)=(-(1-params(1)));
  g1(41,83)=1;
  g1(41,21)=(-params(1));
  g1(42,14)=(-(1-params(4)));
  g1(42,59)=1;
  g1(42,60)=(-params(4));
  g1(42,69)=(-params(4));
  g1(43,69)=(-params(4));
  g1(43,21)=(-(1-params(4)));
  g1(43,84)=1;
  g1(43,85)=(-params(4));
  g1(44,37)=1;
  g1(44,103)=(-(params(8)/params(53)));
  g1(44,48)=1;
  g1(45,74)=1;
  g1(45,91)=1;
  g1(45,121)=(-(params(8)/params(53)));
  g1(46,37)=(-T374);
  g1(46,68)=1;
  g1(47,90)=1;
  g1(47,91)=(-T374);
  g1(48,64)=(-1);
  g1(48,67)=1;
  g1(48,68)=1;
  g1(49,88)=1;
  g1(49,89)=(-1);
  g1(49,90)=1;
  g1(50,52)=(-1);
  g1(50,83)=1;
  g1(50,94)=1;
  g1(51,30)=1;
  g1(51,11)=4;
  g1(51,52)=(-4);
  g1(52,31)=1;
  g1(52,15)=4;
  g1(52,60)=(-4);
  g1(53,27)=(-1);
  g1(53,7)=(-1);
  g1(53,46)=1;
  g1(53,51)=1;
  g1(54,32)=1;
  g1(54,65)=(-1);
  g1(54,66)=1;
  g1(55,8)=(-params(43));
  g1(55,47)=1;
  g1(55,123)=(-1);
  g1(56,17)=(-params(46));
  g1(56,71)=1;
  g1(56,126)=(-1);
  g1(57,16)=(-params(47));
  g1(57,69)=1;
  g1(57,125)=(-1);
  g1(58,12)=(-params(19));
  g1(58,53)=1;
  g1(58,124)=(-1);
  g1(59,1)=(-params(48));
  g1(59,25)=1;
  g1(59,130)=(-(1/(1-params(48))));
  g1(60,2)=(-params(38));
  g1(60,28)=1;
  g1(60,128)=(-1);
  g1(61,3)=(-params(39));
  g1(61,29)=1;
  g1(61,127)=(-1);
  g1(62,4)=(-params(44));
  g1(62,36)=1;
  g1(62,129)=(-1);
  g1(62,24)=(-params(45));
  g1(63,9)=(-params(42));
  g1(63,48)=1;
  g1(63,51)=(-((1-params(42))*params(15)));
  g1(63,53)=(-1);
  g1(63,67)=(-((1-params(42))*params(18)/4));
  g1(63,94)=(-((1-params(42))*params(14)));
  g1(64,53)=(-1);
  g1(64,19)=(-params(42));
  g1(64,74)=1;
  g1(64,75)=(-((1-params(42))*params(15)));
  g1(64,88)=(-((1-params(42))*params(18)/4));
  g1(65,38)=1;
  g1(66,51)=(-4);
  g1(66,63)=1;
  g1(67,34)=1;
  g1(67,63)=(-1);
  g1(68,48)=(-4);
  g1(68,66)=1;
  g1(69,49)=(-4);
  g1(69,65)=1;
  g1(70,65)=(-1);
  g1(70,70)=1;
  g1(71,33)=1;
  g1(71,57)=(-1);
  g1(72,35)=1;
  g1(72,66)=(-1);
  g1(73,64)=(-1);
  g1(73,96)=1;
  g1(74,63)=(-1);
  g1(74,97)=1;
  g1(75,30)=(-1);
  g1(75,98)=1;
  g1(76,31)=(-1);
  g1(76,99)=1;
  g1(77,4)=(-1);
  g1(77,101)=1;
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],77,16900);
end
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],77,2197000);
end
end