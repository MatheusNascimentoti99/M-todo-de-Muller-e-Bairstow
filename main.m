% ----------------------- Método de Müller ------------------------------ %

% Definindo como variavel.
syms x;

% Definição da função.
f1 = x^3 - 13*x - 12;
f2 = 8*x^7+ 15*x^6+ 2*x^5 -8*x^4 -6*x^3 -5*x^2+ 1*x+ 1;

% Declarando o erro.
erro = 10^-6;

% Declarando o número máximo de iterações:
nMax = 10;

% Declarando os valores iniciais:
x0 = 4.5;
x1 = 5.5;
x2 = 5.0;

x00 = 0.916867;
x11 = 0.964992;
x22 = 0.895159;

Muller(x0, x1, x2, erro, nMax, f1); % Exemplo 1.
% Muller(x00, x11, x22, erro, nMax, f2); % Exemplo 2.

% ----------------------------------------------------------------------- %
disp(' ');
% ------------------------- Método de Bairstow -------------------------- %

% Declarando o vetor dos coeficientes da função:
v1 = [1 -3.5 2.75 2.125 -3.875 1.25];
v2 = [8 15 2 -8 -6 -5 1 1];

% Declarando as aproximações iniciais:
r = -1;
s = -1;

% Declarando o erro estimado (%):
erro = 1;

bairstowv1(v1, r, s, erro) % Exemplo 1.
% bairstowv1(v2, r, s, erro) % Exemplo 2.

% ----------------------------------------------------------------------- %