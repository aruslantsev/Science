function [EpsX, EpsY] = nonlinear_deform(Alpha, H_r, E1, E2, G12, nu12, thr, dg, Sigma)

syms x
nu21 = nu12 * E2 / E1;

Sig = Sigma / 1000;
thr = thr / 1000;

MM = length (Sig);
NN = length(H_r);

g11 = E1 / (1 - nu12 * nu21);
g12 = nu21 * E1 / (1 - nu12 * nu21);
g22 = E2 / (1 - nu12 * nu21);
g66 = G12;

G12_0 =  [g11 g12 0; g12 g22 0; 0 0 g66];
G0 = [0 0 0; 0 0 0; 0 0 1];
% f = 2.2 * heaviside(x - thr);
% f = 1.5 * heaviside(x - thr) + 0.9 * heaviside (x - 0.005);
z = 0.35;
f = dg*1.15 * (1000 * (x-thr))^z * heaviside(x - thr);
% f = 1.1 * heaviside(x - 0.002) + 0.8 * heaviside (x - 0.004) + 0.2 * heaviside (x - 0.006) + 0.2 * heaviside (x - 0.010) ;
G0xy = zeros (3, 3);
G = zeros (3, 3);
C = cos(Alpha * pi / 180);
S = sin(Alpha * pi / 180);
for i = 1:1:NN
    T = [C(i)^2 S(i)^2 -2*C(i)*S(i); S(i)^2 C(i)^2 2*C(i)*S(i); S(i)*C(i) -S(i)*C(i) C(i)^2-S(i)^2];
    G0xy = G0xy + T * G12_0 * T' * H_r(i);
    G = G + T * G0 * T' * H_r(i);
end;

S0xy = inv(G0xy);
A = G0xy \ G;
[R, D] = eig (A);
S_xy = R * diag([(1 / (1 - D(1, 1) * f)) (1 / (1 - D(2, 2) * f)) (1 / (1 - D(3, 3) * f))]) * inv(R) * S0xy;

% Layer with max shear stress
n = 0;
a = 45;
for i = Alpha
  if i ~= 0
    if (abs(abs(i) - 45) < a)
	 a = abs(abs(i) - 45);
	 n = i;
    end;
  end;
end;
for j=1:1:MM
    C1 = cos(n * pi / 180);
    S1 = sin(n * pi / 180);
    T1 = [C1^2 S1^2 -2*C1*S1; S1^2 C1^2 2*C1*S1; S1*C1 -S1*C1 C1^2-S1^2];
    s = inv(T1) * (T1 * G12_0 * inv(T1) * inv(G0xy) * [Sig(j); 0; 0]); % Stress in layer
    s_t(j) = abs(s(3)); % Shear stress
end
s_t(MM)*1000

for i=1:1:MM
    Sxx(i)=subs(S_xy(1,1), x, s_t(i));
    Sxy(i)=subs(S_xy(1,2), x, s_t(i));
end

EpsX = zeros(length(Sig), 1);
EpsY = zeros(length(Sig), 1);
EpsX(1) = Sig(1) * Sxx(1);
EpsY(1) = Sig(1) * Sxy(1);
for i=2:1:MM
  EpsX(i) = EpsX(i - 1) + Sxx(i - 1) * (Sig(i) - Sig(i - 1));
  EpsY(i) = EpsY(i - 1) + Sxy(i - 1) * (Sig(i) - Sig(i - 1));
end;
