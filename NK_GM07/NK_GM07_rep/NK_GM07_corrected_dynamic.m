function [residual, g1, g2, g3] = NK_GM07_corrected_dynamic(y, x, params, steady_state, it_)
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

residual = zeros(22, 1);
T47 = params(17)*(1-params(6))/(params(16)*params(18));
T61 = params(7)*params(14)/params(17)/(params(7)*params(14)/params(17)+params(19));
T67 = params(19)/(params(7)*params(14)/params(17)+params(19));
T95 = params(17)*params(6)*params(19)/(params(17)*params(19)+params(7)*params(14)*(1+params(9)));
T119 = params(7)*params(20)*params(1)/(params(17)*params(21));
T123 = params(7)*params(20)*(params(1)/(params(17)*params(21))-1);
T138 = (params(15)/params(14))^(1-params(2));
T141 = params(4)/(1+params(9))*(1-params(8)+params(2)*params(22)*T138);
T148 = T138*params(22)*params(4)*params(2)/(1+params(9));
T157 = T119+T141;
T188 = 1/params(4)/(1+params(9));
T195 = params(20)*params(1)/(params(17)*params(21));
T249 = (-((1+params(9))*params(14)*params(6)*params(7)/(params(17)*params(19)+params(7)*params(14)*(1+params(9)))));
lhs =y(6);
rhs =params(4)*y(28)+params(5)*y(7);
residual(1)= lhs-rhs;
lhs =y(7);
rhs =y(10)-y(9);
residual(2)= lhs-rhs;
lhs =y(17);
rhs =y(14)+y(16);
residual(3)= lhs-rhs;
lhs =y(9)+y(11);
rhs =params(15)/(1-params(15)-params(16))*y(12)+params(16)/(1-params(15)-params(16))*y(13);
residual(4)= lhs-rhs;
residual(5) = y(11)+y(13)+y(14)*T47+y(9)*(1+T47);
lhs =y(8);
rhs =T61*(y(14)-y(15)-y(21))-T67*y(18);
residual(6)= lhs-rhs;
lhs =y(14);
rhs =(1+params(14)*params(8)/params(17))*(1-params(2))*(y(12)+y(19))-y(15)*params(14)*params(8)/params(17);
residual(7)= lhs-rhs;
lhs =y(14);
rhs =(1-params(6))*(y(13)+y(20))+T95*(y(14)+y(18))+(1+params(9))*params(14)*params(6)*params(7)/(params(17)*params(19)+params(7)*params(14)*(1+params(9)))*(y(15)+y(21));
residual(8)= lhs-rhs;
lhs =y(7);
rhs =y(11)+y(12)-y(14);
residual(9)= lhs-rhs;
lhs =y(6);
rhs =y(16)-y(1);
residual(10)= lhs-rhs;
lhs =y(14)*T119;
rhs =T123*(y(8)+y(21))+y(15)*(T123-1)+params(4)/(1+params(9))*(1-params(8))*y(32)+T141*y(30)+T148*(y(29)+(1-params(2))*(y(31)+y(33)))-y(9)*T157;
residual(11)= lhs-rhs;
lhs =y(25);
rhs =(1-params(35))*(y(28)*(1+params(33))+y(7)*params(34))+params(35)*y(5)+x(it_, 5);
residual(12)= lhs-rhs;
lhs =y(22)/params(24);
rhs =y(11)+y(13)-y(14);
residual(13)= lhs-rhs;
lhs =y(23)/params(23);
rhs =y(11)+y(13)-y(14);
residual(14)= lhs-rhs;
lhs =y(24);
rhs =T188*(y(28)+y(9)-y(30));
residual(15)= lhs-rhs;
lhs =y(24)-y(27);
rhs =T195*(y(8)-y(14)-y(9))-y(8)*params(20);
residual(16)= lhs-rhs;
lhs =y(24)-y(25);
rhs =y(23);
residual(17)= lhs-rhs;
lhs =y(26)-y(25);
rhs =y(22);
residual(18)= lhs-rhs;
residual(19) = y(18);
lhs =y(19);
rhs =params(30)*y(2)+x(it_, 2);
residual(20)= lhs-rhs;
lhs =y(20);
rhs =params(31)*y(3)+x(it_, 3);
residual(21)= lhs-rhs;
lhs =y(21);
rhs =params(32)*y(4)-x(it_, 4);
residual(22)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(22, 38);

  %
  % Jacobian matrix
  %

  g1(1,6)=1;
  g1(1,28)=(-params(4));
  g1(1,7)=(-params(5));
  g1(2,7)=1;
  g1(2,9)=1;
  g1(2,10)=(-1);
  g1(3,14)=(-1);
  g1(3,16)=(-1);
  g1(3,17)=1;
  g1(4,9)=1;
  g1(4,11)=1;
  g1(4,12)=(-(params(15)/(1-params(15)-params(16))));
  g1(4,13)=(-(params(16)/(1-params(15)-params(16))));
  g1(5,9)=1+T47;
  g1(5,11)=1;
  g1(5,13)=1;
  g1(5,14)=T47;
  g1(6,8)=1;
  g1(6,14)=(-T61);
  g1(6,15)=T61;
  g1(6,18)=T67;
  g1(6,21)=T61;
  g1(7,12)=(-((1+params(14)*params(8)/params(17))*(1-params(2))));
  g1(7,14)=1;
  g1(7,15)=params(14)*params(8)/params(17);
  g1(7,19)=(-((1+params(14)*params(8)/params(17))*(1-params(2))));
  g1(8,13)=(-(1-params(6)));
  g1(8,14)=1-T95;
  g1(8,15)=T249;
  g1(8,18)=(-T95);
  g1(8,20)=(-(1-params(6)));
  g1(8,21)=T249;
  g1(9,7)=1;
  g1(9,11)=(-1);
  g1(9,12)=(-1);
  g1(9,14)=1;
  g1(10,6)=1;
  g1(10,1)=1;
  g1(10,16)=(-1);
  g1(11,29)=(-T148);
  g1(11,8)=(-T123);
  g1(11,9)=T157;
  g1(11,30)=(-T141);
  g1(11,31)=(-((1-params(2))*T148));
  g1(11,14)=T119;
  g1(11,15)=(-(T123-1));
  g1(11,32)=(-(params(4)/(1+params(9))*(1-params(8))));
  g1(11,33)=(-((1-params(2))*T148));
  g1(11,21)=(-T123);
  g1(12,28)=(-((1-params(35))*(1+params(33))));
  g1(12,7)=(-((1-params(35))*params(34)));
  g1(12,5)=(-params(35));
  g1(12,25)=1;
  g1(12,38)=(-1);
  g1(13,11)=(-1);
  g1(13,13)=(-1);
  g1(13,14)=1;
  g1(13,22)=1/params(24);
  g1(14,11)=(-1);
  g1(14,13)=(-1);
  g1(14,14)=1;
  g1(14,23)=1/params(23);
  g1(15,28)=(-T188);
  g1(15,9)=(-T188);
  g1(15,30)=T188;
  g1(15,24)=1;
  g1(16,8)=(-(T195-params(20)));
  g1(16,9)=T195;
  g1(16,14)=T195;
  g1(16,24)=1;
  g1(16,27)=(-1);
  g1(17,23)=(-1);
  g1(17,24)=1;
  g1(17,25)=(-1);
  g1(18,22)=(-1);
  g1(18,25)=(-1);
  g1(18,26)=1;
  g1(19,18)=1;
  g1(20,2)=(-params(30));
  g1(20,19)=1;
  g1(20,35)=(-1);
  g1(21,3)=(-params(31));
  g1(21,20)=1;
  g1(21,36)=(-1);
  g1(22,4)=(-params(32));
  g1(22,21)=1;
  g1(22,37)=1;
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],22,1444);
end
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],22,54872);
end
end
