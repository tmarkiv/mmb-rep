function [residual, g1, g2] = US_FV15_rep_static(y, x, params)
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

residual = zeros( 36, 1);

%
% Model equations
%

T13 = y(3)^(-1);
T47 = y(4)^(-1);
T48 = T13*params(2)*y(6)/y(6)*T47;
T58 = params(3)*(y(11)-1)+params(4)/2*(y(11)-1)^2;
T69 = 1-params(6)/2*(y(3)-params(26))^2;
T93 = (params(7)-1)/params(7)*y(16)^(1-params(7));
T103 = y(8)^params(11);
T104 = T103/y(8);
T108 = params(2)*params(14)*T104^(1-params(7))*y(3)^(params(7)-1);
T121 = y(17)^((-params(7))*(1+params(10)));
T123 = y(14)^(1+params(10));
T129 = params(2)*params(14)*T104^((-params(7))*(1+params(10)))*y(3)^(params(7)*(1+params(10)));
T142 = y(8)^params(12)/y(8);
T158 = y(18)*params(2)*params(13)*T142^(1-params(8))/y(18);
T171 = params(15)/(1-params(15));
T173 = y(15)*T171/y(9);
T177 = 1/(1-params(15));
T181 = T177^(1-params(15))*(1/params(15))^params(15);
T183 = T181*y(15)^(1-params(15));
T204 = (y(7)/params(16))^params(18);
T210 = (y(8)/params(17))^(params(19)*y(34));
T213 = y(3)/exp(params(27));
T217 = T213^(params(20)*y(35));
T218 = T210*T217;
T227 = exp(x(5))^(params(32)*y(33));
T236 = y(14)^(1-params(15));
T239 = (y(11)*y(23))^params(15);
T260 = params(14)*(T13*T103/y(8))^(-params(7));
T430 = getPowerDeriv(y(3),(-1),1);
T483 = getPowerDeriv(T218,1-params(18),1);
T499 = getPowerDeriv(T13*T103/y(8),(-params(7)),1);
T562 = (y(8)*getPowerDeriv(y(8),params(11),1)-T103)/(y(8)*y(8));
T578 = (y(8)*getPowerDeriv(y(8),params(12),1)-y(8)^params(12))/(y(8)*y(8));
lhs =y(1)*(y(2)-y(2)*params(1)*T13)^(-1)-y(1)*params(1)*params(2)*(y(2)*y(3)-y(2)*params(1))^(-1);
rhs =y(6);
residual(1)= lhs-rhs;
lhs =y(6);
rhs =T13*params(2)*y(6)/y(8)*y(7);
residual(2)= lhs-rhs;
lhs =y(9);
rhs =params(3)+params(4)*(y(11)-1);
residual(3)= lhs-rhs;
lhs =y(12);
rhs =T48*(y(12)*(1-params(5))+y(9)*y(11)-T58);
residual(4)= lhs-rhs;
lhs =1;
rhs =y(12)*(T69-y(3)*y(10)*params(6)*(y(3)-params(26))/y(10))+(y(3)-params(26))*params(6)*T13*y(6)*params(2)*y(12)/y(6)*y(3)^2;
residual(5)= lhs-rhs;
lhs =y(13);
rhs =y(6)*T93*y(15)^params(7)*y(14)+y(13)*T108;
residual(6)= lhs-rhs;
lhs =y(13);
rhs =y(1)*params(9)*y(27)*T121*T123+y(13)*T129;
residual(7)= lhs-rhs;
lhs =y(19);
rhs =y(6)*y(22)*y(21)+y(19)*params(2)*params(13)*T142^(-params(8));
residual(8)= lhs-rhs;
lhs =y(20);
rhs =y(21)*y(6)*y(18)+y(20)*T158;
residual(9)= lhs-rhs;
lhs =y(19)*params(8);
rhs =y(20)*(params(8)-1);
residual(10)= lhs-rhs;
lhs =y(11)*y(23)/y(14);
rhs =y(4)*y(3)*T173;
residual(11)= lhs-rhs;
lhs =y(22);
rhs =T183*y(9)^params(15);
residual(12)= lhs-rhs;
lhs =1;
rhs =params(14)*T104^(1-params(7))*(T13)^(1-params(7))+(1-params(14))*y(17)^(1-params(7));
residual(13)= lhs-rhs;
lhs =1;
rhs =params(13)*T142^(1-params(8))+(1-params(13))*y(18)^(1-params(8));
residual(14)= lhs-rhs;
lhs =y(7)/params(16);
rhs =T204*T218^(1-params(18))*T227;
residual(15)= lhs-rhs;
lhs =y(21);
rhs =y(2)+y(10)+y(23)*T58*T13*T47;
residual(16)= lhs-rhs;
lhs =y(21);
rhs =(T236*T13*y(5)*T239-params(21))/y(24);
residual(17)= lhs-rhs;
lhs =y(26);
rhs =y(14)*y(25);
residual(18)= lhs-rhs;
lhs =y(24);
rhs =y(24)*params(13)*T142^(-params(8))+(1-params(13))*y(18)^(-params(8));
residual(19)= lhs-rhs;
lhs =y(25);
rhs =y(25)*T260+(1-params(14))*y(17)^(-params(7));
residual(20)= lhs-rhs;
residual(21) = y(4)*y(3)*y(23)-(1-params(5))*y(23)-y(10)*T69*y(3)*y(4);
lhs =y(28);
rhs =y(21)-y(14)*y(15)*T177;
residual(22)= lhs-rhs;
lhs =y(17);
rhs =y(16)/y(15);
residual(23)= lhs-rhs;
lhs =log(y(1));
rhs =log(y(1))*params(22)+params(28)*y(29)*x(1);
residual(24)= lhs-rhs;
lhs =log(y(27));
rhs =log(y(27))*params(23)+params(29)*y(30)*x(2);
residual(25)= lhs-rhs;
lhs =log(y(4));
rhs =params(24)+params(30)*y(31)*x(3);
residual(26)= lhs-rhs;
lhs =log(y(5));
rhs =params(25)+params(31)*y(32)*x(4);
residual(27)= lhs-rhs;
lhs =y(3);
rhs =y(5)^T177*y(4)^T171;
residual(28)= lhs-rhs;
lhs =log(y(29));
rhs =log(y(29))*params(33)+(1-params(33)^2)^0.5*params(40)*x(6);
residual(29)= lhs-rhs;
lhs =log(y(30));
rhs =log(y(30))*params(34)+(1-params(34)^2)^0.5*params(41)*x(7);
residual(30)= lhs-rhs;
lhs =log(y(31));
rhs =log(y(31))*params(35)+(1-params(35)^2)^0.5*params(42)*x(8);
residual(31)= lhs-rhs;
lhs =log(y(32));
rhs =log(y(32))*params(36)+(1-params(36)^2)^0.5*params(43)*x(9);
residual(32)= lhs-rhs;
lhs =log(y(33));
rhs =log(y(33))*params(37)+(1-params(37)^2)^0.5*params(44)*x(10);
residual(33)= lhs-rhs;
lhs =log(y(34));
rhs =log(y(34))*params(38)+(1-params(38)^2)^0.5*params(45)*x(11);
residual(34)= lhs-rhs;
lhs =log(y(35));
rhs =log(y(35))*params(39)+(1-params(39)^2)^0.5*params(46)*x(12);
residual(35)= lhs-rhs;
lhs =y(36);
rhs =T213;
residual(36)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(36, 36);

  %
  % Jacobian matrix
  %

  g1(1,1)=(y(2)-y(2)*params(1)*T13)^(-1)-params(1)*params(2)*(y(2)*y(3)-y(2)*params(1))^(-1);
  g1(1,2)=y(1)*(1-params(1)*T13)*getPowerDeriv(y(2)-y(2)*params(1)*T13,(-1),1)-y(1)*params(1)*params(2)*(y(3)-params(1))*getPowerDeriv(y(2)*y(3)-y(2)*params(1),(-1),1);
  g1(1,3)=y(1)*getPowerDeriv(y(2)-y(2)*params(1)*T13,(-1),1)*(-(y(2)*params(1)*T430))-y(1)*params(1)*params(2)*y(2)*getPowerDeriv(y(2)*y(3)-y(2)*params(1),(-1),1);
  g1(1,6)=(-1);
  g1(2,3)=(-(y(7)*params(2)*y(6)*T430/y(8)));
  g1(2,6)=1-y(7)*T13*params(2)/y(8);
  g1(2,7)=(-(T13*params(2)*y(6)/y(8)));
  g1(2,8)=(-(y(7)*(-(T13*params(2)*y(6)))/(y(8)*y(8))));
  g1(3,9)=1;
  g1(3,11)=(-params(4));
  g1(4,3)=(-((y(12)*(1-params(5))+y(9)*y(11)-T58)*T47*params(2)*y(6)/y(6)*T430));
  g1(4,4)=(-((y(12)*(1-params(5))+y(9)*y(11)-T58)*T13*params(2)*y(6)/y(6)*getPowerDeriv(y(4),(-1),1)));
  g1(4,9)=(-(y(11)*T48));
  g1(4,11)=(-(T48*(y(9)-(params(3)+params(4)/2*2*(y(11)-1)))));
  g1(4,12)=1-T48*(1-params(5));
  g1(5,3)=(-(y(12)*((-(params(6)/2*2*(y(3)-params(26))))-(y(10)*params(6)*(y(3)-params(26))/y(10)+y(3)*params(6)*y(10)/y(10)))+y(3)^2*(params(6)*T13*y(6)*params(2)*y(12)/y(6)+(y(3)-params(26))*params(6)*y(6)*params(2)*y(12)/y(6)*T430)+(y(3)-params(26))*params(6)*T13*y(6)*params(2)*y(12)/y(6)*2*y(3)));
  g1(5,12)=(-(T69-y(3)*y(10)*params(6)*(y(3)-params(26))/y(10)+y(3)^2*(y(3)-params(26))*T13*params(2)*y(6)/y(6)*params(6)));
  g1(6,3)=(-(y(13)*params(2)*params(14)*T104^(1-params(7))*getPowerDeriv(y(3),params(7)-1,1)));
  g1(6,6)=(-(y(14)*T93*y(15)^params(7)));
  g1(6,8)=(-(y(13)*y(3)^(params(7)-1)*params(2)*params(14)*T562*getPowerDeriv(T104,1-params(7),1)));
  g1(6,13)=1-T108;
  g1(6,14)=(-(y(6)*T93*y(15)^params(7)));
  g1(6,15)=(-(y(14)*y(6)*T93*getPowerDeriv(y(15),params(7),1)));
  g1(6,16)=(-(y(14)*y(15)^params(7)*y(6)*(params(7)-1)/params(7)*getPowerDeriv(y(16),1-params(7),1)));
  g1(7,1)=(-(T123*T121*params(9)*y(27)));
  g1(7,3)=(-(y(13)*params(2)*params(14)*T104^((-params(7))*(1+params(10)))*getPowerDeriv(y(3),params(7)*(1+params(10)),1)));
  g1(7,8)=(-(y(13)*y(3)^(params(7)*(1+params(10)))*params(2)*params(14)*T562*getPowerDeriv(T104,(-params(7))*(1+params(10)),1)));
  g1(7,13)=1-T129;
  g1(7,14)=(-(y(1)*params(9)*y(27)*T121*getPowerDeriv(y(14),1+params(10),1)));
  g1(7,17)=(-(T123*y(1)*params(9)*y(27)*getPowerDeriv(y(17),(-params(7))*(1+params(10)),1)));
  g1(7,27)=(-(T123*y(1)*params(9)*T121));
  g1(8,6)=(-(y(22)*y(21)));
  g1(8,8)=(-(y(19)*params(2)*params(13)*T578*getPowerDeriv(T142,(-params(8)),1)));
  g1(8,19)=1-params(2)*params(13)*T142^(-params(8));
  g1(8,21)=(-(y(6)*y(22)));
  g1(8,22)=(-(y(6)*y(21)));
  g1(9,6)=(-(y(21)*y(18)));
  g1(9,8)=(-(y(20)*y(18)*params(2)*params(13)*T578*getPowerDeriv(T142,1-params(8),1)/y(18)));
  g1(9,18)=(-(y(6)*y(21)));
  g1(9,20)=1-T158;
  g1(9,21)=(-(y(6)*y(18)));
  g1(10,19)=params(8);
  g1(10,20)=(-(params(8)-1));
  g1(11,3)=(-(y(4)*T173));
  g1(11,4)=(-(y(3)*T173));
  g1(11,9)=(-(y(4)*y(3)*(-(y(15)*T171))/(y(9)*y(9))));
  g1(11,11)=y(23)/y(14);
  g1(11,14)=(-(y(11)*y(23)))/(y(14)*y(14));
  g1(11,15)=(-(y(4)*y(3)*T171/y(9)));
  g1(11,23)=y(11)/y(14);
  g1(12,9)=(-(T183*getPowerDeriv(y(9),params(15),1)));
  g1(12,15)=(-(y(9)^params(15)*T181*getPowerDeriv(y(15),1-params(15),1)));
  g1(12,22)=1;
  g1(13,3)=(-(params(14)*T104^(1-params(7))*T430*getPowerDeriv(T13,1-params(7),1)));
  g1(13,8)=(-((T13)^(1-params(7))*params(14)*T562*getPowerDeriv(T104,1-params(7),1)));
  g1(13,17)=(-((1-params(14))*getPowerDeriv(y(17),1-params(7),1)));
  g1(14,8)=(-(params(13)*T578*getPowerDeriv(T142,1-params(8),1)));
  g1(14,18)=(-((1-params(13))*getPowerDeriv(y(18),1-params(8),1)));
  g1(15,3)=(-(T227*T204*T210*1/exp(params(27))*getPowerDeriv(T213,params(20)*y(35),1)*T483));
  g1(15,7)=1/params(16)-T227*T218^(1-params(18))*1/params(16)*getPowerDeriv(y(7)/params(16),params(18),1);
  g1(15,8)=(-(T227*T204*T483*T217*1/params(17)*getPowerDeriv(y(8)/params(17),params(19)*y(34),1)));
  g1(15,33)=(-(T204*T218^(1-params(18))*T227*params(32)*log(exp(x(5)))));
  g1(15,34)=(-(T227*T204*T483*T217*T210*params(19)*log(y(8)/params(17))));
  g1(15,35)=(-(T227*T204*T483*T210*T217*params(20)*log(T213)));
  g1(16,2)=(-1);
  g1(16,3)=(-(y(23)*T58*T47*T430));
  g1(16,4)=(-(y(23)*T58*T13*getPowerDeriv(y(4),(-1),1)));
  g1(16,10)=(-1);
  g1(16,11)=(-(y(23)*T13*T47*(params(3)+params(4)/2*2*(y(11)-1))));
  g1(16,21)=1;
  g1(16,23)=(-(T58*T13*T47));
  g1(17,3)=(-(T236*T239*y(5)*T430/y(24)));
  g1(17,5)=(-(T236*T13*T239/y(24)));
  g1(17,11)=(-(T236*T13*y(5)*y(23)*getPowerDeriv(y(11)*y(23),params(15),1)/y(24)));
  g1(17,14)=(-(T13*y(5)*T239*getPowerDeriv(y(14),1-params(15),1)/y(24)));
  g1(17,21)=1;
  g1(17,23)=(-(T236*T13*y(5)*y(11)*getPowerDeriv(y(11)*y(23),params(15),1)/y(24)));
  g1(17,24)=(-((-(T236*T13*y(5)*T239-params(21)))/(y(24)*y(24))));
  g1(18,14)=(-y(25));
  g1(18,25)=(-y(14));
  g1(18,26)=1;
  g1(19,8)=(-(y(24)*params(13)*T578*getPowerDeriv(T142,(-params(8)),1)));
  g1(19,18)=(-((1-params(13))*getPowerDeriv(y(18),(-params(8)),1)));
  g1(19,24)=1-params(13)*T142^(-params(8));
  g1(20,3)=(-(y(25)*params(14)*T103*T430/y(8)*T499));
  g1(20,8)=(-(y(25)*params(14)*T499*(y(8)*T13*getPowerDeriv(y(8),params(11),1)-T13*T103)/(y(8)*y(8))));
  g1(20,17)=(-((1-params(14))*getPowerDeriv(y(17),(-params(7)),1)));
  g1(20,25)=1-T260;
  g1(21,3)=y(4)*y(23)-y(10)*(y(3)*y(4)*(-(params(6)/2*2*(y(3)-params(26))))+y(4)*T69);
  g1(21,4)=y(3)*y(23)-y(10)*y(3)*T69;
  g1(21,10)=(-(T69*y(3)*y(4)));
  g1(21,23)=y(3)*y(4)-(1-params(5));
  g1(22,14)=y(15)*T177;
  g1(22,15)=y(14)*T177;
  g1(22,21)=(-1);
  g1(22,28)=1;
  g1(23,15)=(-((-y(16))/(y(15)*y(15))));
  g1(23,16)=(-(1/y(15)));
  g1(23,17)=1;
  g1(24,1)=1/y(1)-params(22)*1/y(1);
  g1(24,29)=(-(params(28)*x(1)));
  g1(25,27)=1/y(27)-params(23)*1/y(27);
  g1(25,30)=(-(params(29)*x(2)));
  g1(26,4)=1/y(4);
  g1(26,31)=(-(params(30)*x(3)));
  g1(27,5)=1/y(5);
  g1(27,32)=(-(params(31)*x(4)));
  g1(28,3)=1;
  g1(28,4)=(-(y(5)^T177*getPowerDeriv(y(4),T171,1)));
  g1(28,5)=(-(y(4)^T171*getPowerDeriv(y(5),T177,1)));
  g1(29,29)=1/y(29)-params(33)*1/y(29);
  g1(30,30)=1/y(30)-params(34)*1/y(30);
  g1(31,31)=1/y(31)-params(35)*1/y(31);
  g1(32,32)=1/y(32)-params(36)*1/y(32);
  g1(33,33)=1/y(33)-params(37)*1/y(33);
  g1(34,34)=1/y(34)-params(38)*1/y(34);
  g1(35,35)=1/y(35)-params(39)*1/y(35);
  g1(36,3)=(-(1/exp(params(27))));
  g1(36,36)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],36,1296);
end
end
