function O31(E1, E2, G12, nu12, thr, dg)
% 0

S=[0	13.889	27.778	41.667	55.556	0	13.889	27.778	41.667	55.556	69.444	83.333	97.222	111.111	0	13.889	27.778	41.667	55.556	69.444	83.333	97.222	111.111	0	13.889	27.778	41.667	55.556	69.444	83.333	97.222	111.111	125	138.889	152.778	166.667	0	13.889	27.778	41.667	55.556	69.444	83.333	97.222	111.111	125	138.889	152.778	166.667	0	13.889	27.778	41.667	55.556	69.444	83.333	97.222	111.111	125	138.889	152.778	166.667	180.556	194.444];
Ex=[0	6.591*10^-4	1.244*10^-3	1.861*10^-3	2.316*10^-3	0	6.622e-4	1.233e-3	1.86e-3	2.43e-3	3.151e-3	3.847e-3	4.761e-3	5.369e-3	0	6.401e-4	1.215e-3	1.861e-3	2.533e-3	3.232e-3	3.892e-3	4.744e-3	5.483e-3	0	6.382e-4	1.216e-3	1.871e-3	2.492e-3	3.195e-3	3.951e-3	4.739e-3	5.487e-3	6.452e-3	7.58e-3	8.939e-3	0.01	0	3.311e-4	9.384e-4	1.609e-3	2.269e-3	3.084e-3	3.853e-3	4.725e-3	5.629e-3	6.638e-3	7.673e-3	8.844e-3	0.01	0	5.662e-4	1.201e-3	1.848e-3	2.531e-3	3.351e-3	4.117e-3	5.004e-3	5.879e-3	6.951e-3	7.883e-3	8.961e-3	0.01	0.012	0.014];
Ey=[0	-4.844*10^-4	-9.251*10^-4	-1.384*10^-3	-1.732*10^-3	0	-4.768e-4	-9.033e-4	-1.373e-3	-1.809e-3	-2.365e-3	-2.899e-3	-3.617e-3	-4.113e-3	0	-4.72e-4	-9.052e-4	-1.397e-3	-1.91e-3	-2.456e-3	-2.979e-3	-3.654e-3	-4.255e-3	0	-4.777e-4	-9.147e-4	-1.419e-3	-1.892e-3	-2.439e-3	-3.029e-3	-3.651e-3	-4.258e-3	-5.037e-3	-5.955e-3	-7.081e-3	-8.38e-3	0	-2.408e-4	-7.081e-4	-1.224e-3	-1.755e-3	-2.417e-3	-3.046e-3	-3.764e-3	-4.515e-3	-5.339e-3	-6.18e-3	-7.136e-3	-8.15e-3	0	-3.858e-4	-8.777e-4	-1.382e-3	-1.927e-3	-2.592e-3	-3.219e-3	-3.948e-3	-4.665e-3	-5.536e-3	-6.287e-3	-7.156e-3	-8.061e-3	-9.327e-3	-0.011];



Alpha=[45 -45];
H_m = [0.5 0.5];
Sigma = 0:20:200;
[ExR, EyR] = nonlinear_deform(Alpha, H_m, E1, E2, G12, nu12, thr, dg, Sigma);

plot(ExR*100,Sigma,'b-', EyR*100,Sigma,'b-', Ex*100,S,'ko', Ey*100,S,'ko')
ylabel('\sigma_x, ���')
xlabel('\epsilon_y, \epsilon_x, %')
grid on

%res = (ExR-Ex')'*(ExR-Ex')+(EyR-Ey')'*(EyR-Ey');
