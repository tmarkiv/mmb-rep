function [residual, g1, g2] = US_CFP17_rep_endo_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the static model equations 
%                                          in order of declaration of the equations
%   g1        [M_.endo_nbr by M_.endo_nbr] double    Jacobian matrix of the static model equations;
%                                                     columns: variables in declaration order
%                                                     rows: equations in order of declaration
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 77, 1);

%
% Model equations
%

T27 = 1+params(3)*params(7)^2;
T167 = (-4)*(params(54)-params(8))/params(54);
T209 = params(55)/params(58);
T214 = T209*y(33)+y(31)*(1-T209);
T281 = params(52)/params(50);
T284 = params(51)/params(50);
T329 = (-4)*(params(53)-params(8))/params(53);
residual(1) = y(43);
residual(2) = y(64);
lhs =y(76);
rhs =y(28)-y(21)-y(2);
residual(3)= lhs-rhs;
lhs =y(19);
rhs =(params(3)*params(7)*y(20)-y(20)*T27+params(7)*y(20))/((1-params(3)*params(7))*(1-params(7)))+y(1)*(1-params(3)*params(7)*params(48))/(1-params(3)*params(7));
residual(4)= lhs-rhs;
lhs =y(48);
rhs =y(1)*(1-params(3)*params(7)*params(48))/(1-params(3)*params(7))+(params(3)*params(7)*y(49)-T27*y(49)+params(7)*y(49))/((1-params(3)*params(7))*(1-params(7)));
residual(5)= lhs-rhs;
lhs =y(2);
rhs =y(1)+y(21)*params(5)-y(19);
residual(6)= lhs-rhs;
lhs =y(58);
rhs =y(1)+params(5)*y(57)-y(48);
residual(7)= lhs-rhs;
lhs =y(19)+y(24)-y(27);
rhs =y(19);
residual(8)= lhs-rhs;
lhs =y(48)+y(50)-y(51);
rhs =y(48);
residual(9)= lhs-rhs;
lhs =y(19)+y(37)+y(17);
rhs =y(19)+(1-params(3)*(1-params(4)))*y(26)+params(3)*(1-params(4))*(y(37)+y(17));
residual(10)= lhs-rhs;
lhs =y(48)+y(52)+y(53);
rhs =y(48)+(1-params(3)*(1-params(4)))*y(54)+params(3)*(1-params(4))*(y(52)+y(53));
residual(11)= lhs-rhs;
lhs =y(17)+y(19)+y(16);
rhs =y(19)+params(3)*params(9)*(y(17)+y(16))-y(27);
residual(12)= lhs-rhs;
lhs =y(53)+y(48)+y(55);
rhs =y(48)+params(3)*params(9)*(y(53)+y(55))-y(51);
residual(13)= lhs-rhs;
lhs =(1-params(9))*(y(37)+y(36));
rhs =y(31)-params(9)*(y(16)+y(31)-y(16)-y(27));
residual(14)= lhs-rhs;
lhs =(1-params(9))*(y(52)+y(61));
rhs =y(62)-params(9)*(y(55)+y(62)-y(55)-y(51));
residual(15)= lhs-rhs;
lhs =y(25);
rhs =y(16)*params(9)/params(54)-y(16);
residual(16)= lhs-rhs;
lhs =y(56);
rhs =params(9)*y(55)/params(54)-y(55);
residual(17)= lhs-rhs;
lhs =y(25);
rhs =params(8)*y(30)/params(54)-y(30);
residual(18)= lhs-rhs;
lhs =y(56);
rhs =params(8)*y(68)/params(54)-y(68);
residual(19)= lhs-rhs;
lhs =y(40);
rhs =y(30)*T167;
residual(20)= lhs-rhs;
lhs =y(65);
rhs =y(68)*T167;
residual(21)= lhs-rhs;
lhs =(y(25)-y(24))*(params(6)-1);
rhs =y(18)+(1+params(6)*(params(59)-1))*y(47);
residual(22)= lhs-rhs;
lhs =(params(6)-1)*(y(56)-y(50));
rhs =(1+params(6)*(params(59)-1))*y(47)+y(71);
residual(23)= lhs-rhs;
lhs =params(11)*y(34);
rhs =((y(25)-y(24))*params(6)*params(59)+y(18)*params(6)*(params(59)-1))/(1+params(6)*(params(59)-1));
residual(24)= lhs-rhs;
lhs =params(11)*y(63);
rhs =((y(56)-y(50))*params(6)*params(59)+params(6)*(params(59)-1)*y(71))/(1+params(6)*(params(59)-1));
residual(25)= lhs-rhs;
lhs =y(18);
rhs =T214-y(34);
residual(26)= lhs-rhs;
lhs =y(71);
rhs =T209*y(69)+y(62)*(1-T209)-y(63);
residual(27)= lhs-rhs;
lhs =y(33)*params(55)/params(57)+y(31)*(params(6)-params(55)/params(57));
rhs =y(34)+(params(6)-1)*y(32);
residual(28)= lhs-rhs;
lhs =y(15);
rhs =T214;
residual(29)= lhs-rhs;
lhs =y(22);
rhs =y(28)+y(38)-y(21);
residual(30)= lhs-rhs;
lhs =y(58);
rhs =y(59)-y(57);
residual(31)= lhs-rhs;
lhs =y(26);
rhs =y(28)+y(38)-y(35);
residual(32)= lhs-rhs;
lhs =y(54);
rhs =y(59)-y(60);
residual(33)= lhs-rhs;
lhs =y(27)*(1+params(3)*params(24));
rhs =y(27)*params(24)+y(38)*params(27)+params(3)*y(27)-y(5);
residual(34)= lhs-rhs;
lhs =y(3)-y(27)*params(25);
rhs =params(26)*(y(2)-y(22))+params(3)*(y(3)-y(27)*params(25))-y(4);
residual(35)= lhs-rhs;
lhs =y(37);
rhs =(-y(45));
residual(36)= lhs-rhs;
lhs =y(52);
rhs =(-y(45));
residual(37)= lhs-rhs;
lhs =y(20)*T281+y(36)*T284;
rhs =y(28);
residual(38)= lhs-rhs;
lhs =y(49)*T281+y(61)*T284;
rhs =y(59);
residual(39)= lhs-rhs;
lhs =y(28);
rhs =y(23)+y(35)*params(1)+y(21)*(1-params(1));
residual(40)= lhs-rhs;
lhs =y(59);
rhs =y(23)+y(60)*params(1)+y(57)*(1-params(1));
residual(41)= lhs-rhs;
lhs =y(35);
rhs =(1-params(4))*y(35)+params(4)*(y(36)+y(45));
residual(42)= lhs-rhs;
lhs =y(60);
rhs =(1-params(4))*y(60)+params(4)*(y(61)+y(45));
residual(43)= lhs-rhs;
lhs =y(24);
rhs =params(8)*y(13)/params(53)-y(13);
residual(44)= lhs-rhs;
lhs =y(50);
rhs =params(8)*y(67)/params(53)-y(67);
residual(45)= lhs-rhs;
lhs =y(44);
rhs =y(13)*T329;
residual(46)= lhs-rhs;
lhs =y(66);
rhs =y(67)*T329;
residual(47)= lhs-rhs;
lhs =y(43);
rhs =y(40)-y(44);
residual(48)= lhs-rhs;
lhs =y(64);
rhs =y(65)-y(66);
residual(49)= lhs-rhs;
lhs =y(70);
rhs =y(28)-y(59);
residual(50)= lhs-rhs;
residual(51) = y(6);
residual(52) = y(7);
lhs =y(22);
rhs =y(22)+y(3)-y(27);
residual(53)= lhs-rhs;
lhs =y(8);
rhs =y(41)-y(42);
residual(54)= lhs-rhs;
lhs =y(23);
rhs =y(23)*params(43)+x(1);
residual(55)= lhs-rhs;
lhs =y(47);
rhs =y(47)*params(46)+x(4);
residual(56)= lhs-rhs;
lhs =y(45);
rhs =y(45)*params(47)+x(3);
residual(57)= lhs-rhs;
lhs =y(29);
rhs =y(29)*params(19)+x(2);
residual(58)= lhs-rhs;
lhs =y(1);
rhs =y(1)*params(48)+x(8)/(1-params(48));
residual(59)= lhs-rhs;
lhs =y(4);
rhs =y(4)*params(38)+x(6);
residual(60)= lhs-rhs;
lhs =y(5);
rhs =y(5)*params(39)+x(5);
residual(61)= lhs-rhs;
lhs =y(12);
rhs =x(7)+y(12)*params(44)+params(45)*y(77);
residual(62)= lhs-rhs;
lhs =y(24);
rhs =y(29)+y(24)*params(42)+(1-params(42))*(y(27)*params(15)+y(70)*params(14)+y(43)*params(18)/4);
residual(63)= lhs-rhs;
lhs =y(50);
rhs =y(29)+y(50)*params(42)+(1-params(42))*(y(51)*params(15)+y(64)*params(18)/4);
residual(64)= lhs-rhs;
residual(65) = y(14);
lhs =y(39);
rhs =y(27)*4;
residual(66)= lhs-rhs;
lhs =y(10);
rhs =y(39);
residual(67)= lhs-rhs;
lhs =y(42);
rhs =y(24)*4;
residual(68)= lhs-rhs;
lhs =y(41);
rhs =y(25)*4;
residual(69)= lhs-rhs;
lhs =y(46);
rhs =y(41);
residual(70)= lhs-rhs;
lhs =y(9);
rhs =y(33);
residual(71)= lhs-rhs;
lhs =y(11);
rhs =y(42);
residual(72)= lhs-rhs;
lhs =y(72);
rhs =y(40);
residual(73)= lhs-rhs;
lhs =y(73);
rhs =y(39);
residual(74)= lhs-rhs;
lhs =y(74);
rhs =y(6);
residual(75)= lhs-rhs;
lhs =y(75);
rhs =y(7);
residual(76)= lhs-rhs;
lhs =y(77);
rhs =y(12);
residual(77)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(77, 77);

  %
  % Jacobian matrix
  %

  g1(1,43)=1;
  g1(2,64)=1;
  g1(3,2)=1;
  g1(3,21)=1;
  g1(3,28)=(-1);
  g1(3,76)=1;
  g1(4,1)=(-((1-params(3)*params(7)*params(48))/(1-params(3)*params(7))));
  g1(4,19)=1;
  g1(4,20)=(-((params(7)+params(3)*params(7)-T27)/((1-params(3)*params(7))*(1-params(7)))));
  g1(5,1)=(-((1-params(3)*params(7)*params(48))/(1-params(3)*params(7))));
  g1(5,48)=1;
  g1(5,49)=(-((params(7)+params(3)*params(7)-T27)/((1-params(3)*params(7))*(1-params(7)))));
  g1(6,1)=(-1);
  g1(6,2)=1;
  g1(6,19)=1;
  g1(6,21)=(-params(5));
  g1(7,1)=(-1);
  g1(7,48)=1;
  g1(7,57)=(-params(5));
  g1(7,58)=1;
  g1(8,24)=1;
  g1(8,27)=(-1);
  g1(9,50)=1;
  g1(9,51)=(-1);
  g1(10,17)=1-params(3)*(1-params(4));
  g1(10,26)=(-(1-params(3)*(1-params(4))));
  g1(10,37)=1-params(3)*(1-params(4));
  g1(11,52)=1-params(3)*(1-params(4));
  g1(11,53)=1-params(3)*(1-params(4));
  g1(11,54)=(-(1-params(3)*(1-params(4))));
  g1(12,16)=1-params(3)*params(9);
  g1(12,17)=1-params(3)*params(9);
  g1(12,27)=1;
  g1(13,51)=1;
  g1(13,53)=1-params(3)*params(9);
  g1(13,55)=1-params(3)*params(9);
  g1(14,27)=(-params(9));
  g1(14,31)=(-(1-params(9)));
  g1(14,36)=1-params(9);
  g1(14,37)=1-params(9);
  g1(15,51)=(-params(9));
  g1(15,52)=1-params(9);
  g1(15,61)=1-params(9);
  g1(15,62)=(-(1-params(9)));
  g1(16,16)=(-(params(9)/params(54)-1));
  g1(16,25)=1;
  g1(17,55)=(-(params(9)/params(54)-1));
  g1(17,56)=1;
  g1(18,25)=1;
  g1(18,30)=(-(params(8)/params(54)-1));
  g1(19,56)=1;
  g1(19,68)=(-(params(8)/params(54)-1));
  g1(20,30)=(-T167);
  g1(20,40)=1;
  g1(21,65)=1;
  g1(21,68)=(-T167);
  g1(22,18)=(-1);
  g1(22,24)=(-(params(6)-1));
  g1(22,25)=params(6)-1;
  g1(22,47)=(-(1+params(6)*(params(59)-1)));
  g1(23,47)=(-(1+params(6)*(params(59)-1)));
  g1(23,50)=(-(params(6)-1));
  g1(23,56)=params(6)-1;
  g1(23,71)=(-1);
  g1(24,18)=(-(params(6)*(params(59)-1)/(1+params(6)*(params(59)-1))));
  g1(24,24)=(-((-(params(6)*params(59)))/(1+params(6)*(params(59)-1))));
  g1(24,25)=(-(params(6)*params(59)/(1+params(6)*(params(59)-1))));
  g1(24,34)=params(11);
  g1(25,50)=(-((-(params(6)*params(59)))/(1+params(6)*(params(59)-1))));
  g1(25,56)=(-(params(6)*params(59)/(1+params(6)*(params(59)-1))));
  g1(25,63)=params(11);
  g1(25,71)=(-(params(6)*(params(59)-1)/(1+params(6)*(params(59)-1))));
  g1(26,18)=1;
  g1(26,31)=(-(1-T209));
  g1(26,33)=(-T209);
  g1(26,34)=1;
  g1(27,62)=(-(1-T209));
  g1(27,63)=1;
  g1(27,69)=(-T209);
  g1(27,71)=1;
  g1(28,31)=params(6)-params(55)/params(57);
  g1(28,32)=(-(params(6)-1));
  g1(28,33)=params(55)/params(57);
  g1(28,34)=(-1);
  g1(29,15)=1;
  g1(29,31)=(-(1-T209));
  g1(29,33)=(-T209);
  g1(30,21)=1;
  g1(30,22)=1;
  g1(30,28)=(-1);
  g1(30,38)=(-1);
  g1(31,57)=1;
  g1(31,58)=1;
  g1(31,59)=(-1);
  g1(32,26)=1;
  g1(32,28)=(-1);
  g1(32,35)=1;
  g1(32,38)=(-1);
  g1(33,54)=1;
  g1(33,59)=(-1);
  g1(33,60)=1;
  g1(34,5)=1;
  g1(34,27)=1+params(3)*params(24)-(params(3)+params(24));
  g1(34,38)=(-params(27));
  g1(35,2)=(-params(26));
  g1(35,3)=1-params(3);
  g1(35,4)=1;
  g1(35,22)=params(26);
  g1(35,27)=(-params(25))-params(3)*(-params(25));
  g1(36,37)=1;
  g1(36,45)=1;
  g1(37,45)=1;
  g1(37,52)=1;
  g1(38,20)=T281;
  g1(38,28)=(-1);
  g1(38,36)=T284;
  g1(39,49)=T281;
  g1(39,59)=(-1);
  g1(39,61)=T284;
  g1(40,21)=(-(1-params(1)));
  g1(40,23)=(-1);
  g1(40,28)=1;
  g1(40,35)=(-params(1));
  g1(41,23)=(-1);
  g1(41,57)=(-(1-params(1)));
  g1(41,59)=1;
  g1(41,60)=(-params(1));
  g1(42,35)=1-(1-params(4));
  g1(42,36)=(-params(4));
  g1(42,45)=(-params(4));
  g1(43,45)=(-params(4));
  g1(43,60)=1-(1-params(4));
  g1(43,61)=(-params(4));
  g1(44,13)=(-(params(8)/params(53)-1));
  g1(44,24)=1;
  g1(45,50)=1;
  g1(45,67)=(-(params(8)/params(53)-1));
  g1(46,13)=(-T329);
  g1(46,44)=1;
  g1(47,66)=1;
  g1(47,67)=(-T329);
  g1(48,40)=(-1);
  g1(48,43)=1;
  g1(48,44)=1;
  g1(49,64)=1;
  g1(49,65)=(-1);
  g1(49,66)=1;
  g1(50,28)=(-1);
  g1(50,59)=1;
  g1(50,70)=1;
  g1(51,6)=1;
  g1(52,7)=1;
  g1(53,3)=(-1);
  g1(53,27)=1;
  g1(54,8)=1;
  g1(54,41)=(-1);
  g1(54,42)=1;
  g1(55,23)=1-params(43);
  g1(56,47)=1-params(46);
  g1(57,45)=1-params(47);
  g1(58,29)=1-params(19);
  g1(59,1)=1-params(48);
  g1(60,4)=1-params(38);
  g1(61,5)=1-params(39);
  g1(62,12)=1-params(44);
  g1(62,77)=(-params(45));
  g1(63,24)=1-params(42);
  g1(63,27)=(-((1-params(42))*params(15)));
  g1(63,29)=(-1);
  g1(63,43)=(-((1-params(42))*params(18)/4));
  g1(63,70)=(-((1-params(42))*params(14)));
  g1(64,29)=(-1);
  g1(64,50)=1-params(42);
  g1(64,51)=(-((1-params(42))*params(15)));
  g1(64,64)=(-((1-params(42))*params(18)/4));
  g1(65,14)=1;
  g1(66,27)=(-4);
  g1(66,39)=1;
  g1(67,10)=1;
  g1(67,39)=(-1);
  g1(68,24)=(-4);
  g1(68,42)=1;
  g1(69,25)=(-4);
  g1(69,41)=1;
  g1(70,41)=(-1);
  g1(70,46)=1;
  g1(71,9)=1;
  g1(71,33)=(-1);
  g1(72,11)=1;
  g1(72,42)=(-1);
  g1(73,40)=(-1);
  g1(73,72)=1;
  g1(74,39)=(-1);
  g1(74,73)=1;
  g1(75,6)=(-1);
  g1(75,74)=1;
  g1(76,7)=(-1);
  g1(76,75)=1;
  g1(77,12)=(-1);
  g1(77,77)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],77,5929);
end
end
