%%
%     Curso do canal ExataMenteS
%     Aula 66 - Regressao Polinominal
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%

% Signal
n = 5000;   % Number of points
t = (1:n)'; % Time vector
k = 20;     % Number of random amplitudes

% Iinterpolated set of points
SignalInterp = interp1(100*randn(k,1),linspace(1,k,n) ,'pchip')';

% Signal with some noise
Noise = 30*randn(n,1);
Signal = SignalInterp + Noise;

% Bayesian information criterion to determine the optimal polynomial order empirically

Orders = ()';                     % Range of orders
SumError = zeros(  ); % Sum of squared errors

% Loop
for i = 1:length(Orders)
    
    % Compute the polynomial
    PolyData = 

    % Estimated data based on the coefficients using polyval
    SumError(i) = 
end

% Bayes information criteria
BIC = 

% Best parameter is the minimum BIC
[BestParameterOrder,idx] = min(BIC);

% Plot BIC for all orders
figure(1), clf
plot(Orders,BIC,'d'), hold on
plot(Orders(idx),BestParameterOrder,'go','markersize',8,'markerfacecolor','g')
zoom on

% Without BIC
% Orders = 40; idx=1;

% Polynomial fit
PolyCoefs = 

% Estimated data based on the coefficients using polyval
PolyData = 

% Filtered signal is the difference of original and fitted 
FilterSignal = 

% Plots
figure(2), clf, hold on
plot(t,Signal,'b','linew',.5);       % Original Signall 
plot(t,PolyData,'r','linew',3)       % Polynomial 
plot(t,FilterSignal,'m','linew',0.5) % Filtered Signal
set(gca,'xlim',t([1 end]))
legend({'Original';'Polynomial';'Filtered Signal'})