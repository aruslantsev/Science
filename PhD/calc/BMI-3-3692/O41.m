function O11(E1, E2, G12, nu12, thr, dg)
% 0

S=[0	13.889	27.778	41.667	55.556	69.444	83.333	97.222	111.111	0	13.889	27.778	41.667	55.556	69.444	83.333	97.222	111.111	0	27.778	55.556	83.333	111.111	138.889	166.667	0	27.778	55.556	83.333	111.111	138.889	166.667	0	27.778	55.556	83.333	111.111	138.889	166.667	194.444	222.222
];
Ex=[0	5.748e-4	9.564e-4	1.453e-3	1.941e-3	2.467e-3	3.026e-3	3.559e-3	4.035e-3	0	6.212e-4	1.029e-3	1.521e-3	1.999e-3	2.531e-3	3.046e-3	3.667e-3	3.82e-3	0	1.097e-3	2.024e-3	3.068e-3	4.207e-3	5.544e-3	6.829e-3	0	1.212e-3	2.159e-3	3.264e-3	4.387e-3	5.698e-3	6.508e-3	0	1.251*10^-3	2.199*10^-3	3.317*10^-3	4.531*10^-3	5.714*10^-3	7.226*10^-3	9.157*10^-3	0.012];
Ey=[0	-3.59e-4	-5.989e-4	-9.151e-4	-1.202e-3	-1.551e-3	-1.922e-3	-2.286e-3	-2.614e-3	0	-3.952e-4	-6.561e-4	-9.693e-4	-1.274e-3	-1.624e-3	-1.965e-3	-2.379e-3	-2.48e-3	0	-6.97e-4	-1.294e-3	-1.981e-3	-2.751e-3	-3.708e-3	-4.666e-3	0	-7.809e-4	-1.403e-3	-2.148e-3	-2.928e-3	-3.864e-3	-4.444e-3	0	-8.047*10^-4	-1.427*10^-3	-2.181*10^-3	-3.033*10^-3	-3.868*10^-3	-4.968*10^-3	-6.456*10^-3	-8.926*10^-3];



Alpha=[30];
H_m = [1];
Sigma = 0:20:230;
[ExR, EyR] = nonlinear_deform(Alpha, H_m, E1, E2, G12, nu12, thr, dg, Sigma);

plot(ExR*100,Sigma,'b-', EyR*100,Sigma,'b-', Ex*100,S,'ko', Ey*100,S,'ko')
ylabel('\sigma_x, ���')
xlabel('\epsilon_y, \epsilon_x, %')
grid on

%res = (ExR-Ex')'*(ExR-Ex')+(EyR-Ey')'*(EyR-Ey');
