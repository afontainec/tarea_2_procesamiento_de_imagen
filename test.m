clear all;
close all;
fig=1;

display = false;
N=512;
redStars = [492.1846 498.1709;475.417 483.376;462.5947 472.5264;444.8408 460.6904;428.0732 446.8818;408.3467 430.1143;389.6064 415.3193;374.8115 402.4971;362.9756 388.6885;339.3037 370.9346;343.249 345.29;324.5088 333.4541;306.7549 318.6592;289.001 303.8643;274.2061 294.001;257.4385 278.2197;234.7529 260.4658;236.7256 266.3838;187.4092 192.4092;168.6689 185.5049;169.6553 177.6143;140.0654 148.0244;119.3525 134.2158;119.3525 140.1338;119.3525 122.3799;99.626 121.3936;222.917 247.6436;238.6982 238.7666;257.4385 245.6709;361.9893 362.0576;377.7705 373.8936;397.4971 390.6611;413.2783 403.4834;429.0596 421.2373;393.5518 387.7021;430.0459 388.6885;447.7998 404.4697;411.3057 374.8799;392.5654 358.1123;372.8389 362.0576;375.7979 347.2627;355.085 347.2627;360.0166 332.4678;339.3037 329.5088;340.29 318.6592;274.2061 275.2607;220.9443 221.0127;206.1494 215.0947;206.1494 204.2451;205.1631 238.7666;325.4951 357.126;308.7275 344.3037;283.083 330.4951;84.8311 105.6123;102.585 105.6123;85.8174 88.8447;66.0908 85.8857;134.1475 130.2705;440.8955 426.1689;458.6494 445.8955;493.1709 471.54;479.3623 457.7314;479.3623 427.1553;464.5674 417.292;479.3623 400.5244;428.0732 469.5674;445.8271 483.376;407.3604 484.3623;389.6064 468.5811;374.8115 460.6904;360.0166 444.9092;374.8115 428.1416;389.6064 442.9365;413.2783 457.7314;364.9482 418.2783;339.3037 396.5791;339.3037 428.1416;324.5088 385.7295;254.4795 468.5811;238.6982 479.4307;219.958 497.1846;199.2451 483.376;182.4775 496.1982;171.6279 203.2588;151.9014 156.9014;151.9014 174.6553;530 499.5;551 486.5;528 475.5;544 460.5;564 474.5;581 456.5;600 443.5;580 443.5;564 445.5;582 430.5;547 433.5;565 418.5;578 404.5;596 416.5;622 432.5;635 442.5;636 417.5;617 402.5;633 390.5;654 405.5;670 389.5;652 376.5;668 362.5;688 347.5;704 333.5;726 316.5;738 305.5;759 287.5;773 279.5;792 262.5;793 247.5;776 247.5;777 233.5;796 234.5;810 233.5;824 233.5;807 250.5;809 219.5;797 219.5;779 219.5;829 218.5;855 219.5;864 201.5;846 204.5;826 204.5;827 192.5;849 192.5;863 192.5;865 179.5;847 178.5;863 166.5;880 147.5;880 160.5;881 167.5;901 163.5;904 140.5;915 137.5;936 124.5;936 114.5;955 110.5;955 95.5;914 122.5;970 93.5;973 80.5;617 456.5;600 473.5;580 487.5;597 499.5;616 486.5;634 475.5;651 457.5;656 424.5;668 416.5;687 403.5;606 384.5;684 375.5;497.0732 527.9268;476.1963 542.8389;494.0908 557.751;496.0791 583.5986;478.1846 570.6748;459.2959 553.7744;441.4014 540.8506;422.5127 528.9209;426.4893 557.751;441.4014 567.6924;460.29 585.5869;478.1846 602.4873;441.4014 598.5107;423.5068 582.6045;408.5947 598.5107;391.6943 585.5869;402.6299 572.6631;426.4893 607.458;441.4014 624.3584;424.501 625.3525;424.501 641.2588;409.5889 627.3408;390.7002 641.2588;372.8057 652.1943;359.8818 663.1299;341.9873 682.0186;354.9111 668.1006;393.6826 610.4404;367.835 626.3467;355.9053 646.2295;339.999 656.1709;319.1221 698.9189;302.2217 707.8662;285.3213 722.7783;280.3506 726.7549;266.4326 742.6611;249.5322 749.6201;231.6377 766.5205;216.7256 777.4561;212.749 806.2861;227.6611 798.333;227.6611 784.415;193.8604 795.3506;193.8604 808.2744;193.8604 818.2158;194.8545 830.1455;180.9365 841.0811;174.9717 836.1104;174.9717 825.1748;175.9658 814.2393;162.0479 830.1455;161.0537 840.0869;160.0596 853.0107;162.0479 861.958;141.1709 878.8584;141.1709 862.9521;142.165 853.0107;142.165 846.0518;123.2764 858.9756;123.2764 872.8936;123.2764 883.8291;124.2705 888.7998;108.3643 904.7061;109.3584 888.7998;109.3584 897.7471;91.4639 907.6885;71.5811 912.6592;67.6045 927.5713;68.5986 950.4365;371.8115 603.4814;350.9346 619.3877;406.6064 542.8389;390.7002 554.7686; 527.1025 529.1025;547.2197 544.1904;560.2959 558.2725;582.4248 576.3779;597.5127 586.4365;619.6416 571.3486;594.4951 555.2549;612.6006 597.501;628.6943 613.5947;632.7178 644.7764;613.6064 628.6826;598.5186 612.5889;575.3838 596.4951;560.2959 585.4307;630.7061 585.4307;648.8115 600.5186;667.9229 616.6123;665.9111 641.7588;649.8174 624.6592;648.8115 655.8408;660.8818 664.8936;686.0283 681.9932;702.1221 697.0811;663.8994 669.9229;687.0342 651.8174;716.2041 702.1104;717.21 713.1748;733.3037 727.2568;737.3271 723.2334;750.4033 735.3037;754.4268 746.3682;767.5029 754.415;782.5908 767.4912;801.7021 785.5967;834.8955 837.9014;836.9072 829.8545;857.0244 857.0127;855.0127 847.96;873.1182 857.0127;873.1182 872.1006;905.3057 883.165;906.3115 896.2412;889.2119 875.1182;889.2119 883.165;802.708 814.7666;801.7021 800.6846;780.5791 783.585;780.5791 789.6201;563.3135 612.5889;577.3955 624.6592;596.5068 640.7529;612.6006 654.835;631.7119 668.917;648.8115 682.999;664.9053 679.9814;665.9111 695.0693;684.0166 697.0811;686.0283 709.1514;702.1221 727.2568;702.1221 710.1572;543.1963 623.6533;545.208 599.5127;580.4131 543.1846;631.7119 556.2607;614.6123 539.1611;653.8408 570.3428;669.9346 582.4131;679.9932 628.6826;921.3994 907.3057;921.3994 904.2881;924.417 885.1768;905.3057 911.3291;851.9951 821.8076;853.001 830.8604;919.3877 921.3877;826.8486 490.8564;791.6436 486.833;771.5264 500.915;805.7256 503.9326;251.5205 525.8564;232.7803 539.665;216.999 525.8564;197.2725 538.6787;184.4502 524.8701;161.7646 539.665;129.2158 538.6787;769.499 526.9775;790.458 542.9463;804.4307 526.9775;824.3916 540.9502;844.3525 528.9736;817.4053 806.4307;819.4014 795.4521;765.5068 779.4834;714.6064 764.5127;729.5771 709.6201;956.1338 949.1514;936.1729 920.208;866.3096 922.2041;889.2646 850.3447;871.2998 837.3701;];
greenStars = [495.085 502.0557;479.1787 486.1494;459.2959 472.2314;444.3838 459.3076;426.4893 443.4014;407.6006 431.4717;389.7061 413.5771;374.7939 401.6475;357.8936 386.7354;341.9873 374.8057;325.0869 359.8936;324.0928 332.0576;309.1807 319.1338;292.2803 306.21;274.3857 291.2979;255.4971 277.3799;238.5967 263.4619;224.6787 249.5439;202.8076 234.6318;204.7959 217.7314;204.7959 203.8135;186.9014 190.8896;170.9951 178.96;150.1182 162.0596;136.2002 150.1299;118.3057 134.2236;103.3936 124.2822;101.4053 144.165;102.3994 162.0596;118.3057 166.0361;118.3057 179.9541;137.1943 178.96;224.6787 216.7373;239.5908 230.6553;258.4795 247.5557;256.4912 262.4678;220.7021 204.8076;221.6963 191.8838;342.9814 345.9756;360.876 361.8818;378.7705 374.8057;397.6592 388.7236;412.5713 401.6475;430.4658 415.5654;448.3604 429.4834;462.2783 444.3955;479.1787 431.4717;461.2842 411.5889;446.3721 401.6475;427.4834 385.7412;410.583 373.8115;393.6826 359.8936;374.7939 345.9756;357.8936 345.9756;359.8818 331.0635;344.9697 332.0576;340.9932 402.6416;359.8818 419.542;408.248 455.7441;395.4004 444.873;375.6348 430.0488;428.0137 472.5449;443.8262 490.334;480.3926 458.709;497.1934 472.5449;411.2129 488.3574;391.4473 470.5684;373.6582 456.7324;357.8457 441.9082;341.0449 431.0371;256.0527 361.8574;235.2988 345.0566;215.5332 329.2441;259.0176 337.1504;274.8301 318.373;271.8652 273.9004;272.8535 259.0762;274.8301 247.2168;290.6426 273.9004;290.6426 291.6895;306.4551 301.5723;326.2207 319.3613;344.998 320.3496;326.2207 301.5723;307.4434 287.7363;307.4434 274.8887;307.4434 259.0762;291.6309 247.2168;291.6309 264.0176;185.8848 177.0488;168.0957 162.2246;151.2949 150.3652;136.4707 135.541;119.6699 119.7285;155.248 191.873;170.0723 207.6855;182.9199 219.5449;498.1816 416.2129;274.8301 303.5488;238.2637 204.7207;239.252 220.5332;102.8691 110.834;495.1465 527.4004;476.3691 543.2129;497.123 557.0488;497.123 584.7207;477.3574 599.5449;479.334 566.9316;458.5801 555.0723;443.7559 572.8613;460.5566 582.7441;443.7559 594.6035;442.7676 569.8965;424.9785 584.7207;412.1309 596.5801;396.3184 613.3809;373.5879 625.2402;371.6113 628.2051;356.7871 638.0879;353.8223 640.0645;358.7637 666.748;355.7988 669.7129;370.623 656.8652;372.5996 651.9238;389.4004 642.041;392.3652 639.0762;404.2246 628.2051;409.166 625.2402;425.9668 611.4043;441.7793 625.2402;424.9785 640.0645;391.377 699.3613;377.541 703.3145;374.5762 707.2676;341.9629 708.2559;338.0098 712.209;343.9395 733.9512;339.9863 735.9277;343.9395 679.5957;338.998 681.5723;327.1387 694.4199;324.1738 697.3848;305.3965 707.2676;303.4199 710.2324;288.5957 720.1152;286.6191 724.0684;338.998 652.9121;354.8105 610.416;375.5645 592.627;394.3418 583.7324;339.9863 625.2402;274.7598 734.9395;269.8184 736.916;282.666 750.752;285.6309 749.7637;299.4668 740.8691;305.3965 734.9395;320.2207 729.0098;325.1621 725.0566;324.1738 748.7754;319.2324 753.7168;308.3613 762.6113;305.3965 766.5645;294.5254 773.4824;289.584 777.4355;273.7715 763.5996;270.8066 766.5645;250.0527 780.4004;211.5098 809.0605;190.7559 822.8965;175.9316 837.7207;163.084 848.5918;144.3066 865.3926;128.4941 872.3105;126.5176 877.252;104.7754 892.0762;88.9629 901.959;73.1504 917.7715;87.9746 921.7246;108.7285 903.9355;126.5176 891.0879;140.3535 880.2168;157.1543 865.3926;247.0879 755.6934;254.9941 748.7754;229.2988 766.5645;174.9434 809.0605; 548.2256 485.8271;528.1084 502.9268;530.1201 473.7568;530.1201 443.5811;548.2256 457.6631;567.3369 473.7568;582.4248 461.6865;566.3311 445.5928;546.2139 430.5049;585.4424 433.5225;603.5479 416.4229;618.6357 430.5049;600.5303 440.5635;584.4365 399.3232;566.3311 409.3818;615.6182 405.3584;635.7354 388.2588;650.8232 391.2764;664.9053 389.2646;654.8467 378.2002;649.8174 407.3701;635.7354 416.4229;620.6475 388.2588;616.624 373.1709;596.5068 391.2764;669.9346 365.124;688.04 351.042;705.1396 331.9307;715.1982 321.8721;721.2334 317.8486;735.3154 307.79;740.3447 302.7607;751.4092 294.7139;757.4443 290.6904;739.3389 275.6025;723.2451 261.5205;707.1514 271.5791;704.1338 276.6084;692.0635 288.6787;689.0459 292.7021;669.9346 304.7725;666.917 309.8018;703.1279 307.79;705.1396 302.7607;716.2041 295.7197;719.2217 289.6846;720.2275 301.7549;708.1572 319.8604;684.0166 334.9482;671.9463 347.0186;652.835 362.1064;684.0166 321.8721;686.0283 316.8428;686.0283 372.165;688.04 400.3291;670.9404 418.4346;634.7295 345.0068;636.7412 330.9248;636.7412 300.749;750.4033 266.5498;757.4443 261.5205;773.5381 272.585;772.5322 278.6201;791.6436 261.5205;775.5498 250.4561;795.667 232.3506;806.7314 245.4268;807.7373 222.292;830.8721 235.3682;829.8662 206.1982;847.9717 224.3037;845.96 194.1279;865.0713 180.0459;883.1768 164.958;861.0479 165.9639;901.2822 148.8643;917.376 134.7822;929.4463 125.7295;934.4756 123.7178;917.376 115.6709;901.2822 135.7881;952.5811 108.6299;952.5811 97.5654;974.71 97.5654;935.4814 108.6299;633.7236 445.5928;633.7236 403.3467;531.8154 532.7627;547.5342 544.5518;564.2354 555.3584;580.9365 575.9893;595.6729 558.3057;579.9541 539.6396;613.3564 543.5693;633.0049 557.3232;649.7061 573.042;667.3896 584.8311;681.1436 597.6025;762.6846 667.3545;787.2451 686.0205;823.5947 713.5283;649.7061 657.5303;632.0225 640.8291;616.3037 628.0576;595.6729 613.3213;585.8486 601.5322;563.2529 584.8311;528.8682 557.3232;530.833 583.8486;528.8682 607.4268;544.5869 596.6201;563.2529 614.3037;578.9717 628.0576;597.6377 639.8467;614.3389 653.6006;631.04 668.3369;647.7412 671.2842;650.6885 683.0732;661.4951 691.915;667.3896 682.0908;668.3721 670.3018;668.3721 657.5303;668.3721 640.8291;651.6709 630.0225;633.9873 610.374;617.2861 601.5322;593.708 582.8662;612.374 574.0244;629.0752 585.8135;647.7412 598.585;666.4072 612.3389;679.1787 625.1104;697.8447 665.3896;685.0732 652.6182;686.0557 685.0381;699.8096 694.8623;716.5107 712.5459;734.1943 724.335;747.9482 736.124;767.5967 751.8428;780.3682 762.6494;803.9463 783.2803;818.6826 795.0693;838.3311 808.8232;856.0146 820.6123;855.0322 838.2959;856.0146 851.0674;856.9971 862.8564;873.6982 865.8037;875.6631 876.6104;890.3994 867.7686;891.3818 883.4873;907.1006 896.2588;916.9248 857.9443;889.417 850.085;938.5381 922.7842;940.5029 891.3467;923.8018 904.1182;838.3311 835.3486;840.2959 849.1025;820.6475 819.6299;804.9287 808.8232;784.2979 795.0693;821.6299 809.8057;767.5967 781.3154;749.9131 769.5264;733.2119 753.8076;746.9658 755.7725;768.5791 767.5615;734.1943 741.0361;718.4756 727.2822;716.5107 700.7568;735.1768 711.5635;698.8271 707.6338;682.126 683.0732;696.8623 730.2295;685.0732 739.0713;791.1748 543.5693;823.5947 542.5869;479.6338 401.8916;464.4873 389.7744;446.3115 377.6572;427.126 358.4717;410.9697 344.335;394.8135 330.1982;374.6182 318.0811;361.4912 303.9443;348.3643 291.8271;306.9639 343.3252;289.7979 332.2178;202.958 483.6826;240.3193 482.6729;216.085 498.8291;177.7139 495.7998;149.4404 472.5752;187.8115 333.2275;202.958 316.0615;235.2705 319.0908;201.9482 260.5244;258.4951 288.7979;205.9873 188.8311;81.7861 134.3037;86.835 108.0498;67.6494 124.2061;132.2744 235.2803;149.4404 246.3877;165.5967 260.5244;167.6162 228.2119;136.3135 191.8604;361.4912 356.4521;203.9678 177.7236;185.792 158.5381;166.6064 145.4111;152.4697 133.2939;670.3096 361.7021;654.2783 376.7314;863.6865 205.3975;879.7178 193.374;888.7354 184.3564;881.7217 151.292;971.8975 85.1631;990.9346 82.1572;790.5439 487.9482;806.5752 499.9717;820.6025 486.9463;808.5791 473.9209;772.5088 472.9189;614.2002 455.8857;598.1689 473.9209;578.1299 487.9482;653.2764 429.835;423.5068 696.9248;407.6006 709.8486;384.7354 723.7666;366.8408 740.667;350.9346 750.6084;353.917 725.7549;52.6924 931.542;70.5869 932.5361;194.8545 797.333;213.7432 781.4268;218.7139 527.9209;202.8076 542.833;236.6084 537.8623;220.7021 542.833;219.708 551.7803;404.6182 570.6689;422.5127 557.7451;442.3955 542.833;441.4014 612.4229;456.3135 611.4287;458.3018 610.4346;406.6064 650.2002;408.5947 640.2588;393.6826 612.4229;356.8994 582.5986;818.5986 830.6162;797.5576 819.5947;716.3994 682.3271;822.6064 568.1045;785.5342 569.1064;872.7041 558.085;648.2666 653.2705;783.5303 752.4639;905.7686 891.7354;785.5342 808.5732;580.1338 574.1162;];
blueStars = [493.0361 498.0283;479.0635 486.0518;462.0967 473.0771;445.1299 459.1045;428.1631 444.1338;411.1963 430.1611;393.2314 418.1846;378.2607 401.2178;360.2959 388.2432;341.333 402.2158;358.2998 417.1865;379.2588 431.1592;394.2295 445.1318;412.1943 460.1025;427.165 472.0791;443.1338 486.0518;406.2061 485.0537;392.2334 471.0811;376.2646 458.1064;358.2998 442.1377;342.3311 427.167;254.5029 359.2998;236.5381 345.3271;221.5674 330.3564;206.5967 321.374;393.2314 418.1807;324.3662 390.2354;342.3311 375.2646;325.3643 359.2959;325.3643 346.3213;325.3643 334.3447;307.3994 320.3721;290.4326 304.4033;324.7324 334.1855;308.7949 319.2441;288.873 330.2012;272.9355 317.252;253.0137 304.3027;272.9355 285.377;256.998 274.4199;238.0723 261.4707;238.0723 247.5254;240.0645 230.5918;238.0723 221.627;238.0723 205.6895;221.1387 190.748;222.1348 206.6855;223.1309 221.627;223.1309 232.584;223.1309 246.5293;205.2012 233.5801;204.2051 220.6309;205.2012 204.6934;205.2012 192.7402;190.2598 179.791;187.2715 192.7402;187.2715 208.6777;189.2637 221.627;171.334 179.791;152.4082 167.8379;154.4004 150.9043;170.3379 164.8496;150.416 193.7363;168.3457 209.6738;137.4668 177.7988;135.4746 151.9004;135.4746 148.9121;139.459 134.9668;119.5371 134.9668;119.5371 123.0137;102.6035 122.0176;118.541 150.9043;120.5332 164.8496;118.541 183.7754;103.5996 149.9082;102.6035 163.8535;83.6777 135.9629;83.6777 106.0801;66.7441 101.0996;66.7441 124.0098;52.7988 67.2324;49.8105 87.1543;102.6035 110.0645;102.6035 104.0879;84.6738 95.123;290.8652 290.3574;291.8613 276.4121;273.9316 260.4746;256.998 250.5137;256.998 261.4707;256.998 230.5918;256.998 218.6387;343.6582 333.1895;342.6621 345.1426;359.5957 361.0801;376.5293 375.0254;393.4629 388.9707;413.3848 400.9238;428.3262 416.8613;393.4629 415.8652;445.2598 429.8105;460.2012 441.7637;480.123 455.709;480.123 432.7988;460.2012 414.8691;446.2559 402.916;427.3301 383.9902;412.3887 376.0215;394.459 360.084;378.5215 345.1426;395.4551 376.0215;375.5332 358.0918;359.5957 346.1387;358.5996 334.1855;376.5293 319.2441;361.5879 305.2988;322.7402 320.2402;305.8066 303.3066;308.7949 289.3613;342.6621 289.3613;323.7363 276.4121;273.9316 231.5879;191.2559 246.5293;170.3379 235.5723;306.8027 260.4746;289.8691 248.5215;290.8652 260.4746;152.4082 220.6309;138.4629 204.6934;495.0645 471.6465;496.0605 443.7559;275.9238 290.3574;530.9092 501.0498;529.915 474.208;530.9092 447.3662;722.7783 318.1279;720.79 320.1162;709.8545 330.0576;704.8838 334.0342;685.9951 344.9697;682.0186 349.9404;670.0889 359.8818;667.1064 362.8643;654.1826 374.7939;650.2061 376.7822;638.2764 388.7119;634.2998 391.6943;620.3818 400.6416;618.3936 404.6182;602.4873 414.5596;599.5049 417.542;546.8154 488.126;562.7217 473.2139;601.4932 470.2314;600.499 498.0674;617.3994 491.1084;634.2998 472.2197;614.417 459.2959;634.2998 444.3838;655.1768 431.46;651.2002 414.5596;653.1885 400.6416;651.2002 403.624;636.2881 414.5596;634.2998 415.5537;619.3877 428.4775;617.3994 431.46;598.5107 445.3779;580.6162 458.3018;564.71 445.3779;546.8154 432.4541;548.8037 458.3018;583.5986 432.4541;564.71 417.542;581.6104 402.6299;595.5283 407.6006;598.5107 402.6299;597.5166 390.7002;616.4053 390.7002;618.3936 386.7236;661.1416 391.6943;668.1006 387.7178;685.001 377.7764;686.9893 372.8057;696.9307 363.8584;703.8896 360.876;719.7959 345.9639;740.6729 302.2217;737.6904 305.2041;757.5732 289.2979;754.5908 291.2861;771.4912 275.3799;773.4795 274.3857;808.2744 247.5439;812.251 240.585;823.1865 234.6201;826.1689 230.6436;840.0869 223.6846;845.0576 219.708;856.9873 208.7725;860.9639 203.8018;868.917 198.8311;875.876 191.8721;915.6416 134.2119;908.6826 140.1768;895.7588 152.1064;899.7354 147.1357;898.7412 173.9775;883.8291 163.042;875.876 168.0127;862.9521 177.9541;857.9814 181.9307;846.0518 189.8838;842.0752 192.8662;828.1572 204.7959;822.1924 208.7725;810.2627 216.7256;806.2861 220.7021;756.5791 262.4561;752.6025 265.4385;723.7725 289.2979;717.8076 295.2627;735.7021 278.3623;739.6787 276.374;706.8721 300.2334;701.9014 306.1982;528.2002 532.2002;545.3662 543.3076;563.542 557.4443;580.708 570.5713;598.8838 588.7471;616.0498 600.8643;630.1865 610.9619;650.3818 628.1279;666.5381 643.2744;682.6943 655.3916;698.8506 663.4697;717.0264 711.9385;698.8506 695.7822;681.6846 682.6553;668.5576 671.5479;647.3525 655.3916;630.1865 639.2354;614.0303 625.0986;597.874 612.9814;579.6982 598.8447;562.5322 583.6982;547.3857 572.5908;547.3857 599.8545;564.5518 615.001;579.6982 627.1182;600.9033 643.2744;616.0498 656.4014;632.2061 669.5283;650.3818 669.5283;648.3623 680.6357;646.3428 714.9678;664.5186 691.7432;682.6943 695.7822;700.8701 710.9287;698.8506 724.0557;681.6846 709.9189;733.1826 722.0361;735.2021 724.0557;717.0264 725.0654;734.1924 739.2021;752.3682 738.1924;733.1826 752.3291;749.3389 753.3389;771.5537 751.3193;750.3486 721.0264;750.3486 711.9385;731.1631 710.9287;732.1729 699.8213;681.6846 626.1084;665.5283 613.9912;648.3623 599.8545;628.167 583.6982;616.0498 571.5811;595.8545 554.415;668.5576 586.7275;647.3525 572.5908;630.1865 557.4443;682.6943 597.835;755.3975 657.4111;768.5244 667.5088;787.71 680.6357;801.8467 698.8115;825.0713 684.6748;663.5088 727.085;681.6846 742.2314;698.8506 752.3291;715.0068 766.4658;734.1924 777.5732;753.3779 792.7197;783.6709 796.7588;765.4951 784.6416;767.5146 809.8857;801.8467 811.9053;801.8467 827.0518;819.0127 824.0225;819.0127 806.8564;819.0127 795.749;800.8369 794.7393;800.8369 778.583;781.6514 764.4463;750.3486 767.4756;836.1787 781.6123;836.1787 807.8662;836.1787 816.9541;836.1787 833.1104;837.1885 846.2373;820.0225 849.2666;819.0127 833.1104;786.7002 822.0029;854.3545 863.4033;867.4814 874.5107;890.7061 895.7158;905.8525 903.7939;903.833 891.6768;888.6865 881.5791;869.501 862.3936;853.3447 849.2666;852.335 835.1299;927.0576 906.8232;922.0088 918.9404;939.1748 919.9502;906.8623 878.5498;906.8623 864.4131;889.6963 849.2666;872.5303 836.1396;872.5303 818.9736;941.1943 936.1064;957.3506 931.0576;923.0186 885.6182;940.1846 888.6475;958.3604 957.3115;974.5166 983.5654;985.624 971.4482;905.8525 949.2334;905.8525 933.0771;889.6963 919.9502;869.501 908.8428; 497.0283 528.9678;479.0635 538.9482;461.0986 554.917;443.1338 568.8896;426.167 583.8604;410.1982 593.8408;408.2021 596.835;396.2256 610.8076;394.2295 612.8037;378.2607 620.7881;373.2705 625.7783;358.2998 637.7549;354.3076 639.751;341.333 652.7256;339.3369 654.7217;359.2979 665.7002;356.3037 669.6924;340.335 678.6748;336.3428 683.665;324.3662 693.6455;321.3721 697.6377;309.3955 706.6201;306.4014 709.6143;293.4268 718.5967;287.4385 724.585;290.4326 744.5459;301.4111 740.5537;304.4053 738.5576;307.3994 720.5928;304.4053 723.5869;272.4678 732.5693;268.4756 737.5596;271.4697 761.5127;269.4736 764.5068;374.2686 652.7256;376.2646 650.7295;388.2412 641.7471;392.2334 637.7549;403.2119 627.7744;405.208 624.7803;420.1787 613.8018;422.1748 611.8057;441.1377 596.835;460.1006 582.8623;478.0654 567.8916;496.0303 556.9131;497.0283 585.8564;476.0693 598.8311;458.1045 612.8037;441.1377 628.7725;424.1709 623.7822;427.165 635.7588;408.2021 651.7275;395.2275 692.6475;391.2354 695.6416;377.2627 706.6201;373.2705 708.6162;358.2998 719.5947;358.2998 721.5908;343.3291 732.5693;340.335 735.5635;329.3564 744.5459;325.3643 747.54;322.3701 719.5947;326.3623 717.5986;333.3486 712.6084;335.3447 710.6123;233.5439 761.5127;235.54 760.5146;248.5146 750.5342;251.5088 749.5361;336.3428 696.6396;341.333 693.6455;351.3135 685.6611;354.3076 682.667;372.2725 670.6904;375.2666 667.6963;426.167 694.6436;424.1709 698.6357;201.6064 791.4541;197.6143 794.4482;217.5752 777.4814;213.583 780.4756;186.6357 828.3818;181.6455 833.3721;166.6748 846.3467;163.6807 851.3369;219.5713 805.4268;213.583 810.417;201.6064 819.3994;198.6123 821.3955;185.6377 807.4229;179.6494 810.417;164.6787 820.3975;160.6865 824.3896;147.7119 861.3174;144.7178 864.3115;132.7412 876.2881;126.7529 880.2803;165.6768 863.3135;146.7139 874.292;143.7197 839.3604;147.7119 834.3701;299.415 769.4971;304.4053 765.5049;355.3057 612.8037;373.2705 597.833;391.2354 584.8584;186.3623 164.3193;49.0947 47.0908;38.0732 24.0459;16.0303 12.0225;15.0283 28.0537;138.2686 109.2119;152.2959 120.2334;172.335 137.2666;190.3701 135.2627;201.3916 149.29;203.3955 178.3467;171.333 118.2295;152.2959 105.2041;139.2705 96.1865;122.2373 79.1533;121.2354 96.1865;101.1963 76.1475;101.1963 58.1123;220.4287 499.9736;237.4619 480.9365;253.4932 499.9736;197.3838 485.9463;180.3506 500.9756;396.7725 498.9717;371.7236 485.9463;356.6943 472.9209;339.6611 458.8936;323.6299 414.8076;266.5186 368.7178;167.3252 259.5049;154.2998 247.4814;127.2471 233.4541;273.5322 302.5889;290.5654 316.6162;308.6006 329.6416;307.5986 344.6709;493.9619 413.8057;476.9287 400.7803;461.8994 382.7451;257.501 342.667;252.4912 329.6416;237.4619 318.6201;202.3936 262.5107;168.3271 192.374;152.2959 178.3467;244.4756 150.292;217.4229 131.2549;198.3857 120.2334;705.2861 319.9072;689.9639 332.165;669.5342 345.4443;655.2334 358.7236;738.9951 249.4248;720.6084 262.7041;704.2646 277.0049;702.2217 280.0693;685.8779 292.3271;668.5127 305.6064;648.083 317.8643;634.8037 332.165;616.417 349.5303;604.1592 357.7021;635.8252 376.0889;614.374 377.1104;600.0732 329.1006;617.4385 318.8857;637.8682 305.6064;792.1123 483.3447;772.7041 473.1299;754.3174 485.3877;768.6182 498.667;792.1123 261.6826;769.6396 253.5107;848.2939 246.3604;880.9814 150.3408;864.6377 163.6201;840.1221 174.8564;824.7998 196.3076;812.542 204.4795;895.2822 136.04;584.751 347.4873;566.3643 331.1436;584.751 318.8857;548.999 312.7568;531.6338 331.1436;548.999 345.4443;530.6123 359.7451;581.6865 413.8838;406.374 571.2549;425.1143 556.46;441.8818 540.6787;267.3018 542.6514;251.5205 527.8564;231.7939 540.6787;219.958 555.4736;215.0264 528.8428;197.2725 546.5967;249.5479 554.4873;324.5088 666.9287;302.8096 684.6826;283.083 695.5322;269.2744 722.1631;290.9736 706.3818;107.5166 869.126;181.4912 845.4541;165.71 832.6318;112.4482 885.8936;112.4482 889.8389;94.6943 899.7021;94.6943 900.6885;405.3877 711.3135;406.374 706.3818;405.3877 677.7783;441.8818 679.751;390.5928 654.1064;409.333 641.2842;388.6201 624.5166;373.8252 642.2705;194.3135 835.5908;196.2861 831.6455;178.5322 795.1514;595.8545 584.7178;852.335 895.7256;855.3643 794.749;889.6963 823.0225;922.0088 880.5791;956.3408 905.8232;788.7197 540.2881;821.0322 541.2979;839.208 530.1904;804.876 529.1807;770.5439 528.1709;613.0205 543.3174;592.8252 525.1416;634.2256 528.1709;650.3818 541.2979;666.5381 559.4736;682.6943 573.6104;698.8506 640.2549;715.0068 683.6748;718.0361 695.792;699.8604 679.6357;681.6846 668.5283;667.5479 654.3916;528.2002 582.6982;527.1904 554.4248;529.21 612.9912;581.7178 541.2979;560.5127 527.1611;767.5146 737.1924;783.6709 753.3486;820.0225 865.4326;835.1689 863.4131;665.5283 680.6455;664.5186 667.5186;633.2158 656.4111;621.0986 646.3135;612.0107 637.2256;
    ];
Name = ["Red", "Green", "Blue"];
% Display Image
I = imread('venado.png');
% I = imrotate(I, 51);
if(display)
    figure(fig);
    fig = fig + 1;
    title('Original a color');
    imshow(I);
end
FENCE = zeros(1024, 1024);

J = I;
for c = 1:3
    C  = I(:,:,c);
    color = Name(c);
    if(display)
        figure(fig);
        fig = fig + 1;
        imshow(C,[]);title(strcat("Original Color ", color) );
    end
    
    f = double(C);
    F = fft2(f);
    F_ = fftshift(F);
    H = log(F_ + 1);
    G = H;
    
    if(display)
        figure(fig);
        fig = fig + 1;
        imshow(H, []);title('Transformada');
    end
    
    switch c
        case 1
            stars = redStars;
        case 2
            stars = greenStars;
        case 3
            stars = blueStars;
        otherwise
            stars = [];
    end
    
    
    
    for k = 1:length(stars)
        star = stars(k, :);
        y = star(1);
        x = star(2);
        r = 4;
        G((x-r):(x+r), (y-r):(y+r)) = 0;
    end
    
    if(display)
        figure(fig);
        fig = fig + 1;
        imshow(G,[]);title('Transformada ajustada')
    end
    
    g=ifft2(ifftshift(exp(G) - 1));
    
    if(display)
        
        figure(fig);
        fig = fig + 1;
        imshow(g,[]);title('devuelta')
    end
    
    diff=f - g;
    if(display)
        figure(fig);
        fig = fig + 1;
        imshow(diff,[]);title('Differencia')
    end
    
    
    threshold = [11 13 13];
    W = diff>threshold(c);
    size = 60;
    TW = bwareaopen(W,size);
    TW(715:998, 58:820) = 0;
    
    threshold = [-12 -10 -10];
    temp = diff < threshold(c);
    BL = zeros(length(temp), length(temp));
    BL(690:1013, 38:880) = temp(690:1013, 38:880);
    TB = bwareaopen(BL,size);
    
    T = TB + TW;
    if(display)
        
        figure(fig);
        fig = fig + 1;
        imshow(T,[]);title('Differencia binaria')
    end
    
    
    FENCE = FENCE + T;  % add the current fence with the acummalite one
    FENCE = FENCE > 0; % The previous steps makes different levels of gray, unite them all
    
    J(:,:,c) = g;
end
figure(fig);
fig = fig + 1;
size = 110;
FENCE = bwareaopen(FENCE,size);
imshow(FENCE,[]);title('reja acumulada')

% F = fft2(FENCE);
% F_ = fftshift(F);
% H = log(F_ + 1);
% G = H;
%
% figure(fig);
% fig = fig + 1;
% imshow(H, []);title('Transformada de la reja');



figure(fig);
fig = fig + 1;

WF = zeros(1024, 1024, 3);
I = imread('venado.png');

for c = 1:3
    K = double(I(:,:,c));
    K = K;
    WF(:,:,c) = K;
    imshow(WF,[]);title('Final sin reja')
    pause(0.5);
end
imshow(I);title('Final sin reja')

if(display)
    figure(fig);
    fig = fig + 1;
    imshow(J,[]);title('Final a color')
end













