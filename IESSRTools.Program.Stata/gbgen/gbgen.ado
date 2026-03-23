program define gb99_to_isco08
	syntax varname(numeric), GENerate(name)
	local old_var `varlist'
	local gen_var `generate'
	
	quietly gen `gen_var' = .
	quietly replace `gen_var' = 1100 if `old_var' == 0
	quietly replace `gen_var' = 1100 if `old_var' == 10
	quietly replace `gen_var' = 1100 if `old_var' == 11
	quietly replace `gen_var' = 1100 if `old_var' == 20
	quietly replace `gen_var' = 1100 if `old_var' == 21
	quietly replace `gen_var' = 1140 if `old_var' == 22
	quietly replace `gen_var' = 1100 if `old_var' == 23
	quietly replace `gen_var' = 1100 if `old_var' == 24
	quietly replace `gen_var' = 1200 if `old_var' == 25
	quietly replace `gen_var' = 1200 if `old_var' == 29
	quietly replace `gen_var' = 1140 if `old_var' == 30
	quietly replace `gen_var' = 1141 if `old_var' == 31
	quietly replace `gen_var' = 1142 if `old_var' == 32
	quietly replace `gen_var' = 1143 if `old_var' == 33
	quietly replace `gen_var' = 1143 if `old_var' == 39
	quietly replace `gen_var' = 1210 if `old_var' == 40
	quietly replace `gen_var' = 1210 if `old_var' == 41
	quietly replace `gen_var' = 1210 if `old_var' == 42
	quietly replace `gen_var' = 1210 if `old_var' == 43
	quietly replace `gen_var' = 1210 if `old_var' == 49
	quietly replace `gen_var' = 1210 if `old_var' == 50
	quietly replace `gen_var' = 1210 if `old_var' == 51
	quietly replace `gen_var' = 2000 if `old_var' == 100
	quietly replace `gen_var' = 2000 if `old_var' == 110
	quietly replace `gen_var' = 2443 if `old_var' == 111
	quietly replace `gen_var' = 2441 if `old_var' == 112
	quietly replace `gen_var' = 2442 if `old_var' == 113
	quietly replace `gen_var' = 2442 if `old_var' == 114
	quietly replace `gen_var' = 2445 if `old_var' == 115
	quietly replace `gen_var' = 2450 if `old_var' == 116
	quietly replace `gen_var' = 2432 if `old_var' == 117
	quietly replace `gen_var' = 2443 if `old_var' == 118
	quietly replace `gen_var' = 2000 if `old_var' == 119
	quietly replace `gen_var' = 2121 if `old_var' == 121
	quietly replace `gen_var' = 2111 if `old_var' == 122
	quietly replace `gen_var' = 2113 if `old_var' == 123
	quietly replace `gen_var' = 2112 if `old_var' == 124
	quietly replace `gen_var' = 2114 if `old_var' == 125
	quietly replace `gen_var' = 2211 if `old_var' == 126
	quietly replace `gen_var' = 2213 if `old_var' == 127
	quietly replace `gen_var' = 2220 if `old_var' == 128
	quietly replace `gen_var' = 2000 if `old_var' == 129
	quietly replace `gen_var' = 3000 if `old_var' == 130
	quietly replace `gen_var' = 3117 if `old_var' == 131
	quietly replace `gen_var' = 2148 if `old_var' == 132
	quietly replace `gen_var' = 3117 if `old_var' == 133
	quietly replace `gen_var' = 3117 if `old_var' == 134
	quietly replace `gen_var' = 3117 if `old_var' == 135
	quietly replace `gen_var' = 3116 if `old_var' == 136
	quietly replace `gen_var' = 3115 if `old_var' == 137
	quietly replace `gen_var' = 3115 if `old_var' == 138
	quietly replace `gen_var' = 3000 if `old_var' == 139
	quietly replace `gen_var' = 3000 if `old_var' == 141
	quietly replace `gen_var' = 3113 if `old_var' == 142
	quietly replace `gen_var' = 3113 if `old_var' == 143
	quietly replace `gen_var' = 3120 if `old_var' == 144
	quietly replace `gen_var' = 3113 if `old_var' == 145
	quietly replace `gen_var' = 3113 if `old_var' == 146
	quietly replace `gen_var' = 3119 if `old_var' == 147
	quietly replace `gen_var' = 3119 if `old_var' == 148
	quietly replace `gen_var' = 3112 if `old_var' == 149
	quietly replace `gen_var' = 3115 if `old_var' == 151
	quietly replace `gen_var' = 3112 if `old_var' == 152
	quietly replace `gen_var' = 3112 if `old_var' == 153
	quietly replace `gen_var' = 3112 if `old_var' == 154
	quietly replace `gen_var' = 3212 if `old_var' == 155
	quietly replace `gen_var' = 3212 if `old_var' == 156
	quietly replace `gen_var' = 3111 if `old_var' == 157
	quietly replace `gen_var' = 3112 if `old_var' == 158
	quietly replace `gen_var' = 3110 if `old_var' == 159
	quietly replace `gen_var' = 3212 if `old_var' == 161
	quietly replace `gen_var' = 3117 if `old_var' == 162
	quietly replace `gen_var' = 3119 if `old_var' == 163
	quietly replace `gen_var' = 3119 if `old_var' == 164
	quietly replace `gen_var' = 3152 if `old_var' == 165
	quietly replace `gen_var' = 3119 if `old_var' == 166
	quietly replace `gen_var' = 3119 if `old_var' == 167
	quietly replace `gen_var' = 3119 if `old_var' == 169
	quietly replace `gen_var' = 3120 if `old_var' == 170
	quietly replace `gen_var' = 3212 if `old_var' == 171
	quietly replace `gen_var' = 3212 if `old_var' == 172
	quietly replace `gen_var' = 3212 if `old_var' == 173
	quietly replace `gen_var' = 3211 if `old_var' == 174
	quietly replace `gen_var' = 2223 if `old_var' == 175
	quietly replace `gen_var' = 3212 if `old_var' == 176
	quietly replace `gen_var' = 3212 if `old_var' == 179
	quietly replace `gen_var' = 3140 if `old_var' == 180
	quietly replace `gen_var' = 3143 if `old_var' == 181
	quietly replace `gen_var' = 3142 if `old_var' == 182
	quietly replace `gen_var' = 3140 if `old_var' == 189
	quietly replace `gen_var' = 2221 if `old_var' == 190
	quietly replace `gen_var' = 2221 if `old_var' == 191
	quietly replace `gen_var' = 2221 if `old_var' == 192
	quietly replace `gen_var' = 2221 if `old_var' == 193
	quietly replace `gen_var' = 2221 if `old_var' == 194
	quietly replace `gen_var' = 2221 if `old_var' == 195
	quietly replace `gen_var' = 3228 if `old_var' == 196
	quietly replace `gen_var' = 3220 if `old_var' == 197
	quietly replace `gen_var' = 3231 if `old_var' == 198
	quietly replace `gen_var' = 3229 if `old_var' == 199
	quietly replace `gen_var' = 3410 if `old_var' == 210
	quietly replace `gen_var' = 3434 if `old_var' == 211
	quietly replace `gen_var' = 4122 if `old_var' == 212
	quietly replace `gen_var' = 4121 if `old_var' == 213
	quietly replace `gen_var' = 4121 if `old_var' == 214
	quietly replace `gen_var' = 3410 if `old_var' == 215
	quietly replace `gen_var' = 3430 if `old_var' == 219
	quietly replace `gen_var' = 3410 if `old_var' == 220
	quietly replace `gen_var' = 3410 if `old_var' == 221
	quietly replace `gen_var' = 3412 if `old_var' == 222
	quietly replace `gen_var' = 3410 if `old_var' == 223
	quietly replace `gen_var' = 3419 if `old_var' == 229
	quietly replace `gen_var' = 2420 if `old_var' == 230
	quietly replace `gen_var' = 2422 if `old_var' == 231
	quietly replace `gen_var' = 2429 if `old_var' == 232
	quietly replace `gen_var' = 2421 if `old_var' == 233
	quietly replace `gen_var' = 2429 if `old_var' == 234
	quietly replace `gen_var' = 2429 if `old_var' == 235
	quietly replace `gen_var' = 2429 if `old_var' == 236
	quietly replace `gen_var' = 2429 if `old_var' == 239
	quietly replace `gen_var' = 2300 if `old_var' == 240
	quietly replace `gen_var' = 2310 if `old_var' == 241
	quietly replace `gen_var' = 2320 if `old_var' == 242
	quietly replace `gen_var' = 2320 if `old_var' == 243
	quietly replace `gen_var' = 2331 if `old_var' == 244
	quietly replace `gen_var' = 2332 if `old_var' == 245
	quietly replace `gen_var' = 2340 if `old_var' == 246
	quietly replace `gen_var' = 2350 if `old_var' == 249
	quietly replace `gen_var' = 2450 if `old_var' == 250
	quietly replace `gen_var' = 2451 if `old_var' == 251
	quietly replace `gen_var' = 2453 if `old_var' == 252
	quietly replace `gen_var' = 2455 if `old_var' == 253
	quietly replace `gen_var' = 3470 if `old_var' == 254
	quietly replace `gen_var' = 3130 if `old_var' == 255
	quietly replace `gen_var' = 2452 if `old_var' == 256
	quietly replace `gen_var' = 3471 if `old_var' == 257
	quietly replace `gen_var' = 3470 if `old_var' == 259
	quietly replace `gen_var' = 3475 if `old_var' == 260
	quietly replace `gen_var' = 3475 if `old_var' == 261
	quietly replace `gen_var' = 2450 if `old_var' == 270
	quietly replace `gen_var' = 2451 if `old_var' == 271
	quietly replace `gen_var' = 2451 if `old_var' == 272
	quietly replace `gen_var' = 4143 if `old_var' == 273
	quietly replace `gen_var' = 3472 if `old_var' == 274
	quietly replace `gen_var' = 2444 if `old_var' == 275
	quietly replace `gen_var' = 2431 if `old_var' == 276
	quietly replace `gen_var' = 2430 if `old_var' == 277
	quietly replace `gen_var' = 3470 if `old_var' == 279
	quietly replace `gen_var' = 2460 if `old_var' == 280
	quietly replace `gen_var' = 2460 if `old_var' == 280
	quietly replace `gen_var' = 2400 if `old_var' == 290
	quietly replace `gen_var' = 2400 if `old_var' == 290
	quietly replace `gen_var' = 4000 if `old_var' == 300
	quietly replace `gen_var' = 4110 if `old_var' == 310
	quietly replace `gen_var' = 3440 if `old_var' == 311
	quietly replace `gen_var' = 4100 if `old_var' == 312
	quietly replace `gen_var' = 4100 if `old_var' == 319
	quietly replace `gen_var' = 5160 if `old_var' == 320
	quietly replace `gen_var' = 5162 if `old_var' == 321
	quietly replace `gen_var' = 5169 if `old_var' == 322
	quietly replace `gen_var' = 5161 if `old_var' == 323
	quietly replace `gen_var' = 5169 if `old_var' == 329
	quietly replace `gen_var' = 4140 if `old_var' == 330
	quietly replace `gen_var' = 4142 if `old_var' == 331
	quietly replace `gen_var' = 4143 if `old_var' == 332
	quietly replace `gen_var' = 3132 if `old_var' == 333
	quietly replace `gen_var' = 4140 if `old_var' == 339
	quietly replace `gen_var' = 4190 if `old_var' == 390
	quietly replace `gen_var' = 5000 if `old_var' == 400
	quietly replace `gen_var' = 5220 if `old_var' == 410
	quietly replace `gen_var' = 5220 if `old_var' == 411
	quietly replace `gen_var' = 5220 if `old_var' == 412
	quietly replace `gen_var' = 3416 if `old_var' == 413
	quietly replace `gen_var' = 4214 if `old_var' == 414
	quietly replace `gen_var' = 9161 if `old_var' == 415
	quietly replace `gen_var' = 3439 if `old_var' == 416
	quietly replace `gen_var' = 3439 if `old_var' == 417
	quietly replace `gen_var' = 5200 if `old_var' == 419
	quietly replace `gen_var' = 4130 if `old_var' == 420
	quietly replace `gen_var' = 4131 if `old_var' == 421
	quietly replace `gen_var' = 4133 if `old_var' == 422
	quietly replace `gen_var' = 4130 if `old_var' == 429
	quietly replace `gen_var' = 5120 if `old_var' == 430
	quietly replace `gen_var' = 5122 if `old_var' == 431
	quietly replace `gen_var' = 5122 if `old_var' == 432
	quietly replace `gen_var' = 5123 if `old_var' == 433
	quietly replace `gen_var' = 5122 if `old_var' == 434
	quietly replace `gen_var' = 5123 if `old_var' == 435
	quietly replace `gen_var' = 5123 if `old_var' == 439
	quietly replace `gen_var' = 5140 if `old_var' == 440
	quietly replace `gen_var' = 5120 if `old_var' == 441
	quietly replace `gen_var' = 5110 if `old_var' == 442
	quietly replace `gen_var' = 5139 if `old_var' == 443
	quietly replace `gen_var' = 5000 if `old_var' == 449
	quietly replace `gen_var' = 5110 if `old_var' == 450
	quietly replace `gen_var' = 5110 if `old_var' == 451
	quietly replace `gen_var' = 5110 if `old_var' == 452
	quietly replace `gen_var' = 5110 if `old_var' == 453
	quietly replace `gen_var' = 5110 if `old_var' == 454
	quietly replace `gen_var' = 5110 if `old_var' == 459
	quietly replace `gen_var' = 3230 if `old_var' == 460
	quietly replace `gen_var' = 3230 if `old_var' == 461
	quietly replace `gen_var' = 5000 if `old_var' == 470
	quietly replace `gen_var' = 3420 if `old_var' == 471
	quietly replace `gen_var' = 5121 if `old_var' == 472
	quietly replace `gen_var' = 5121 if `old_var' == 473
	quietly replace `gen_var' = 5141 if `old_var' == 474
	quietly replace `gen_var' = 3131 if `old_var' == 475
	quietly replace `gen_var' = 3224 if `old_var' == 476
	quietly replace `gen_var' = 5149 if `old_var' == 477
	quietly replace `gen_var' = 5149 if `old_var' == 478
	quietly replace `gen_var' = 7300 if `old_var' == 479
	quietly replace `gen_var' = 7300 if `old_var' == 481
	quietly replace `gen_var' = 7300 if `old_var' == 482
	quietly replace `gen_var' = 5130 if `old_var' == 483
	quietly replace `gen_var' = 9162 if `old_var' == 484
	quietly replace `gen_var' = 5143 if `old_var' == 485
	quietly replace `gen_var' = 5000 if `old_var' == 489
	quietly replace `gen_var' = 5000 if `old_var' == 490
	quietly replace `gen_var' = 5000 if `old_var' == 499
	quietly replace `gen_var' = 6100 if `old_var' == 500
	quietly replace `gen_var' = 6110 if `old_var' == 510
	quietly replace `gen_var' = 6110 if `old_var' == 511
	quietly replace `gen_var' = 3212 if `old_var' == 512
	quietly replace `gen_var' = 6113 if `old_var' == 513
	quietly replace `gen_var' = 6113 if `old_var' == 514
	quietly replace `gen_var' = 6113 if `old_var' == 515
	quietly replace `gen_var' = 7410 if `old_var' == 516
	quietly replace `gen_var' = 6130 if `old_var' == 519
	quietly replace `gen_var' = 6112 if `old_var' == 520
	quietly replace `gen_var' = 6112 if `old_var' == 521
	quietly replace `gen_var' = 6112 if `old_var' == 522
	quietly replace `gen_var' = 6112 if `old_var' == 523
	quietly replace `gen_var' = 6112 if `old_var' == 524
	quietly replace `gen_var' = 6130 if `old_var' == 529
	quietly replace `gen_var' = 6120 if `old_var' == 530
	quietly replace `gen_var' = 6121 if `old_var' == 531
	quietly replace `gen_var' = 6122 if `old_var' == 532
	quietly replace `gen_var' = 6123 if `old_var' == 533
	quietly replace `gen_var' = 6130 if `old_var' == 534
	quietly replace `gen_var' = 3227 if `old_var' == 535
	quietly replace `gen_var' = 6100 if `old_var' == 536
	quietly replace `gen_var' = 6130 if `old_var' == 539
	quietly replace `gen_var' = 6150 if `old_var' == 540
	quietly replace `gen_var' = 6152 if `old_var' == 541
	quietly replace `gen_var' = 6150 if `old_var' == 542
	quietly replace `gen_var' = 8271 if `old_var' == 543
	quietly replace `gen_var' = 6150 if `old_var' == 549
	quietly replace `gen_var' = 3112 if `old_var' == 550
	quietly replace `gen_var' = 3112 if `old_var' == 551
	quietly replace `gen_var' = 3112 if `old_var' == 552
	quietly replace `gen_var' = 3112 if `old_var' == 553
	quietly replace `gen_var' = 3112 if `old_var' == 554
	quietly replace `gen_var' = 3112 if `old_var' == 559
	quietly replace `gen_var' = 6000 if `old_var' == 590
	quietly replace `gen_var' = 8330 if `old_var' == 591
	quietly replace `gen_var' = 8163 if `old_var' == 592
	quietly replace `gen_var' = 8000 if `old_var' == 600
	quietly replace `gen_var' = 8100 if `old_var' == 610
	quietly replace `gen_var' = 3112 if `old_var' == 611
	quietly replace `gen_var' = 3118 if `old_var' == 612
	quietly replace `gen_var' = 8110 if `old_var' == 613
	quietly replace `gen_var' = 8124 if `old_var' == 614
	quietly replace `gen_var' = 8113 if `old_var' == 615
	quietly replace `gen_var' = 8113 if `old_var' == 616
	quietly replace `gen_var' = 8110 if `old_var' == 617
	quietly replace `gen_var' = 8100 if `old_var' == 619
	quietly replace `gen_var' = 8120 if `old_var' == 620
	quietly replace `gen_var' = 8123 if `old_var' == 621
	quietly replace `gen_var' = 8122 if `old_var' == 622
	quietly replace `gen_var' = 8120 if `old_var' == 623
	quietly replace `gen_var' = 8120 if `old_var' == 624
	quietly replace `gen_var' = 8120 if `old_var' == 625
	quietly replace `gen_var' = 8120 if `old_var' == 626
	quietly replace `gen_var' = 8120 if `old_var' == 627
	quietly replace `gen_var' = 8120 if `old_var' == 628
	quietly replace `gen_var' = 8122 if `old_var' == 629
	quietly replace `gen_var' = 8120 if `old_var' == 631
	quietly replace `gen_var' = 8120 if `old_var' == 632
	quietly replace `gen_var' = 8120 if `old_var' == 639
	quietly replace `gen_var' = 8150 if `old_var' == 640
	quietly replace `gen_var' = 8150 if `old_var' == 641
	quietly replace `gen_var' = 8150 if `old_var' == 642
	quietly replace `gen_var' = 8150 if `old_var' == 643
	quietly replace `gen_var' = 8150 if `old_var' == 644
	quietly replace `gen_var' = 8150 if `old_var' == 645
	quietly replace `gen_var' = 8150 if `old_var' == 646
	quietly replace `gen_var' = 8150 if `old_var' == 647
	quietly replace `gen_var' = 8150 if `old_var' == 648
	quietly replace `gen_var' = 8150 if `old_var' == 649
	quietly replace `gen_var' = 8150 if `old_var' == 651
	quietly replace `gen_var' = 8150 if `old_var' == 652
	quietly replace `gen_var' = 8150 if `old_var' == 653
	quietly replace `gen_var' = 8150 if `old_var' == 654
	quietly replace `gen_var' = 8150 if `old_var' == 654
	quietly replace `gen_var' = 8150 if `old_var' == 655
	quietly replace `gen_var' = 8150 if `old_var' == 656
	quietly replace `gen_var' = 8150 if `old_var' == 657
	quietly replace `gen_var' = 8150 if `old_var' == 659
	quietly replace `gen_var' = 7210 if `old_var' == 660
	quietly replace `gen_var' = 7210 if `old_var' == 661
	quietly replace `gen_var' = 7210 if `old_var' == 662
	quietly replace `gen_var' = 7213 if `old_var' == 663
	quietly replace `gen_var' = 7213 if `old_var' == 664
	quietly replace `gen_var' = 7200 if `old_var' == 665
	quietly replace `gen_var' = 7200 if `old_var' == 666
	quietly replace `gen_var' = 7232 if `old_var' == 667
	quietly replace `gen_var' = 7200 if `old_var' == 669
	quietly replace `gen_var' = 8280 if `old_var' == 670
	quietly replace `gen_var' = 8281 if `old_var' == 671
	quietly replace `gen_var' = 8281 if `old_var' == 672
	quietly replace `gen_var' = 8282 if `old_var' == 673
	quietly replace `gen_var' = 8282 if `old_var' == 674
	quietly replace `gen_var' = 8283 if `old_var' == 675
	quietly replace `gen_var' = 8280 if `old_var' == 676
	quietly replace `gen_var' = 8280 if `old_var' == 677
	quietly replace `gen_var' = 7200 if `old_var' == 678
	quietly replace `gen_var' = 8280 if `old_var' == 679
	quietly replace `gen_var' = 8280 if `old_var' == 681
	quietly replace `gen_var' = 7220 if `old_var' == 682
	quietly replace `gen_var' = 8280 if `old_var' == 683
	quietly replace `gen_var' = 7200 if `old_var' == 684
	quietly replace `gen_var' = 7200 if `old_var' == 685
	quietly replace `gen_var' = 7200 if `old_var' == 686
	quietly replace `gen_var' = 7200 if `old_var' == 687
	quietly replace `gen_var' = 7200 if `old_var' == 688
	quietly replace `gen_var' = 7200 if `old_var' == 689
	quietly replace `gen_var' = 7232 if `old_var' == 691
	quietly replace `gen_var' = 7232 if `old_var' == 692
	quietly replace `gen_var' = 7232 if `old_var' == 693
	quietly replace `gen_var' = 7232 if `old_var' == 694
	quietly replace `gen_var' = 7232 if `old_var' == 695
	quietly replace `gen_var' = 7230 if `old_var' == 696
	quietly replace `gen_var' = 7245 if `old_var' == 699
	quietly replace `gen_var' = 7520 if `old_var' == 710
	quietly replace `gen_var' = 7520 if `old_var' == 711
	quietly replace `gen_var' = 7520 if `old_var' == 712
	quietly replace `gen_var' = 7520 if `old_var' == 713
	quietly replace `gen_var' = 7520 if `old_var' == 719
	quietly replace `gen_var' = 8160 if `old_var' == 720
	quietly replace `gen_var' = 8161 if `old_var' == 721
	quietly replace `gen_var' = 8161 if `old_var' == 722
	quietly replace `gen_var' = 8161 if `old_var' == 723
	quietly replace `gen_var' = 8160 if `old_var' == 724
	quietly replace `gen_var' = 8160 if `old_var' == 725
	quietly replace `gen_var' = 8160 if `old_var' == 726
	quietly replace `gen_var' = 8160 if `old_var' == 729
	quietly replace `gen_var' = 7240 if `old_var' == 730
	quietly replace `gen_var' = 7240 if `old_var' == 731
	quietly replace `gen_var' = 7240 if `old_var' == 732
	quietly replace `gen_var' = 7240 if `old_var' == 733
	quietly replace `gen_var' = 7240 if `old_var' == 734
	quietly replace `gen_var' = 7243 if `old_var' == 735
	quietly replace `gen_var' = 7240 if `old_var' == 739
	quietly replace `gen_var' = 8230 if `old_var' == 740
	quietly replace `gen_var' = 8231 if `old_var' == 741
	quietly replace `gen_var' = 8232 if `old_var' == 742
	quietly replace `gen_var' = 8230 if `old_var' == 749
	quietly replace `gen_var' = 7430 if `old_var' == 750
	quietly replace `gen_var' = 7431 if `old_var' == 751
	quietly replace `gen_var' = 7432 if `old_var' == 752
	quietly replace `gen_var' = 7430 if `old_var' == 753
	quietly replace `gen_var' = 7432 if `old_var' == 754
	quietly replace `gen_var' = 7432 if `old_var' == 755
	quietly replace `gen_var' = 7432 if `old_var' == 759
	quietly replace `gen_var' = 7430 if `old_var' == 760
	quietly replace `gen_var' = 7433 if `old_var' == 761
	quietly replace `gen_var' = 7433 if `old_var' == 762
	quietly replace `gen_var' = 7434 if `old_var' == 763
	quietly replace `gen_var' = 7430 if `old_var' == 764
	quietly replace `gen_var' = 7430 if `old_var' == 769
	quietly replace `gen_var' = 7410 if `old_var' == 770
	quietly replace `gen_var' = 7410 if `old_var' == 771
	quietly replace `gen_var' = 7412 if `old_var' == 772
	quietly replace `gen_var' = 7413 if `old_var' == 773
	quietly replace `gen_var' = 7410 if `old_var' == 774
	quietly replace `gen_var' = 7410 if `old_var' == 775
	quietly replace `gen_var' = 7410 if `old_var' == 776
	quietly replace `gen_var' = 7410 if `old_var' == 777
	quietly replace `gen_var' = 7410 if `old_var' == 778
	quietly replace `gen_var' = 7410 if `old_var' == 779
	quietly replace `gen_var' = 7416 if `old_var' == 780
	quietly replace `gen_var' = 7416 if `old_var' == 781
	quietly replace `gen_var' = 7416 if `old_var' == 782
	quietly replace `gen_var' = 7416 if `old_var' == 783
	quietly replace `gen_var' = 7416 if `old_var' == 789
	quietly replace `gen_var' = 8150 if `old_var' == 790
	quietly replace `gen_var' = 8150 if `old_var' == 791
	quietly replace `gen_var' = 8150 if `old_var' == 792
	quietly replace `gen_var' = 8150 if `old_var' == 793
	quietly replace `gen_var' = 8150 if `old_var' == 794
	quietly replace `gen_var' = 8150 if `old_var' == 799
	quietly replace `gen_var' = 8140 if `old_var' == 810
	quietly replace `gen_var' = 8140 if `old_var' == 811
	quietly replace `gen_var' = 8140 if `old_var' == 812
	quietly replace `gen_var' = 8140 if `old_var' == 813
	quietly replace `gen_var' = 8140 if `old_var' == 814
	quietly replace `gen_var' = 8140 if `old_var' == 815
	quietly replace `gen_var' = 8140 if `old_var' == 816
	quietly replace `gen_var' = 8140 if `old_var' == 819
	quietly replace `gen_var' = 7120 if `old_var' == 820
	quietly replace `gen_var' = 7123 if `old_var' == 821
	quietly replace `gen_var' = 7129 if `old_var' == 822
	quietly replace `gen_var' = 7120 if `old_var' == 823
	quietly replace `gen_var' = 7120 if `old_var' == 824
	quietly replace `gen_var' = 7120 if `old_var' == 825
	quietly replace `gen_var' = 7120 if `old_var' == 826
	quietly replace `gen_var' = 7120 if `old_var' == 827
	quietly replace `gen_var' = 7120 if `old_var' == 829
	quietly replace `gen_var' = 7320 if `old_var' == 830
	quietly replace `gen_var' = 7321 if `old_var' == 831
	quietly replace `gen_var' = 7321 if `old_var' == 832
	quietly replace `gen_var' = 7322 if `old_var' == 833
	quietly replace `gen_var' = 7324 if `old_var' == 834
	quietly replace `gen_var' = 7324 if `old_var' == 835
	quietly replace `gen_var' = 7320 if `old_var' == 839
	quietly replace `gen_var' = 3130 if `old_var' == 840
	quietly replace `gen_var' = 3130 if `old_var' == 841
	quietly replace `gen_var' = 3131 if `old_var' == 842
	quietly replace `gen_var' = 3132 if `old_var' == 843
	quietly replace `gen_var' = 4100 if `old_var' == 844
	quietly replace `gen_var' = 3110 if `old_var' == 845
	quietly replace `gen_var' = 3130 if `old_var' == 849
	quietly replace `gen_var' = 7340 if `old_var' == 850
	quietly replace `gen_var' = 7340 if `old_var' == 851
	quietly replace `gen_var' = 7340 if `old_var' == 852
	quietly replace `gen_var' = 7340 if `old_var' == 853
	quietly replace `gen_var' = 7340 if `old_var' == 859
	quietly replace `gen_var' = 7310 if `old_var' == 860
	quietly replace `gen_var' = 7313 if `old_var' == 861
	quietly replace `gen_var' = 7332 if `old_var' == 862
	quietly replace `gen_var' = 7300 if `old_var' == 863
	quietly replace `gen_var' = 7331 if `old_var' == 864
	quietly replace `gen_var' = 7346 if `old_var' == 865
	quietly replace `gen_var' = 7313 if `old_var' == 866
	quietly replace `gen_var' = 7313 if `old_var' == 867
	quietly replace `gen_var' = 7300 if `old_var' == 868
	quietly replace `gen_var' = 7300 if `old_var' == 869
	quietly replace `gen_var' = 7000 if `old_var' == 870
	quietly replace `gen_var' = 7000 if `old_var' == 871
	quietly replace `gen_var' = 7000 if `old_var' == 872
	quietly replace `gen_var' = 7312 if `old_var' == 873
	quietly replace `gen_var' = 7000 if `old_var' == 879
	quietly replace `gen_var' = 7120 if `old_var' == 880
	quietly replace `gen_var' = 7122 if `old_var' == 881
	quietly replace `gen_var' = 7122 if `old_var' == 882
	quietly replace `gen_var' = 7123 if `old_var' == 883
	quietly replace `gen_var' = 7221 if `old_var' == 884
	quietly replace `gen_var' = 7129 if `old_var' == 885
	quietly replace `gen_var' = 7134 if `old_var' == 886
	quietly replace `gen_var' = 7130 if `old_var' == 887
	quietly replace `gen_var' = 7121 if `old_var' == 888
	quietly replace `gen_var' = 9312 if `old_var' == 889
	quietly replace `gen_var' = 8280 if `old_var' == 891
	quietly replace `gen_var' = 7129 if `old_var' == 899
	quietly replace `gen_var' = 8320 if `old_var' == 910
	quietly replace `gen_var' = 8320 if `old_var' == 911
	quietly replace `gen_var' = 8312 if `old_var' == 912
	quietly replace `gen_var' = 3145 if `old_var' == 913
	quietly replace `gen_var' = 8340 if `old_var' == 914
	quietly replace `gen_var' = 8324 if `old_var' == 915
	quietly replace `gen_var' = 8300 if `old_var' == 919
	quietly replace `gen_var' = 3110 if `old_var' == 920
	quietly replace `gen_var' = 3110 if `old_var' == 921
	quietly replace `gen_var' = 3110 if `old_var' == 922
	quietly replace `gen_var' = 9161 if `old_var' == 923
	quietly replace `gen_var' = 3110 if `old_var' == 929
	quietly replace `gen_var' = 3110 if `old_var' == 930
	quietly replace `gen_var' = 3110 if `old_var' == 931
	quietly replace `gen_var' = 3110 if `old_var' == 932
	quietly replace `gen_var' = 3110 if `old_var' == 933
	quietly replace `gen_var' = 3110 if `old_var' == 934
	quietly replace `gen_var' = 3110 if `old_var' == 939
	quietly replace `gen_var' = 9300 if `old_var' == 990
	quietly replace `gen_var' = 9322 if `old_var' == 991
	quietly replace `gen_var' = 9300 if `old_var' == 992
	quietly replace `gen_var' = 9300 if `old_var' == 993
	quietly replace `gen_var' = 9000 if `old_var' == 999
	
	quietly replace `gen_var' = .a if !missing(`old_var') & missing(`gen_var')
	quietly replace `gen_var' = .b if missing(`old_var') & missing(`gen_var')
	
	quietly count if `gen_var' == .a
	local no_matched = r(N)
	quietly count if `gen_var' == .b
	local missing = r(N)
	
	di char(32)
	di as text "Transformation success."
	di as text "  Not matched from source (.a): " as result `no_matched'
	di as text "  Missing from source (.b): " as result `missing'
	di as text "Acknowledgment: Mapping relationships from GB99 to ISCO88 are provided by Yang SU."
end

program define isco08_to_gb99
	syntax varname(numeric), GENerate(name)
	local old_var `varlist'
	local gen_var `generate'
	
	quietly gen `gen_var' = .
	quietly replace `gen_var' = 0 if `old_var' == 1100
	quietly replace `gen_var' = 10 if `old_var' == 1100
	quietly replace `gen_var' = 11 if `old_var' == 1100
	quietly replace `gen_var' = 20 if `old_var' == 1100
	quietly replace `gen_var' = 21 if `old_var' == 1100
	quietly replace `gen_var' = 22 if `old_var' == 1140
	quietly replace `gen_var' = 23 if `old_var' == 1100
	quietly replace `gen_var' = 24 if `old_var' == 1100
	quietly replace `gen_var' = 25 if `old_var' == 1200
	quietly replace `gen_var' = 29 if `old_var' == 1200
	quietly replace `gen_var' = 30 if `old_var' == 1140
	quietly replace `gen_var' = 31 if `old_var' == 1141
	quietly replace `gen_var' = 32 if `old_var' == 1142
	quietly replace `gen_var' = 33 if `old_var' == 1143
	quietly replace `gen_var' = 39 if `old_var' == 1143
	quietly replace `gen_var' = 40 if `old_var' == 1210
	quietly replace `gen_var' = 41 if `old_var' == 1210
	quietly replace `gen_var' = 42 if `old_var' == 1210
	quietly replace `gen_var' = 43 if `old_var' == 1210
	quietly replace `gen_var' = 49 if `old_var' == 1210
	quietly replace `gen_var' = 50 if `old_var' == 1210
	quietly replace `gen_var' = 51 if `old_var' == 1210
	quietly replace `gen_var' = 100 if `old_var' == 2000
	quietly replace `gen_var' = 110 if `old_var' == 2000
	quietly replace `gen_var' = 111 if `old_var' == 2443
	quietly replace `gen_var' = 112 if `old_var' == 2441
	quietly replace `gen_var' = 113 if `old_var' == 2442
	quietly replace `gen_var' = 114 if `old_var' == 2442
	quietly replace `gen_var' = 115 if `old_var' == 2445
	quietly replace `gen_var' = 116 if `old_var' == 2450
	quietly replace `gen_var' = 117 if `old_var' == 2432
	quietly replace `gen_var' = 118 if `old_var' == 2443
	quietly replace `gen_var' = 119 if `old_var' == 2000
	quietly replace `gen_var' = 121 if `old_var' == 2121
	quietly replace `gen_var' = 122 if `old_var' == 2111
	quietly replace `gen_var' = 123 if `old_var' == 2113
	quietly replace `gen_var' = 124 if `old_var' == 2112
	quietly replace `gen_var' = 125 if `old_var' == 2114
	quietly replace `gen_var' = 126 if `old_var' == 2211
	quietly replace `gen_var' = 127 if `old_var' == 2213
	quietly replace `gen_var' = 128 if `old_var' == 2220
	quietly replace `gen_var' = 129 if `old_var' == 2000
	quietly replace `gen_var' = 130 if `old_var' == 3000
	quietly replace `gen_var' = 131 if `old_var' == 3117
	quietly replace `gen_var' = 132 if `old_var' == 2148
	quietly replace `gen_var' = 133 if `old_var' == 3117
	quietly replace `gen_var' = 134 if `old_var' == 3117
	quietly replace `gen_var' = 135 if `old_var' == 3117
	quietly replace `gen_var' = 136 if `old_var' == 3116
	quietly replace `gen_var' = 137 if `old_var' == 3115
	quietly replace `gen_var' = 138 if `old_var' == 3115
	quietly replace `gen_var' = 139 if `old_var' == 3000
	quietly replace `gen_var' = 141 if `old_var' == 3000
	quietly replace `gen_var' = 142 if `old_var' == 3113
	quietly replace `gen_var' = 143 if `old_var' == 3113
	quietly replace `gen_var' = 144 if `old_var' == 3120
	quietly replace `gen_var' = 145 if `old_var' == 3113
	quietly replace `gen_var' = 146 if `old_var' == 3113
	quietly replace `gen_var' = 147 if `old_var' == 3119
	quietly replace `gen_var' = 148 if `old_var' == 3119
	quietly replace `gen_var' = 149 if `old_var' == 3112
	quietly replace `gen_var' = 151 if `old_var' == 3115
	quietly replace `gen_var' = 152 if `old_var' == 3112
	quietly replace `gen_var' = 153 if `old_var' == 3112
	quietly replace `gen_var' = 154 if `old_var' == 3112
	quietly replace `gen_var' = 155 if `old_var' == 3212
	quietly replace `gen_var' = 156 if `old_var' == 3212
	quietly replace `gen_var' = 157 if `old_var' == 3111
	quietly replace `gen_var' = 158 if `old_var' == 3112
	quietly replace `gen_var' = 159 if `old_var' == 3110
	quietly replace `gen_var' = 161 if `old_var' == 3212
	quietly replace `gen_var' = 162 if `old_var' == 3117
	quietly replace `gen_var' = 163 if `old_var' == 3119
	quietly replace `gen_var' = 164 if `old_var' == 3119
	quietly replace `gen_var' = 165 if `old_var' == 3152
	quietly replace `gen_var' = 166 if `old_var' == 3119
	quietly replace `gen_var' = 167 if `old_var' == 3119
	quietly replace `gen_var' = 169 if `old_var' == 3119
	quietly replace `gen_var' = 170 if `old_var' == 3120
	quietly replace `gen_var' = 171 if `old_var' == 3212
	quietly replace `gen_var' = 172 if `old_var' == 3212
	quietly replace `gen_var' = 173 if `old_var' == 3212
	quietly replace `gen_var' = 174 if `old_var' == 3211
	quietly replace `gen_var' = 175 if `old_var' == 2223
	quietly replace `gen_var' = 176 if `old_var' == 3212
	quietly replace `gen_var' = 179 if `old_var' == 3212
	quietly replace `gen_var' = 180 if `old_var' == 3140
	quietly replace `gen_var' = 181 if `old_var' == 3143
	quietly replace `gen_var' = 182 if `old_var' == 3142
	quietly replace `gen_var' = 189 if `old_var' == 3140
	quietly replace `gen_var' = 190 if `old_var' == 2221
	quietly replace `gen_var' = 191 if `old_var' == 2221
	quietly replace `gen_var' = 192 if `old_var' == 2221
	quietly replace `gen_var' = 193 if `old_var' == 2221
	quietly replace `gen_var' = 194 if `old_var' == 2221
	quietly replace `gen_var' = 195 if `old_var' == 2221
	quietly replace `gen_var' = 196 if `old_var' == 3228
	quietly replace `gen_var' = 197 if `old_var' == 3220
	quietly replace `gen_var' = 198 if `old_var' == 3231
	quietly replace `gen_var' = 199 if `old_var' == 3229
	quietly replace `gen_var' = 210 if `old_var' == 3410
	quietly replace `gen_var' = 211 if `old_var' == 3434
	quietly replace `gen_var' = 212 if `old_var' == 4122
	quietly replace `gen_var' = 213 if `old_var' == 4121
	quietly replace `gen_var' = 214 if `old_var' == 4121
	quietly replace `gen_var' = 215 if `old_var' == 3410
	quietly replace `gen_var' = 219 if `old_var' == 3430
	quietly replace `gen_var' = 220 if `old_var' == 3410
	quietly replace `gen_var' = 221 if `old_var' == 3410
	quietly replace `gen_var' = 222 if `old_var' == 3412
	quietly replace `gen_var' = 223 if `old_var' == 3410
	quietly replace `gen_var' = 229 if `old_var' == 3419
	quietly replace `gen_var' = 230 if `old_var' == 2420
	quietly replace `gen_var' = 231 if `old_var' == 2422
	quietly replace `gen_var' = 232 if `old_var' == 2429
	quietly replace `gen_var' = 233 if `old_var' == 2421
	quietly replace `gen_var' = 234 if `old_var' == 2429
	quietly replace `gen_var' = 235 if `old_var' == 2429
	quietly replace `gen_var' = 236 if `old_var' == 2429
	quietly replace `gen_var' = 239 if `old_var' == 2429
	quietly replace `gen_var' = 240 if `old_var' == 2300
	quietly replace `gen_var' = 241 if `old_var' == 2310
	quietly replace `gen_var' = 242 if `old_var' == 2320
	quietly replace `gen_var' = 243 if `old_var' == 2320
	quietly replace `gen_var' = 244 if `old_var' == 2331
	quietly replace `gen_var' = 245 if `old_var' == 2332
	quietly replace `gen_var' = 246 if `old_var' == 2340
	quietly replace `gen_var' = 249 if `old_var' == 2350
	quietly replace `gen_var' = 250 if `old_var' == 2450
	quietly replace `gen_var' = 251 if `old_var' == 2451
	quietly replace `gen_var' = 252 if `old_var' == 2453
	quietly replace `gen_var' = 253 if `old_var' == 2455
	quietly replace `gen_var' = 254 if `old_var' == 3470
	quietly replace `gen_var' = 255 if `old_var' == 3130
	quietly replace `gen_var' = 256 if `old_var' == 2452
	quietly replace `gen_var' = 257 if `old_var' == 3471
	quietly replace `gen_var' = 259 if `old_var' == 3470
	quietly replace `gen_var' = 260 if `old_var' == 3475
	quietly replace `gen_var' = 261 if `old_var' == 3475
	quietly replace `gen_var' = 270 if `old_var' == 2450
	quietly replace `gen_var' = 271 if `old_var' == 2451
	quietly replace `gen_var' = 272 if `old_var' == 2451
	quietly replace `gen_var' = 273 if `old_var' == 4143
	quietly replace `gen_var' = 274 if `old_var' == 3472
	quietly replace `gen_var' = 275 if `old_var' == 2444
	quietly replace `gen_var' = 276 if `old_var' == 2431
	quietly replace `gen_var' = 277 if `old_var' == 2430
	quietly replace `gen_var' = 279 if `old_var' == 3470
	quietly replace `gen_var' = 280 if `old_var' == 2460
	quietly replace `gen_var' = 280 if `old_var' == 2460
	quietly replace `gen_var' = 290 if `old_var' == 2400
	quietly replace `gen_var' = 290 if `old_var' == 2400
	quietly replace `gen_var' = 300 if `old_var' == 4000
	quietly replace `gen_var' = 310 if `old_var' == 4110
	quietly replace `gen_var' = 311 if `old_var' == 3440
	quietly replace `gen_var' = 312 if `old_var' == 4100
	quietly replace `gen_var' = 319 if `old_var' == 4100
	quietly replace `gen_var' = 320 if `old_var' == 5160
	quietly replace `gen_var' = 321 if `old_var' == 5162
	quietly replace `gen_var' = 322 if `old_var' == 5169
	quietly replace `gen_var' = 323 if `old_var' == 5161
	quietly replace `gen_var' = 329 if `old_var' == 5169
	quietly replace `gen_var' = 330 if `old_var' == 4140
	quietly replace `gen_var' = 331 if `old_var' == 4142
	quietly replace `gen_var' = 332 if `old_var' == 4143
	quietly replace `gen_var' = 333 if `old_var' == 3132
	quietly replace `gen_var' = 339 if `old_var' == 4140
	quietly replace `gen_var' = 390 if `old_var' == 4190
	quietly replace `gen_var' = 400 if `old_var' == 5000
	quietly replace `gen_var' = 410 if `old_var' == 5220
	quietly replace `gen_var' = 411 if `old_var' == 5220
	quietly replace `gen_var' = 412 if `old_var' == 5220
	quietly replace `gen_var' = 413 if `old_var' == 3416
	quietly replace `gen_var' = 414 if `old_var' == 4214
	quietly replace `gen_var' = 415 if `old_var' == 9161
	quietly replace `gen_var' = 416 if `old_var' == 3439
	quietly replace `gen_var' = 417 if `old_var' == 3439
	quietly replace `gen_var' = 419 if `old_var' == 5200
	quietly replace `gen_var' = 420 if `old_var' == 4130
	quietly replace `gen_var' = 421 if `old_var' == 4131
	quietly replace `gen_var' = 422 if `old_var' == 4133
	quietly replace `gen_var' = 429 if `old_var' == 4130
	quietly replace `gen_var' = 430 if `old_var' == 5120
	quietly replace `gen_var' = 431 if `old_var' == 5122
	quietly replace `gen_var' = 432 if `old_var' == 5122
	quietly replace `gen_var' = 433 if `old_var' == 5123
	quietly replace `gen_var' = 434 if `old_var' == 5122
	quietly replace `gen_var' = 435 if `old_var' == 5123
	quietly replace `gen_var' = 439 if `old_var' == 5123
	quietly replace `gen_var' = 440 if `old_var' == 5140
	quietly replace `gen_var' = 441 if `old_var' == 5120
	quietly replace `gen_var' = 442 if `old_var' == 5110
	quietly replace `gen_var' = 443 if `old_var' == 5139
	quietly replace `gen_var' = 449 if `old_var' == 5000
	quietly replace `gen_var' = 450 if `old_var' == 5110
	quietly replace `gen_var' = 451 if `old_var' == 5110
	quietly replace `gen_var' = 452 if `old_var' == 5110
	quietly replace `gen_var' = 453 if `old_var' == 5110
	quietly replace `gen_var' = 454 if `old_var' == 5110
	quietly replace `gen_var' = 459 if `old_var' == 5110
	quietly replace `gen_var' = 460 if `old_var' == 3230
	quietly replace `gen_var' = 461 if `old_var' == 3230
	quietly replace `gen_var' = 470 if `old_var' == 5000
	quietly replace `gen_var' = 471 if `old_var' == 3420
	quietly replace `gen_var' = 472 if `old_var' == 5121
	quietly replace `gen_var' = 473 if `old_var' == 5121
	quietly replace `gen_var' = 474 if `old_var' == 5141
	quietly replace `gen_var' = 475 if `old_var' == 3131
	quietly replace `gen_var' = 476 if `old_var' == 3224
	quietly replace `gen_var' = 477 if `old_var' == 5149
	quietly replace `gen_var' = 478 if `old_var' == 5149
	quietly replace `gen_var' = 479 if `old_var' == 7300
	quietly replace `gen_var' = 481 if `old_var' == 7300
	quietly replace `gen_var' = 482 if `old_var' == 7300
	quietly replace `gen_var' = 483 if `old_var' == 5130
	quietly replace `gen_var' = 484 if `old_var' == 9162
	quietly replace `gen_var' = 485 if `old_var' == 5143
	quietly replace `gen_var' = 489 if `old_var' == 5000
	quietly replace `gen_var' = 490 if `old_var' == 5000
	quietly replace `gen_var' = 499 if `old_var' == 5000
	quietly replace `gen_var' = 500 if `old_var' == 6100
	quietly replace `gen_var' = 510 if `old_var' == 6110
	quietly replace `gen_var' = 511 if `old_var' == 6110
	quietly replace `gen_var' = 512 if `old_var' == 3212
	quietly replace `gen_var' = 513 if `old_var' == 6113
	quietly replace `gen_var' = 514 if `old_var' == 6113
	quietly replace `gen_var' = 515 if `old_var' == 6113
	quietly replace `gen_var' = 516 if `old_var' == 7410
	quietly replace `gen_var' = 519 if `old_var' == 6130
	quietly replace `gen_var' = 520 if `old_var' == 6112
	quietly replace `gen_var' = 521 if `old_var' == 6112
	quietly replace `gen_var' = 522 if `old_var' == 6112
	quietly replace `gen_var' = 523 if `old_var' == 6112
	quietly replace `gen_var' = 524 if `old_var' == 6112
	quietly replace `gen_var' = 529 if `old_var' == 6130
	quietly replace `gen_var' = 530 if `old_var' == 6120
	quietly replace `gen_var' = 531 if `old_var' == 6121
	quietly replace `gen_var' = 532 if `old_var' == 6122
	quietly replace `gen_var' = 533 if `old_var' == 6123
	quietly replace `gen_var' = 534 if `old_var' == 6130
	quietly replace `gen_var' = 535 if `old_var' == 3227
	quietly replace `gen_var' = 536 if `old_var' == 6100
	quietly replace `gen_var' = 539 if `old_var' == 6130
	quietly replace `gen_var' = 540 if `old_var' == 6150
	quietly replace `gen_var' = 541 if `old_var' == 6152
	quietly replace `gen_var' = 542 if `old_var' == 6150
	quietly replace `gen_var' = 543 if `old_var' == 8271
	quietly replace `gen_var' = 549 if `old_var' == 6150
	quietly replace `gen_var' = 550 if `old_var' == 3112
	quietly replace `gen_var' = 551 if `old_var' == 3112
	quietly replace `gen_var' = 552 if `old_var' == 3112
	quietly replace `gen_var' = 553 if `old_var' == 3112
	quietly replace `gen_var' = 554 if `old_var' == 3112
	quietly replace `gen_var' = 559 if `old_var' == 3112
	quietly replace `gen_var' = 590 if `old_var' == 6000
	quietly replace `gen_var' = 591 if `old_var' == 8330
	quietly replace `gen_var' = 592 if `old_var' == 8163
	quietly replace `gen_var' = 600 if `old_var' == 8000
	quietly replace `gen_var' = 610 if `old_var' == 8100
	quietly replace `gen_var' = 611 if `old_var' == 3112
	quietly replace `gen_var' = 612 if `old_var' == 3118
	quietly replace `gen_var' = 613 if `old_var' == 8110
	quietly replace `gen_var' = 614 if `old_var' == 8124
	quietly replace `gen_var' = 615 if `old_var' == 8113
	quietly replace `gen_var' = 616 if `old_var' == 8113
	quietly replace `gen_var' = 617 if `old_var' == 8110
	quietly replace `gen_var' = 619 if `old_var' == 8100
	quietly replace `gen_var' = 620 if `old_var' == 8120
	quietly replace `gen_var' = 621 if `old_var' == 8123
	quietly replace `gen_var' = 622 if `old_var' == 8122
	quietly replace `gen_var' = 623 if `old_var' == 8120
	quietly replace `gen_var' = 624 if `old_var' == 8120
	quietly replace `gen_var' = 625 if `old_var' == 8120
	quietly replace `gen_var' = 626 if `old_var' == 8120
	quietly replace `gen_var' = 627 if `old_var' == 8120
	quietly replace `gen_var' = 628 if `old_var' == 8120
	quietly replace `gen_var' = 629 if `old_var' == 8122
	quietly replace `gen_var' = 631 if `old_var' == 8120
	quietly replace `gen_var' = 632 if `old_var' == 8120
	quietly replace `gen_var' = 639 if `old_var' == 8120
	quietly replace `gen_var' = 640 if `old_var' == 8150
	quietly replace `gen_var' = 641 if `old_var' == 8150
	quietly replace `gen_var' = 642 if `old_var' == 8150
	quietly replace `gen_var' = 643 if `old_var' == 8150
	quietly replace `gen_var' = 644 if `old_var' == 8150
	quietly replace `gen_var' = 645 if `old_var' == 8150
	quietly replace `gen_var' = 646 if `old_var' == 8150
	quietly replace `gen_var' = 647 if `old_var' == 8150
	quietly replace `gen_var' = 648 if `old_var' == 8150
	quietly replace `gen_var' = 649 if `old_var' == 8150
	quietly replace `gen_var' = 651 if `old_var' == 8150
	quietly replace `gen_var' = 652 if `old_var' == 8150
	quietly replace `gen_var' = 653 if `old_var' == 8150
	quietly replace `gen_var' = 654 if `old_var' == 8150
	quietly replace `gen_var' = 654 if `old_var' == 8150
	quietly replace `gen_var' = 655 if `old_var' == 8150
	quietly replace `gen_var' = 656 if `old_var' == 8150
	quietly replace `gen_var' = 657 if `old_var' == 8150
	quietly replace `gen_var' = 659 if `old_var' == 8150
	quietly replace `gen_var' = 660 if `old_var' == 7210
	quietly replace `gen_var' = 661 if `old_var' == 7210
	quietly replace `gen_var' = 662 if `old_var' == 7210
	quietly replace `gen_var' = 663 if `old_var' == 7213
	quietly replace `gen_var' = 664 if `old_var' == 7213
	quietly replace `gen_var' = 665 if `old_var' == 7200
	quietly replace `gen_var' = 666 if `old_var' == 7200
	quietly replace `gen_var' = 667 if `old_var' == 7232
	quietly replace `gen_var' = 669 if `old_var' == 7200
	quietly replace `gen_var' = 670 if `old_var' == 8280
	quietly replace `gen_var' = 671 if `old_var' == 8281
	quietly replace `gen_var' = 672 if `old_var' == 8281
	quietly replace `gen_var' = 673 if `old_var' == 8282
	quietly replace `gen_var' = 674 if `old_var' == 8282
	quietly replace `gen_var' = 675 if `old_var' == 8283
	quietly replace `gen_var' = 676 if `old_var' == 8280
	quietly replace `gen_var' = 677 if `old_var' == 8280
	quietly replace `gen_var' = 678 if `old_var' == 7200
	quietly replace `gen_var' = 679 if `old_var' == 8280
	quietly replace `gen_var' = 681 if `old_var' == 8280
	quietly replace `gen_var' = 682 if `old_var' == 7220
	quietly replace `gen_var' = 683 if `old_var' == 8280
	quietly replace `gen_var' = 684 if `old_var' == 7200
	quietly replace `gen_var' = 685 if `old_var' == 7200
	quietly replace `gen_var' = 686 if `old_var' == 7200
	quietly replace `gen_var' = 687 if `old_var' == 7200
	quietly replace `gen_var' = 688 if `old_var' == 7200
	quietly replace `gen_var' = 689 if `old_var' == 7200
	quietly replace `gen_var' = 691 if `old_var' == 7232
	quietly replace `gen_var' = 692 if `old_var' == 7232
	quietly replace `gen_var' = 693 if `old_var' == 7232
	quietly replace `gen_var' = 694 if `old_var' == 7232
	quietly replace `gen_var' = 695 if `old_var' == 7232
	quietly replace `gen_var' = 696 if `old_var' == 7230
	quietly replace `gen_var' = 699 if `old_var' == 7245
	quietly replace `gen_var' = 710 if `old_var' == 7520
	quietly replace `gen_var' = 711 if `old_var' == 7520
	quietly replace `gen_var' = 712 if `old_var' == 7520
	quietly replace `gen_var' = 713 if `old_var' == 7520
	quietly replace `gen_var' = 719 if `old_var' == 7520
	quietly replace `gen_var' = 720 if `old_var' == 8160
	quietly replace `gen_var' = 721 if `old_var' == 8161
	quietly replace `gen_var' = 722 if `old_var' == 8161
	quietly replace `gen_var' = 723 if `old_var' == 8161
	quietly replace `gen_var' = 724 if `old_var' == 8160
	quietly replace `gen_var' = 725 if `old_var' == 8160
	quietly replace `gen_var' = 726 if `old_var' == 8160
	quietly replace `gen_var' = 729 if `old_var' == 8160
	quietly replace `gen_var' = 730 if `old_var' == 7240
	quietly replace `gen_var' = 731 if `old_var' == 7240
	quietly replace `gen_var' = 732 if `old_var' == 7240
	quietly replace `gen_var' = 733 if `old_var' == 7240
	quietly replace `gen_var' = 734 if `old_var' == 7240
	quietly replace `gen_var' = 735 if `old_var' == 7243
	quietly replace `gen_var' = 739 if `old_var' == 7240
	quietly replace `gen_var' = 740 if `old_var' == 8230
	quietly replace `gen_var' = 741 if `old_var' == 8231
	quietly replace `gen_var' = 742 if `old_var' == 8232
	quietly replace `gen_var' = 749 if `old_var' == 8230
	quietly replace `gen_var' = 750 if `old_var' == 7430
	quietly replace `gen_var' = 751 if `old_var' == 7431
	quietly replace `gen_var' = 752 if `old_var' == 7432
	quietly replace `gen_var' = 753 if `old_var' == 7430
	quietly replace `gen_var' = 754 if `old_var' == 7432
	quietly replace `gen_var' = 755 if `old_var' == 7432
	quietly replace `gen_var' = 759 if `old_var' == 7432
	quietly replace `gen_var' = 760 if `old_var' == 7430
	quietly replace `gen_var' = 761 if `old_var' == 7433
	quietly replace `gen_var' = 762 if `old_var' == 7433
	quietly replace `gen_var' = 763 if `old_var' == 7434
	quietly replace `gen_var' = 764 if `old_var' == 7430
	quietly replace `gen_var' = 769 if `old_var' == 7430
	quietly replace `gen_var' = 770 if `old_var' == 7410
	quietly replace `gen_var' = 771 if `old_var' == 7410
	quietly replace `gen_var' = 772 if `old_var' == 7412
	quietly replace `gen_var' = 773 if `old_var' == 7413
	quietly replace `gen_var' = 774 if `old_var' == 7410
	quietly replace `gen_var' = 775 if `old_var' == 7410
	quietly replace `gen_var' = 776 if `old_var' == 7410
	quietly replace `gen_var' = 777 if `old_var' == 7410
	quietly replace `gen_var' = 778 if `old_var' == 7410
	quietly replace `gen_var' = 779 if `old_var' == 7410
	quietly replace `gen_var' = 780 if `old_var' == 7416
	quietly replace `gen_var' = 781 if `old_var' == 7416
	quietly replace `gen_var' = 782 if `old_var' == 7416
	quietly replace `gen_var' = 783 if `old_var' == 7416
	quietly replace `gen_var' = 789 if `old_var' == 7416
	quietly replace `gen_var' = 790 if `old_var' == 8150
	quietly replace `gen_var' = 791 if `old_var' == 8150
	quietly replace `gen_var' = 792 if `old_var' == 8150
	quietly replace `gen_var' = 793 if `old_var' == 8150
	quietly replace `gen_var' = 794 if `old_var' == 8150
	quietly replace `gen_var' = 799 if `old_var' == 8150
	quietly replace `gen_var' = 810 if `old_var' == 8140
	quietly replace `gen_var' = 811 if `old_var' == 8140
	quietly replace `gen_var' = 812 if `old_var' == 8140
	quietly replace `gen_var' = 813 if `old_var' == 8140
	quietly replace `gen_var' = 814 if `old_var' == 8140
	quietly replace `gen_var' = 815 if `old_var' == 8140
	quietly replace `gen_var' = 816 if `old_var' == 8140
	quietly replace `gen_var' = 819 if `old_var' == 8140
	quietly replace `gen_var' = 820 if `old_var' == 7120
	quietly replace `gen_var' = 821 if `old_var' == 7123
	quietly replace `gen_var' = 822 if `old_var' == 7129
	quietly replace `gen_var' = 823 if `old_var' == 7120
	quietly replace `gen_var' = 824 if `old_var' == 7120
	quietly replace `gen_var' = 825 if `old_var' == 7120
	quietly replace `gen_var' = 826 if `old_var' == 7120
	quietly replace `gen_var' = 827 if `old_var' == 7120
	quietly replace `gen_var' = 829 if `old_var' == 7120
	quietly replace `gen_var' = 830 if `old_var' == 7320
	quietly replace `gen_var' = 831 if `old_var' == 7321
	quietly replace `gen_var' = 832 if `old_var' == 7321
	quietly replace `gen_var' = 833 if `old_var' == 7322
	quietly replace `gen_var' = 834 if `old_var' == 7324
	quietly replace `gen_var' = 835 if `old_var' == 7324
	quietly replace `gen_var' = 839 if `old_var' == 7320
	quietly replace `gen_var' = 840 if `old_var' == 3130
	quietly replace `gen_var' = 841 if `old_var' == 3130
	quietly replace `gen_var' = 842 if `old_var' == 3131
	quietly replace `gen_var' = 843 if `old_var' == 3132
	quietly replace `gen_var' = 844 if `old_var' == 4100
	quietly replace `gen_var' = 845 if `old_var' == 3110
	quietly replace `gen_var' = 849 if `old_var' == 3130
	quietly replace `gen_var' = 850 if `old_var' == 7340
	quietly replace `gen_var' = 851 if `old_var' == 7340
	quietly replace `gen_var' = 852 if `old_var' == 7340
	quietly replace `gen_var' = 853 if `old_var' == 7340
	quietly replace `gen_var' = 859 if `old_var' == 7340
	quietly replace `gen_var' = 860 if `old_var' == 7310
	quietly replace `gen_var' = 861 if `old_var' == 7313
	quietly replace `gen_var' = 862 if `old_var' == 7332
	quietly replace `gen_var' = 863 if `old_var' == 7300
	quietly replace `gen_var' = 864 if `old_var' == 7331
	quietly replace `gen_var' = 865 if `old_var' == 7346
	quietly replace `gen_var' = 866 if `old_var' == 7313
	quietly replace `gen_var' = 867 if `old_var' == 7313
	quietly replace `gen_var' = 868 if `old_var' == 7300
	quietly replace `gen_var' = 869 if `old_var' == 7300
	quietly replace `gen_var' = 870 if `old_var' == 7000
	quietly replace `gen_var' = 871 if `old_var' == 7000
	quietly replace `gen_var' = 872 if `old_var' == 7000
	quietly replace `gen_var' = 873 if `old_var' == 7312
	quietly replace `gen_var' = 879 if `old_var' == 7000
	quietly replace `gen_var' = 880 if `old_var' == 7120
	quietly replace `gen_var' = 881 if `old_var' == 7122
	quietly replace `gen_var' = 882 if `old_var' == 7122
	quietly replace `gen_var' = 883 if `old_var' == 7123
	quietly replace `gen_var' = 884 if `old_var' == 7221
	quietly replace `gen_var' = 885 if `old_var' == 7129
	quietly replace `gen_var' = 886 if `old_var' == 7134
	quietly replace `gen_var' = 887 if `old_var' == 7130
	quietly replace `gen_var' = 888 if `old_var' == 7121
	quietly replace `gen_var' = 889 if `old_var' == 9312
	quietly replace `gen_var' = 891 if `old_var' == 8280
	quietly replace `gen_var' = 899 if `old_var' == 7129
	quietly replace `gen_var' = 910 if `old_var' == 8320
	quietly replace `gen_var' = 911 if `old_var' == 8320
	quietly replace `gen_var' = 912 if `old_var' == 8312
	quietly replace `gen_var' = 913 if `old_var' == 3145
	quietly replace `gen_var' = 914 if `old_var' == 8340
	quietly replace `gen_var' = 915 if `old_var' == 8324
	quietly replace `gen_var' = 919 if `old_var' == 8300
	quietly replace `gen_var' = 920 if `old_var' == 3110
	quietly replace `gen_var' = 921 if `old_var' == 3110
	quietly replace `gen_var' = 922 if `old_var' == 3110
	quietly replace `gen_var' = 923 if `old_var' == 9161
	quietly replace `gen_var' = 929 if `old_var' == 3110
	quietly replace `gen_var' = 930 if `old_var' == 3110
	quietly replace `gen_var' = 931 if `old_var' == 3110
	quietly replace `gen_var' = 932 if `old_var' == 3110
	quietly replace `gen_var' = 933 if `old_var' == 3110
	quietly replace `gen_var' = 934 if `old_var' == 3110
	quietly replace `gen_var' = 939 if `old_var' == 3110
	quietly replace `gen_var' = 990 if `old_var' == 9300
	quietly replace `gen_var' = 991 if `old_var' == 9322
	quietly replace `gen_var' = 992 if `old_var' == 9300
	quietly replace `gen_var' = 993 if `old_var' == 9300
	quietly replace `gen_var' = 999 if `old_var' == 9000

	quietly replace `gen_var' = .a if !missing(`old_var') & missing(`gen_var')
	quietly replace `gen_var' = .b if missing(`old_var') & missing(`gen_var')
	
	quietly count if `gen_var' == .a
	local no_matched = r(N)
	quietly count if `gen_var' == .b
	local missing = r(N)
	
	di char(32)
	di as error "Warning: One ISCO88 code may correspond to multiple GB99 codes."
	di as text "Transformation success."
	di as text "  Not matched from source (.a): " as result `no_matched'
	di as text "  Missing from source (.b): " as result `missing'
	di as text "Acknowledgment: Mapping relationships from ISCO88 to GB99 are provided by Yang SU."
end

program define gb99_to_isei
	syntax varname(numeric), GENerate(name)
	local old_var `varlist'
	local gen_var `generate'
	
	quietly gen `gen_var' = .
	quietly replace `gen_var' = 70 if `old_var' == 0
	quietly replace `gen_var' = 70 if `old_var' == 10
	quietly replace `gen_var' = 70 if `old_var' == 11
	quietly replace `gen_var' = 70 if `old_var' == 20
	quietly replace `gen_var' = 70 if `old_var' == 21
	quietly replace `gen_var' = 58 if `old_var' == 22
	quietly replace `gen_var' = 70 if `old_var' == 23
	quietly replace `gen_var' = 70 if `old_var' == 24
	quietly replace `gen_var' = 68 if `old_var' == 25
	quietly replace `gen_var' = 68 if `old_var' == 29
	quietly replace `gen_var' = 58 if `old_var' == 30
	quietly replace `gen_var' = 58 if `old_var' == 31
	quietly replace `gen_var' = 58 if `old_var' == 32
	quietly replace `gen_var' = 58 if `old_var' == 33
	quietly replace `gen_var' = 58 if `old_var' == 39
	quietly replace `gen_var' = 70 if `old_var' == 40
	quietly replace `gen_var' = 70 if `old_var' == 41
	quietly replace `gen_var' = 70 if `old_var' == 42
	quietly replace `gen_var' = 70 if `old_var' == 43
	quietly replace `gen_var' = 70 if `old_var' == 49
	quietly replace `gen_var' = 70 if `old_var' == 50
	quietly replace `gen_var' = 70 if `old_var' == 51
	quietly replace `gen_var' = 70 if `old_var' == 100
	quietly replace `gen_var' = 70 if `old_var' == 110
	quietly replace `gen_var' = 71 if `old_var' == 111
	quietly replace `gen_var' = 78 if `old_var' == 112
	quietly replace `gen_var' = 71 if `old_var' == 113
	quietly replace `gen_var' = 71 if `old_var' == 114
	quietly replace `gen_var' = 71 if `old_var' == 115
	quietly replace `gen_var' = 61 if `old_var' == 116
	quietly replace `gen_var' = 65 if `old_var' == 117
	quietly replace `gen_var' = 71 if `old_var' == 118
	quietly replace `gen_var' = 70 if `old_var' == 119
	quietly replace `gen_var' = 71 if `old_var' == 121
	quietly replace `gen_var' = 74 if `old_var' == 122
	quietly replace `gen_var' = 74 if `old_var' == 123
	quietly replace `gen_var' = 74 if `old_var' == 124
	quietly replace `gen_var' = 74 if `old_var' == 125
	quietly replace `gen_var' = 77 if `old_var' == 126
	quietly replace `gen_var' = 79 if `old_var' == 127
	quietly replace `gen_var' = 85 if `old_var' == 128
	quietly replace `gen_var' = 70 if `old_var' == 129
	quietly replace `gen_var' = 54 if `old_var' == 130
	quietly replace `gen_var' = 54 if `old_var' == 131
	quietly replace `gen_var' = 56 if `old_var' == 132
	quietly replace `gen_var' = 54 if `old_var' == 133
	quietly replace `gen_var' = 54 if `old_var' == 134
	quietly replace `gen_var' = 54 if `old_var' == 135
	quietly replace `gen_var' = 54 if `old_var' == 136
	quietly replace `gen_var' = 54 if `old_var' == 137
	quietly replace `gen_var' = 54 if `old_var' == 138
	quietly replace `gen_var' = 54 if `old_var' == 139
	quietly replace `gen_var' = 54 if `old_var' == 141
	quietly replace `gen_var' = 46 if `old_var' == 142
	quietly replace `gen_var' = 46 if `old_var' == 143
	quietly replace `gen_var' = 52 if `old_var' == 144
	quietly replace `gen_var' = 46 if `old_var' == 145
	quietly replace `gen_var' = 46 if `old_var' == 146
	quietly replace `gen_var' = 53 if `old_var' == 147
	quietly replace `gen_var' = 53 if `old_var' == 148
	quietly replace `gen_var' = 45 if `old_var' == 149
	quietly replace `gen_var' = 54 if `old_var' == 151
	quietly replace `gen_var' = 45 if `old_var' == 152
	quietly replace `gen_var' = 45 if `old_var' == 153
	quietly replace `gen_var' = 45 if `old_var' == 154
	quietly replace `gen_var' = 50 if `old_var' == 155
	quietly replace `gen_var' = 50 if `old_var' == 156
	quietly replace `gen_var' = 45 if `old_var' == 157
	quietly replace `gen_var' = 45 if `old_var' == 158
	quietly replace `gen_var' = 49 if `old_var' == 159
	quietly replace `gen_var' = 50 if `old_var' == 161
	quietly replace `gen_var' = 54 if `old_var' == 162
	quietly replace `gen_var' = 53 if `old_var' == 163
	quietly replace `gen_var' = 53 if `old_var' == 164
	quietly replace `gen_var' = 50 if `old_var' == 165
	quietly replace `gen_var' = 53 if `old_var' == 166
	quietly replace `gen_var' = 53 if `old_var' == 167
	quietly replace `gen_var' = 53 if `old_var' == 169
	quietly replace `gen_var' = 52 if `old_var' == 170
	quietly replace `gen_var' = 50 if `old_var' == 171
	quietly replace `gen_var' = 50 if `old_var' == 172
	quietly replace `gen_var' = 50 if `old_var' == 173
	quietly replace `gen_var' = 50 if `old_var' == 174
	quietly replace `gen_var' = 83 if `old_var' == 175
	quietly replace `gen_var' = 50 if `old_var' == 176
	quietly replace `gen_var' = 50 if `old_var' == 179
	quietly replace `gen_var' = 57 if `old_var' == 180
	quietly replace `gen_var' = 69 if `old_var' == 181
	quietly replace `gen_var' = 52 if `old_var' == 182
	quietly replace `gen_var' = 57 if `old_var' == 189
	quietly replace `gen_var' = 88 if `old_var' == 190
	quietly replace `gen_var' = 88 if `old_var' == 191
	quietly replace `gen_var' = 88 if `old_var' == 192
	quietly replace `gen_var' = 88 if `old_var' == 193
	quietly replace `gen_var' = 88 if `old_var' == 194
	quietly replace `gen_var' = 88 if `old_var' == 195
	quietly replace `gen_var' = 51 if `old_var' == 196
	quietly replace `gen_var' = 55 if `old_var' == 197
	quietly replace `gen_var' = 38 if `old_var' == 198
	quietly replace `gen_var' = 51 if `old_var' == 199
	quietly replace `gen_var' = 55 if `old_var' == 210
	quietly replace `gen_var' = 61 if `old_var' == 211
	quietly replace `gen_var' = 51 if `old_var' == 212
	quietly replace `gen_var' = 51 if `old_var' == 213
	quietly replace `gen_var' = 51 if `old_var' == 214
	quietly replace `gen_var' = 55 if `old_var' == 215
	quietly replace `gen_var' = 54 if `old_var' == 219
	quietly replace `gen_var' = 55 if `old_var' == 220
	quietly replace `gen_var' = 55 if `old_var' == 221
	quietly replace `gen_var' = 54 if `old_var' == 222
	quietly replace `gen_var' = 55 if `old_var' == 223
	quietly replace `gen_var' = 55 if `old_var' == 229
	quietly replace `gen_var' = 85 if `old_var' == 230
	quietly replace `gen_var' = 90 if `old_var' == 231
	quietly replace `gen_var' = 82 if `old_var' == 232
	quietly replace `gen_var' = 85 if `old_var' == 233
	quietly replace `gen_var' = 82 if `old_var' == 234
	quietly replace `gen_var' = 82 if `old_var' == 235
	quietly replace `gen_var' = 82 if `old_var' == 236
	quietly replace `gen_var' = 82 if `old_var' == 239
	quietly replace `gen_var' = 69 if `old_var' == 240
	quietly replace `gen_var' = 77 if `old_var' == 241
	quietly replace `gen_var' = 69 if `old_var' == 242
	quietly replace `gen_var' = 69 if `old_var' == 243
	quietly replace `gen_var' = 66 if `old_var' == 244
	quietly replace `gen_var' = 43 if `old_var' == 245
	quietly replace `gen_var' = 66 if `old_var' == 246
	quietly replace `gen_var' = 66 if `old_var' == 249
	quietly replace `gen_var' = 61 if `old_var' == 250
	quietly replace `gen_var' = 65 if `old_var' == 251
	quietly replace `gen_var' = 64 if `old_var' == 252
	quietly replace `gen_var' = 64 if `old_var' == 253
	quietly replace `gen_var' = 52 if `old_var' == 254
	quietly replace `gen_var' = 52 if `old_var' == 255
	quietly replace `gen_var' = 54 if `old_var' == 256
	quietly replace `gen_var' = 53 if `old_var' == 257
	quietly replace `gen_var' = 52 if `old_var' == 259
	quietly replace `gen_var' = 54 if `old_var' == 260
	quietly replace `gen_var' = 54 if `old_var' == 261
	quietly replace `gen_var' = 61 if `old_var' == 270
	quietly replace `gen_var' = 65 if `old_var' == 271
	quietly replace `gen_var' = 65 if `old_var' == 272
	quietly replace `gen_var' = 39 if `old_var' == 273
	quietly replace `gen_var' = 64 if `old_var' == 274
	quietly replace `gen_var' = 65 if `old_var' == 275
	quietly replace `gen_var' = 65 if `old_var' == 276
	quietly replace `gen_var' = 65 if `old_var' == 277
	quietly replace `gen_var' = 52 if `old_var' == 279
	quietly replace `gen_var' = 53 if `old_var' == 280
	quietly replace `gen_var' = 53 if `old_var' == 280
	quietly replace `gen_var' = 68 if `old_var' == 290
	quietly replace `gen_var' = 68 if `old_var' == 290
	quietly replace `gen_var' = 45 if `old_var' == 300
	quietly replace `gen_var' = 51 if `old_var' == 310
	quietly replace `gen_var' = 56 if `old_var' == 311
	quietly replace `gen_var' = 45 if `old_var' == 312
	quietly replace `gen_var' = 45 if `old_var' == 319
	quietly replace `gen_var' = 47 if `old_var' == 320
	quietly replace `gen_var' = 50 if `old_var' == 321
	quietly replace `gen_var' = 40 if `old_var' == 322
	quietly replace `gen_var' = 42 if `old_var' == 323
	quietly replace `gen_var' = 40 if `old_var' == 329
	quietly replace `gen_var' = 39 if `old_var' == 330
	quietly replace `gen_var' = 39 if `old_var' == 331
	quietly replace `gen_var' = 39 if `old_var' == 332
	quietly replace `gen_var' = 57 if `old_var' == 333
	quietly replace `gen_var' = 39 if `old_var' == 339
	quietly replace `gen_var' = 39 if `old_var' == 390
	quietly replace `gen_var' = 40 if `old_var' == 400
	quietly replace `gen_var' = 43 if `old_var' == 410
	quietly replace `gen_var' = 43 if `old_var' == 411
	quietly replace `gen_var' = 43 if `old_var' == 412
	quietly replace `gen_var' = 50 if `old_var' == 413
	quietly replace `gen_var' = 40 if `old_var' == 414
	quietly replace `gen_var' = 34 if `old_var' == 415
	quietly replace `gen_var' = 54 if `old_var' == 416
	quietly replace `gen_var' = 54 if `old_var' == 417
	quietly replace `gen_var' = 43 if `old_var' == 419
	quietly replace `gen_var' = 36 if `old_var' == 420
	quietly replace `gen_var' = 32 if `old_var' == 421
	quietly replace `gen_var' = 45 if `old_var' == 422
	quietly replace `gen_var' = 36 if `old_var' == 429
	quietly replace `gen_var' = 32 if `old_var' == 430
	quietly replace `gen_var' = 30 if `old_var' == 431
	quietly replace `gen_var' = 30 if `old_var' == 432
	quietly replace `gen_var' = 34 if `old_var' == 433
	quietly replace `gen_var' = 30 if `old_var' == 434
	quietly replace `gen_var' = 34 if `old_var' == 435
	quietly replace `gen_var' = 34 if `old_var' == 439
	quietly replace `gen_var' = 30 if `old_var' == 440
	quietly replace `gen_var' = 32 if `old_var' == 441
	quietly replace `gen_var' = 34 if `old_var' == 442
	quietly replace `gen_var' = 25 if `old_var' == 443
	quietly replace `gen_var' = 40 if `old_var' == 449
	quietly replace `gen_var' = 34 if `old_var' == 450
	quietly replace `gen_var' = 34 if `old_var' == 451
	quietly replace `gen_var' = 34 if `old_var' == 452
	quietly replace `gen_var' = 34 if `old_var' == 453
	quietly replace `gen_var' = 34 if `old_var' == 454
	quietly replace `gen_var' = 34 if `old_var' == 459
	quietly replace `gen_var' = 38 if `old_var' == 460
	quietly replace `gen_var' = 38 if `old_var' == 461
	quietly replace `gen_var' = 40 if `old_var' == 470
	quietly replace `gen_var' = 55 if `old_var' == 471
	quietly replace `gen_var' = 30 if `old_var' == 472
	quietly replace `gen_var' = 30 if `old_var' == 473
	quietly replace `gen_var' = 29 if `old_var' == 474
	quietly replace `gen_var' = 48 if `old_var' == 475
	quietly replace `gen_var' = 60 if `old_var' == 476
	quietly replace `gen_var' = 19 if `old_var' == 477
	quietly replace `gen_var' = 19 if `old_var' == 478
	quietly replace `gen_var' = 34 if `old_var' == 479
	quietly replace `gen_var' = 34 if `old_var' == 481
	quietly replace `gen_var' = 34 if `old_var' == 482
	quietly replace `gen_var' = 25 if `old_var' == 483
	quietly replace `gen_var' = 34 if `old_var' == 484
	quietly replace `gen_var' = 54 if `old_var' == 485
	quietly replace `gen_var' = 40 if `old_var' == 489
	quietly replace `gen_var' = 40 if `old_var' == 490
	quietly replace `gen_var' = 40 if `old_var' == 499
	quietly replace `gen_var' = 23 if `old_var' == 500
	quietly replace `gen_var' = 23 if `old_var' == 510
	quietly replace `gen_var' = 23 if `old_var' == 511
	quietly replace `gen_var' = 50 if `old_var' == 512
	quietly replace `gen_var' = 23 if `old_var' == 513
	quietly replace `gen_var' = 23 if `old_var' == 514
	quietly replace `gen_var' = 23 if `old_var' == 515
	quietly replace `gen_var' = 30 if `old_var' == 516
	quietly replace `gen_var' = 23 if `old_var' == 519
	quietly replace `gen_var' = 23 if `old_var' == 520
	quietly replace `gen_var' = 23 if `old_var' == 521
	quietly replace `gen_var' = 23 if `old_var' == 522
	quietly replace `gen_var' = 23 if `old_var' == 523
	quietly replace `gen_var' = 23 if `old_var' == 524
	quietly replace `gen_var' = 23 if `old_var' == 529
	quietly replace `gen_var' = 23 if `old_var' == 530
	quietly replace `gen_var' = 23 if `old_var' == 531
	quietly replace `gen_var' = 23 if `old_var' == 532
	quietly replace `gen_var' = 23 if `old_var' == 533
	quietly replace `gen_var' = 23 if `old_var' == 534
	quietly replace `gen_var' = 51 if `old_var' == 535
	quietly replace `gen_var' = 23 if `old_var' == 536
	quietly replace `gen_var' = 23 if `old_var' == 539
	quietly replace `gen_var' = 28 if `old_var' == 540
	quietly replace `gen_var' = 28 if `old_var' == 541
	quietly replace `gen_var' = 28 if `old_var' == 542
	quietly replace `gen_var' = 29 if `old_var' == 543
	quietly replace `gen_var' = 28 if `old_var' == 549
	quietly replace `gen_var' = 45 if `old_var' == 550
	quietly replace `gen_var' = 45 if `old_var' == 551
	quietly replace `gen_var' = 45 if `old_var' == 552
	quietly replace `gen_var' = 45 if `old_var' == 553
	quietly replace `gen_var' = 45 if `old_var' == 554
	quietly replace `gen_var' = 45 if `old_var' == 559
	quietly replace `gen_var' = 23 if `old_var' == 590
	quietly replace `gen_var' = 36 if `old_var' == 591
	quietly replace `gen_var' = 33 if `old_var' == 592
	quietly replace `gen_var' = 31 if `old_var' == 600
	quietly replace `gen_var' = 30 if `old_var' == 610
	quietly replace `gen_var' = 45 if `old_var' == 611
	quietly replace `gen_var' = 51 if `old_var' == 612
	quietly replace `gen_var' = 35 if `old_var' == 613
	quietly replace `gen_var' = 30 if `old_var' == 614
	quietly replace `gen_var' = 35 if `old_var' == 615
	quietly replace `gen_var' = 35 if `old_var' == 616
	quietly replace `gen_var' = 35 if `old_var' == 617
	quietly replace `gen_var' = 30 if `old_var' == 619
	quietly replace `gen_var' = 30 if `old_var' == 620
	quietly replace `gen_var' = 28 if `old_var' == 621
	quietly replace `gen_var' = 30 if `old_var' == 622
	quietly replace `gen_var' = 30 if `old_var' == 623
	quietly replace `gen_var' = 30 if `old_var' == 624
	quietly replace `gen_var' = 30 if `old_var' == 625
	quietly replace `gen_var' = 30 if `old_var' == 626
	quietly replace `gen_var' = 30 if `old_var' == 627
	quietly replace `gen_var' = 30 if `old_var' == 628
	quietly replace `gen_var' = 30 if `old_var' == 629
	quietly replace `gen_var' = 30 if `old_var' == 631
	quietly replace `gen_var' = 30 if `old_var' == 632
	quietly replace `gen_var' = 30 if `old_var' == 639
	quietly replace `gen_var' = 35 if `old_var' == 640
	quietly replace `gen_var' = 35 if `old_var' == 641
	quietly replace `gen_var' = 35 if `old_var' == 642
	quietly replace `gen_var' = 35 if `old_var' == 643
	quietly replace `gen_var' = 35 if `old_var' == 644
	quietly replace `gen_var' = 35 if `old_var' == 645
	quietly replace `gen_var' = 35 if `old_var' == 646
	quietly replace `gen_var' = 35 if `old_var' == 647
	quietly replace `gen_var' = 35 if `old_var' == 648
	quietly replace `gen_var' = 35 if `old_var' == 649
	quietly replace `gen_var' = 35 if `old_var' == 651
	quietly replace `gen_var' = 35 if `old_var' == 652
	quietly replace `gen_var' = 35 if `old_var' == 653
	quietly replace `gen_var' = 35 if `old_var' == 654
	quietly replace `gen_var' = 35 if `old_var' == 654
	quietly replace `gen_var' = 35 if `old_var' == 655
	quietly replace `gen_var' = 35 if `old_var' == 656
	quietly replace `gen_var' = 35 if `old_var' == 657
	quietly replace `gen_var' = 35 if `old_var' == 659
	quietly replace `gen_var' = 31 if `old_var' == 660
	quietly replace `gen_var' = 31 if `old_var' == 661
	quietly replace `gen_var' = 31 if `old_var' == 662
	quietly replace `gen_var' = 33 if `old_var' == 663
	quietly replace `gen_var' = 33 if `old_var' == 664
	quietly replace `gen_var' = 34 if `old_var' == 665
	quietly replace `gen_var' = 34 if `old_var' == 666
	quietly replace `gen_var' = 42 if `old_var' == 667
	quietly replace `gen_var' = 34 if `old_var' == 669
	quietly replace `gen_var' = 31 if `old_var' == 670
	quietly replace `gen_var' = 30 if `old_var' == 671
	quietly replace `gen_var' = 30 if `old_var' == 672
	quietly replace `gen_var' = 34 if `old_var' == 673
	quietly replace `gen_var' = 34 if `old_var' == 674
	quietly replace `gen_var' = 34 if `old_var' == 675
	quietly replace `gen_var' = 31 if `old_var' == 676
	quietly replace `gen_var' = 31 if `old_var' == 677
	quietly replace `gen_var' = 34 if `old_var' == 678
	quietly replace `gen_var' = 31 if `old_var' == 679
	quietly replace `gen_var' = 31 if `old_var' == 681
	quietly replace `gen_var' = 35 if `old_var' == 682
	quietly replace `gen_var' = 31 if `old_var' == 683
	quietly replace `gen_var' = 34 if `old_var' == 684
	quietly replace `gen_var' = 34 if `old_var' == 685
	quietly replace `gen_var' = 34 if `old_var' == 686
	quietly replace `gen_var' = 34 if `old_var' == 687
	quietly replace `gen_var' = 34 if `old_var' == 688
	quietly replace `gen_var' = 34 if `old_var' == 689
	quietly replace `gen_var' = 42 if `old_var' == 691
	quietly replace `gen_var' = 42 if `old_var' == 692
	quietly replace `gen_var' = 42 if `old_var' == 693
	quietly replace `gen_var' = 42 if `old_var' == 694
	quietly replace `gen_var' = 42 if `old_var' == 695
	quietly replace `gen_var' = 34 if `old_var' == 696
	quietly replace `gen_var' = 38 if `old_var' == 699
	quietly replace `gen_var' = 38 if `old_var' == 710
	quietly replace `gen_var' = 38 if `old_var' == 711
	quietly replace `gen_var' = 38 if `old_var' == 712
	quietly replace `gen_var' = 38 if `old_var' == 713
	quietly replace `gen_var' = 38 if `old_var' == 719
	quietly replace `gen_var' = 32 if `old_var' == 720
	quietly replace `gen_var' = 33 if `old_var' == 721
	quietly replace `gen_var' = 33 if `old_var' == 722
	quietly replace `gen_var' = 33 if `old_var' == 723
	quietly replace `gen_var' = 32 if `old_var' == 724
	quietly replace `gen_var' = 32 if `old_var' == 725
	quietly replace `gen_var' = 32 if `old_var' == 726
	quietly replace `gen_var' = 32 if `old_var' == 729
	quietly replace `gen_var' = 40 if `old_var' == 730
	quietly replace `gen_var' = 40 if `old_var' == 731
	quietly replace `gen_var' = 40 if `old_var' == 732
	quietly replace `gen_var' = 40 if `old_var' == 733
	quietly replace `gen_var' = 40 if `old_var' == 734
	quietly replace `gen_var' = 41 if `old_var' == 735
	quietly replace `gen_var' = 40 if `old_var' == 739
	quietly replace `gen_var' = 30 if `old_var' == 740
	quietly replace `gen_var' = 30 if `old_var' == 741
	quietly replace `gen_var' = 30 if `old_var' == 742
	quietly replace `gen_var' = 30 if `old_var' == 749
	quietly replace `gen_var' = 36 if `old_var' == 750
	quietly replace `gen_var' = 29 if `old_var' == 751
	quietly replace `gen_var' = 29 if `old_var' == 752
	quietly replace `gen_var' = 36 if `old_var' == 753
	quietly replace `gen_var' = 29 if `old_var' == 754
	quietly replace `gen_var' = 29 if `old_var' == 755
	quietly replace `gen_var' = 29 if `old_var' == 759
	quietly replace `gen_var' = 36 if `old_var' == 760
	quietly replace `gen_var' = 45 if `old_var' == 761
	quietly replace `gen_var' = 45 if `old_var' == 762
	quietly replace `gen_var' = 36 if `old_var' == 763
	quietly replace `gen_var' = 36 if `old_var' == 764
	quietly replace `gen_var' = 36 if `old_var' == 769
	quietly replace `gen_var' = 30 if `old_var' == 770
	quietly replace `gen_var' = 30 if `old_var' == 771
	quietly replace `gen_var' = 31 if `old_var' == 772
	quietly replace `gen_var' = 30 if `old_var' == 773
	quietly replace `gen_var' = 30 if `old_var' == 774
	quietly replace `gen_var' = 30 if `old_var' == 775
	quietly replace `gen_var' = 30 if `old_var' == 776
	quietly replace `gen_var' = 30 if `old_var' == 777
	quietly replace `gen_var' = 30 if `old_var' == 778
	quietly replace `gen_var' = 30 if `old_var' == 779
	quietly replace `gen_var' = 30 if `old_var' == 780
	quietly replace `gen_var' = 30 if `old_var' == 781
	quietly replace `gen_var' = 30 if `old_var' == 782
	quietly replace `gen_var' = 30 if `old_var' == 783
	quietly replace `gen_var' = 30 if `old_var' == 789
	quietly replace `gen_var' = 35 if `old_var' == 790
	quietly replace `gen_var' = 35 if `old_var' == 791
	quietly replace `gen_var' = 35 if `old_var' == 792
	quietly replace `gen_var' = 35 if `old_var' == 793
	quietly replace `gen_var' = 35 if `old_var' == 794
	quietly replace `gen_var' = 35 if `old_var' == 799
	quietly replace `gen_var' = 27 if `old_var' == 810
	quietly replace `gen_var' = 27 if `old_var' == 811
	quietly replace `gen_var' = 27 if `old_var' == 812
	quietly replace `gen_var' = 27 if `old_var' == 813
	quietly replace `gen_var' = 27 if `old_var' == 814
	quietly replace `gen_var' = 27 if `old_var' == 815
	quietly replace `gen_var' = 27 if `old_var' == 816
	quietly replace `gen_var' = 27 if `old_var' == 819
	quietly replace `gen_var' = 30 if `old_var' == 820
	quietly replace `gen_var' = 26 if `old_var' == 821
	quietly replace `gen_var' = 30 if `old_var' == 822
	quietly replace `gen_var' = 30 if `old_var' == 823
	quietly replace `gen_var' = 30 if `old_var' == 824
	quietly replace `gen_var' = 30 if `old_var' == 825
	quietly replace `gen_var' = 30 if `old_var' == 826
	quietly replace `gen_var' = 30 if `old_var' == 827
	quietly replace `gen_var' = 30 if `old_var' == 829
	quietly replace `gen_var' = 28 if `old_var' == 830
	quietly replace `gen_var' = 27 if `old_var' == 831
	quietly replace `gen_var' = 27 if `old_var' == 832
	quietly replace `gen_var' = 29 if `old_var' == 833
	quietly replace `gen_var' = 29 if `old_var' == 834
	quietly replace `gen_var' = 29 if `old_var' == 835
	quietly replace `gen_var' = 28 if `old_var' == 839
	quietly replace `gen_var' = 52 if `old_var' == 840
	quietly replace `gen_var' = 52 if `old_var' == 841
	quietly replace `gen_var' = 48 if `old_var' == 842
	quietly replace `gen_var' = 57 if `old_var' == 843
	quietly replace `gen_var' = 45 if `old_var' == 844
	quietly replace `gen_var' = 49 if `old_var' == 845
	quietly replace `gen_var' = 52 if `old_var' == 849
	quietly replace `gen_var' = 40 if `old_var' == 850
	quietly replace `gen_var' = 40 if `old_var' == 851
	quietly replace `gen_var' = 40 if `old_var' == 852
	quietly replace `gen_var' = 40 if `old_var' == 853
	quietly replace `gen_var' = 40 if `old_var' == 859
	quietly replace `gen_var' = 38 if `old_var' == 860
	quietly replace `gen_var' = 38 if `old_var' == 861
	quietly replace `gen_var' = 29 if `old_var' == 862
	quietly replace `gen_var' = 34 if `old_var' == 863
	quietly replace `gen_var' = 29 if `old_var' == 864
	quietly replace `gen_var' = 38 if `old_var' == 865
	quietly replace `gen_var' = 38 if `old_var' == 866
	quietly replace `gen_var' = 38 if `old_var' == 867
	quietly replace `gen_var' = 34 if `old_var' == 868
	quietly replace `gen_var' = 34 if `old_var' == 869
	quietly replace `gen_var' = 34 if `old_var' == 870
	quietly replace `gen_var' = 34 if `old_var' == 871
	quietly replace `gen_var' = 34 if `old_var' == 872
	quietly replace `gen_var' = 38 if `old_var' == 873
	quietly replace `gen_var' = 34 if `old_var' == 879
	quietly replace `gen_var' = 30 if `old_var' == 880
	quietly replace `gen_var' = 29 if `old_var' == 881
	quietly replace `gen_var' = 29 if `old_var' == 882
	quietly replace `gen_var' = 26 if `old_var' == 883
	quietly replace `gen_var' = 33 if `old_var' == 884
	quietly replace `gen_var' = 30 if `old_var' == 885
	quietly replace `gen_var' = 34 if `old_var' == 886
	quietly replace `gen_var' = 34 if `old_var' == 887
	quietly replace `gen_var' = 29 if `old_var' == 888
	quietly replace `gen_var' = 32 if `old_var' == 889
	quietly replace `gen_var' = 31 if `old_var' == 891
	quietly replace `gen_var' = 30 if `old_var' == 899
	quietly replace `gen_var' = 41 if `old_var' == 910
	quietly replace `gen_var' = 41 if `old_var' == 911
	quietly replace `gen_var' = 32 if `old_var' == 912
	quietly replace `gen_var' = 50 if `old_var' == 913
	quietly replace `gen_var' = 39 if `old_var' == 914
	quietly replace `gen_var' = 44 if `old_var' == 915
	quietly replace `gen_var' = 32 if `old_var' == 919
	quietly replace `gen_var' = 49 if `old_var' == 920
	quietly replace `gen_var' = 49 if `old_var' == 921
	quietly replace `gen_var' = 49 if `old_var' == 922
	quietly replace `gen_var' = 34 if `old_var' == 923
	quietly replace `gen_var' = 49 if `old_var' == 929
	quietly replace `gen_var' = 49 if `old_var' == 930
	quietly replace `gen_var' = 49 if `old_var' == 931
	quietly replace `gen_var' = 49 if `old_var' == 932
	quietly replace `gen_var' = 49 if `old_var' == 933
	quietly replace `gen_var' = 49 if `old_var' == 934
	quietly replace `gen_var' = 49 if `old_var' == 939
	quietly replace `gen_var' = 32 if `old_var' == 990
	quietly replace `gen_var' = 31 if `old_var' == 991
	quietly replace `gen_var' = 32 if `old_var' == 992
	quietly replace `gen_var' = 32 if `old_var' == 993
	quietly replace `gen_var' = 33 if `old_var' == 999

	quietly replace `gen_var' = .a if !missing(`old_var') & missing(`gen_var')
	quietly replace `gen_var' = .b if missing(`old_var') & missing(`gen_var')
	
	quietly count if `gen_var' == .a
	local no_matched = r(N)
	quietly count if `gen_var' == .b
	local missing = r(N)
	
	di char(32)
	di as text "Transformation success."
	di as text "  Not matched from source (.a): " as result `no_matched'
	di as text "  Missing from source (.b): " as result `missing'
	di as text "Acknowledgment: Mapping relationships from GB99 to ISCO88 are provided by Yang SU."
end

program define label_gb99
	syntax varname(numeric), LABel(name)
	lab def `label' ///
		0 "国家机关、党群组织、企业、事业单位负责人" ///
		10 "中国共产党中央委员会和地方各级党组织负责人" ///
		11 "中国共产党中央委员会和地方各级党组织负责人" ///
		20 "国家机关及其工作机构负责人" ///
		21 "国家权力机关及其工作机构负责人" ///
		22 "人民政协及其工作机构负责人" ///
		23 "人民法院负责人" ///
		24 "人民检察院负责人" ///
		25 "国家行政机关及其工作机构负责人" ///
		29 "其他国家机关及其工作机构负责人" ///
		30 "民主党派和社会团体及其工作机构负责人" ///
		31 "民主党派负责人" ///
		32 "工会、共青团、妇联等人民团体及其工作机构负责人" ///
		33 "群众自治组织负责人" ///
		39 "其他社会团体及其工作机构负责人" ///
		40 "事业单位负责人" ///
		41 "教育教学单位负责人" ///
		42 "卫生单位负责人" ///
		43 "科研单位负责人" ///
		49 "其他事业单位负责人" ///
		50 "企业负责人" ///
		51 "企业负责人" ///
		100 "专业技术人员" ///
		110 "科学研究人员" ///
		111 "哲学研究人员" ///
		112 "经济学研究人员" ///
		113 "法学研究人员" ///
		114 "社会学研究人员" ///
		115 "教育科学研究人员" ///
		116 "文学、艺术研究人员" ///
		117 "图书馆学、情报学研究人员" ///
		118 "历史学研究人员" ///
		119 "管理科学研究人员" ///
		121 "数学研究人员" ///
		122 "物理学研究人员" ///
		123 "化学研究人员" ///
		124 "天文学研究人员" ///
		125 "地球科学研究人员" ///
		126 "生物科学研究人员" ///
		127 "农业科学研究人员" ///
		128 "医学研究人员" ///
		129 "其他科学研究人员" ///
		130 "工程技术人员" ///
		131 "地质勘探工程技术人员" ///
		132 "测绘工程技术人员" ///
		133 "矿山工程技术人员" ///
		134 "石油工程技术人员" ///
		135 "冶金工程技术人员" ///
		136 "化工工程技术人员" ///
		137 "机械工程技术人员" ///
		138 "兵器工程技术人员工" ///
		139 "航空工程技术人员" ///
		141 "航天工程技术人员" ///
		142 "电子工程技术人员" ///
		143 "通信工程技术人员" ///
		144 "计算机与应用工程技术人员" ///
		145 "电气工程技术人员" ///
		146 "电力工程技术人员" ///
		147 "邮政工程技术人员" ///
		148 "广播电影电视工程技术人员" ///
		149 "交通工程技术人员" ///
		151 "民用航空工程技术人员" ///
		152 "铁路工程技术人员" ///
		153 "建筑工程技术人员" ///
		154 "建材工程技术人员" ///
		155 "林业工程技术人员" ///
		156 "水利工程技术人员" ///
		157 "海洋工技术人员" ///
		158 "水产工程技术人员" ///
		159 "纺织工程技术人员" ///
		161 "食品工程技术人员" ///
		162 "气象工程技术人员" ///
		163 "地震工程技术人员" ///
		164 "环境保护工程技术人员" ///
		165 "安全工程技术人员" ///
		166 "标准化、计量、质量工程技术人员" ///
		167 "管理（工业）工程技术人员" ///
		169 "其他工程技术人员" ///
		170 "农业技术人员" ///
		171 "土壤肥料技术人员" ///
		172 "植物保护技术人员" ///
		173 "园艺技术人员" ///
		174 "作物遗传育种栽培技术人员" ///
		175 "兽医、兽药技术人员" ///
		176 "畜牧和草业技术人员" ///
		179 "其他农业技术人员" ///
		180 "飞机和船舶技术人员" ///
		181 "飞行人员和领航人员" ///
		182 "船舶指挥和引航人员" ///
		189 "其他飞机和船舶技术人员" ///
		190 "卫生专业技术人员" ///
		191 "西医医师" ///
		192 "中医医师" ///
		193 "中西医结合医师" ///
		194 "民族医师" ///
		195 "公共卫生医师" ///
		196 "药剂人员" ///
		197 "医疗技术人员" ///
		198 "护理人员" ///
		199 "其他卫生专业技术人员" ///
		210 "经济业务人员" ///
		211 "经济计划人员" ///
		212 "统计人员" ///
		213 "会计人员" ///
		214 "审计人员" ///
		215 "国际商务人员" ///
		219 "其他经济业务人员" ///
		220 "金融业务人员" ///
		221 "银行业务人员" ///
		222 "保险业务人员" ///
		223 "证券业务人员" ///
		229 "其他金融业务人员" ///
		230 "法律专业人员" ///
		231 "法官" ///
		232 "检察官" ///
		233 "律师" ///
		234 "公证员" ///
		235 "司法鉴定人员" ///
		236 "书记员" ///
		239 "其他法律专业人员" ///
		240 "教学人员" ///
		241 "高等教育教师" ///
		242 "中等职业教育教师" ///
		243 "中学教师" ///
		244 "小学教师" ///
		245 "幼儿教师" ///
		246 "特殊教育教师" ///
		249 "其他教学人员" ///
		250 "文学艺术工作人员" ///
		251 "文艺创作和评论人员" ///
		252 "编导和音乐指挥人员" ///
		253 "演员" ///
		254 "乐器演奏员" ///
		255 "电影电视制作及舞台专业人员" ///
		256 "美术专业人员" ///
		257 "工艺美术专业人员" ///
		259 "其他文学艺术工作人员" ///
		260 "体育工作人员" ///
		261 "体育工作人员" ///
		270 "新闻出版、文化工作人员" ///
		271 "记者" ///
		272 "编辑" ///
		273 "校对员" ///
		274 "播音员及节目主持人" ///
		275 "翻译" ///
		276 "图书资料与档案业务人员" ///
		277 "考古及文物保护专业人员" ///
		279 "其他新闻出版式、文化工作人员" ///
		280 "宗教职业者" ///
		280 "宗教职业者" ///
		290 "其他专业技术人员" ///
		290 "其他专业技术人员" ///
		300 "办事人员和有关人员" ///
		310 "行政办公人员" ///
		311 "行政业务人员" ///
		312 "行政事务人员" ///
		319 "其他行政办公人员" ///
		320 "安全保卫和消防人员" ///
		321 "人民警察" ///
		322 "治安保卫人员" ///
		323 "消防人员" ///
		329 "其他安全保卫和消防人员" ///
		330 "邮政和电信业务人员" ///
		331 "邮政业务人员" ///
		332 "电信业务人员" ///
		333 "电信通信传输业务人员" ///
		339 "其他邮政和电信业务人员" ///
		390 "其他办事人员和有关人员" ///
		400 "商业、服务业人员" ///
		410 "购销人员" ///
		411 "营业人员" ///
		412 "推销、展销人员" ///
		413 "采购人员" ///
		414 "拍卖、典当及租赁业务人员" ///
		415 "废旧物资回收利用人员" ///
		416 "粮油管理人员" ///
		417 "商品监督和市场管理人员" ///
		419 "其他购销人员" ///
		420 "仓储人员" ///
		421 "保管人员" ///
		422 "储运人员" ///
		429 "其他仓储人员" ///
		430 "餐饮服务人员" ///
		431 "中餐烹饪人员" ///
		432 "西餐烹饪人员" ///
		433 "调酒和茶艺人员" ///
		434 "营养西餐人员" ///
		435 "餐厅服务人员" ///
		439 "其他餐饮服务人员" ///
		440 "饭店、旅游及健身娱乐场所服务人员" ///
		441 "饭店服务人员" ///
		442 "旅游及公共游览场所服务人员" ///
		443 "健身和娱乐场所服务人员" ///
		449 "其他饭店、旅游及健身娱乐场所服务人员" ///
		450 "运输服务人员" ///
		451 "公路道路运输服务人员" ///
		452 "铁路客货运输服务人员" ///
		453 "航空运输服务人员" ///
		454 "水上运输服务人员" ///
		459 "其他运输服务人员" ///
		460 "医疗卫生辅助服务人员" ///
		461 "医疗卫生辅助服务人员" ///
		470 "社会服务和居民生活服务人员" ///
		471 "社会中介服务人员" ///
		472 "物业管理人员" ///
		473 "供水、供热及生活燃供应服务人员" ///
		474 "美容美发人员" ///
		475 "摄影服务人员" ///
		476 "验光配镜人员" ///
		477 "洗染织补人员" ///
		478 "浴池服务人员" ///
		479 "印章刻字人员" ///
		481 "日用机电产品维修人员" ///
		482 "办公设备维修人员" ///
		483 "保育、家庭服务人员" ///
		484 "环境卫生人员" ///
		485 "殡葬服务人员" ///
		489 "其他社会服务和居民生活服务人员" ///
		490 "其他商业、服务业人员" ///
		499 "其他商业、服务业人员" ///
		500 "农、林、牧、渔、水利业生产人员" ///
		510 "种植业生产人员" ///
		511 "大田作物生产人员" ///
		512 "农业实验人员" ///
		513 "园艺作物生产人员" ///
		514 "热带作物生产人员" ///
		515 "中药材生产人员" ///
		516 "农副林特产品加工人员" ///
		519 "其他种植业生产人员" ///
		520 "林业生产及野生动植物保护人员" ///
		521 "营造林人员" ///
		522 "森林资源管护人员" ///
		523 "野生动植物保护及自然保护区人员" ///
		524 "木材采运人员" ///
		529 "其他林业生产及野生动植物保护人员" ///
		530 "畜牧业生产人员" ///
		531 "家畜饲养人员" ///
		532 "家禽饲养人员" ///
		533 "蜜蜂饲养人员" ///
		534 "实验动物饲养人员" ///
		535 "动物疫病防治人员" ///
		536 "草业生产人员" ///
		539 "其他畜牧业生产人员" ///
		540 "渔业生产人员" ///
		541 "水产养殖人员" ///
		542 "水产捕捞及有关人员" ///
		543 "水产品加工人员" ///
		549 "其他渔业生产人员" ///
		550 "水利设施管理养护人员" ///
		551 "河道、水库管养人员" ///
		552 "农田灌排工程建设管理维护人员" ///
		553 "水土保持作业人员" ///
		554 "水文勘测作业人员" ///
		559 "其他水利设施管理养护人员" ///
		590 "其他农、林、牧、渔、水利业生产人员" ///
		591 "农林专用机械操作人员" ///
		592 "农村能源开发利用人员" ///
		600 "生产、运输设备操作人员及有关人员" ///
		610 "勘测及矿物开采人员" ///
		611 "地质勘查人员" ///
		612 "测绘人员" ///
		613 "矿物开采人员" ///
		614 "矿物处理人员" ///
		615 "钻井人员" ///
		616 "石油、天然气开采人员" ///
		617 "盐业主产人员" ///
		619 "其他勘测及矿物开采人员" ///
		620 "金属冶炼、轧制人员" ///
		621 "炼铁人员" ///
		622 "炼钢工人" ///
		623 "铁合金冶炼人员" ///
		624 "重有色金属冶炼人员" ///
		625 "轻有色金属冶炼人员" ///
		626 "稀贵金属冶炼人员" ///
		627 "半导体材料制备人员" ///
		628 "金属轧制人员" ///
		629 "铸铁管人员" ///
		631 "碳素制品生产人员" ///
		632 "硬质合金生产人员" ///
		639 "其他金属冶炼、轧制人员" ///
		640 "化工产品生产人员" ///
		641 "化工产品生产通用工艺人员" ///
		642 "石油炼制生产人员" ///
		643 "煤化工生产人员" ///
		644 "化学肥料生产人员" ///
		645 "无机化工产品生产人员" ///
		646 "基本有机化工产品生产人员" ///
		647 "合成树脂生产人员" ///
		648 "合成橡胶生产人员" ///
		649 "化学纤维生产人员" ///
		651 "合成革生产人员" ///
		652 "精细化工产品生产人员" ///
		653 "信息记录材料生产人员" ///
		654 "火药制造人员" ///
		654 "炸药制造人员" ///
		655 "林产化工产品生产人员" ///
		656 "复合材料加工人员" ///
		657 "日用化学品生产人员" ///
		659 "其他化工产品生产人员" ///
		660 "机械制造加工人员" ///
		661 "机械冷加工人员" ///
		662 "机械热加工人员" ///
		663 "特种加工设备操作人员" ///
		664 "冷作钣金加工人员" ///
		665 "工件表面处理加工人员" ///
		666 "磨料磨具制造加工人员" ///
		667 "航天器件加工成型人员" ///
		669 "其他机机制造加工人员" ///
		670 "机电产品装配人员" ///
		671 "基础件、部件装配人员" ///
		672 "机械设备装配人员" ///
		673 "动力设备装配人员" ///
		674 "电气元件及设备装配人员" ///
		675 "电子专用设备装配调试人员" ///
		676 "仪器仪表装配人员" ///
		677 "运输车辆装配人员" ///
		678 "膜法水处理设备制造人员" ///
		679 "医疗器械装配及假肢与矫形器制作人员" ///
		681 "日用机械电器制作装配人员" ///
		682 "五金制品制作、装配人员" ///
		683 "装甲车辆装试人员" ///
		684 "枪炮制作人员" ///
		685 "弹制作人员" ///
		686 "引信加工制作人员" ///
		687 "火工品制作人员" ///
		688 "防化器材制作人员" ///
		689 "船舶制作人员" ///
		691 "航空产品装配与调试人员" ///
		692 "航空产品试验人员" ///
		693 "导弹卫星装配测试人员" ///
		694 "火箭发动机装配试验人员" ///
		695 "航天器结构强度、温度、环境试验人员" ///
		696 "靶场试验人员" ///
		699 "其他机电产品装配人员" ///
		710 "机械设备修理人员" ///
		711 "机械设备维修人员" ///
		712 "仪器仪表修理人员" ///
		713 "民用航空器维修人员" ///
		719 "其他机械设备修理人员" ///
		720 "电力设备安装、运行、检修及供电人员" ///
		721 "电力设备安装人员" ///
		722 "发电运行值班人员" ///
		723 "输电、配电、变电设备值班人员" ///
		724 "电力设备检修人员" ///
		725 "供用电人员" ///
		726 "生活、生产电力设备安装、操作、修理人员" ///
		729 "其他电力设备安装、运行、检修及供电人员" ///
		730 "电子元器件与设备制造、装配、调试及维修人员" ///
		731 "电子器件制造人员" ///
		732 "电子元件制造人员" ///
		733 "电池制造人员" ///
		734 "电子设备装配、调试人员" ///
		735 "电子产品维修人员" ///
		739 "其他电子元器件与设备制造、装配、调试及维修人员" ///
		740 "橡胶和塑料制品生产人员" ///
		741 "橡胶制品生产人员" ///
		742 "塑料制品生产人员" ///
		749 "其他橡胶和塑料制品生产人员" ///
		750 "纺织、针织、印染人员" ///
		751 "纤维预处理人员" ///
		752 "纺织人员" ///
		753 "织造人员" ///
		754 "针织人员" ///
		755 "印染人员" ///
		759 "其他纺织、针织、印染人员" ///
		760 "裁剪、缝纫和皮革、毛皮制品加工制作人员" ///
		761 "裁剪、缝纫人员" ///
		762 "鞋帽制作人员" ///
		763 "皮革、毛皮加工人员" ///
		764 "缝纫制品再加工人员" ///
		769 "其他裁剪、缝纫和皮革、毛皮制品加工制作人员" ///
		770 "粮油、食品、饮料生产加工及饲料生产加工人员" ///
		771 "粮油生产加工人员" ///
		772 "制糖和糖制品加工人员" ///
		773 "乳品、冷食品及罐头、饮料制作人员" ///
		774 "酿酒、食品添加剂及调味品制作人员" ///
		775 "粮油食品制作人员" ///
		776 "屠宰加工人员" ///
		777 "肉、蛋食品加工人员" ///
		778 "饲料生产加工人员" ///
		779 "其他粮油、食品、饮料生产加工及饲料生产加工人员" ///
		780 "烟草及其制品加工人员" ///
		781 "原烟复烤人员" ///
		782 "卷烟生产人员" ///
		783 "烟用醋酸纤维丝束滤棒制作人员" ///
		789 "其他烟草及其制品加工人员" ///
		790 "药品生产人员" ///
		791 "合成药物制造人员" ///
		792 "生物技术制药（品）人员" ///
		793 "药物制剂人员" ///
		794 "中药制药人员" ///
		799 "其他药品生产人员" ///
		810 "木材加工、人造板生产、木制品制作及制浆、造纸和纸制品生产加工人员" ///
		811 "木材加工人员" ///
		812 "人造板生产人员" ///
		813 "木材制品制作人员" ///
		814 "制浆人员" ///
		815 "造纸人员" ///
		816 "纸制品制作人员" ///
		819 "其他木材加工、人造板生产、木制品制作及制浆、造纸和纸制品生产加工人员" ///
		820 "建筑材料生产加工人员" ///
		821 "水泥及水泥制品生产加工人员" ///
		822 "墙体屋面材料生产人员" ///
		823 "建筑防水密封材料生产人员" ///
		824 "建筑保温及吸音材料生产人员" ///
		825 "装饰石材生产人员" ///
		826 "非金属矿及其制品生产加工人员" ///
		827 "耐火材料生产人员" ///
		829 "其他建筑材料生产加工人员" ///
		830 "玻璃、陶瓷、搪瓷及其制品生产加工人员" ///
		831 "玻璃熔制人员" ///
		832 "玻璃纤维及制品生产人员" ///
		833 "石英玻璃制品加工人员" ///
		834 "陶瓷制品生产人员" ///
		835 "搪瓷制品生产人员" ///
		839 "其他玻璃、陶瓷、搪瓷及其制品生产加工人员" ///
		840 "广播影视制品制作、播放及文物保护作业人员" ///
		841 "影视制作制作人员" ///
		842 "音像制品制作复制人员" ///
		843 "广播影视舞台设备安装调试及运行操人员" ///
		844 "电影放映人员" ///
		845 "文物保护作业人员" ///
		849 "其他广播影视制品制作、播放及文物保护作业人员" ///
		850 "印刷人员" ///
		851 "印前处理人员" ///
		852 "印刷操作人员" ///
		853 "印后制作人员" ///
		859 "其他印刷人员" ///
		860 "工艺、美术品制作人员" ///
		861 "珠宝首饰加工制作人员" ///
		862 "地毯制作人员" ///
		863 "玩具制作人员" ///
		864 "漆器工艺品制作人员" ///
		865 "抽纱刺绣工艺品制作人员" ///
		866 "金属工艺品制作人员" ///
		867 "雕刻工艺品制作人员" ///
		868 "美术品制作人员" ///
		869 "其他工艺、美术品制作人员" ///
		870 "文化教育、体育用品制作人员" ///
		871 "文教用品制作人员" ///
		872 "体育用品制作人员" ///
		873 "乐器制作人员" ///
		879 "其他文化教育、体育用品制作人员" ///
		880 "工程施工人员" ///
		881 "土石方施工人员" ///
		882 "砌筑人员" ///
		883 "混凝土配制及制品加工人员" ///
		884 "钢筋加工人员" ///
		885 "施工架子搭设人员" ///
		886 "工程防水人员" ///
		887 "装饰装修人员" ///
		888 "古建筑修建人员" ///
		889 "筑路、养护、维修人员" ///
		891 "工程设备安装人员" ///
		899 "其他工程施工人员" ///
		910 "运输设备操作人员及有关人员" ///
		911 "公（道）路运输机械设备操作及有关人员" ///
		912 "铁路、地铁运输机械设备操作及有关人员" ///
		913 "民用航空设备操作及有关人员" ///
		914 "水上运输设备操作及有关人员" ///
		915 "起重装卸机械操作及有关人员" ///
		919 "其他运输设备操作人员及有关人员" ///
		920 "环境监测与废物处理人员" ///
		921 "环境监测人员" ///
		922 "海洋环境调查与监测人员" ///
		923 "废物处理人员" ///
		929 "其他环境监测与废物处理人员" ///
		930 "检验、计量人员" ///
		931 "检验人员" ///
		932 "航空产品检验人员" ///
		933 "航天器检验、测试人员" ///
		934 "计量人员" ///
		939 "其他检验、计量人员" ///
		990 "其他生产、运输设备操作人员及有关人员" ///
		991 "包装人员" ///
		992 "机泵操作人员" ///
		993 "简单体力劳动人员" ///
		999 "不便分类的其他从业人员"
	
	lab val `varlist' `label'
end
