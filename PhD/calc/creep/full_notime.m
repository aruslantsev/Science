data = [0	0.
12.0001	0.001306135399
25.0001	0.002931079885
38.0001	0.001813489699
50.0001	0.0004740017994
60.0001	0.0003251601545
359.0001	0.00005605732474
384.0001	0.002983948688
409.0001	0.006386130174
434.0001	0.004166631731
459.0001	0.001173329916
469.0001	0.0009424345039
675.0001	0.0003008028660
700.0001	0.001747734668
725.0001	0.003434193714
750.0001	0.005242539726
775.0001	0.007139460358
800.0001	0.006176565991
825.0001	0.004799625359
850.0001	0.003235120488
875.0001	0.001543130170
900.0001	0.001219121676
1243.0001	0.0004837619196
1293.0001	0.003620206865
1343.0001	0.007324903304
1393.0001	0.01131826906
1443.0001	0.009185609809
1493.0001	0.006093712539
1543.0001	0.002573411373
1593.0001	0.001930793178
1730.0001	0.001325236736
1832.0001	0.004571099662
1934.0001	0.008562077816
2036.0001	0.01293239057
2138.0001	0.01065665252
2240.0001	0.007247554587
2342.0001	0.003335345767
2444.0001	0.002541147276
2727.0001	0.001760453827
2752.0001	0.003185232016
2777.0001	0.004849394324
2802.0001	0.006635587023
2827.0001	0.008510686575
2852.0001	0.01045725320
2877.0001	0.01246424632
2901.999	0.01452385514];

dataexp = [0 6 13 19 25 31 38 44 50 359 371 383 396 408 421 434 446 460 675 687 699 712 724 737 750 762 775 787 800 813 826 838 850 863 878 1243 1255 1268 1280 1292 1305 1318 1331 1342 1356 1368 1381 1393 1406 1418 1431 1443 1456 1469 1482 1494 1507 1519 1532 1545 1730 1757 1787 1812 1837 1862 1887 1912 1938 1963 1988 2013 2037 2063 2088 2113 2138 2164 2190 2214 2239 2265 2290 2315 2341 2727 2752 2777 2802 2827 2839 2852 2865 2878 2890 2902
0 0.0006133 0.001178 0.00181 0.00234 0.001707 0.00111 0.0005305 0.00004095 0.000002857 0.001222857 0.002433857 0.003903857 0.005578857 0.004380857 0.003018857 0.001634857 0.000318057 0.000093257 0.000166587 0.000769457 0.001404257 0.002004257 0.002762257 0.003497257 0.004270257 0.005077257 0.004553257 0.003881257 0.003234257 0.002535257 0.001849257 0.001157257 0.000453257 0 0.000287537 0.000843737 0.001457537 0.002097537 0.002735537 0.003450537 0.004164537 0.004973537 0.005764537 0.006821537 0.008075537 0.009567537 0.011287537 0.011287537 0.010287537 0.009735537 0.009080537 0.008312537 0.007512537 0.006612537 0.005726537 0.004712537 0.003693537 0.002708537 0.001724537 0.001365627 0.001826527 0.002549627 0.003230627 0.003935627 0.004696627 0.005498627 0.006376627 0.007318627 0.008334627 0.009421627 0.010598627 0.012365627 0.011365627 0.010982627 0.010337627 0.009645627 0.008892627 0.008043627 0.007244627 0.006327627 0.005349627 0.004331627 0.003303627 0.002315327 0.001783717 0.002986717 0.004335717 0.005935717 0.007758717 0.008714717 0.009764717 0.010846717 0.011783717 0.013783717 0.015783717];
%                                                                                                                                                                                                                                                                                                                                                                                      -0.000214343

time = data(:, 1);
eps = data(:, 2);
timeexp = dataexp(1, :)';
epsexp = dataexp(2, :)';

sigexp=[0.
13.33440000
28.89120000
42.22560000
55.55560000
42.22560000
26.66880000
13.33440000
0
0
26.66664000
53.33328000
82.22214000
108.8887800
84.44436000
55.5555000
28.8888600
0.
0
13.33332000
26.66664000
41.11107000
54.44439000
68.88882000
83.33325000
96.66657000
111.1111000
97.77768000
83.33325000
68.88882000
54.4443900
41.1110700
27.7777500
13.3333200
0.
0
13.33336000
27.77783333
41.11119333
54.44455333
68.88902667
83.33350000
97.77797333
110.0002200
125.5558067
138.8891667
153.3336400
166.6666700
152.2225266
138.8891666
124.4446934
111.1113334
96.6668600
82.2223866
67.7779134
54.4445534
40.0000800
26.6667200
12.2222466
0.
0
14.70591176
31.04581373
44.66239869
58.27898366
71.89556863
85.51215359
99.12873856
113.2899869
126.9065719
140.5231569
154.1397418
166.1223366
151.9610883
138.3445032
124.7279183
111.1113334
96.9500849
82.7888366
69.7169151
56.1003300
41.9390817
28.3224968
14.7059117
0.5446634
0
27.77771429
55.55542857
83.33314286
111.1108571
124.4441600
138.8885714
153.3329829
167.7773943
181.1106971
194.4444400
];

sig = [0.
26.66902224
55.55977776
26.66857776
0.
0.
0.0002222220000
55.55572222
111.1107778
55.5552778
0.
0.
0.0001111110000
27.77786111
55.55561111
83.33336111
111.1108889
83.33313888
55.5553889
27.7776389
0.
0.
0.0001111113333
55.55577778
111.1114445
166.6668889
111.1112223
55.5555556
0.
0.
0.00005446633987
55.55572114
111.1113878
166.6669456
111.1112788
55.5556122
0.
0.
0.0001111108571
27.77782539
55.55553968
83.33325394
111.1109682
138.8886825
166.6663968
194.4428889];


plot(sig, eps, 'k-x', sigexp, epsexp, 'ko')
%sig
%eps
%sigexp
%epsexp


%subplot(2,1,1)
%plot(timeexp,sig,'k-')
%grid on
%set(gca,'FontSize',14)
%ylabel('\sigma, MPa')
%xlabel('t, s')
%set(gca,'FontSize',14)
%subplot(2,1,2)
%plot(timeexp, epsexp, 'ko', time, eps, 'k-')
%grid on
%set(gca,'FontSize',14)
%ylabel('\epsilon_x')
%xlabel('t, s')
%set(gca,'FontSize',14)