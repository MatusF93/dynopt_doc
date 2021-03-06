clear; close all; clc;
options = sdpoptionset('LargeScale','on','Display','iter','TolFun',1e-7,...
                       'TolCon',1e-7,'TolX',1e-7,...
                       'MaxFunEvals',1e6,'MaxIter',4000,...
                       'Algorithm','sqp','NLPsolver','fmincon');

optimparam.optvar = 3;
optimparam.objtype = [];
optimparam.ncolx = 3; 
optimparam.ncolu = 2; 
optimparam.li = ones(3,1)*(1/3);
optimparam.tf = 1;
optimparam.ui = zeros(1,3);
optimparam.par = []; 
optimparam.bdu = []; 
optimparam.bdx = []; 
optimparam.bdp = [];
optimparam.objfun  = @objfun;
optimparam.confun  = [];
optimparam.process = @process;
optimparam.options = options;

[optimout,optimparam] = dynopt(optimparam);
