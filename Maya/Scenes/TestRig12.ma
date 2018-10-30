//Maya ASCII 2018 scene
//Name: TestRig12.ma
//Last modified: Tue, Oct 30, 2018 01:26:28 PM
//Codeset: 1252
requires maya "2018";
requires -nodeType "HIKCharacterNode" -nodeType "HIKProperty2State" -dataType "HIKCharacter"
		 -dataType "HIKCharacterState" -dataType "HIKEffectorState" -dataType "HIKPropertySetState"
		 "mayaHIK" "1.0_HIK_2016.5";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 , 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "9B6415ED-4BCC-1014-5BC0-6B926DA62DD0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -28.499167317835667 -180.49282038785469 129.92995165787707 ;
	setAttr ".r" -type "double3" 72.682924915430689 -1.590277340731758e-15 347.59491594941568 ;
	setAttr ".rp" -type "double3" -1.2212453270876722e-15 -3.5527136788005009e-15 -7.1054273576010019e-15 ;
	setAttr ".rpt" -type "double3" -1.3918952683980644e-15 8.6641629951756606e-15 1.4800478432067259e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8A02F489-4146-47B0-8538-E0A617F46F60";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 211.97394460995579;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 41.9552001953125 -1.1181869506835902 96.934715270996094 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "14EEB509-4AAF-6D33-15C1-6EA5D46A2E9C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "743FCE9D-4EC8-7E82-87D7-2FBA5DF0C762";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "EF266763-4607-91FA-279F-CCBF6AD00F6A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.515787624653095 -1000.1 129.5998419078395 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "896F0F8A-4BC6-53DA-E2E5-5BB7F1AD19DD";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 313.37581032101178;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "2B67E2DA-4AC2-6A57-2BB0-AAB9D89E6B0B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1017.7389000627121 4.1358191699481273 143.2198365444045 ;
	setAttr ".r" -type "double3" 90 1.2722218725854067e-14 89.999999999999986 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C412FC82-49C3-C63B-1E12-05858F4AD70C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1017.7388921093199;
	setAttr ".ow" 54.882240462872801;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 7.9533922283658853e-06 3.5461404543073538 162.9319536101176 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "SK_Mannequin";
	rename -uid "5630FE42-4C43-AE60-23F8-FCB795335F0D";
createNode joint -n "root" -p "SK_Mannequin";
	rename -uid "7FD8C526-4B32-4DF7-7069-A8BEA16D0A0F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 2;
createNode joint -n "pelvis" -p "root";
	rename -uid "D03A9758-48E9-3780-6AEC-FC84D9BA01F3";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.3536841578012896e-28 1.0561532974243164 96.750602722167969 ;
	setAttr ".r" -type "double3" 89.998115539550781 -89.790634155273438 -89.998115539550781 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.2018400000000001e-07 -0.0036541199999999999 0.99999300000000002 0
		 2.1958400000000001e-10 0.99999300000000002 0.0036541199999999999 0 -1 -2.1958400000000001e-10 1.2018400000000001e-07 0
		 0 1.0561529999999999 96.750602999999998 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "spine_01" -p "pelvis";
	rename -uid "EB9CB47B-49DB-B0A1-0EBD-47872988CD69";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 10.808877944946289 -0.85141515731811523 -6.0910938836158945e-13 ;
	setAttr ".r" -type "double3" 7.0622478083278178e-31 0 -7.1538553237915039 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.1922100000000001e-07 -0.128159 0.99175400000000002 0
		 1.5184899999999998e-08 0.99175400000000002 0.128159 0 -1 -2.1958400000000001e-10 1.2018400000000001e-07 0
		 1.29887e-06 0.165247 107.556297 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "spine_02" -p "spine_01";
	rename -uid "2315AC6B-48F9-26F3-F84E-63B3811812FD";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 18.875349044799805 3.8011586666107178 5.966093397091754e-08 ;
	setAttr ".r" -type "double3" -7.0622478083278178e-31 0 14.063553810119629 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.1933800000000001e-07 0.116677 0.99317 0 -1.42407e-08 0.99317 -0.116677 0
		 -1 -2.1958400000000001e-10 1.2018400000000001e-07 0 3.5472700000000003e-06 1.516014 126.76314600000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "spine_03" -p "spine_02";
	rename -uid "DDAD9823-43C2-9F8A-0934-798E90684C73";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 13.407328605651855 0.42047739028930664 -5.5752391635646714e-13 ;
	setAttr ".r" -type "double3" -7.0622496891187791e-31 0 2.7794167995452881 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.18507e-07 0.16469900000000001 0.986344 0 -2.0010799999999999e-08 0.986344 -0.16469900000000001 0
		 -1 -2.1958400000000001e-10 1.2018400000000001e-07 0 5.1412799999999997e-06 3.4979399999999998 140.029842 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "clavicle_l" -p "spine_03";
	rename -uid "C768656E-4E76-1DBA-21A8-EA86E4CF3473";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 11.883687973022461 -2.7320878505706787 -3.7819831371307373 ;
	setAttr ".r" -type "double3" 108.71916198730469 61.85357666015625 101.54093170166016 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.881745 0.440334 -0.169211 0 -0.446774 0.89464699999999997 1.66167e-05 0
		 0.151391 0.075584200000000004 0.98558000000000001 0 3.78199 2.7603930000000001 152.20121700000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_l" -p "clavicle_l";
	rename -uid "3AE7B94B-4321-5AAC-E812-CBB40584D585";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 15.784872055053711 1.4317954599718519e-09 6.3591301113774534e-09 ;
	setAttr ".r" -type "double3" 12.101957594272134 60.937285095519641 -11.386564434003555 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.64483999999999997 0.072499800000000003 -0.76087199999999999 0
		 -0.068049100000000001 0.99698299999999995 0.037325999999999998 0 0.76128300000000004 0.0277074 0.64782799999999996 0
		 17.700220999999999 9.7110020000000006 149.530248 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_l" -p "upperarm_l";
	rename -uid "3A3D8299-4393-3E86-2BB8-0B8B984CD97E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 30.339929580688477 8.4074702755287944e-09 3.197527576048742e-09 ;
	setAttr ".r" -type "double3" -3.6132805347442631 -10.397336959838867 -30.360864639282223 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.71849099999999999 -0.42911500000000002 -0.54738500000000001 0
		 0.226213 0.88838099999999998 -0.399509 0 0.65772200000000003 0.163218 0.73536500000000005 0
		 37.264611000000002 11.910640000000001 126.445457 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "hand_l" -p "lowerarm_l";
	rename -uid "B8BF5A6B-4214-8A3A-468B-AEAA954238A4";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 26.975143432617188 1.5729675340026006e-09 -9.6207486421917565e-09 ;
	setAttr ".r" -type "double3" -76.356178283691406 2.4998080730438232 -0.41257095336914063 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.68747400000000003 -0.44220500000000001 -0.57604999999999995 0
		 -0.61435799999999996 0.068818900000000002 -0.78602099999999997 0 0.38722600000000001 0.89427000000000001 -0.224361 0
		 56.646011000000001 0.3352 111.67965599999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "index_01_l" -p "hand_l";
	rename -uid "21DFC61B-4BB4-9CA7-7FD0-5F8023BB3D78";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 12.068114280700684 1.7634615898132324 -2.1093976497650146 ;
	setAttr ".r" -type "double3" 14.866970062255861 -3.7637891769409184 25.536914825439453 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.38012000000000001 -0.30983899999999998 -0.87149799999999999 0
		 -0.72907500000000003 0.47943999999999998 -0.48845300000000003 0 0.56917300000000004 0.82105799999999995 -0.043650700000000001 0
		 63.042318000000002 -6.7663960000000003 103.81496799999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "index_02_l" -p "index_01_l";
	rename -uid "36DF41C4-4B17-5A45-301A-3A85023AA268";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.2874979972839355 -2.9850326654923265e-08 5.0484132430028694e-09 ;
	setAttr ".r" -type "double3" 1.3378193378448486 -0.47529235482215887 11.986148834228516 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.225136 -0.19669800000000001 -0.95426599999999995 0
		 -0.77866000000000002 0.552396 -0.297568 0 0.58566399999999996 0.81004200000000004 -0.0287964 0
		 64.672083000000001 -8.0948290000000007 100.078422 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "index_03_l" -p "index_02_l";
	rename -uid "7BEBFA8E-4F9E-BC8D-EA81-A0B9293E0AC2";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.3937902450561523 1.1695448165482958e-08 -2.3492283673931524e-09 ;
	setAttr ".r" -type "double3" 1.1373670101165771 0.99726903438568115 -9.4963321685791016 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.34027099999999999 -0.29919400000000002 -0.891459 0
		 -0.71895699999999996 0.52825100000000003 -0.45172000000000001 0 0.60606599999999999 0.794628 -0.035359300000000003 0
		 65.436147000000005 -8.7623789999999993 96.839843000000002 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "middle_01_l" -p "hand_l";
	rename -uid "F291C70B-4310-2D43-DAB9-28AA19128C50";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 12.244280815124512 1.293643593788147 0.57116198539733887 ;
	setAttr ".r" -type "double3" 1.9178513288497925 -7.0405654907226563 22.825855255126957 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.43979000000000001 -0.26839400000000002 -0.85705799999999999 0
		 -0.82123299999999999 0.26610800000000001 -0.504741 0 0.36353999999999997 0.92582500000000001 -0.103382 0
		 64.490046000000007 -4.4794869999999998 103.48136 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "middle_02_l" -p "middle_01_l";
	rename -uid "8C8DD41C-4073-6C7E-9F46-C3AB0855E045";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.6403741836547852 -3.648182200777228e-09 1.8308625726604077e-09 ;
	setAttr ".r" -type "double3" -2.0249526500701904 1.1368371248245239 12.280713081359863 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.24778600000000001 -0.22397900000000001 -0.94256899999999999 0
		 -0.908447 0.28434599999999999 -0.30638399999999999 0 0.33663900000000002 0.93219200000000002 -0.133016 0
		 66.530837000000005 -5.7249359999999996 99.504288000000003 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "middle_03_l" -p "middle_02_l";
	rename -uid "2CD98118-43EB-5B70-BCAB-B88CFB147081";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.64884352684021 -1.9989442989754025e-08 1.6076349140803359e-09 ;
	setAttr ".r" -type "double3" 0.78144752979278564 -4.38995361328125 -15.39975643157959 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.50448899999999997 -0.21923699999999999 -0.83511999999999997 0
		 -0.80587900000000001 0.22761899999999999 -0.54657900000000004 0 0.30991999999999997 0.94874899999999995 -0.061847100000000002 0
		 67.434971000000004 -6.5422000000000002 96.065003000000004 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_01_l" -p "hand_l";
	rename -uid "ECCEA03C-4CAE-70AA-DC99-1EB4C3E9BE5A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 10.140665054321289 2.2631511688232422 4.6431479454040527 ;
	setAttr ".r" -type "double3" -18.724597930908203 -18.933965682983398 20.18586540222168 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.53545799999999999 -0.079954300000000006 -0.84076899999999999 0
		 -0.84322399999999997 -0.106617 -0.52688299999999999 0 -0.047513600000000003 0.99107999999999996 -0.12450799999999999 0
		 64.025017000000005 0.158918 103.0175 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_02_l" -p "pinky_01_l";
	rename -uid "03E0454C-4F3D-D29B-ED8A-C884746FEC27";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.5709807872772217 1.8669879864319228e-08 3.9181813349387085e-10 ;
	setAttr ".r" -type "double3" 1.063833475112915 -1.3156856298446655 11.208059310913086 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.36015999999999998 -0.076370400000000005 -0.929759 0
		 -0.93209600000000004 -0.070589100000000002 -0.355267 0 -0.038498999999999999 0.99457799999999996 -0.096607899999999997 0
		 65.937128000000001 -0.12659799999999999 100.015131 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_03_l" -p "pinky_02_l";
	rename -uid "21B9024F-4480-8465-0CE9-C3AEABEAD34D";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.9856307506561279 -3.0058785682740563e-08 -4.0375418564053689e-09 ;
	setAttr ".r" -type "double3" 0.44569900631904602 3.8696639537811284 1.038999080657959 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.34501500000000002 -0.14458199999999999 -0.92739499999999997 0
		 -0.93856399999999995 -0.061512400000000002 -0.33957999999999999 0 -0.0079490499999999992 0.98757899999999998 -0.15692200000000001 0
		 67.012433000000001 -0.35461199999999998 97.239213000000007 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ring_01_l" -p "hand_l";
	rename -uid "EFDEA313-4E62-9A90-3146-3EA772B7364F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 11.497884750366211 1.7535265684127808 2.8469123840332031 ;
	setAttr ".r" -type "double3" -13.510274887084961 -10.989254951477051 23.292085647583008 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.455208 -0.20153499999999999 -0.86727699999999996 0
		 -0.884494 0.0095143399999999996 -0.46645500000000001 0 0.102259 0.97943499999999994 -0.173925 0
		 64.575614000000002 -2.082643 103.039254 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ring_02_l" -p "ring_01_l";
	rename -uid "5E5F6EA0-4E8E-3F7D-9DDC-0398BF72E9DC";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.4301772117614746 4.6665036279591732e-09 -9.4033403286175599e-10 ;
	setAttr ".r" -type "double3" 0.30135601758956909 -1.6697421073913574 13.31545352935791 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.24213899999999999 -0.16530400000000001 -0.95605600000000002 0
		 -0.96504100000000004 0.060852700000000003 -0.254936 0 0.10032099999999999 0.98436299999999999 -0.144791 0
		 66.592264999999998 -2.9754779999999998 99.197063 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ring_03_l" -p "ring_02_l";
	rename -uid "1C22C3BB-4ED1-82A4-00F9-D7B179E0668B";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.4766523838043213 -1.6786358969511639e-08 2.7686510861713032e-09 ;
	setAttr ".r" -type "double3" -0.36076423525810242 2.9876680374145508 -12.899674415588379 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.44562499999999999 -0.22578599999999999 -0.86627900000000002 0
		 -0.88739100000000004 0.016281 -0.46072999999999997 0 0.11813 0.97404100000000005 -0.193105 0
		 67.434096999999994 -3.5501830000000001 95.873187999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_01_l" -p "hand_l";
	rename -uid "8050672B-4951-C5E6-3A0C-91A38316B3F2";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.7620363235473633 2.3749806880950928 -2.5378196239471436 ;
	setAttr ".r" -type "double3" 95.069137573242188 36.918972015380859 27.056173324584964 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.033459099999999999 -0.82699400000000001 -0.56121399999999999 0
		 0.58346200000000004 0.47207100000000002 -0.66084900000000002 0 0.81145100000000003 -0.305336 0.49831500000000001 0
		 57.477991000000003 -3.8766500000000002 107.639089 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_02_l" -p "thumb_01_l";
	rename -uid "629E2A21-4F7F-2BC8-0AD7-FE86B0BBE36A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.8696718215942383 5.0118700301027275e-09 9.9849728485423839e-09 ;
	setAttr ".r" -type "double3" 1.6131404638290405 9.8332386016845703 15.151322364807129 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.043499799999999998 -0.61280199999999996 -0.78903800000000002 0
		 0.57761200000000001 0.65983199999999997 -0.48061100000000001 0 0.81515199999999999 -0.43485099999999999 0.382664 0
		 57.607466000000002 -7.0768459999999997 105.467375 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_03_l" -p "thumb_02_l";
	rename -uid "9DD0B088-4379-FD94-82F4-59BE24B97168";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.062171459197998 1.0721912246935972e-09 -5.1272763812448829e-10 ;
	setAttr ".r" -type "double3" 2.4147641658782959 0.47919920086860651 -12.385654449462891 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.088219599999999995 -0.73640499999999998 -0.67076499999999994 0
		 0.60730399999999995 0.49399700000000002 -0.62221199999999999 0 0.78955600000000004 -0.46224999999999999 0.403642 0
		 57.784170000000003 -9.5661529999999999 102.26216599999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_twist_01_l" -p "lowerarm_l";
	rename -uid "9F6B8BEF-4D82-B886-0179-75885A006B5E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 14 3.5527136788005009e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 3.1805536597983262e-15 0 -3.1805536597983262e-15 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.71849099999999999 -0.42911500000000002 -0.54738500000000001 0
		 0.226213 0.88838099999999998 -0.399509 0 0.65772200000000003 0.163218 0.73536500000000005 0
		 47.323486000000003 5.9030290000000001 118.782061 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_twist_01_l" -p "upperarm_l";
	rename -uid "7DE6DF4A-46CB-85B7-3DF6-BD9A1ACDE2CF";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.5 -3.5527136788005009e-15 0 ;
	setAttr ".r" -type "double3" 1.9878460373739539e-16 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.64483999999999997 0.072499800000000003 -0.76087199999999999 0
		 -0.068049100000000001 0.99698299999999995 0.037325999999999998 0 0.76128300000000004 0.0277074 0.64782799999999996 0
		 18.022639999999999 9.7472519999999996 149.149812 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "clavicle_r" -p "spine_03";
	rename -uid "7B7D478C-40AC-1186-C148-178ABF58B850";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 11.8837890625 -2.7321023941040039 3.7820026874542236 ;
	setAttr ".r" -type "double3" 108.71916198730469 61.85357666015625 -78.459037780761719 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.881745 -0.44033299999999997 0.169211 0 -0.446774 -0.89464699999999997 -1.60328e-05 0
		 0.151391 -0.075584700000000005 -0.98558000000000001 0 -3.7819959999999999 2.7603949999999999 152.20132000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_r" -p "clavicle_r";
	rename -uid "07393CC6-42F1-E0BA-AA6D-AE8C87DFAAAA";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -15.784797668457031 -7.0139599301910494e-06 -1.1171471669513267e-05 ;
	setAttr ".r" -type "double3" 12.101957594272134 60.937285095519641 -11.386564434003555 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.64483999999999997 -0.072499400000000006 0.76087099999999996 0
		 -0.068049100000000001 -0.99698399999999998 -0.037325499999999998 0 0.76128200000000001 -0.027707699999999998 -0.64782799999999996 0
		 -17.70016 9.7109769999999997 149.53037399999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_r" -p "upperarm_r";
	rename -uid "F06FC2DA-42B6-23AB-249D-62823639840B";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -30.340049743652344 -4.0850213736121077e-06 1.7513536931801355e-06 ;
	setAttr ".r" -type "double3" -3.6132805347442631 -10.397336959838867 -30.360864639282223 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.71849099999999999 0.42911500000000002 0.54738500000000001 0
		 0.226213 -0.88837999999999995 0.39950999999999998 0 0.65772200000000003 -0.163219 -0.73536500000000005 0
		 -37.264631999999999 11.910615999999999 126.445494 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "hand_r" -p "lowerarm_r";
	rename -uid "DD87220E-411A-193B-239F-B5B40A4C8B59";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -26.975244522094727 2.5634119083406404e-05 -1.1905384553756448e-06 ;
	setAttr ".r" -type "double3" -76.356178283691406 2.4998080730438232 -0.41257095336914063 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.68747400000000003 0.44220599999999999 0.57604999999999995 0
		 -0.61435799999999996 -0.068818400000000002 0.78602099999999997 0 0.38722600000000001 -0.89427000000000001 0.22436200000000001 0
		 -56.646102999999997 0.33510200000000001 111.67966 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "index_01_r" -p "hand_r";
	rename -uid "E6373A0B-4BBA-540C-1E29-0B96B2694956";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -12.067941665649414 -1.7637253999710083 2.1094281673431396 ;
	setAttr ".r" -type "double3" 14.866970062255861 -3.7637891769409184 25.536914825439453 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.38012000000000001 0.30983899999999998 0.87149799999999999 0
		 -0.72907500000000003 -0.47943999999999998 0.48845300000000003 0 0.56917300000000004 -0.82105799999999995 0.043651000000000002 0
		 -63.042119999999997 -6.7664309999999999 103.814876 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "index_02_r" -p "index_01_r";
	rename -uid "0CD4E3D6-4EEF-A988-15F8-C9B1FEE22FDC";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.2876882553100586 9.2459835286717862e-05 -7.4262097768951207e-05 ;
	setAttr ".r" -type "double3" 1.3378193378448486 -0.47529235482215887 11.986148834228516 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.225136 0.19669800000000001 0.95426599999999995 0
		 -0.77866000000000002 -0.552396 0.29756899999999997 0 0.58566399999999996 -0.81004200000000004 0.028796700000000001 0
		 -64.672067999999996 -8.0949080000000002 100.07820700000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "index_03_r" -p "index_02_r";
	rename -uid "9567752A-4F97-2690-1464-40A3E25C2B97";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.3937981128692627 0.00012069699005223811 -1.2407956091919914e-05 ;
	setAttr ".r" -type "double3" 1.1373670101165771 0.99726903438568115 -9.4963321685791016 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.34027099999999999 0.29919499999999999 0.89145799999999997 0
		 -0.71895699999999996 -0.52825100000000003 0.45172099999999998 0 0.60606599999999999 -0.794628 0.035359500000000002 0
		 -65.436234999999996 -8.762518 96.839657000000003 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "middle_01_r" -p "hand_r";
	rename -uid "22E45C1F-45C5-165E-EACF-80B5BD0F844B";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -12.244112968444824 -1.2937241792678833 -0.57113021612167358 ;
	setAttr ".r" -type "double3" 1.9178513288497925 -7.0405654907226563 22.825855255126957 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.43979099999999999 0.26839400000000002 0.85705799999999999 0
		 -0.82123299999999999 -0.26610800000000001 0.504741 0 0.36353999999999997 -0.92582399999999998 0.103383 0
		 -64.489963000000003 -4.4795379999999998 103.481409 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "middle_02_r" -p "middle_01_r";
	rename -uid "B219BAFD-4109-286C-18FB-B3BBED1FA3E4";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.640568733215332 -0.00014491056208498776 7.6369551607058384e-06 ;
	setAttr ".r" -type "double3" -2.0249526500701904 1.1368371248245239 12.280713081359863 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.24778700000000001 0.22397900000000001 0.94256799999999996 0
		 -0.908447 -0.28434500000000001 0.30638500000000002 0 0.33663900000000002 -0.93219099999999999 0.133017 0
		 -66.530719000000005 -5.7250100000000002 99.504098999999997 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "middle_03_r" -p "middle_02_r";
	rename -uid "F1FE657C-47B6-0792-C023-62A5EB744515";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.6489090919494629 3.2996809750329703e-05 -2.2666431505058426e-06 ;
	setAttr ".r" -type "double3" 0.78144752979278564 -4.38995361328125 -15.39975643157959 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.50448899999999997 0.21923699999999999 0.83511999999999997 0
		 -0.80587900000000001 -0.22761899999999999 0.54657999999999995 0 0.30991999999999997 -0.94874899999999995 0.0618475 0
		 -67.434900999999996 -6.5422969999999996 96.064762999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_01_r" -p "hand_r";
	rename -uid "713D18FD-454C-DBEC-ED16-2CAF1032E333";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -10.140592575073242 -2.2633547782897949 -4.643094539642334 ;
	setAttr ".r" -type "double3" -18.724597930908203 -18.933965682983398 20.18586540222168 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.53545799999999999 0.079954800000000006 0.84076799999999996 0
		 -0.84322399999999997 0.106617 0.52688299999999999 0 -0.047513600000000003 -0.99107999999999996 0.12450899999999999 0
		 -64.024916000000005 0.15881300000000001 103.017399 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_02_r" -p "pinky_01_r";
	rename -uid "65D22312-44B1-55DF-CC65-D0BEEF25DE46";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.5710570812225342 -7.8019678767304868e-05 -8.1079842857434414e-06 ;
	setAttr ".r" -type "double3" 1.063833475112915 -1.3156856298446655 11.208059310913086 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.36015999999999998 0.076370900000000005 0.929759 0
		 -0.93209600000000004 0.070589299999999994 0.355267 0 -0.038498999999999999 -0.99457799999999996 0.0966085 0
		 -65.937002000000007 -0.12670999999999999 100.01492500000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_03_r" -p "pinky_02_r";
	rename -uid "0053888D-442C-E960-CE49-E482811FE973";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -2.9854192733764648 0.00031727668829262257 -3.5056928027188405e-05 ;
	setAttr ".r" -type "double3" 0.44570046663284302 3.8696639537811284 1.0389991998672488 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.34501500000000002 0.14458199999999999 0.92739400000000005 0
		 -0.93856300000000004 0.061512499999999998 0.33957999999999999 0 -0.0079489899999999995 -0.98757899999999998 0.15692300000000001 0
		 -67.012525999999994 -0.35465200000000002 97.239312999999996 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ring_01_r" -p "hand_r";
	rename -uid "9CC21C10-41B1-1A4B-A0F0-33B0BAC7A5FB";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -11.497973442077637 -1.7537660598754883 -2.8469147682189941 ;
	setAttr ".r" -type "double3" -13.510274887084961 -10.989254951477051 23.292085647583008 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.455208 0.20153499999999999 0.86727699999999996 0
		 -0.884494 -0.0095140999999999993 0.46645500000000001 0 0.102259 -0.97943499999999994 0.173926 0
		 -64.575622999999993 -2.082767 103.03902100000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ring_02_r" -p "ring_01_r";
	rename -uid "0E07911A-4E67-28A1-24A7-6A9D53275B2A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.4298644065856934 8.4479885117616504e-05 -1.837869785958901e-05 ;
	setAttr ".r" -type "double3" 0.30135601758956909 -1.6697421073913574 13.31545352935791 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.24213899999999999 0.16530500000000001 0.95605600000000002 0
		 -0.96504100000000004 -0.0608526 0.254936 0 0.10032099999999999 -0.98436299999999999 0.144791 0
		 -66.592209999999994 -2.9755229999999999 99.197139000000007 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ring_03_r" -p "ring_02_r";
	rename -uid "91CC833D-4ED6-1DC8-5A26-93A48053DBEB";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.476658821105957 7.1941642090678215e-05 -2.8431277314666659e-06 ;
	setAttr ".r" -type "double3" -0.36076423525810242 2.9876680374145508 -12.899674415588379 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.44562600000000002 0.22578599999999999 0.86627799999999999 0
		 -0.88739100000000004 -0.016280699999999999 0.46072999999999997 0 0.11813 -0.97404100000000005 0.193106 0
		 -67.434113999999994 -3.550233 95.873276000000004 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_01_r" -p "hand_r";
	rename -uid "61FE47B1-46B2-0487-B227-988F105E6C05";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.7621245384216309 -2.3751199245452881 2.5378017425537109 ;
	setAttr ".r" -type "double3" 95.069137573242188 36.918972015380859 27.056173324584964 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.033459200000000001 0.82699400000000001 0.56121399999999999 0
		 0.58346299999999995 -0.47206999999999999 0.66084900000000002 0 0.81145 0.305336 -0.49831500000000001 0
		 -57.478065999999998 -3.8767640000000001 107.638931 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_02_r" -p "thumb_01_r";
	rename -uid "949C042D-4A6A-EC26-2F44-4BB83216C16F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.8695690631866455 0.00011357050243532285 5.5954889830900356e-05 ;
	setAttr ".r" -type "double3" 1.6131424903869629 9.8332386016845703 15.151324272155763 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0435001 0.61280299999999999 0.78903800000000002 0
		 0.57761200000000001 -0.65983199999999997 0.48061100000000001 0 0.81515199999999999 0.43485099999999999 -0.38266499999999998 0
		 -57.607427000000001 -7.0769120000000001 105.46732299999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_03_r" -p "thumb_02_r";
	rename -uid "0388399D-4BEF-D8F0-EBCF-4CBACE0DBFA2";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.0621762275695801 2.0121733541600406e-06 3.2049592846306041e-06 ;
	setAttr ".r" -type "double3" 2.4147622585296631 0.47919237613677984 -12.385654449462891 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.088219400000000003 0.73640499999999998 0.67076400000000003 0
		 0.60730499999999998 -0.49399700000000002 0.62221199999999999 0 0.78955600000000004 0.46224900000000002 -0.403642 0
		 -57.784128000000003 -9.5662240000000001 102.262112 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_twist_01_r" -p "lowerarm_r";
	rename -uid "2086E8E9-452D-E535-3739-4B923C6E0874";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -14 2.4331944587174803e-05 -6.578326974704396e-06 ;
	setAttr ".r" -type "double3" -13.510370254516603 0 -1.5902769357782815e-15 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.71849099999999999 0.42911500000000002 0.54738500000000001 0
		 0.066295000000000007 -0.82566499999999998 0.56025100000000005 0 0.69236900000000001 -0.36624699999999999 -0.62168199999999996 0
		 -47.323507999999997 5.9029800000000003 118.782118 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_twist_01_r" -p "upperarm_r";
	rename -uid "1F673A3E-4F27-63B5-0936-EDB020B32A7D";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.5 -3.700793968164362e-06 -1.1559803851923789e-06 ;
	setAttr ".r" -type "double3" -19.951902389526367 0 1.9878459050250559e-16 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.64483999999999997 -0.072499400000000006 0.76087099999999996 0
		 -0.32373800000000003 -0.92768899999999999 0.185974 0 0.69236900000000001 -0.36624699999999999 -0.62168199999999996 0
		 -18.022580999999999 9.7472300000000001 149.14993899999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "neck_01" -p "spine_03";
	rename -uid "7367EA28-402A-7669-3418-4298669041B5";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 16.558782577514648 -0.35531756281852722 -5.9659740259121463e-08 ;
	setAttr ".r" -type "double3" 0 0 -23.508049011230469 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.1665300000000001e-07 -0.24240100000000001 0.97017600000000004 0
		 2.8919700000000001e-08 0.97017600000000004 0.24240100000000001 0 -1 -2.1958400000000001e-10 1.2018400000000001e-07 0
		 7.1703700000000004e-06 5.874689 156.42101700000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "head" -p "neck_01";
	rename -uid "74213731-4F40-1B4F-D28B-7192F3BC9E55";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 9.2836132049560547 0.36415687203407288 2.9273693708751483e-15 ;
	setAttr ".r" -type "double3" 0 0 15.348649978637695 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.20147e-07 0.023042400000000001 0.99973400000000001 0
		 -2.98886e-09 0.99973400000000001 -0.023042400000000001 0 -1 -2.1958400000000001e-10 1.2018400000000001e-07 0
		 8.2638599999999995e-06 3.977627 165.51602800000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_l" -p "pelvis";
	rename -uid "1E38C80D-4930-833F-18BE-51A506436FC9";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.4488286972045898 -0.53142350912094116 -9.0058097839355469 ;
	setAttr ".r" -type "double3" 8.5634660720825195 -7.0322942733764648 -1.5154702663421631 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.122429 -0.0298731 0.99202800000000002 0 -0.147785 0.98895200000000005 0.011542 0
		 -0.98141299999999998 -0.14519299999999999 -0.12549099999999999 0 9.0058100000000003 0.53002800000000005 95.299841000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "calf_l" -p "thigh_l";
	rename -uid "04B6D34F-4C10-E821-49E4-A4B620085DA5";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -42.572036743164063 1.7074197611322006e-10 -4.6678749754391902e-10 ;
	setAttr ".r" -type "double3" -5.7359738349914551 1.787276029586792 -7.613584041595459 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.071110499999999993 -0.156031 0.98518899999999998 0
		 -0.063531599999999994 0.98639299999999996 0.15163599999999999 0 -0.99544299999999997 -0.051807800000000001 -0.080055799999999996 0
		 14.217846 1.8017860000000001 53.067203999999997 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "calf_twist_01_l" -p "calf_l";
	rename -uid "DF87E86F-4C87-031A-AFFF-91AD9B468FF9";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -20.476776123046875 0 0 ;
	setAttr ".r" -type "double3" 0.32356074452400208 -0.21909196674823764 -0.87298214435577393 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0739403 -0.171238 0.98245099999999996 0 -0.070226499999999997 0.98359600000000003 0.16615199999999999 0
		 -0.99478699999999998 -0.056708799999999997 -0.084752800000000003 0 15.673961 4.9967940000000004 32.893706000000002 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "foot_l" -p "calf_l";
	rename -uid "3FE739E5-4785-0043-3AAD-E8851C42643D";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -40.196689605712891 -3.9338505786190581e-09 1.8994583683706878e-10 ;
	setAttr ".r" -type "double3" -0.41538643836975098 3.7049334049224849 8.0595779418945313 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.014825899999999999 -0.0128132 0.99980800000000003 0
		 -0.045693999999999999 0.99888200000000005 0.012123699999999999 0 -0.99884499999999998 -0.045505499999999997 -0.0153949 0
		 17.076255 8.0737089999999991 13.465861 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ball_l" -p "foot_l";
	rename -uid "9813A17E-4FF8-AEC1-182C-39B1728A6712";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -10.453837394714355 -16.577854156494141 0.080155946314334869 ;
	setAttr ".r" -type "double3" 0.0039439606480300426 0.0089543778449296951 -91.883583068847656 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.046312699999999998 -0.99791399999999997 -0.044977299999999998 0
		 -0.013384800000000001 -0.045641500000000002 0.99886799999999998 0 -0.99883699999999997 -0.045658299999999999 -0.015470599999999999 0
		 17.908688000000001 -8.3553099999999993 2.8118120000000002 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_twist_01_l" -p "thigh_l";
	rename -uid "C782A4DE-48FF-7381-DCD3-A0A57F7F0D20";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -22.09423828125 3.3306690738754696e-16 0 ;
	setAttr ".r" -type "double3" -5.4386773109436035 -0.00021173585264477879 -0.056330300867557526 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.12228700000000001 -0.030845899999999999 0.99201499999999998 0
		 -0.054220499999999998 0.99823200000000001 0.024355399999999999 0 -0.99101300000000003 -0.050809300000000002 -0.12374300000000001 0
		 11.710777 1.190051 73.381746000000007 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_r" -p "pelvis";
	rename -uid "EFE9E05B-4CDB-ED80-AD64-FA97E1A7E386";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.4486445188522339 -0.53142756223678589 9.005803108215332 ;
	setAttr ".r" -type "double3" 8.5634660720825195 -7.0322942733764648 178.48452758789063 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.122429 0.0298731 -0.99202800000000002 0 -0.147785 -0.98895200000000005 -0.011542 0
		 -0.98141299999999998 0.14519299999999999 0.12549099999999999 0 -9.0058030000000002 0.53002300000000002 95.300027 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "calf_r" -p "thigh_r";
	rename -uid "5340D877-4076-193B-951F-08BB5B67F952";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 42.572250366210938 -1.6233628912232234e-06 -5.8367555766380974e-07 ;
	setAttr ".r" -type "double3" -5.7359738349914551 1.787276029586792 -7.613584041595459 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.071110800000000002 0.156031 -0.98518899999999998 0
		 -0.063531699999999997 -0.98639299999999996 -0.15163599999999999 0 -0.99544299999999997 0.051807800000000001 0.080056100000000005 0
		 -14.217876 1.8017909999999999 53.06718 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "calf_twist_01_r" -p "calf_r";
	rename -uid "13FD4FE9-4B74-75B0-A18A-5E9F6C25A363";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 20.476907730102539 0 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0.32337033748626709 -0.21913294494152069 -0.87296384572982788 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.073941199999999999 0.171238 -0.98245099999999996 0
		 -0.0702232 -0.98359700000000005 -0.16615199999999999 0 -0.99478699999999998 0.056705400000000003 0.084753200000000001 0
		 -15.674004999999999 4.9968199999999996 32.893552999999997 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "foot_r" -p "calf_r";
	rename -uid "0EF83FC6-4990-630A-950D-D094DC90632A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 40.196819305419922 1.6769354260759428e-06 -1.0918018233496696e-05 ;
	setAttr ".r" -type "double3" -0.41538643836975098 3.7049334049224849 8.0595779418945313 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.014826199999999999 0.0128132 -0.99980800000000003 0
		 -0.045693999999999999 -0.99888200000000005 -0.012123699999999999 0 -0.99884499999999998 0.045505499999999997 0.0153951 0
		 -17.076291999999999 8.0737330000000007 13.465709 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ball_r" -p "foot_r";
	rename -uid "C9A77119-41A0-84F3-5438-F6A1763352D8";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 10.453816413879395 16.577796936035156 -0.080158449709415436 ;
	setAttr ".r" -type "double3" 0.0039439606480300426 0.0089543778449296951 -91.883583068847656 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.046312699999999998 0.99791399999999997 0.044977299999999998 0
		 -0.013384999999999999 0.045641500000000002 -0.99886799999999998 0 -0.99883699999999997 0.045658299999999999 0.015470899999999999 0
		 -17.908722000000001 -8.3552289999999996 2.8116810000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_twist_01_r" -p "thigh_r";
	rename -uid "D9584983-43EA-B1CE-7EC9-368E3698D5D0";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 22.094240188598633 2.2204460492503131e-16 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -5.438868522644043 -0.00016392453107982874 -0.056340634822845459 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.12228600000000001 0.030845999999999998 -0.99201499999999998 0
		 -0.054217300000000003 -0.99823200000000001 -0.0243559 0 -0.99101300000000003 0.050805999999999997 0.12374300000000001 0
		 -11.710775999999999 1.1900470000000001 73.381930999999994 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ik_foot_root" -p "root";
	rename -uid "5D2AEB0C-4050-F89C-A663-3584DCA25A72";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ik_foot_l" -p "ik_foot_root";
	rename -uid "C5FAEB51-4284-898B-A73B-8FB9B35C75E6";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 17.076271057128906 8.0721273422241211 13.465730667114258 ;
	setAttr ".r" -type "double3" 141.82099914550781 -88.877769470214844 -139.20716857910156 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0148276 -0.012795600000000001 0.99980800000000003 0
		 -0.045693900000000003 0.99888200000000005 0.0121061 0 -0.99884499999999998 -0.0455056 -0.0153957 0
		 17.076270999999998 8.0721270000000001 13.465731 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ik_foot_r" -p "ik_foot_root";
	rename -uid "EA850C49-4525-BAE7-A784-0DA85CDBC705";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -17.076288223266602 8.072148323059082 13.465573310852051 ;
	setAttr ".r" -type "double3" -38.17888259887696 88.877769470214844 139.20716857910156 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0148276 0.012795600000000001 -0.99980800000000003 0
		 -0.045695899999999998 -0.99888200000000005 -0.0121061 0 -0.99884499999999998 0.045507699999999998 0.015395799999999999 0
		 -17.076288000000002 8.0721480000000003 13.465572999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ik_hand_root" -p "root";
	rename -uid "3DE01F2D-48F4-B4FD-DB7C-679D69F618F6";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ik_hand_gun" -p "ik_hand_root";
	rename -uid "221C4DAD-46D5-D6BE-BC23-29908E46E7AB";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -56.646099090576172 0.33541175723075867 111.67965698242188 ;
	setAttr ".r" -type "double3" 74.068016052246094 -35.172615051269531 32.751056671142578 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.68747400000000003 0.442216 0.57604200000000005 0
		 -0.61435799999999996 -0.068803299999999998 0.786022 0 0.38722499999999999 -0.89426600000000001 0.224379 0
		 -56.646099 0.33541199999999999 111.67965700000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ik_hand_l" -p "ik_hand_gun";
	rename -uid "D8E4F255-418C-E723-1796-43A398E85DDC";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 77.885429382324219 -69.601913452148438 43.869503021240234 ;
	setAttr ".r" -type "double3" -145.80032348632813 -32.168746948242188 -93.709014892578125 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.68747400000000003 -0.442216 -0.57604200000000005 0
		 -0.61435799999999996 0.068804100000000007 -0.786022 0 0.38722600000000001 0.89426499999999998 -0.22437799999999999 0
		 56.646000000000001 0.33546300000000001 111.67967299999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ik_hand_r" -p "ik_hand_gun";
	rename -uid "26F5A551-4DF8-C73E-5516-75A1EE0616AD";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.5527136788005009e-14 0 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -2.7034706531802244e-14 0 -3.1805536597983262e-15 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.68747400000000003 0.442216 0.57604200000000005 0
		 -0.61435799999999996 -0.068803299999999998 0.786022 0 0.38722499999999999 -0.89426600000000001 0.224379 0
		 -56.646099 0.33541199999999999 111.67965700000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode transform -n "ShooterPlayerModel:Player";
	rename -uid "074DA28D-4019-BB37-9308-009335A8A588";
	setAttr ".rp" -type "double3" 0 2.6263389587402344 91.666724562644958 ;
	setAttr ".sp" -type "double3" 0 2.6263389587402344 91.666724562644958 ;
createNode mesh -n "ShooterPlayerModel:PlayerShape" -p "ShooterPlayerModel:Player";
	rename -uid "EA269A3C-42A2-A188-EEBB-DFAAA53261E8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4845 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.070674792 0.39708221 0.067782529
		 0.39141408 0.06322474 0.39409542 0.066829748 0.39956111 0.075358622 0.39605793 0.07292942
		 0.38946611 0.061530113 0.37929595 0.056215934 0.38288882 0.058868166 0.39729556 0.062873207
		 0.40272367 0.076141708 0.40840277 0.080692202 0.3952482 0.078580618 0.38789755 0.067433402
		 0.37634549 0.05832269 0.37329081 0.052836373 0.3778401 0.051636331 0.38719085 0.046814278
		 0.39920837 0.053743087 0.40826333 0.07292942 0.41315085 0.081771061 0.41018951 0.086050026
		 0.393796 0.084503315 0.38627687 0.074245855 0.37458542 0.065118156 0.37040946 0.045779087
		 0.36821541 0.048113722 0.36432189 0.047929499 0.38283792 0.04397535 0.39552701 0.062383503
		 0.41855595 0.079894617 0.41820806 0.087473139 0.4094561 0.091007829 0.39248806 0.089793257
		 0.38525745 0.081070431 0.37365326 0.072640918 0.36818755 0.056104396 0.36011446 0.061081585
		 0.35980776 0.042077079 0.37155497 0.049682289 0.36045021 0.051374495 0.3615436 0.042552277
		 0.36415705 0.044962082 0.3610357 0.041252807 0.39253658 0.066199414 0.42363498 0.087608896
		 0.41662249 0.09273883 0.40795788 0.096067473 0.39150864 0.094763175 0.38456893 0.087102205
		 0.37325686 0.08005704 0.36804694 0.066148497 0.35772768 0.055071648 0.35596031 0.059442755
		 0.35553727 0.039303642 0.36696324 0.047209442 0.35771555 0.037305955 0.35785857 0.040086679
		 0.35516635 0.03451553 0.38787332 0.037730224 0.3796111 0.069069862 0.42831883 0.081863165
		 0.42470166 0.088353194 0.42270282 0.093240656 0.41495091 0.09786392 0.40672266 0.08642339
		 0.367973 0.076832667 0.35204378 0.081201322 0.35343775 0.063988402 0.35405478 0.053832788
		 0.35228983 0.058017224 0.35176617 0.034096126 0.3602187 0.57619476 0.27667907 0.030217145
		 0.34894785 0.033102136 0.34664959 0.57535464 0.25460371 0.5747841 0.25355479 0.02719155
		 0.38408163 0.030251097 0.37663156 0.071232378 0.43278691 0.083206289 0.429811 0.089284129
		 0.42808244 0.09375222 0.42107242 0.098108791 0.41370118 0.086803995 0.35434932 0.077576935
		 0.34823874 0.081688635 0.34973699 0.062478028 0.35039762 0.051556326 0.34592226 0.055621963
		 0.34531498 0.027201243 0.35098797 0.035587095 0.34444341 0.02775884 0.34601682 0.030607471
		 0.34372821 0.03131054 0.37289444 0.02396957 0.3823494 0.026612135 0.37515512 0.084612392
		 0.43492034 0.073014282 0.43751803 0.090370238 0.43338451 0.094382539 0.42662176 0.098343931
		 0.41991237 0.087114342 0.35082915 0.079295792 0.33896193 0.083732337 0.33973774 0.060211282
		 0.34422037 0.049049538 0.33866253 0.053277608 0.33792675 0.024689602 0.34796357 0.56539261
		 0.28447294 0.020767013 0.33692914 0.023419244 0.3344987 0.56609917 0.2543864 0.012017503
		 0.37618187 0.015011589 0.37014034 0.095204391 0.43204385 0.098751247 0.42555872 0.088755615
		 0.34026989 0.080859482 0.33278105 0.085140906 0.3333641 0.057663258 0.33694246 0.046540305
		 0.33045247 0.050567187 0.32986337 0.017722022 0.33865041 0.025293279 0.33171311 0.019002086
		 0.33429748 0.021390073 0.33282712 0.55378431 0.25499946 0.0037165238 0.37131616 0.0058960016
		 0.36628079 0.099427633 0.43099892 0.089570202 0.33350593 0.077710263 0.33162221 0.60691869
		 0.29316276 0.083063252 0.32223147 0.086702183 0.32298303 0.59715813 0.28876445 0.060991887
		 0.33532178 0.054436438 0.3288936 0.04462992 0.32213208 0.048179183 0.32184237 0.5517934
		 0.29253998 0.0059832926 0.36336187 0.0022061467 0.36972457 0.0038668187 0.36596805
		 0.090474479 0.32290667 0.61307609 0.30903825 0.084365115 0.31997442 0.087128885 0.32011622
		 0.057646282 0.32754686 0.051781774 0.32083142 0.045044497 0.31936103 0.047444608
		 0.3185792 0.54064399 0.25266129 0.089928992 0.3205829 0.58775204 0.31037363 0.050281089
		 0.31826404 0.58451307 0.31347784 0.59697849 0.23326765 0.59244293 0.22517391 0.58931321
		 0.22920196 0.59496808 0.23691329 0.60065198 0.23546621 0.59951329 0.2164319 0.58911413
		 0.22108394 0.045665137 0.40609476 0.58447671 0.23597004 0.58935452 0.24452507 0.59867805
		 0.24040355 0.60471892 0.23789543 0.60402447 0.21158077 0.59640789 0.21147877 0.040365517
		 0.39848712 0.58208507 0.23852184 0.58504725 0.24879229 0.59286296 0.24916498 0.60280812
		 0.24365585 0.60840464 0.24032465 0.61011881 0.21379267 0.59929234 0.20636663 0.57998246
		 0.23486164 0.57663912 0.24199511 0.57570916 0.25020054 0.58867466 0.25429535 0.59727466
		 0.25342369 0.6069988 0.24642742 0.61176741 0.24214928 0.6163466 0.2164586 0.61167514
		 0.20694207 0.60615873 0.20424455 0.6011157 0.20122777 0.032374818 0.39117163 0.56989169
		 0.24336815 0.56952262 0.25054044 0.57781911 0.25928125 0.58036125 0.26285526 0.59316891
		 0.25933707 0.60260409 0.25670755 0.61113852 0.24816827 0.62070972 0.22371711 0.61502337
		 0.24311806 0.61768931 0.20927173 0.61364424 0.20187362 0.6081205 0.19932543 0.025559954
		 0.38749874 0.56638324 0.24379303 0.56592679 0.2509338 0.57477438 0.262173 0.5772121
		 0.26574942 0.58219677 0.26700836 0.59944773 0.26273143 0.60843861 0.25867423 0.61490679
		 0.24865144 0.12151834 0.40714207 0.12189657 0.41405028 0.62475234 0.22933307 0.61829138
		 0.2436085 0.12135351 0.41973659 0.12996724 0.42578536 0.61040282 0.19492225 0.61591202
		 0.19732597 0.5658806 0.23973948 0.55288357 0.24528626 0.55335945 0.25204095 0.5688501
		 0.26701441 0.57133633 0.27055445 0.57921523 0.26945335 0.03754111 0.37293202 0.57236338
		 0.25940263 0.58952451 0.27238274 0.59447521 0.27335271 0.60642344 0.26509508 0.61433864
		 0.25909427 0.61835939 0.24857982 0.12186262 0.39995873 0.11267432 0.40732998 0.11217247
		 0.41381997 0.62170762 0.24425678 0.12974177 0.39219108 0.11172879 0.41912445 0.1206359
		 0.42438531 0.12909932 0.43054923 0.0099640973 0.37857711 0.54382467 0.24672848 0.54418403
		 0.25207856 0.56097609 0.27381161 0.56364447 0.27678591 0.57394642 0.27383468 0.030682625
		 0.36196542 0.58829111 0.27584624;
	setAttr ".uvst[0].uvsp[250:499]" 0.59301597 0.27682719 0.59859067 0.27540317
		 0.61343294 0.26462528 0.099279761 0.37158528 0.12238386 0.39276081 0.62515783 0.24528018
		 0.12911627 0.38589868 0.11140636 0.42399013 0.11986007 0.42900735 0.0013430923 0.37290776
		 0.54208624 0.2474848 0.54239219 0.25155655 0.55797017 0.27613276 0.56061429 0.27905124
		 0.5661453 0.27974078 0.55879086 0.2712622 0.5870285 0.27898204 0.59169269 0.28011346
		 0.59709257 0.27848792 0.60931754 0.27997631 0.61378992 0.27763206 0.61923832 0.26445895
		 0.10283384 0.37471998 0.6216324 0.24859682 0.12556946 0.38616291 0.54025799 0.24636184
		 0.5491007 0.28404078 0.55180794 0.2865319 0.56328267 0.2820923 0.021719765 0.34926423
		 0.58478504 0.28481045 0.58926713 0.28603539 0.59578633 0.28157514 0.60957974 0.28387442
		 0.61431921 0.2814149 0.61819679 0.27646297 0.12610522 0.38130209 0.12918901 0.38129967
		 0.11652417 0.38600534 0.11483927 0.39273414 0.54808336 0.28620654 0.54978788 0.28842819
		 0.55425537 0.28919905 0.54695922 0.28171596 0.58256823 0.29135996 0.58688766 0.29255697
		 0.59338742 0.28735137 0.61084235 0.29196334 0.61567408 0.29022852 0.61861676 0.27979541
		 0.11814123 0.38040993 0.13007148 0.36853907 0.64331925 0.24396543 0.54758078 0.29033172
		 0.014422469 0.33500785 0.5519172 0.29023337 0.047866456 0.34646413 0.045706339 0.33918619
		 0.579997 0.29911137 0.5841198 0.30009955 0.59088171 0.29375032 0.61246663 0.29772377
		 0.61670107 0.29646727 0.62013668 0.28898296 0.1222093 0.36716568 0.13182186 0.35974231
		 0.13409105 0.35924774 0.57654196 0.29826275 0.5779357 0.30773076 0.58161652 0.30828556
		 0.58793902 0.30119702 0.61600667 0.30798692 0.61948115 0.30698901 0.62094766 0.2956126
		 0.12458516 0.35947078 0.6396724 0.24990432 0.64792764 0.25219634 0.12969811 0.35162315
		 0.65905029 0.25417757 0.041824948 0.32151508 0.57814932 0.31045133 0.58084679 0.31138369
		 0.58498895 0.30920094 0.61747807 0.30985644 0.62025571 0.30945098 0.62286091 0.30633831
		 0.62448525 0.29533461 0.092908546 0.34084204 0.12776349 0.35081461 0.6550805 0.25424072
		 0.57590586 0.31163254 0.57986832 0.31406298 0.58355403 0.31153423 0.62268126 0.30860606
		 0.093560681 0.32198662 0.087797977 0.31710517 0.62447071 0.30986255 0.63764983 0.25674275
		 0.62737459 0.25457215 0.10802438 0.37597457 0.11170214 0.36305034 0.63871574 0.2522364
		 0.62802768 0.24946484 0.62491018 0.25483677 0.10629581 0.37988627 0.11050451 0.3776195
		 0.11451197 0.36426616 0.64584196 0.25851884 0.11626235 0.35485843 0.62451684 0.24890882
		 0.10832259 0.38225487 0.11806605 0.35623667 0.65260392 0.25944149 0.12238386 0.34895149
		 0.10334539 0.3821288 0.10513698 0.38643566 0.12322996 0.35043034 0.099468865 0.3835519
		 0.10103985 0.38985035 0.60284209 0.19664614 0.60512441 0.19230123 0.62613153 0.26170194
		 0.092377603 0.36781904 0.092169091 0.35490692 0.10309325 0.40609476 0.62280023 0.27953073
		 0.10283143 0.41307932 0.11340889 0.40012357 0.10274173 0.41922262 0.10292113 0.42480835
		 0.10346419 0.43014196 0.11137971 0.42875883 0.6588099 0.25737283 0.62885809 0.24666534
		 0.6469394 0.25427833 0.65437394 0.2562426 0.066376381 0.34830904 0.067835853 0.35154799
		 0.60207969 0.27882057 0.07126876 0.35545239 0.01680805 0.33605394 0.6046558 0.28206193
		 0.073952489 0.34649926 0.083538398 0.31776702 0.051658135 0.35962835 0.050904177
		 0.35616031 0.58264601 0.27797684 0.065879405 0.4345167 0.067477047 0.43918234 0.56896174
		 0.23941292 0.022097981 0.38570228 0.54291421 0.24390714 0 0.36958396 0.5836997 0.27509481
		 0.049902901 0.35271654 0.57892871 0.29032809 0.04334987 0.33079913 0.57464814 0.30735081
		 0.043391097 0.31739366 0.62470865 0.26585141 0.092775188 0.37286776 0.58163351 0.23255016
		 0.038101129 0.39581791 0.55272818 0.24194777 0.58076185 0.28356123 0.57537168 0.23834823
		 0.58468062 0.27234265 0.58490884 0.27087858 0.017181387 0.33148766 0.54568452 0.28588241
		 0.021494303 0.3301979 0.0027273849 0.36402977 0.62069273 0.3121849 0.09167213 0.318818
		 0.61611837 0.31175154 0.05151752 0.31585541 0.047158524 0.3154166 0.063745968 0.43010435
		 0.060877964 0.42549688 0.057384457 0.42061907 0.049231365 0.41079438 0.55596471 0.29189414
		 0.032995459 0.34143114 0.55599624 0.27352387 0.014456397 0.33919469 0.015661305 0.36687839
		 0.54365468 0.25472146 0.60910875 0.29851288 0.080626778 0.32048836 0.62600279 0.30634922
		 0.093245521 0.3336235 0.56803668 0.28229019 0.04254014 0.35233226 0.56659931 0.26391265
		 0.024316264 0.35252258 0.027710356 0.37138283 0.60506618 0.28524143 0.07608594 0.33786249
		 0.62380791 0.2889429 0.092273362 0.35128859 0.038314492 0.37601092 0.037046552 0.37584123
		 0.56943762 0.25372598 0.60269636 0.2776891 0.07297308 0.35004365 0.62246513 0.27673855
		 0.58354676 0.27145037 0.58111632 0.27281612 0.57442963 0.25681561 0.035499815 0.36889547
		 0.069831118 0.35438207 0.60057676 0.28095481 0.59934092 0.28351265 0.064056315 0.34219846
		 0.59418142 0.29485747 0.59105653 0.30212331 0.054499466 0.3189477 0.58594316 0.2254422
		 0.62852299 0.23393898 0.63157266 0.23758949 0.62064421 0.25915012 0.62360877 0.25601923
		 0.10488971 0.37446904 0.12853201 0.3483454 0.65528691 0.26232111 0.13161094 0.35023883
		 0.65247279 0.24697249 0.13295887 0.3688809 0.63737309 0.26142758 0.64635181 0.26348412
		 0.63350528 0.23996772 0.62247974 0.25998414 0.62609988 0.25948036 0.1300036 0.39914292
		 0.62189704 0.19980739 0.61955154 0.20429313 0.13062665 0.42091119 0.13145578 0.41430604
		 0.12977086 0.40645477 0.29458201 0.053804435 0.29442692 0.055255413 0.29301295 0.054742798
		 0.2932792 0.053385451 0.29169774 0.054062095 0.29208276 0.052862633 0.29420805 0.056893099
		 0.29262045 0.056332592 0.29112181 0.055498995 0.29057685 0.053195294 0.2910665 0.052219614;
	setAttr ".uvst[0].uvsp[500:749]" 0.28969672 0.052164163 0.29027349 0.051465321
		 0.28983408 0.054356769 0.28883231 0.052977659 0.29411826 0.058552064 0.292357 0.058109041
		 0.29055113 0.057246238 0.29430956 0.060135406 0.29249114 0.059971996 0.29011971 0.059628326
		 0.28892887 0.055756409 0.28772593 0.053955983 0.28797346 0.057392746 0.28651366 0.055174872
		 0.29006565 0.049069285 0.28935507 0.048052352 0.29021552 0.047419179 0.29081586 0.04872033
		 0.29138544 0.047100712 0.29184213 0.048588086 0.28834072 0.046827313 0.28938916 0.045835465
		 0.29079381 0.045317441 0.29306814 0.048625648 0.29327011 0.049921513 0.29213288 0.049795419
		 0.29337141 0.051066015 0.29226914 0.050826062 0.29441443 0.048747443 0.29454392 0.050070848
		 0.29461816 0.051288877 0.29338628 0.052190229 0.29225942 0.051810838 0.29463834 0.052508574
		 0.28936911 0.050053388 0.28878492 0.049948875 0.28887713 0.048932802 0.2896007 0.049581598
		 0.28777584 0.049837288 0.28781533 0.048235808 0.28639486 0.047571398 0.28697342 0.045419984
		 0.28453889 0.047338083 0.28481379 0.043755066 0.28644595 0.049849156 0.28483388 0.050227437
		 0.28908405 0.051049169 0.28970551 0.050670154 0.28813869 0.051451676 0.28690606 0.051984705
		 0.28549135 0.052806996 0.27396432 0.052151065 0.27630147 0.049112197 0.27781332 0.052255213
		 0.27577358 0.055122864 0.27923205 0.055233587 0.27744091 0.057922389 0.27888265 0.046630088
		 0.28002489 0.049886655 0.2811192 0.052967701 0.28064367 0.058002129 0.2790316 0.060513321
		 0.28212816 0.060559921 0.28061011 0.062882312 0.28230903 0.055831965 0.28367472 0.058485053
		 0.28163692 0.044820625 0.28231275 0.04816173 0.28302008 0.051257279 0.2839511 0.054080661
		 0.2851713 0.056685794 0.26414695 0.040382173 0.26764834 0.03715026 0.27038118 0.039733443
		 0.26708615 0.043023761 0.27268019 0.042671241 0.26967949 0.045984555 0.27143493 0.034685675
		 0.2739374 0.037205346 0.27593729 0.040106624 0.2746301 0.045855328 0.27195507 0.049077891
		 0.27755356 0.043307003 0.27530083 0.032861207 0.2775439 0.035422813 0.27925321 0.038301401
		 0.27909335 0.031609546 0.28101316 0.034309234 0.28246862 0.037148174 0.28061607 0.041458864
		 0.28363052 0.040202286 0.28271356 0.030840194 0.28430051 0.033690691 0.28547338 0.03648708
		 0.28609589 0.030437011 0.28736991 0.033413231 0.2882846 0.036148086 0.28639725 0.039273642
		 0.28730431 0.041896168 0.28893197 0.03873748 0.289511 0.041134991 0.28913486 0.030179536
		 0.29013178 0.033280868 0.29084015 0.035999242 0.29194292 0.029960543 0.29264322 0.033184282
		 0.29314926 0.03591932 0.29129109 0.038470227 0.29162169 0.040806197 0.29343522 0.038352553
		 0.29361165 0.040700089 0.29274943 0.047044396 0.29421738 0.047127828 0.29235485 0.045131344
		 0.29398125 0.045145299 0.28837124 0.043990161 0.2901327 0.043290276 0.29195932 0.043013558
		 0.29377559 0.042973224 0.29731283 0.060305767 0.2958914 0.060238138 0.2957601 0.058780029
		 0.29731283 0.058897886 0.29577258 0.057238616 0.29731283 0.057431664 0.29731283 0.054347362
		 0.29731283 0.055840388 0.29586217 0.0556123 0.29593471 0.054115582 0.2959761 0.052778099
		 0.29731283 0.052974649 0.29596931 0.051473871 0.29731283 0.051643677 0.29592094 0.050226204
		 0.29731283 0.050375231 0.29584333 0.048875075 0.29731283 0.04900258 0.29731283 0.040664673
		 0.29731283 0.043055978 0.29556367 0.043006059 0.29550013 0.040669654 0.29731283 0.045291986
		 0.29564214 0.045212004 0.29574424 0.047226623 0.29731283 0.047346201 0.29731283 0.029431943
		 0.29731283 0.032846328 0.29499987 0.033038083 0.29464364 0.029721081 0.29731283 0.035737343
		 0.295257 0.035843022 0.29731283 0.038242936 0.29541397 0.038293965 0.29584852 0.066716291
		 0.2950381 0.066589959 0.29478595 0.065133072 0.29571939 0.065092556 0.29412511 0.063579611
		 0.29536805 0.063493602 0.29431412 0.066545568 0.2937333 0.065545902 0.29270104 0.064075261
		 0.29320848 0.06183083 0.29481035 0.061787363 0.2914713 0.06223819 0.29378909 0.067758001
		 0.29260555 0.06673535 0.29126209 0.065279089 0.2929219 0.069668353 0.29145482 0.068447925
		 0.28988948 0.066971868 0.28983119 0.063441157 0.28832796 0.061317902 0.28831461 0.065190688
		 0.28677163 0.063145995 0.29731283 0.061927471 0.29614884 0.061857879 0.29731283 0.06364201
		 0.29640526 0.063556127 0.29731283 0.065261625 0.29655811 0.065164424 0.29731283 0.066973336
		 0.29661137 0.066855788 0.29419723 0.026013562 0.29731283 0.025682066 0.29367375 0.022063876
		 0.29731283 0.021649934 0.29105338 0.026326494 0.28997403 0.022435827 0.29309461 0.018174686
		 0.29731283 0.017721949 0.29255417 0.014523664 0.29731283 0.014093861 0.28876707 0.018555487
		 0.28765482 0.014810897 0.28780472 0.026673976 0.28614914 0.022904607 0.28431761 0.027139682
		 0.28207546 0.023606889 0.28428361 0.019097367 0.28256592 0.015281645 0.27956328 0.020028722
		 0.27720234 0.01620605 0.28051344 0.027862743 0.27774271 0.024717759 0.27649394 0.028966298
		 0.27330616 0.026242204 0.27465329 0.021476869 0.2716296 0.017762095 0.26977393 0.023383349
		 0.2661579 0.01994554 0.26088732 0.038104605 0.26443934 0.034979235 0.26835287 0.032499157
		 0.25734159 0.036083713 0.26088202 0.032938305 0.26478961 0.030358624 0.27240938 0.03051595
		 0.26895401 0.028138723 0.25354293 0.03422679 0.25700006 0.030894294 0.26088551 0.028101899
		 0.24954231 0.032595061 0.25286981 0.028846597 0.2567234 0.025617696 0.26515517 0.025612285
		 0.26115498 0.022639569 0.26826191 0.067188516 0.26559815 0.065373644 0.26646817 0.061132047
		 0.26907796 0.063332774 0.26782292 0.056886341 0.27030089 0.059422247 0.26263353 0.063509956
		 0.26358008 0.058878765 0.26507023 0.054283053 0.26966706 0.05280355 0.27194577 0.055644948
		 0.26711795 0.049909037 0.25940081 0.061641224 0.26041231 0.056591298 0.26203296 0.051671159
		 0.25585297 0.059779808 0.25697744 0.054287482 0.2587578 0.049111154 0.26427299 0.047066413
		 0.2611607 0.044395864 0.27400208 0.058379859 0.2725352 0.061887696 0.27584514 0.060955361;
	setAttr ".uvst[0].uvsp[750:999]" 0.27447292 0.064195819 0.27137589 0.065464936
		 0.27055988 0.068915293 0.2733275 0.067458652 0.272506 0.070586056 0.27754328 0.063314267
		 0.27621698 0.066296697 0.27919075 0.065420307 0.27791241 0.068110034 0.27508682 0.069340855
		 0.27423668 0.072272196 0.27683142 0.070933104 0.27607435 0.07409998 0.25784761 0.042032283
		 0.25433862 0.039997868 0.25531211 0.046671528 0.25179344 0.044582639 0.25061151 0.03828511
		 0.24673781 0.037023861 0.24820818 0.042827152 0.24462661 0.041640233 0.25325972 0.05199153
		 0.2495223 0.049747895 0.25187844 0.05791612 0.2468908 0.055834737 0.24623935 0.04729905
		 0.24326323 0.045685578 0.24429418 0.050640389 0.24260236 0.048302945 0.28270447 0.074773669
		 0.28122559 0.074441314 0.28187481 0.072820276 0.28342289 0.073374458 0.28286752 0.071214125
		 0.2844533 0.072037831 0.27967328 0.074243777 0.28026891 0.072367057 0.28125408 0.070415944
		 0.28410026 0.069592729 0.28572392 0.070706062 0.28545624 0.068081997 0.28712106 0.069478013
		 0.28248468 0.06846717 0.28384173 0.066642761 0.27801403 0.074131086 0.27858549 0.071854807
		 0.27960482 0.069459386 0.28084669 0.067128018 0.2822099 0.064944394 0.22979823 0.029113727
		 0.2321151 0.023258667 0.23817952 0.024111079 0.23557125 0.029676078 0.24362357 0.02523314
		 0.24073049 0.030353582 0.2349375 0.017887942 0.24147677 0.01891668 0.24738556 0.020430675
		 0.24847473 0.026881652 0.24532016 0.031299505 0.25231197 0.022870425 0.23779272 0.012517467
		 0.24536432 0.013617272 0.25223505 0.015317365 0.24026906 0.0075675696 0.24958076
		 0.0078125652 0.25915021 0.0089124944 0.25701198 0.018975822 0.26269907 0.01534337
		 0.28135094 0.01070419 0.28688869 0.010432021 0.28097638 0.0056738793 0.28664944 0.0057690493
		 0.27545044 0.011490759 0.27491596 0.0060227136 0.28172198 0.00075318501 0.28701761
		 0.0014332095 0.27603206 0.00035375287 0.26915842 0.012942166 0.26810727 0.006970604
		 0.26968074 0.00041215838 0.2625435 0.00061184372 0.29217973 0.010373616 0.29731283
		 0.010072612 0.29205841 0.0060867136 0.29731283 0.0059673209 0.29217225 0.0020242732
		 0.29731283 0.0023107673 0.28891632 0.071083978 0.28744423 0.072065189 0.28603542
		 0.073066503 0.29064995 0.072896518 0.28912312 0.073753908 0.28755933 0.07439182 0.28492284
		 0.074115902 0.284123 0.075284563 0.28630316 0.075077012 0.28541899 0.075968459 0.29216442
		 0.074804164 0.29054677 0.07567323 0.28891677 0.07600984 0.29379028 0.077060647 0.29159135
		 0.077648573 0.2898761 0.077698857 0.28748429 0.07622993 0.28651926 0.076796219 0.28838053
		 0.077515289 0.28734988 0.077730767 0.27830952 0.079142585 0.27799982 0.078616872
		 0.27878243 0.078429602 0.27891818 0.079211257 0.27975792 0.078367889 0.27980497 0.079282202
		 0.27750716 0.077712454 0.27847138 0.077399582 0.27963167 0.077267401 0.28083137 0.078378268
		 0.28082013 0.079354443 0.28194594 0.078447312 0.28190124 0.079422988 0.28084272 0.077260204
		 0.2820572 0.077362508 0.27686277 0.076394327 0.27810389 0.076002091 0.27952626 0.075900897
		 0.28092465 0.075947382 0.28227851 0.076129295 0.26938781 0.080841325 0.26837787 0.077794708
		 0.27065131 0.078252055 0.27157903 0.080862656 0.27250588 0.078656897 0.27333754 0.080813415
		 0.26787731 0.074422069 0.27019164 0.075336576 0.2721031 0.076203495 0.27404109 0.078976654
		 0.27482891 0.080657005 0.2752836 0.079240523 0.27601895 0.080511734 0.27366602 0.077017978
		 0.27494931 0.077761881 0.26785049 0.070866033 0.27015731 0.0721986 0.27209738 0.073507749
		 0.27373391 0.074808903 0.27510998 0.07609947 0.28358206 0.076461099 0.28324252 0.077566192
		 0.28477958 0.076925568 0.28433618 0.077856131 0.28305185 0.078562036 0.28298298 0.079479061
		 0.28407183 0.07871592 0.2839835 0.079518594 0.2858074 0.077494629 0.28527769 0.078212649
		 0.28659421 0.078149691 0.28601223 0.078645341 0.28493622 0.078893535 0.28480694 0.079533473
		 0.28559506 0.079148062 0.28533962 0.079534762 0.26677448 0.080793612 0.26570663 0.077303611
		 0.26519409 0.073467046 0.26383412 0.080698811 0.26270807 0.076765478 0.26218495 0.072495244
		 0.26517504 0.06949117 0.26217335 0.068082184 0.26062426 0.080563128 0.25943884 0.076210074
		 0.25890091 0.071547657 0.25722572 0.08049199 0.25595582 0.075781442 0.25536624 0.070735022
		 0.2589083 0.066665202 0.2553463 0.065332085 0.27795249 0.088877864 0.2759864 0.090295754
		 0.27312091 0.088599786 0.27536532 0.087491438 0.27051163 0.086451143 0.27295414 0.085690521
		 0.27355832 0.091793336 0.27046952 0.089762367 0.26772177 0.087221853 0.26838344 0.083850928
		 0.27093214 0.083478913 0.2655037 0.084195219 0.27095094 0.093405396 0.26763856 0.091008864
		 0.26472953 0.088007309 0.2682921 0.095190942 0.26473337 0.092341363 0.26162031 0.088815406
		 0.26238346 0.084464557 0.25910589 0.084769741 0.25530714 0.10275242 0.25108147 0.097398788
		 0.25498059 0.096204422 0.25916693 0.10086937 0.25849298 0.094917789 0.2625246 0.098925382
		 0.24792665 0.091822974 0.25159314 0.09107729 0.25506532 0.090302028 0.26171345 0.0936336
		 0.26552042 0.09702801 0.25840548 0.089566611 0.24560897 0.087206103 0.24900311 0.086388431
		 0.25234348 0.085640661 0.24402301 0.083603173 0.24712905 0.082309641 0.25030491 0.08115954
		 0.25574249 0.085157804 0.25372627 0.080582373 0.28146878 0.083227962 0.2810283 0.08442127
		 0.27917019 0.083909951 0.27985054 0.082896031 0.27745649 0.083107769 0.27835089 0.082331523
		 0.28029296 0.086049862 0.2781747 0.085297786 0.27625355 0.084116951 0.27598843 0.082033284
		 0.27705774 0.081541516 0.27460891 0.082630493 0.27933484 0.087547071 0.27700409 0.086444005
		 0.27484709 0.084953129 0.27300701 0.083099343 0.27692541 0.080283947 0.27786106 0.081029385
		 0.27900305 0.081601515 0.27758142 0.079950482 0.27843398 0.080473743 0.27945715 0.08085762
		 0.28031451 0.081994362 0.28171861 0.08220426 0.28061071 0.081116259 0.28184181 0.081254773
		 0.27803284 0.079523325 0.27879047 0.07987228 0.27971533 0.08009465 0.28076452 0.080249645;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.28188166 0.080339588 0.22851151 0.053914916
		 0.23373273 0.050593793 0.23547746 0.05357229 0.23250443 0.056760125 0.23694827 0.055919018
		 0.23459333 0.05857807 0.23747912 0.049158372 0.23867725 0.05201022 0.23966448 0.054707814
		 0.23764579 0.058197696 0.23576611 0.060229842 0.23783363 0.060773075 0.23645456 0.06141879
		 0.23987724 0.057543553 0.23975615 0.060427558 0.24050008 0.048557345 0.24163903 0.0515249
		 0.24263681 0.054751094 0.24230717 0.057807423 0.24173015 0.060631365 0.24443853 0.059554122
		 0.24318942 0.061203737 0.23380387 0.035507284 0.22830236 0.035306491 0.23285232 0.041170403
		 0.22753315 0.041422348 0.23860416 0.035774168 0.23730351 0.041028451 0.23275881 0.046311136
		 0.22753395 0.047391448 0.23693936 0.045553088 0.24283062 0.036223155 0.2411094 0.041111816
		 0.24031401 0.045274589 0.28063941 0.089856617 0.27895769 0.09158019 0.27684417 0.093364507
		 0.28350842 0.09040083 0.28207314 0.092500962 0.28023872 0.094626434 0.27455881 0.095227525
		 0.27219093 0.097282045 0.27828071 0.096720181 0.27620593 0.098935343 0.28648353 0.090507738
		 0.28528547 0.093045741 0.28365031 0.09563297 0.28936708 0.090358168 0.28840593 0.093291469
		 0.28699681 0.096295908 0.28191224 0.09804298 0.28011355 0.10042857 0.28547305 0.099059723
		 0.28395313 0.10166767 0.28709295 0.081872404 0.2880252 0.083265513 0.28653696 0.084118307
		 0.28601825 0.082633577 0.28477761 0.084538758 0.28465465 0.083110712 0.2894915 0.085265696
		 0.28698143 0.086316504 0.28471553 0.086649351 0.28292 0.084635645 0.28310251 0.083305664
		 0.28248921 0.086494304 0.28965223 0.087845251 0.28701445 0.088324606 0.2843565 0.088526808
		 0.28178063 0.088251881 0.28313488 0.082233161 0.28445253 0.082054622 0.28308055 0.08126682
		 0.28423685 0.081140667 0.28557745 0.081647016 0.28644922 0.081055582 0.28520796 0.080864504
		 0.28596228 0.080450073 0.28301147 0.080363445 0.28405547 0.080311865 0.28492984 0.080172673
		 0.28558794 0.079918951 0.29399735 0.079813443 0.29211405 0.079599567 0.29039934 0.079318352
		 0.29412085 0.081799358 0.29228985 0.081475176 0.29057992 0.081040271 0.28892314 0.078876562
		 0.28786969 0.07874389 0.28911692 0.080302946 0.28803039 0.079776503 0.29420975 0.083572365
		 0.29229307 0.083340459 0.29038882 0.082907587 0.29423556 0.085373826 0.2921319 0.085341066
		 0.28887323 0.081814975 0.28777751 0.080850914 0.28892043 0.09972585 0.28769228 0.10250202
		 0.29207972 0.100146 0.29118881 0.10298561 0.29016197 0.096725404 0.29297349 0.097025245
		 0.29482558 0.10045327 0.29434606 0.10332142 0.29731283 0.10066403 0.29731283 0.10354237
		 0.2952888 0.097264148 0.29731283 0.097464204 0.29125854 0.093453526 0.29370674 0.093615159
		 0.29196912 0.090262994 0.29416463 0.090294413 0.29565245 0.093786068 0.29731283 0.093955085
		 0.29587895 0.090408757 0.29731283 0.090557665 0.29731283 0.077978656 0.29731283 0.080334052
		 0.29571226 0.080070369 0.29577723 0.077624656 0.29731283 0.08227428 0.29577747 0.082048602
		 0.29731283 0.083926298 0.29585806 0.083759628 0.29731283 0.085657999 0.29591796 0.085508168
		 0.29731283 0.06909389 0.2965554 0.068916827 0.2957485 0.068676069 0.29731283 0.07192219
		 0.29637638 0.071668155 0.29537943 0.071256742 0.29731283 0.075012885 0.29609644 0.074710533
		 0.29479921 0.074079625 0.22975197 0.079599991 0.2238436 0.080511361 0.22290827 0.07403665
		 0.22777498 0.072905615 0.22213198 0.06765078 0.22700456 0.066918194 0.21730702 0.082143269
		 0.21654028 0.075491384 0.21579735 0.068894751 0.22161938 0.061204657 0.22704017 0.060826618
		 0.22147733 0.054568931 0.21517368 0.062198535 0.21459123 0.055452887 0.20982763 0.084224358
		 0.20899919 0.077248648 0.20838141 0.070490763 0.20184727 0.08680065 0.20090908 0.079432026
		 0.20034115 0.072353527 0.20776163 0.063521698 0.20733032 0.056505047 0.20004614 0.065071344
		 0.20006728 0.057653725 0.23082112 0.071754724 0.23220976 0.076302238 0.23270459 0.070887983
		 0.23367316 0.074383765 0.23033705 0.066746049 0.23245801 0.066829786 0.23397328 0.070160069
		 0.2346268 0.072861783 0.23527442 0.069619477 0.23537722 0.071686663 0.23392262 0.066821851
		 0.23540941 0.066678725 0.23076837 0.061561856 0.23304084 0.062492594 0.23450758 0.063240185
		 0.23588462 0.063614286 0.22123984 0.048165787 0.22133556 0.041710559 0.21427177 0.048779413
		 0.21443193 0.0419847 0.22203316 0.035122912 0.22339006 0.028585002 0.21523818 0.034975611
		 0.2165 0.028061938 0.20724294 0.049397465 0.20750494 0.042237505 0.20039201 0.050091073
		 0.20093736 0.04249461 0.20830013 0.034901708 0.20949984 0.027555652 0.20175655 0.034875769
		 0.20268558 0.027288523 0.22550774 0.022453224 0.22812304 0.016915094 0.21843038 0.021472996
		 0.2210954 0.015396365 0.23077577 0.011998272 0.23192272 0.0076937256 0.22565173 0.011944723
		 0.22515169 0.0088785579 0.21094353 0.02049252 0.21437174 0.016070426 0.20328155 0.017596347
		 0.21213049 0.013230997 0.21889924 0.010773786 0.23682606 0.069562115 0.23647261 0.072316885
		 0.23854376 0.069726452 0.23804843 0.072845913 0.23713656 0.066558719 0.23900801 0.066569969
		 0.24026549 0.069969788 0.2397145 0.07302206 0.24189121 0.070601486 0.24104615 0.072914772
		 0.24088149 0.066778697 0.24275737 0.067299053 0.23754266 0.063531838 0.23942646 0.063435748
		 0.24133782 0.063570939 0.24319634 0.06376116 0.19544666 0.035074286 0.19617738 0.027392423
		 0.18944946 0.035338957 0.19010903 0.027662933 0.19460151 0.042890292 0.18849979 0.043289848
		 0.1838641 0.03545478 0.18457474 0.027831325 0.17855622 0.035364468 0.17942649 0.027876699
		 0.18276761 0.043450311 0.17721066 0.043313213 0.19377214 0.050856311 0.18746199 0.051483218
		 0.1930797 0.058831852 0.1864799 0.059764314 0.18149067 0.05176596 0.17560513 0.051655177
		 0.18021774 0.06026648 0.17399819 0.060290761 0.19264926 0.066702269 0.18570291 0.068044618
		 0.19259529 0.074361511 0.18531539 0.076141655 0.17915988 0.06889949 0.17266382 0.069192871;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.17856331 0.077429585 0.17190026 0.078113057
		 0.19283623 0.081833482 0.18531375 0.084001496 0.19375204 0.08942847 0.18612827 0.091876335
		 0.1786363 0.085571609 0.17191079 0.086679474 0.17935947 0.093843624 0.17276789 0.095371932
		 0.2407482 0.084520005 0.2400545 0.081644617 0.24299982 0.080531284 0.23965795 0.078925498
		 0.24221706 0.077710174 0.23734914 0.084465228 0.23715425 0.081445605 0.23728977 0.078671962
		 0.23953038 0.076094188 0.24153212 0.075000778 0.23757976 0.075943932 0.23390897 0.082906045
		 0.23447797 0.079647765 0.23526761 0.077093534 0.23588745 0.0747803 0.2110775 0.09167622
		 0.20338309 0.094711155 0.21301819 0.099789232 0.20579103 0.10328723 0.21820769 0.089145415
		 0.21960503 0.096750744 0.21597683 0.108441 0.2094267 0.11224682 0.22001077 0.11657995
		 0.21432813 0.12049982 0.22181301 0.10499488 0.22508262 0.11300744 0.22441982 0.087313145
		 0.2253083 0.094526216 0.22979535 0.086582765 0.23050454 0.093237005 0.22698101 0.10237936
		 0.22985862 0.11022322 0.23202586 0.10063242 0.23492961 0.10830555 0.23427562 0.087250136
		 0.23528126 0.092837691 0.23823686 0.087936848 0.23972712 0.092739388 0.23706359 0.099724188
		 0.24033809 0.1070314 0.2419793 0.099114992 0.24573769 0.10584533 0.24201843 0.087843649
		 0.24396417 0.092417724 0.24670905 0.098379083 0.2508193 0.10442521 0.26967779 0.099539816
		 0.26696402 0.10199377 0.27394891 0.10141905 0.27152085 0.10427465 0.26393029 0.10456164
		 0.26040593 0.10710819 0.26883614 0.10737291 0.2657218 0.11054463 0.27819785 0.10302927
		 0.27612627 0.10606118 0.2824406 0.10440961 0.2808094 0.10756061 0.27378401 0.10951246
		 0.27101526 0.11324113 0.27887654 0.11122479 0.27644128 0.11543576 0.25691453 0.13163553
		 0.25153688 0.12690926 0.25766733 0.12413824 0.26316658 0.12842096 0.26313758 0.12085247
		 0.26870453 0.1244979 0.2455999 0.12156729 0.25176546 0.1192612 0.25733387 0.11661905
		 0.26757011 0.11711323 0.27316204 0.12000117 0.26195979 0.11366957 0.23966016 0.11538497
		 0.24556661 0.1136236 0.25126782 0.11169264 0.25624996 0.10949814 0.28402221 0.11242217
		 0.28203827 0.11712946 0.28886786 0.11311638 0.28748527 0.11829173 0.28540942 0.10852166
		 0.28970274 0.10903303 0.29321223 0.11329247 0.29247573 0.11895853 0.29731283 0.11235675
		 0.29731283 0.11909053 0.29360691 0.10927417 0.29731283 0.10935391 0.28655702 0.10532073
		 0.29041874 0.10580415 0.29395163 0.10611793 0.29731283 0.10628559 0.27289814 0.14854012
		 0.26943883 0.14457537 0.27740544 0.13937716 0.28164169 0.14254925 0.2846365 0.13295864
		 0.28954801 0.1351949 0.26584423 0.14046572 0.27304712 0.13602185 0.27953517 0.13052657
		 0.29057696 0.12601428 0.29731283 0.12755293 0.28470638 0.12439769 0.26171619 0.13609655
		 0.2683031 0.13232768 0.27415037 0.12770773 0.27886599 0.12243956 0.23418231 0.11738349
		 0.22940703 0.12002797 0.23963475 0.12369915 0.23446314 0.1260604 0.22486642 0.12343959
		 0.22006121 0.12731458 0.23003224 0.12896948 0.2259424 0.13247959 0.24530397 0.12921706
		 0.23959772 0.13130656 0.25039199 0.13412952 0.24406967 0.13611241 0.2348292 0.13353403
		 0.23120363 0.13620408 0.23868619 0.1376625 0.23497073 0.13864851 0.19544326 0.09773317
		 0.1878785 0.10053425 0.19822711 0.10670611 0.19098562 0.10985053 0.18122771 0.10284218
		 0.1748129 0.1048327 0.18457539 0.11258662 0.17839085 0.11508846 0.20272583 0.11597174
		 0.19606942 0.11949562 0.20848148 0.12447411 0.20266882 0.12839243 0.18998222 0.12278108
		 0.18401158 0.12597089 0.19717747 0.13227536 0.19175175 0.1361935 0.24105909 0.14207943
		 0.23504403 0.14203325 0.24272102 0.14701249 0.23510554 0.14677842 0.24766552 0.14097397
		 0.25040746 0.14597593 0.24382812 0.15218303 0.23496699 0.15204051 0.24453448 0.15747517
		 0.23448338 0.15748052 0.25243098 0.15096265 0.25411397 0.15598695 0.254715 0.13897479
		 0.25823465 0.14377497 0.26103994 0.14842646 0.26360223 0.15301915 0.21520588 0.13149771
		 0.21040952 0.13585389 0.2222413 0.13668412 0.21882649 0.14141336 0.2058222 0.14032966
		 0.20131695 0.14490557 0.21555434 0.14639233 0.21221079 0.15148836 0.22891514 0.14010477
		 0.22716744 0.14495802 0.2254817 0.15024655 0.22361052 0.15576845 0.28667912 0.059092224
		 0.28519928 0.060921915 0.28367487 0.062882006 0.2852689 0.064915009 0.28687158 0.066695757
		 0.28853413 0.068350047 0.29340282 0.072949015 0.29424587 0.070584588 0.29191625 0.071531795
		 0.29483765 0.06832736 0.29027027 0.069975935 0.29731283 0.087787822 0.29595092 0.087649189
		 0.29428825 0.087530531 0.20375027 0.0099870944 0.19652013 0.019397326 0.19607034
		 0.012002637 0.19030733 0.020251891 0.18978713 0.013038627 0.18474714 0.020566542
		 0.1843767 0.013343074 0.17970268 0.020753872 0.17931877 0.013609527 0.25158921 0.070274971
		 0.25149524 0.064219914 0.2474571 0.070664503 0.24780703 0.063530058 0.27624503 0.07937067
		 0.27693978 0.079291858 0.27593824 0.07834354 0.27656204 0.078668579 0.27613151 0.077289477
		 0.27687281 0.078223772 0.28648573 0.079947658 0.28703114 0.08032988 0.28677353 0.079541214
		 0.28726426 0.079586834 0.29214302 0.087573327 0.27744746 0.078970872 0.25232795 0.075720884
		 0.24882801 0.076497495 0.25277528 0.001253382 0.24165307 0.0028196946 0.2433286 0.072297834
		 0.24468552 0.075024754 0.24471533 0.068391606 0.24515167 0.063622646 0.28605983 0.079528369
		 0.28650954 0.079130106 0.2870959 0.078861557 0.24582192 0.078505903 0.23253188 0.0042382102
		 0.29081869 0.05044698 0.2913717 0.050601542 0.29132184 0.051374335 0.29062116 0.050864302
		 0.290108 0.050244898 0.29053438 0.049893726 0.29119614 0.049760193 0.22458453 0.0057208491
		 0.21769196 0.0072031193 0.21066202 0.0086505925 0.30001467 0.05369918 0.30130044
		 0.053231142 0.30156752 0.054576557 0.3001712 0.055142596 0.30248222 0.052664116 0.30286586
		 0.053847469 0.30196053 0.056149326;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.30039167 0.05676996 0.30344045 0.05526064
		 0.30348668 0.051984277 0.30397305 0.052940398 0.30426994 0.05120182 0.30484098 0.051878471
		 0.30471212 0.054072607 0.30569744 0.052659195 0.3022269 0.057912927 0.30048347 0.05842308
		 0.30401194 0.056983728 0.30209857 0.05977704 0.30029598 0.060011033 0.30444726 0.059345093
		 0.30561233 0.055436652 0.30679592 0.053595591 0.3065666 0.057035245 0.30800027 0.054768801
		 0.30446988 0.048801668 0.30372936 0.04848044 0.30431551 0.047159363 0.30516621 0.047760695
		 0.3027159 0.048385698 0.30316073 0.046883568 0.30512333 0.045548417 0.30616042 0.046501596
		 0.30373675 0.045081485 0.30243039 0.049602438 0.30130795 0.049770333 0.30150536 0.048468266
		 0.30229637 0.050636947 0.30120754 0.050917666 0.30005014 0.04996701 0.30017623 0.048639666
		 0.29997697 0.051186945 0.30230558 0.051620256 0.30119342 0.052041262 0.29995763 0.052406635
		 0.30515859 0.049759086 0.30492947 0.04929639 0.3056393 0.048622515 0.30573326 0.049633484
		 0.30668384 0.04788876 0.30672821 0.04948581 0.30750436 0.045048896 0.30808389 0.047175407
		 0.30962798 0.04331407 0.30991599 0.046877977 0.30804157 0.049450401 0.30963689 0.049771447
		 0.30482817 0.050387099 0.30544242 0.05074282 0.30637598 0.051110528 0.30759615 0.051598426
		 0.30899924 0.05236889 0.32040384 0.051325154 0.31863707 0.054348405 0.31659254 0.051556129
		 0.31806418 0.048372537 0.31700712 0.057197548 0.31520972 0.054574896 0.31438911 0.049267743
		 0.31549618 0.04598302 0.31332535 0.052378111 0.31545055 0.059837662 0.31383124 0.057385862
		 0.31390208 0.062256936 0.31237805 0.059990313 0.31216621 0.05527699 0.31083018 0.057972621
		 0.3121188 0.047624271 0.31276709 0.044269957 0.31143546 0.050736487 0.31052947 0.053586122
		 0.30933788 0.056229185 0.32997513 0.039302107 0.32710943 0.042017836 0.32381719 0.03884986
		 0.32647815 0.036199789 0.32458159 0.045044657 0.32158235 0.041842192 0.32028711 0.036446754
		 0.32271913 0.033868119 0.31834772 0.039393399 0.32236379 0.048197385 0.31968796 0.045073487
		 0.31678271 0.042629126 0.31672364 0.034786008 0.31889966 0.032173682 0.31506929 0.037701242
		 0.31330803 0.033785921 0.31516734 0.031045349 0.3118996 0.036655225 0.31375203 0.040887535
		 0.31077555 0.039733507 0.31007817 0.033272505 0.31161404 0.030390225 0.30894238 0.036092877
		 0.30706438 0.033092923 0.30829835 0.030092111 0.30617791 0.035846341 0.30804729 0.038899232
		 0.30716467 0.041544013 0.30555055 0.038448893 0.30498818 0.040860362 0.30435345 0.033049949
		 0.30531994 0.02992925 0.30366609 0.035782713 0.30189028 0.033035867 0.30256933 0.029798303
		 0.30139917 0.035781421 0.30322942 0.038262546 0.3029089 0.040605593 0.30112189 0.038219634
		 0.30095175 0.040569872 0.30181515 0.04687693 0.30036739 0.047014091 0.30219746 0.044951573
		 0.30059493 0.045024429 0.30612019 0.043670464 0.30438149 0.043033604 0.30258143 0.042821988
		 0.30079332 0.04284652 0.29885522 0.058715906 0.2987248 0.060177825 0.29884154 0.05717646
		 0.29867771 0.054062095 0.29875097 0.055555005 0.29863527 0.052726883 0.29864171 0.051422905
		 0.29868886 0.05017383 0.29876509 0.048820358 0.29909486 0.040606391 0.29903397 0.042943474
		 0.29895905 0.045151263 0.29886052 0.047168896 0.29992563 0.029642511 0.29958025 0.032966707
		 0.29933068 0.035776872 0.29917866 0.038230211 0.29876971 0.066647373 0.29889646 0.065018967
		 0.29982597 0.065017059 0.29957446 0.066483594 0.29924592 0.063405991 0.30048168 0.063438572
		 0.30087277 0.065384835 0.30029517 0.066407852 0.30189732 0.063876681 0.29979941 0.061679281
		 0.30139041 0.061658069 0.30311534 0.06199836 0.30199498 0.066530012 0.30081797 0.067598648
		 0.30333003 0.065025426 0.30314466 0.06820102 0.30168253 0.069478065 0.30469894 0.066668153
		 0.30474579 0.063138805 0.30623111 0.06096581 0.30625936 0.064832255 0.30778238 0.062735252
		 0.29846945 0.061806787 0.29821444 0.063515484 0.29806331 0.065130122 0.29800943 0.066823266
		 0.30035684 0.025925955 0.30085921 0.021969505 0.30342898 0.026148509 0.30446479 0.022245977
		 0.30141044 0.018084494 0.30191806 0.014453332 0.30561477 0.018366437 0.30666026 0.014641582
		 0.30660486 0.026400944 0.30819491 0.022611044 0.31001601 0.026762752 0.31217352 0.023195527
		 0.30997539 0.018792307 0.31159416 0.014980764 0.31457904 0.019585822 0.31681433 0.0157452
		 0.31374174 0.027369371 0.3164157 0.024172561 0.31768656 0.028345294 0.32077399 0.025552835
		 0.31938654 0.020877814 0.32226676 0.017121051 0.32418549 0.022621002 0.32765195 0.019117657
		 0.32960722 0.03394755 0.33315557 0.036940493 0.32572097 0.031605795 0.33307508 0.031816363
		 0.33661589 0.034827631 0.32919055 0.029377474 0.32170975 0.029760614 0.32506675 0.027302602
		 0.33685488 0.02967485 0.34032285 0.032872152 0.33298427 0.027026314 0.34087127 0.027524667
		 0.34422877 0.031135846 0.33701602 0.024445096 0.3287487 0.024689602 0.33260542 0.021632167
		 0.32622302 0.066127069 0.325369 0.062310245 0.32793993 0.060028989 0.32885435 0.064227536
		 0.32411286 0.058452714 0.32654685 0.055842664 0.33078393 0.057688709 0.33178326 0.062272068
		 0.32924825 0.05315933 0.32244053 0.054741692 0.3246713 0.051834818 0.32716441 0.048869539
		 0.3339009 0.055307914 0.33497587 0.060305152 0.33222586 0.050461244 0.3372775 0.052904744
		 0.33847761 0.058337562 0.33543381 0.047810249 0.32994479 0.045950126 0.33298483 0.043197013
		 0.32042563 0.057537902 0.32191718 0.060987022 0.31861886 0.060170084 0.32001302 0.063356437
		 0.32310551 0.06451533 0.32395297 0.067928664 0.32118371 0.066572241 0.32203144 0.069663927
		 0.3169525 0.062582716 0.3182981 0.065513626 0.3153336 0.064742185 0.31662714 0.06738285
		 0.31944993 0.068512164 0.32032186 0.071407549 0.31772509 0.070162766 0.3185046 0.073296927
		 0.33622077 0.040746257 0.33964941 0.038619068 0.3388055 0.045276619 0.34224987 0.043092009
		 0.34329584 0.036806405 0.347092 0.035439163 0.34576124 0.041239507 0.34927705 0.039953113;
	setAttr ".uvst[0].uvsp[1750:1999]" 0.34092849 0.050502867 0.34459418 0.048155025
		 0.34239954 0.056356262 0.34731853 0.054128308 0.34779868 0.045619983 0.35071078 0.043926347
		 0.349794 0.048880666 0.35142091 0.046505533 0.31189495 0.074207872 0.31117168 0.072836146
		 0.3127124 0.07222639 0.31336832 0.073822208 0.31013861 0.071538128 0.31171495 0.070657618
		 0.31431049 0.071716234 0.31491551 0.073569037 0.31331727 0.069802806 0.30886531 0.070253089
		 0.31047708 0.069081724 0.30746627 0.069075629 0.30911723 0.067620225 0.31207919 0.067899778
		 0.31071582 0.066125162 0.31598505 0.071144842 0.3165696 0.073397137 0.31495255 0.068789385
		 0.3136999 0.066504985 0.31232816 0.064371526 0.36359349 0.027108451 0.35792008 0.027832739
		 0.3551966 0.022408159 0.3611418 0.021389507 0.35285437 0.028654844 0.34987152 0.023677098
		 0.35180342 0.017376434 0.35819992 0.016171006 0.34604451 0.019044187 0.34835702 0.029727355
		 0.34514442 0.02545041 0.3412762 0.021598967 0.34782514 0.012265954 0.35522071 0.010962097
		 0.34114534 0.014141446 0.34350359 0.0066790683 0.35262024 0.0061662067 0.33419123
		 0.0080364738 0.3365714 0.017891755 0.33091781 0.014474727 0.30734703 0.010316317
		 0.31269059 0.01043903 0.3074984 0.0057406453 0.31293076 0.0054898709 0.31841615 0.011046077
		 0.31878281 0.0056556193 0.3070347 0.0015438725 0.31203887 0.00072785548 0.31749177
		 0.00015947774 0.32456136 0.01229448 0.32540962 0.0063887006 0.32364139 1.9734909e-05
		 0.33058745 0 0.30225447 0.010354004 0.30233911 0.0061815144 0.30221003 0.0021627247
		 0.30715623 0.071676023 0.30568334 0.07074824 0.30856541 0.072625019 0.3054862 0.073430039
		 0.30395809 0.072628528 0.30704933 0.074008994 0.30967912 0.073632613 0.3104811 0.074770719
		 0.30830514 0.074645847 0.30918944 0.075503178 0.30406937 0.075407833 0.30245033 0.074598081
		 0.30569908 0.075681962 0.30303004 0.077428289 0.30082995 0.076922558 0.30474532 0.077411935
		 0.30712974 0.075845562 0.30809337 0.076373607 0.306238 0.077168234 0.30726662 0.077341788
		 0.31630829 0.078412637 0.31570134 0.078503378 0.31582913 0.07771761 0.31661519 0.077876046
		 0.31481281 0.078606784 0.31485328 0.077691421 0.31613344 0.076677382 0.31709939 0.076954842
		 0.31497332 0.076587498 0.31379709 0.078716345 0.31378013 0.077741168 0.31271723 0.07882455
		 0.31266585 0.07785096 0.31376356 0.076624326 0.31255132 0.076770894 0.31649232 0.075268514
		 0.31773445 0.075615503 0.3150714 0.075218596 0.31367594 0.075315677 0.31232524 0.075546771
		 0.3252503 0.079787567 0.32305905 0.079886794 0.32395771 0.077248462 0.32622516 0.07671193
		 0.32130119 0.079900622 0.3221086 0.077718355 0.32438606 0.074322782 0.32668686 0.073329203
		 0.32248592 0.075255297 0.3198092 0.079798199 0.3205781 0.07809227 0.31861904 0.079696268
		 0.31933957 0.078400284 0.32093281 0.076123692 0.31965816 0.076912113 0.32438773 0.071190275
		 0.32667369 0.069780678 0.32246593 0.072564833 0.32084495 0.073921315 0.31948242 0.075258493
		 0.31102508 0.075926349 0.31136799 0.077018097 0.30983028 0.076435395 0.31027535 0.077348672
		 0.31156251 0.078006379 0.31163406 0.078920528 0.31054172 0.078198202 0.31063443 0.078997366
		 0.30880496 0.077043802 0.30933511 0.077740788 0.30802149 0.077729903 0.30860254 0.078202195
		 0.30967784 0.078408279 0.30980909 0.079043292 0.30901954 0.078688316 0.30927598 0.079065114
		 0.32888865 0.076128863 0.32786372 0.079647884 0.32935411 0.072284058 0.33187842 0.075489223
		 0.33080363 0.079451025 0.33234549 0.071213327 0.32932508 0.068318382 0.33230007 0.066813551
		 0.33513713 0.074825123 0.33401236 0.079205357 0.33561015 0.070159875 0.33861038 0.07428208
		 0.3374103 0.079019256 0.33912492 0.069234736 0.33553535 0.065294519 0.33906502 0.063851535
		 0.31676129 0.088123813 0.31934252 0.086641237 0.32160375 0.087665424 0.31874809 0.089465536
		 0.32173815 0.084754616 0.32419306 0.085425913 0.32427597 0.088730246 0.32120085 0.090871386
		 0.32699791 0.086095788 0.32373637 0.082474522 0.32629171 0.082755119 0.32917917 0.082997225
		 0.32713178 0.089873083 0.32383856 0.092386059 0.33000693 0.086773723 0.33006507 0.091099046
		 0.32653296 0.094072267 0.33313444 0.087470531 0.33230659 0.08315713 0.33559245 0.083348095
		 0.33969802 0.10114843 0.33578807 0.099408366 0.33990869 0.094606884 0.3438389 0.095661744
		 0.33238256 0.097590171 0.33636451 0.093447618 0.34321445 0.089377746 0.34689721 0.089995123
		 0.33972463 0.088724717 0.32934323 0.095805496 0.33311397 0.092280939 0.33636707 0.088107333
		 0.34572563 0.084617019 0.34913173 0.085316598 0.34237316 0.083985142 0.34752819 0.080492243
		 0.35065055 0.081675909 0.34433755 0.079452567 0.33896497 0.083619647 0.34091011 0.078991711
		 0.31318602 0.082612485 0.31480479 0.082220122 0.31549704 0.083208039 0.31363836 0.08378908
		 0.31630239 0.0816001 0.31720623 0.082342349 0.31650722 0.084556833 0.31438994 0.085388899
		 0.31841967 0.083305292 0.31758997 0.080762878 0.31866509 0.081214756 0.32004982 0.081760436
		 0.31769073 0.085657075 0.31536379 0.086847804 0.31983593 0.084087871 0.3216567 0.08217039
		 0.31678069 0.080280878 0.31770951 0.079501867 0.3156414 0.080894813 0.31619993 0.079746805
		 0.31704843 0.079192817 0.31517792 0.08016818 0.31433094 0.08133623 0.31292349 0.081598319
		 0.31402323 0.080469556 0.3127923 0.080653563 0.31583527 0.079159126 0.31659171 0.078782685
		 0.31491098 0.079415426 0.31386143 0.079608969 0.31274161 0.079740167 0.36550081 0.051643185
		 0.36160979 0.054588791 0.35859522 0.051517766 0.36025608 0.048506625 0.35957745 0.056461394
		 0.357189 0.053895548 0.3553918 0.050067097 0.35651428 0.047197051 0.35447013 0.052779879
		 0.35844815 0.058142181 0.35654294 0.056183755 0.35778922 0.059347484 0.3564074 0.058751192
		 0.35431597 0.055606522 0.3544918 0.058471281 0.35244507 0.049677934 0.35350868 0.046693351
		 0.35152152 0.052917775 0.35190725 0.055947304 0.35253409 0.058738466 0.34982273 0.057753202
		 0.35109428 0.05935492 0.36523992 0.033192154;
	setAttr ".uvst[0].uvsp[2000:2249]" 0.35981715 0.033551436 0.36616144 0.039226793
		 0.36090097 0.039133526 0.35508862 0.033957571 0.35650015 0.039125226 0.36631265 0.045143332
		 0.36111879 0.044227839 0.35696617 0.043601915 0.35092929 0.034528412 0.35274175 0.039322332
		 0.35362047 0.043428238 0.31577623 0.090862051 0.31407261 0.089205302 0.31791708 0.092564158
		 0.31265226 0.091903143 0.31119439 0.089861162 0.31451556 0.093955509 0.32023537 0.094339758
		 0.32264164 0.096304148 0.31650665 0.095972404 0.31862071 0.098106794 0.30942526 0.092573948
		 0.30820444 0.090085559 0.31108963 0.095094666 0.30628482 0.092943251 0.30530399 0.090050884
		 0.30772132 0.095889106 0.31286117 0.097434878 0.31469816 0.099748775 0.30927747 0.098590694
		 0.31083366 0.10113668 0.30753812 0.081474252 0.30861798 0.082192212 0.30811036 0.083698951
		 0.30661327 0.082906544 0.30998999 0.082616054 0.30987728 0.084049881 0.30767915 0.08591596
		 0.30515519 0.084966846 0.30995584 0.086158626 0.31154633 0.082751863 0.31174204 0.084075145
		 0.31218967 0.08591713 0.30765852 0.087924987 0.30500549 0.087551437 0.31032988 0.088021509
		 0.3129141 0.087646358 0.31150588 0.081680268 0.31018025 0.081551597 0.31154853 0.080711849
		 0.31039277 0.080629028 0.30905375 0.081187449 0.30817625 0.080630444 0.30941498 0.080390126
		 0.3086589 0.08000496 0.3116135 0.079805829 0.31056479 0.079793282 0.30969083 0.07968723
		 0.30902949 0.079458959 0.30251181 0.079402454 0.30062941 0.079688028 0.30422562 0.079054549
		 0.30233881 0.08128693 0.30050755 0.081680268 0.30404931 0.080784947 0.30569971 0.078553051
		 0.30675045 0.078376792 0.30550912 0.079988234 0.30659288 0.079416536 0.30234027 0.083152525
		 0.30042076 0.083456911 0.30424505 0.082645193 0.30250657 0.085146479 0.30039883 0.085259296
		 0.30575818 0.08149036 0.30684921 0.080480628 0.30705774 0.10211778 0.30579919 0.099392571
		 0.30351949 0.10274 0.30260623 0.099937715 0.30453065 0.096443646 0.30169401 0.096854277
		 0.30032027 0.10320202 0.29982975 0.10035399 0.29935697 0.097184412 0.30341211 0.093217939
		 0.30094692 0.09347517 0.30268684 0.090058327 0.3004781 0.090174519 0.29898563 0.093721762
		 0.29875606 0.090354413 0.29884732 0.077563733 0.29891306 0.080009259 0.2988508 0.081991062
		 0.29877082 0.08370547 0.29871118 0.085456409 0.29806468 0.068880491 0.29886872 0.068601683
		 0.29824644 0.071624748 0.29923365 0.071168758 0.29852387 0.074658826 0.29981953 0.07397382
		 0.3647964 0.077205189 0.36663303 0.070478037 0.37149307 0.071456484 0.37069696 0.077928066
		 0.36727822 0.064502232 0.37212929 0.065085672 0.37785116 0.072715275 0.37723345 0.079354867
		 0.37844202 0.066137157 0.36711401 0.058455542 0.37249446 0.058671273 0.37248099 0.052082639
		 0.37890643 0.059470262 0.37931955 0.052761007 0.38537896 0.074245438 0.38471577 0.08120615
		 0.38583592 0.06751202 0.39346209 0.076191135 0.39270592 0.08354415 0.39385438 0.06914141
		 0.38628268 0.06057388 0.3865329 0.053600505 0.3939659 0.061901771 0.39375234 0.05454151
		 0.36228821 0.073999211 0.36358374 0.069428824 0.36079898 0.072140686 0.36169741 0.068630822
		 0.36396715 0.064435832 0.36186385 0.064590208 0.3598246 0.070662163 0.36042377 0.067952767
		 0.35905778 0.069521233 0.35912147 0.067462221 0.36041099 0.06463331 0.35893166 0.064543121
		 0.36343309 0.059301067 0.36119863 0.060299803 0.35975844 0.061092582 0.35839975 0.061511748
		 0.37255639 0.045727383 0.37229222 0.039332595 0.37946311 0.046135735 0.37912151 0.039407667
		 0.37142202 0.032829914 0.36989686 0.02640162 0.37812638 0.032490794 0.37667677 0.025688399
		 0.38643116 0.046551023 0.38597283 0.039464038 0.39322677 0.047050484 0.39247325 0.039536707
		 0.38497552 0.032222252 0.38356951 0.024989374 0.39143926 0.032013219 0.39028797 0.024530925
		 0.36762479 0.020403929 0.36487365 0.015014701 0.37456983 0.019234221 0.37174556 0.013315285
		 0.36209983 0.010246906 0.36082211 0.0060461368 0.36714053 0.010045991 0.36752632
		 0.007013578 0.38192093 0.018052034 0.37839401 0.013786771 0.3893843 0.014969452 0.3805083
		 0.010921397 0.37375164 0.0086971931 0.35798052 0.07018736 0.35757867 0.06746038 0.35642225
		 0.070769943 0.35587233 0.067683615 0.35721362 0.064483598 0.3553524 0.064558484 0.35476565
		 0.071003191 0.35416213 0.067984559 0.35343629 0.070941776 0.35255393 0.068667591
		 0.35349157 0.064828873 0.35163328 0.065408625 0.35675102 0.061486047 0.35487744 0.061453465
		 0.35297957 0.061650872 0.35113391 0.061900422 0.39672247 0.024446942 0.39768264 0.032033447
		 0.40273258 0.024537871 0.40362328 0.032127202 0.39875045 0.039755575 0.40479997 0.039986003
		 0.40821749 0.02453953 0.40915656 0.032083187 0.41332152 0.024425672 0.41441208 0.031839173
		 0.4104794 0.039989077 0.4159798 0.039700553 0.39979821 0.047631528 0.40606233 0.048086476
		 0.40070239 0.055524755 0.4072634 0.056278925 0.41198316 0.048210602 0.41781035 0.047947224
		 0.41348049 0.056618165 0.41964275 0.056486908 0.40133634 0.063325271 0.4082557 0.064479858
		 0.40158606 0.070930839 0.40885088 0.072513506 0.41476247 0.06516584 0.42120928 0.065300114
		 0.41558179 0.07362701 0.42220914 0.074148484 0.4015334 0.078363024 0.40905461 0.080326125
		 0.40081158 0.085940249 0.40844882 0.08817976 0.41572425 0.081723794 0.42243087 0.082668245
		 0.4152256 0.089971393 0.42181802 0.091338575 0.35161713 0.078585334 0.35457224 0.079592489
		 0.35393357 0.082477599 0.35234997 0.075753033 0.35492066 0.07687442 0.35745841 0.079292774
		 0.35732165 0.082306869 0.35727566 0.076537393 0.35298783 0.073034354 0.35500115 0.074053869
		 0.35694197 0.073834449 0.36009148 0.077407874 0.36072022 0.080636293 0.35926142 0.074893303
		 0.35860601 0.072615795 0.39136711 0.091457538 0.38364252 0.088657215 0.38917598 0.10006331
		 0.38189653 0.096791379 0.37649056 0.086351484 0.37526712 0.093966946 0.38576886 0.10909747
		 0.37914655 0.10549884 0.38107935 0.11747067 0.37531161 0.11373825 0.37324858 0.10224835
		 0.37016445 0.11033899;
	setAttr ".uvst[0].uvsp[2250:2499]" 0.37026617 0.084719941 0.3695353 0.091932349
		 0.36489487 0.084164716 0.36432788 0.090817161 0.36803684 0.099810138 0.36533368 0.10772144
		 0.36296445 0.098235704 0.36022511 0.10598078 0.36044243 0.084977664 0.35955331 0.090578005
		 0.35650504 0.085794784 0.35511222 0.090629533 0.35791382 0.097499862 0.35478839 0.10489456
		 0.35298592 0.097059414 0.34935674 0.10389766 0.35272929 0.085829891 0.35087144 0.090452775
		 0.34823766 0.09648791 0.34423381 0.10265823 0.32520074 0.098465823 0.32796794 0.10081539
		 0.32092544 0.10050271 0.32341275 0.10326319 0.3310625 0.1032659 0.33465374 0.10567694
		 0.32616827 0.10625497 0.32936403 0.10930281 0.31666043 0.10227332 0.31879064 0.10522255
		 0.31238839 0.103817 0.31407341 0.10690118 0.32120824 0.10857926 0.32407048 0.11219468
		 0.31607968 0.11048561 0.31861749 0.11459453 0.33873945 0.13000534 0.33235899 0.12703134
		 0.33777747 0.12256204 0.34400874 0.12510407 0.3266618 0.12333126 0.33218768 0.1194877
		 0.34359249 0.11748696 0.34983426 0.11956964 0.33793578 0.11505182 0.32203668 0.11902113
		 0.32762957 0.11592599 0.33321631 0.11227971 0.34968865 0.1116474 0.35564548 0.11319994
		 0.34392837 0.10992131 0.3388789 0.10791 0.31295848 0.11650477 0.31087199 0.11188305
		 0.30741376 0.117884 0.30594489 0.11276989 0.30942062 0.1080415 0.30506182 0.10872319
		 0.30229968 0.11875521 0.30150956 0.11312155 0.30108967 0.10912225 0.30822843 0.10488915
		 0.3043147 0.10552564 0.30072764 0.10598151 0.3234286 0.14732854 0.31443161 0.14169039
		 0.31846884 0.13842528 0.32667512 0.14329863 0.30609784 0.13471313 0.31086135 0.132342
		 0.32268065 0.13495088 0.33008689 0.13910346 0.31590021 0.12974252 0.3043513 0.12572035
		 0.31037804 0.12386257 0.32731012 0.13110921 0.33406192 0.1346173 0.32124975 0.12673545
		 0.31630012 0.12167562 0.36117169 0.11500553 0.36600709 0.11748125 0.35586321 0.12148879
		 0.36109832 0.12366614 0.37062714 0.12073302 0.37552544 0.12444373 0.36560372 0.12641746
		 0.36978537 0.12978311 0.35032171 0.12718558 0.35609439 0.12907124 0.34535792 0.13225803
		 0.35175154 0.13401376 0.36092794 0.1311295 0.36463007 0.13367015 0.3571862 0.13537449
		 0.36093318 0.13623199 0.39933807 0.094249628 0.40693346 0.09684258 0.39679217 0.10326037
		 0.40408561 0.10620327 0.41361174 0.098976783 0.42004925 0.10080862 0.41054457 0.10877028
		 0.41677752 0.11111812 0.39254317 0.11261896 0.39927435 0.115952 0.38701859 0.12126131
		 0.39292851 0.12500647 0.40543616 0.11907165 0.41148672 0.12210709 0.39852634 0.12873346
		 0.40406737 0.13250534 0.36096507 0.13960764 0.35494989 0.13985449 0.36106068 0.14433768
		 0.35345754 0.14482136 0.348304 0.13897829 0.34573898 0.1440475 0.36139178 0.14957507
		 0.35255024 0.15000184 0.36209464 0.15497757 0.3520689 0.15528578 0.34391659 0.14906965
		 0.34246269 0.15410948 0.34117892 0.13723275 0.33783221 0.14212608 0.33522388 0.14683585
		 0.33288604 0.1514672 0.38048941 0.12846726 0.38540602 0.13267314 0.37360358 0.13385907
		 0.37716031 0.13847274 0.39013049 0.13701136 0.39478606 0.14145854 0.38059548 0.14334506
		 0.38412136 0.14833687 0.36703333 0.1374847 0.36893547 0.1422686 0.37080374 0.14749017
		 0.37288064 0.15294045 0.3078554 0.058685046 0.30933335 0.06045891 0.31085727 0.062362809
		 0.30928558 0.064449169 0.30770034 0.066284887 0.30605382 0.067998141 0.30120847 0.072785117
		 0.30036658 0.070448704 0.3026908 0.071307704 0.29977301 0.068212211 0.30432919 0.069688022
		 0.29868048 0.087598227 0.30034944 0.08741717 0.38866624 0.0074730753 0.39632025 0.009226962
		 0.39612257 0.01654806 0.40256453 0.01005134 0.40229434 0.017204046 0.40792924 0.010174976
		 0.40780902 0.017341454 0.41294751 0.010269101 0.41281486 0.017363032 0.34288213 0.062621087
		 0.34288442 0.068654865 0.34654281 0.061817426 0.347009 0.068910919 0.31838003 0.078564979
		 0.31768361 0.078511685 0.31867522 0.07752838 0.31805462 0.077875495 0.31773919 0.077442557
		 0.31847215 0.076482922 0.30759171 0.079928167 0.3081347 0.079523325 0.30735728 0.079194658
		 0.30784589 0.07912875 0.30250373 0.087377891 0.31717086 0.078209572 0.34223199 0.074102677
		 0.34573677 0.074762233 0.34014198 0.0003393052 0.35109019 0.0015473767 0.34984413
		 0.073162228 0.35115096 0.070403583 0.34970257 0.066559762 0.34918606 0.061825417
		 0.30810836 0.078706697 0.30855674 0.079086944 0.30752277 0.07846231 0.34876886 0.07666336
		 0.36009741 0.002670361 0.30372974 0.050204877 0.30392501 0.05061445 0.30323294 0.051149569
		 0.30318272 0.050379537 0.30400977 0.049641963 0.30443099 0.049977154 0.30335614 0.049532838
		 0.36797214 0.0038918962 0.37481695 0.0051460159 0.38179958 0.0063633095 0.25069678
		 0.47170854 0.25207224 0.49152407 0.22308779 0.49677655 0.22226645 0.47911265 0.19710952
		 0.50322461 0.19281961 0.48584461 0.29731148 0.46604186 0.29454142 0.48933798 0.27461633
		 0.48919776 0.27611765 0.46779859 0.26512441 0.95448464 0.26337177 0.92327613 0.28552026
		 0.93604583 0.28288838 0.96005666 0.26277268 0.97846889 0.27830282 0.98122287 0.22782643
		 0.94595253 0.22784916 0.91106409 0.24649782 0.9143402 0.24735808 0.94928956 0.22780767
		 0.97490185 0.24719648 0.97615904 0.29942492 0.96439046 0.30531535 0.94261587 0.33110461
		 0.94994009 0.3215681 0.97061086 0.31309372 0.98781067 0.29241756 0.98386896 0.22286215
		 0.4536455 0.25147599 0.44537646 0.1924006 0.45911139 0.27814689 0.43996504 0.30013803
		 0.43749034 0.24768971 0.38084671 0.27791563 0.36330289 0.27798718 0.38606694 0.25098985
		 0.39734146 0.30522177 0.32845184 0.30132559 0.37488672 0.27881667 0.41457054 0.25230169
		 0.42136756 0.30160889 0.41052073 0.24153459 0.3609139 0.23173895 0.34241289 0.25999892
		 0.32368138 0.27120593 0.34083536 0.29239443 0.3120625 0.28011918 0.30101141 0.2059335
		 0.38305864 0.18323593 0.40331358;
	setAttr ".uvst[0].uvsp[2500:2749]" 0.17101434 0.37361681 0.19750033 0.36009422
		 0.21808149 0.40278244 0.1966465 0.43498838 0.14404625 0.38243178 0.1521969 0.41452524
		 0.15983607 0.44789544 0.31628197 0.89016449 0.32304487 0.85762411 0.34990308 0.86190271
		 0.34534433 0.89680183 0.30988672 0.92274606 0.33842126 0.93084466 0.25844538 0.84729952
		 0.26675245 0.82969695 0.28402397 0.84338903 0.2729058 0.86646003 0.30990818 0.82947791
		 0.30309367 0.85281652 0.29258201 0.82164061 0.21050717 0.31072873 0.19841577 0.29287061
		 0.2222565 0.28070009 0.23543958 0.29581055 0.24355629 0.26594359 0.25619763 0.27855405
		 0.2229002 0.32880291 0.19083671 0.34262961 0.18272638 0.3225365 0.15813278 0.33107221
		 0.16483028 0.35230154 0.31694439 0.80434775 0.29937431 0.79730964 0.13153249 0.33838001
		 0.13778786 0.35983306 0.33480987 0.80783582 0.35905606 0.81218451 0.35407934 0.83645505
		 0.32872114 0.83281219 0.11924831 0.25373343 0.10883632 0.23487513 0.13087234 0.22768889
		 0.14153807 0.24628952 0.16441205 0.23656559 0.15379161 0.21793896 0.17373818 0.20854144
		 0.18527886 0.22669809 0.19312325 0.19784515 0.20522216 0.2157225 0.30593008 0.7044484
		 0.31347403 0.68422157 0.32985908 0.69062161 0.32253137 0.71080667 0.36268938 0.70094889
		 0.34634727 0.6970517 0.35565564 0.67577815 0.37172887 0.67984146 0.11912077 0.20607926
		 0.10815913 0.18405025 0.13073288 0.17515984 0.1416529 0.19687916 0.098196864 0.21316339
		 0.087774523 0.19107831 0.33898705 0.66955495 0.43340924 0.58891487 0.42210293 0.6133492
		 0.40239167 0.60568315 0.41313604 0.58099973 0.047586568 0.11120726 0.060974296 0.13628031
		 0.040770616 0.14438003 0.027245125 0.11987013 0.093108967 0.090786368 0.1052859 0.11760135
		 0.081592023 0.12811911 0.068804115 0.10215612 0.10912327 0.083014876 0.12185664 0.10985616
		 0.12948669 0.072754145 0.14134878 0.099893987 0.14881967 0.16716434 0.16088547 0.18800154
		 0.16793746 0.15728451 0.17977411 0.17799746 0.2297321 0.41044897 0.22502084 0.43171361
		 0.31237826 0.40887088 0.31234175 0.37161469 0.26299435 0.89394331 0.28804886 0.91389412
		 0.3226935 0.66361064 0.29829246 0.65575475 0.30884737 0.63587421 0.33233005 0.64332914
		 0.21124667 0.18638875 0.2229179 0.20360975 0.18783167 0.14468941 0.19867845 0.16636828
		 0.31230196 0.32933635 0.3092941 0.27976468 0.31225824 0.27986026 0.30029628 0.27552187
		 0.25924867 0.24733083 0.27130765 0.25773475 0.25758597 0.77749598 0.26310289 0.75791025
		 0.28781071 0.76663953 0.28206444 0.78963327 0.28156993 0.69667661 0.28895184 0.67673963
		 0.2321067 0.8358134 0.24000502 0.82302427 0.24655278 0.87627107 0.24601357 0.81020021
		 0.29181418 0.27072483 0.164138 0.46819124 0.16793911 0.49098745 0.41615456 0.52834374
		 0.43143985 0.53602457 0.42683694 0.55578744 0.40781099 0.54944378 0.0799198 0.063345566
		 0.057118367 0.074832842 0.046628334 0.051554028 0.068817586 0.039200135 0.033058263
		 0.085356683 0.022237426 0.063640974 0.39198098 0.54451197 0.37864286 0.54010457 0.38897291
		 0.51830214 0.40425831 0.52530742 0.37098718 0.59546191 0.35687405 0.591313 0.36790678
		 0.56650883 0.38139108 0.57046169 0.082357176 0.033322465 0.096173137 0.054941233
		 0.1087727 0.020351024 0.11856454 0.043764014 0.36099666 0.53374749 0.37214002 0.51116246
		 0.33769897 0.5857119 0.34972006 0.56098253 0.13335441 0.0063958731 0.14312986 0.030459508
		 0.1629054 0.087353349 0.15277335 0.059957262 0.29448074 0.88266206 0.2748062 0.81233013
		 0.33937037 0.71715814 0.39751792 0.57500964 0.32850543 0.7582655 0.34575504 0.76212102
		 0.34100875 0.78271312 0.3236863 0.77900422 0.37950677 0.72722912 0.35600087 0.72103578
		 0.3859216 0.70749974 0.39387381 0.68646425 0.38106966 0.65872222 0.40194216 0.66562319
		 0.38718975 0.600088 0.39188361 0.63227004 0.36559442 0.65433007 0.37657049 0.62725407
		 0.44617939 0.56243104 0.4546487 0.54127032 0.093785033 0.263138 0.083905771 0.24364974
		 0.074763149 0.22115318 0.066056266 0.19846085 0.17079012 0.51008719 0.012494287 0.093853444
		 0.0020618096 0.073498756 0.3441903 0.61718637 0.35984057 0.62207371 0.34864447 0.64872986
		 0.32254472 0.61062807 0.15465456 0.12892923 0.17480271 0.1163182 0.41206339 0.63959444
		 0.054495692 0.17074148 0.074963659 0.16331433 0.094886079 0.1560836 0.11774532 0.14662407
		 0.13526878 0.13878995 0.24915037 0.31087238 0.26948342 0.2907863 0.28331742 0.26609704
		 0.25127837 0.79675388 0.17323712 0.30236593 0.14966683 0.30976278 0.30560458 0.772847
		 0.12372568 0.31705421 0.364669 0.78794903 0.25163662 0.50166875 0.22353694 0.50682998
		 0.19842376 0.51318532 0.29389617 0.49964237 0.27367416 0.49947122 0.27758855 0.99129277
		 0.26240018 0.98856211 0.31187803 0.99753481 0.29131749 0.99387938 0.31247234 0.49834326
		 0.31246066 0.4879593 0.17246942 0.51984578 0.24707371 0.98633254 0.14017069 0.29105058
		 0.12973717 0.27245754 0.15196764 0.2650969 0.16273555 0.28367311 0.18636864 0.27425528
		 0.17519385 0.25546756 0.19709113 0.24486753 0.20912451 0.26301003 0.2175111 0.23310712
		 0.22998294 0.25001508 0.29320535 0.74570465 0.29936129 0.72501278 0.31631935 0.73132551
		 0.31070244 0.75201291 0.23470907 0.21961339 0.24672301 0.2343602 0.26870522 0.73729366
		 0.27502748 0.71693546 0.33359963 0.73759294 0.35053554 0.74148357 0.37408602 0.74736005
		 0.36934066 0.76766926 0.11466778 0.29942939 0.1043201 0.28160784 0.31240651 0.43679225
		 0.31243697 0.46600601 0.22780102 0.98513401 0.22787383 0.87308258 0.2278969 0.83766693
		 0.41851509 0.52239829 0.43293628 0.52988231 0.43269843 0.53165793 0.41796842 0.52408171
		 0.043599669 0.045260437 0.066025317 0.033063337 0.06672705 0.03454978 0.044472679
		 0.046924703 0.019467644 0.057494089 0.02032057 0.059102327 0.39206627 0.51221019
		 0.40733376 0.51959974 0.40647584 0.52121389;
	setAttr ".uvst[0].uvsp[2750:2999]" 0.39142728 0.51412976 0.079303719 0.02744358
		 0.079860739 0.028934849 0.10536432 0.014272248 0.10617299 0.01592808 0.37575081 0.50508094
		 0.37432915 0.5066393 0.12959364 0.00036113497 0.13110778 0.0018633301 0.4561882 0.53457963
		 0.4557029 0.5364356 0 0.066902831 0.00042961279 0.068832546 0.25148994 0.50422198
		 0.22363287 0.50936967 0.19872798 0.5156818 0.29372469 0.50221813 0.27339718 0.50202644
		 0.27740833 0.99380952 0.26231205 0.99108851 0.31155941 1 0.29103914 0.99637771 0.3124752
		 0.5009073 0.1728774 0.52232206 0.24706578 0.9888615 0.2277993 0.98769259 0.37419078
		 0.47158578 0.40263715 0.47893345 0.40185219 0.49659926 0.37285662 0.49140397 0.43209839
		 0.48560664 0.42784408 0.50299549 0.32756287 0.46601161 0.34876114 0.46772608 0.3503074
		 0.48912224 0.33038279 0.48930195 0.19051751 0.95443624 0.17274621 0.95998514 0.17014566
		 0.93597066 0.19231059 0.92322999 0.192838 0.97842336 0.17730421 0.981157 0.20829061
		 0.94926417 0.20919615 0.914316 0.20841719 0.97613388 0.15620416 0.96429718 0.13405275
		 0.97048879 0.12454309 0.94980574 0.15034196 0.9425149 0.16318615 0.98378497 0.14250487
		 0.98769969 0.37335745 0.44525546 0.40198925 0.45346782 0.43246281 0.45887294 0.32467699
		 0.43746594 0.34667426 0.439897 0.37701491 0.3807202 0.37374702 0.39722082 0.34672615
		 0.38599956 0.34675348 0.36323586 0.32336468 0.37486526 0.31938046 0.32843825 0.37248302
		 0.42124873 0.34595317 0.41450426 0.32315156 0.41049942 0.38313141 0.3607758 0.35342041
		 0.34075561 0.36459559 0.32358027 0.39289185 0.34225634 0.33217797 0.31202433 0.3444328
		 0.30094948 0.41877726 0.38284996 0.42716599 0.35987002 0.45367917 0.37334001 0.4415158
		 0.40305927 0.42816791 0.4347592 0.40666762 0.4025968 0.48066542 0.38210163 0.47257802
		 0.41420898 0.46500552 0.44759232 0.13944356 0.89004946 0.1103726 0.89664906 0.10585928
		 0.86174393 0.132723 0.85750043 0.14579649 0.92263949 0.11725137 0.93070108 0.19733593
		 0.84725994 0.18285058 0.86640143 0.17176248 0.84331602 0.18905169 0.82964665 0.14589626
		 0.82937121 0.16323279 0.82155651 0.1526805 0.85271877 0.41406399 0.31053132 0.38910288
		 0.29566187 0.40225759 0.28052548 0.42612159 0.29264969 0.36831251 0.27844542 0.38093004
		 0.2658101 0.44186801 0.32228461 0.43379599 0.34239301 0.40170491 0.32862934 0.46647871
		 0.33077219 0.45982197 0.35201362 0.1388928 0.80423206 0.15647215 0.79721671 0.49309397
		 0.33802789 0.48688 0.359492 0.12102278 0.80769676 0.12707897 0.83268118 0.10171611
		 0.83629096 0.096771091 0.81201398 0.50521636 0.25335875 0.48291171 0.24595775 0.49354213
		 0.22733623 0.51559234 0.23447999 0.46001878 0.23627779 0.43913275 0.22645049 0.4506388
		 0.2082711 0.4706037 0.21763031 0.41916823 0.21551311 0.43123275 0.19761185 0.15003708
		 0.70434713 0.13342763 0.71068364 0.12612608 0.69048917 0.14251944 0.68411052 0.093282349
		 0.70077378 0.084270351 0.6796546 0.1003487 0.67561209 0.10962956 0.69689769 0.50525254
		 0.2057035 0.4827022 0.19654654 0.49358085 0.17480561 0.51617211 0.18365282 0.52619052
		 0.21274742 0.53657079 0.19064173 0.11702553 0.66941071 0.022708267 0.58864778 0.042991746
		 0.58075905 0.053703897 0.60545635 0.033982951 0.61309683 0.57660633 0.11069143 0.59696507
		 0.11931522 0.58348632 0.14385195 0.56326652 0.13579081 0.53104353 0.090357356 0.55537099
		 0.1016807 0.54263252 0.12766913 0.51891798 0.11719663 0.51501393 0.08261656 0.50233173
		 0.10948296 0.48282003 0.09955816 0.49463013 0.072394766 0.46345243 0.18770579 0.47547832
		 0.16684467 0.44454408 0.17773761 0.45634118 0.15700142 0.39978597 0.43154076 0.39503172
		 0.41028604 0.16764566 0.9138158 0.1927263 0.89389759 0.13332683 0.66348749 0.12371662
		 0.64319354 0.147209 0.63576913 0.15773803 0.65566349 0.40144902 0.20343383 0.41308713
		 0.18618995 0.42561695 0.16614458 0.4364222 0.14444417 0.31522158 0.2797592 0.32421127
		 0.27549848 0.35316446 0.25765455 0.36520293 0.24722673 0.1982861 0.77745742 0.17379183
		 0.78956282 0.16807553 0.76656157 0.19279474 0.75786459 0.16705132 0.6766603 0.17440747
		 0.69660705 0.2236895 0.83580786 0.2091908 0.87624687 0.21580787 0.82300854 0.20981598
		 0.81017643 0.33268404 0.27068463 0.46074474 0.46789593 0.45699006 0.49069914 0.040041842
		 0.52809912 0.048357882 0.54921013 0.029323721 0.55552894 0.024746461 0.53576016 0.54418033
		 0.062890515 0.5552364 0.038723074 0.57744992 0.051034652 0.56700438 0.074334227 0.59108543
		 0.084812224 0.60186487 0.063075028 0.064194322 0.54429889 0.05194208 0.52507836 0.067236349
		 0.51809299 0.077538222 0.53990883 0.085121751 0.59527594 0.074750476 0.57026231 0.088239975
		 0.56632692 0.099240378 0.5911454 0.52791035 0.054517258 0.54168516 0.032871287 0.50549686
		 0.043382876 0.51524377 0.019950457 0.084078722 0.51097506 0.095192537 0.53357464
		 0.10643369 0.56082439 0.11842272 0.58556938 0.48090544 0.030125193 0.49063462 0.0060422122
		 0.46123871 0.087058477 0.47131833 0.059642263 0.16125454 0.88257533 0.18102057 0.81226903
		 0.11658029 0.71701324 0.058617596 0.5747894 0.12739171 0.75813466 0.13218397 0.77887964
		 0.11485668 0.78256607 0.11013708 0.7619679 0.076430753 0.72703201 0.070041701 0.70729434
		 0.099944755 0.72086948 0.062116869 0.6862486 0.054075535 0.66539693 0.074957058 0.65852326
		 0.068913303 0.59988111 0.06417758 0.63205695 0.07949727 0.62706083 0.090437979 0.65415126
		 0.0099726906 0.5621475 0.0015307997 0.54097557 0.53069836 0.26271427 0.54054058 0.24320677
		 0.54964042 0.22069235 0.55830383 0.19798255 0.45417804 0.50980479 0.6116662 0.093269594
		 0.62205976 0.072894275 0.11189047 0.61703533 0.10739512 0.64857316 0.096233971 0.62190235
		 0.13354445 0.61050516 0.46956971 0.12861973 0.44939673 0.1160472 0.043988138 0.63935518;
	setAttr ".uvst[0].uvsp[3000:3249]" 0.5493288 0.16285254 0.56981146 0.1702404
		 0.50651395 0.14624423 0.52939183 0.15565979 0.48897505 0.13844337 0.37542015 0.31075042
		 0.3550497 0.29070371 0.34117144 0.26604038 0.20456861 0.79672348 0.45131913 0.30209589
		 0.47490409 0.30944669 0.15027358 0.77274603 0.5008601 0.31668773 0.09118969 0.78777117
		 0.37331331 0.50154817 0.40142366 0.50665367 0.42655018 0.51295894 0.33105049 0.49960536
		 0.35127142 0.499394 0.17800546 0.99122804 0.19319725 0.98851711 0.14370783 0.99742556
		 0.16427323 0.99379677 0.45251885 0.51956707 0.20852673 0.98630726 0.48436475 0.29071644
		 0.46178514 0.28338274 0.47251788 0.2647855 0.49476302 0.27210319 0.43813357 0.27401075
		 0.41535613 0.26280969 0.42735517 0.24464326 0.44927278 0.2552011 0.39447308 0.24985473
		 0.40691257 0.23292202 0.16270815 0.74561983 0.14520289 0.7519052 0.13961285 0.73121059
		 0.15657912 0.72491992 0.37770337 0.23423138 0.38968873 0.21946092 0.18721925 0.73724061
		 0.18092342 0.71687436 0.1223244 0.73745561 0.10538363 0.74132413 0.086544305 0.76748532
		 0.081825383 0.74716991 0.50988454 0.29904586 0.52019835 0.28120449 0.037688933 0.5221507
		 0.038233437 0.52383476 0.023493577 0.53139192 0.023258124 0.52961588 0.58046663 0.044735063
		 0.57959682 0.046401069 0.55731809 0.034068666 0.55801708 0.032580908 0.60462278 0.056922622
		 0.603773 0.058532614 0.064150937 0.51199692 0.064787507 0.51391739 0.049729664 0.52098191
		 0.048873957 0.51936674 0.54417324 0.028478835 0.54472739 0.026986549 0.5178352 0.015522262
		 0.51864082 0.013864947 0.080475762 0.50488901 0.081895478 0.50644916 0.49287266 0.0015051629
		 0.49438408 0 0.00048302498 0.53613967 0 0.53428304 0.62410915 0.06629426 0.62368315
		 0.068224803 0.3734653 0.50410098 0.40133291 0.5091936 0.42625111 0.51545614 0.33122763
		 0.50218052 0.35155401 0.50194871 0.19328219 0.99104375 0.17818244 0.99374491 0.16454826
		 0.99629545 0.1440233 0.99989104 0.45211574 0.52204418 0.20853139 0.98883659 0.67773879
		 0.72080004 0.65471017 0.72573799 0.65374976 0.71626055 0.67792982 0.70884681 0.68761772
		 0.71999949 0.68761772 0.70769089 0.69680125 0.70928049 0.6973207 0.72095525 0.72108549
		 0.71754539 0.71726376 0.72690248 0.67715514 0.72973919 0.65506083 0.73368007 0.68761772
		 0.72881955 0.69662857 0.73015052 0.71618932 0.73408222 0.69502276 0.78542894 0.70871902
		 0.78409463 0.70326197 0.79459918 0.6962294 0.79869783 0.68761772 0.78557885 0.68761772
		 0.79975891 0.67812747 0.79728973 0.67806131 0.78423095 0.66973597 0.79247117 0.66416317
		 0.78451902 0.6241399 0.65392584 0.62704957 0.66498846 0.60831583 0.67380041 0.603405
		 0.66286582 0.62984085 0.67608309 0.63372576 0.68802631 0.6187042 0.69467837 0.61325431
		 0.68437225 0.67585993 0.73915631 0.67411172 0.74961978 0.65516633 0.75166219 0.65515
		 0.74261963 0.68761772 0.73896515 0.68761772 0.74986887 0.68761772 0.77388161 0.69581753
		 0.75035107 0.69585568 0.77388072 0.71234721 0.77321148 0.71484131 0.75287431 0.68761772
		 0.81095099 0.67461085 0.80746871 0.69923455 0.80929077 0.70997477 0.80273467 0.7408576
		 0.71914196 0.73723042 0.727736 0.63789809 0.72795272 0.63358575 0.71835649 0.64255726
		 0.74834865 0.64115828 0.73729312 0.66474235 0.79955602 0.65727884 0.78923017 0.65069681
		 0.77545387 0.65882063 0.77164572 0.64408284 0.75633377 0.7429505 0.67656451 0.75989044
		 0.68423116 0.75448972 0.69472802 0.73921829 0.68841559 0.96865737 0.15440813 0.96037906
		 0.16302799 0.949664 0.16868934 0.949664 0.1571936 0.9681688 0.16650912 0.97517216
		 0.15573853 0.97456753 0.16653916 0.96910471 0.17867985 0.97547328 0.17782885 0.92554706
		 0.17460683 0.92032379 0.18367738 0.91500288 0.17994337 0.91967231 0.17185505 0.92882329
		 0.16210511 0.92218882 0.16196223 0.92377794 0.14493614 0.91751146 0.14687476 0.91451657
		 0.13393278 0.92082298 0.13277371 0.91377527 0.11188132 0.92058492 0.11307784 0.91757625
		 0.088973805 0.92510152 0.090745181 0.92284846 0.10398427 0.91526878 0.1015862 0.9190166
		 0.077961996 0.91823941 0.068046339 0.92616147 0.067259625 0.92672729 0.077899821
		 0.91349322 0.037366185 0.9201799 0.037086338 0.92186612 0.057656024 0.9152084 0.058699217
		 0.92100251 0.014313713 0.9212907 0.025326237 0.91451317 0.025640009 0.91448873 0.014842495
		 0.91880327 0.00094453129 0.91212386 0.0026709607 0.97597635 0.01305322 0.97674531
		 0.00072438538 0.98354971 0.0019837008 0.98253959 0.013351476 0.97634077 0.024419464
		 0.98303479 0.024272434 0.98442012 0.035727978 0.9778502 0.035765231 0.98339766 0.056448545
		 0.97645456 0.055618394 0.98142213 0.076494947 0.97424924 0.076812685 0.97307128 0.06553039
		 0.98107594 0.065492943 0.98304743 0.086947173 0.97562951 0.088076048 0.98398626 0.09871529
		 0.98419923 0.10759305 0.97698069 0.10782268 0.97633535 0.099660166 0.97210342 0.14245233
		 0.97828174 0.14445095 0.949664 0.0362412 0.949664 0.051404767 0.9277603 0.05574166
		 0.92675674 0.037073676 0.92832601 0.025464658 0.949664 0.025611658 0.935718 0.01668876
		 0.949664 0.012901364 0.96171707 0.016790895 0.96956509 0.025083968 0.97189885 0.036145858
		 0.97127658 0.054691114 0.949664 0.065389842 0.949664 0.076884568 0.949664 0.089565344
		 0.949664 0.10124896 0.949664 0.1098344 0.949664 0.14430563 0.93972242 0.16777712
		 0.949664 0.13114658 0.92920399 0.061975919 0.949664 0.059133228 0.92755193 0.0140174
		 0.92545897 0 0.96939695 0.01324595 0.97007585 0.00038552188 0.96983308 0.061294194
		 0.67800498 0.70684141 0.68761772 0.70582581 0.69719797 0.70738333 0.70637029 0.70988876
		 0.64508718 0.68207788 0.65690863 0.70152497 0.64609426 0.70614445 0.7266134 0.68225378
		 0.72999519 0.67196578 0.73211068 0.66179359 0.73185635 0.65315557 0.7476427 0.65272617
		 0.74604481 0.66334945;
	setAttr ".uvst[0].uvsp[3250:3499]" 0.64025581 0.66310757 0.64232004 0.6721735
		 0.7147907 0.70254272 0.72709835 0.70704323 0.64016175 0.6541273 0.66798764 0.70905381
		 0.67575091 0.77269119 0.69604844 0.74009442 0.71515942 0.74315673 0.98185754 0.12926634
		 0.97548801 0.12816077 0.74465483 0.71155339 0.71956152 0.78892756 0.76482689 0.67292893
		 0.73163432 0.74911308 0.73031855 0.75828832 0.62902743 0.71104366 0.7334193 0.7374891
		 0.76925772 0.6615743 0.72488439 0.77726507 0.97791314 0.33647192 0.99266881 0.36167017
		 0.9878996 0.36390537 0.97431391 0.33940473 0.99720579 0.38479832 0.99147332 0.38552085
		 0.97652811 0.36757451 0.97882164 0.38560224 0.96009719 0.38596067 0.95905644 0.37189981
		 0.96626818 0.34811801 0.95521152 0.35762462 0.95356947 0.44393754 0.95726335 0.4423981
		 0.95966017 0.44756705 0.95563471 0.44925645 0.92957574 0.43123591 0.92957574 0.42851907
		 0.94991958 0.43001151 0.94789767 0.43377933 0.94427395 0.40274155 0.94486368 0.38745469
		 0.95743304 0.40279675 0.94464546 0.41570178 0.95449626 0.41386774 0.92957574 0.41674426
		 0.92957574 0.40346137 0.92957574 0.38837877 0.99238026 0.41208738 0.98679972 0.41103333
		 0.97687799 0.43542364 0.97261703 0.43170276 0.97513688 0.40699369 0.96357781 0.42318079
		 0.94493496 0.37235257 0.92957574 0.37254018 0.92957574 0.35523391 0.94516557 0.35588634
		 0.92957574 0.32395539 0.9523896 0.32631379 0.95086461 0.33030379 0.92957574 0.32769826
		 0.94785142 0.34126905 0.92957574 0.33848384 0.95110673 0.32076865 0.97513807 0.33030427
		 0.92957574 0.3187477 0.96046269 0.29128823 0.96703041 0.30509895 0.94720328 0.2976563
		 0.94590902 0.27881557 0.92957574 0.27869084 0.92957574 0.29521847 0.96689945 0.22538066
		 0.94759709 0.23458682 0.94753742 0.22842683 0.96661013 0.22008079 0.92957574 0.23490568
		 0.92957574 0.22726463 0.94657648 0.25838131 0.96508932 0.24927382 0.96003991 0.26398331
		 0.94636768 0.27780336 0.92957574 0.27773297 0.92957574 0.26139176 0.9789893 0.33646315
		 0.99356532 0.36131221 0.99816674 0.38477731 0.96022546 0.44834986 0.95590514 0.45019627
		 0.94719845 0.4347415 0.92957574 0.4319351 0.99323422 0.41250768 0.97756386 0.43601391
		 0.97607452 0.32999119 0.96795279 0.30477384 0.96123374 0.29070577 0.95240051 0.44380912
		 0.88020962 0.33611578 0.88388711 0.33908403 0.87001091 0.36358705 0.86514032 0.36131352
		 0.86048311 0.38457769 0.86633801 0.38531607 0.88162661 0.36732697 0.89947492 0.37174422
		 0.89840317 0.38583612 0.87926573 0.38542432 0.89210892 0.34786454 0.90340376 0.35745373
		 0.90491289 0.44398731 0.90279335 0.44942227 0.89866972 0.44772902 0.90112489 0.44245604
		 0.91062343 0.43343228 0.90862548 0.42975163 0.91455448 0.40269193 0.90109807 0.40270856
		 0.913966 0.3873876 0.91414803 0.41564539 0.90406829 0.41378453 0.86534745 0.41206014
		 0.87105304 0.4109897 0.88109845 0.43554255 0.88546818 0.43176386 0.88298386 0.40690696
		 0.89472747 0.42310697 0.91389793 0.372264 0.9136613 0.3557739 0.90783519 0.33015266
		 0.906277 0.3261629 0.91091663 0.34113127 0.88303852 0.32996798 0.90758914 0.3206434
		 0.91160047 0.29762909 0.89131999 0.30481789 0.8980912 0.29106921 0.91302651 0.27889436
		 0.89155161 0.22468564 0.89187253 0.21927167 0.91130257 0.22794107 0.91121888 0.23422159
		 0.89842808 0.26383159 0.89331943 0.24896444 0.91221219 0.25822794 0.91289961 0.27775574
		 0.86422473 0.3609482 0.87911046 0.33609852 0.8595013 0.38455462 0.90251112 0.45037982
		 0.89808577 0.44852546 0.91129988 0.43436047 0.86447346 0.41248491 0.88039464 0.4361417
		 0.88208252 0.32964525 0.89038044 0.3044779 0.89731503 0.29044464 0.90610802 0.44384712
		 0.91879821 0.44809815 0.91760325 0.45363453 0.91758978 0.45461747 0.9191342 0.44719535
		 0.94120818 0.45350882 0.94006997 0.44805768 0.94121718 0.45447311 0.93972814 0.44717172
		 0.92957574 0.45428064 0.92957574 0.44859302 0.92957574 0.45539361 0.92957574 0.44768822
		 0.77206469 0.85100323 0.77496028 0.84533519 0.77951688 0.84801567 0.77591252 0.85348099
		 0.78387231 0.8512162 0.77986872 0.85664374 0.78121096 0.83321679 0.7865234 0.83680964
		 0.7911045 0.84111178 0.79592711 0.85312939 0.78900045 0.86218417 0.79876727 0.84944671
		 0.76738501 0.84997791 0.76981342 0.84338588 0.76204967 0.84916788 0.76415867 0.84181863
		 0.75669253 0.8477158 0.75823718 0.84019655 0.75173521 0.84640777 0.75294816 0.83917749
		 0.77530867 0.83026659 0.76849604 0.82850647 0.76167214 0.82757401 0.75563908 0.82717717
		 0.31115198 0.17494312 0.31568718 0.16685 0.31881899 0.17087728 0.31316257 0.17858918
		 0.31901699 0.1627595 0.32218996 0.16711776 0.79350996 0.86471534 0.79707611 0.86001545
		 0.32365638 0.17764531 0.31877831 0.18620075 0.32649833 0.1742257 0.80237758 0.85240728
		 0.29969144 0.2003504 0.29699257 0.18984483 0.30113119 0.1881028 0.30552652 0.19838302
		 0.30532414 0.18533152 0.31085745 0.19509937 0.29636449 0.18382549 0.29972664 0.18199992
		 0.30341193 0.17957102 0.30945429 0.18207955 0.3152675 0.19084074 0.30747849 0.1771414
		 0.74797904 0.83848906 0.74996668 0.82678866 0.74327356 0.83747268 0.7434625 0.82550532
		 0.71273965 0.85306406 0.72087997 0.85387921 0.7212221 0.86106199 0.71297032 0.86037499
		 0.72084451 0.86797082 0.71128523 0.86822683 0.72933334 0.85404384 0.73006588 0.86124986
		 0.73057055 0.86774027 0.72138786 0.87365663 0.71211487 0.87483144 0.72210675 0.87830621
		 0.71277457 0.87970555 0.73101437 0.87304455 0.73133677 0.87791103 0.26941586 0.19391198
		 0.28010237 0.19114152 0.28075877 0.19624825 0.27048114 0.19841851 0.28361332 0.19058391
		 0.28322259 0.19651228 0.28203171 0.20115572 0.2707566 0.20310387 0.28565186 0.20166075
		 0.2898384 0.185284 0.28977403 0.19025631 0.28650096 0.1902727 0.28642425 0.18593301;
	setAttr ".uvst[0].uvsp[3500:3749]" 0.28297427 0.18695615 0.26481104 0.18564136
		 0.27462623 0.18164392 0.27927333 0.18834057 0.26846007 0.19158034 0.27655777 0.17926557
		 0.72621959 0.83992624 0.72460222 0.83433002 0.73223585 0.83153927 0.73441905 0.83617538
		 0.7205314 0.82108593 0.72822732 0.81818575 0.73471737 0.82989562 0.73644531 0.83380687
		 0.7310403 0.81697112 0.71663743 0.83522195 0.71266806 0.82246006 0.71717221 0.84008336
		 0.71355146 0.8352198 0.70978355 0.82280141 0.71362555 0.83981955 0.25375727 0.1979183
		 0.26119339 0.19595382 0.26228905 0.20019495 0.2555277 0.20111787 0.26178083 0.20515999
		 0.25284371 0.20399708 0.24907997 0.19585273 0.25565636 0.18864863 0.2602053 0.19387242
		 0.25305057 0.19591634 0.71815449 0.81339133 0.72467685 0.81015611 0.71497738 0.80473495
		 0.7195124 0.80435014 0.72647947 0.80877841 0.72035664 0.8028717 0.71092093 0.81366277
		 0.71304506 0.80554324 0.70865005 0.81316817 0.7111302 0.80415887 0.79769671 0.77328157
		 0.79811174 0.77605224 0.79456168 0.77576226 0.79529572 0.77249902 0.79620194 0.78437257
		 0.7921738 0.7837835 0.79096001 0.77475196 0.79246038 0.77218449 0.78830594 0.78281331
		 0.78824013 0.77286756 0.79122281 0.76977515 0.78509456 0.78146714 0.32361689 0.25515342
		 0.32037839 0.25204933 0.32314363 0.25087655 0.32457712 0.25320959 0.31707639 0.24379848
		 0.32019311 0.24287304 0.79369253 0.79258299 0.78946251 0.79184645 0.7850771 0.79086345
		 0.79118651 0.79984242 0.7871213 0.79923463 0.78891051 0.80621076 0.78472435 0.80568653
		 0.78253192 0.79814035 0.78026336 0.80431783 0.78175074 0.78924268 0.31395209 0.23653294
		 0.31724861 0.2354258 0.77868414 0.79611844 0.77636498 0.80222958 0.31097278 0.23044011
		 0.31474513 0.22902732 0.30879098 0.22518797 0.31234443 0.22325155 0.78766966 0.80988055
		 0.78329825 0.80945796 0.77875119 0.80797493 0.78663665 0.81403553 0.78166068 0.81372827
		 0.78442019 0.8272112 0.777623 0.82432967 0.77659309 0.81164807 0.77010089 0.82210779
		 0.77490729 0.8054688 0.30755365 0.22263093 0.3110384 0.22016457 0.77291262 0.80830169
		 0.77147377 0.8093729 0.30604991 0.22049573 0.30954063 0.21707933 0.30543315 0.21936522
		 0.30170649 0.206771 0.33928016 0.20869038 0.33335611 0.20384823 0.33576864 0.20107749
		 0.34153154 0.20558792 0.81205803 0.81588632 0.8072421 0.82281619 0.80343676 0.82088423
		 0.80864584 0.81413943 0.33031487 0.20095688 0.33370328 0.19849199 0.32308561 0.19046883
		 0.33277729 0.19628005 0.80520034 0.82685262 0.80066282 0.82547528 0.80442822 0.82993138
		 0.79481179 0.83675879 0.80018908 0.81807745 0.80543453 0.81177944 0.79778004 0.81495631
		 0.80265647 0.80908674 0.79696292 0.82213557 0.78990555 0.83175981 0.79462868 0.81824279
		 0.33679521 0.21222948 0.33091879 0.207425 0.33418426 0.21551102 0.32891721 0.21112862
		 0.33193779 0.21835406 0.32701382 0.21449196 0.80020291 0.8062526 0.79553264 0.81163603
		 0.32777157 0.20453139 0.32593632 0.20868346 0.3194581 0.19597088 0.31496263 0.20101236
		 0.32458502 0.21312602 0.79305989 0.81437075 0.32322058 0.2125551 0.79136509 0.81546354
		 0.29855075 0.22555076 0.29381204 0.22309074 0.29434231 0.21930853 0.29881391 0.22165245
		 0.28951344 0.2214711 0.28993669 0.21813926 0.28533089 0.22120619 0.28566545 0.2184142
		 0.75046873 0.80520833 0.7556271 0.80474925 0.75593805 0.80826914 0.75057274 0.80882728
		 0.29469785 0.20630158 0.28889433 0.20613456 0.28342196 0.20752713 0.75631672 0.82189333
		 0.75036263 0.82173902 0.30347487 0.22373796 0.30306578 0.22691715 0.76879066 0.80041987
		 0.76976877 0.80396408 0.76590949 0.80596459 0.76516539 0.80215955 0.76154143 0.8073588
		 0.76105213 0.803657 0.76268458 0.82196754 0.81877434 0.83627003 0.8155486 0.83800215
		 0.81249022 0.83055228 0.81612962 0.82907522 0.80822641 0.84179366 0.80501086 0.8335315
		 0.80148864 0.8464576 0.81143093 0.82681406 0.81503332 0.82530278 0.34203202 0.1960621
		 0.33869389 0.19540101 0.33861092 0.19221567 0.34220564 0.19260989 0.80569285 0.82976162
		 0.33334696 0.19523109 0.33242166 0.1918765 0.29566678 0.23939888 0.29142979 0.23814321
		 0.29245871 0.23190355 0.29728985 0.23363858 0.28718412 0.23728858 0.28799462 0.23065878
		 0.28364617 0.23701036 0.28432426 0.23061861 0.7494967 0.78754318 0.7531721 0.78742665
		 0.75398546 0.7941907 0.74983287 0.79476255 0.30121455 0.23483799 0.29902157 0.240188
		 0.76503146 0.78554291 0.7666539 0.7917828 0.76344639 0.79288262 0.76188207 0.78670138
		 0.75900984 0.79365796 0.75760269 0.7872842 0.83072585 0.83010203 0.82773012 0.82406098
		 0.82707942 0.82079923 0.35434583 0.19667555 0.35477012 0.19371654 0.3501603 0.21780878
		 0.347157 0.21548755 0.34933943 0.21293798 0.35213548 0.21519941 0.82102013 0.80318516
		 0.81842452 0.80644339 0.81554151 0.80490881 0.81805336 0.80188471 0.81252652 0.80286843
		 0.81498271 0.79993755 0.80963874 0.80056995 0.81213206 0.79764855 0.34751543 0.22072643
		 0.34448701 0.21846111 0.34484825 0.22376873 0.34198612 0.22141686 0.34273887 0.22614874
		 0.34009674 0.22396594 0.80974513 0.79535145 0.80715615 0.79836327 0.29065442 0.25153217
		 0.28787661 0.25112677 0.28865078 0.24866535 0.29212561 0.24966241 0.28544891 0.25028223
		 0.28526995 0.24801344 0.2836619 0.25153875 0.28212813 0.24802539 0.75107068 0.77273846
		 0.75281185 0.77450281 0.75226706 0.77682739 0.74918157 0.77590662 0.29505605 0.25071418
		 0.29201245 0.25342706 0.75920165 0.77168679 0.76211435 0.77440852 0.75967777 0.77615166
		 0.75837785 0.77389449 0.75603878 0.77690363 0.75561124 0.77403653 0.84053791 0.82364464
		 0.83902693 0.82523686 0.83684433 0.82020193 0.83887559 0.81988835 0.83675766 0.8172819
		 0.84001273 0.81795019 0.36748725 0.19433628 0.36447892 0.19639765 0.36394867 0.19375426;
	setAttr ".uvst[0].uvsp[3750:3999]" 0.36574107 0.19323234 0.36004815 0.22788246
		 0.35902876 0.22571656 0.36117285 0.22339146 0.36244667 0.22755875 0.82831919 0.78892833
		 0.82828665 0.7931149 0.82502097 0.79257047 0.82593191 0.78997463 0.82197523 0.79084945
		 0.82373995 0.78821826 0.81932157 0.78841895 0.82135159 0.78674704 0.35834357 0.2301039
		 0.35632357 0.22820751 0.35621363 0.23190923 0.35387549 0.23087451 0.35633993 0.23421535
		 0.35216707 0.23357047 0.82124889 0.78411847 0.81744844 0.7856338 0.78035772 0.87247586
		 0.76981342 0.86707169 0.77654064 0.87755609 0.76284742 0.87212831 0.78535825 0.8745389
		 0.30862027 0.15810819 0.31172282 0.15315486 0.78186363 0.87941706 0.30410618 0.15325637
		 0.30884135 0.14804295 0.77367163 0.88223892 0.76087654 0.87862253 0.77150857 0.88670683
		 0.75953567 0.88373047 0.77899486 0.88402516 0.30197176 0.14591981 0.30701649 0.14290343
		 0.77686095 0.88843668 0.30001256 0.14100137 0.30528903 0.1383225 0.75345671 0.88200301
		 0.75438923 0.87662375 0.74835962 0.88054144 0.74898899 0.87499285 0.75513417 0.87054282
		 0.74950022 0.86887091 0.74399233 0.87947857 0.74439812 0.87383223 0.73982167 0.87872893
		 0.74000013 0.87314343 0.74463177 0.86762106 0.7399106 0.86699969 0.75526994 0.86337698
		 0.76097006 0.86410928 0.75000292 0.86187851 0.74487638 0.86064267 0.73965043 0.86001492
		 0.74667394 0.84542942 0.74170315 0.84377015 0.71420819 0.80226564 0.29801399 0.15546808
		 0.29178658 0.15813419 0.28337955 0.17100912 0.28742188 0.16539353 0.29310971 0.18479393
		 0.79558265 0.76933682 0.79935068 0.77131373 0.33222347 0.25330752 0.32826266 0.25573882
		 0.32728615 0.25306007 0.32998115 0.25212765 0.28744081 0.25386065 0.7549454 0.7710259
		 0.8427397 0.82350504 0.36604616 0.18916 0.36787361 0.18803753 0.82556033 0.78540778
		 0.36055157 0.23200735 0.29645699 0.14861841 0.29044083 0.1509476 0.29448786 0.14354967
		 0.28858119 0.14596881 0.30868408 0.2044073 0.31365788 0.21502832 0.31860858 0.21405898
		 0.31511468 0.21850315 0.31984103 0.21752205 0.32345015 0.21401837 0.79108322 0.81354779
		 0.32443097 0.21677084 0.79183614 0.81008011 0.32604644 0.18019778 0.33149263 0.18367133
		 0.3382405 0.1850443 0.32814965 0.17653719 0.33275875 0.18002446 0.80464095 0.84973907
		 0.81036878 0.84509224 0.33917177 0.18108897 0.81718141 0.8414191 0.31643695 0.22178894
		 0.31886426 0.22771056 0.32110316 0.22065765 0.32334629 0.22648712 0.32124385 0.23423231
		 0.32556304 0.23303616 0.3254835 0.21965325 0.32736889 0.22523712 0.79283834 0.80663675
		 0.79487538 0.8003853 0.3292011 0.23200358 0.79703468 0.79310679 0.34174952 0.18546897
		 0.35524702 0.18696176 0.34225047 0.18141483 0.35540172 0.18362398 0.82064509 0.83962297
		 0.83277911 0.8324973 0.36430585 0.18840456 0.36521825 0.1855828 0.84140021 0.82682836
		 0.28748509 0.20082617 0.29379359 0.20077024 0.28200042 0.2033774 0.24932171 0.19904862
		 0.32813501 0.24078633 0.33159178 0.23993856 0.33348298 0.24902703 0.33019623 0.24940656
		 0.79939067 0.78471911 0.80091602 0.77543533 0.32401285 0.24177466 0.32651445 0.24996212
		 0.71364266 0.88446933 0.72288197 0.88292789 0.73136127 0.8826794 0.75813043 0.88884127
		 0.76972717 0.8914386 0.29772821 0.13659883 0.29221758 0.13900176 0.28623506 0.14148299
		 0.76659858 0.86232281 0.74753809 0.88596344 0.75237072 0.8873049 0.77526408 0.89310277
		 0.30300811 0.13397701 0.73927808 0.88406193 0.74331319 0.88491869 0.29322517 0.19032694
		 0.28452095 0.1976956 0.27960956 0.1756155 0.7203573 0.84668118 0.71300155 0.84611082
		 0.72790402 0.84665537 0.73760295 0.84035593 0.73939723 0.8360492 0.73990864 0.82864082
		 0.73785079 0.82838911 0.22132152 0.57044053 0.22113377 0.55848664 0.24531099 0.56590033
		 0.24435121 0.5753774 0.21144474 0.56963968 0.21144474 0.5573315 0.2022583 0.55891961
		 0.20174052 0.57059497 0.17797503 0.56718558 0.18179618 0.57654309 0.24399997 0.58332092
		 0.22190587 0.57937866 0.21144474 0.57845974 0.20243387 0.57979047 0.1828741 0.58372211
		 0.20403866 0.63506961 0.20283052 0.64833754 0.19579689 0.64423943 0.19034378 0.63373435
		 0.21144474 0.63521951 0.21144474 0.6493988 0.22093396 0.64692962 0.2209975 0.6338706
		 0.22932406 0.64211082 0.23489828 0.63415825 0.2749202 0.50356632 0.29565474 0.51250601
		 0.29074365 0.52344102 0.27201045 0.51462853 0.26921874 0.52572399 0.2858083 0.53401268
		 0.28035817 0.5443179 0.26533708 0.53766727 0.2232018 0.58879673 0.24390915 0.59225911
		 0.24389398 0.60130322 0.22494887 0.59925944 0.21144474 0.588606 0.21144474 0.59950924
		 0.21144474 0.62352145 0.20320597 0.62352145 0.20324534 0.59999222 0.18671641 0.62285233
		 0.18421841 0.60251439 0.22445229 0.6571092 0.21144474 0.66059124 0.19982696 0.65893048
		 0.18908721 0.65237516 0.15820332 0.56878281 0.16183066 0.57737577 0.26547638 0.56799555
		 0.26116168 0.57759225 0.25790375 0.58693314 0.25650489 0.59798926 0.23431998 0.64919597
		 0.24178359 0.63886952 0.24024244 0.62128544 0.24836305 0.62509441 0.25497586 0.60597366
		 0.15611106 0.52620542 0.15984134 0.53805637 0.14457197 0.54436785 0.13917035 0.53387189
		 0.015763285 0.87075013 0.034757569 0.87353474 0.034757569 0.88503152 0.024041176
		 0.87936968 0.016252179 0.88285124 0.0098508624 0.88288158 0.0092466017 0.87208021
		 0.015316889 0.89502215 0.0089490255 0.8941704 0.058874726 0.89094847 0.064750649
		 0.88819575 0.069417953 0.89628541 0.064097732 0.90001899 0.055595074 0.87844807 0.062233251
		 0.87830383 0.06064206 0.86127728 0.06690976 0.86321616 0.063596688 0.84911543 0.069903933
		 0.85027397 0.063836627 0.82941967 0.070647836 0.82822329 0.066845998 0.80531621 0.069150813
		 0.81792897 0.061574336 0.82032639 0.059318043 0.80708659 0.065403596 0.79430377 0.057690389
		 0.79424155 0.058258343 0.78360111;
	setAttr ".uvst[0].uvsp[4000:4249]" 0.06618093 0.78438759 0.070927262 0.75370824
		 0.069214545 0.77504075 0.062555134 0.77399766 0.064240523 0.75342888 0.063417554
		 0.73065543 0.069931157 0.73118383 0.069909893 0.74198216 0.06313207 0.74166787 0.065616116
		 0.71728653 0.072293743 0.71901286 0.0084449612 0.72939521 0.0018796873 0.72969282
		 0.00087152753 0.71832508 0.0076766778 0.71706641 0.0080805449 0.7407614 0.0013847002
		 0.74061412 0.0065713683 0.75210637 0 0.75206995 0.0079681277 0.77196002 0.0010202834
		 0.77279061 0.002997217 0.79283708 0.0033463668 0.78183526 0.011350994 0.78187174
		 0.01017275 0.79315442 0.0013755914 0.80328929 0.0087942081 0.80441886 0.00043728724
		 0.81505632 0.0080866069 0.81600225 0.0074397526 0.82416475 0.00022162644 0.82393396
		 0.0061401427 0.86079293 0.012316753 0.85879481 0.034757569 0.75258315 0.057663094
		 0.75341517 0.056657981 0.77208298 0.034757569 0.76774669 0.056096155 0.74180603 0.034757569
		 0.74195331 0.034757569 0.72925401 0.048701882 0.73303008 0.014858369 0.74142647 0.022705035
		 0.73313183 0.012523144 0.75248748 0.013142641 0.77103233 0.034757569 0.78173202 0.034757569
		 0.79322731 0.034757569 0.80590683 0.034757569 0.81759042 0.034757569 0.82617652 0.034757569
		 0.86064714 0.044696633 0.88411903 0.034757569 0.84748781 0.055218596 0.77831727 0.034757569
		 0.77547497 0.056870498 0.73035938 0.058962766 0.71634215 0.015025343 0.72958803 0.014345196
		 0.71672779 0.014588055 0.77763551 0.22105503 0.5564822 0.21144474 0.55546635 0.20186466
		 0.55702269 0.19269034 0.55952823 0.25397363 0.5317176 0.2529684 0.55578429 0.24215299
		 0.55116534 0.16906714 0.52160615 0.17244923 0.53189319 0.16694763 0.51143414 0.15301658
		 0.51299042 0.15142092 0.50236577 0.16720504 0.50279576 0.25880304 0.51274824 0.25674108
		 0.52181351 0.17196175 0.55668354 0.18426993 0.55218267 0.25889689 0.50376767 0.2310711
		 0.55869406 0.22330777 0.6223315 0.2030122 0.58973539 0.18390056 0.59279656 0.0025629767
		 0.84560817 0.0089308079 0.84450275 0.15440641 0.56119353 0.17950106 0.63856828 0.13423201
		 0.522569 0.16874015 0.6079281 0.16742913 0.59875381 0.27003324 0.56068337 0.16564272
		 0.58712995 0.12980224 0.51121461 0.17417817 0.62690508 0.81880087 0.3160567 0.80802077
		 0.32519004 0.79157585 0.30966273 0.79629523 0.29788277 0.82668239 0.34617358 0.81317514
		 0.34839594 0.65969235 0.63246769 0.66229498 0.64407665 0.64517736 0.65491092 0.63284022
		 0.64786744 0.80057365 0.26109746 0.82732475 0.27106771 0.84905803 0.30742967 0.85608858
		 0.33524135 0.84598899 0.27456129 0.86914045 0.27657089 0.87338072 0.30333385 0.85299379
		 0.23371544 0.83632094 0.22633168 0.86740035 0.20901199 0.84666091 0.20062701 0.87340605
		 0.24202324 0.89799285 0.2103948 0.82684308 0.75598633 0.82019293 0.76546288 0.80102003
		 0.7370593 0.8027603 0.72910827 0.84539497 0.77268249 0.83649015 0.79191804 0.86381423
		 0.78303719 0.85895145 0.8057515 0.98994619 0.72856963 0.99831218 0.73060399 0.96191669
		 0.73759043 0.9600215 0.73277557 0.93833959 0.75633919 0.94102407 0.76973832 0.87902391
		 0.32664809 0.61747164 0.59943992 0.63414741 0.6031909 0.60417044 0.63448906 0.658764
		 0.60104638 0.58254135 0.62333906 0.59952217 0.59158671 0.88321745 0.78597248 0.88232684
		 0.8099671 0.91051924 0.77571976 0.91606849 0.80070966 0.80441254 0.21956331 0.7804904
		 0.21890832 0.77967221 0.25830901 0.80810553 0.19237967 0.78117394 0.19005664 0.83089894
		 0.7344746 0.80216593 0.7189008 0.85263658 0.74208766 0.87045252 0.74406362 0.88850826
		 0.74375588 0.91178131 0.74300098 0.96009296 0.72146398 0.98716104 0.71853787 0.93629014
		 0.73298526 0.61892867 0.5532102 0.60195792 0.54910392 0.63529003 0.55475771 0.65902227
		 0.55238104 0.80139452 0.69974631 0.83435076 0.71193308 0.85560632 0.71874833 0.87259161
		 0.72070342 0.89000756 0.72037876 0.91204292 0.71924329 0.95728856 0.70000762 0.98787826
		 0.69823939 0.93396741 0.71066171 0.80038768 0.67980582 0.79830903 0.65944165 0.83292794
		 0.66594023 0.8345865 0.6890015 0.85510182 0.67067552 0.85602981 0.69482851 0.87203473
		 0.67264676 0.8727026 0.69690877 0.8897146 0.69671679 0.88912994 0.67291123 0.91106218
		 0.6953311 0.90984827 0.67140621 0.95658344 0.67906386 0.95583373 0.65832049 0.9855507
		 0.65432101 0.98692966 0.67665696 0.93286765 0.68808144 0.93229038 0.66571945 0.79662257
		 0.6383785 0.79635429 0.61317003 0.82918233 0.61822486 0.83081037 0.64274687 0.85129553
		 0.62182659 0.85321516 0.64661711 0.86875349 0.62348348 0.87046212 0.64871043 0.88641095
		 0.62365496 0.88786978 0.64927495 0.9069258 0.62221766 0.90871328 0.64791399 0.98356146
		 0.63124502 0.95541292 0.63755906 0.95306998 0.61169112 0.98037714 0.6044448 0.93173987
		 0.64357764 0.92972332 0.61772889 0.83731663 0.5473032 0.8089304 0.54024291 0.81786186
		 0.53109896 0.83982539 0.5369119 0.85443163 0.54731059 0.85523182 0.53776127 0.86850452
		 0.5461126 0.86770213 0.53723586 0.88277209 0.54525763 0.88039845 0.53605121 0.89901024
		 0.5436753 0.89573836 0.53428906 0.95962238 0.52856201 0.93553877 0.53862065 0.93159568
		 0.52681315 0.951334 0.51855153 0.91634554 0.54198247 0.91310507 0.53145331 0.82290274
		 0.51449519 0.84331208 0.52081549 0.85744619 0.52127415 0.8688612 0.52100301 0.88050753
		 0.52033335 0.89389592 0.51872718 0.92405957 0.51207602 0.94313401 0.50422233 0.90852046
		 0.51678425 0.83444417 0.56017548 0.80459148 0.55052209 0.85351801 0.56285036 0.86920804
		 0.56254262 0.88506782 0.56114966 0.90221071 0.55822182 0.96526229 0.53903854 0.93927372
		 0.54925162 0.91990733 0.55472302 0.85059017 0.14482147 0.84935105 0.17314291 0.80960876
		 0.16932927 0.80987203 0.14245172 0.87611914 0.14787047 0.87253702 0.17754599 0.90478724
		 0.15187983 0.90162545 0.1828094 0.58672112 0.48551154 0.55558026 0.48636621;
	setAttr ".uvst[0].uvsp[4250:4499]" 0.55858696 0.45848331 0.58609343 0.45938089
		 0.61581415 0.51818842 0.58729702 0.51299047 0.63663912 0.52068663 0.61403632 0.48629111
		 0.63860577 0.48615536 0.61336321 0.46123087 0.6401394 0.46196654 0.81061262 0.11090482
		 0.80968612 0.081463367 0.84909523 0.081993692 0.85060018 0.11208668 0.87865889 0.081820063
		 0.87862051 0.11377209 0.90919745 0.080563925 0.90782672 0.11587635 0.56078821 0.42659017
		 0.56133217 0.39560172 0.58250475 0.3980116 0.58459198 0.42677087 0.61161536 0.40304369
		 0.61244977 0.42854509 0.64351755 0.40422085 0.64192975 0.42933983 0.6611852 0.51748931
		 0.66413224 0.48270088 0.66789705 0.40423143 0.66693842 0.42782402 0.77893007 0.2945123
		 0.7771709 0.30606765 0.68568003 0.63019872 0.68564034 0.64121747 0.68578649 0.60055286
		 0.68596786 0.55010015 0.78146005 0.16845083 0.78130645 0.14170997 0.78128207 0.1103763
		 0.78084892 0.080874853 0.68609428 0.51494479 0.68621707 0.4807781 0.5507825 0.51203293
		 0.66548055 0.46000898 0.68629587 0.45885277 0.81096655 0.056154601 0.85133278 0.059367549
		 0.88023019 0.060414918 0.91116166 0.061148155 0.56266415 0.3784585 0.58331972 0.38371819
		 0.61221236 0.38907191 0.64381605 0.3918027 0.66792095 0.39182043 0.78082222 0.054416876
		 0.85243219 0.039317109 0.81061572 0.035138335 0.80992645 0.029850954 0.85039675 0.033407714
		 0.88165647 0.042378459 0.88172847 0.036156569 0.91045398 0.042634871 0.91041398 0.036367763
		 0.58657706 0.37003365 0.56713724 0.36285892 0.57015133 0.35799536 0.5897401 0.36434495
		 0.61452991 0.37693527 0.61719519 0.3718645 0.64516217 0.38078469 0.64732969 0.37602538
		 0.66852003 0.38030246 0.66981953 0.37619239 0.78093714 0.031194571 0.78151667 0.02642213
		 0.80878067 0.0057285852 0.84746695 0.0092130983 0.88286728 0.0114189 0.90948611 0.010403709
		 0.57415664 0.33303884 0.59512472 0.34067154 0.6245209 0.34756175 0.64992374 0.35144171
		 0.67069924 0.3512699 0.78078812 0.004229465 0.8004694 0.56893295 0.83129233 0.57647765
		 0.82970369 0.59325778 0.79808623 0.58744419 0.8514598 0.57996887 0.85041815 0.59712768
		 0.86815399 0.58057845 0.86741722 0.59857273 0.88506907 0.57994115 0.88484466 0.59863436
		 0.90418273 0.57786852 0.90493244 0.59704638 0.9459756 0.56710303 0.97169477 0.55800033
		 0.97614729 0.57736403 0.94944936 0.58606434 0.92467898 0.57343125 0.92680925 0.59254003
		 0.68657911 0.38007933 0.68653738 0.39169729 0.77607948 0.054451164 0.77173662 0.054156557
		 0.77207345 0.031629059 0.77641851 0.032005131 0.68641049 0.42696902 0.6864925 0.40417668
		 0.68659359 0.3760263 0.6866836 0.35105231 0.77640653 0.11012152 0.77648687 0.14145598
		 0.77231264 0.14130071 0.7721535 0.10997797 0.95381433 0.9676466 0.95381433 0.98111075
		 0.94018918 0.9801423 0.94018918 0.9676466 0.94018918 0.94630784 0.95381433 0.94630784
		 0.94018918 0.92199725 0.95381433 0.92199725 0.95381433 0.90185803 0.94018918 0.90185803
		 0.95381433 0.87897599 0.94018918 0.87897688 0.77619559 0.21890567 0.77560115 0.25783616
		 0.77259415 0.25735569 0.77265269 0.21884654 0.77655238 0.18959442 0.77269256 0.18925123
		 0.77506822 0.29386318 0.77499932 0.30619675 0.77283227 0.30588892 0.77257401 0.29339886
		 0.77664316 0.16810282 0.77254921 0.16787671 0.77610725 0.080804326 0.77194816 0.080633126
		 0.77224219 0.027852362 0.77656496 0.027744737 0.77656746 0.0034620976 0.77227181
		 0.0037208546 0.94018918 0.98160446 0.95381433 0.98297668 0.95381433 0.98499227 0.94018918
		 0.98322749 0.8253693 0.51206696 0.83038068 0.49466842 0.84757602 0.4999021 0.84389633
		 0.5176366 0.85855925 0.50069141 0.85764825 0.51812977 0.86847478 0.500422 0.8688224
		 0.51793832 0.87899816 0.49985081 0.88021433 0.51724935 0.89136857 0.49896687 0.89347261
		 0.51587993 0.92254966 0.50919729 0.91872698 0.49403846 0.93372267 0.48662743 0.94031429
		 0.5021885 0.90774238 0.5137217 0.90414751 0.49679121 0.99938244 0.9676466 0.99938244
		 0.98040092 0.985654 0.98075086 0.985654 0.9676466 0.985654 0.94630784 0.99938244
		 0.94630784 0.985654 0.92199725 0.99938244 0.92199725 0.985654 0.90185803 0.99938244
		 0.90185803 0.985654 0.87897056 0.99938244 0.87894726 0.985654 0.98631227 0.985654
		 0.98256344 0.99938244 0.98241591 0.99938244 0.98590416 0.80863684 0.002445345 0.84743929
		 0.0059863273 0.88268006 0.0081422981 0.90886039 0.0068437485 0.57650918 0.33041316
		 0.59627217 0.33764514 0.62518984 0.34448329 0.65023136 0.34811476 0.6706059 0.3478829
		 0.78100383 0.0010166743 0.76869249 0.054549728 0.76882863 0.03196108 0.68669569 0.3476685
		 0.76888007 0.14117129 0.76876044 0.10983168 0.96669048 0.98195583 0.96669048 0.9676466
		 0.97037715 0.9676466 0.97054946 0.98111004 0.96669048 0.94630784 0.97029018 0.94630784
		 0.96669048 0.92199725 0.96939415 0.92199725 0.96669048 0.90185803 0.96986157 0.90185803
		 0.96669048 0.87917066 0.97031271 0.87906712 0.7691983 0.25734583 0.76936424 0.21892215
		 0.76930439 0.18906777 0.76911151 0.30664256 0.76908684 0.29315767 0.76905787 0.1677269
		 0.76869702 0.080734037 0.76885718 0.027964754 0.7688899 0.003746707 0.7720055 0.00038145791
		 0.77735299 2.1166072e-05 0.96669048 0.98713577 0.96669048 0.98494124 0.9704681 0.98429888
		 0.970474 0.9872117 0.95381433 0.9874422 0.94018918 0.98471981 0.71618682 0.31593695
		 0.73877412 0.29783833 0.74342251 0.30964962 0.72692668 0.32511523 0.70818794 0.34602886
		 0.72168469 0.34830362 0.71165049 0.63265431 0.73839146 0.64824665 0.72600394 0.65520149
		 0.70896447 0.64424431 0.70781815 0.27092642 0.73459715 0.26103389 0.68596035 0.30721185
		 0.67882925 0.33499494 0.68913943 0.27436298 0.66598064 0.27630228 0.66165102 0.30303675
		 0.68224484 0.23351058 0.69893533 0.22617087 0.66789651 0.2087779 0.68865478 0.2004434
		 0.66181213 0.24176417;
	setAttr ".uvst[0].uvsp[4500:4749]" 0.63730115 0.21009356 0.57747698 0.82912844
		 0.59978217 0.79865545 0.60212165 0.80647182 0.58514082 0.83769286 0.57019073 0.86586499
		 0.55966979 0.84752572 0.5483855 0.88142997 0.54166508 0.85900205 0.40911272 0.80983883
		 0.44007352 0.81511438 0.43827003 0.81999844 0.39993122 0.81137508 0.46426889 0.83779252
		 0.46243012 0.85106456 0.65592521 0.32632652 0.75410765 0.59993112 0.76715654 0.63507479
		 0.73740536 0.603562 0.71280485 0.60124058 0.77211291 0.59220713 0.78886521 0.6240806
		 0.52481788 0.88744533 0.52249724 0.86358601 0.48973334 0.8805964 0.49420041 0.85551423
		 0.73085636 0.2194802 0.75477666 0.21887639 0.75549829 0.25829184 0.7272265 0.19228767
		 0.75416261 0.19002852 0.57197243 0.80762798 0.59939039 0.7882663 0.55054998 0.81715822
		 0.5325796 0.82027292 0.51422083 0.82171708 0.49047801 0.82298762 0.43954653 0.80385733
		 0.41212639 0.80016857 0.46471184 0.81450963 0.75298303 0.55369198 0.76998276 0.54970795
		 0.73661083 0.5551219 0.71289635 0.55257475 0.56670582 0.78526688 0.59825981 0.76869494
		 0.54585129 0.79408294 0.52874517 0.79722649 0.51105583 0.79868615 0.48860338 0.79944521
		 0.41112536 0.78037375 0.44180495 0.78264064 0.46585667 0.7922985 0.59725606 0.74838841
		 0.56440789 0.76215905 0.56381971 0.73868066 0.59727973 0.72764295 0.54357076 0.77023482
		 0.54239941 0.74585694 0.52688795 0.77361733 0.52578366 0.74954504 0.50968188 0.77523804
		 0.50871187 0.75144339 0.48813298 0.77564502 0.487802 0.75183731 0.44161141 0.76197207
		 0.4113518 0.75950539 0.41144481 0.73800868 0.44093063 0.74146187 0.46498281 0.74766749
		 0.46579549 0.7698428 0.59678358 0.70639551 0.56353635 0.71510148 0.56244701 0.69036508
		 0.59449506 0.68142122 0.54189593 0.72142667 0.54114908 0.69623667 0.52513599 0.72537702
		 0.52426314 0.69984955 0.50806034 0.72789079 0.50697845 0.70204788 0.48730686 0.72831559
		 0.4866372 0.702595 0.41163597 0.71559405 0.41239807 0.68929452 0.43997818 0.69551486
		 0.44004479 0.72106057 0.46357661 0.7002939 0.46403679 0.72589737 0.54793113 0.62020904
		 0.54430288 0.61013609 0.56529641 0.60170811 0.57533669 0.60986704 0.53085142 0.62192005
		 0.52898818 0.61271143 0.51667488 0.62255323 0.51647502 0.61375892 0.50246733 0.62313151
		 0.50370657 0.61381048 0.48648956 0.62364537 0.48840693 0.61377704 0.42560524 0.61358875
		 0.43280745 0.60288703 0.4527474 0.61010808 0.450313 0.62212956 0.47133192 0.61284137
		 0.4695394 0.6238175 0.53896368 0.5945881 0.55819076 0.58568513 0.52503049 0.5967589
		 0.51386476 0.59778959 0.50238198 0.59832031 0.48901412 0.59827983 0.43944338 0.58745575
		 0.45832115 0.59488291 0.47424614 0.59758574 0.580598 0.6199066 0.55213052 0.63274038
		 0.53357828 0.63722485 0.51818603 0.63884342 0.50260317 0.63930357 0.48542556 0.63858837
		 0.44774073 0.63289875 0.42118937 0.6244272 0.46746278 0.63675463 0.68484962 0.14463519
		 0.72557253 0.14235635 0.72577614 0.16923375 0.68602645 0.17295624 0.65931398 0.14762804
		 0.66283107 0.17730677 0.63063723 0.15157609 0.63373113 0.18250613 0.7856763 0.48622677
		 0.78649181 0.46010131 0.81400412 0.45940155 0.81681007 0.48730528 0.75634903 0.51869357
		 0.78490275 0.5137009 0.73550677 0.52104193 0.75835627 0.48680994 0.73378843 0.48649752
		 0.73242873 0.46229848 0.75920963 0.46175531 0.72490025 0.11080969 0.68490988 0.11190385
		 0.6864782 0.081816547 0.72588885 0.081371829 0.65688568 0.11352894 0.65691435 0.081580207
		 0.62767488 0.11557198 0.62637812 0.080261037 0.81203216 0.42749357 0.7882278 0.42750302
		 0.79052168 0.39875969 0.81171113 0.39650208 0.76035798 0.42907691 0.76137567 0.40358216
		 0.73087293 0.42965955 0.72946578 0.40452987 0.71098441 0.51766837 0.70828736 0.48285973
		 0.70508707 0.40436518 0.70587593 0.42796403 0.75617903 0.29454118 0.75782478 0.30613911
		 0.75392556 0.16841921 0.75413948 0.14167841 0.75423259 0.11034646 0.75472736 0.080846891
		 0.82142341 0.51300585 0.70710236 0.46015859 0.68428719 0.059186894 0.72466069 0.056060798
		 0.65538722 0.0601735 0.62445402 0.060843002 0.78980964 0.38446075 0.81050253 0.37934965
		 0.76087922 0.3896066 0.72925657 0.39210987 0.70515251 0.39195427 0.75480849 0.054388367
		 0.68322897 0.039134894 0.68527651 0.033230029 0.72575456 0.029759575 0.7250545 0.035045467
		 0.6539979 0.042135008 0.65393865 0.035913277 0.62519956 0.042332377 0.62525243 0.036065657
		 0.78665096 0.37075311 0.7835288 0.36504182 0.80316293 0.35883328 0.80614185 0.36371839
		 0.75864911 0.37745345 0.75602043 0.3723636 0.72799003 0.38108242 0.7258566 0.37630779
		 0.70463622 0.38043231 0.70336622 0.37631306 0.75417155 0.026391514 0.75474119 0.031165281
		 0.68825549 0.0090420516 0.72694957 0.0056398599 0.65285003 0.011173654 0.62623292
		 0.01010426 0.77831459 0.34133038 0.79933697 0.33384866 0.7488696 0.3480089 0.72343981
		 0.35170597 0.70266593 0.35138479 0.75494576 0.0042008013 0.58622336 0.63801646 0.59033471
		 0.6561529 0.55968177 0.66556972 0.55652827 0.64890331 0.53940254 0.67126298 0.53713357
		 0.65420765 0.52283984 0.67473364 0.52089107 0.65678328 0.50571173 0.67681819 0.50427264
		 0.658099 0.48590302 0.67746085 0.48532569 0.65823126 0.44338486 0.65114653 0.4412097
		 0.66996872 0.41419905 0.66245461 0.41693208 0.64338118 0.46493199 0.65580994 0.46396342
		 0.6750412 0.75955105 0.054433044 0.75925815 0.031985134 0.76360393 0.031617347 0.76389456
		 0.05414781 0.75910848 0.11010254 0.76336193 0.10996867 0.76313436 0.14128922 0.75895959
		 0.14143528 0.95381433 0.77548981 0.95381433 0.78949285 0.94018918 0.78949285 0.94018918
		 0.77585804 0.94018918 0.81105757 0.95381433 0.81105757 0.94018918 0.83553475 0.95381433
		 0.83553475 0.95381433 0.85599571 0.94018918 0.85599571 0.75907111 0.21888217 0.76261401
		 0.21882968;
	setAttr ".uvst[0].uvsp[4750:4844]" 0.76257718 0.25734857 0.75957 0.25782478 0.75878537
		 0.18957801 0.76264596 0.18924499 0.7600401 0.2938641 0.76253939 0.29342243 0.76198554
		 0.30584005 0.75980908 0.30609652 0.76283741 0.16786452 0.75874311 0.16808181 0.75946921
		 0.08078675 0.7636286 0.080624923 0.76344323 0.0278426 0.75912058 0.027724819 0.75916815
		 0.0034424935 0.76346332 0.0037107011 0.94018918 0.77434635 0.94018918 0.77271831
		 0.95381433 0.77246618 0.95381433 0.77390826 0.55532157 0.58364993 0.53794491 0.59153044
		 0.53197962 0.57423872 0.54864198 0.56706828 0.52453375 0.59364009 0.52137166 0.57639378
		 0.51352179 0.59477174 0.51177311 0.57739246 0.5021677 0.5952661 0.50159937 0.57801872
		 0.48898503 0.59539181 0.48963591 0.57846725 0.45930457 0.59188658 0.44234675 0.58520448
		 0.44792831 0.56826216 0.46430373 0.57447004 0.47469437 0.59449118 0.47731259 0.57734048
		 0.99938244 0.78949285 0.985654 0.78949285 0.985654 0.77888626 0.99938244 0.77978712
		 0.985654 0.81105757 0.99938244 0.81105757 0.985654 0.83553475 0.99938244 0.83553475
		 0.99938244 0.85599571 0.985654 0.85599571 0.985654 0.77783507 0.985654 0.7741273
		 0.99938244 0.77440602 0.99938244 0.77786243 0.6882897 0.0058152801 0.72710019 0.00235701
		 0.65304393 0.0078974441 0.6268658 0.0065454706 0.77718896 0.33829567 0.79700351 0.33120605
		 0.74822295 0.34492561 0.72315592 0.3483769 0.70278347 0.34799862 0.7547366 0.00098754175
		 0.76684809 0.031953815 0.76693767 0.054547463 0.76675528 0.10982996 0.76656711 0.14116761
		 0.96669048 0.77731586 0.97067833 0.77864724 0.97060555 0.78949285 0.96669048 0.78949285
		 0.97091562 0.81105757 0.96669048 0.81105757 0.9694137 0.83553475 0.96669048 0.83553475
		 0.9698379 0.85599571 0.96669048 0.85599571 0.76590234 0.21891099 0.76597202 0.2573435
		 0.7660349 0.18907104 0.76602507 0.29314047 0.7657339 0.30651838 0.76632887 0.16772197
		 0.76687944 0.080733016 0.76682836 0.027964519 0.76684523 0.0037439733 0.75838959
		 0 0.76373655 0.00037161686 0.96669048 0.7722829 0.97007859 0.77336842 0.97033888
		 0.77609426 0.96669048 0.77520412 0.94018918 0.77104765 0.95381433 0.769916 0.9672218
		 0.99073988 0.96909589 0.7687251;
	setAttr ".uvst[1].uvsn" -type "string" "uvSet1";
	setAttr -s 4837 ".uvst[1].uvsp";
	setAttr ".uvst[1].uvsp[0:249]" -type "float2" 0.48458964 0.59717602 0.48420244
		 0.60498965 0.47781789 0.60422719 0.47908232 0.59628105 0.47138408 0.60277253 0.47310939
		 0.59466755 0.48322061 0.62174517 0.47558668 0.62034369 0.46841908 0.61766469 0.45689526
		 0.60640687 0.45997956 0.59281272 0.45565987 0.61199147 0.4903118 0.59600633 0.49087921
		 0.60459483 0.49664268 0.59426677 0.49797234 0.6035586 0.50333077 0.59321725 0.50539374
		 0.6024425 0.50951797 0.59217232 0.5118342 0.60088938 0.49121645 0.6221168 0.49966034
		 0.62066239 0.5077799 0.61832309 0.51483119 0.61565685 0.93393558 0.60032111 0.94444585
		 0.59276241 0.94594914 0.59938544 0.93474191 0.60621399 0.95079094 0.58921254 0.95218056
		 0.59633076 0.45366019 0.59216195 0.4520812 0.59920007 0.94830251 0.61029488 0.93783408
		 0.61881799 0.95357376 0.60725772 0.45019162 0.61035573 0.90759635 0.62647748 0.90894365
		 0.6123718 0.91507065 0.61235821 0.91567087 0.62730169 0.92171663 0.61108977 0.92379034
		 0.62604749 0.91114485 0.60463738 0.91643596 0.60415936 0.92228854 0.60307413 0.92846173
		 0.60901684 0.93129277 0.62299424 0.92841792 0.60184288 0.51772952 0.5990274 0.52162671
		 0.61311847 0.52345532 0.59751987 0.52976602 0.6105029 0.90183961 0.5814575 0.89901781
		 0.57519537 0.90618062 0.57003975 0.90998977 0.57638782 0.91192079 0.56402016 0.9192422
		 0.56917411 0.53489494 0.56940269 0.53082216 0.57183015 0.52618521 0.56440353 0.53063142
		 0.56183052 0.5224672 0.55774409 0.52728599 0.55527437 0.91418856 0.55739403 0.92213309
		 0.55930901 0.91463435 0.55091172 0.92287296 0.55196452 0.51947087 0.55218983 0.52444625
		 0.54996592 0.51689184 0.5469287 0.52172065 0.54510427 0.87155867 0.60449082 0.88660753
		 0.60625684 0.88520604 0.61360425 0.87078559 0.6109643 0.89122266 0.60716671 0.88797337
		 0.61529505 0.88371497 0.62131554 0.86895376 0.61730933 0.88826644 0.62405199 0.90174711
		 0.6031841 0.89927584 0.60946161 0.89503878 0.60803956 0.89690185 0.6024797 0.89196396
		 0.60230821 0.86969864 0.59079915 0.8837198 0.59008503 0.88679099 0.60212851 0.87144154
		 0.60100716 0.88741022 0.58810508 0.54171622 0.58572674 0.54638535 0.59115988 0.53895324
		 0.59839958 0.53407735 0.59438753 0.55774897 0.60422242 0.54990095 0.6115188 0.53692186
		 0.60140061 0.53286719 0.5981133 0.54729742 0.61420572 0.55518615 0.58592397 0.56622756
		 0.59840292 0.55228484 0.58040279 0.55864507 0.58446616 0.5692336 0.59654021 0.55666351
		 0.57924587 0.84961575 0.60218269 0.86013323 0.60318381 0.85946202 0.60927594 0.85027677
		 0.60722965 0.85638773 0.61544055 0.84543395 0.6096186 0.84339893 0.59774941 0.85626036
		 0.59083921 0.85985422 0.60003316 0.84956181 0.59922796 0.56419194 0.61186641 0.5577513
		 0.61889255 0.57189775 0.62044632 0.56655359 0.62299865 0.55630285 0.62128735 0.566176
		 0.62506491 0.57265705 0.60757107 0.57392049 0.61849058 0.57548195 0.60682446 0.57577813
		 0.61964047 0.49677262 0.69720161 0.49472204 0.69438934 0.49870622 0.69270229 0.49977398
		 0.6967023 0.49215683 0.68421894 0.49692398 0.68264121 0.50319606 0.69184148 0.50299466
		 0.69548982 0.5017305 0.68160415 0.50718123 0.69257742 0.50567287 0.69748145 0.50599796
		 0.68127859 0.90460402 0.70749354 0.9025386 0.70190805 0.9066335 0.70194912 0.90693307
		 0.70566726 0.90347463 0.68962783 0.90782648 0.69038302 0.49053162 0.67378342 0.49552974
		 0.67227483 0.50083119 0.6709671 0.4894183 0.66432399 0.49415085 0.66281778 0.4884868
		 0.65605879 0.49331152 0.65432811 0.49968815 0.66161251 0.49889648 0.65353274 0.50534821
		 0.67098147 0.90413362 0.67901653 0.90882063 0.67951393 0.50496435 0.6618191 0.50423229
		 0.65402883 0.90417576 0.67005646 0.90963519 0.67021596 0.90458155 0.66264689 0.90993804
		 0.66178423 0.48779857 0.65128446 0.4928382 0.64932913 0.49877217 0.64868957 0.48632205
		 0.64607561 0.49240911 0.64374018 0.48266873 0.6300292 0.49152982 0.63000172 0.49965909
		 0.6434924 0.50080872 0.62856811 0.50418431 0.64987183 0.90434372 0.65906435 0.90983623
		 0.65728164 0.50524819 0.64616692 0.506513 0.64458811 0.90314859 0.65615416 0.90911496
		 0.65267801 0.90244281 0.65463108 0.90740198 0.63508028 0.95196158 0.65715098 0.94663745
		 0.64843106 0.95126468 0.64673072 0.95626426 0.65441245 0.4569819 0.65597713 0.45945877
		 0.64621687 0.46471205 0.64650685 0.46166363 0.65647012 0.94475245 0.64327264 0.95042419
		 0.64288729 0.94088787 0.62637138 0.95086432 0.64000016 0.45978999 0.64111948 0.4655087
		 0.64003205 0.45883748 0.63776219 0.46660691 0.62442547 0.4697316 0.64815384 0.46631899
		 0.65774578 0.47376615 0.65069073 0.47059336 0.65965599 0.47161299 0.64204782 0.47432846
		 0.62781841 0.47631428 0.64549619 0.94740677 0.66045916 0.94164038 0.65168875 0.94291145
		 0.66354507 0.93754011 0.65571767 0.93911123 0.66652775 0.93438965 0.65966386 0.47462851
		 0.66185361 0.47757897 0.65374762 0.93920499 0.64669734 0.93418902 0.65141374 0.93402416
		 0.63167518 0.92578804 0.63547826 0.93175066 0.65720272 0.4792383 0.64969581 0.93007207
		 0.6561237 0.48072892 0.64801008 0.88997549 0.65405232 0.88796479 0.64724928 0.89186954
		 0.6446386 0.89433616 0.65088439 0.88534892 0.6415028 0.88866162 0.63972181 0.53600281
		 0.63525361 0.53103882 0.63739049 0.52889842 0.63369626 0.53380871 0.63179755 0.52564079
		 0.64073253 0.52327138 0.63713688 0.89924622 0.63102472 0.89189941 0.62836277 0.52318609
		 0.61937529 0.52968246 0.61773407 0.51634419 0.62212944 0.89629853 0.65723544 0.89243263
		 0.65989751 0.51416123 0.65310591 0.51111788 0.64973652 0.51392472 0.64537805 0.51700145
		 0.64909768 0.51760107 0.6412068 0.5204367 0.64500391 0.50915581 0.62529725 0.43952197
		 0.63558334 0.44265473 0.63231796 0.44925782 0.64001822 0.44547507 0.64311916 0.44942749
		 0.62503994;
	setAttr ".uvst[1].uvsp[250:499]" 0.45735353 0.63372105 0.45423093 0.61664033
		 0.45182407 0.64395869 0.44822299 0.64702195 0.9629072 0.64246547 0.95849365 0.64063412
		 0.95915765 0.63635206 0.96384591 0.63786471 0.45740363 0.63833708 0.95175964 0.63914573
		 0.9503848 0.63441044 0.87250644 0.6628657 0.87028009 0.65731311 0.87785703 0.65334189
		 0.88017786 0.6598562 0.86792076 0.65203434 0.87530881 0.64754176 0.54616964 0.65265113
		 0.54246658 0.65494603 0.53772539 0.64792186 0.54142702 0.64551157 0.53869647 0.65743506
		 0.53365457 0.65096694 0.88224876 0.66497242 0.87449414 0.66715914 0.52755535 0.66696942
		 0.52192461 0.66138762 0.52451295 0.65812188 0.53009003 0.66374999 0.5286845 0.654549
		 0.5341602 0.66041225 0.42781106 0.64729333 0.43376988 0.65343493 0.43577808 0.65696871
		 0.97891903 0.64695531 0.98036683 0.64311892 0.96273428 0.67323637 0.959755 0.66903287
		 0.96355432 0.66647798 0.96643049 0.67063344 0.45209542 0.67432106 0.45365098 0.66959882
		 0.45763144 0.67006457 0.45605016 0.67469686 0.46196032 0.67105657 0.4604159 0.67554986
		 0.46625942 0.67245126 0.46464056 0.6768961 0.95804393 0.67595226 0.95505458 0.67182267
		 0.95333225 0.67879784 0.95057482 0.67462265 0.94968224 0.68118161 0.94703543 0.67714792
		 0.46834716 0.67843455 0.47003987 0.67399377 0.85533935 0.66742527 0.85312158 0.66438216
		 0.8563177 0.66259396 0.85846502 0.66715473 0.85132867 0.66131264 0.85362989 0.65853602
		 0.55325168 0.66909713 0.55044007 0.67032981 0.54964632 0.66648918 0.55329698 0.66584164
		 0.54735875 0.6700778 0.54614598 0.66746521 0.85969436 0.67127728 0.85468036 0.67057711
		 0.5432632 0.67731738 0.53858751 0.67667413 0.53947645 0.67318761 0.54242396 0.67453974
		 0.5424577 0.66991502 0.54499716 0.67246598 0.41870579 0.65884793 0.4199571 0.65632606
		 0.4245711 0.66140234 0.42224649 0.66267896 0.42558315 0.66479152 0.42178282 0.66535044
		 0.99677336 0.64788896 0.99256223 0.64937085 0.99244851 0.64568204 0.99518591 0.64573562
		 0.97142011 0.69023883 0.97086406 0.68700057 0.97478092 0.68527138 0.97466731 0.69087076
		 0.45012587 0.69411886 0.44840905 0.68959486 0.45220572 0.68834823 0.45234329 0.69177032
		 0.4564065 0.68886763 0.45552161 0.69275528 0.4603599 0.69058549 0.45878011 0.69340438
		 0.96844107 0.69240928 0.96651155 0.689138 0.96509117 0.6939162 0.96248472 0.69161046
		 0.9644447 0.69700909 0.95945692 0.6947121 0.4599852 0.69642007 0.46347588 0.69316393
		 0.46429852 0.5769912 0.47909543 0.57788509 0.46606439 0.56940645 0.48443457 0.56878042
		 0.45766857 0.57704794 0.94047272 0.57827044 0.94703746 0.57365423 0.4591966 0.56983978
		 0.9375369 0.56984919 0.94630957 0.56584996 0.46703878 0.56273043 0.48348233 0.56048083
		 0.46732002 0.55661851 0.48250401 0.55406547 0.46018076 0.56324214 0.93903965 0.55957025
		 0.94698656 0.55856723 0.46045139 0.55722958 0.93947548 0.55238557 0.9474926 0.55198276
		 0.49011114 0.55302334 0.49166393 0.55955905 0.49649617 0.55217046 0.4984524 0.55875218
		 0.49377698 0.56679648 0.50084847 0.5659138 0.50187814 0.55123335 0.5041073 0.55781192
		 0.5068962 0.55005211 0.50931168 0.55643672 0.50685763 0.5649184 0.51238251 0.56327599
		 0.49710876 0.5749523 0.49040315 0.57692373 0.50371796 0.57403177 0.51003975 0.57285047
		 0.51616347 0.570916 0.51566046 0.59068137 0.52206123 0.58998674 0.57014614 0.62436873
		 0.92860126 0.56932712 0.906353 0.60417664 0.50123149 0.70032763 0.49610862 0.70029426
		 0.91602057 0.71040261 0.90982896 0.71095335 0.91026932 0.70707941 0.91405427 0.70755702
		 0.85027748 0.66689855 0.54789954 0.67493212 0.84813654 0.66210306 0.41625983 0.659666
		 0.99703199 0.64031047 0.9996829 0.63919961 0.45467559 0.69679832 0.97060376 0.69577432
		 0.93073499 0.5598948 0.9313271 0.5524568 0.91649014 0.63651758 0.91634482 0.65245712
		 0.92395985 0.65394992 0.91618907 0.65738511 0.92281038 0.65898991 0.92923689 0.6577754
		 0.48215556 0.64961725 0.92857718 0.661524 0.4832536 0.6536147 0.94975489 0.61470664
		 0.95416194 0.62187147 0.96140397 0.62635434 0.95436209 0.61118752 0.95751023 0.61770862
		 0.44910508 0.61449784 0.44547617 0.62220228 0.96426564 0.62152767 0.43934554 0.62903303
		 0.9159146 0.66215265 0.91539192 0.67092758 0.92229676 0.66362691 0.92144924 0.67223066
		 0.91434234 0.68042088 0.92023885 0.68162823 0.92805856 0.66559184 0.92700058 0.67334324
		 0.48398244 0.65783501 0.48512563 0.66578281 0.92527342 0.68267685 0.48656273 0.67496055
		 0.96562564 0.62802076 0.98310286 0.63381267 0.96806788 0.62302572 0.98423129 0.62936485
		 0.43615767 0.63233256 0.42450756 0.64529741 0.99476844 0.63876015 0.99706376 0.63539863
		 0.41659302 0.65563822 0.89125139 0.62162912 0.89995193 0.62408799 0.84316128 0.60571927
		 0.91870427 0.69270033 0.92343813 0.69377869 0.92006379 0.70608294 0.91594958 0.70433664
		 0.48847246 0.68556678 0.49220964 0.69678247 0.91311187 0.69135606 0.91118085 0.70283747
		 0.92279887 0.54500771 0.91434109 0.54426074 0.51913255 0.54006839 0.51473761 0.54151344
		 0.48158318 0.54761606 0.46699983 0.55039799 0.939197 0.54565662 0.93123543 0.54552913
		 0.48503715 0.58167458 0.49483031 0.54564214 0.48877028 0.54650664 0.45998794 0.5511924
		 0.94715261 0.54534364 0.50506777 0.54375941 0.50008273 0.54475063 0.90380776 0.61113912
		 0.88908297 0.61688989 0.89407486 0.5852744 0.88451713 0.5838443 0.89152592 0.57973814
		 0.53627288 0.57912058 0.53982395 0.57690912 0.52838725 0.5914858 0.52844948 0.59714496
		 0.53225231 0.60551894 0.53456813 0.60444111 0.50828302 0.77335501 0.50904453 0.77909052
		 0.51269853 0.77822149 0.51155901 0.77294052 0.51635253 0.77735251 0.514835 0.77252603
		 0.50980598 0.78482598 0.51383799 0.78350246 0.51787001 0.782179 0.51857048 0.77515125;
	setAttr ".uvst[1].uvsp[500:749]" 0.516976 0.77095252 0.52078849 0.77295005
		 0.519117 0.76937902 0.52016497 0.77935004 0.52245998 0.77652103 0.51009899 0.79046148
		 0.51491654 0.78986526 0.51973403 0.78926897 0.51039201 0.79609698 0.51599503 0.79622799
		 0.52159798 0.796359 0.52234024 0.78511852 0.52494645 0.78096801 0.52451551 0.790887
		 0.52743298 0.78541499 0.51880699 0.76244003 0.52023399 0.76033497 0.51762849 0.75808501
		 0.51655102 0.76103103 0.51502299 0.755835 0.51429498 0.75962198 0.52166098 0.75822997
		 0.51870596 0.75513899 0.515751 0.75204802 0.51102746 0.75919247 0.51089752 0.76244622
		 0.51409149 0.76259696 0.51076746 0.76569998 0.513888 0.76557201 0.50775999 0.75876302
		 0.50770348 0.76229548 0.50764698 0.76582801 0.51116323 0.76932025 0.5143615 0.76904905
		 0.50796497 0.76959151 0.52078497 0.76591599 0.52234948 0.76673651 0.52129173 0.76353574
		 0.51979601 0.76417804 0.52391398 0.76755702 0.52278745 0.7628935 0.52581525 0.76271403
		 0.52489299 0.75554049 0.52884299 0.7625345 0.52812499 0.75285101 0.52673745 0.76988751
		 0.52956098 0.77221799 0.52156901 0.76984328 0.51995099 0.7676475 0.52318698 0.77203906
		 0.52584195 0.77542776 0.52849698 0.77881646 0.55114001 0.78328997 0.54588103 0.77471298
		 0.54382175 0.78217274 0.54865253 0.78982997 0.54176247 0.78963244 0.54616499 0.79636997
		 0.540622 0.76613599 0.53899097 0.77451551 0.53736001 0.78289497 0.53974575 0.79581273
		 0.54363096 0.80204844 0.53772902 0.80199301 0.54109699 0.80772698 0.53586054 0.78957701
		 0.534361 0.79625899 0.53437352 0.75949347 0.53391695 0.768525 0.5334605 0.77755648
		 0.53217876 0.78419673 0.53089702 0.79083699 0.56623203 0.75527102 0.55902898 0.74738455
		 0.55510801 0.75328177 0.56193352 0.76180601 0.55118704 0.759179 0.55763501 0.768341
		 0.551826 0.73949802 0.5482825 0.74475753 0.54473901 0.75001699 0.54853404 0.76694596
		 0.55438751 0.77581549 0.5426805 0.75807649 0.54434299 0.73386252 0.54121524 0.73903775
		 0.53808749 0.74421299 0.53685999 0.72822702 0.53414798 0.73331797 0.53143603 0.73840898
		 0.5362305 0.75185323 0.52978051 0.74563003 0.52995503 0.72460103 0.52767473 0.73004872
		 0.5253945 0.73549652 0.52305001 0.72097498 0.52120149 0.72677946 0.51935297 0.732584
		 0.52415425 0.74172473 0.52291399 0.747953 0.51852798 0.73781949 0.517703 0.74305499
		 0.51715851 0.7195465 0.51570725 0.72561699 0.514256 0.73168749 0.51126701 0.71811801
		 0.51021302 0.72445452 0.50915897 0.73079097 0.5137037 0.73671472 0.51315153 0.74174201
		 0.50887948 0.73561001 0.5086 0.74042898 0.51150823 0.75514722 0.50799346 0.7544595
		 0.511989 0.75110197 0.50822699 0.75015599 0.52081001 0.75154603 0.51672697 0.7475515
		 0.51257026 0.74642199 0.50841349 0.74529248 0.5 0.795663 0.50519598 0.79587996 0.50504947
		 0.79047096 0.5 0.79048049 0.50490296 0.78506196 0.5 0.78529799 0.5 0.77365297 0.5
		 0.77947545 0.5045222 0.77928299 0.50414151 0.77350402 0.50398248 0.769669 0.5 0.76974648
		 0.50382352 0.76583397 0.5 0.76583999 0.50385177 0.76228178 0.5 0.76226801 0.50388002
		 0.75872952 0.5 0.75869602 0.5 0.74002498 0.5 0.74496746 0.50420678 0.74513 0.5043
		 0.74022698 0.5 0.74991 0.5041135 0.75003302 0.50399673 0.7543813 0.5 0.75430298 0.5
		 0.71742797 0.5 0.723943 0.50510645 0.7241987 0.50563347 0.71777296 0.5 0.73045802
		 0.50457948 0.7306245 0.5 0.73524153 0.50443971 0.73542571 0.50759298 0.81727302 0.50994051
		 0.81665701 0.51178169 0.81211054 0.50851095 0.81186652 0.513623 0.80756402 0.50942898
		 0.80646002 0.51228797 0.81604099 0.5150525 0.81235451 0.51781702 0.80866802 0.51480901
		 0.80189598 0.50991046 0.80127847 0.5197075 0.80251348 0.51425898 0.82090199 0.51781821
		 0.81700623 0.5213775 0.81311047 0.51622999 0.82576299 0.52058399 0.82165802 0.52493799
		 0.81755298 0.52387404 0.80738449 0.52637053 0.80165851 0.52804053 0.8122555 0.53114301
		 0.80695802 0.5 0.80101651 0.50495523 0.80114746 0.5 0.80637002 0.50471449 0.80641502
		 0.5 0.81153798 0.50425547 0.81170225 0.5 0.816706 0.50379646 0.81698954 0.50641376
		 0.71005648 0.5 0.70959496 0.50719404 0.70234001 0.5 0.70176202 0.51282752 0.710518
		 0.51438802 0.70291799 0.50800323 0.69563025 0.5 0.6950295 0.50881249 0.6889205 0.5
		 0.68829697 0.51600647 0.69623101 0.51762497 0.68954402 0.51955652 0.71261227 0.52195454
		 0.70567799 0.52628553 0.71470648 0.52952099 0.70843798 0.52451348 0.69917321 0.52707249
		 0.6926685 0.5330205 0.70211548 0.53652 0.69579297 0.53395677 0.7192502 0.5379585
		 0.71389949 0.541628 0.72379398 0.54639602 0.71936101 0.54233074 0.70770699 0.54670298
		 0.70151448 0.55164099 0.7132985 0.55688602 0.70723599 0.57176805 0.74990249 0.56454027
		 0.74265456 0.55731249 0.73540652 0.57730401 0.74453402 0.57005149 0.73792452 0.56279898
		 0.73131502 0.54947025 0.72960025 0.5545975 0.72533798 0.58323348 0.73945904 0.576024
		 0.73248422 0.56881452 0.72550952 0.58916301 0.734384 0.5819965 0.72704399 0.57483
		 0.71970397 0.56022775 0.71940398 0.56585801 0.71346998 0.56595498 0.81784803 0.57045448
		 0.81361151 0.56698596 0.80417073 0.56270099 0.809228 0.56351745 0.79472995 0.55944699
		 0.80060798 0.57495397 0.80937499 0.57127094 0.79911351 0.56758797 0.78885198 0.55895245
		 0.78527272 0.5552935 0.79194897 0.56261146 0.77859652 0.58030295 0.80427849 0.57656848
		 0.79305375 0.57283401 0.781829 0.58565199 0.799182 0.58186603 0.78699398 0.57808
		 0.77480602 0.56738377 0.77181751 0.57215601 0.76503849 0.55255353 0.79792726 0.55645448
		 0.80602449;
	setAttr ".uvst[1].uvsp[750:999]" 0.54981351 0.80390549 0.55346197 0.811441
		 0.55934697 0.81382728 0.56223953 0.82163 0.55599296 0.81842649 0.55852401 0.82541198
		 0.54703474 0.80892026 0.55043852 0.81579196 0.54425597 0.81393498 0.54741502 0.82014298
		 0.55294251 0.82284701 0.55544651 0.82990199 0.54989201 0.82726753 0.552369 0.83439201
		 0.57755876 0.75947797 0.5829615 0.75391752 0.58334947 0.76905352 0.58861899 0.76330101
		 0.58871549 0.74916726 0.59446949 0.74441701 0.59419751 0.75887549 0.59977597 0.75445002
		 0.58789372 0.78111804 0.59392148 0.77524197 0.59243798 0.79318249 0.59922397 0.78718299
		 0.598059 0.76853126 0.60219646 0.76182055 0.60192049 0.77818704 0.604617 0.76919103
		 0.538598 0.83695 0.54179096 0.8360005 0.53980529 0.83164626 0.53663951 0.83322001
		 0.5378195 0.82729197 0.53468102 0.82949001 0.54498398 0.835051 0.54297101 0.83007252
		 0.54095799 0.82509398 0.535523 0.82379246 0.53270602 0.82656699 0.53322649 0.82029295
		 0.53073102 0.82364398 0.53833997 0.82101798 0.53572202 0.81694198 0.54867649 0.83472151
		 0.54643154 0.82867002 0.54418647 0.82261848 0.54129797 0.81747651 0.53840947 0.81233448
		 0.61784798 0.72247899 0.61205548 0.709149 0.6034525 0.71284378 0.60994649 0.72491252
		 0.59484947 0.71653849 0.602045 0.727346 0.60626298 0.69581902 0.59695852 0.70077503
		 0.58765399 0.70573097 0.58842301 0.72179127 0.595604 0.730865 0.58124197 0.71271747
		 0.59768748 0.68303955 0.58675373 0.68825752 0.57581997 0.69347548 0.58911198 0.67026001
		 0.57654899 0.67574 0.563986 0.68122 0.57083899 0.70347273 0.56043601 0.69422799 0.52756071
		 0.68343651 0.51791948 0.68141752 0.52804899 0.67420447 0.51821399 0.67329103 0.537202
		 0.68545544 0.537884 0.67511797 0.52503896 0.66324055 0.51638746 0.66401702 0.53369051
		 0.66246402 0.54881901 0.68984175 0.55093503 0.67816901 0.54481149 0.66324079 0.55593252
		 0.6640175 0.50895977 0.68114901 0.5 0.68088049 0.50910699 0.67337751 0.5 0.673464
		 0.50819373 0.66461074 0.5 0.66520452 0.52670348 0.82873702 0.52902353 0.83100998
		 0.53134352 0.83328301 0.52267599 0.83383 0.52534103 0.83545303 0.52800602 0.83707601
		 0.53341603 0.83610874 0.53548849 0.83893454 0.53019249 0.83899748 0.53237897 0.84091902
		 0.5167805 0.83967549 0.52064824 0.84082448 0.52451599 0.84197354 0.510885 0.84552097
		 0.51595551 0.846196 0.52102602 0.84687102 0.52723223 0.84282076 0.52994847 0.84366798
		 0.52427197 0.84664404 0.52751797 0.84641701 0.54869002 0.85014802 0.54944652 0.84784055
		 0.54742205 0.84757149 0.54700553 0.85030353 0.54539752 0.8473025 0.54532099 0.85045898
		 0.55020303 0.84553301 0.54783851 0.84483951 0.54547399 0.84414601 0.54281795 0.84745973
		 0.54288745 0.8505975 0.5402385 0.84761703 0.54045397 0.85073602 0.54274845 0.84432197
		 0.54002297 0.84449798 0.55128598 0.83996248 0.54825747 0.83978051 0.54522896 0.83959854
		 0.54226971 0.8401612 0.53931046 0.84072399 0.56815398 0.851179 0.56858897 0.84261048
		 0.56454754 0.84453577 0.56405902 0.85226154 0.56050599 0.846461 0.559964 0.85334402
		 0.56902403 0.83404201 0.565036 0.83680999 0.56104797 0.83957797 0.55768502 0.84796524
		 0.557019 0.85357302 0.55486399 0.84946954 0.55407399 0.85380203 0.55835098 0.84235752
		 0.55565399 0.845137 0.5674895 0.82594502 0.56363773 0.82922 0.55978596 0.83249497
		 0.55689871 0.83612978 0.55401146 0.83976448 0.53645194 0.84215903 0.5374155 0.84538352
		 0.53359348 0.84359401 0.53480798 0.84626901 0.53768849 0.84811723 0.53796148 0.850851
		 0.53513849 0.84861749 0.535469 0.85096598 0.53134727 0.8455888 0.53274596 0.8475095
		 0.52910101 0.84758353 0.53068399 0.84875 0.53329176 0.84927297 0.5338375 0.85103649
		 0.53144503 0.8499285 0.532206 0.851107 0.57358098 0.849612 0.57385999 0.84044498
		 0.574139 0.83127797 0.57900798 0.84804499 0.57913101 0.83827949 0.57925397 0.82851398
		 0.57229674 0.82244474 0.57710397 0.81894445 0.58483398 0.84619296 0.58488125 0.83582222
		 0.58492851 0.82545149 0.59065998 0.84434098 0.59063148 0.83336496 0.59060299 0.82238901
		 0.58261573 0.81486499 0.58812749 0.81078553 0.55113399 0.87677801 0.55668104 0.87925446
		 0.56223351 0.87276828 0.55653846 0.87145305 0.56778598 0.86628199 0.56194299 0.86612803
		 0.56222802 0.88173097 0.56792855 0.87408352 0.57362902 0.866436 0.57068348 0.85794699
		 0.56504846 0.85865355 0.5763185 0.8572405 0.5683915 0.883362 0.57405353 0.8746475
		 0.57971549 0.865933 0.57455498 0.88499302 0.5801785 0.87521148 0.58580202 0.86543
		 0.58227473 0.85606301 0.58823097 0.85488546 0.60106099 0.88665003 0.60549098 0.87354302
		 0.59899926 0.87443578 0.59411252 0.88683152 0.59250748 0.87532854 0.58716398 0.88701302
		 0.60992098 0.86043602 0.60388601 0.86204004 0.59785098 0.863644 0.58634299 0.87527001
		 0.58085948 0.88600302 0.5918265 0.864537 0.611637 0.85092354 0.60589576 0.8517133
		 0.60015452 0.852503 0.61335301 0.84141099 0.60790551 0.8413865 0.602458 0.841362
		 0.59419274 0.85369426 0.59655899 0.84285152 0.54174602 0.86207199 0.54338753 0.8660965
		 0.54754573 0.86384875 0.54541147 0.86074603 0.55170399 0.861601 0.54907697 0.85942
		 0.54502898 0.870121 0.54967999 0.86695147 0.554331 0.86378199 0.55436146 0.85758698
		 0.55157548 0.85661101 0.5571475 0.85856301 0.54808152 0.8734495 0.55310923 0.86920226
		 0.558137 0.86495501 0.56109798 0.85860825 0.55227 0.85318053 0.54998028 0.8552525
		 0.54769051 0.85732448 0.550466 0.85255897 0.54838502 0.853894 0.54630399 0.85522902
		 0.54447049 0.85826701 0.54125047 0.85920954 0.54352951 0.85578799 0.54075497 0.85634702
		 0.54957801 0.85135353 0.54769528 0.85209876 0.54581249 0.852844;
	setAttr ".uvst[1].uvsp[1000:1249]" 0.54320848 0.85319275 0.54060447 0.85354149
		 0.62624997 0.77722198 0.61930251 0.77357101 0.61706424 0.77967048 0.62256646 0.78326148
		 0.61482596 0.78577 0.61888301 0.78930098 0.61235499 0.76991999 0.61156201 0.77607954
		 0.61076897 0.78223902 0.6146785 0.79048973 0.618092 0.79249799 0.61453098 0.79520953
		 0.61730099 0.79569501 0.61126494 0.78848147 0.61176097 0.79472399 0.608486 0.76955551
		 0.60674125 0.77713329 0.60499644 0.784711 0.6072787 0.79042673 0.60956097 0.79614246
		 0.60329247 0.79237199 0.60736102 0.79756099 0.61365348 0.73787129 0.6209805 0.736368
		 0.61736047 0.75082999 0.62411302 0.75025702 0.60632646 0.73937452 0.61060798 0.75140297
		 0.61833149 0.76220047 0.6251815 0.76373947 0.61148149 0.76066148 0.60039794 0.74189579
		 0.60519195 0.75292647 0.60683894 0.76124102 0.544357 0.87998152 0.54951155 0.88367623
		 0.55466604 0.88737094 0.53758001 0.88318497 0.54234201 0.888098 0.547104 0.89301097
		 0.5605408 0.88984096 0.56641549 0.89231098 0.55269003 0.89631999 0.558276 0.899629
		 0.52984351 0.88379002 0.53417552 0.89032477 0.53850746 0.89685953 0.52210701 0.884395
		 0.52600896 0.89255154 0.52991098 0.90070802 0.543832 0.90133822 0.54915649 0.90581703
		 0.53497398 0.90635651 0.54003698 0.91200501 0.52765203 0.85784799 0.52451253 0.86362803
		 0.52923298 0.86537874 0.53083003 0.85983396 0.53395355 0.8671295 0.53400803 0.86181998
		 0.52137297 0.86940801 0.52763599 0.87092352 0.53389901 0.87243903 0.53867054 0.86661303
		 0.53787702 0.86194599 0.539464 0.87128001 0.52173996 0.87690151 0.52873975 0.87735677
		 0.53573954 0.87781203 0.54191053 0.87563074 0.53784525 0.85899377 0.53444004 0.858778
		 0.53781348 0.85604155 0.534872 0.85573602 0.53177273 0.857252 0.52910554 0.855726
		 0.5327155 0.85467005 0.530559 0.85360402 0.53788745 0.85344625 0.5351705 0.853351
		 0.5332765 0.8528533 0.5313825 0.85235548 0.50990349 0.85209095 0.51484179 0.85183954
		 0.51978004 0.85158801 0.50892198 0.858661 0.51372802 0.85748303 0.518534 0.856305
		 0.52313048 0.85042828 0.52648097 0.8492685 0.52198899 0.85421252 0.52544397 0.85211998
		 0.508757 0.86418349 0.51435524 0.86352003 0.51995349 0.86285651 0.50859201 0.86970598
		 0.51498246 0.86955702 0.52325076 0.85892028 0.52654803 0.85498399 0.52580726 0.91054773
		 0.53009999 0.91772246 0.51664048 0.91473901 0.520163 0.92343998 0.52151448 0.903373
		 0.51311797 0.90603799 0.50832027 0.91682303 0.51008153 0.92680502 0.5 0.91890699
		 0.5 0.93017 0.50655901 0.90684098 0.5 0.90764397 0.51853049 0.89388299 0.51105201
		 0.8952145 0.5155465 0.88439298 0.508986 0.88439101 0.50552601 0.89590549 0.5 0.89659649
		 0.504493 0.88497001 0.5 0.88554901 0.5 0.84845501 0.5 0.85444796 0.50495172 0.85326946
		 0.5054425 0.84698796 0.5 0.86044097 0.50446099 0.85955095 0.5 0.86558348 0.5043785
		 0.86488348 0.5 0.87072599 0.504296 0.87021601 0.5 0.82479799 0.503977 0.82422304
		 0.507954 0.82364798 0.5 0.83288997 0.50415754 0.83145648 0.50831503 0.83002299 0.5
		 0.84067249 0.50480002 0.83922219 0.50960004 0.83777201 0.63134903 0.82634097 0.63949955
		 0.82597947 0.63947225 0.81397998 0.63164604 0.81440496 0.63944501 0.8019805 0.63194299
		 0.80246902 0.64765 0.82561797 0.64729851 0.813555 0.64694703 0.80149198 0.63763577
		 0.78912371 0.62909651 0.78984547 0.63582647 0.77626699 0.64617503 0.78840196 0.64540303
		 0.77531201 0.65763402 0.82607049 0.65721846 0.81375802 0.65680301 0.80144548 0.66761798
		 0.82652301 0.66713846 0.81396103 0.666659 0.80139899 0.65598375 0.78815848 0.65516448
		 0.77487147 0.66579247 0.78791499 0.66492599 0.77443099 0.62808728 0.81297624 0.62812501
		 0.82243502 0.62452853 0.81154752 0.624901 0.81852901 0.62804949 0.80351752 0.624156
		 0.80456603 0.62273002 0.81074423 0.62334454 0.81652498 0.62093151 0.80994099 0.62178802
		 0.81452101 0.62211549 0.80496347 0.62007499 0.80536097 0.62530798 0.7933895 0.62151951
		 0.79693353 0.62010372 0.79873073 0.61868799 0.80052799 0.6344955 0.76267171 0.63316453
		 0.74907649 0.64380956 0.76160401 0.64221603 0.74789602 0.63031203 0.73451626 0.62745953
		 0.71995598 0.63964355 0.73266447 0.63707101 0.71743298 0.65346104 0.7606653 0.65175748
		 0.74645901 0.66311252 0.75972652 0.66129899 0.745022 0.64958602 0.73060596 0.64741451
		 0.71475297 0.65952849 0.72854745 0.657758 0.71207297 0.62257576 0.705863 0.61769199
		 0.69177002 0.63309598 0.70257699 0.62912101 0.68772101 0.60960948 0.67878699 0.60152698
		 0.66580403 0.62153149 0.6745345 0.62398231 0.66972178 0.64462525 0.69800627 0.64183599
		 0.68125951 0.65615451 0.69343549 0.64219934 0.67750776 0.63331872 0.66831851 0.61882651
		 0.81109154 0.62011802 0.8162145 0.61672151 0.81224203 0.61844802 0.81790799 0.617535
		 0.80596852 0.614995 0.80657601 0.61431104 0.81333148 0.61621904 0.81871152 0.61190051
		 0.814421 0.61399001 0.81951499 0.61240304 0.80795151 0.60981101 0.80932701 0.61603296
		 0.80058903 0.61337799 0.80065 0.610982 0.80204701 0.60858601 0.80344403 0.66849023
		 0.72789901 0.66687548 0.7115835 0.67745197 0.72725052 0.67599303 0.71109402 0.67010498
		 0.74421453 0.67891097 0.74340701 0.68520075 0.72687101 0.68367201 0.71091402 0.69294953
		 0.72649151 0.691351 0.71073401 0.68672949 0.74282801 0.69454801 0.74224901 0.67189825
		 0.75921077 0.68068397 0.75869501 0.67369151 0.774207 0.68245697 0.773983 0.68842971
		 0.75798225 0.69617552 0.7572695 0.69013 0.7731365 0.69780302 0.77228999 0.674869
		 0.78784573 0.68394548 0.78777647 0.67604649 0.80148447 0.68543398 0.80157 0.69164002
		 0.78676301;
	setAttr ".uvst[1].uvsp[1250:1499]" 0.6993345 0.7857495 0.69314998 0.80038953
		 0.70086598 0.799209 0.67664075 0.81442022 0.68614298 0.81487954 0.67723501 0.82735598
		 0.68685198 0.82818902 0.69366723 0.81458426 0.70119148 0.81428897 0.69418448 0.82877898
		 0.70151699 0.82936901 0.61826348 0.84009302 0.61800396 0.83428526 0.61366051 0.83526301
		 0.61774451 0.8284775 0.61396801 0.82911497 0.62317401 0.83877498 0.62234747 0.8333075
		 0.621521 0.82783997 0.61698174 0.82359445 0.61397898 0.82431495 0.61998451 0.82287395
		 0.62726152 0.83255798 0.62523627 0.82787126 0.62321103 0.82318449 0.62166452 0.81969947
		 0.657947 0.83962274 0.66744351 0.84074199 0.65825999 0.85317498 0.66726899 0.85496098
		 0.64845049 0.83850348 0.64925098 0.85138899 0.65663195 0.86856151 0.66493601 0.87080252
		 0.65500402 0.88394797 0.66260302 0.88664401 0.64832795 0.86632049 0.64740497 0.88125199
		 0.64075327 0.83869249 0.64200699 0.8514055 0.63305604 0.83888149 0.634763 0.85142201
		 0.64117348 0.86604452 0.64033997 0.88068348 0.63401902 0.86576849 0.63327497 0.88011497
		 0.627913 0.84318823 0.62856448 0.85381854 0.62277001 0.84749496 0.62236601 0.856215
		 0.62687576 0.86793745 0.62518698 0.88205647 0.6197325 0.87010646 0.61709899 0.88399798
		 0.61720347 0.84920925 0.61614347 0.85832548 0.61261177 0.87182474 0.60907996 0.885324
		 0.57273424 0.89423704 0.57905298 0.89616299 0.56460899 0.90247101 0.57094198 0.90531301
		 0.58610702 0.8974123 0.59316099 0.89866149 0.57810152 0.90799302 0.58526099 0.91067302
		 0.55519974 0.90976954 0.561243 0.91372204 0.54579049 0.917068 0.55154401 0.922131
		 0.56868553 0.91751206 0.57612801 0.92130202 0.55926955 0.92703104 0.56699502 0.93193102
		 0.61023599 0.93773097 0.61656451 0.92409551 0.60579973 0.9248035 0.59885645 0.93803501
		 0.59503496 0.92551148 0.58747697 0.93833899 0.62289298 0.91046 0.61274302 0.91157198
		 0.602593 0.91268402 0.58558154 0.92340678 0.577236 0.93513501 0.59392703 0.91167855
		 0.62808394 0.89528751 0.61896503 0.89681423 0.609846 0.898341 0.60150349 0.89850128
		 0.54882228 0.93679321 0.55746305 0.94302547 0.53837502 0.9465555 0.54793102 0.95411998
		 0.54018152 0.93056101 0.52881902 0.93899101 0.52700526 0.95753646 0.53960097 0.96669197
		 0.51563549 0.96851754 0.53127098 0.97926402 0.51440954 0.94838101 0.5 0.957771 0.53514075
		 0.92414176 0.52449101 0.93121552 0.51224554 0.93759298 0.5 0.9439705 0.59887302 0.98611403
		 0.60078102 0.97458804 0.58602601 0.97483623 0.58313501 0.98661852 0.571271 0.97508454
		 0.567397 0.98712301 0.60268903 0.96306199 0.58891702 0.963054 0.57514501 0.96304601
		 0.55543602 0.97088826 0.54933399 0.98319352 0.56153798 0.958583 0.60646248 0.95039648
		 0.59388673 0.95054448 0.58131099 0.95069253 0.56938696 0.946859 0.63584626 0.8952167
		 0.64360845 0.89514601 0.63135248 0.90974998 0.63981199 0.90903997 0.65069425 0.8976
		 0.65778005 0.90005398 0.64638448 0.91125202 0.65295702 0.91346401 0.62599826 0.92269099
		 0.635432 0.92128646 0.62064397 0.93563199 0.63105202 0.93353301 0.64208299 0.92167503
		 0.64873397 0.92206347 0.6377815 0.93209803 0.64451098 0.93066299 0.67684275 0.84211826
		 0.68624198 0.84349453 0.67645049 0.85688049 0.68563199 0.85879999 0.69344103 0.84482396
		 0.70063996 0.8461535 0.69269753 0.86086899 0.699763 0.86293799 0.67361653 0.87333703
		 0.68229699 0.87587154 0.67078251 0.88979352 0.67896199 0.89294302 0.689439 0.87874901
		 0.69658101 0.88162649 0.68618047 0.89662898 0.69339901 0.90031499 0.6383152 0.94180822
		 0.64677095 0.93819702 0.63884902 0.95151848 0.64903098 0.94573098 0.62985951 0.94541949
		 0.628667 0.95730597 0.64150298 0.96232873 0.65278351 0.95601797 0.64415699 0.97313905
		 0.65653598 0.96630502 0.6302225 0.96863949 0.631778 0.97997302 0.61816096 0.94790798
		 0.61567801 0.96018398 0.61550176 0.97161376 0.61532551 0.98304355 0.66517723 0.9042908
		 0.67257452 0.90852749 0.65957201 0.91878802 0.66618699 0.92411202 0.67936301 0.91398001
		 0.6861515 0.91943252 0.67254549 0.93133104 0.678904 0.93855 0.65317148 0.92849255
		 0.65760899 0.9349215 0.66266453 0.9436745 0.66771996 0.95242751 0.52863377 0.79624772
		 0.53275204 0.8016085 0.53558075 0.80697149 0.53343248 0.81194997 0.53063351 0.81627423
		 0.52783453 0.82059848 0.51452649 0.83378422 0.51227248 0.82789302 0.51945299 0.82979649
		 0.51110649 0.82227498 0.52364373 0.82519746 0.5 0.87813747 0.50439453 0.87759304
		 0.508789 0.87704849 0.65455097 0.67479801 0.66609049 0.69456726 0.6653055 0.67755103
		 0.67602652 0.69569898 0.67606002 0.68030399 0.68365651 0.69634902 0.68364102 0.68178403
		 0.6912865 0.69699901 0.69122201 0.68326402 0.59679103 0.82039797 0.59461451 0.80679023
		 0.602979 0.818407 0.60110152 0.80279499 0.55316824 0.85001898 0.55147249 0.85056847
		 0.55406648 0.84685749 0.55247897 0.84857798 0.5526762 0.84341002 0.551341 0.84705549
		 0.52962649 0.85242903 0.52808726 0.85370648 0.52869397 0.85125399 0.52706897 0.85168695
		 0.51526451 0.876975 0.5504595 0.84920454 0.59667504 0.83162475 0.60271847 0.82988453
		 0.56812149 0.66011977 0.58031046 0.65622199 0.61018705 0.81909096 0.60847354 0.82376099
		 0.60639501 0.81386697 0.60484374 0.80311954 0.5305357 0.85117877 0.52968895 0.85000199
		 0.52808499 0.84963524 0.60818952 0.83257377 0.59263802 0.6499238 0.51756501 0.76543403
		 0.51572651 0.76550305 0.51635122 0.76822782 0.518341 0.76740652 0.51906848 0.76579225
		 0.51818597 0.763937 0.51613879 0.76326704 0.61394203 0.66134799 0.62093222 0.6575048
		 0.62480152 0.65537751 0.64999878 0.66867912 0.64510596 0.66210246 0.50828302 0.77335501
		 0.51155901 0.77294052 0.51269853 0.77822149 0.50904453 0.77909052;
	setAttr ".uvst[1].uvsp[1500:1749]" 0.514835 0.77252603 0.51635253 0.77735251
		 0.51383799 0.78350246 0.50980598 0.78482598 0.51787001 0.782179 0.516976 0.77095252
		 0.51857048 0.77515125 0.519117 0.76937902 0.52078849 0.77295005 0.52016497 0.77935004
		 0.52245998 0.77652103 0.51491654 0.78986526 0.51009899 0.79046148 0.51973403 0.78926897
		 0.51599503 0.79622799 0.51039201 0.79609698 0.52159798 0.796359 0.52234024 0.78511852
		 0.52494645 0.78096801 0.52451551 0.790887 0.52743298 0.78541499 0.51880699 0.76244003
		 0.51655102 0.76103103 0.51762849 0.75808501 0.52023399 0.76033497 0.51429498 0.75962198
		 0.51502299 0.755835 0.51870596 0.75513899 0.52166098 0.75822997 0.515751 0.75204802
		 0.51409149 0.76259696 0.51089752 0.76244622 0.51102746 0.75919247 0.513888 0.76557201
		 0.51076746 0.76569998 0.50770348 0.76229548 0.50775999 0.75876302 0.50764698 0.76582801
		 0.5143615 0.76904905 0.51116323 0.76932025 0.50796497 0.76959151 0.52078497 0.76591599
		 0.51979601 0.76417804 0.52129173 0.76353574 0.52234948 0.76673651 0.52278745 0.7628935
		 0.52391398 0.76755702 0.52489299 0.75554049 0.52581525 0.76271403 0.52812499 0.75285101
		 0.52884299 0.7625345 0.52673745 0.76988751 0.52956098 0.77221799 0.51995099 0.7676475
		 0.52156901 0.76984328 0.52318698 0.77203906 0.52584195 0.77542776 0.52849698 0.77881646
		 0.55114001 0.78328997 0.54865253 0.78982997 0.54382175 0.78217274 0.54588103 0.77471298
		 0.54616499 0.79636997 0.54176247 0.78963244 0.53899097 0.77451551 0.540622 0.76613599
		 0.53736001 0.78289497 0.54363096 0.80204844 0.53974575 0.79581273 0.54109699 0.80772698
		 0.53772902 0.80199301 0.53586054 0.78957701 0.534361 0.79625899 0.53391695 0.768525
		 0.53437352 0.75949347 0.5334605 0.77755648 0.53217876 0.78419673 0.53089702 0.79083699
		 0.56623203 0.75527102 0.56193352 0.76180601 0.55510801 0.75328177 0.55902898 0.74738455
		 0.55763501 0.768341 0.55118704 0.759179 0.5482825 0.74475753 0.551826 0.73949802
		 0.54473901 0.75001699 0.55438751 0.77581549 0.54853404 0.76694596 0.5426805 0.75807649
		 0.54121524 0.73903775 0.54434299 0.73386252 0.53808749 0.74421299 0.53414798 0.73331797
		 0.53685999 0.72822702 0.53143603 0.73840898 0.5362305 0.75185323 0.52978051 0.74563003
		 0.52767473 0.73004872 0.52995503 0.72460103 0.5253945 0.73549652 0.52120149 0.72677946
		 0.52305001 0.72097498 0.51935297 0.732584 0.52415425 0.74172473 0.52291399 0.747953
		 0.51852798 0.73781949 0.517703 0.74305499 0.51570725 0.72561699 0.51715851 0.7195465
		 0.514256 0.73168749 0.51021302 0.72445452 0.51126701 0.71811801 0.50915897 0.73079097
		 0.5137037 0.73671472 0.51315153 0.74174201 0.50887948 0.73561001 0.5086 0.74042898
		 0.51150823 0.75514722 0.50799346 0.7544595 0.511989 0.75110197 0.50822699 0.75015599
		 0.52081001 0.75154603 0.51672697 0.7475515 0.51257026 0.74642199 0.50841349 0.74529248
		 0.5 0.795663 0.5 0.79048049 0.50504947 0.79047096 0.50519598 0.79587996 0.5 0.78529799
		 0.50490296 0.78506196 0.5 0.77365297 0.50414151 0.77350402 0.5045222 0.77928299 0.5
		 0.77947545 0.5 0.76974648 0.50398248 0.769669 0.5 0.76583999 0.50382352 0.76583397
		 0.5 0.76226801 0.50385177 0.76228178 0.5 0.75869602 0.50388002 0.75872952 0.5 0.74002498
		 0.5043 0.74022698 0.50420678 0.74513 0.5 0.74496746 0.5041135 0.75003302 0.5 0.74991
		 0.50399673 0.7543813 0.5 0.75430298 0.5 0.71742797 0.50563347 0.71777296 0.50510645
		 0.7241987 0.5 0.723943 0.50457948 0.7306245 0.5 0.73045802 0.50443971 0.73542571
		 0.5 0.73524153 0.50759298 0.81727302 0.50851095 0.81186652 0.51178169 0.81211054
		 0.50994051 0.81665701 0.50942898 0.80646002 0.513623 0.80756402 0.5150525 0.81235451
		 0.51228797 0.81604099 0.51781702 0.80866802 0.50991046 0.80127847 0.51480901 0.80189598
		 0.5197075 0.80251348 0.51781821 0.81700623 0.51425898 0.82090199 0.5213775 0.81311047
		 0.52058399 0.82165802 0.51622999 0.82576299 0.52493799 0.81755298 0.52387404 0.80738449
		 0.52637053 0.80165851 0.52804053 0.8122555 0.53114301 0.80695802 0.50495523 0.80114746
		 0.5 0.80101651 0.50471449 0.80641502 0.5 0.80637002 0.50425547 0.81170225 0.5 0.81153798
		 0.50379646 0.81698954 0.5 0.816706 0.5 0.70959496 0.50641376 0.71005648 0.5 0.70176202
		 0.50719404 0.70234001 0.51282752 0.710518 0.51438802 0.70291799 0.5 0.6950295 0.50800323
		 0.69563025 0.5 0.68829697 0.50881249 0.6889205 0.51600647 0.69623101 0.51762497 0.68954402
		 0.51955652 0.71261227 0.52195454 0.70567799 0.52628553 0.71470648 0.52952099 0.70843798
		 0.52451348 0.69917321 0.52707249 0.6926685 0.5330205 0.70211548 0.53652 0.69579297
		 0.53395677 0.7192502 0.5379585 0.71389949 0.541628 0.72379398 0.54639602 0.71936101
		 0.54233074 0.70770699 0.54670298 0.70151448 0.55164099 0.7132985 0.55688602 0.70723599
		 0.56454027 0.74265456 0.57176805 0.74990249 0.55731249 0.73540652 0.57005149 0.73792452
		 0.57730401 0.74453402 0.56279898 0.73131502 0.54947025 0.72960025 0.5545975 0.72533798
		 0.576024 0.73248422 0.58323348 0.73945904 0.56881452 0.72550952 0.5819965 0.72704399
		 0.58916301 0.734384 0.57483 0.71970397 0.56022775 0.71940398 0.56585801 0.71346998
		 0.56595498 0.81784803 0.56270099 0.809228 0.56698596 0.80417073 0.57045448 0.81361151
		 0.55944699 0.80060798 0.56351745 0.79472995 0.57127094 0.79911351 0.57495397 0.80937499
		 0.56758797 0.78885198 0.5552935 0.79194897 0.55895245 0.78527272 0.56261146 0.77859652
		 0.57656848 0.79305375 0.58030295 0.80427849 0.57283401 0.781829 0.58186603 0.78699398;
	setAttr ".uvst[1].uvsp[1750:1999]" 0.58565199 0.799182 0.57808 0.77480602 0.56738377
		 0.77181751 0.57215601 0.76503849 0.55255353 0.79792726 0.55645448 0.80602449 0.54981351
		 0.80390549 0.55346197 0.811441 0.55934697 0.81382728 0.56223953 0.82163 0.55599296
		 0.81842649 0.55852401 0.82541198 0.54703474 0.80892026 0.55043852 0.81579196 0.54425597
		 0.81393498 0.54741502 0.82014298 0.55294251 0.82284701 0.55544651 0.82990199 0.54989201
		 0.82726753 0.552369 0.83439201 0.57755876 0.75947797 0.5829615 0.75391752 0.58334947
		 0.76905352 0.58861899 0.76330101 0.58871549 0.74916726 0.59446949 0.74441701 0.59419751
		 0.75887549 0.59977597 0.75445002 0.58789372 0.78111804 0.59392148 0.77524197 0.59243798
		 0.79318249 0.59922397 0.78718299 0.598059 0.76853126 0.60219646 0.76182055 0.60192049
		 0.77818704 0.604617 0.76919103 0.538598 0.83695 0.53663951 0.83322001 0.53980529
		 0.83164626 0.54179096 0.8360005 0.53468102 0.82949001 0.5378195 0.82729197 0.54297101
		 0.83007252 0.54498398 0.835051 0.54095799 0.82509398 0.53270602 0.82656699 0.535523
		 0.82379246 0.53073102 0.82364398 0.53322649 0.82029295 0.53833997 0.82101798 0.53572202
		 0.81694198 0.54643154 0.82867002 0.54867649 0.83472151 0.54418647 0.82261848 0.54129797
		 0.81747651 0.53840947 0.81233448 0.61784798 0.72247899 0.60994649 0.72491252 0.6034525
		 0.71284378 0.61205548 0.709149 0.602045 0.727346 0.59484947 0.71653849 0.59695852
		 0.70077503 0.60626298 0.69581902 0.58765399 0.70573097 0.595604 0.730865 0.58842301
		 0.72179127 0.58124197 0.71271747 0.58675373 0.68825752 0.59768748 0.68303955 0.57581997
		 0.69347548 0.57654899 0.67574 0.58911198 0.67026001 0.563986 0.68122 0.57083899 0.70347273
		 0.56043601 0.69422799 0.51791948 0.68141752 0.52756071 0.68343651 0.51821399 0.67329103
		 0.52804899 0.67420447 0.537202 0.68545544 0.537884 0.67511797 0.51638746 0.66401702
		 0.52503896 0.66324055 0.53369051 0.66246402 0.54881901 0.68984175 0.55093503 0.67816901
		 0.54481149 0.66324079 0.55593252 0.6640175 0.5 0.68088049 0.50895977 0.68114901 0.5
		 0.673464 0.50910699 0.67337751 0.5 0.66520452 0.50819373 0.66461074 0.52902353 0.83100998
		 0.52670348 0.82873702 0.53134352 0.83328301 0.52534103 0.83545303 0.52267599 0.83383
		 0.52800602 0.83707601 0.53341603 0.83610874 0.53548849 0.83893454 0.53019249 0.83899748
		 0.53237897 0.84091902 0.52064824 0.84082448 0.5167805 0.83967549 0.52451599 0.84197354
		 0.51595551 0.846196 0.510885 0.84552097 0.52102602 0.84687102 0.52723223 0.84282076
		 0.52994847 0.84366798 0.52427197 0.84664404 0.52751797 0.84641701 0.54869002 0.85014802
		 0.54700553 0.85030353 0.54742205 0.84757149 0.54944652 0.84784055 0.54532099 0.85045898
		 0.54539752 0.8473025 0.54783851 0.84483951 0.55020303 0.84553301 0.54547399 0.84414601
		 0.54288745 0.8505975 0.54281795 0.84745973 0.54045397 0.85073602 0.5402385 0.84761703
		 0.54274845 0.84432197 0.54002297 0.84449798 0.54825747 0.83978051 0.55128598 0.83996248
		 0.54522896 0.83959854 0.54226971 0.8401612 0.53931046 0.84072399 0.56815398 0.851179
		 0.56405902 0.85226154 0.56454754 0.84453577 0.56858897 0.84261048 0.559964 0.85334402
		 0.56050599 0.846461 0.565036 0.83680999 0.56902403 0.83404201 0.56104797 0.83957797
		 0.557019 0.85357302 0.55768502 0.84796524 0.55407399 0.85380203 0.55486399 0.84946954
		 0.55835098 0.84235752 0.55565399 0.845137 0.56363773 0.82922 0.5674895 0.82594502
		 0.55978596 0.83249497 0.55689871 0.83612978 0.55401146 0.83976448 0.53645194 0.84215903
		 0.5374155 0.84538352 0.53359348 0.84359401 0.53480798 0.84626901 0.53768849 0.84811723
		 0.53796148 0.850851 0.53513849 0.84861749 0.535469 0.85096598 0.53134727 0.8455888
		 0.53274596 0.8475095 0.52910101 0.84758353 0.53068399 0.84875 0.53329176 0.84927297
		 0.5338375 0.85103649 0.53144503 0.8499285 0.532206 0.851107 0.57385999 0.84044498
		 0.57358098 0.849612 0.574139 0.83127797 0.57913101 0.83827949 0.57900798 0.84804499
		 0.57925397 0.82851398 0.57229674 0.82244474 0.57710397 0.81894445 0.58488125 0.83582222
		 0.58483398 0.84619296 0.58492851 0.82545149 0.59063148 0.83336496 0.59065998 0.84434098
		 0.59060299 0.82238901 0.58261573 0.81486499 0.58812749 0.81078553 0.55113399 0.87677801
		 0.55653846 0.87145305 0.56223351 0.87276828 0.55668104 0.87925446 0.56194299 0.86612803
		 0.56778598 0.86628199 0.56792855 0.87408352 0.56222802 0.88173097 0.57362902 0.866436
		 0.56504846 0.85865355 0.57068348 0.85794699 0.5763185 0.8572405 0.57405353 0.8746475
		 0.5683915 0.883362 0.57971549 0.865933 0.5801785 0.87521148 0.57455498 0.88499302
		 0.58580202 0.86543 0.58227473 0.85606301 0.58823097 0.85488546 0.60106099 0.88665003
		 0.59411252 0.88683152 0.59899926 0.87443578 0.60549098 0.87354302 0.58716398 0.88701302
		 0.59250748 0.87532854 0.60388601 0.86204004 0.60992098 0.86043602 0.59785098 0.863644
		 0.58085948 0.88600302 0.58634299 0.87527001 0.5918265 0.864537 0.60589576 0.8517133
		 0.611637 0.85092354 0.60015452 0.852503 0.60790551 0.8413865 0.61335301 0.84141099
		 0.602458 0.841362 0.59419274 0.85369426 0.59655899 0.84285152 0.54174602 0.86207199
		 0.54541147 0.86074603 0.54754573 0.86384875 0.54338753 0.8660965 0.54907697 0.85942
		 0.55170399 0.861601 0.54967999 0.86695147 0.54502898 0.870121 0.554331 0.86378199
		 0.55157548 0.85661101 0.55436146 0.85758698 0.5571475 0.85856301 0.55310923 0.86920226
		 0.54808152 0.8734495 0.558137 0.86495501 0.56109798 0.85860825 0.54998028 0.8552525
		 0.55227 0.85318053 0.54769051 0.85732448 0.54838502 0.853894 0.550466 0.85255897
		 0.54630399 0.85522902 0.54447049 0.85826701;
	setAttr ".uvst[1].uvsp[2000:2249]" 0.54125047 0.85920954 0.54352951 0.85578799
		 0.54075497 0.85634702 0.54769528 0.85209876 0.54957801 0.85135353 0.54581249 0.852844
		 0.54320848 0.85319275 0.54060447 0.85354149 0.62624997 0.77722198 0.62256646 0.78326148
		 0.61706424 0.77967048 0.61930251 0.77357101 0.61888301 0.78930098 0.61482596 0.78577
		 0.61156201 0.77607954 0.61235499 0.76991999 0.61076897 0.78223902 0.618092 0.79249799
		 0.6146785 0.79048973 0.61730099 0.79569501 0.61453098 0.79520953 0.61126494 0.78848147
		 0.61176097 0.79472399 0.60674125 0.77713329 0.608486 0.76955551 0.60499644 0.784711
		 0.6072787 0.79042673 0.60956097 0.79614246 0.60329247 0.79237199 0.60736102 0.79756099
		 0.6209805 0.736368 0.61365348 0.73787129 0.62411302 0.75025702 0.61736047 0.75082999
		 0.60632646 0.73937452 0.61060798 0.75140297 0.6251815 0.76373947 0.61833149 0.76220047
		 0.61148149 0.76066148 0.60039794 0.74189579 0.60519195 0.75292647 0.60683894 0.76124102
		 0.54951155 0.88367623 0.544357 0.87998152 0.55466604 0.88737094 0.54234201 0.888098
		 0.53758001 0.88318497 0.547104 0.89301097 0.5605408 0.88984096 0.56641549 0.89231098
		 0.55269003 0.89631999 0.558276 0.899629 0.53417552 0.89032477 0.52984351 0.88379002
		 0.53850746 0.89685953 0.52600896 0.89255154 0.52210701 0.884395 0.52991098 0.90070802
		 0.543832 0.90133822 0.54915649 0.90581703 0.53497398 0.90635651 0.54003698 0.91200501
		 0.52765203 0.85784799 0.53083003 0.85983396 0.52923298 0.86537874 0.52451253 0.86362803
		 0.53400803 0.86181998 0.53395355 0.8671295 0.52763599 0.87092352 0.52137297 0.86940801
		 0.53389901 0.87243903 0.53787702 0.86194599 0.53867054 0.86661303 0.539464 0.87128001
		 0.52873975 0.87735677 0.52173996 0.87690151 0.53573954 0.87781203 0.54191053 0.87563074
		 0.53784525 0.85899377 0.53444004 0.858778 0.53781348 0.85604155 0.534872 0.85573602
		 0.53177273 0.857252 0.52910554 0.855726 0.5327155 0.85467005 0.530559 0.85360402
		 0.53788745 0.85344625 0.5351705 0.853351 0.5332765 0.8528533 0.5313825 0.85235548
		 0.51484179 0.85183954 0.50990349 0.85209095 0.51978004 0.85158801 0.51372802 0.85748303
		 0.50892198 0.858661 0.518534 0.856305 0.52313048 0.85042828 0.52648097 0.8492685
		 0.52198899 0.85421252 0.52544397 0.85211998 0.51435524 0.86352003 0.508757 0.86418349
		 0.51995349 0.86285651 0.51498246 0.86955702 0.50859201 0.86970598 0.52325076 0.85892028
		 0.52654803 0.85498399 0.53009999 0.91772246 0.52580726 0.91054773 0.520163 0.92343998
		 0.51664048 0.91473901 0.52151448 0.903373 0.51311797 0.90603799 0.51008153 0.92680502
		 0.50832027 0.91682303 0.5 0.93017 0.5 0.91890699 0.50655901 0.90684098 0.5 0.90764397
		 0.51853049 0.89388299 0.51105201 0.8952145 0.5155465 0.88439298 0.508986 0.88439101
		 0.50552601 0.89590549 0.5 0.89659649 0.504493 0.88497001 0.5 0.88554901 0.5 0.84845501
		 0.5054425 0.84698796 0.50495172 0.85326946 0.5 0.85444796 0.50446099 0.85955095 0.5
		 0.86044097 0.5043785 0.86488348 0.5 0.86558348 0.504296 0.87021601 0.5 0.87072599
		 0.503977 0.82422304 0.5 0.82479799 0.507954 0.82364798 0.50415754 0.83145648 0.5
		 0.83288997 0.50831503 0.83002299 0.50480002 0.83922219 0.5 0.84067249 0.50960004
		 0.83777201 0.63134903 0.82634097 0.63164604 0.81440496 0.63947225 0.81397998 0.63949955
		 0.82597947 0.63194299 0.80246902 0.63944501 0.8019805 0.64729851 0.813555 0.64765
		 0.82561797 0.64694703 0.80149198 0.62909651 0.78984547 0.63763577 0.78912371 0.63582647
		 0.77626699 0.64617503 0.78840196 0.64540303 0.77531201 0.65721846 0.81375802 0.65763402
		 0.82607049 0.65680301 0.80144548 0.66713846 0.81396103 0.66761798 0.82652301 0.666659
		 0.80139899 0.65598375 0.78815848 0.65516448 0.77487147 0.66579247 0.78791499 0.66492599
		 0.77443099 0.62812501 0.82243502 0.62808728 0.81297624 0.624901 0.81852901 0.62452853
		 0.81154752 0.62804949 0.80351752 0.624156 0.80456603 0.62334454 0.81652498 0.62273002
		 0.81074423 0.62178802 0.81452101 0.62093151 0.80994099 0.62211549 0.80496347 0.62007499
		 0.80536097 0.62530798 0.7933895 0.62151951 0.79693353 0.62010372 0.79873073 0.61868799
		 0.80052799 0.6344955 0.76267171 0.63316453 0.74907649 0.64380956 0.76160401 0.64221603
		 0.74789602 0.63031203 0.73451626 0.62745953 0.71995598 0.63964355 0.73266447 0.63707101
		 0.71743298 0.65346104 0.7606653 0.65175748 0.74645901 0.66311252 0.75972652 0.66129899
		 0.745022 0.64958602 0.73060596 0.64741451 0.71475297 0.65952849 0.72854745 0.657758
		 0.71207297 0.62257576 0.705863 0.61769199 0.69177002 0.63309598 0.70257699 0.62912101
		 0.68772101 0.60960948 0.67878699 0.60152698 0.66580403 0.62153149 0.6745345 0.62398231
		 0.66972178 0.64462525 0.69800627 0.64183599 0.68125951 0.65615451 0.69343549 0.64219934
		 0.67750776 0.63331872 0.66831851 0.62011802 0.8162145 0.61882651 0.81109154 0.61844802
		 0.81790799 0.61672151 0.81224203 0.617535 0.80596852 0.614995 0.80657601 0.61621904
		 0.81871152 0.61431104 0.81333148 0.61399001 0.81951499 0.61190051 0.814421 0.61240304
		 0.80795151 0.60981101 0.80932701 0.61603296 0.80058903 0.61337799 0.80065 0.610982
		 0.80204701 0.60858601 0.80344403 0.66687548 0.7115835 0.66849023 0.72789901 0.67599303
		 0.71109402 0.67745197 0.72725052 0.67010498 0.74421453 0.67891097 0.74340701 0.68367201
		 0.71091402 0.68520075 0.72687101 0.691351 0.71073401 0.69294953 0.72649151 0.68672949
		 0.74282801 0.69454801 0.74224901 0.67189825 0.75921077 0.68068397 0.75869501 0.67369151
		 0.774207 0.68245697 0.773983 0.68842971 0.75798225 0.69617552 0.7572695 0.69013 0.7731365;
	setAttr ".uvst[1].uvsp[2250:2499]" 0.69780302 0.77228999 0.674869 0.78784573
		 0.68394548 0.78777647 0.67604649 0.80148447 0.68543398 0.80157 0.69164002 0.78676301
		 0.6993345 0.7857495 0.69314998 0.80038953 0.70086598 0.799209 0.67664075 0.81442022
		 0.68614298 0.81487954 0.67723501 0.82735598 0.68685198 0.82818902 0.69366723 0.81458426
		 0.70119148 0.81428897 0.69418448 0.82877898 0.70151699 0.82936901 0.61366051 0.83526301
		 0.61800396 0.83428526 0.61826348 0.84009302 0.61396801 0.82911497 0.61774451 0.8284775
		 0.62234747 0.8333075 0.62317401 0.83877498 0.621521 0.82783997 0.61397898 0.82431495
		 0.61698174 0.82359445 0.61998451 0.82287395 0.62523627 0.82787126 0.62726152 0.83255798
		 0.62321103 0.82318449 0.62166452 0.81969947 0.66744351 0.84074199 0.657947 0.83962274
		 0.66726899 0.85496098 0.65825999 0.85317498 0.64845049 0.83850348 0.64925098 0.85138899
		 0.66493601 0.87080252 0.65663195 0.86856151 0.66260302 0.88664401 0.65500402 0.88394797
		 0.64832795 0.86632049 0.64740497 0.88125199 0.64075327 0.83869249 0.64200699 0.8514055
		 0.63305604 0.83888149 0.634763 0.85142201 0.64117348 0.86604452 0.64033997 0.88068348
		 0.63401902 0.86576849 0.63327497 0.88011497 0.627913 0.84318823 0.62856448 0.85381854
		 0.62277001 0.84749496 0.62236601 0.856215 0.62687576 0.86793745 0.62518698 0.88205647
		 0.6197325 0.87010646 0.61709899 0.88399798 0.61720347 0.84920925 0.61614347 0.85832548
		 0.61261177 0.87182474 0.60907996 0.885324 0.57273424 0.89423704 0.57905298 0.89616299
		 0.56460899 0.90247101 0.57094198 0.90531301 0.58610702 0.8974123 0.59316099 0.89866149
		 0.57810152 0.90799302 0.58526099 0.91067302 0.55519974 0.90976954 0.561243 0.91372204
		 0.54579049 0.917068 0.55154401 0.922131 0.56868553 0.91751206 0.57612801 0.92130202
		 0.55926955 0.92703104 0.56699502 0.93193102 0.61023599 0.93773097 0.59885645 0.93803501
		 0.60579973 0.9248035 0.61656451 0.92409551 0.58747697 0.93833899 0.59503496 0.92551148
		 0.61274302 0.91157198 0.62289298 0.91046 0.602593 0.91268402 0.577236 0.93513501
		 0.58558154 0.92340678 0.59392703 0.91167855 0.61896503 0.89681423 0.62808394 0.89528751
		 0.609846 0.898341 0.60150349 0.89850128 0.55746305 0.94302547 0.54882228 0.93679321
		 0.54793102 0.95411998 0.53837502 0.9465555 0.54018152 0.93056101 0.52881902 0.93899101
		 0.53960097 0.96669197 0.52700526 0.95753646 0.53127098 0.97926402 0.51563549 0.96851754
		 0.51440954 0.94838101 0.5 0.957771 0.53514075 0.92414176 0.52449101 0.93121552 0.51224554
		 0.93759298 0.5 0.9439705 0.59887302 0.98611403 0.58313501 0.98661852 0.58602601 0.97483623
		 0.60078102 0.97458804 0.567397 0.98712301 0.571271 0.97508454 0.58891702 0.963054
		 0.60268903 0.96306199 0.57514501 0.96304601 0.54933399 0.98319352 0.55543602 0.97088826
		 0.56153798 0.958583 0.59388673 0.95054448 0.60646248 0.95039648 0.58131099 0.95069253
		 0.56938696 0.946859 0.63584626 0.8952167 0.64360845 0.89514601 0.63135248 0.90974998
		 0.63981199 0.90903997 0.65069425 0.8976 0.65778005 0.90005398 0.64638448 0.91125202
		 0.65295702 0.91346401 0.62599826 0.92269099 0.635432 0.92128646 0.62064397 0.93563199
		 0.63105202 0.93353301 0.64208299 0.92167503 0.64873397 0.92206347 0.6377815 0.93209803
		 0.64451098 0.93066299 0.67684275 0.84211826 0.68624198 0.84349453 0.67645049 0.85688049
		 0.68563199 0.85879999 0.69344103 0.84482396 0.70063996 0.8461535 0.69269753 0.86086899
		 0.699763 0.86293799 0.67361653 0.87333703 0.68229699 0.87587154 0.67078251 0.88979352
		 0.67896199 0.89294302 0.689439 0.87874901 0.69658101 0.88162649 0.68618047 0.89662898
		 0.69339901 0.90031499 0.64677095 0.93819702 0.6383152 0.94180822 0.64903098 0.94573098
		 0.63884902 0.95151848 0.62985951 0.94541949 0.628667 0.95730597 0.65278351 0.95601797
		 0.64150298 0.96232873 0.65653598 0.96630502 0.64415699 0.97313905 0.6302225 0.96863949
		 0.631778 0.97997302 0.61816096 0.94790798 0.61567801 0.96018398 0.61550176 0.97161376
		 0.61532551 0.98304355 0.66517723 0.9042908 0.67257452 0.90852749 0.65957201 0.91878802
		 0.66618699 0.92411202 0.67936301 0.91398001 0.6861515 0.91943252 0.67254549 0.93133104
		 0.678904 0.93855 0.65317148 0.92849255 0.65760899 0.9349215 0.66266453 0.9436745
		 0.66771996 0.95242751 0.52863377 0.79624772 0.53275204 0.8016085 0.53558075 0.80697149
		 0.53343248 0.81194997 0.53063351 0.81627423 0.52783453 0.82059848 0.51452649 0.83378422
		 0.51227248 0.82789302 0.51945299 0.82979649 0.51110649 0.82227498 0.52364373 0.82519746
		 0.50439453 0.87759304 0.5 0.87813747 0.508789 0.87704849 0.65455097 0.67479801 0.6653055
		 0.67755103 0.66609049 0.69456726 0.67606002 0.68030399 0.67602652 0.69569898 0.68364102
		 0.68178403 0.68365651 0.69634902 0.69122201 0.68326402 0.6912865 0.69699901 0.59461451
		 0.80679023 0.59679103 0.82039797 0.60110152 0.80279499 0.602979 0.818407 0.55316824
		 0.85001898 0.55147249 0.85056847 0.55406648 0.84685749 0.55247897 0.84857798 0.551341
		 0.84705549 0.5526762 0.84341002 0.52808726 0.85370648 0.52962649 0.85242903 0.52706897
		 0.85168695 0.52869397 0.85125399 0.51526451 0.876975 0.5504595 0.84920454 0.59667504
		 0.83162475 0.60271847 0.82988453 0.56812149 0.66011977 0.58031046 0.65622199 0.60847354
		 0.82376099 0.61018705 0.81909096 0.60639501 0.81386697 0.60484374 0.80311954 0.52968895
		 0.85000199 0.5305357 0.85117877 0.52808499 0.84963524 0.60818952 0.83257377 0.59263802
		 0.6499238 0.51756501 0.76543403 0.518341 0.76740652 0.51635122 0.76822782 0.51572651
		 0.76550305 0.51818597 0.763937 0.51906848 0.76579225 0.51613879 0.76326704 0.61394203
		 0.66134799 0.62093222 0.6575048 0.62480152 0.65537751;
	setAttr ".uvst[1].uvsp[2500:2749]" 0.64999878 0.66867912 0.64510596 0.66210246
		 0.59436071 0.58818477 0.59028751 0.61091942 0.55903739 0.60697442 0.56337255 0.58670688
		 0.53016347 0.60554761 0.53121257 0.58435482 0.64404434 0.59751505 0.63617569 0.62310606
		 0.61448425 0.61596662 0.62132603 0.59248155 0.43337247 0.57493043 0.42828393 0.53566527
		 0.45596281 0.54807383 0.45656547 0.57860583 0.43413138 0.6077705 0.45527446 0.60728323
		 0.38418242 0.56684667 0.38418242 0.52279741 0.40720889 0.52625054 0.40988564 0.57034969
		 0.38418242 0.60629565 0.4117803 0.6070928 0.4771215 0.58010966 0.47946271 0.55228204
		 0.50841796 0.55533785 0.5034138 0.58178294 0.49923429 0.60546821 0.47350121 0.60644412
		 0.57147282 0.55987507 0.60200357 0.56124288 0.53960818 0.55521208 0.62970036 0.56475973
		 0.65301687 0.56924832 0.61781704 0.4938713 0.65325481 0.4885703 0.64395475 0.51201981
		 0.6150403 0.51292825 0.69314367 0.47187582 0.66879195 0.50964618 0.63643867 0.54034793
		 0.6090889 0.53770161 0.66030079 0.5434655 0.62085611 0.46888301 0.62158549 0.44337836
		 0.66107059 0.43869042 0.65929341 0.46235934 0.69888234 0.4507013 0.69779676 0.4316788
		 0.57697892 0.47817561 0.54800856 0.492156 0.54637229 0.45311475 0.57858199 0.44798771
		 0.58166051 0.50526327 0.55132192 0.53138041 0.51598227 0.45411596 0.51438731 0.49411461
		 0.511778 0.53254163 0.48343441 0.48977759 0.48664793 0.45183614 0.48099193 0.5281024
		 0.41563436 0.44756168 0.42140278 0.4278667 0.44260246 0.44015637 0.43420961 0.46697399
		 0.46835908 0.42128536 0.46468267 0.44850746 0.44798967 0.41493666 0.61962652 0.39772066
		 0.61780787 0.37209463 0.65110594 0.3725923 0.65564567 0.39574379 0.68359619 0.37159696
		 0.68974763 0.39288843 0.62109953 0.42374584 0.58062577 0.42456624 0.58337688 0.39735603
		 0.55275697 0.39643714 0.5491845 0.42502999 0.471856 0.3913644 0.45082089 0.38630876
		 0.52085614 0.39430973 0.5179559 0.42402753 0.4926019 0.39258638 0.4895024 0.42265481
		 0.55872065 0.28830713 0.55970925 0.26329643 0.58554769 0.26733914 0.58554292 0.29195684
		 0.61425781 0.29410899 0.61360806 0.26973239 0.63841015 0.27147838 0.64109635 0.29591447
		 0.66333479 0.27207527 0.66747385 0.29674229 0.43736571 0.27740267 0.44053599 0.25182599
		 0.4607338 0.25500321 0.45770308 0.28060582 0.50147599 0.25831038 0.48143107 0.25821552
		 0.48641378 0.23014867 0.50644445 0.23029511 0.58606982 0.23973541 0.58754933 0.21211995
		 0.61399817 0.21577634 0.61289358 0.24269085 0.56169087 0.23584221 0.5636732 0.20792377
		 0.465285 0.22750269 0.54629451 0.097940736 0.54364914 0.13168193 0.51835638 0.12948686
		 0.52078128 0.095858522 0.57145882 0.1011852 0.56869692 0.13551418 0.6264112 0.10849976
		 0.62179118 0.14382772 0.59341115 0.13976404 0.59698957 0.10489207 0.64576286 0.11134972
		 0.64164215 0.1465815 0.67039734 0.11535578 0.66526651 0.14906943 0.63534242 0.2179769
		 0.63610774 0.24456261 0.65847731 0.21912558 0.65956455 0.24541323 0.59057295 0.51797843
		 0.57985193 0.53823084 0.67225748 0.54478079 0.67956275 0.51055241 0.42597452 0.50005841
		 0.45616964 0.52093542 0.44515646 0.22507305 0.41626248 0.22283715 0.42235488 0.19677736
		 0.45015413 0.19826236 0.68701392 0.27108118 0.69138438 0.29506451 0.68378848 0.21818681
		 0.68362933 0.24465181 0.69697517 0.47765848 0.74550271 0.45872423 0.74617314 0.46584308
		 0.74124628 0.44008285 0.71132451 0.36500376 0.72016186 0.38644797 0.40050593 0.37303033
		 0.40248826 0.34937137 0.43156007 0.35359952 0.42996645 0.38099819 0.40864983 0.27458382
		 0.41162485 0.24966954 0.38777584 0.43919477 0.39269602 0.42673096 0.40557453 0.47991145
		 0.39526525 0.41238406 0.73586875 0.42379364 0.50359547 0.035193555 0.52377856 0.037044697
		 0.52557504 0.061303969 0.50294137 0.061013725 0.63135803 0.071843944 0.60298461 0.069560938
		 0.60724282 0.04187512 0.63641477 0.043948915 0.57401156 0.066351168 0.57613176 0.039073523
		 0.48419434 0.062431511 0.46827045 0.063731633 0.46997094 0.036620758 0.48943678 0.036449902
		 0.47886959 0.12884618 0.46181464 0.12924534 0.46593276 0.096977703 0.48196176 0.095954664
		 0.65227979 0.046648409 0.65129834 0.074868105 0.68506855 0.054075327 0.67839354 0.08118134
		 0.44744921 0.064692758 0.44978663 0.03698691 0.4393343 0.12975891 0.44470409 0.098053299
		 0.71612006 0.060893383 0.70815009 0.087312572 0.69197935 0.15076667 0.69878656 0.11945226
		 0.45955306 0.48351458 0.42664495 0.40771893 0.47862169 0.28377488 0.50135672 0.09472049
		 0.47584084 0.33498922 0.49663475 0.33580512 0.49534079 0.36155534 0.47468904 0.36047381
		 0.52757478 0.28515828 0.49884698 0.2840648 0.52986735 0.25950748 0.53371578 0.23168077
		 0.51135999 0.20173146 0.53751647 0.20358317 0.49893436 0.1283215 0.51578832 0.16572465
		 0.49176556 0.2012023 0.49605736 0.16482301 0.54907739 0.063637398 0.55131698 0.038229313
		 0.45567459 0.1637124 0.47486863 0.16425274 0.47026813 0.19968595 0.43011409 0.16327204
		 0.66111594 0.18482484 0.68656212 0.18457124 0.54139405 0.16786195 0.56650573 0.17210549
		 0.59013563 0.17650035 0.61714047 0.18050316 0.63780504 0.18304278 0.65965098 0.41930473
		 0.69522977 0.41451728 0.72947866 0.40799788 0.39771259 0.39633036 0.58529818 0.36986682
		 0.55583531 0.36700198 0.45283467 0.35691831 0.52378827 0.36355436 0.58720356 0.62263846
		 0.55675083 0.61865383 0.52887547 0.61729258 0.63259834 0.63556653 0.61069894 0.62801677
		 0.4573167 0.62068659 0.43613663 0.62235051 0.49933663 0.61762339 0.47481564 0.6191507
		 0.65442544 0.64099044 0.65725809 0.62710518 0.41244081 0.6221208 0.5570429 0.34044948
		 0.5577727 0.31409088 0.58511919 0.31748292 0.58530271 0.34354725 0.61604053 0.34577864
		 0.61496127 0.31969488 0.64420068 0.32122409 0.64726359 0.3468928 0.67228216 0.32168016;
	setAttr ".uvst[1].uvsp[2750:2999]" 0.67736048 0.34667376 0.43299863 0.32831869
		 0.43508726 0.30291861 0.45569178 0.30615535 0.45408255 0.33161721 0.69681877 0.31872725
		 0.70330852 0.34209338 0.40411285 0.32444584 0.40636262 0.29954043 0.47697434 0.30935758
		 0.49748048 0.30989951 0.52629668 0.31115714 0.52534419 0.33736992 0.66707778 0.57210678
		 0.66079849 0.60175234 0.38418233 0.62131864 0.38418248 0.47676572 0.38418177 0.44154659
		 0.50356799 0.028485708 0.52376038 0.029689066 0.52388561 0.031789713 0.50365996 0.030387305
		 0.60782397 0.034581326 0.6371873 0.037378453 0.63716763 0.039086726 0.60777432 0.036581807
		 0.57665282 0.031952105 0.57661408 0.033911191 0.46993989 0.028996818 0.48982999 0.029004984
		 0.48979926 0.031148188 0.47033459 0.031256549 0.6536569 0.040200498 0.65296215 0.041728135
		 0.68675959 0.046905812 0.68616813 0.048796888 0.45060429 0.029207729 0.44993165 0.031436823
		 0.71748155 0.053207245 0.71759874 0.055552598 0.55241519 0.030545197 0.55196208 0.032741629
		 0.58642858 0.62553459 0.55617982 0.62154752 0.52856892 0.6201579 0.63160646 0.63872606
		 0.60971653 0.63099575 0.4579356 0.62397617 0.43680248 0.62609595 0.49938735 0.62055379
		 0.47518569 0.62224144 0.65297663 0.6444701 0.41257259 0.62594956 0.38418266 0.62515181
		 0.17400415 0.58818465 0.2049922 0.5867067 0.20932749 0.6069743 0.17807725 0.6109193
		 0.23715222 0.58435482 0.23820135 0.60554749 0.12432048 0.59751487 0.14703876 0.59248137
		 0.15388072 0.61596638 0.13218912 0.62310594 0.33499235 0.57493043 0.31179944 0.57860583
		 0.31240201 0.54807383 0.34008083 0.53566527 0.33423343 0.60777044 0.31309035 0.60728323
		 0.35847926 0.57034975 0.36115593 0.52625054 0.35658446 0.60709268 0.29124331 0.5801096
		 0.2649509 0.58178294 0.25994682 0.55533773 0.2889021 0.55228198 0.29486355 0.60644412
		 0.2691305 0.60546821 0.16636129 0.56124282 0.19689193 0.55987495 0.22875658 0.55521208
		 0.11534798 0.5692482 0.13866439 0.56475955 0.15054773 0.49387112 0.15332456 0.51292807
		 0.12441003 0.51201963 0.11511004 0.48857018 0.099572867 0.50964612 0.075221121 0.47187576
		 0.15927587 0.53770143 0.13192612 0.54034775 0.108064 0.54346532 0.14750873 0.46888283
		 0.10907137 0.46235916 0.1072942 0.4386903 0.14677928 0.44337827 0.069482535 0.45070109
		 0.070568055 0.43167874 0.19138585 0.47817555 0.1897828 0.44798759 0.22199251 0.45311466
		 0.22035633 0.49215594 0.21704291 0.53138041 0.18670426 0.50526315 0.25238249 0.45411596
		 0.25397751 0.49411461 0.25658673 0.53254157 0.28493032 0.48977759 0.28171697 0.45183605
		 0.28737298 0.5281024 0.35273048 0.44756159 0.3341552 0.46697387 0.32576236 0.44015634
		 0.34696212 0.42786661 0.30000573 0.42128533 0.32037517 0.41493657 0.30368215 0.44850728
		 0.14873835 0.39772058 0.11271912 0.39574376 0.11725891 0.37259215 0.15055694 0.37209454
		 0.078617126 0.39288831 0.084768593 0.37159684 0.1849879 0.39735594 0.18773909 0.42456615
		 0.14726536 0.42374569 0.21560787 0.39643714 0.21918027 0.42503008 0.29650882 0.39136431
		 0.31754395 0.38630876 0.24750867 0.39430973 0.25040889 0.42402747 0.27576286 0.39258629
		 0.27886242 0.42265472 0.20964414 0.2883071 0.18282187 0.29195678 0.1828171 0.26733914
		 0.20865564 0.26329643 0.15410699 0.29410893 0.12726843 0.29591441 0.12995464 0.27147833
		 0.15475672 0.26973233 0.1008909 0.29674223 0.10503 0.27207518 0.33099911 0.27740261
		 0.31066173 0.28060576 0.30763102 0.25500318 0.32782874 0.25182593 0.26688886 0.25831038
		 0.26192027 0.23029505 0.28195104 0.23014864 0.28693375 0.25821546 0.18229496 0.23973541
		 0.15547128 0.24269079 0.15436661 0.21577628 0.18081547 0.21211992 0.20667391 0.23584218
		 0.20469157 0.20792374 0.30307981 0.22750266 0.22207032 0.097940736 0.24758351 0.095858552
		 0.25000843 0.12948686 0.22471561 0.13168193 0.19690591 0.10118517 0.19966787 0.13551418
		 0.14195366 0.10849976 0.17137522 0.10489207 0.17495362 0.13976404 0.14657356 0.14382772
		 0.12260205 0.11134969 0.12672263 0.14658147 0.10309836 0.14906932 0.097967416 0.11535575
		 0.13225707 0.24456255 0.13302243 0.21797684 0.10880032 0.24541314 0.10988748 0.21912552
		 0.18851289 0.53823072 0.17779182 0.51797831 0.096107364 0.54478061 0.088802099 0.51055229
		 0.31219527 0.5209353 0.34239039 0.50005841 0.32320836 0.22507305 0.31821069 0.19826236
		 0.34600994 0.19677736 0.35210234 0.22283712 0.076980472 0.29506439 0.081350893 0.27108112
		 0.084735483 0.24465181 0.084576339 0.21818678 0.071389675 0.47765842 0.022191733
		 0.46584293 0.022862047 0.45872411 0.027118534 0.44008267 0.048203111 0.38644794 0.057040334
		 0.36500368 0.36785889 0.37303022 0.33839846 0.38099808 0.33680478 0.35359946 0.36587656
		 0.34937134 0.35673997 0.24966948 0.35971498 0.27458382 0.38058972 0.43919489 0.36279032
		 0.47991145 0.3756687 0.42673081 0.3730996 0.41238394 0.032496154 0.42379355 0.26476926
		 0.035193734 0.26542351 0.061013784 0.24278969 0.061303999 0.2445868 0.037044846 0.1370067
		 0.071843944 0.13195053 0.043948915 0.16112182 0.04187512 0.16538027 0.069560908 0.19435322
		 0.066351138 0.19223294 0.039073404 0.28417048 0.06243163 0.27892813 0.036450021 0.29839396
		 0.036620848 0.30009446 0.063731723 0.28949523 0.12884621 0.28640309 0.095954724 0.30243215
		 0.096977793 0.30655017 0.1292454 0.11706647 0.074868105 0.11608496 0.046648469 0.089971244
		 0.08118131 0.083296001 0.054075237 0.31857827 0.036987029 0.32091561 0.064692877
		 0.32366073 0.098053403 0.32903042 0.12975894 0.060214818 0.087312482 0.052244574
		 0.060893115 0.076385528 0.15076664 0.06957823 0.11945223 0.30881175 0.48351452 0.34171987
		 0.40771875 0.28974313 0.28377482 0.26700807 0.09472055 0.29252398 0.33498919 0.29367581
		 0.36047375 0.27302414 0.36155531 0.2717301 0.33580512 0.24078993 0.28515822 0.23849745
		 0.25950745 0.26951787 0.28406477;
	setAttr ".uvst[1].uvsp[3000:3249]" 0.23464899 0.23168074 0.23084834 0.20358317
		 0.25700486 0.20173146 0.26943046 0.12832153 0.2525765 0.16572465 0.27230743 0.16482301
		 0.27659926 0.2012023 0.21928732 0.063637368 0.21704824 0.038229253 0.31269023 0.1637124
		 0.29809669 0.19968592 0.29349619 0.16425271 0.33825073 0.16327198 0.10724884 0.18482478
		 0.081802726 0.18457115 0.2269707 0.16786191 0.20185904 0.17210549 0.15122433 0.18050312
		 0.17822917 0.17650029 0.13055977 0.18304272 0.10871381 0.41930467 0.073135018 0.41451716
		 0.038886189 0.40799776 0.37065223 0.3963303 0.18306671 0.36986673 0.2125295 0.36700195
		 0.31553015 0.35691819 0.24457654 0.36355436 0.18116121 0.62263834 0.2116138 0.61865342
		 0.23948972 0.61729211 0.13576654 0.63556623 0.15766558 0.62801665 0.31104788 0.62068647
		 0.33222818 0.62235051 0.26902819 0.61762339 0.29354912 0.61915082 0.11393937 0.6409902
		 0.11110669 0.627105 0.35592395 0.6221208 0.21132189 0.34044945 0.18306218 0.34354725
		 0.18324557 0.31748286 0.21059221 0.31409088 0.15232423 0.34577855 0.12110111 0.34689274
		 0.1241641 0.32122406 0.15340352 0.31969485 0.091004282 0.34667373 0.096082717 0.32168013
		 0.3353661 0.32831863 0.31428236 0.33161712 0.31267306 0.30615526 0.33327755 0.30291858
		 0.065056205 0.34209338 0.071545929 0.31872708 0.36425197 0.32444584 0.36200228 0.29954043
		 0.29139048 0.30935755 0.27088431 0.30989948 0.24302062 0.3373698 0.24206813 0.31115711
		 0.10128701 0.5721066 0.10756633 0.6017521 0.26479685 0.028485917 0.26470491 0.030387513
		 0.24447876 0.031789862 0.24460396 0.029689215 0.16054109 0.034581564 0.16059056 0.036581449
		 0.13119602 0.039086785 0.13117811 0.037378512 0.19171195 0.031951867 0.1917509 0.033911042
		 0.29842493 0.028996937 0.29803023 0.031256638 0.27856547 0.031148367 0.27853492 0.029005133
		 0.11540261 0.041728076 0.11470777 0.040200677 0.082198232 0.048796769 0.081603706
		 0.046905722 0.31776053 0.029207848 0.31843325 0.031436943 0.050766438 0.05555236
		 0.050882936 0.053206947 0.21640246 0.032741539 0.21594909 0.030545108 0.18193623
		 0.62553447 0.21218525 0.62154776 0.23979488 0.62015933 0.13675824 0.6387257 0.15864842
		 0.63099509 0.33156234 0.62609571 0.31042936 0.62397617 0.29317912 0.62224132 0.26897758
		 0.62055391 0.1153883 0.64446974 0.3557924 0.62594944 0.51696599 0.43301699 0.529948
		 0.54352897 0.48453599 0.54041499 0.45483199 0.431988 0.51460803 0.383187 0.45303199
		 0.38448599 0.466198 0.337964 0.52577102 0.342686 0.512308 0.231011 0.55649197 0.246309
		 0.56040901 0.443257 0.567873 0.54575402 0.55888802 0.389943 0.57040298 0.347184 0.593063
		 0.249145 0.84563601 0.36223 0.83560199 0.29497099 0.89432597 0.319644 0.91098303
		 0.35967499 0.843934 0.40331301 0.90937299 0.40197799 0.891487 0.451507 0.83022797
		 0.44801199 0.86547601 0.49566999 0.817716 0.516514 0.153036 0.57443297 0.209123 0.576047
		 0.22116201 0.67552 0.16423599 0.68152899 0.26362801 0.58131897 0.32436001 0.58415699
		 0.33274499 0.66209197 0.27687901 0.669954 0.60677499 0.449402 0.65829599 0.45598501
		 0.65614098 0.54938102 0.61140299 0.54783702 0.61062199 0.39403099 0.66637802 0.39834899
		 0.784931 0.403355 0.67241299 0.34817699 0.78736103 0.355988 0.78311497 0.27509901
		 0.68714601 0.255914 0.95704597 0.411264 0.938905 0.46500501 0.96005398 0.363058 0.93591303
		 0.296332 0.509983 0.138846 0.55825102 0.156855 0.52516401 0.62404001 0.47020301 0.63367599
		 0.63182998 0.61070901 0.578143 0.61323202 0.89830798 0.51936603 0.83281499 0.55240399
		 0.76627499 0.57699901 0.75336301 0.53500599 0.67343199 0.60544199 0.29662901 0.175778
		 0.314789 0.087945998 0.37112099 0.100791 0.356235 0.178174 0.90071303 0.66682798
		 0.948039 0.697882 0.98528898 0.74309599 0.93034202 0.75242102 0.96654803 0.47443599
		 0.91974699 0.540061 0.98423398 0.416922 0.98885298 0.365385 0.96031702 0.28344601
		 0.868976 0.213614 0.85400498 0.24102999 0.80083299 0.21375 0.81378698 0.185285 0.70935601
		 0.181352 0.72131199 0.14829899 0.60685199 0.16527399 0.61651802 0.13201299 0.67644
		 0.135418 0.663899 0.172291 0.51654601 0.106118 0.566517 0.122964 0.37795401 0.070593998
		 0.47371501 0.097159997 0.46595201 0.127094 0.26735601 0.046813 0.32128099 0.056882001
		 0.259817 0.078616001 0.20174401 0.036430001 0.19745401 0.069118999 0.224997 0.70813102
		 0.16475099 0.71495998 0.28068 0.70178699 0.337152 0.69332898 0.42665401 0.64321798
		 0.43270299 0.67595398 0.529055 0.65746403 0.47607401 0.66710597 0.58548999 0.64819098
		 0.68299001 0.64043999 0.64023203 0.64849102 0.843593 0.58111799 0.35325801 0.86813802
		 0.42800099 0.84879202 0.472166 0.96566302 0.37636101 0.98374897 0.317761 0.98006499
		 0.301016 0.880925 0.26990199 0.95578498 0.239145 0.895913 0.242358 0.834548 0.272782
		 0.78846002 0.32051799 0.75611901 0.41515699 0.73086298 0.49456999 0.83118397 0.48482001
		 0.72313702 0.53281999 0.70757097 0.55300099 0.82559901 0.58262998 0.69075799 0.61597598
		 0.814026 0.671408 0.80361402 0.63519901 0.67344701 0.672885 0.66169798 0.71091002
		 0.79827398 0.868725 0.76244402 0.84184998 0.65728599 0.968898 0.84489399 0.99135202
		 0.79255801 0.90079498 0.88884598 0.84609002 0.91842598 0.80789101 0.777206 0.75037801
		 0.94024301 0.70548898 0.93074101 0.64334297 0.92532098 0.58582199 0.92704302 0.54254597
		 0.94015002 0.51234001 0.954476 0.46485299 0.83858198 0.38605601 0.038249001 0.48181
		 0.063652001 0.327766 0.025562 0.274187 0.016472001 0.207807 0.0054600001 0.230004
		 0.73895198 0.169203 0.74624503 0.28505701 0.73280799 0.48071599 0.69594401 0.43989199
		 0.704602 0.45591599 0.72545302;
	setAttr ".uvst[1].uvsp[3250:3499]" 0.44546601 0.43318599 0.44375899 0.38276601
		 0.45795599 0.334171 0.48293501 0.29805601 0.31562099 0.52324802 0.42117 0.505656
		 0.426907 0.56060797 0.340572 0.244041 0.28852099 0.24180999 0.23677 0.244046 0.19362199
		 0.250117 0.179518 0.175776 0.23068801 0.176007 0.219868 0.511379 0.26596099 0.51791102
		 0.44661 0.27028 0.45748401 0.21115799 0.17689499 0.50152701 0.46616799 0.475642 0.77174503
		 0.453091 0.62048203 0.34851 0.63862598 0.253151 0.77746302 0.60620499 0.77082402
		 0.65247798 0.52194399 0.073371001 0.342529 0.72421098 0.76079345 0.203041 0.74034244
		 0.15764548 0.74881029 0.15618755 0.76823628 0.20006317 0.73651242 0.11925079 0.74589473
		 0.11985215 0.76862049 0.15407988 0.76654661 0.12320924 0.79761505 0.12628716 0.79875726
		 0.1508072 0.7841469 0.18911235 0.80447078 0.17603607 0.81211871 0.028548775 0.80626112
		 0.030828202 0.80258018 0.022449551 0.80839032 0.020050989 0.85109007 0.050047282
		 0.85084361 0.054761309 0.81651437 0.051682185 0.81994301 0.045952994 0.82526189 0.098696016
		 0.82354307 0.12548298 0.80337918 0.097547896 0.825082 0.075948931 0.80889326 0.078752309
		 0.8506524 0.075319372 0.85053825 0.098599695 0.85046262 0.1249401 0.74777293 0.075544469
		 0.75644743 0.07856822 0.77509862 0.040136702 0.78134739 0.046839803 0.77459443 0.087673232
		 0.7946704 0.062256329 0.8229984 0.15187798 0.85033619 0.15236782 0.85011595 0.18187541
		 0.82232732 0.18002068 0.84951723 0.23406108 0.80774081 0.22754332 0.81092685 0.22147326
		 0.84960401 0.22787996 0.81711227 0.20421924 0.84982711 0.20996322 0.80959284 0.2366951
		 0.76525378 0.21411341 0.84939027 0.24276498 0.7908628 0.28287378 0.77899808 0.25895038
		 0.81564581 0.27389312 0.81691909 0.30216125 0.8484419 0.30733559 0.84881186 0.28081256
		 0.38282263 0.10327978 0.37666798 0.074626319 0.38508001 0.076325022 0.38983804 0.10487521
		 0.37714019 0.050009638 0.38635337 0.051192138 0.34640223 0.068586282 0.35342759 0.09458825
		 0.3362405 0.085711636 0.32346696 0.066000968 0.32276103 0.043031197 0.34436297 0.045802787
		 0.75857407 0.20233804 0.73875636 0.15780252 0.73495477 0.1189657 0.80173457 0.021125238
		 0.80778861 0.018574975 0.82109994 0.04463096 0.85118997 0.04883492 0.74648762 0.07463605
		 0.77410614 0.039061494 0.76350963 0.21427189 0.7773 0.25928593 0.78950006 0.28385553
		 0.81595469 0.30351698 0.8484239 0.3089436 0.81385189 0.029041778 0.93884706 0.20429587
		 0.9314813 0.20115693 0.95162362 0.1570773 0.96003997 0.15868561 0.96426004 0.11986101
		 0.95489448 0.12035874 0.93192863 0.15472974 0.90193117 0.15124364 0.90335518 0.12669258
		 0.93433917 0.12362034 0.91585934 0.18986307 0.895841 0.17649734 0.88705581 0.027145259
		 0.89100474 0.01896848 0.89687723 0.021421039 0.89316785 0.029846687 0.88110793 0.048032049
		 0.88470852 0.053290263 0.87584502 0.099105328 0.89776975 0.098015569 0.87740839 0.12577453
		 0.87612647 0.076642483 0.89236838 0.079394437 0.95299989 0.075466461 0.94435483 0.078487158
		 0.9250254 0.039455418 0.91888475 0.046311479 0.92643988 0.087782428 0.906214 0.062450357
		 0.87769169 0.15213852 0.87792486 0.18031092 0.88839436 0.22204055 0.89140868 0.22819905
		 0.88263971 0.20462586 0.93414402 0.21545647 0.88931149 0.23737171 0.88214219 0.2745623
		 0.91925782 0.2605013 0.90658414 0.28422892 0.87981522 0.30294961 0.39685875 0 0.40405983
		 0.00022922328 0.39183754 0.026599888 0.38326013 0.026118044 0.34717906 0.0052172793
		 0.36614877 0.00097807869 0.35241815 0.024314828 0.32927224 0.021664953 0.9616195
		 0.15887144 0.9410727 0.20361979 0.96581638 0.11959472 0.89158159 0.017510006 0.89770943
		 0.020079605 0.87994212 0.0469396 0.95427883 0.074557029 0.92600346 0.038362551 0.93588251
		 0.21566252 0.92094219 0.26088995 0.90791941 0.28527012 0.88007104 0.30459666 0.88519526
		 0.027480394 0.86690283 0.021571845 0.86873817 0.012652358 0.86886215 0.011105999
		 0.86640316 0.023061208 0.83087087 0.013202952 0.83333856 0.021946311 0.83064866 0.011666711
		 0.83399886 0.023381555 0.84983069 0.011057268 0.85020077 0.020443058 0.84978086 0.0095758056
		 0.85025537 0.021957746 0.48458964 0.59717602 0.48420244 0.60498965 0.47781789 0.60422719
		 0.47908232 0.59628105 0.47138408 0.60277253 0.47310939 0.59466755 0.48322061 0.62174517
		 0.47558668 0.62034369 0.46841908 0.61766469 0.45689526 0.60640687 0.45997956 0.59281272
		 0.45565987 0.61199147 0.4903118 0.59600633 0.49087921 0.60459483 0.49664268 0.59426677
		 0.49797234 0.6035586 0.50333077 0.59321725 0.50539374 0.6024425 0.50951797 0.59217232
		 0.5118342 0.60088938 0.49121645 0.6221168 0.49966034 0.62066239 0.5077799 0.61832309
		 0.51483119 0.61565685 0.93393558 0.60032111 0.94444585 0.59276241 0.94594914 0.59938544
		 0.93474191 0.60621399 0.95079094 0.58921254 0.95218056 0.59633076 0.45366019 0.59216195
		 0.4520812 0.59920007 0.94830251 0.61029488 0.93783408 0.61881799 0.95357376 0.60725772
		 0.45019162 0.61035573 0.90759635 0.62647748 0.90894365 0.6123718 0.91507065 0.61235821
		 0.91567087 0.62730169 0.92171663 0.61108977 0.92379034 0.62604749 0.91114485 0.60463738
		 0.91643596 0.60415936 0.92228854 0.60307413 0.92846173 0.60901684 0.93129277 0.62299424
		 0.92841792 0.60184288 0.51772952 0.5990274 0.52162671 0.61311847 0.52345532 0.59751987
		 0.52976602 0.6105029 0.90183961 0.5814575 0.89901781 0.57519537 0.90618062 0.57003975
		 0.90998977 0.57638782 0.91192079 0.56402016 0.9192422 0.56917411 0.53489494 0.56940269
		 0.53082216 0.57183015 0.52618521 0.56440353 0.53063142 0.56183052 0.5224672 0.55774409
		 0.52728599 0.55527437 0.91418856 0.55739403 0.92213309 0.55930901 0.91463435 0.55091172
		 0.92287296 0.55196452 0.51947087 0.55218983 0.52444625 0.54996592 0.51689184 0.5469287;
	setAttr ".uvst[1].uvsp[3500:3749]" 0.52172065 0.54510427 0.87155867 0.60449082
		 0.88660753 0.60625684 0.88520604 0.61360425 0.87078559 0.6109643 0.89122266 0.60716671
		 0.88797337 0.61529505 0.88371497 0.62131554 0.86895376 0.61730933 0.88826644 0.62405199
		 0.90174711 0.6031841 0.89927584 0.60946161 0.89503878 0.60803956 0.89690185 0.6024797
		 0.89196396 0.60230821 0.86969864 0.59079915 0.8837198 0.59008503 0.88679099 0.60212851
		 0.87144154 0.60100716 0.88741022 0.58810508 0.54171622 0.58572674 0.54638535 0.59115988
		 0.53895324 0.59839958 0.53407735 0.59438753 0.55774897 0.60422242 0.54990095 0.6115188
		 0.53692186 0.60140061 0.53286719 0.5981133 0.54729742 0.61420572 0.55518615 0.58592397
		 0.56622756 0.59840292 0.55228484 0.58040279 0.55864507 0.58446616 0.5692336 0.59654021
		 0.55666351 0.57924587 0.84961575 0.60218269 0.86013323 0.60318381 0.85946202 0.60927594
		 0.85027677 0.60722965 0.85638773 0.61544055 0.84543395 0.6096186 0.84339893 0.59774941
		 0.85626036 0.59083921 0.85985422 0.60003316 0.84956181 0.59922796 0.56419194 0.61186641
		 0.5577513 0.61889255 0.57189775 0.62044632 0.56655359 0.62299865 0.55630285 0.62128735
		 0.566176 0.62506491 0.57265705 0.60757107 0.57392049 0.61849058 0.57548195 0.60682446
		 0.57577813 0.61964047 0.49677262 0.69720161 0.49472204 0.69438934 0.49870622 0.69270229
		 0.49977398 0.6967023 0.49215683 0.68421894 0.49692398 0.68264121 0.50319606 0.69184148
		 0.50299466 0.69548982 0.5017305 0.68160415 0.50718123 0.69257742 0.50567287 0.69748145
		 0.50599796 0.68127859 0.90460402 0.70749354 0.9025386 0.70190805 0.9066335 0.70194912
		 0.90693307 0.70566726 0.90347463 0.68962783 0.90782648 0.69038302 0.49053162 0.67378342
		 0.49552974 0.67227483 0.50083119 0.6709671 0.4894183 0.66432399 0.49415085 0.66281778
		 0.4884868 0.65605879 0.49331152 0.65432811 0.49968815 0.66161251 0.49889648 0.65353274
		 0.50534821 0.67098147 0.90413362 0.67901653 0.90882063 0.67951393 0.50496435 0.6618191
		 0.50423229 0.65402883 0.90417576 0.67005646 0.90963519 0.67021596 0.90458155 0.66264689
		 0.90993804 0.66178423 0.48779857 0.65128446 0.4928382 0.64932913 0.49877217 0.64868957
		 0.48632205 0.64607561 0.49240911 0.64374018 0.48266873 0.6300292 0.49152982 0.63000172
		 0.49965909 0.6434924 0.50080872 0.62856811 0.50418431 0.64987183 0.90434372 0.65906435
		 0.90983623 0.65728164 0.50524819 0.64616692 0.506513 0.64458811 0.90314859 0.65615416
		 0.90911496 0.65267801 0.90244281 0.65463108 0.90740198 0.63508028 0.95196158 0.65715098
		 0.94663745 0.64843106 0.95126468 0.64673072 0.95626426 0.65441245 0.4569819 0.65597713
		 0.45945877 0.64621687 0.46471205 0.64650685 0.46166363 0.65647012 0.94475245 0.64327264
		 0.95042419 0.64288729 0.94088787 0.62637138 0.95086432 0.64000016 0.45978999 0.64111948
		 0.4655087 0.64003205 0.45883748 0.63776219 0.46660691 0.62442547 0.4697316 0.64815384
		 0.46631899 0.65774578 0.47376615 0.65069073 0.47059336 0.65965599 0.47161299 0.64204782
		 0.47432846 0.62781841 0.47631428 0.64549619 0.94740677 0.66045916 0.94164038 0.65168875
		 0.94291145 0.66354507 0.93754011 0.65571767 0.93911123 0.66652775 0.93438965 0.65966386
		 0.47462851 0.66185361 0.47757897 0.65374762 0.93920499 0.64669734 0.93418902 0.65141374
		 0.93402416 0.63167518 0.92578804 0.63547826 0.93175066 0.65720272 0.4792383 0.64969581
		 0.93007207 0.6561237 0.48072892 0.64801008 0.88997549 0.65405232 0.88796479 0.64724928
		 0.89186954 0.6446386 0.89433616 0.65088439 0.88534892 0.6415028 0.88866162 0.63972181
		 0.53600281 0.63525361 0.53103882 0.63739049 0.52889842 0.63369626 0.53380871 0.63179755
		 0.52564079 0.64073253 0.52327138 0.63713688 0.89924622 0.63102472 0.89189941 0.62836277
		 0.52318609 0.61937529 0.52968246 0.61773407 0.51634419 0.62212944 0.89629853 0.65723544
		 0.89243263 0.65989751 0.51416123 0.65310591 0.51111788 0.64973652 0.51392472 0.64537805
		 0.51700145 0.64909768 0.51760107 0.6412068 0.5204367 0.64500391 0.50915581 0.62529725
		 0.43952197 0.63558334 0.44265473 0.63231796 0.44925782 0.64001822 0.44547507 0.64311916
		 0.44942749 0.62503994 0.45735353 0.63372105 0.45423093 0.61664033 0.45182407 0.64395869
		 0.44822299 0.64702195 0.9629072 0.64246547 0.95849365 0.64063412 0.95915765 0.63635206
		 0.96384591 0.63786471 0.45740363 0.63833708 0.95175964 0.63914573 0.9503848 0.63441044
		 0.87250644 0.6628657 0.87028009 0.65731311 0.87785703 0.65334189 0.88017786 0.6598562
		 0.86792076 0.65203434 0.87530881 0.64754176 0.54616964 0.65265113 0.54246658 0.65494603
		 0.53772539 0.64792186 0.54142702 0.64551157 0.53869647 0.65743506 0.53365457 0.65096694
		 0.88224876 0.66497242 0.87449414 0.66715914 0.52755535 0.66696942 0.52192461 0.66138762
		 0.52451295 0.65812188 0.53009003 0.66374999 0.5286845 0.654549 0.5341602 0.66041225
		 0.42781106 0.64729333 0.43376988 0.65343493 0.43577808 0.65696871 0.97891903 0.64695531
		 0.98036683 0.64311892 0.96273428 0.67323637 0.959755 0.66903287 0.96355432 0.66647798
		 0.96643049 0.67063344 0.45209542 0.67432106 0.45365098 0.66959882 0.45763144 0.67006457
		 0.45605016 0.67469686 0.46196032 0.67105657 0.4604159 0.67554986 0.46625942 0.67245126
		 0.46464056 0.6768961 0.95804393 0.67595226 0.95505458 0.67182267 0.95333225 0.67879784
		 0.95057482 0.67462265 0.94968224 0.68118161 0.94703543 0.67714792 0.46834716 0.67843455
		 0.47003987 0.67399377 0.85533935 0.66742527 0.85312158 0.66438216 0.8563177 0.66259396
		 0.85846502 0.66715473 0.85132867 0.66131264 0.85362989 0.65853602 0.55325168 0.66909713
		 0.55044007 0.67032981 0.54964632 0.66648918 0.55329698 0.66584164 0.54735875 0.6700778
		 0.54614598 0.66746521 0.85969436 0.67127728 0.85468036 0.67057711 0.5432632 0.67731738;
	setAttr ".uvst[1].uvsp[3750:3999]" 0.53858751 0.67667413 0.53947645 0.67318761
		 0.54242396 0.67453974 0.5424577 0.66991502 0.54499716 0.67246598 0.41870579 0.65884793
		 0.4199571 0.65632606 0.4245711 0.66140234 0.42224649 0.66267896 0.42558315 0.66479152
		 0.42178282 0.66535044 0.99677336 0.64788896 0.99256223 0.64937085 0.99244851 0.64568204
		 0.99518591 0.64573562 0.97142011 0.69023883 0.97086406 0.68700057 0.97478092 0.68527138
		 0.97466731 0.69087076 0.45012587 0.69411886 0.44840905 0.68959486 0.45220572 0.68834823
		 0.45234329 0.69177032 0.4564065 0.68886763 0.45552161 0.69275528 0.4603599 0.69058549
		 0.45878011 0.69340438 0.96844107 0.69240928 0.96651155 0.689138 0.96509117 0.6939162
		 0.96248472 0.69161046 0.9644447 0.69700909 0.95945692 0.6947121 0.4599852 0.69642007
		 0.46347588 0.69316393 0.46429852 0.5769912 0.47909543 0.57788509 0.46606439 0.56940645
		 0.48443457 0.56878042 0.45766857 0.57704794 0.94047272 0.57827044 0.94703746 0.57365423
		 0.4591966 0.56983978 0.9375369 0.56984919 0.94630957 0.56584996 0.46703878 0.56273043
		 0.48348233 0.56048083 0.46732002 0.55661851 0.48250401 0.55406547 0.46018076 0.56324214
		 0.93903965 0.55957025 0.94698656 0.55856723 0.46045139 0.55722958 0.93947548 0.55238557
		 0.9474926 0.55198276 0.49011114 0.55302334 0.49166393 0.55955905 0.49649617 0.55217046
		 0.4984524 0.55875218 0.49377698 0.56679648 0.50084847 0.5659138 0.50187814 0.55123335
		 0.5041073 0.55781192 0.5068962 0.55005211 0.50931168 0.55643672 0.50685763 0.5649184
		 0.51238251 0.56327599 0.49710876 0.5749523 0.49040315 0.57692373 0.50371796 0.57403177
		 0.51003975 0.57285047 0.51616347 0.570916 0.51566046 0.59068137 0.52206123 0.58998674
		 0.57014614 0.62436873 0.92860126 0.56932712 0.906353 0.60417664 0.50123149 0.70032763
		 0.49610862 0.70029426 0.91602057 0.71040261 0.90982896 0.71095335 0.91026932 0.70707941
		 0.91405427 0.70755702 0.85027748 0.66689855 0.54789954 0.67493212 0.84813654 0.66210306
		 0.41625983 0.659666 0.99703199 0.64031047 0.9996829 0.63919961 0.45467559 0.69679832
		 0.97060376 0.69577432 0.93073499 0.5598948 0.9313271 0.5524568 0.91649014 0.63651758
		 0.91634482 0.65245712 0.92395985 0.65394992 0.91618907 0.65738511 0.92281038 0.65898991
		 0.92923689 0.6577754 0.48215556 0.64961725 0.92857718 0.661524 0.4832536 0.6536147
		 0.94975489 0.61470664 0.95416194 0.62187147 0.96140397 0.62635434 0.95436209 0.61118752
		 0.95751023 0.61770862 0.44910508 0.61449784 0.44547617 0.62220228 0.96426564 0.62152767
		 0.43934554 0.62903303 0.9159146 0.66215265 0.91539192 0.67092758 0.92229676 0.66362691
		 0.92144924 0.67223066 0.91434234 0.68042088 0.92023885 0.68162823 0.92805856 0.66559184
		 0.92700058 0.67334324 0.48398244 0.65783501 0.48512563 0.66578281 0.92527342 0.68267685
		 0.48656273 0.67496055 0.96562564 0.62802076 0.98310286 0.63381267 0.96806788 0.62302572
		 0.98423129 0.62936485 0.43615767 0.63233256 0.42450756 0.64529741 0.99476844 0.63876015
		 0.99706376 0.63539863 0.41659302 0.65563822 0.89125139 0.62162912 0.89995193 0.62408799
		 0.84316128 0.60571927 0.91870427 0.69270033 0.92343813 0.69377869 0.92006379 0.70608294
		 0.91594958 0.70433664 0.48847246 0.68556678 0.49220964 0.69678247 0.91311187 0.69135606
		 0.91118085 0.70283747 0.92279887 0.54500771 0.91434109 0.54426074 0.51913255 0.54006839
		 0.51473761 0.54151344 0.48158318 0.54761606 0.46699983 0.55039799 0.939197 0.54565662
		 0.93123543 0.54552913 0.48503715 0.58167458 0.49483031 0.54564214 0.48877028 0.54650664
		 0.45998794 0.5511924 0.94715261 0.54534364 0.50506777 0.54375941 0.50008273 0.54475063
		 0.90380776 0.61113912 0.88908297 0.61688989 0.89407486 0.5852744 0.88451713 0.5838443
		 0.89152592 0.57973814 0.53627288 0.57912058 0.53982395 0.57690912 0.52838725 0.5914858
		 0.52844948 0.59714496 0.53225231 0.60551894 0.53456813 0.60444111 0.51696599 0.43301699
		 0.45483199 0.431988 0.48453599 0.54041499 0.529948 0.54352897 0.51460803 0.383187
		 0.45303199 0.38448599 0.466198 0.337964 0.52577102 0.342686 0.512308 0.231011 0.55649197
		 0.246309 0.567873 0.54575402 0.56040901 0.443257 0.55888802 0.389943 0.57040298 0.347184
		 0.593063 0.249145 0.84563601 0.36223 0.91098303 0.35967499 0.89432597 0.319644 0.83560199
		 0.29497099 0.843934 0.40331301 0.90937299 0.40197799 0.891487 0.451507 0.83022797
		 0.44801199 0.86547601 0.49566999 0.817716 0.516514 0.153036 0.57443297 0.16423599
		 0.68152899 0.22116201 0.67552 0.209123 0.576047 0.26362801 0.58131897 0.27687901
		 0.669954 0.33274499 0.66209197 0.32436001 0.58415699 0.60677499 0.449402 0.61140299
		 0.54783702 0.65614098 0.54938102 0.65829599 0.45598501 0.61062199 0.39403099 0.66637802
		 0.39834899 0.784931 0.403355 0.78736103 0.355988 0.67241299 0.34817699 0.78311497
		 0.27509901 0.68714601 0.255914 0.938905 0.46500501 0.95704597 0.411264 0.96005398
		 0.363058 0.93591303 0.296332 0.509983 0.138846 0.55825102 0.156855 0.47020301 0.63367599
		 0.52516401 0.62404001 0.578143 0.61323202 0.63182998 0.61070901 0.89830798 0.51936603
		 0.83281499 0.55240399 0.75336301 0.53500599 0.76627499 0.57699901 0.67343199 0.60544199
		 0.29662901 0.175778 0.356235 0.178174 0.37112099 0.100791 0.314789 0.087945998 0.90071303
		 0.66682798 0.93034202 0.75242102 0.98528898 0.74309599 0.948039 0.697882 0.96654803
		 0.47443599 0.91974699 0.540061 0.98423398 0.416922 0.98885298 0.365385 0.96031702
		 0.28344601 0.868976 0.213614 0.85400498 0.24102999 0.81378698 0.185285 0.80083299
		 0.21375 0.72131199 0.14829899 0.70935601 0.181352 0.60685199 0.16527399 0.663899
		 0.172291 0.67644 0.135418;
	setAttr ".uvst[1].uvsp[4000:4249]" 0.61651802 0.13201299 0.566517 0.122964 0.51654601
		 0.106118 0.46595201 0.127094 0.47371501 0.097159997 0.37795401 0.070593998 0.26735601
		 0.046813 0.259817 0.078616001 0.32128099 0.056882001 0.20174401 0.036430001 0.19745401
		 0.069118999 0.224997 0.70813102 0.16475099 0.71495998 0.28068 0.70178699 0.337152
		 0.69332898 0.43270299 0.67595398 0.42665401 0.64321798 0.47607401 0.66710597 0.529055
		 0.65746403 0.58548999 0.64819098 0.64023203 0.64849102 0.68299001 0.64043999 0.843593
		 0.58111799 0.35325801 0.86813802 0.37636101 0.98374897 0.472166 0.96566302 0.42800099
		 0.84879202 0.317761 0.98006499 0.301016 0.880925 0.239145 0.895913 0.26990199 0.95578498
		 0.272782 0.78846002 0.242358 0.834548 0.32051799 0.75611901 0.41515699 0.73086298
		 0.49456999 0.83118397 0.55300099 0.82559901 0.53281999 0.70757097 0.48482001 0.72313702
		 0.58262998 0.69075799 0.61597598 0.814026 0.671408 0.80361402 0.71091002 0.79827398
		 0.672885 0.66169798 0.63519901 0.67344701 0.84184998 0.65728599 0.868725 0.76244402
		 0.968898 0.84489399 0.99135202 0.79255801 0.90079498 0.88884598 0.84609002 0.91842598
		 0.80789101 0.777206 0.75037801 0.94024301 0.64334297 0.92532098 0.70548898 0.93074101
		 0.54254597 0.94015002 0.58582199 0.92704302 0.51234001 0.954476 0.46485299 0.83858198
		 0.38605601 0.038249001 0.48181 0.063652001 0.327766 0.025562 0.274187 0.016472001
		 0.207807 0.0054600001 0.230004 0.73895198 0.169203 0.74624503 0.28505701 0.73280799
		 0.48071599 0.69594401 0.43989199 0.704602 0.45591599 0.72545302 0.44546601 0.43318599
		 0.44375899 0.38276601 0.45795599 0.334171 0.48293501 0.29805601 0.31562099 0.52324802
		 0.426907 0.56060797 0.42117 0.505656 0.28852099 0.24180999 0.340572 0.244041 0.23677
		 0.244046 0.23068801 0.176007 0.179518 0.175776 0.19362199 0.250117 0.219868 0.511379
		 0.26596099 0.51791102 0.45748401 0.21115799 0.44661 0.27028 0.17689499 0.50152701
		 0.46616799 0.475642 0.77174503 0.453091 0.62048203 0.34851 0.63862598 0.253151 0.77746302
		 0.60620499 0.77082402 0.65247798 0.52194399 0.073371001 0.342529 0.72421098 0.19064274
		 0.95011055 0.18060705 0.96167165 0.15988573 0.94319785 0.16592748 0.92966229 0.20380074
		 0.97954792 0.19233763 0.98452997 0.37550682 0.97873914 0.37670058 0.99163455 0.35681039
		 1 0.3462657 0.99101222 0.17470072 0.89099699 0.19911605 0.90324634 0.22047417 0.94000006
		 0.22903243 0.96634322 0.21707961 0.90784788 0.23901112 0.91098785 0.2433532 0.9357658
		 0.22514187 0.86985463 0.21025558 0.86104292 0.24096422 0.84870827 0.22243966 0.83809268
		 0.2438134 0.87989646 0.27008778 0.85437989 0.67162895 0.74526018 0.66185492 0.75201362
		 0.65277511 0.71557844 0.65721911 0.70832282 0.6859079 0.76716787 0.67183751 0.78201431
		 0.7008062 0.78165799 0.68970686 0.80103964 0.84879738 0.76050007 0.85186327 0.7667262
		 0.81579906 0.76751113 0.81477809 0.76114649 0.78182685 0.77957433 0.78033286 0.79357225
		 0.24974535 0.95751482 0.3359172 0.94244218 0.35205978 0.94706345 0.32009736 0.97589403
		 0.37612987 0.94622934 0.29981199 0.96347773 0.31879458 0.93370605 0.71791267 0.79026085
		 0.71079481 0.81174839 0.74687314 0.78935617 0.74569738 0.81372643 0.18265042 0.8509379
		 0.162048 0.8475197 0.15581281 0.8858633 0.18843403 0.82490677 0.16394614 0.81893855
		 0.68268383 0.72404766 0.66074991 0.69812196 0.70187902 0.73907971 0.71844935 0.74618971
		 0.73572689 0.75138426 0.75861204 0.75763249 0.81780356 0.74794918 0.84729391 0.74995911
		 0.78736866 0.75425237 0.33859652 0.89819354 0.32204068 0.89355373 0.35430965 0.90031761
		 0.37684089 0.89872307 0.66778505 0.67981434 0.69421029 0.70254189 0.71275491 0.71614504
		 0.72856724 0.72291428 0.74524873 0.72774214 0.76697481 0.73264849 0.81882787 0.72463924
		 0.85015672 0.72975677 0.79200321 0.72933191 0.67522687 0.66114014 0.68182164 0.64247441
		 0.71106327 0.65895563 0.70329612 0.68060786 0.73008138 0.66957098 0.72180724 0.69259381
		 0.74510336 0.67600024 0.73717415 0.69911605 0.7533198 0.70380801 0.76068783 0.68083471
		 0.77393347 0.70795286 0.77994883 0.68494284 0.82159644 0.70428443 0.82452524 0.68525136
		 0.852992 0.68903673 0.85154039 0.70929933 0.79691416 0.70644301 0.80161786 0.68552786
		 0.68897849 0.6240316 0.69861066 0.60363305 0.72685868 0.61725056 0.7185201 0.63803613
		 0.74506223 0.62594014 0.7375443 0.64750099 0.759224 0.63193887 0.75217295 0.65398127
		 0.77356875 0.6369347 0.76706165 0.6592831 0.79041713 0.64134878 0.78523368 0.6636306
		 0.854734 0.6688872 0.82750762 0.66720796 0.83042496 0.64528638 0.85662752 0.64598459
		 0.80579954 0.66615766 0.80977964 0.64418375 0.75462347 0.56669891 0.73412329 0.55414212
		 0.7441386 0.55031174 0.75944477 0.56009471 0.76831639 0.57105261 0.77137905 0.5646925
		 0.77967769 0.57404089 0.78124964 0.56767684 0.79087961 0.57704711 0.79139179 0.57004231
		 0.80335754 0.58034128 0.80345869 0.57283568 0.85315925 0.58461267 0.83205611 0.58609813
		 0.83209229 0.57693881 0.84886438 0.57552123 0.81660426 0.58365762 0.81702888 0.57537377
		 0.75297564 0.54021263 0.76655018 0.54982978 0.77727312 0.55382168 0.78601313 0.55656254
		 0.79505241 0.55904812 0.80564451 0.56150889 0.83030438 0.56490046 0.84602374 0.56318867
		 0.81738055 0.56381011 0.74880809 0.57498658 0.72746211 0.56006908 0.76354724 0.58171546
		 0.77595788 0.58564025 0.78825283 0.58878207 0.80176657 0.59136069 0.85538423 0.59328383
		 0.83233899 0.59441471 0.81601775 0.59343463 0.23270261 0.78644007 0.22810556 0.81245488
		 0.19220953 0.80233371 0.19672234 0.77711529 0.25485563 0.79312336 0.24883945 0.81983995
		 0.28093708 0.80070132;
	setAttr ".uvst[1].uvsp[4250:4499]" 0.27605289 0.82865942 0.30677328 0.82983661
		 0.30721509 0.80332386 0.33525622 0.86401004 0.30665109 0.8577835 0.35551882 0.86728239
		 0.33358952 0.83189696 0.35742229 0.83258301 0.33339992 0.80638045 0.35904792 0.80788773
		 0.20207246 0.74849302 0.20726709 0.72317225 0.24102691 0.73147398 0.2372999 0.75732625
		 0.26430428 0.73667955 0.26041231 0.7634781 0.2894215 0.74152189 0.2858434 0.76984805
		 0.30781209 0.74398315 0.30770743 0.77114815 0.33360586 0.74864095 0.3335312 0.77362549
		 0.36254245 0.74992031 0.36110109 0.77495664 0.3789072 0.86457783 0.38179901 0.82945186
		 0.38522613 0.7501235 0.38447255 0.77358049 0.14809899 0.92316872 0.14218026 0.93642491
		 0.40244004 0.97715783 0.40244004 0.99007666 0.40244004 0.94627315 0.40244004 0.8966437
		 0.16816488 0.79721898 0.17220181 0.77164471 0.17777361 0.74241042 0.18366097 0.71679902
		 0.40244004 0.8620466 0.40244004 0.82750928 0.38309392 0.80623579 0.4024401 0.80506182
		 0.21418798 0.70305568 0.24702358 0.71377617 0.26869026 0.72068495 0.29215053 0.7270568
		 0.30911419 0.73119164 0.33404773 0.73551118 0.36236122 0.73823267 0.38503781 0.73837191
		 0.19080941 0.69556594 0.25226915 0.69864857 0.21998787 0.68555635 0.22113892 0.68041664
		 0.25297177 0.69324183 0.2728619 0.70712584 0.27466783 0.70120651 0.29550838 0.71424496
		 0.29759085 0.70883697 0.31176725 0.71930128 0.31431255 0.71402031 0.33583087 0.72438031
		 0.33831927 0.71941221 0.36323851 0.72803134 0.36534002 0.72347093 0.38553464 0.72750473
		 0.38674131 0.7235409 0.19627854 0.67597663 0.19655693 0.67143834 0.22854026 0.66050994
		 0.259011 0.67332238 0.28002918 0.68145597 0.30277759 0.68805587 0.31884965 0.6928128
		 0.3417694 0.69776332 0.3673107 0.7009725 0.38749951 0.70054948 0.20825011 0.65321529
		 0.71763361 0.57090789 0.74191761 0.58592784 0.73604846 0.59787899 0.70956862 0.58415616
		 0.75774485 0.59356791 0.75271767 0.60604495 0.77134705 0.59824812 0.76605129 0.61165589
		 0.78418988 0.60215241 0.7795788 0.61634469 0.7986542 0.60559791 0.79513824 0.62052536
		 0.83278334 0.60863674 0.85805488 0.60780787 0.85801178 0.62335044 0.83231825 0.62387067
		 0.81461585 0.60776734 0.81281459 0.62308449 0.4024401 0.72731763 0.4024401 0.738271
		 0.18699081 0.69429326 0.18304595 0.69283092 0.18889417 0.67478132 0.19240433 0.67515129
		 0.4024401 0.77267361 0.4024401 0.75006706 0.4024401 0.72341174 0.4024401 0.70050168
		 0.17369747 0.74134898 0.16805701 0.7707333 0.16439921 0.76972431 0.17008595 0.74021149
		 0.017056096 0.68847358 0.017056096 0.71102285 1.1973349e-07 0.71102285 1.1973349e-07
		 0.68847358 1.1973349e-07 0.66589409 0.017056096 0.66589409 1.7960024e-07 0.64447916
		 0.017056096 0.64447916 0.017056096 0.6257568 1.7960024e-07 0.6257568 0.017056096
		 0.60301113 1.1973349e-07 0.60301113 0.15810195 0.84698492 0.15216286 0.88482553 0.14944947
		 0.88379985 0.15471977 0.84647578 0.15983921 0.8180896 0.15629971 0.8170948 0.14451374
		 0.92161012 0.13887268 0.93510801 0.1367406 0.93421668 0.14232071 0.92035633 0.16401091
		 0.79631358 0.16047788 0.79530346 0.17980382 0.71557409 0.17633879 0.71429402 0.18837188
		 0.66929263 0.19250754 0.67038566 0.20493558 0.65152013 0.20156197 0.65108854 0 0.72715396
		 0.017056096 0.72715396 0.017056096 0.73217136 1.7960024e-07 0.73185492 0.75561929
		 0.53924215 0.76358163 0.52841312 0.77531582 0.53631008 0.767887 0.54780686 0.78348911
		 0.5397051 0.77820355 0.55165529 0.79108906 0.54215425 0.78678942 0.55443442 0.79920703
		 0.54451066 0.79572904 0.55687189 0.80873406 0.54712796 0.80616152 0.55942881 0.83005792
		 0.56256813 0.82951307 0.54915369 0.84308559 0.54782629 0.84420955 0.56100702 0.81758088
		 0.56149787 0.81877285 0.54869878 0.065126516 0.68847358 0.065126516 0.71102285 0.04971119
		 0.71102285 0.04971119 0.68847358 0.04971119 0.66589409 0.065126516 0.66589409 0.04971119
		 0.64447916 0.065126516 0.64447916 0.04971119 0.6257568 0.065126516 0.6257568 0.04971119
		 0.60301113 0.065126516 0.60301113 0.04971119 0.73033881 0.04971119 0.72715396 0.065126516
		 0.72715396 0.065126516 0.7304731 0.23105022 0.65369081 0.26159814 0.66653615 0.2822412
		 0.67452437 0.30471751 0.68104494 0.32055891 0.68573385 0.34292814 0.69056547 0.36766967
		 0.69367445 0.38741654 0.69326073 0.21100529 0.64648414 0.17631395 0.69056213 0.18169686
		 0.67394727 0.4024401 0.69321233 0.15742408 0.76844698 0.16317098 0.7386235 0.034332562
		 0.71102285 0.034332562 0.68847358 0.037966292 0.68847358 0.037966292 0.71102285 0.034332562
		 0.66589409 0.037966292 0.66589409 0.034332562 0.64447916 0.037966292 0.64447916 0.034332681
		 0.6257568 0.037966292 0.6257568 0.034332562 0.60301113 0.037966292 0.60301113 0.14246655
		 0.88255811 0.14766435 0.84574926 0.14925405 0.8161841 0.12978043 0.93245989 0.13551164
		 0.91822392 0.15350208 0.79402864 0.16952117 0.71229768 0.18105504 0.66719604 0.19834664
		 0.64333153 0.2070069 0.64443994 0.03358297 0.73077244 0.033153784 0.72715396 0.037966292
		 0.72715396 0.037966233 0.73246408 0.017056096 0.73613423 0 0.7347275 0.61423749 0.95011055
		 0.63895267 0.92966229 0.64499444 0.94319785 0.624273 0.96167165 0.6010794 0.97954792
		 0.61254257 0.98452997 0.42937249 0.97873914 0.45861378 0.99101222 0.44806969 1 0.4281795
		 0.99163455 0.60576409 0.90324634 0.63017869 0.89099699 0.58440602 0.94000006 0.57584786
		 0.96634322 0.58780062 0.90784788 0.56586909 0.91098785 0.56152683 0.9357658 0.57973826
		 0.86985463 0.5946247 0.86104292 0.56391591 0.84870827 0.58244038 0.83809268 0.56106669
		 0.87989646 0.53479254 0.85437989 0.98063529 0.51874167 0.99504519 0.48180434 0.99948949
		 0.48905995 0.99041009 0.52549523 0.98042679 0.55549598 0.96635664 0.54064947 0.96255755
		 0.57452112;
	setAttr ".uvst[1].uvsp[4500:4749]" 0.95145828 0.55513966 0.80346704 0.53398168
		 0.83748651 0.53462809 0.83646601 0.54099268 0.80040121 0.54020756 0.87043762 0.55305582
		 0.87193227 0.56705379 0.55513471 0.95751482 0.46896234 0.94244218 0.48478213 0.97589403
		 0.4528203 0.94706345 0.42875022 0.94622934 0.48608473 0.93370605 0.50506812 0.96347773
		 0.94146967 0.58522993 0.93435168 0.5637424 0.90656704 0.58720791 0.90539128 0.56283766
		 0.62222898 0.8509379 0.64283216 0.8475197 0.64906669 0.8858633 0.61644614 0.82490677
		 0.64093387 0.81893855 0.96958053 0.4975293 0.99151462 0.47160354 0.95038629 0.51256132
		 0.93381494 0.51967102 0.9165383 0.52486569 0.89365244 0.5311141 0.83446091 0.52143073
		 0.8049705 0.52344066 0.86489576 0.52773392 0.46628356 0.89819354 0.48283935 0.89355373
		 0.45057058 0.90031761 0.42803907 0.89872307 0.95805418 0.47602344 0.98447955 0.45329592
		 0.93950951 0.48962665 0.92369789 0.49639586 0.90701556 0.50122374 0.88529015 0.50612998
		 0.80210829 0.50323838 0.83343709 0.49812078 0.86026198 0.5028134 0.97703743 0.43462157
		 0.94896817 0.4540894 0.94120121 0.43243721 0.97044295 0.41595596 0.930457 0.46607539
		 0.92218363 0.44305241 0.91509008 0.47259757 0.90716094 0.44948182 0.8989448 0.47728956
		 0.89157677 0.45431617 0.87833178 0.48143438 0.8723157 0.45842454 0.83066851 0.47776598
		 0.8007248 0.48278096 0.79927325 0.46251827 0.82773995 0.45873302 0.85064662 0.45900956
		 0.85535038 0.47992447 0.96328586 0.39751312 0.93374443 0.4115178 0.92540568 0.39073205
		 0.95365375 0.37711453 0.91472071 0.42098266 0.90720206 0.39942178 0.90009224 0.42746288
		 0.89304024 0.40542042 0.88520277 0.43276468 0.87869561 0.41041625 0.86703151 0.43711209
		 0.86184728 0.41483042 0.79753041 0.44236881 0.79563689 0.41946614 0.82183963 0.41876802
		 0.8247568 0.44068953 0.84248489 0.41766539 0.84646547 0.43963912 0.8976475 0.3405326
		 0.8928389 0.33368433 0.90809065 0.32411468 0.91778511 0.32854411 0.88407141 0.3445957
		 0.88094687 0.33809388 0.87274516 0.34744337 0.87107295 0.3409628 0.86146593 0.35033211
		 0.86086839 0.34321398 0.8488422 0.3535153 0.8486824 0.3459048 0.79847109 0.35766658
		 0.8026638 0.34840944 0.81972826 0.34988683 0.81987679 0.35920689 0.83496773 0.34837142
		 0.83546764 0.35678804 0.88574773 0.32303336 0.89945012 0.31341985 0.87497646 0.32692158
		 0.86619478 0.32957613 0.85709178 0.33197817 0.84640294 0.3343544 0.80540001 0.33583066
		 0.82143319 0.3376205 0.83453417 0.33658814 0.9240486 0.33510423 0.90343857 0.34912491
		 0.88895839 0.35545611 0.87670821 0.35925689 0.86427265 0.36228615 0.8505131 0.36470097
		 0.81969965 0.36766696 0.79640752 0.36649835 0.83613575 0.3667213 0.57217741 0.78644007
		 0.6081571 0.77711529 0.61266994 0.80233371 0.57677466 0.81245488 0.55002457 0.79312336
		 0.55604011 0.81983995 0.52394235 0.80070132 0.52882719 0.82865942 0.49810681 0.82983661
		 0.49766493 0.80332386 0.46962318 0.86401004 0.49822906 0.8577835 0.44936126 0.86728239
		 0.47129008 0.83189696 0.44745785 0.83258301 0.44583225 0.80788773 0.47148022 0.80638045
		 0.60280704 0.74849302 0.5675804 0.75732625 0.56385314 0.73147398 0.5976131 0.72317225
		 0.54446727 0.7634781 0.54057592 0.73667955 0.51903683 0.76984805 0.5154587 0.74152189
		 0.49717277 0.77114815 0.49706751 0.74398315 0.47134882 0.77362549 0.47127363 0.74864095
		 0.44377911 0.77495664 0.44233775 0.74992031 0.42597282 0.86457783 0.42308113 0.82945186
		 0.41965407 0.7501235 0.42040762 0.77358049 0.65678048 0.92316872 0.66269988 0.93642491
		 0.63671458 0.79721898 0.63267767 0.77164471 0.62710649 0.74241042 0.62121916 0.71679902
		 0.42178628 0.80623579 0.55785596 0.71377617 0.59069216 0.70305568 0.53618985 0.72068495
		 0.51272976 0.7270568 0.49576607 0.73119164 0.47083175 0.73551118 0.4425182 0.73823267
		 0.4198423 0.73837191 0.61407012 0.69556594 0.55261099 0.69864857 0.55190831 0.69324183
		 0.58374125 0.68041664 0.58489227 0.68555641 0.5320183 0.70712584 0.53021228 0.70120651
		 0.50937188 0.71424496 0.50728941 0.70883697 0.49311289 0.71930128 0.49056748 0.71402031
		 0.46904927 0.72438031 0.46656093 0.71941221 0.44164097 0.72803134 0.43954012 0.72347093
		 0.41934484 0.72750473 0.41813877 0.7235409 0.60832316 0.6714384 0.60860169 0.67597663
		 0.54586858 0.67332238 0.57634002 0.66050994 0.52485102 0.68145597 0.50210255 0.68805587
		 0.48602995 0.6928128 0.4631108 0.69776332 0.43756926 0.7009725 0.41737998 0.70054948
		 0.59662926 0.65321529 0.93268555 0.34746692 0.94096446 0.35994506 0.91663563 0.37228909
		 0.91033292 0.36038867 0.89954674 0.3795265 0.89483088 0.36740941 0.88621378 0.38513747
		 0.88188183 0.37209427 0.87268555 0.38982621 0.86868864 0.37591305 0.85712683 0.394007
		 0.85361028 0.37907949 0.81948203 0.38211825 0.81994677 0.39735231 0.79425251 0.39683214
		 0.79420966 0.38128939 0.83764845 0.38124892 0.83945 0.396566 0.61788929 0.69429326
		 0.61247587 0.67515129 0.61598599 0.67478132 0.62183422 0.69283092 0.63118207 0.74134898
		 0.63479346 0.74021149 0.64048034 0.76972431 0.63682318 0.7707333 0.017056096 0.50781929
		 0.017056096 0.51773548 1.1973349e-07 0.51773548 1.1973349e-07 0.50781929 1.1973349e-07
		 0.54011261 0.017056096 0.54011261 1.1973349e-07 0.56164479 0.017056096 0.56164473
		 0.017056096 0.58211732 1.1973349e-07 0.58211732 0.64677835 0.84698492 0.65016031
		 0.84647578 0.65543073 0.88379985 0.65271747 0.88482553 0.64504027 0.8180896 0.64858043
		 0.8170948 0.6603663 0.92161012 0.66255873 0.92035633 0.66813904 0.93421668 0.6660074
		 0.93510801 0.64440161 0.79530346 0.64086926 0.79631358 0.62507641 0.71557409 0.62854135
		 0.71429402 0.61650825 0.66929263 0.61237192 0.67038566 0.59994471 0.65152019 0.60331827
		 0.65108854 1.1973349e-07 0.50627321;
	setAttr ".uvst[1].uvsp[4750:4836]" 1.1973349e-07 0.50211418 0.017056096 0.50178903
		 0.017056096 0.50627321 0.89681232 0.31236151 0.88440567 0.32094073 0.87688619 0.30908668
		 0.88880855 0.30113778 0.87403303 0.32469755 0.86866021 0.31242713 0.86539871 0.32739735
		 0.86101544 0.31480822 0.85639346 0.32975286 0.85284227 0.31708884 0.84586746 0.33223045
		 0.84323269 0.3196288 0.82166696 0.33524206 0.80723155 0.33360672 0.80833095 0.32011989
		 0.82218987 0.32151467 0.83432007 0.33422887 0.83308554 0.3211275 0.065126516 0.51773548
		 0.04971119 0.51773548 0.04971119 0.50781929 0.065126516 0.50781929 0.04971119 0.54011261
		 0.065126516 0.54011261 0.04971119 0.56164473 0.065126516 0.56164473 0.065126516 0.58211732
		 0.04971119 0.58211732 0.04971119 0.50627321 0.04971119 0.50205761 0.065126516 0.50319862
		 0.065126516 0.50627321 0.54328209 0.66653615 0.57382983 0.65369081 0.52263904 0.67452437
		 0.5001626 0.68104494 0.4843213 0.68573385 0.46195203 0.69056547 0.43721047 0.69367445
		 0.41746372 0.69326073 0.59387481 0.6464842 0.62318331 0.67394727 0.62856603 0.69056213
		 0.64170915 0.7386235 0.64745611 0.76844698 0.034332562 0.50781929 0.037966292 0.50781929
		 0.037966292 0.51773548 0.034332562 0.51773548 0.037966292 0.54011261 0.034332562
		 0.54011261 0.037966292 0.56164473 0.034332562 0.56164473 0.037966292 0.58211732 0.034332562
		 0.58211732 0.6572156 0.84574926 0.66241372 0.88255811 0.65562618 0.8161841 0.66936857
		 0.91822392 0.67509973 0.93245989 0.65137815 0.79402864 0.63535839 0.71229768 0.62382531
		 0.66719604 0.60653353 0.64333153 0.59787315 0.64444 0.034857593 0.50166643 0.037966292
		 0.49866802 0.037966292 0.50627321 0.035148486 0.50627321 1.1973349e-07 0.49982435
		 0.017056096 0.49863556 0.17856494 0.66530389 0.1963474 0.63749963 0.17962003 0.6735785
		 0.17482919 0.69021034 0.16796121 0.71172553 0.16143849 0.73789036 0.15543416 0.76743424
		 0.15107155 0.79220265 0.14611368 0.81449908 0.14433941 0.84552455 0.13946955 0.88269538
		 0.1319461 0.9179374 0.12692849 0.93140835;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4356 ".vt";
	setAttr ".vt[0:165]"  -46.33171082 2.43180084 90.25905609 -46.59707642 2.26155853 89.00440979
		 -47.1854248 1.86313629 86.3526535 -46.19393921 4.21474457 86.24333191 -46.18753052 0.45478821 91.024749756
		 -46.56750488 -0.03012085 89.59596252 -45.46368408 -1.5859375 91.42562103 -45.73591614 -2.17878723 90.065994263
		 -47.27124023 -0.78424072 86.97225952 -46.18041992 -3.028831482 87.68250275 -42.54527283 5.42396545 87.85568237
		 -42.90116882 5.27026367 85.97467804 -42.74647522 3.35022736 85.53804779 -43.24700928 -1.26289368 85.95811462
		 -42.58630371 1.50268555 87.43022156 -43.18447876 1.068061829 85.43143463 -42.15608215 1.87610626 88.44003296
		 -43.89981079 -2.99053955 90.078598022 -43.64422607 -3.10719299 87.65496826 -41.24194336 -2.58399963 93.29908752
		 -41.40939331 -0.82228088 95.29979706 -39.97599792 3.1469574 95.4109726 -41.36244202 -2.84164429 87.90478516
		 -41.54664612 -2.4165802 88.28347778 -42.54710388 -3.20193481 88.5401001 -41.24987793 -0.87931824 88.46627808
		 -41.94754028 -1.49342346 88.083770752 -39.59362793 -3.48992157 88.82390594 -39.48092651 -2.89122772 89.52426147
		 -42.10591125 -4.61878204 89.28074646 -41.4030304 -4.94045258 84.5477066 -40.84959412 -5.79432678 83.51538849
		 -40.86233521 -6.59822083 83.51733398 -40.061340332 -4.40552521 84.45643616 -40.017471313 -6.52609253 85.44152832
		 -40.73254395 -6.88352966 83.70154572 -45.037384033 -2.1865921 74.68727112 -46.0096893311 -1.099685669 76.5298996
		 -45.24264526 -3.1880188 75.064277649 -46.1783905 -2.57042694 77.14672852 -44.39440918 -3.38547516 75.29956818
		 -45.023620605 -2.84067535 77.48338318 -46.75906372 -2.24832916 78.81305695 -47.07359314 0.11994934 81.0313797
		 -45.42153931 -2.46078491 79.024085999 -47.11166382 0.31800079 81.80504608 -47.25869751 -1.38791656 82.46944427
		 -47.41213989 -1.11777496 85.74930573 -45.48258972 -1.72444153 82.30666351 -43.79702759 -1.57659912 84.92680359
		 -46.16600037 3.027023315 81.50593567 -45.990448 2.65123749 79.77111053 -43.094329834 3.24937439 84.3946228
		 -46.18295288 4.074928284 85.090965271 -46.69726563 1.4648819 81.51007843 -46.4480896 1.19882202 79.98271179
		 -43.63508606 0.88594818 84.19412231 -44.58374023 -4.58107758 83.18636322 -44.63812256 -4.29553223 83.84938812
		 -46.44680786 -4.65847778 83.14756775 -46.46270752 -4.4250946 83.86896515 -44.1104126 -3.54957581 86.46105957
		 -46.3208313 -3.39238739 86.60175323 -45.088180542 4.29968262 81.6169281 -44.88703918 4.29786682 80.83019257
		 -43.82800293 3.6640625 81.84365082 -43.67835999 3.55949402 81.16625977 -44.99380493 -3.8506546 79.36231232
		 -46.22012329 -4.19452667 79.23647308 -43.20501709 5.13659668 78.44983673 -43.87864685 3.94876862 78.43251801
		 -42.95559692 3.22221375 78.72424316 -45.42182922 1.96457672 77.54070282 -45.13728333 1.74434662 76.79553986
		 -45.88757324 0.63761139 77.84551239 -45.62432861 0.45037079 77.11155701 -44.13957214 -4.94058228 77.036605835
		 -43.85691833 -5.92961121 77.40518188 -44.19165039 -4.57318115 77.37004089 -44.72877502 -6.14643097 77.28425598
		 -45.35966492 -4.82432556 77.23799133 -44.99885559 -5.11408997 76.9315033 -42.62393188 3.42282867 76.33449554
		 -42.018432617 2.96091461 76.65397644 -43.0078125 0.19139862 74.71628571 -44.11495972 0.95370483 74.72424316
		 -43.84277344 0.5258255 74.40971375 -44.71412659 -0.38896942 75.011070251 -44.2983551 -0.46424103 74.63446045
		 -43.48182678 -0.81190491 74.984375 -43.58851624 5.59009552 93.82738495 -45.060943604 3.13503265 94.80506897
		 -41.57745361 4.80023956 92.71520996 -43.17938232 5.87845612 95.95504761 -44.13562012 3.74824524 97.066734314
		 -41.074676514 5.43395996 95.19818115 -43.91517639 1.42075348 97.64421082 -44.6209259 0.460289 95.50938416
		 -42.72061157 0.1097641 97.61628723 -43.20779419 -0.84310913 95.49190521 -43.7040863 -2.83261871 91.30764008
		 -44.22047424 -2.34886169 74.88258362 -45.40896606 0.026550293 81.67302704 -45.46270752 -0.13632202 81.026779175
		 -44.82116699 -1.35012817 76.93200684 -42.25509644 4.38233185 78.78027344 -46.10125732 3.36790466 90.18544006
		 -46.32366943 3.32770538 88.86082458 -44.18757629 6.0043029785 89.7215271 -44.49787903 6.013504028 87.26360321
		 -40.49775314 -0.50426829 93.28970337 -40.52099228 1.086362839 95.29195404 -42.015823364 -5.18701172 86.45024872
		 -42.38500977 -4.22611237 88.90090942 -41.039291382 -1.50805664 88.50295258 -39.11839294 -4.99591064 86.7304306
		 -39.59483337 -3.9859314 89.21570587 -45.60333252 -2.39290619 75.26281738 -45.072509766 -3.51727295 75.82307434
		 -47.25372314 -0.95272827 79.96059418 -46.36212158 -2.31565094 80.46893311 -47.43759155 -0.62333679 81.34959412
		 -47.52728271 -0.25519562 83.078300476 -46.40524292 -1.9429245 81.73900604 -46.27352905 -1.76235199 83.25605774
		 -45.16851807 3.32048035 82.40655518 -46.73274231 2.48466492 82.58589172 -44.64483643 1.71244812 81.43689728
		 -46.0032653809 1.004699707 81.4896698 -44.51960754 1.91567993 82.18341064 -46.048858643 1.072593689 82.24265289
		 -46.18603516 -2.68833923 81.95867157 -46.13302612 -2.42520142 82.64400482 -47.046173096 -3.77016449 82.65356445
		 -46.99737549 -3.49481201 83.389534 -44.79359436 3.75189209 82.95082092 -44.73475647 -4.2383728 80.9228363
		 -45.28617859 -5.54085541 81.31020355 -46.073867798 -3.27986908 80.30063629 -46.6290741 -4.54965973 80.69696808
		 -44.33804321 0.81996155 78.1078186 -45.42970276 0.19210815 78.094963074 -44.46400452 1.3079071 80.032424927
		 -45.85092163 0.71349335 80.1027298 -43.79156494 -5.20614624 77.65946198 -44.31074524 -6.35057068 77.87993622
		 -44.5369873 -4.5371933 79.70256805 -45.036621094 -5.83061218 79.95007324 -42.65931702 2.98294067 76.83776093
		 -43.097412109 -0.25057983 75.39070129 -44.26547241 -0.85377502 75.31610107 -44.12316895 0.61671448 77.42110443
		 -45.20050049 0.0036849976 77.38019562 -42.76130676 5.67140198 92.053825378 -42.35528564 5.81492615 94.48679352
		 -44.55046082 2.1051178 96.44275665 -43.77586365 0.17021942 96.67990112 -45.30639648 0.86103058 94.080879211
		 -44.21395874 -1.015098572 94.26823425 -39.25997925 -6.72992706 83.57321167 -41.085449219 3.51851654 92.95082855
		 -41.93078613 5.10032654 91.39405823 -44.58042908 -2.93994141 74.58997345 -44.31295776 -5.63477325 76.85062408
		 -41.7461853 4.01914978 76.36727142 -43.50674438 -0.29483032 74.3605423;
	setAttr ".vt[166:331]" -40.75689697 4.065704346 94.21322632 -44.97821045 -0.760849 82.62310791
		 -46.1960907 0.6647644 82.34897614 -43.6651001 5.67630768 83.69693756 -45.18437195 -1.34448242 80.11598206
		 -46.15756226 -0.031311035 79.64485931 -41.81809998 4.35630035 76.84647369 -41.2888031 -0.39636993 96.20496368
		 -46.90505981 2.93411255 84.98480225 -44.58589172 5.77465057 85.39591217 -43.65896606 5.74647522 85.36278534
		 -43.40304565 2.092063904 84.20706177 -43.73538208 -0.36620331 84.42495728 -43.82470703 -2.67054749 85.7052536
		 -47.13400269 -2.45348358 86.26191711 -47.72402954 0.29902649 85.31736755 -39.32035828 -6.30326748 83.28765106
		 -44.74664307 -1.61736298 75.040374756 -44.14306641 -2.7286911 75.66303253 -46.2795105 0.27306366 80.91778564
		 -45.1388855 -1.074226379 81.33015442 -41.38665771 -1.58521271 94.33583069 -39.80381775 1.51515186 97.064666748
		 -42.79652405 6.025718689 96.9258728 -39.91279602 4.63549042 96.090820313 -45.7399292 2.75463867 92.76583862
		 -43.74473572 2.81407928 98.43084717 -41.73292542 6.16552734 96.40136719 -43.05015564 0.99086761 98.70379639
		 -39.99708939 -2.7749095 91.33638763 -45.63696289 4.32982635 90.1612854 -46.82737732 3.099998474 86.22460938
		 -45.85951233 4.36629486 88.77294159 -44.55648804 5.83312225 86.26455688 -46.3356781 1.48943329 90.61521149
		 -46.66333008 1.14650726 89.27656555 -45.9611969 -0.65090942 91.28614807 -46.31710815 -1.25104523 89.86882782
		 -47.4347229 0.57430267 86.57347107 -46.93960571 -2.087989807 87.38435364 -42.32861328 5.40380859 88.98259735
		 -41.85968018 3.69873047 88.24905396 -43.16094971 5.97367859 89.3848114 -43.33326721 6.030075073 88.14087677
		 -42.14758301 3.57914734 87.39173889 -43.60256958 5.8082428 86.1605072 -42.36196899 -0.35322571 87.55203247
		 -42.57048035 0.49464417 87.46813202 -43.27108765 -0.11937714 85.5968399 -41.96731567 0.23567963 88.46853638
		 -42.22183228 0.97716522 88.5018158 -42.33578491 2.54510498 87.36432648 -42.97654724 2.23223877 85.42540741
		 -41.95225525 2.81377411 88.31082153 -44.84945679 -2.70502472 90.13465881 -45.049026489 -3.39935303 87.75176239
		 -40.20655823 -1.62938166 92.32289124 -40.21490479 0.63568878 92.056289673 -40.72326279 0.54813451 94.25333405
		 -40.39408875 2.79400635 94.45294189 -40.19729996 1.34462035 96.18232727 -41.81494141 -4.28890991 86.14448547
		 -42.2220459 -3.41674805 88.15122986 -42.737854 -3.89730835 89.56594849 -41.73744202 -1.96537018 88.30266571
		 -40.91381836 -2.15536499 88.38594055 -40.42103577 -3.76364899 86.086929321 -40.79176331 -2.71468353 87.97117615
		 -40.59910583 -5.11500549 89.88915253 -40.75126648 -4.61752319 91.047264099 -40.1865387 -6.21870422 87.13871002
		 -42.47045898 -4.18304443 90.14157867 -39.50311279 -3.41920471 90.067008972 -40.57531738 -4.43077087 84.42236328
		 -40.098846436 -5.58916473 83.29327393 -40.94920349 -3.81908417 86.053489685 -41.60458374 -5.91815948 84.83046722
		 -38.93391418 -5.27134705 84.74699402 -39.18304443 -4.47232819 86.44959259 -39.62696838 -5.522789 83.34098816
		 -41.79052734 -5.72068787 86.71045685 -41.4425354 -6.30392456 85.054672241 -38.89865112 -5.66512299 85.027786255
		 -45.349823 -1.71539307 74.94542694 -45.6164093 -3.15013885 75.57022858 -45.17173767 -2.68280792 74.76399231
		 -46.2678833 -1.83825684 76.80731201 -44.44595337 -3.40090942 75.87814331 -44.78813171 -3.54734802 75.091903687
		 -45.67770386 -2.98935699 77.4223175 -46.54611206 -0.59275055 78.17227173 -46.80966187 -1.38916779 78.45596313
		 -46.91203308 -0.20478821 79.68086243 -47.14993286 -1.88124847 80.33306122 -46.12327576 -2.6257782 79.019012451
		 -45.52488708 -2.16616821 80.39211273 -47.50115967 -0.44882965 82.16284943 -47.21636963 -1.52947235 81.66325378
		 -47.047027588 0.5343399 82.6446228 -47.1686554 -1.27749634 83.34086609 -46.37579346 -1.78224182 82.47486877
		 -45.55265808 -1.87266541 81.64321136 -46.14164734 -1.82940674 83.66558075 -45.33355713 -1.58275604 82.96647644
		 -44.64059448 2.63505554 81.40509796 -45.28662109 3.080200195 81.45870972 -45.19296265 2.70244598 79.77867889
		 -44.52963257 2.82157135 82.26428986 -44.98587036 3.55844879 83.069618225 -46.10830688 3.2919693 82.60453033
		 -46.72247314 2.30426025 81.53028107 -46.51443481 2.00025177002 79.84992218 -46.71194458 1.5622406 82.42494202
		 -45.17382813 0.98821259 81.48200226 -45.10003662 1.15971375 82.18920135 -46.06854248 0.94708252 82.67705536
		 -44.59542847 -3.73004913 82.60187531 -44.57278442 -3.53104401 83.29753113 -45.22006226 -2.91149902 82.03187561
		 -45.41166687 -4.91409302 83.34246063 -45.39233398 -4.69966888 84.066665649 -45.14677429 -2.76209259 82.75847626
		 -45.18156433 -3.83529663 86.71802521 -46.94075012 -2.96337128 82.18041229 -46.93275452 -2.66970062 82.89918518
		 -44.31689453 5.83403015 81.82141113 -44.18557739 5.7591095 81.035064697 -44.45953369 5.73390198 83.62249756
		 -45.31838989 4.25505829 83.18325806 -44.52392578 3.7259903 81.70245361 -44.35971069 3.68350983 80.97812653
		 -43.9836731 3.7416687 82.97698975 -44.66334534 -5.11904907 81.31036377 -46.10778809 -5.38446808 81.063346863
		 -45.27851868 -3.45578766 80.47653198 -45.68862915 -3.76969147 79.20717621 -46.67089844 -3.6582489 80.37227631
		 -46.1937561 -5.041183472 79.46764374 -43.53237915 3.38492584 78.57268524 -44.28172302 1.58266449 77.85493469
		 -44.75865173 2.0210495 77.6217804 -44.490448 1.79592133 76.89746094 -44.53649902 2.23053741 79.86654663
		 -45.85365295 1.36567688 77.63462067 -45.57406616 1.15649414 76.8955307 -44.79493713 0.20296478 78.23420715
		 -45.085189819 0.66029358 80.1554184 -43.79957581 -5.45809937 77.10303497 -43.78143311 -5.93979645 77.88961792
		 -44.19874573 -6.24393463 77.26251984 -44.97555542 -6.28770447 77.71391296 -44.49189758 -5.36070251 79.97898865
		 -45.74642944 -5.77603149 79.74097443 -44.84088135 -4.46482086 77.21878052 -44.55490112 -4.9131546 76.77931976
		 -45.36860657 -5.60366821 77.46072388 -44.95828247 -5.69732666 76.94869232 -42.36099243 4.52368927 76.64086151
		 -42.1781311 4.17514038 76.33678436 -42.9715271 3.48108673 76.6302948 -42.34675598 3.028129578 76.37321472
		 -42.13819885 2.83054352 77.045555115 -42.96755981 0.50926208 75.12315369 -43.43707275 0.95547485 74.87020111
		 -43.28132629 0.4608078 74.37602997 -44.046096802 1.35464478 77.16358185;
	setAttr ".vt[332:497]" -44.59844971 0.36136627 74.7927475 -44.14883423 0.022781372 74.32102203
		 -43.038970947 -0.43715668 74.76222229 -43.61077881 -0.86296844 75.5069809 -43.90962219 -0.87883759 74.7082901
		 -44.56892395 -0.046379089 77.56719208 -43.76907349 5.62312317 92.51608276 -45.27690125 3.79048157 93.13519287
		 -42.53692627 5.65971375 93.33950043 -43.42814636 5.72494507 94.95632935 -44.55844116 3.46875763 96.090820313
		 -41.37239075 5.18398285 94.19576263 -42.11352539 5.99245453 95.47131348 -44.14137268 2.48220825 97.43563843
		 -44.29006958 0.98771667 96.6315918 -44.9556427 1.60361481 95.33436584 -43.4413147 0.61493683 97.71118164
		 -43.01449585 -0.29801941 96.59629059 -44.023483276 -0.36360931 95.53549194 -44.90762329 -0.18510437 94.2333374
		 -45.52688599 1.94701385 93.65740967 -43.29994202 -1.57167053 94.27758026 -44.64884949 -2.28355408 91.47932434
		 -39.72155762 -6.90607452 83.52603149 -40.7204895 2.092727661 93.13248444 -41.60131836 -0.34062958 88.45201874
		 -39.69551086 -0.59560394 91.11286163 -44.10173035 -2.97769165 74.96839905 -44.53749084 -2.1548996 74.50760651
		 -41.55612183 3.6996994 76.65142822 -40.37362671 4.38890076 95.19596863 -45.30307007 0.19081879 82.36216736
		 -45.13645935 -0.91134644 81.97363281 -46.27581787 0.45665741 81.62760162 -43.024551392 5.19933319 85.167099
		 -43.083984375 5.13484192 83.63122559 -43.55781555 5.65445709 82.014984131 -45.38076782 -0.42250061 79.80567169
		 -45.11402893 -1.69631958 78.79033661 -45.86462402 -0.45315552 78.22047424 -42.95095825 4.87124634 81.42411041
		 -43.45167542 5.5482254 81.26862335 -42.61526489 4.95288849 78.62228394 -44.7205658 -2.12869263 77.26911926
		 -45.378479 -0.97515106 76.63291931 -41.041290283 -0.16181946 97.092010498 -47.2691803 1.61206818 85.041984558
		 -43.31201172 -2.25878906 86.61092377 -39.82699585 -6.51758814 83.17802429 -44.22369385 -1.98885345 75.32965088
		 -45.24588013 -0.85405731 78.46835327 -41.48937988 3.84534454 77.046791077 -43.050323486 4.98120117 82.12795258
		 -39.50537109 3.37272644 96.31051636 -40.69908142 0.028770447 97.97817993 -43.73051453 4.013183594 98.053520203
		 -40.65716553 5.66146088 96.09488678 -43.52471924 1.79395294 98.64250183 -42.34146118 0.44269562 98.59063721
		 -42.15180969 -0.99012756 87.78520203 -42.95748901 -3.085731506 88.43011475 -39.42227173 -1.82610321 90.28003693
		 -41.0090789795 -3.64455414 92.17998505 -42.99008179 -3.54838562 90.83914185 -43.19976807 -3.429245 89.92692566
		 -0.87199104 -6.50663757 163.90101624 -1.60150802 -6.18255615 163.75727844 -1.80752206 -6.090942383 164.4861145
		 -0.95722002 -6.56393433 164.74136353 -2.41043496 -5.62939453 163.94281006 -1.98001301 -5.96173096 165.59628296
		 -0.94144303 -6.74569702 165.61659241 -2.85206485 -5.19021606 164.60426331 -1.93653297 -5.8467865 163.20137024
		 -1.53903401 -6.059890747 163.23059082 -1.68024695 -5.90971375 162.66970825 -0.84910303 -6.28567505 163.26274109
		 -0.93030101 -6.19415283 162.59687805 -2.60388088 -5.27906799 162.42446899 -2.69862986 -5.32325745 163.20874023
		 -3.40246987 -4.43128967 161.93388367 -3.3069768 -4.75315857 163.47410583 -5.040657043 -2.52966309 164.49638367
		 -4.66754293 -3.52313232 165.62825012 -4.013702869 -4.12413025 164.32316589 -4.35810518 -3.34773254 163.005279541
		 -4.10156393 -4.23612976 166.6756134 -3.44841886 -4.73487854 165.53015137 -5.8651433 0.059692383 162.46282959
		 -5.48374891 -1.35552979 163.37120056 -4.7104063 -2.31472778 161.79559326 -4.97836399 -0.96846008 161.031112671
		 -3.7868278 -3.39291382 160.67886353 -3.96468091 -2.058959961 159.97123718 -2.6983099 -4.3991394 159.93295288
		 -2.81140399 -3.067504883 159.21780396 -2.40307188 -5.13009644 160.94491577 -1.44716597 -5.18894958 159.43206787
		 -1.49289906 -3.7432251 158.77105713 -1.27296007 -5.73713684 160.54029846 -1.99382198 -5.57827759 161.89555359
		 -1.076475024 -5.93240356 161.68522644 -0.014212007 -7.012466431 165.58816528 -0.014212007 -6.72149658 164.81343079
		 -0.014212007 -6.6342926 163.96278381 -0.014212007 -6.35466003 163.28733826 -0.014212007 -6.28349304 162.58621216
		 -0.014212007 -5.98649597 160.42288208 -0.014212007 -6.036437988 161.64179993 -0.014212007 -3.95129395 158.62510681
		 -0.014212007 -5.43940735 159.26608276 -0.74707502 -7.94749451 167.22691345 -0.844971 -7.53572083 166.32710266
		 -1.55079496 -6.82022095 166.63847351 -1.252244 -7.4274292 167.24020386 -1.99821496 -5.99932861 167.43408203
		 -1.34527695 -6.74960327 168.071624756 -2.70312786 -5.32887268 166.56794739 -0.014212007 -7.81867981 166.25073242
		 -0.014212007 -8.17063904 167.23774719 -0.014212007 -2.087524414 158.22454834 -1.44028902 -1.86785889 158.37161255
		 -0.014212007 -0.64944458 157.37432861 -1.45650697 -0.35708618 157.49845886 -2.76724195 -1.24661255 158.84150696
		 -2.89734197 0.34700012 157.94366455 -4.009513855 -0.35493469 159.66056824 -4.31061411 1.28094482 158.82258606
		 -5.10096407 0.65359497 160.6638031 -6.0078072548 1.6348114 161.88726807 -5.31751204 2.32913208 160.0337677
		 -6.012928009 3.23556519 161.43081665 -6.37203503 -1.8024292 167.92770386 -5.74459314 -2.029937744 166.21348572
		 -6.12006807 -0.68019104 165.28239441 -6.58005905 -0.32525635 167.28173828 -6.48443127 0.84114075 164.38685608
		 -6.87368298 1.31150818 166.61921692 -5.44271803 -3.19544983 167.11230469 -5.95149994 -2.89532471 168.60179138
		 -4.78513527 -3.88046265 167.95043945 -5.19659233 -3.51686096 169.36360168 -6.64287901 2.41532898 163.63237
		 -6.46041918 3.89697266 163.20509338 -7.28952312 3.28529358 165.86068726 -6.77377129 4.20161438 164.49234009
		 -3.52581096 -4.32373047 169.4337616 -3.096506834 -4.64706421 168.75041199 -3.95109797 -4.30757141 168.43130493
		 -4.33418226 -4.027389526 169.35333252 -2.54649591 -5.29458618 168.1027832 -3.35160899 -4.77418518 167.48480225
		 -5.84508038 6.72203064 160.93148804 -6.092061043 4.85299683 161.09765625 -5.66120577 4.024765015 159.14730835
		 -5.68129444 6.11697388 158.79322815 -4.89853287 2.65002441 156.75166321 -5.64169455 5.54029846 156.73353577
		 -1.58554804 0.33042908 155.67127991 -3.17640591 1.10443115 155.94413757 -0.014212007 -0.03944397 155.6315918
		 -2.24626589 -5.0029144287 169.2678833 -1.62609899 -5.83224487 168.86402893 -2.75171685 -4.5231781 169.67362976
		 -1.52504301 -5.17337036 170.025848389 -0.87901002 -6.25178528 169.88900757;
	setAttr ".vt[498:663]" -2.14940786 -4.62123108 170.071624756 -4.77615023 -3.93965149 170.51361084
		 -4.40167522 -4.14660645 170.53385925 -4.40111113 -4.083450317 170.061889648 -4.92963028 -3.78715515 170.18701172
		 -3.82577586 -4.33734131 170.5533905 -3.74052787 -4.30834961 170.062393188 -6.26113701 -2.04019165 170.96405029
		 -5.82823324 -3.011322021 170.93086243 -5.98561001 -2.75271606 169.89199829 -6.45820522 -1.72628784 169.53955078
		 -5.27146912 -3.50132751 170.8527832 -5.44823408 -3.29975891 170.22305298 -3.079655886 -4.41529846 170.15951538
		 -3.21431589 -4.41226196 170.56750488 -2.5637548 -4.43876648 170.33303833 -2.79413891 -4.41893005 170.56602478
		 -6.83521509 -0.28413391 169.18536377 -6.63988495 -0.61155701 170.94955444 -7.20587492 1.38502502 168.85644531
		 -7.14981794 1.019287109 170.89720154 -5.147789 -4.079086304 172.76016235 -5.92658615 -2.90588379 172.046783447
		 -6.34437418 -1.51115417 172.38920593 -5.70440912 -2.88072205 173.42591858 -6.85447693 0.053787231 172.71549988
		 -6.32793427 -1.51249695 174.17308044 -7.62795496 1.87794495 175.64758301 -7.0077729225 -0.031784058 174.94422913
		 -7.42114496 1.68763733 172.9657135 -7.96263313 3.44831848 173.15794373 -7.7021389 2.68161011 170.9683075
		 -8.15915775 4.20002747 171.35276794 -4.038734913 -4.33752441 171.46772766 -4.7960372 -3.90856934 171.26939392
		 -5.40030003 -3.67784119 171.66212463 -4.53336811 -4.45094299 172.07875061 -4.51353121 -4.095748901 170.91117859
		 -4.95177889 -3.81217957 170.7102356 -3.88246179 -4.34738159 170.99189758 -6.87916899 6.96505737 165.40141296
		 -7.90615511 5.95715332 166.099121094 -7.59706593 4.78327942 165.4684906 -6.82236624 5.2003479 164.64855957
		 -8.26928902 5.60691833 166.62417603 -8.053576469 4.83329773 166.5537262 -7.84222698 4.093704224 166.82012939
		 -6.037022114 6.96231079 163.2035675 -6.39197111 5.27107239 163.13412476 -4.44707632 -4.19946289 174.071350098
		 -3.80973697 -5.032485962 173.074508667 -5.15717316 -3.21839905 175.068008423 -2.79065681 -5.098190308 174.46359253
		 -2.22444081 -5.73492432 173.054962158 -3.42080092 -4.35266113 175.6968689 -2.3355999 -4.67012024 171.13198853
		 -3.14168882 -4.60317993 171.42936707 -3.37474394 -5.058959961 172.16517639 -1.96416306 -5.45545959 171.83023071
		 -3.18235278 -4.45722961 170.96089172 -2.61979389 -4.4581604 170.79418945 -1.33840299 -5.20449829 170.87220764
		 -0.72729301 -5.99876404 171.014053345 -1.92506599 -4.62564087 170.59568787 -0.79317701 -6.061447144 171.87364197
		 -1.610587 -5.001739502 176.033279419 -1.20200503 -5.56521606 174.65890503 -0.014212007 -5.19226074 176.17816162
		 -0.014212007 -5.66441345 174.74099731 -0.893426 -6.082885742 173.070114136 -0.014212007 -6.16644287 173.10714722
		 -0.014212007 -6.69697571 170.10198975 -0.014212007 -6.33911133 171.10919189 -0.014212007 -6.23551941 171.9150238
		 -0.72797102 -7.35675049 168.50984192 -0.014212007 -7.57473755 168.65408325 -8.071572304 7.37127686 170.1555481
		 -7.61047316 7.61308289 167.68711853 -6.27425814 9.55740356 167.86676025 -6.81340599 9.89212036 170.25968933
		 -5.45956421 9.15837097 165.58842468 -4.31062794 11.79492188 168.029220581 -4.66947412 12.30505371 170.47607422
		 -3.81764483 11.12194824 165.67498779 -8.93225002 6.63034058 169.22608948 -8.52377224 6.70936584 167.59951782
		 -9.0028572083 6.12010193 168.68070984 -8.70346928 5.99029541 167.62338257 -4.88655615 8.88380432 163.26029968
		 -5.0028018951 8.76525879 160.76519775 -3.49408889 10.62948608 163.19273376 -3.65160489 10.5705719 160.55661011
		 -5.4087224 8.37561035 158.43035889 -5.84216499 6.8427124 156.18673706 -4.44746399 11.21516418 157.50654602
		 -8.89291096 5.42565918 169.0259552 -8.45194721 5.1139679 167.76118469 -8.60483932 4.68128967 169.11854553
		 -8.14544773 4.26019287 168.027511597 -2.044144869 12.31604004 157.84454346 -1.86516106 11.64030457 160.53303528
		 -1.82808995 11.71018982 163.21131897 -0.014212007 11.95677185 160.56265259 -0.014212007 11.94236755 163.25715637
		 -1.92983401 12.28060913 165.80581665 -0.014212007 12.53138733 165.88368225 -2.058182955 13.12625122 168.25050354
		 -0.014212007 13.49057007 168.35223389 -2.12990594 13.76023865 170.68360901 -0.014212007 14.1254425 170.78164673
		 -8.57582664 4.44126892 170.13484192 -9.031143188 5.70469666 170.28407288 -8.35821056 5.79067993 171.35569763
		 -4.84141827 12.41455078 173.50938416 -7.030957222 10.10084534 173.098297119 -4.79026318 11.59371948 177.030181885
		 -6.82450914 9.6084137 176.52630615 -8.059556961 7.67926025 172.917099 -7.7629652 7.19952393 176.14633179
		 -8.26702023 5.47102356 173.14202881 -7.9248209 4.4193573 176.04473877 -5.86783695 -2.023727417 176.25132751
		 -6.49124813 -0.41940308 177.56091309 -3.96951795 -3.54803467 177.0079650879 -4.39886427 -2.21903992 178.60725403
		 -4.6563549 3.084671021 180.93338013 -4.60590124 0.084152222 180.11422729 -6.69386911 2.0053405762 178.53910828
		 -6.60732222 5.10636902 179.063720703 -2.047269821 -3.34597778 179.15916443 -1.88877296 -4.46476746 177.38540649
		 -0.014212007 -3.64814758 179.371521 -0.014212007 -4.72250366 177.54318237 -0.014212007 2.016952515 182.032989502
		 -0.014212007 -1.13835144 181.056030273 -2.17140198 -0.88421631 180.8324585 -2.23766589 2.17852783 181.77458191
		 -5.96007919 7.8782959 179.37611389 -4.46091318 9.70472717 179.75744629 -4.38934803 6.038894653 181.12791443
		 -3.84211588 7.96681213 181.026748657 -2.19347 13.84004211 173.71936035 -0.014212007 14.19606018 173.79341125
		 -2.31892586 12.84547424 177.26054382 -0.014212007 13.19038391 177.33088684 -2.21182585 7.92449951 181.56575012
		 -2.24579597 5.19067383 182.041030884 -0.014212007 7.90504456 181.82984924 -0.014212007 5.060791016 182.34681702
		 -2.29663491 10.58705139 180.074798584 -0.014212007 10.81193542 180.19900513 -0.014212007 12.6191864 157.87734985
		 -7.80265093 3.22937012 168.79444885 -5.15194035 -3.6259613 170.41810608 -2.32301188 -4.45799255 170.55432129
		 -2.082841873 -5.83239746 163.48492432 -2.32012486 -5.61604309 163.17295837 -2.14654684 -5.67025757 162.8875885
		 -1.33340704 -6.39532471 164.20776367 -1.99556696 -5.96235657 163.91334534 -1.44077396 -6.32061768 165.129776
		 -2.31107378 -5.67327881 164.64524841 -2.12242889 -5.6076355 162.4619751 -1.26202595 -6.13490295 162.95024109
		 -1.22328198 -6.27763367 163.53330994 -2.45027399 -5.47798157 162.91821289;
	setAttr ".vt[664:829]" -3.042733908 -4.96913147 162.73236084 -2.38187695 -5.6144104 163.44023132
		 -2.84922194 -5.22206116 163.79104614 -4.52461004 -3.37757874 164.3299408 -4.089269161 -4.16923523 165.52644348
		 -3.82137179 -4.16494751 163.13412476 -3.42876291 -4.69308472 164.45326233 -5.29878616 -1.1565094 162.052947998
		 -4.89620113 -2.38388062 163.095367432 -4.40361595 -2.23280334 160.7434845 -4.1228323 -3.40010071 161.740448
		 -3.3489759 -3.3009491 159.86505127 -3.10839581 -4.38644409 160.78343201 -2.15365887 -4.23536682 159.25592041
		 -1.99750495 -5.23608398 160.15110779 -1.43949306 -5.95033264 162.22479248 -2.63379788 -5.12005615 161.7270813
		 -1.71338606 -5.62278748 161.23504639 -0.48887402 -6.74481201 165.22409058 -0.47176802 -6.67456055 164.34194946
		 -0.43354702 -6.46659851 163.59980774 -0.45017102 -6.28419495 162.94586182 -0.594459 -5.93945313 161.072006226
		 -0.516913 -6.16821289 162.16169739 -0.76257402 -4.73886108 158.93225098 -0.70600003 -5.77122498 159.83795166
		 -1.12368 -7.56291199 166.81044006 -1.33196497 -6.76655579 166.057815552 -1.53840506 -6.8092041 167.33053589
		 -2.061761856 -6.012237549 166.56460571 -0.45753402 -7.32740784 165.91996765 -0.40604401 -8.024490356 166.7011261
		 -0.75703102 -2.98332214 158.45449829 -0.71483302 -1.16711426 157.9853363 -2.15946794 -2.55514526 158.74479675
		 -2.093356848 -0.70503235 158.25881958 -3.40948296 -1.73538208 159.38493347 -3.458251 0.048675537 158.91331482
		 -5.53926611 0.34613037 161.43945313 -4.54300928 -0.71720886 160.29400635 -5.62674618 1.98631287 160.98170471
		 -4.66497612 1.0030670166 159.88024902 -6.21500397 -1.19554138 166.68963623 -5.60282993 -1.63635254 164.81420898
		 -6.53303814 0.31315613 165.88632202 -6.033676147 -0.26742554 163.80836487 -5.23018932 -2.82019043 165.85543823
		 -5.96876717 -2.53309631 167.47088623 -4.79809332 -3.7467804 166.8477478 -5.43753529 -3.41362 168.27755737
		 -6.32641506 1.26071167 162.99403381 -6.31014919 2.83760071 162.46632385 -6.85493612 1.95783997 165.070983887
		 -6.77950525 3.48954773 164.24949646 -3.75464678 -4.27992249 168.98152161 -3.25110888 -4.73794556 168.1836853
		 -4.61941528 -3.93971252 168.81074524 -4.065443993 -4.29937744 167.66604614 -5.8998313 5.4362793 159.93821716
		 -5.81532717 3.62528992 160.36763 -5.53316736 4.57339478 157.85813904 -5.11399603 2.58842468 158.75273132
		 -2.30618691 0.38348389 156.78425598 -2.30595088 0.88969421 154.68482971 -3.86573291 1.33332825 157.42301941
		 -3.95919299 1.6363678 154.85917664 -0.79016602 -0.24856567 156.54992676 -0.78292602 0.37409973 154.73582458
		 -2.38228679 -5.19119263 168.7190094 -2.91660595 -4.56752014 169.23065186 -1.49276698 -5.53227234 169.52587891
		 -2.16826391 -4.7897644 169.70010376 -4.64506817 -3.99957275 170.34202576 -4.10505629 -4.23783875 170.31246948
		 -4.75001907 -3.84449768 169.78309631 -4.029126167 -4.18540955 169.73895264 -6.17496014 -2.39352417 170.37164307
		 -5.63514709 -3.11799622 170.50993347 -6.27815914 -2.32743835 169.0074462891 -5.70010328 -3.10533142 169.55570984
		 -3.28871989 -4.38430786 169.82858276 -3.4738009 -4.37882996 170.34150696 -2.62616396 -4.47975159 170.046173096
		 -2.90940189 -4.41574097 170.40890503 -6.54730034 -1.13192749 170.19708252 -6.65423918 -1.04246521 168.49514771
		 -6.98035431 0.43061829 169.99264526 -6.88473415 0.54336548 167.99726868 -5.84637594 -2.87850952 172.70501709
		 -6.31258631 -1.73820496 171.63980103 -6.35070515 -1.42080688 173.23236084 -6.75904512 -0.19940186 171.77044678
		 -7.56112814 1.80670166 174.22824097 -6.95168114 0.092697144 173.7693634 -7.83131313 3.079162598 172.037109375
		 -7.30229425 1.44180298 171.87649536 -4.66963196 -4.094146729 171.63267517 -5.31749725 -3.50744629 171.20761108
		 -5.35497999 -3.9138031 172.19021606 -5.9352231 -2.95030212 171.45465088 -4.89266825 -3.84103394 170.96278381
		 -4.30829525 -4.19017029 171.17753601 -4.67073727 -4.013717651 170.68215942 -4.16096306 -4.25404358 170.75704956
		 -7.27393627 5.63775635 165.35647583 -7.99481726 5.26855469 166.040985107 -7.089642048 4.38182068 165.051635742
		 -7.73496389 4.2348938 166.12298584 -6.15595531 5.95843506 162.10406494 -6.52439928 6.073867798 164.1086731
		 -6.25128412 4.3447113 162.19654846 -6.5827713 4.66868591 163.93431091 -4.83293295 -4.14204407 173.37550354
		 -5.4875493 -2.9936676 174.21034241 -3.30219388 -5.12748718 173.70036316 -3.9869349 -4.287323 174.86419678
		 -2.6735189 -4.92494202 171.61978149 -3.71912694 -4.5974884 171.77818298 -2.83325291 -5.47883606 172.53256226
		 -4.25499535 -4.81001282 172.56741333 -3.54197383 -4.44456482 171.22468567 -2.79239488 -4.52966309 171.086929321
		 -3.52430391 -4.40170288 170.7741394 -2.94003582 -4.43296814 170.7252655 -1.054522991 -5.61453247 170.47892761
		 -1.67963302 -4.83724976 170.33261108 -1.13263202 -5.67237854 171.40113831 -1.815516 -4.9185791 171.092254639
		 -2.23171282 -5.03553772 175.26382446 -0.68068302 -5.3765564 175.45675659 -1.70053196 -5.73365784 173.81990051
		 -0.479983 -5.94303894 173.9002533 -0.41941202 -6.36720276 170.61140442 -0.37604401 -6.20993042 171.47981262
		 -0.38060901 -7.95611572 167.87414551 -0.40992102 -7.023971558 169.36712646 -7.3001833 8.55551147 168.94300842
		 -6.65345907 8.34840393 166.615448 -5.63447714 10.95544434 169.11151123 -5.035450935 10.46040344 166.78945923
		 -8.39846706 7.098632813 168.61869812 -8.92198563 6.46984863 168.29853821 -7.79652214 6.79473877 166.68487549
		 -8.42426872 6.11920166 166.90986633 -5.81399298 8.0031585693 164.38815308 -5.4580183 7.84121704 162.055389404
		 -4.33284998 9.93547058 164.46611023 -4.23909712 9.76348877 161.94975281 -5.5130415 7.51373291 159.71922302
		 -5.6543026 6.93121338 157.70559692 -4.65965796 9.73999023 159.38404846 -5.52355003 8.86343384 157.59680176
		 -8.80565548 5.69580078 168.28808594 -8.52872944 4.85493469 168.49610901 -8.37494659 5.39872742 167.08644104
		 -8.10008621 4.53590393 167.23808289 -2.7054069 11.1713562 161.86633301 -0.92247701 11.81954956 161.89289856
		 -2.77367377 11.50462341 164.4833374 -0.944116 12.12680054 164.56893921 -3.032480955 12.21224976 166.95741272
		 -0.99567199 12.94828796 167.10473633 -3.29225588 12.96472168 169.32267761 -1.030372977 13.7649231 169.51098633
		 -8.58646107 5.06237793 170.8984375 -8.89633465 5.060821533 169.75314331;
	setAttr ".vt[830:995]" -8.69275475 6.42364502 170.33979797 -9.094377518 6.039230347 169.38101196
		 -5.986094 11.30578613 171.73449707 -6.037352085 11.12606812 175.06300354 -7.62350798 8.76422119 171.50004578
		 -7.63367414 8.83596802 174.58421326 -8.22337723 6.58830261 171.83699036 -8.17804527 6.36178589 174.49632263
		 -8.19549465 4.78068542 172.18608093 -8.056070328 3.92041016 174.51097107 -6.18533707 -1.75462341 175.16589355
		 -6.90899515 -0.24882507 176.22184753 -4.66521311 -3.39460754 176.00048828125 -5.28895426 -2.21966553 177.41430664
		 -5.76081228 2.40455627 179.86479187 -5.66634703 -0.35977173 178.87109375 -7.42227411 4.77383423 177.59393311
		 -7.36440992 1.89544678 177.10948181 -3.074252844 -3.60488892 178.04019165 -0.96810901 -4.26722717 178.3548584
		 -2.72430778 -4.44085693 176.53727722 -0.87509799 -4.92938232 176.77670288 -1.083544016 0.47865295 181.58782959
		 -1.029579997 -2.49519348 180.21711731 -3.43627477 0.96006775 181.10206604 -3.30651283 -1.82858276 179.80197144
		 -7.0032401085 7.69354248 177.85792542 -5.6775589 9.8551178 178.33532715 -5.56904316 5.50442505 180.30455017
		 -4.79430819 7.95046997 180.47805786 -3.4591279 13.3260498 172.018722534 -1.038730025 14.16969299 172.1656189
		 -3.55046582 12.9533844 175.42649841 -1.10577297 13.79951477 175.55422974 -3.24179482 6.80885315 181.5486908
		 -1.12800395 6.50608826 182.13294983 -3.43642688 4.017074585 181.63354492 -1.11372304 3.58755493 182.18435669
		 -3.5192368 11.39619446 178.7203064 -1.14982402 12.094512939 178.90310669 -3.29370379 9.089630127 180.7900238
		 -1.14072704 9.32522583 181.11387634 -2.75208497 -5.27017212 165.57267761 -3.41747093 -4.76982117 166.58966064
		 -2.65173697 -5.33099365 167.43035889 -1.11470306 -6.59208679 168.89489746 -1.029651999 -7.51904297 167.72946167
		 -1.83390796 -5.96507263 168.1632843 -0.38454801 -6.20855713 172.41607666 -2.955441 11.43338013 159.080413818
		 -0.96614301 12.096176147 159.21044922 -7.26653814 2.29034424 167.537323 -5.22108507 -3.55938721 170.5848999
		 -5.21501112 -3.53401184 170.10243225 -2.2635529 -4.51113892 170.75857544 -1.39857101 -5.94667053 172.38919067
		 -4.97095299 -3.79379272 170.48085022 -7.5266161 2.12922668 169.86817932 -5.39806557 3.74624634 155.30021667
		 -8.3175354 4.15460205 169.044937134 -7.768929 3.69477844 167.34933472 -2.56055999 -4.42601013 170.55934143
		 -2.20983601 -4.5045929 170.36804199 -8.098520279 3.67532349 170.34884644 -1.80260801 -5.97651672 163.41305542
		 -2.12762094 -5.73719788 163.18354797 -1.83971798 -5.8651123 163.0062561035 -1.26284206 -6.36381531 163.8409729
		 -1.696998 -6.17671204 164.086120605 -1.40549898 -6.34700012 164.64553833 -0.91699803 -6.57354736 164.28990173
		 -1.87526095 -5.99734497 163.63917542 -2.22362185 -5.76971436 163.69181824 -2.14897299 -5.84661865 164.24766541
		 -1.89950299 -5.99189758 164.96392822 -1.42139804 -6.43424988 165.61909485 -0.965096 -6.58287048 165.19958496
		 -2.6262629 -5.42126465 164.24357605 -2.48302197 -5.49421692 165.099395752 -1.952618 -5.764328 162.75888062
		 -1.81758106 -5.76831055 162.31300354 -2.35170388 -5.39016724 162.11499023 -2.33836079 -5.50880432 162.66960144
		 -1.585446 -5.99653625 162.96873474 -1.22356606 -6.1920166 163.24642944 -0.87817103 -6.23416138 162.94319153
		 -1.33596706 -6.070129395 162.61889648 -1.545596 -6.12857056 163.48223877 -0.847027 -6.39015198 163.57223511
		 -2.26360798 -5.62692261 163.041503906 -2.71356082 -5.26237488 162.80714417 -2.46267891 -5.51100159 163.17951965
		 -2.94251084 -4.96096802 162.1708374 -3.41402698 -4.57946777 162.79847717 -2.99217081 -5.070770264 163.28771973
		 -2.23115683 -5.70115662 163.31155396 -2.59397292 -5.45259094 163.5927124 -3.12028384 -4.95159912 164.067764282
		 -4.85335493 -3.049453735 165.070343018 -4.3387022 -3.80630493 164.93901062 -4.19794512 -3.76303101 163.66960144
		 -4.69533205 -2.89909363 163.71157837 -4.41980314 -3.91828918 166.16772461 -3.77249193 -4.4811554 166.081100464
		 -3.76622677 -4.4410553 164.94607544 -3.65443683 -4.43232727 163.82241821 -3.96465492 -3.84706116 162.41090393
		 -3.1257689 -4.96530151 165.035079956 -5.69683599 -0.67686462 162.87522888 -5.1096983 -1.80636597 162.53109741
		 -4.86608315 -1.68299866 161.34403992 -5.44717026 -0.43585205 161.68748474 -5.2546649 -1.96961975 163.92269897
		 -4.52692127 -2.86587524 162.36590576 -4.27214622 -2.85371399 161.18119812 -3.8942759 -2.77366638 160.26126099
		 -4.49147129 -1.5174408 160.45732117 -3.63398886 -3.92378235 161.22427368 -3.25460792 -3.90270996 160.27688599
		 -2.77552295 -3.80871582 159.52566528 -3.40145493 -2.57929993 159.56489563 -2.9021709 -4.779953 161.30696106
		 -2.57242298 -4.82501221 160.43025208 -2.0970819 -4.83885193 159.65275574 -1.483518 -4.55740356 159.052017212
		 -2.17512178 -3.4596405 158.95588684 -1.86355102 -5.46983337 160.69596863 -1.37391496 -5.56495667 159.95310974
		 -0.999502 -6.096664429 162.1819458 -1.56403303 -5.77874756 161.75650024 -2.20783997 -5.3740387 161.42729187
		 -1.16619599 -5.81100464 161.12779236 -0.014212007 -6.78738403 165.2326355 -0.48895001 -6.69293213 164.7928009
		 -0.475528 -6.94866943 165.59608459 -0.44951302 -6.58479309 163.94264221 -0.014212007 -6.71609497 164.36572266
		 -0.014212007 -6.50382996 163.61294556 -0.43140101 -6.32646179 163.27711487 -0.014212007 -6.30610657 162.95117188
		 -0.481507 -6.25941467 162.5880127 -0.65151304 -5.92184448 160.45225525 -0.55250204 -6.017623901 161.65086365
		 -0.014212007 -5.98313904 161.05645752 -0.014212007 -6.19828796 162.15657043 -0.765562 -3.907547 158.66410828
		 -0.74488503 -5.38583374 159.30952454 -0.014212007 -4.78572083 158.88955688 -0.014212007 -5.83387756 159.7975769
		 -0.78898001 -7.84332275 166.73554993 -1.22626305 -7.21150208 166.43545532 -1.37994003 -7.21070862 166.98435974
		 -1.051391006 -7.69180298 167.22563171 -0.89776701 -7.10369873 165.97637939 -1.73733103 -6.38697815 166.21690369
		 -1.79393601 -6.41017151 166.98989868 -1.66318297 -6.37637329 167.77404785 -1.29253602 -7.18003845 167.58000183
		 -2.36877489 -5.62789917 166.075881958 -2.34621596 -5.64790344 167.028961182 -0.43364102 -7.74581909 166.26760864
		 -0.014212007 -7.40228271 165.90274048 -0.38635901 -8.11408997 167.23304749 -0.014212007 -8.087799072 166.69293213
		 -0.014212007 -3.028045654 158.41830444 -0.73503798 -2.035705566 158.26528931;
	setAttr ".vt[996:1161]" -1.47778904 -2.82319641 158.55889893 -0.014212007 -1.22927856 157.94169617
		 -0.73628199 -0.57154846 157.41207886 -1.40957201 -0.98161316 158.084609985 -2.11812687 -1.60256958 158.55447388
		 -2.79917288 -2.18554688 159.024032593 -2.17092991 -0.040939331 157.66960144 -2.77688098 -0.35739136 158.53474426
		 -3.4025228 -0.82601929 159.21801758 -3.99406481 -1.2374115 159.80844116 -3.63561988 0.78303528 158.32655334
		 -4.098142147 0.50865173 159.37275696 -5.057003975 -0.18348694 160.83441162 -5.58671713 1.1579895 161.22424316
		 -5.96871805 0.83557129 162.14535522 -4.57577991 0.14378357 160.14648438 -5.17161608 1.50230408 160.41325378
		 -5.70183516 2.80603027 160.68557739 -6.0060420036 2.44058228 161.65336609 -4.86179829 1.81196594 159.4103241
		 -6.085267067 -1.89169312 167.08303833 -5.92741823 -1.37867737 165.74807739 -6.37338209 -0.46244812 166.28829956
		 -6.47513533 -1.089126587 167.60697937 -5.39583111 -2.24285889 165.34074402 -5.82383204 -0.97973633 164.2960968
		 -6.30838823 0.065643311 164.82713318 -6.69763613 1.1204071 165.48060608 -6.71452999 0.4717865 166.95222473
		 -6.21001005 0.48672485 163.36901855 -5.61555195 -2.65890503 166.66377258 -5.057394981 -3.33810425 166.3571167
		 -6.20849514 -2.41848755 168.25595093 -5.76009989 -3.046020508 167.87173462 -5.15582228 -3.59158325 167.55718994
		 -4.45686817 -4.052093506 167.30102539 -5.61478901 -3.23495483 168.96548462 -5.042418957 -3.69338989 168.62207031
		 -6.355515 2.047866821 162.69342041 -6.62321329 1.63009644 163.96923828 -6.2594142 3.60714722 162.30413818
		 -6.55939913 3.17912292 163.36907959 -6.90592098 2.78004456 164.67007446 -7.070151329 2.20965576 166.27284241
		 -6.63549423 4.096572876 163.99159241 -6.96984911 3.85147095 164.90029907 -3.33358693 -4.42636108 169.082946777
		 -3.52521086 -4.48123169 168.58877563 -4.18271017 -4.12321472 168.90344238 -3.9277308 -4.19174194 169.37808228
		 -2.833884 -4.95697021 168.42051697 -2.95948195 -5.030212402 167.79684448 -3.65932393 -4.52183533 167.94790649
		 -4.37367821 -4.11360168 168.23565674 -4.74710798 -3.81573486 169.34788513 -3.740659 -4.51353455 167.12049866
		 -6.049638748 5.75553894 161.0026397705 -5.91738605 4.49238586 160.098770142 -5.70613432 5.033538818 158.9258728
		 -5.75719547 6.44877625 159.82974243 -6.055990219 4.026504517 161.23907471 -5.51014519 3.14671326 159.56105042
		 -5.33678865 3.44694519 158.10765076 -5.38703585 4.090515137 156.65916443 -5.64185572 5.80194092 157.7310791
		 -4.57935619 1.96287537 157.97660828 -1.55471003 0.010803223 156.6224823 -2.36252785 0.70057678 155.76594543
		 -3.076610804 0.82240295 157.046066284 -1.534024 0.61680603 154.69876099 -3.12633395 1.17111206 154.72518921
		 -4.017825127 1.66156006 156.2388916 -4.74132109 2.38882446 155.014923096 -0.014212007 -0.35626221 156.51678467
		 -0.81127501 0.039962769 155.64039612 -0.014212007 0.30813599 154.75524902 -2.66521788 -4.82516479 168.96673584
		 -1.91081905 -5.39141846 169.091308594 -2.084736824 -5.57366943 168.45683289 -3.12794995 -4.4347229 169.53167725
		 -2.52307391 -4.69589233 169.43862915 -1.83903503 -5.12251282 169.63571167 -1.19880199 -5.61763 169.99571228
		 -1.244766 -6.049118042 169.31651306 -2.41713786 -4.58570862 169.85522461 -1.87059903 -4.8299408 169.99632263
		 -4.6289463 -4.03125 170.52461243 -4.39438915 -4.12585449 170.3184967 -4.69540024 -3.93118286 170.10447693
		 -4.83832407 -3.88389587 170.39320374 -4.12832212 -4.25305176 170.5436554 -3.79275489 -4.32356262 170.32106018
		 -4.07781601 -4.21168518 170.048950195 -4.39699221 -4.034957886 169.74404907 -5.043307304 -3.65505981 169.88792419
		 -3.65762496 -4.29856873 169.7660675 -6.077334881 -2.60331726 170.95610046 -5.93396425 -2.82995605 170.44656372
		 -6.23798609 -2.3057251 169.71646118 -6.36636114 -1.8162384 170.28707886 -5.51324129 -3.2749939 170.8927002
		 -5.39849091 -3.36129761 170.56225586 -5.69483519 -3.056259155 170.06300354 -6.0076799393 -2.78309631 169.27746582
		 -6.49722815 -1.73936462 168.74784851 -5.41001606 -3.3401947 169.83735657 -3.40142179 -4.37562561 170.10035706
		 -2.93868279 -4.44398499 169.9236908 -3.51194978 -4.38838196 170.56184387 -3.17177987 -4.40733337 170.37199402
		 -2.79400587 -4.43190002 170.23553467 -2.37553787 -4.49769592 170.19476318 -2.96188188 -4.41822815 170.56793213
		 -2.70472097 -4.41755676 170.46633911 -6.65307522 -1.043029785 169.3624115 -6.74441719 -0.37394714 170.098495483
		 -6.44011402 -1.36309814 170.96295166 -6.77298498 -0.27192688 168.24597168 -7.017147064 0.52793884 169.0105896
		 -7.25209618 1.26602173 169.90124512 -6.87866116 0.18981934 170.92216492 -7.032398224 1.40307617 167.75704956
		 -5.60876894 -3.49234009 172.45004272 -6.13040209 -2.24963379 172.22058105 -6.088018894 -2.16436768 172.96203613
		 -5.42289114 -3.54078674 173.090118408 -6.12678623 -2.40925598 171.55221558 -6.51866627 -0.99093628 171.71643066
		 -6.58358908 -0.73532104 172.55487061 -6.6419301 -0.67381287 173.5123291 -6.0063252449 -2.19631958 173.78448486
		 -7.02695322 0.61579895 171.82164001 -7.34361315 0.84805298 175.3170929 -7.25640821 0.91241455 174.0086975098
		 -7.70466995 2.54380798 173.073318481 -7.84140015 2.80215454 174.40545654 -6.66403008 -0.80389404 174.55999756
		 -7.13653708 0.85868835 172.85014343 -7.57589626 2.26817322 171.93595886 -7.9524641 3.44569397 171.15119934
		 -8.046608925 3.90637207 172.1388855 -7.43688631 1.85928345 170.89012146 -4.44742298 -4.1343689 171.39640808
		 -5.03855896 -3.7910614 171.45368958 -5.034894943 -4.09147644 171.91427612 -4.21773005 -4.3677063 171.74208069
		 -5.07091713 -3.69023132 171.088684082 -5.65814018 -3.30267334 171.33573914 -5.70922327 -3.40368652 171.86460876
		 -4.86107397 -4.39805603 172.42677307 -4.63088131 -4.015823364 171.091384888 -4.76073599 -3.9498291 170.82746887
		 -5.09070015 -3.68310547 170.79341125 -3.9384079 -4.33909607 171.22114563 -4.21681213 -4.23410034 170.96522522
		 -4.43879414 -4.1378479 170.72758484 -4.84728193 -3.89533997 170.60588074 -3.85056877 -4.34579468 170.77227783
		 -7.47596312 6.29911804 165.87312317 -7.71019316 5.39318848 165.65310669 -7.17534208 4.97850037 165.1053009
		 -6.85714006 5.9256897 164.88400269 -8.16052246 5.74087524 166.38256836 -8.17260933 5.2749176 166.55142212
		 -7.86120319 4.75839233 165.99473572 -7.45054626 4.16378784 165.57948303;
	setAttr ".vt[1162:1327]" -6.78324509 4.61413574 164.54867554 -7.93029308 4.40078735 166.66218567
		 -7.66413593 3.80937195 166.53175354 -5.90336418 6.87567139 162.082000732 -6.29932594 6.065750122 163.16007996
		 -6.24234009 5.11334229 162.13734436 -6.31943989 6.99737549 164.28030396 -6.57277107 5.30493164 163.98568726
		 -6.41806412 4.56904602 163.13835144 -5.15220404 -3.57963562 173.78416443 -4.10755014 -4.66798401 173.5763855
		 -4.53425121 -4.58435059 172.96939087 -5.83344603 -2.39562988 174.67160034 -4.80110407 -3.7240448 174.56011963
		 -3.6387279 -4.70301819 174.30288696 -2.47837782 -5.489151 173.76696777 -3.018218994 -5.42588806 173.084609985
		 -4.33220625 -3.86621094 175.41471863 -3.10900784 -4.70767212 175.097503662 -2.71187878 -4.66210938 171.31341553
		 -3.19820499 -4.78392029 171.73648071 -2.73038793 -5.29467773 172.059417725 -2.18100882 -4.98036194 171.41929626
		 -3.59328389 -4.49409485 171.4803772 -3.96952891 -4.76768494 172.16247559 -3.57287788 -5.17243958 172.60266113
		 -2.082624912 -5.72550964 172.42626953 -3.15050483 -4.5072937 171.18177795 -3.52760482 -4.42001343 170.99128723
		 -2.48783493 -4.52342224 170.94412231 -2.87487197 -4.46580505 170.89553833 -3.21152997 -4.427948 170.75979614
		 -2.72398186 -4.42785645 170.66130066 -1.35865903 -5.18968201 170.42608643 -1.034443021 -5.60758972 170.9473114
		 -0.76175302 -6.064834595 170.53567505 -1.96910596 -4.62467957 170.31990051 -1.64596903 -4.85800171 170.71089172
		 -1.51828802 -5.28652954 171.32875061 -1.30095303 -5.80889893 171.85752869 -0.74759102 -6.010162354 171.44212341
		 -2.055999994 -4.64578247 170.88023376 -2.49674487 -4.73178101 175.89979553 -1.40871203 -5.25897217 175.37786865
		 -1.95806503 -5.38531494 174.57763672 -0.79211801 -5.14901733 176.1280365 -0.014212007 -5.40600586 175.49383545
		 -0.56979603 -5.64573669 174.71176147 -1.023543954 -5.87785339 173.86593628 -1.50148499 -5.94778442 173.051895142
		 -0.014211828 -5.95291138 173.91969299 -0.416776 -6.15246582 173.091751099 -0.44283801 -6.61000061 170.048080444
		 -0.39063102 -6.25514221 171.074127197 -0.014212007 -6.46154785 170.65335083 -0.37435502 -6.19654846 171.89855957
		 -0.014212007 -6.27095032 171.50027466 -0.72681403 -7.78952026 167.82112122 -0.38444901 -7.52018738 168.61833191
		 -0.014212007 -8.012039185 167.89355469 -0.78056002 -6.8414917 169.20561218 -0.014212007 -7.087799072 169.41436768
		 -7.88114023 7.61973572 168.81539917 -7.016720295 8.48091125 167.76742554 -6.58674812 9.72946167 169.036605835
		 -7.50498199 8.60826111 170.17723083 -7.27769804 7.43130493 166.5905304 -6.24022532 8.150177 165.48551941
		 -5.89629221 9.35957336 166.71751404 -5.38964415 10.72793579 167.94448853 -4.51290989 12.081375122 169.20487976
		 -5.85281324 11.17749023 170.34906006 -4.65724897 10.18600464 165.64044189 -4.065207005 11.46104431 166.85684204
		 -8.5698452 6.88606262 169.57501221 -8.77439308 6.78915405 168.44143677 -8.13063622 7.054855347 167.63276672
		 -9.044346809 6.35856628 168.91412354 -8.89869308 6.10066223 168.23101807 -8.7052803 6.37785339 167.59463501
		 -8.20394325 6.41702271 166.78384399 -8.45909309 5.79370117 167.029418945 -5.54778004 7.91319275 163.25018311
		 -5.08351326 8.98693848 164.4552002 -5.48317862 7.73364258 160.85864258 -4.88753033 8.82194519 162.0089569092
		 -4.1927743 9.811203 163.23025513 -3.590693 10.80580139 164.46229553 -4.39491463 9.73886108 160.6491394
		 -3.52384782 10.55577087 161.88703918 -5.57711554 7.22839355 158.66477966 -5.16803885 8.62261963 159.56086731
		 -5.73535538 6.85780334 156.86392212 -5.60980415 7.74874878 157.74757385 -5.066508293 9.39353943 158.58332825
		 -3.91323996 10.79696655 158.80805969 -5.73202324 9.18536377 156.9697876 -8.97712708 5.83485413 168.85820007
		 -8.67546844 5.2691803 168.38995361 -8.59923935 5.5594635 167.68006897 -8.75119209 5.0040588379 169.10791016
		 -8.39730167 4.47795105 168.6696167 -8.2973547 4.68270874 167.868927 -8.24221897 4.96383667 167.14393616
		 -7.94950724 4.12591553 167.3285675 -3.16992378 11.88606262 157.72842407 -2.786901 11.20562744 160.52275085
		 -1.82558703 11.60151672 161.87747192 -2.70518184 11.27813721 163.18624878 -0.93802702 11.87934875 160.54695129
		 -0.014212007 11.87702942 161.90531921 -0.92476201 11.90487671 163.23878479 -1.86868405 11.94235229 164.52748108
		 -2.89203787 11.82862854 165.74049377 -0.014212007 12.16242981 164.59228516 -0.97016501 12.48687744 165.85667419
		 -1.99688697 12.7006073 167.04510498 -3.17418194 12.59541321 168.14569092 -0.014212007 13.011917114 167.1328125
		 -1.014865041 13.40965271 168.32167053 -2.092686892 13.51568604 169.43614197 -3.38941789 13.20198059 170.582901
		 -0.014212007 13.84877014 169.54421997 -1.031268954 14.051177979 170.75064087 -8.37448883 4.34573364 170.71238708
		 -8.85937786 5.066329956 170.36340332 -8.70239353 5.78509521 170.80003357 -8.29830933 4.99368286 171.46192932
		 -8.63352299 4.5710907 169.55999756 -9.063865662 5.57806396 169.68243408 -9.043226242 6.26092529 169.88023376
		 -8.31977749 6.54272461 170.9324646 -4.78276634 12.43395996 171.8986969 -6.054652214 11.31713867 173.30667114
		 -6.96150112 10.039077759 171.59236145 -4.84633923 12.16891479 175.28700256 -5.91663504 10.6443634 176.80833435
		 -6.99886513 10.0013122559 174.79904175 -7.67999506 8.87995911 172.9480896 -8.027774811 7.58250427 171.55128479
		 -7.42350292 8.47457886 176.28149414 -8.00084590912 7.61073303 174.47860718 -8.24652386 6.54684448 173.017593384
		 -8.26078224 5.68249512 172.10134888 -7.92201328 5.81968689 176.10740662 -8.18094826 5.12387085 174.53440857
		 -8.16104603 4.42858887 173.19090271 -7.81984901 3.078811646 175.89370728 -6.546978 -1.052749634 175.69062805
		 -5.512609 -2.65065002 175.62338257 -7.20135212 0.72663879 176.71279907 -6.21421528 -1.30630493 176.91836548
		 -4.98614311 -2.85858154 176.67022705 -3.70745087 -3.98641968 176.31704712 -5.52936029 -1.40774536 178.17303467
		 -4.20732212 -2.97944641 177.77684021 -4.65625 1.54385376 180.61480713 -5.73203897 0.92767334 179.44587708
		 -6.69303322 3.50889587 178.85327148 -5.72065401 3.97180176 180.14344788 -4.52528191 -1.19885254 179.41914368
		 -6.63955927 0.68809509 178.10928345 -7.43184805 3.26173401 177.40223694 -7.29436731 6.30133057 177.71524048
		 -3.20496798 -2.87882996 178.92678833 -1.97644305 -4.041442871 178.2278595;
	setAttr ".vt[1328:1493]" -2.91408992 -4.093429565 177.23669434 -0.997352 -3.58705139 179.30863953
		 -0.014211887 -4.33804321 178.41197205 -0.93153501 -4.66130066 177.49308777 -1.77021801 -4.75727844 176.67477417
		 -0.014212007 -4.98248291 176.82800293 -0.014212007 0.43008423 181.65084839 -1.060606956 -1.081222534 180.99586487
		 -2.21364284 0.63417053 181.40864563 -1.099171996 2.051513672 181.9654541 -0.014212007 -2.55656433 180.28019714
		 -2.1129899 -2.26693726 180.060180664 -3.38329291 -0.50654602 180.55458069 -3.45657492 2.48779297 181.44891357
		 -6.4772191 8.86303711 178.075683594 -6.37988424 6.61003113 179.21492004 -4.66598797 10.7278595 178.55653381
		 -5.31590796 8.89506531 179.56791687 -5.27484512 6.8651123 180.40608215 -4.58009911 4.61357117 181.090072632
		 -4.16062927 8.71084595 180.5892334 -4.1020751 7.20167542 181.086639404 -2.15682387 13.88273621 172.10993958
		 -3.50626183 13.29367065 173.64041138 -0.014212007 14.24284363 172.19042969 -1.057425022 14.12315369 173.77111816
		 -2.27223587 13.51707458 175.50550842 -3.56098294 12.33526611 177.17666626 -0.014212007 13.87991333 175.57368469
		 -1.138713 13.11154175 177.31178284 -3.17367578 7.95457458 181.28707886 -2.22245479 6.59588623 181.90951538
		 -3.36738682 5.48928833 181.68075562 -1.13066995 7.90577698 181.76385498 -0.014212007 6.4879303 182.21290588
		 -1.12588596 5.078552246 182.26423645 -2.24843192 3.70106506 181.97547913 -0.014212007 3.57038879 182.26062012
		 -2.32296181 11.8440094 178.82595825 -3.42713189 10.25820923 179.9336853 -0.014212007 12.16609192 178.92819214
		 -1.14930606 10.75209045 180.16464233 -2.2502799 9.25358582 180.9790802 -0.014212007 9.34779358 181.16413879
		 -3.080009937 -5.026672363 166.070251465 -3.03865695 -5.049926758 167.036361694 -2.24867582 -5.63082886 167.79759216
		 -1.041027069 -7.090042114 168.32252502 -1.45233107 -6.29760742 168.53222656 -0.82768804 -6.11413574 172.39608765
		 -0.014212007 -6.2334137 172.43084717 -1.011142015 12.54930115 157.86401367 -1.94889295 11.85891724 159.18725586
		 -0.014212007 12.17292786 159.22817993 -7.53393221 3.11334229 167.3813324 -7.44218302 2.27986145 168.75793457
		 -5.083082199 -3.69856262 170.56048584 -5.26901388 -3.50067139 170.34867859 -5.080133915 -3.68275452 170.3115387
		 -2.16056991 -4.50627136 170.55874634 -2.43032289 -4.45150757 170.66452026 -7.79548693 2.96395874 169.98965454
		 -5.69593287 5.43731689 155.77613831 -8.22819233 3.87283325 169.62402344 -8.0014305115 3.82772827 168.29147339
		 -2.40485787 -4.44525146 170.45001221 -1.99030507 -5.84655762 163.31600952 -1.78652203 -5.93113708 163.21432495
		 -2.015668869 -5.77818298 163.073730469 -5.026988029 9.82597351 158.068725586 -5.22579622 10.26483154 157.2727356
		 -5.71540976 7.91133118 157.17694092 -5.86323929 8.086410522 156.59156799 0.84356701 -6.50663757 163.90101624
		 1.573084 -6.18255615 163.75727844 1.77909803 -6.090942383 164.4861145 0.92879599 -6.56393433 164.74136353
		 2.38201118 -5.62939453 163.94281006 1.95158899 -5.96173096 165.59628296 0.913019 -6.74569702 165.61659241
		 2.82364106 -5.19021606 164.60426331 1.90810895 -5.8467865 163.20137024 1.51060998 -6.059890747 163.23059082
		 1.65182292 -5.90971375 162.66970825 0.82067901 -6.28567505 163.26274109 0.90187699 -6.19415283 162.59687805
		 2.5754571 -5.27906799 162.42446899 2.67020607 -5.32325745 163.20874023 3.37404609 -4.43128967 161.93388367
		 3.27855301 -4.75315857 163.47410583 5.01223278 -2.52966309 164.49638367 4.63911867 -3.52313232 165.62825012
		 3.98527908 -4.12413025 164.32316589 4.32968092 -3.34773254 163.005279541 4.073139668 -4.23612976 166.6756134
		 3.41999507 -4.73487854 165.53015137 5.83671904 0.059692383 162.46282959 5.45532465 -1.35552979 163.37120056
		 4.68198204 -2.31472778 161.79559326 4.94993973 -0.96846008 161.031112671 3.75840402 -3.39291382 160.67886353
		 3.93625712 -2.058959961 159.97123718 2.66988611 -4.3991394 159.93295288 2.7829802 -3.067504883 159.21780396
		 2.37464809 -5.13009644 160.94491577 1.41874194 -5.18894958 159.43206787 1.46447504 -3.7432251 158.77105713
		 1.24453604 -5.73713684 160.54029846 1.96539795 -5.57827759 161.89555359 1.048051 -5.93240356 161.68522644
		 0.718651 -7.94749451 167.22691345 0.81654698 -7.53572083 166.32710266 1.52237093 -6.82022095 166.63847351
		 1.22381997 -7.4274292 167.24020386 1.96979094 -5.99932861 167.43408203 1.31685293 -6.74960327 168.071624756
		 2.67470407 -5.32887268 166.56794739 1.411865 -1.86785889 158.37161255 1.42808294 -0.35708618 157.49845886
		 2.73881817 -1.24661255 158.84150696 2.86891818 0.34700012 157.94366455 3.98109007 -0.35493469 159.66056824
		 4.28218985 1.28094482 158.82258606 5.072539806 0.65359497 160.6638031 5.97938299 1.6348114 161.88726807
		 5.28908777 2.32913208 160.0337677 5.98450375 3.23556519 161.43081665 6.34361076 -1.8024292 167.92770386
		 5.71616888 -2.029937744 166.21348572 6.09164381 -0.68019104 165.28239441 6.55163479 -0.32525635 167.28173828
		 6.456007 0.84114075 164.38685608 6.84525871 1.31150818 166.61921692 5.41429377 -3.19544983 167.11230469
		 5.92307568 -2.89532471 168.60179138 4.75671101 -3.88046265 167.95043945 5.16816807 -3.51686096 169.36360168
		 6.61445475 2.41532898 163.63237 6.43199492 3.89697266 163.20509338 7.26109886 3.28529358 165.86068726
		 6.74534702 4.20161438 164.49234009 3.49738717 -4.32373047 169.4337616 3.068083048 -4.64706421 168.75041199
		 3.92267418 -4.30757141 168.43130493 4.305758 -4.027389526 169.35333252 2.51807213 -5.29458618 168.1027832
		 3.32318521 -4.77418518 167.48480225 5.81665611 6.72203064 160.93148804 6.06363678 4.85299683 161.09765625
		 5.63278151 4.024765015 159.14730835 5.65287018 6.11697388 158.79322815 4.8701086 2.65002441 156.75166321
		 5.61327028 5.54029846 156.73353577 1.55712402 0.33042908 155.67127991 3.14798212 1.10443115 155.94413757
		 2.2178421 -5.0029144287 169.2678833 1.59767497 -5.83224487 168.86402893 2.72329307 -4.5231781 169.67362976
		 1.49661899 -5.17337036 170.025848389 0.850586 -6.25178528 169.88900757 2.12098408 -4.62123108 170.071624756
		 4.74772596 -3.93965149 170.51361084 4.37325096 -4.14660645 170.53385925 4.37268686 -4.083450317 170.061889648
		 4.90120602 -3.78715515 170.18701172 3.79735208 -4.33734131 170.5533905;
	setAttr ".vt[1494:1659]" 3.71210408 -4.30834961 170.062393188 6.23271275 -2.04019165 170.96405029
		 5.79980898 -3.011322021 170.93086243 5.95718575 -2.75271606 169.89199829 6.42978096 -1.72628784 169.53955078
		 5.24304485 -3.50132751 170.8527832 5.41980982 -3.29975891 170.22305298 3.0512321 -4.41529846 170.15951538
		 3.18589211 -4.41226196 170.56750488 2.53533101 -4.43876648 170.33303833 2.76571512 -4.41893005 170.56602478
		 6.80679083 -0.28413391 169.18536377 6.61146069 -0.61155701 170.94955444 7.17745066 1.38502502 168.85644531
		 7.12139368 1.019287109 170.89720154 5.11936474 -4.079086304 172.76016235 5.89816189 -2.90588379 172.046783447
		 6.31594992 -1.51115417 172.38920593 5.67598486 -2.88072205 173.42591858 6.82605267 0.053787231 172.71549988
		 6.29951 -1.51249695 174.17308044 7.5995307 1.87794495 175.64758301 6.97934866 -0.031784058 174.94422913
		 7.3927207 1.68763733 172.9657135 7.93420887 3.44831848 173.15794373 7.67371464 2.68161011 170.9683075
		 8.13073444 4.20002747 171.35276794 4.01031065 -4.33752441 171.46772766 4.76761293 -3.90856934 171.26939392
		 5.37187576 -3.67784119 171.66212463 4.50494385 -4.45094299 172.07875061 4.48510695 -4.095748901 170.91117859
		 4.92335463 -3.81217957 170.7102356 3.854038 -4.34738159 170.99189758 6.85074472 6.96505737 165.40141296
		 7.87773085 5.95715332 166.099121094 7.56864166 4.78327942 165.4684906 6.79394197 5.2003479 164.64855957
		 8.24086571 5.60691833 166.62417603 8.02515316 4.83329773 166.5537262 7.81380272 4.093704224 166.82012939
		 6.0085978508 6.96231079 163.2035675 6.36354685 5.27107239 163.13412476 4.41865206 -4.19946289 174.071350098
		 3.78131318 -5.032485962 173.074508667 5.12874889 -3.21839905 175.068008423 2.76223302 -5.098190308 174.46359253
		 2.19601703 -5.73492432 173.054962158 3.39237714 -4.35266113 175.6968689 2.30717611 -4.67012024 171.13198853
		 3.11326504 -4.60317993 171.42936707 3.34632015 -5.058959961 172.16517639 1.93573904 -5.45545959 171.83023071
		 3.153929 -4.45722961 170.96089172 2.59137011 -4.4581604 170.79418945 1.30997896 -5.20449829 170.87220764
		 0.69886899 -5.99876404 171.014053345 1.89664197 -4.62564087 170.59568787 0.76475298 -6.061447144 171.87364197
		 1.58216298 -5.001739502 176.033279419 1.173581 -5.56521606 174.65890503 0.86500198 -6.082885742 173.070114136
		 0.69954699 -7.35675049 168.50984192 8.043148994 7.37127686 170.1555481 7.58204889 7.61308289 167.68711853
		 6.24583387 9.55740356 167.86676025 6.78498173 9.89212036 170.25968933 5.43113995 9.15837097 165.58842468
		 4.28220367 11.79492188 168.029220581 4.64104986 12.30505371 170.47607422 3.78922105 11.12194824 165.67498779
		 8.90382671 6.63034058 169.22608948 8.49534893 6.70936584 167.59951782 8.9744339 6.12010193 168.68070984
		 8.67504597 5.99029541 167.62338257 4.85813189 8.88380432 163.26029968 4.97437763 8.76525879 160.76519775
		 3.4656651 10.62948608 163.19273376 3.6231811 10.5705719 160.55661011 5.38029814 8.37561035 158.43035889
		 5.81374073 6.8427124 156.18673706 4.41903973 11.21516418 157.50654602 8.86448765 5.42565918 169.0259552
		 8.4235239 5.1139679 167.76118469 8.57641602 4.68128967 169.11854553 8.11702442 4.26019287 168.027511597
		 2.015721083 12.31604004 157.84454346 1.83673704 11.64030457 160.53303528 1.79966593 11.71018982 163.21131897
		 1.90140998 12.28060913 165.80581665 2.029759169 13.12625122 168.25050354 2.10148215 13.76023865 170.68360901
		 8.54740334 4.44126892 170.13484192 9.0027198792 5.70469666 170.28407288 8.32978725 5.79067993 171.35569763
		 4.812994 12.41455078 173.50938416 7.002532959 10.10084534 173.098297119 4.76183891 11.59371948 177.030181885
		 6.79608488 9.6084137 176.52630615 8.031133652 7.67926025 172.917099 7.73454094 7.19952393 176.14633179
		 8.23859692 5.47102356 173.14202881 7.89639664 4.4193573 176.04473877 5.83941269 -2.023727417 176.25132751
		 6.46282387 -0.41940308 177.56091309 3.94109416 -3.54803467 177.0079650879 4.37044001 -2.21903992 178.60725403
		 4.62793064 3.084671021 180.93338013 4.57747698 0.084152222 180.11422729 6.66544485 2.0053405762 178.53910828
		 6.57889795 5.10636902 179.063720703 2.018846035 -3.34597778 179.15916443 1.86034894 -4.46476746 177.38540649
		 2.14297819 -0.88421631 180.8324585 2.20924211 2.17852783 181.77458191 5.93165493 7.8782959 179.37611389
		 4.43248892 9.70472717 179.75744629 4.36092377 6.038894653 181.12791443 3.81369209 7.96681213 181.026748657
		 2.16504622 13.84004211 173.71936035 2.29050207 12.84547424 177.26054382 2.18340206 7.92449951 181.56575012
		 2.21737218 5.19067383 182.041030884 2.26821113 10.58705139 180.074798584 7.77422667 3.22937012 168.79444885
		 5.12351608 -3.6259613 170.41810608 2.29458809 -4.45799255 170.55432129 2.054418087 -5.83239746 163.48492432
		 2.29170108 -5.61604309 163.17295837 2.11812305 -5.67025757 162.8875885 1.30498302 -6.39532471 164.20776367
		 1.96714294 -5.96235657 163.91334534 1.41234994 -6.32061768 165.129776 2.28264999 -5.67327881 164.64524841
		 2.094005108 -5.6076355 162.4619751 1.23360193 -6.13490295 162.95024109 1.19485795 -6.27763367 163.53330994
		 2.4218502 -5.47798157 162.91821289 3.014310122 -4.96913147 162.73236084 2.35345316 -5.6144104 163.44023132
		 2.82079816 -5.22206116 163.79104614 4.49618578 -3.37757874 164.3299408 4.060844898 -4.16923523 165.52644348
		 3.79294801 -4.16494751 163.13412476 3.40033913 -4.69308472 164.45326233 5.2703619 -1.1565094 162.052947998
		 4.86777687 -2.38388062 163.095367432 4.37519169 -2.23280334 160.7434845 4.094408035 -3.40010071 161.740448
		 3.32055211 -3.3009491 159.86505127 3.079972029 -4.38644409 160.78343201 2.12523508 -4.23536682 159.25592041
		 1.96908092 -5.23608398 160.15110779 1.41106904 -5.95033264 162.22479248 2.6053741 -5.12005615 161.7270813
		 1.68496203 -5.62278748 161.23504639 0.46044999 -6.74481201 165.22409058 0.443344 -6.67456055 164.34194946
		 0.405123 -6.46659851 163.59980774 0.421747 -6.28419495 162.94586182 0.56603497 -5.93945313 161.072006226
		 0.48848897 -6.16821289 162.16169739 0.73414999 -4.73886108 158.93225098 0.67757601 -5.77122498 159.83795166
		 1.095255971 -7.56291199 166.81044006 1.30354095 -6.76655579 166.057815552;
	setAttr ".vt[1660:1825]" 1.50998104 -6.8092041 167.33053589 2.03333807 -6.012237549 166.56460571
		 0.42910999 -7.32740784 165.91996765 0.37761998 -8.024490356 166.7011261 0.728607 -2.98332214 158.45449829
		 0.686409 -1.16711426 157.9853363 2.13104415 -2.55514526 158.74479675 2.064933062 -0.70503235 158.25881958
		 3.38105917 -1.73538208 159.38493347 3.42982721 0.048675537 158.91331482 5.51084185 0.34613037 161.43945313
		 4.51458502 -0.71720886 160.29400635 5.59832191 1.98631287 160.98170471 4.63655186 1.0030670166 159.88024902
		 6.1865797 -1.19554138 166.68963623 5.57440567 -1.63635254 164.81420898 6.50461388 0.31315613 165.88632202
		 6.0052518845 -0.26742554 163.80836487 5.20176506 -2.82019043 165.85543823 5.9403429 -2.53309631 167.47088623
		 4.76966906 -3.7467804 166.8477478 5.40911102 -3.41362 168.27755737 6.2979908 1.26071167 162.99403381
		 6.28172493 2.83760071 162.46632385 6.82651186 1.95783997 165.070983887 6.75108099 3.48954773 164.24949646
		 3.72622299 -4.27992249 168.98152161 3.2226851 -4.73794556 168.1836853 4.59099102 -3.93971252 168.81074524
		 4.03701973 -4.29937744 167.66604614 5.87140703 5.4362793 159.93821716 5.7869029 3.62528992 160.36763
		 5.5047431 4.57339478 157.85813904 5.085571766 2.58842468 158.75273132 2.27776313 0.38348389 156.78425598
		 2.27752709 0.88969421 154.68482971 3.83730912 1.33332825 157.42301941 3.93076921 1.6363678 154.85917664
		 0.761742 -0.24856567 156.54992676 0.754502 0.37409973 154.73582458 2.353863 -5.19119263 168.7190094
		 2.88818216 -4.56752014 169.23065186 1.46434295 -5.53227234 169.52587891 2.13984013 -4.7897644 169.70010376
		 4.61664391 -3.99957275 170.34202576 4.076632023 -4.23783875 170.31246948 4.72159481 -3.84449768 169.78309631
		 4.0007019043 -4.18540955 169.73895264 6.14653587 -2.39352417 170.37164307 5.60672283 -3.11799622 170.50993347
		 6.24973488 -2.32743835 169.0074462891 5.67167902 -3.10533142 169.55570984 3.26029611 -4.38430786 169.82858276
		 3.44537711 -4.37882996 170.34150696 2.59774017 -4.47975159 170.046173096 2.88097811 -4.41574097 170.40890503
		 6.51887608 -1.13192749 170.19708252 6.62581491 -1.04246521 168.49514771 6.95193005 0.43061829 169.99264526
		 6.85630989 0.54336548 167.99726868 5.81795168 -2.87850952 172.70501709 6.28416204 -1.73820496 171.63980103
		 6.32228088 -1.42080688 173.23236084 6.73062086 -0.19940186 171.77044678 7.53270388 1.80670166 174.22824097
		 6.92325687 0.092697144 173.7693634 7.80288887 3.079162598 172.037109375 7.27386999 1.44180298 171.87649536
		 4.6412077 -4.094146729 171.63267517 5.28907299 -3.50744629 171.20761108 5.32655573 -3.9138031 172.19021606
		 5.90679884 -2.95030212 171.45465088 4.86424398 -3.84103394 170.96278381 4.27987099 -4.19017029 171.17753601
		 4.642313 -4.013717651 170.68215942 4.1325388 -4.25404358 170.75704956 7.24551201 5.63775635 165.35647583
		 7.96639299 5.26855469 166.040985107 7.061217785 4.38182068 165.051635742 7.70653963 4.2348938 166.12298584
		 6.12753105 5.95843506 162.10406494 6.49597502 6.073867798 164.1086731 6.22285986 4.3447113 162.19654846
		 6.55434704 4.66868591 163.93431091 4.80450869 -4.14204407 173.37550354 5.45912504 -2.9936676 174.21034241
		 3.27377009 -5.12748718 173.70036316 3.95851111 -4.287323 174.86419678 2.64509511 -4.92494202 171.61978149
		 3.69070315 -4.5974884 171.77818298 2.80482912 -5.47883606 172.53256226 4.22657108 -4.81001282 172.56741333
		 3.51355004 -4.44456482 171.22468567 2.76397109 -4.52966309 171.086929321 3.49588013 -4.40170288 170.7741394
		 2.91161203 -4.43296814 170.7252655 1.026098967 -5.61453247 170.47892761 1.651209 -4.83724976 170.33261108
		 1.10420799 -5.67237854 171.40113831 1.78709197 -4.9185791 171.092254639 2.20328903 -5.03553772 175.26382446
		 0.65225899 -5.3765564 175.45675659 1.67210793 -5.73365784 173.81990051 0.45155898 -5.94303894 173.9002533
		 0.39098799 -6.36720276 170.61140442 0.34761998 -6.20993042 171.47981262 0.35218498 -7.95611572 167.87414551
		 0.381497 -7.023971558 169.36712646 7.27175903 8.55551147 168.94300842 6.62503481 8.34840393 166.615448
		 5.60605288 10.95544434 169.11151123 5.0070266724 10.46040344 166.78945923 8.37004375 7.098632813 168.61869812
		 8.89356232 6.46984863 168.29853821 7.76809788 6.79473877 166.68487549 8.39584541 6.11920166 166.90986633
		 5.78556871 8.0031585693 164.38815308 5.42959404 7.84121704 162.055389404 4.30442572 9.93547058 164.46611023
		 4.21067286 9.76348877 161.94975281 5.48461723 7.51373291 159.71922302 5.62587833 6.93121338 157.70559692
		 4.63123369 9.73999023 159.38404846 5.49512577 8.86343384 157.59680176 8.77723217 5.69580078 168.28808594
		 8.50030613 4.85493469 168.49610901 8.34652328 5.39872742 167.08644104 8.071662903 4.53590393 167.23808289
		 2.67698312 11.1713562 161.86633301 0.89405298 11.81954956 161.89289856 2.74524999 11.50462341 164.4833374
		 0.91569197 12.12680054 164.56893921 3.004057169 12.21224976 166.95741272 0.96724796 12.94828796 167.10473633
		 3.26383209 12.96472168 169.32267761 1.0019489527 13.7649231 169.51098633 8.55803776 5.06237793 170.8984375
		 8.86791134 5.060821533 169.75314331 8.66433144 6.42364502 170.33979797 9.065954208 6.039230347 169.38101196
		 5.95766973 11.30578613 171.73449707 6.0089278221 11.12606812 175.06300354 7.59508371 8.76422119 171.50004578
		 7.60524988 8.83596802 174.58421326 8.19495392 6.58830261 171.83699036 8.14962196 6.36178589 174.49632263
		 8.16707134 4.78068542 172.18608093 8.027647018 3.92041016 174.51097107 6.1569128 -1.75462341 175.16589355
		 6.88057089 -0.24882507 176.22184753 4.63678885 -3.39460754 176.00048828125 5.26052999 -2.21966553 177.41430664
		 5.73238802 2.40455627 179.86479187 5.63792276 -0.35977173 178.87109375 7.39384985 4.77383423 177.59393311
		 7.33598566 1.89544678 177.10948181 3.045829058 -3.60488892 178.04019165 0.93968499 -4.26722717 178.3548584
		 2.69588399 -4.44085693 176.53727722 0.84667397 -4.92938232 176.77670288 1.055119991 0.47865295 181.58782959
		 1.0011559725 -2.49519348 180.21711731 3.40785098 0.96006775 181.10206604 3.27808905 -1.82858276 179.80197144
		 6.97481585 7.69354248 177.85792542 5.64913464 9.8551178 178.33532715;
	setAttr ".vt[1826:1991]" 5.5406189 5.50442505 180.30455017 4.76588392 7.95046997 180.47805786
		 3.43070412 13.3260498 172.018722534 1.010306001 14.16969299 172.1656189 3.52204204 12.9533844 175.42649841
		 1.077348948 13.79951477 175.55422974 3.21337104 6.80885315 181.5486908 1.09957993 6.50608826 182.13294983
		 3.40800309 4.017074585 181.63354492 1.085299015 3.58755493 182.18435669 3.49081302 11.39619446 178.7203064
		 1.1214 12.094512939 178.90310669 3.26528001 9.089630127 180.7900238 1.11230302 9.32522583 181.11387634
		 2.72366118 -5.27017212 165.57267761 3.38904715 -4.76982117 166.58966064 2.62331319 -5.33099365 167.43035889
		 1.086279035 -6.59208679 168.89489746 1.0012279749 -7.51904297 167.72946167 1.80548394 -5.96507263 168.1632843
		 0.35612398 -6.20855713 172.41607666 2.92701721 11.43338013 159.080413818 0.93771899 12.096176147 159.21044922
		 7.23811388 2.29034424 167.537323 5.19266081 -3.55938721 170.5848999 5.18658686 -3.53401184 170.10243225
		 2.23512912 -4.51113892 170.75857544 1.37014699 -5.94667053 172.38919067 4.94252872 -3.79379272 170.48085022
		 7.49819183 2.12922668 169.86817932 5.3696413 3.74624634 155.30021667 8.28911209 4.15460205 169.044937134
		 7.74050474 3.69477844 167.34933472 2.5321362 -4.42601013 170.55934143 2.18141222 -4.5045929 170.36804199
		 8.07009697 3.67532349 170.34884644 1.77418399 -5.97651672 163.41305542 2.099197149 -5.73719788 163.18354797
		 1.81129396 -5.8651123 163.0062561035 1.23441803 -6.36381531 163.8409729 1.66857398 -6.17671204 164.086120605
		 1.37707496 -6.34700012 164.64553833 0.888574 -6.57354736 164.28990173 1.84683692 -5.99734497 163.63917542
		 2.19519806 -5.76971436 163.69181824 2.1205492 -5.84661865 164.24766541 1.87107897 -5.99189758 164.96392822
		 1.39297402 -6.43424988 165.61909485 0.93667197 -6.58287048 165.19958496 2.59783912 -5.42126465 164.24357605
		 2.45459819 -5.49421692 165.099395752 1.92419398 -5.764328 162.75888062 1.78915703 -5.76831055 162.31300354
		 2.3232801 -5.39016724 162.11499023 2.309937 -5.50880432 162.66960144 1.55702198 -5.99653625 162.96873474
		 1.19514203 -6.1920166 163.24642944 0.849747 -6.23416138 162.94319153 1.30754304 -6.070129395 162.61889648
		 1.51717198 -6.12857056 163.48223877 0.81860298 -6.39015198 163.57223511 2.23518419 -5.62692261 163.041503906
		 2.68513703 -5.26237488 162.80714417 2.43425512 -5.51100159 163.17951965 2.91408706 -4.96096802 162.1708374
		 3.38560319 -4.57946777 162.79847717 2.96374702 -5.070770264 163.28771973 2.20273304 -5.70115662 163.31155396
		 2.56554914 -5.45259094 163.5927124 3.091860056 -4.95159912 164.067764282 4.82493067 -3.049453735 165.070343018
		 4.31027794 -3.80630493 164.93901062 4.16952085 -3.76303101 163.66960144 4.66690779 -2.89909363 163.71157837
		 4.39137888 -3.91828918 166.16772461 3.74406815 -4.4811554 166.081100464 3.73780298 -4.4410553 164.94607544
		 3.62601304 -4.43232727 163.82241821 3.93623114 -3.84706116 162.41090393 3.097345114 -4.96530151 165.035079956
		 5.66841173 -0.67686462 162.87522888 5.081274033 -1.80636597 162.53109741 4.83765888 -1.68299866 161.34403992
		 5.41874599 -0.43585205 161.68748474 5.22624063 -1.96961975 163.92269897 4.49849701 -2.86587524 162.36590576
		 4.24372196 -2.85371399 161.18119812 3.86585212 -2.77366638 160.26126099 4.46304703 -1.5174408 160.45732117
		 3.60556507 -3.92378235 161.22427368 3.22618413 -3.90270996 160.27688599 2.74709916 -3.80871582 159.52566528
		 3.37303114 -2.57929993 159.56489563 2.87374711 -4.779953 161.30696106 2.5439992 -4.82501221 160.43025208
		 2.068658113 -4.83885193 159.65275574 1.45509398 -4.55740356 159.052017212 2.146698 -3.4596405 158.95588684
		 1.835127 -5.46983337 160.69596863 1.34549093 -5.56495667 159.95310974 0.97107798 -6.096664429 162.1819458
		 1.53560901 -5.77874756 161.75650024 2.17941618 -5.3740387 161.42729187 1.13777196 -5.81100464 161.12779236
		 0.46052599 -6.69293213 164.7928009 0.44710398 -6.94866943 165.59608459 0.42108899 -6.58479309 163.94264221
		 0.40297699 -6.32646179 163.27711487 0.45308298 -6.25941467 162.5880127 0.62308902 -5.92184448 160.45225525
		 0.52407801 -6.017623901 161.65086365 0.73713797 -3.907547 158.66410828 0.716461 -5.38583374 159.30952454
		 0.76055598 -7.84332275 166.73554993 1.19783902 -7.21150208 166.43545532 1.35151601 -7.21070862 166.98435974
		 1.022966981 -7.69180298 167.22563171 0.86934298 -7.10369873 165.97637939 1.70890701 -6.38697815 166.21690369
		 1.76551199 -6.41017151 166.98989868 1.63475895 -6.37637329 167.77404785 1.264112 -7.18003845 167.58000183
		 2.3403511 -5.62789917 166.075881958 2.31779218 -5.64790344 167.028961182 0.40521699 -7.74581909 166.26760864
		 0.35793498 -8.11408997 167.23304749 0.70661396 -2.035705566 158.26528931 1.44936502 -2.82319641 158.55889893
		 0.70785797 -0.57154846 157.41207886 1.38114798 -0.98161316 158.084609985 2.089703083 -1.60256958 158.55447388
		 2.77074909 -2.18554688 159.024032593 2.14250612 -0.040939331 157.66960144 2.74845719 -0.35739136 158.53474426
		 3.37409902 -0.82601929 159.21801758 3.96564102 -1.2374115 159.80844116 3.60719609 0.78303528 158.32655334
		 4.069717884 0.50865173 159.37275696 5.028579712 -0.18348694 160.83441162 5.55829287 1.1579895 161.22424316
		 5.94029379 0.83557129 162.14535522 4.54735565 0.14378357 160.14648438 5.14319181 1.50230408 160.41325378
		 5.67341089 2.80603027 160.68557739 5.97761774 2.44058228 161.65336609 4.83337402 1.81196594 159.4103241
		 6.056842804 -1.89169312 167.08303833 5.89899397 -1.37867737 165.74807739 6.34495783 -0.46244812 166.28829956
		 6.44671106 -1.089126587 167.60697937 5.36740685 -2.24285889 165.34074402 5.79540777 -0.97973633 164.2960968
		 6.27996397 0.065643311 164.82713318 6.66921186 1.1204071 165.48060608 6.68610573 0.4717865 166.95222473
		 6.18158579 0.48672485 163.36901855 5.58712769 -2.65890503 166.66377258 5.028970718 -3.33810425 166.3571167
		 6.18007088 -2.41848755 168.25595093 5.73167562 -3.046020508 167.87173462 5.12739801 -3.59158325 167.55718994
		 4.42844391 -4.052093506 167.30102539 5.58636475 -3.23495483 168.96548462 5.013994694 -3.69338989 168.62207031
		 6.32709074 2.047866821 162.69342041 6.59478903 1.63009644 163.96923828;
	setAttr ".vt[1992:2157]" 6.23098993 3.60714722 162.30413818 6.53097486 3.17912292 163.36907959
		 6.87749672 2.78004456 164.67007446 7.041727066 2.20965576 166.27284241 6.60706997 4.096572876 163.99159241
		 6.94142485 3.85147095 164.90029907 3.30516315 -4.42636108 169.082946777 3.49678707 -4.48123169 168.58877563
		 4.15428591 -4.12321472 168.90344238 3.89930701 -4.19174194 169.37808228 2.80546021 -4.95697021 168.42051697
		 2.93105817 -5.030212402 167.79684448 3.63090014 -4.52183533 167.94790649 4.34525394 -4.11360168 168.23565674
		 4.71868372 -3.81573486 169.34788513 3.71223521 -4.51353455 167.12049866 6.021214485 5.75553894 161.0026397705
		 5.88896179 4.49238586 160.098770142 5.67771006 5.033538818 158.9258728 5.72877121 6.44877625 159.82974243
		 6.027565956 4.026504517 161.23907471 5.48172092 3.14671326 159.56105042 5.30836439 3.44694519 158.10765076
		 5.35861158 4.090515137 156.65916443 5.61343145 5.80194092 157.7310791 4.55093193 1.96287537 157.97660828
		 1.52628601 0.010803223 156.6224823 2.33410406 0.70057678 155.76594543 3.048187017 0.82240295 157.046066284
		 1.50559998 0.61680603 154.69876099 3.097910166 1.17111206 154.72518921 3.9894011 1.66156006 156.2388916
		 4.71289682 2.38882446 155.014923096 0.78285098 0.039962769 155.64039612 2.63679409 -4.82516479 168.96673584
		 1.88239503 -5.39141846 169.091308594 2.056313038 -5.57366943 168.45683289 3.099526167 -4.4347229 169.53167725
		 2.49465013 -4.69589233 169.43862915 1.81061101 -5.12251282 169.63571167 1.17037797 -5.61763 169.99571228
		 1.21634197 -6.049118042 169.31651306 2.38871408 -4.58570862 169.85522461 1.84217501 -4.8299408 169.99632263
		 4.60052204 -4.03125 170.52461243 4.36596489 -4.12585449 170.3184967 4.66697598 -3.93118286 170.10447693
		 4.80989981 -3.88389587 170.39320374 4.099897861 -4.25305176 170.5436554 3.7643311 -4.32356262 170.32106018
		 4.049391747 -4.21168518 170.048950195 4.36856794 -4.034957886 169.74404907 5.014883041 -3.65505981 169.88792419
		 3.62920117 -4.29856873 169.7660675 6.048910618 -2.60331726 170.95610046 5.90553999 -2.82995605 170.44656372
		 6.20956182 -2.3057251 169.71646118 6.33793688 -1.8162384 170.28707886 5.48481703 -3.2749939 170.8927002
		 5.37006664 -3.36129761 170.56225586 5.66641092 -3.056259155 170.06300354 5.97925568 -2.78309631 169.27746582
		 6.46880388 -1.73936462 168.74784851 5.3815918 -3.3401947 169.83735657 3.372998 -4.37562561 170.10035706
		 2.91025901 -4.44398499 169.9236908 3.48352599 -4.38838196 170.56184387 3.14335608 -4.40733337 170.37199402
		 2.76558208 -4.43190002 170.23553467 2.34711409 -4.49769592 170.19476318 2.93345809 -4.41822815 170.56793213
		 2.67629719 -4.41755676 170.46633911 6.62465096 -1.043029785 169.3624115 6.71599293 -0.37394714 170.098495483
		 6.41168976 -1.36309814 170.96295166 6.74456072 -0.27192688 168.24597168 6.9887228 0.52793884 169.0105896
		 7.22367191 1.26602173 169.90124512 6.85023689 0.18981934 170.92216492 7.0039739609 1.40307617 167.75704956
		 5.58034468 -3.49234009 172.45004272 6.10197783 -2.24963379 172.22058105 6.059594631 -2.16436768 172.96203613
		 5.39446688 -3.54078674 173.090118408 6.098361969 -2.40925598 171.55221558 6.490242 -0.99093628 171.71643066
		 6.55516481 -0.73532104 172.55487061 6.61350584 -0.67381287 173.5123291 5.97790098 -2.19631958 173.78448486
		 6.99852896 0.61579895 171.82164001 7.31518888 0.84805298 175.3170929 7.22798395 0.91241455 174.0086975098
		 7.67624569 2.54380798 173.073318481 7.81297588 2.80215454 174.40545654 6.63560581 -0.80389404 174.55999756
		 7.10811281 0.85868835 172.85014343 7.547472 2.26817322 171.93595886 7.92403984 3.44569397 171.15119934
		 8.018185616 3.90637207 172.1388855 7.40846205 1.85928345 170.89012146 4.41899872 -4.1343689 171.39640808
		 5.010134697 -3.7910614 171.45368958 5.0064706802 -4.09147644 171.91427612 4.18930578 -4.3677063 171.74208069
		 5.042492867 -3.69023132 171.088684082 5.62971592 -3.30267334 171.33573914 5.68079901 -3.40368652 171.86460876
		 4.83264971 -4.39805603 172.42677307 4.60245705 -4.015823364 171.091384888 4.73231173 -3.9498291 170.82746887
		 5.062275887 -3.68310547 170.79341125 3.90998411 -4.33909607 171.22114563 4.18838787 -4.23410034 170.96522522
		 4.41036987 -4.1378479 170.72758484 4.81885767 -3.89533997 170.60588074 3.82214499 -4.34579468 170.77227783
		 7.44753885 6.29911804 165.87312317 7.68176889 5.39318848 165.65310669 7.14691782 4.97850037 165.1053009
		 6.8287158 5.9256897 164.88400269 8.13209915 5.74087524 166.38256836 8.14418602 5.2749176 166.55142212
		 7.83277893 4.75839233 165.99473572 7.422122 4.16378784 165.57948303 6.75482082 4.61413574 164.54867554
		 7.90186882 4.40078735 166.66218567 7.63571167 3.80937195 166.53175354 5.87493992 6.87567139 162.082000732
		 6.27090168 6.065750122 163.16007996 6.21391582 5.11334229 162.13734436 6.29101563 6.99737549 164.28030396
		 6.54434681 5.30493164 163.98568726 6.38963985 4.56904602 163.13835144 5.12377977 -3.57963562 173.78416443
		 4.079125881 -4.66798401 173.5763855 4.50582695 -4.58435059 172.96939087 5.80502176 -2.39562988 174.67160034
		 4.77267981 -3.7240448 174.56011963 3.61030412 -4.70301819 174.30288696 2.44995403 -5.489151 173.76696777
		 2.98979521 -5.42588806 173.084609985 4.30378199 -3.86621094 175.41471863 3.080584049 -4.70767212 175.097503662
		 2.68345499 -4.66210938 171.31341553 3.16978121 -4.78392029 171.73648071 2.70196414 -5.29467773 172.059417725
		 2.15258503 -4.98036194 171.41929626 3.56486011 -4.49409485 171.4803772 3.94110513 -4.76768494 172.16247559
		 3.5444541 -5.17243958 172.60266113 2.054201126 -5.72550964 172.42626953 3.12208104 -4.5072937 171.18177795
		 3.49918103 -4.42001343 170.99128723 2.45941114 -4.52342224 170.94412231 2.84644818 -4.46580505 170.89553833
		 3.18310618 -4.427948 170.75979614 2.69555807 -4.42785645 170.66130066 1.330235 -5.18968201 170.42608643
		 1.0060189962 -5.60758972 170.9473114 0.733329 -6.064834595 170.53567505 1.94068193 -4.62467957 170.31990051
		 1.61754501 -4.85800171 170.71089172 1.48986399 -5.28652954 171.32875061 1.27252901 -5.80889893 171.85752869
		 0.71916699 -6.010162354 171.44212341 2.027576208 -4.64578247 170.88023376;
	setAttr ".vt[2158:2323]" 2.46832108 -4.73178101 175.89979553 1.380288 -5.25897217 175.37786865
		 1.92964101 -5.38531494 174.57763672 0.76369399 -5.14901733 176.1280365 0.541372 -5.64573669 174.71176147
		 0.99511993 -5.87785339 173.86593628 1.47306097 -5.94778442 173.051895142 0.38835198 -6.15246582 173.091751099
		 0.41441399 -6.61000061 170.048080444 0.362207 -6.25514221 171.074127197 0.34593099 -6.19654846 171.89855957
		 0.69839001 -7.78952026 167.82112122 0.35602498 -7.52018738 168.61833191 0.75213599 -6.8414917 169.20561218
		 7.85271597 7.61973572 168.81539917 6.98829603 8.48091125 167.76742554 6.55832386 9.72946167 169.036605835
		 7.47655773 8.60826111 170.17723083 7.24927378 7.43130493 166.5905304 6.21180105 8.150177 165.48551941
		 5.86786795 9.35957336 166.71751404 5.36121988 10.72793579 167.94448853 4.48448563 12.081375122 169.20487976
		 5.82438898 11.17749023 170.34906006 4.62882471 10.18600464 165.64044189 4.036782742 11.46104431 166.85684204
		 8.54142189 6.88606262 169.57501221 8.74596977 6.78915405 168.44143677 8.10221291 7.054855347 167.63276672
		 9.0159235 6.35856628 168.91412354 8.87026978 6.10066223 168.23101807 8.67685699 6.37785339 167.59463501
		 8.17551994 6.41702271 166.78384399 8.43066978 5.79370117 167.029418945 5.51935577 7.91319275 163.25018311
		 5.055088997 8.98693848 164.4552002 5.45475435 7.73364258 160.85864258 4.85910606 8.82194519 162.0089569092
		 4.16435003 9.811203 163.23025513 3.56226921 10.80580139 164.46229553 4.36649036 9.73886108 160.6491394
		 3.49542403 10.55577087 161.88703918 5.54869127 7.22839355 158.66477966 5.13961458 8.62261963 159.56086731
		 5.70693111 6.85780334 156.86392212 5.58137989 7.74874878 157.74757385 5.03808403 9.39353943 158.58332825
		 3.88481617 10.79696655 158.80805969 5.70359898 9.18536377 156.9697876 8.94870377 5.83485413 168.85820007
		 8.64704514 5.2691803 168.38995361 8.57081604 5.5594635 167.68006897 8.72276878 5.0040588379 169.10791016
		 8.36887836 4.47795105 168.6696167 8.26893139 4.68270874 167.868927 8.21379566 4.96383667 167.14393616
		 7.92108297 4.12591553 167.3285675 3.1415 11.88606262 157.72842407 2.75847721 11.20562744 160.52275085
		 1.79716301 11.60151672 161.87747192 2.67675805 11.27813721 163.18624878 0.909603 11.87934875 160.54695129
		 0.89633799 11.90487671 163.23878479 1.84026003 11.94235229 164.52748108 2.86361408 11.82862854 165.74049377
		 0.94174099 12.48687744 165.85667419 1.96846294 12.7006073 167.04510498 3.14575815 12.59541321 168.14569092
		 0.98644102 13.40965271 168.32167053 2.064263105 13.51568604 169.43614197 3.3609941 13.20198059 170.582901
		 1.0028449297 14.051177979 170.75064087 8.34606552 4.34573364 170.71238708 8.83095455 5.066329956 170.36340332
		 8.67397022 5.78509521 170.80003357 8.26988602 4.99368286 171.46192932 8.60509968 4.5710907 169.55999756
		 9.035442352 5.57806396 169.68243408 9.014802933 6.26092529 169.88023376 8.29135418 6.54272461 170.9324646
		 4.75434208 12.43395996 171.8986969 6.026227951 11.31713867 173.30667114 6.93307686 10.039077759 171.59236145
		 4.81791496 12.16891479 175.28700256 5.88821077 10.6443634 176.80833435 6.97044086 10.0013122559 174.79904175
		 7.6515708 8.87995911 172.9480896 7.99935102 7.58250427 171.55128479 7.39507866 8.47457886 176.28149414
		 7.97242165 7.61073303 174.47860718 8.21810055 6.54684448 173.017593384 8.23235893 5.68249512 172.10134888
		 7.89358902 5.81968689 176.10740662 8.15252495 5.12387085 174.53440857 8.13262272 4.42858887 173.19090271
		 7.79142475 3.078811646 175.89370728 6.51855373 -1.052749634 175.69062805 5.48418474 -2.65065002 175.62338257
		 7.17292786 0.72663879 176.71279907 6.18579102 -1.30630493 176.91836548 4.95771885 -2.85858154 176.67022705
		 3.67902708 -3.98641968 176.31704712 5.50093603 -1.40774536 178.17303467 4.17889786 -2.97944641 177.77684021
		 4.62782574 1.54385376 180.61480713 5.70361471 0.92767334 179.44587708 6.66460896 3.50889587 178.85327148
		 5.69222975 3.97180176 180.14344788 4.49685764 -1.19885254 179.41914368 6.61113501 0.68809509 178.10928345
		 7.40342379 3.26173401 177.40223694 7.26594305 6.30133057 177.71524048 3.17654419 -2.87882996 178.92678833
		 1.94801903 -4.041442871 178.2278595 2.88566613 -4.093429565 177.23669434 0.96892798 -3.58705139 179.30863953
		 0.90311098 -4.66130066 177.49308777 1.74179399 -4.75727844 176.67477417 1.032182932 -1.081222534 180.99586487
		 2.18521905 0.63417053 181.40864563 1.070747972 2.051513672 181.9654541 2.084566116 -2.26693726 180.060180664
		 3.35486913 -0.50654602 180.55458069 3.42815113 2.48779297 181.44891357 6.44879484 8.86303711 178.075683594
		 6.35145998 6.61003113 179.21492004 4.63756371 10.7278595 178.55653381 5.28748369 8.89506531 179.56791687
		 5.24642086 6.8651123 180.40608215 4.55167484 4.61357117 181.090072632 4.13220501 8.71084595 180.5892334
		 4.073650837 7.20167542 181.086639404 2.12840009 13.88273621 172.10993958 3.47783804 13.29367065 173.64041138
		 1.029000998 14.12315369 173.77111816 2.24381208 13.51707458 175.50550842 3.53255916 12.33526611 177.17666626
		 1.11028898 13.11154175 177.31178284 3.14525199 7.95457458 181.28707886 2.194031 6.59588623 181.90951538
		 3.33896303 5.48928833 181.68075562 1.10224593 7.90577698 181.76385498 1.097461939 5.078552246 182.26423645
		 2.22000813 3.70106506 181.97547913 2.29453802 11.8440094 178.82595825 3.39870811 10.25820923 179.9336853
		 1.12088203 10.75209045 180.16464233 2.22185612 9.25358582 180.9790802 3.051586151 -5.026672363 166.070251465
		 3.010233164 -5.049926758 167.036361694 2.22025204 -5.63082886 167.79759216 1.012603045 -7.090042114 168.32252502
		 1.42390704 -6.29760742 168.53222656 0.79926401 -6.11413574 172.39608765 0.98271799 12.54930115 157.86401367
		 1.92046893 11.85891724 159.18725586 7.50550795 3.11334229 167.3813324 7.41375875 2.27986145 168.75793457
		 5.054657936 -3.69856262 170.56048584 5.24058962 -3.50067139 170.34867859 5.051709652 -3.68275452 170.3115387
		 2.13214612 -4.50627136 170.55874634 2.4018991 -4.45150757 170.66452026 7.76706266 2.96395874 169.98965454
		 5.6675086 5.43731689 155.77613831 8.19976902 3.87283325 169.62402344;
	setAttr ".vt[2324:2489]" 7.97300673 3.82772827 168.29147339 2.37643409 -4.44525146 170.45001221
		 1.96188104 -5.84655762 163.31600952 1.75809801 -5.93113708 163.21432495 1.98724496 -5.77818298 163.073730469
		 4.99856377 9.82597351 158.068725586 5.19737196 10.26483154 157.2727356 5.68698549 7.91133118 157.17694092
		 5.83481503 8.086410522 156.59156799 12.62440491 13.39545441 102.27435303 11.39369202 11.55065155 105.82535553
		 14.87800598 7.11075592 105.64135742 15.79849243 8.24245453 102.24035645 16.21839905 2.093055725 105.51435852
		 17.75509644 2.41695404 102.11735535 3.27099609 15.80275726 101.9233551 3.62910461 13.043754578 105.7223587
		 7.5151062 13.45005035 105.86834717 7.79170227 15.89575195 102.23934937 7.68559265 -9.28964233 98.63425446
		 7.2612915 -8.71294403 92.404953 11.78869629 -8.22714233 94.73445892 11.13989258 -8.0181427 99.67925262
		 7.19099426 -9.49754333 103.550354 10.21069336 -8.33704376 104.051353455 0.096298218 -10.82274628 96.93535614
		 0.096298218 -9.63874817 90.12705994 3.91020203 -9.45404816 90.70355988 4.22009277 -10.60144806 97.57633972
		 0.096298218 -10.79904175 102.7903595 4.15789795 -10.65764618 103.053352356 14.038894653 -6.20414734 100.43934631
		 15.28199768 -6.091842651 95.82074738 18.7375946 -1.94474792 96.86155701 17.11109924 -2.73004913 101.43635559
		 15.26210022 -3.24984741 105.097351074 12.5953064 -6.64434814 104.50035095 16.88980103 10.24835205 97.39985657
		 13.054702759 15.37755585 97.088859558 19.35220337 4.20845032 96.92315674 7.6822052 18.089653015 96.86725616
		 2.73069763 17.58315277 96.58325958 11.56700134 15.087554932 83.77755737 5.40390015 14.95735168 82.23085022
		 6.47819519 16.80155182 86.12625122 11.96820068 15.80805206 87.16925049 0.6882019 9.46535492 79.94114685
		 2.0014953613 15.20865631 85.28445435 7.22459412 18.31005096 91.61985779 12.69999695 16.25595093 92.11515808
		 2.28439331 17.60295105 91.38655853 11.29580688 14.71485138 79.51264954 11.3453064 14.39675522 75.33015442
		 4.86109924 12.86685562 74.29925537 4.96470642 13.37695313 78.1190567 1.0063934326 7.72265625 76.65265656
		 1.52400208 7.36545563 73.49295807 17.34570313 9.91135406 81.79675293 20.69299316 5.61965179 84.69235229
		 20.65600586 5.05255127 77.47955322 17.17030334 9.78025055 76.49425507 16.80830383 11.24485779 86.63735962
		 20.071990967 6.61815643 92.27975464 19.9420929 -0.66454315 77.68015289 20.34880066 -1.064842224 85.18855286
		 19.92459106 -1.48934937 92.62905121 16.6723938 -5.95944214 84.39925385 16.51460266 -5.13174438 77.32185364
		 16.24049377 -6.28894806 91.552948 4.048492432 -5.44594574 78.18795776 4.84480286 -4.54854584 74.51905823
		 8.78669739 -6.804245 75.89325714 7.97329712 -7.16014862 80.93495941 13.18739319 -6.70954895 71.80615997
		 13.15930176 -7.76654816 76.79645538 9.25469971 -5.91364288 71.23465729 12.032897949 14.40555573 68.0104599
		 12.604599 14.7086525 63.85085297 6.95709229 13.45845413 63.56405258 6.11509705 12.92185593 67.36465454
		 3.6703949 8.70545578 63.24415207 2.88560486 7.9029541 66.91075897 11.55789185 14.24025345 72.17935944
		 17.053695679 10.062255859 72.52005768 16.94949341 10.65515518 68.011856079 19.89720154 6.27215576 67.69965363
		 20.30429077 5.53775024 72.53065491 13.1763916 -5.59464264 66.52335358 9.49639893 -4.10744476 66.37275696
		 19.34640503 0.68925476 67.08115387 19.68299866 -0.14124298 72.24145508 16.22909546 -3.34924316 66.71405792
		 16.39379883 -4.32404327 72.0048599243 20.86610413 8.54535294 49.87096024 21.38409424 8.97775269 45.50335693
		 19.10279846 13.28885269 46.28516006 18.43859863 12.73885345 50.59605789 14.28599548 15.96305466 50.92295837
		 14.91029358 16.67445374 46.60645294 10.12139893 16.21495438 46.45165634 9.38909912 15.28935242 50.74825287
		 7.059005737 12.58055496 45.97035599 6.31149292 11.51295471 50.30505753 6.99189758 2.7473526 48.63755798
		 7.73269653 3.8085556 44.35215759 10.14840698 1.074554443 44.20385742 9.65919495 0.18025589 48.49036026
		 15.72119141 0.38685226 44.18375778 12.76809692 -1.5223465 44.066059113 13.49829102 -0.69794464 39.49045944
		 16.27149963 1.26625443 39.55565643 19.63540649 13.75385475 41.25205612 19.71330261 13.96635437 36.14945602
		 15.77049255 17.2820549 36.50455856 15.54510498 17.050453186 41.58755493 21.54499817 9.49385452 40.56335831
		 21.34069824 9.78615379 35.58885956 10.97309875 1.90865326 39.65745926 20.23320007 4.98485374 17.37365913
		 19.97650146 5.37585449 23.011959076 17.34190369 1.91705322 23.094158173 17.63909912 1.36955452 17.57545853
		 21.51080322 9.26595402 17.31765938 21.35540771 9.56745434 23.14795876 15.39860535 16.85545349 17.26985931
		 15.50689697 16.94455338 23.39025879 19.36759949 13.53605366 23.31025696 19.30729675 13.29385376 17.31235886
		 11.94891357 16.43635368 17.33945847 11.89729309 16.65625381 23.44565773 10.1751709 12.29165459 17.53725815
		 9.60501099 12.95455456 23.51075935 11.53869629 17.23595428 36.53805923 10.97540283 16.8567543 41.51945877
		 8.12730408 14.22195244 36.32325745 7.74440002 13.6536541 41.18395996 15.68280029 12.99945068 88.79925537
		 16.97219849 11.84075165 93.039054871 0.096298218 16.71445465 91.29415894 0.096298218 14.48465729 85.15545654
		 6.98240662 -7.94624329 86.66895294 12.27909851 -8.68724823 90.12805939 8.66799927 4.60945511 39.84835815
		 6.35910034 9.29265404 40.62615585 7.076293945 9.46855354 35.85595703 9.38749695 4.98615456 35.27125931
		 5.36549377 8.4532547 45.31755829 4.61549377 7.38005447 49.59455872 0.096298218 9.12895203 80.97145081
		 0.50010681 -0.19074249 79.59355927 0.096298218 -0.046348572 80.76565552 1.165802 -0.075546265 76.2950592
		 3.15510559 3.53645325 62.33485794 2.70149231 2.23955536 66.35575867 5.8638916 -1.11814499 61.44575882
		 5.8638916 -2.4884491 66.13435364 3.51069641 -7.15114594 83.85705566 1.66009521 0.36885071 73.32785797
		 15.81809998 -2.31510258 7.33525848 19.60610962 -1.11963701 7.85472584 18.80615234 0.54355431 11.81875801
		 15.53509521 -1.95664597 12.070257187 15.30110168 16.9899025 10.88835621 19.36500549 13.66134548 11.061358452
		 19.87150574 14.27820206 5.84685802 15.22169495 18.44335747 5.57045746;
	setAttr ".vt[2490:2655]" 21.84979248 8.83345413 11.24405766 22.17939758 8.44025421 6.17915821
		 12.92810059 0.3234539 11.99945831 10.94189453 2.52585411 11.95745754 11.13569641 1.6137538 7.10845852
		 13.10850525 -1.53884411 7.55557489 12.40910339 2.082654953 23.28575897 10.421875 4.35395432 23.36745834
		 10.83424377 3.55725384 17.77575874 12.6914978 1.34175491 17.75425911 11.47769165 17.76935768 5.66785812
		 11.68200684 16.43323898 10.96865749 9.34985352 11.082464218 6.12205839 10.0035552979 11.55925369 11.30825806
		 9.025085449 5.95505381 11.76555729 9.25500488 4.97895384 6.76355839 8.51071167 8.03285408 23.5362587
		 9.033920288 7.079354286 17.76705933 12.83319092 -8.58944702 83.35495758 5.59629822 -3.71544647 70.82914734
		 12.51359558 -2.2627449 48.34965897 15.21009827 -0.95534515 17.7617588 12.76480103 -3.74704361 56.94415665
		 15.77160645 -1.63174438 57.11585617 16.0059051514 -2.34884644 61.4295578 13.037200928 -4.53194809 61.23405838
		 18.90550232 3.40775299 48.90495682 15.5007019 -0.31374741 48.47965622 19.16009521 4.031452179 44.56335831
		 19.47450256 4.80405426 39.81215668 16.82919312 1.84805298 34.85875702 19.68530273 5.37085342 35.02715683
		 14.90109253 -0.27444649 23.22245789 17.15310669 2.21655464 28.97635651 14.26649475 -0.24234772 34.84605789
		 14.69270325 0.06725502 29.040756226 20.63949585 4.38445377 11.49415874 21.013397217 3.83215404 6.98217344
		 9.89099121 5.0025539398 29.32855797 12.16540527 2.54965401 29.17655945 11.70309448 2.34985352 35.04945755
		 7.60144043 9.067354202 29.69495773 8.55671692 13.87825394 29.91185951 19.82969666 5.67695427 29.018257141
		 21.27420044 9.88585472 29.36805725 19.56860352 13.87215328 29.72395706 15.70970154 17.20025253 29.94505692
		 11.73609924 17.07995224 29.99775696 5.34680176 12.61825562 71.1802597 2.10940552 7.36845398 70.60714722
		 2.13569641 1.059257507 70.39525604 17.025100708 11.2793541 63.51105499 19.70610046 7.045654297 62.8712616
		 9.40969849 -2.85684204 61.34205627 19.046798706 1.61275482 61.93075562 11.38070679 11.1210556 107.86215973
		 14.83940125 6.75505066 107.68695831 16.22119141 1.78585052 107.55114746 3.62969971 12.48765564 107.76475525
		 7.50860596 12.94865417 107.90595245 10.21479797 -8.63484192 106.11615753 7.19309998 -9.79684448 105.61834717
		 15.26829529 -3.54224396 107.13975525 12.60119629 -6.93914795 106.55874634 0.096298218 12.52485657 107.6653595
		 0.096298218 13.10345459 105.62135315 4.16090393 -10.95704651 105.12135315 19.94779968 7.56875229 58.55445862
		 20.40119934 8.046955109 54.21905899 17.89529419 12.12075424 54.90215683 17.38890076 11.67175293 59.20155716
		 13.18519592 14.90175247 59.52575684 13.70300293 15.25105286 55.22425461 8.61759949 14.4430542 55.029453278
		 7.86349487 13.85855484 59.30366135 5.45449829 10.49285507 54.62945557 4.59120178 9.6087532 58.94625854
		 6.033798218 0.22685242 57.17425537 6.44979858 1.51665497 52.90605545 9.4210968 -0.79844666 52.77745819
		 9.33990479 -1.80654526 57.063957214 4.023803711 6.15855408 53.85005569 3.51399231 4.89705276 58.099452972
		 12.55700684 -3.00044631958 52.64465332 15.55160522 -0.97094727 52.79405594 18.87509155 2.81355286 53.25345612
		 18.92779541 2.2535553 57.60245895 0.096298218 16.57775116 96.36895752 0.096298218 15.024353027 101.70635986
		 0.096298218 -11.097846985 104.85675049 0.096298218 -6.25284576 83.8262558 15.8368988 -2.1064024 6.31095886
		 19.33827209 -1.033337593 6.83652592 19.67625427 -1.27073765 6.89732599 15.87469482 -2.49700212 6.38825798
		 19.5737915 14.0058441162 4.81105804 15.093795776 18.047758102 4.51275921 15.20579529 18.43175697 4.50685883
		 19.88796997 14.24966431 4.80395794 21.85079956 8.29905415 5.14625835 22.24530029 8.36165428 5.1661582
		 11.51779175 1.70265388 6.09485817 13.41239929 -1.42744446 6.55267525 13.14459229 -1.72124386 6.59687519
		 11.19659424 1.43135405 6.13865852 11.70500183 17.41915512 4.61075878 11.45970154 17.73505783 4.60775852
		 9.64263916 10.87313271 5.095458031 9.27146912 10.98272991 5.084758759 9.57859802 4.88275385 5.74535847
		 9.15834045 4.78375387 5.7631588 20.72349548 3.8787539 5.95577335 21.088195801 3.72165394 6.0033731461
		 14.82980347 6.66615295 108.19835663 11.37750244 11.013656616 108.37135315 16.22189331 1.70905304 108.06035614
		 7.50700378 12.82335663 108.4153595 3.62989807 12.3486557 108.27535248 7.19360352 -9.87164307 106.13535309
		 10.21580505 -8.70924377 106.63234711 12.60269165 -7.0128479 107.073348999 15.26989746 -3.61534882 107.65035248
		 0.096298218 12.38015747 108.17635345 4.16169739 -11.031944275 105.63835907 0.096298218 -11.17254639 105.37335968
		 -12.43179321 13.39545441 102.27435303 -11.20109558 11.55065155 105.82535553 -14.68539429 7.11075592 105.64135742
		 -15.605896 8.24245453 102.24035645 -16.025802612 2.093055725 105.51435852 -17.5625 2.41695404 102.11735535
		 -3.078399658 15.80275726 101.9233551 -3.43650818 13.043754578 105.7223587 -7.32249451 13.45005035 105.86834717
		 -7.59910583 15.89575195 102.23934937 -7.49299622 -9.28964233 98.63425446 -7.068695068 -8.71294403 92.404953
		 -11.59609985 -8.22714233 94.73445892 -10.94729614 -8.0181427 99.67925262 -6.99839783 -9.49754333 103.550354
		 -10.018096924 -8.33704376 104.051353455 -3.71760559 -9.45404816 90.70355988 -4.027496338 -10.60144806 97.57633972
		 -3.96530151 -10.65764618 103.053352356 -13.84629822 -6.20414734 100.43934631 -15.089401245 -6.091842651 95.82074738
		 -18.54499817 -1.94474792 96.86155701 -16.91850281 -2.73004913 101.43635559 -15.069503784 -3.24984741 105.097351074
		 -12.4026947 -6.64434814 104.50035095 -16.69720459 10.24835205 97.39985657 -12.86210632 15.37755585 97.088859558
		 -19.15960693 4.20845032 96.92315674 -7.48959351 18.089653015 96.86725616 -2.5381012 17.58315277 96.58325958
		 -11.37440491 15.087554932 83.77755737 -5.21130371 14.95735168 82.23085022 -6.28559875 16.80155182 86.12625122
		 -11.77560425 15.80805206 87.16925049 -0.49560547 9.46535492 79.94114685 -1.80889893 15.20865631 85.28445435
		 -7.031997681 18.31005096 91.61985779 -12.50740051 16.25595093 92.11515808 -2.091796875 17.60295105 91.38655853
		 -11.10319519 14.71485138 79.51264954 -11.1526947 14.39675522 75.33015442;
	setAttr ".vt[2656:2821]" -4.66850281 12.86685562 74.29925537 -4.77209473 13.37695313 78.1190567
		 -0.813797 7.72265625 76.65265656 -1.33140564 7.36545563 73.49295807 -17.15310669 9.91135406 81.79675293
		 -20.50039673 5.61965179 84.69235229 -20.46339417 5.05255127 77.47955322 -16.97770691 9.78025055 76.49425507
		 -16.61569214 11.24485779 86.63735962 -19.87939453 6.61815643 92.27975464 -19.74949646 -0.66454315 77.68015289
		 -20.15620422 -1.064842224 85.18855286 -19.73199463 -1.48934937 92.62905121 -16.47979736 -5.95944214 84.39925385
		 -16.32200623 -5.13174438 77.32185364 -16.047897339 -6.28894806 91.552948 -3.855896 -5.44594574 78.18795776
		 -4.65220642 -4.54854584 74.51905823 -8.59410095 -6.804245 75.89325714 -7.78070068 -7.16014862 80.93495941
		 -12.99479675 -6.70954895 71.80615997 -12.96670532 -7.76654816 76.79645538 -9.062103271 -5.91364288 71.23465729
		 -11.84030151 14.40555573 68.0104599 -12.41200256 14.7086525 63.85085297 -6.76449585 13.45845413 63.56405258
		 -5.92250061 12.92185593 67.36465454 -3.47779846 8.70545578 63.24415207 -2.69299316 7.9029541 66.91075897
		 -11.36529541 14.24025345 72.17935944 -16.86109924 10.062255859 72.52005768 -16.75689697 10.65515518 68.011856079
		 -19.7046051 6.27215576 67.69965363 -20.11169434 5.53775024 72.53065491 -12.98379517 -5.59464264 66.52335358
		 -9.30380249 -4.10744476 66.37275696 -19.15380859 0.68925476 67.08115387 -19.49040222 -0.14124298 72.24145508
		 -16.036499023 -3.34924316 66.71405792 -16.20120239 -4.32404327 72.0048599243 -20.67349243 8.54535294 49.87096024
		 -21.1914978 8.97775269 45.50335693 -18.91020203 13.28885269 46.28516006 -18.2460022 12.73885345 50.59605789
		 -14.093399048 15.96305466 50.92295837 -14.71769714 16.67445374 46.60645294 -9.92880249 16.21495438 46.45165634
		 -9.19650269 15.28935242 50.74825287 -6.86639404 12.58055496 45.97035599 -6.11889648 11.51295471 50.30505753
		 -6.79930115 2.7473526 48.63755798 -7.5401001 3.8085556 44.35215759 -9.95579529 1.074554443 44.20385742
		 -9.46659851 0.18025589 48.49036026 -15.52859497 0.38685226 44.18375778 -12.57550049 -1.5223465 44.066059113
		 -13.30569458 -0.69794464 39.49045944 -16.078903198 1.26625443 39.55565643 -19.4427948 13.75385475 41.25205612
		 -19.52070618 13.96635437 36.14945602 -15.57789612 17.2820549 36.50455856 -15.35250854 17.050453186 41.58755493
		 -21.35240173 9.49385452 40.56335831 -21.14810181 9.78615379 35.58885956 -10.78050232 1.90865326 39.65745926
		 -20.040603638 4.98485374 17.37365913 -19.78390503 5.37585449 23.011959076 -17.14930725 1.91705322 23.094158173
		 -17.44650269 1.36955452 17.57545853 -21.31820679 9.26595402 17.31765938 -21.16279602 9.56745434 23.14795876
		 -15.20599365 16.85545349 17.26985931 -15.31430054 16.94455338 23.39025879 -19.17500305 13.53605366 23.31025696
		 -19.11470032 13.29385376 17.31235886 -11.75631714 16.43635368 17.33945847 -11.70469666 16.65625381 23.44565773
		 -9.9825592 12.29165459 17.53725815 -9.41241455 12.95455456 23.51075935 -11.34609985 17.23595428 36.53805923
		 -10.7828064 16.8567543 41.51945877 -7.93470764 14.22195244 36.32325745 -7.55180359 13.6536541 41.18395996
		 -15.49020386 12.99945068 88.79925537 -16.77960205 11.84075165 93.039054871 -6.78979492 -7.94624329 86.66895294
		 -12.086502075 -8.68724823 90.12805939 -8.47540283 4.60945511 39.84835815 -6.16650391 9.29265404 40.62615585
		 -6.88369751 9.46855354 35.85595703 -9.19490051 4.98615456 35.27125931 -5.17289734 8.4532547 45.31755829
		 -4.42289734 7.38005447 49.59455872 -0.30749512 -0.19074249 79.59355927 -0.97320557 -0.075546265 76.2950592
		 -2.9624939 3.53645325 62.33485794 -2.50889587 2.23955536 66.35575867 -5.67129517 -1.11814499 61.44575882
		 -5.67129517 -2.4884491 66.13435364 -3.31809998 -7.15114594 83.85705566 -1.46749878 0.36885071 73.32785797
		 -15.62550354 -2.31510258 7.33525753 -19.41351318 -1.11963701 7.85472584 -18.61355591 0.54355431 11.81875801
		 -15.34249878 -1.95664597 12.070257187 -15.10850525 16.9899025 10.88835621 -19.1723938 13.66134548 11.061358452
		 -19.6789093 14.27820206 5.84685802 -15.029098511 18.44335747 5.57045746 -21.65719604 8.83345413 11.24405766
		 -21.98680115 8.44025421 6.17915821 -12.73550415 0.3234539 11.99945831 -10.7492981 2.52585411 11.95745754
		 -10.94309998 1.6137538 7.10845852 -12.91589355 -1.53884411 7.55557489 -12.21650696 2.082654953 23.28575897
		 -10.22926331 4.35395432 23.36745834 -10.64164734 3.55725384 17.77575874 -12.49890137 1.34175491 17.75425911
		 -11.28509521 17.76935768 5.66785812 -11.4894104 16.43323898 10.96865749 -9.15725708 11.082464218 6.12205839
		 -9.81095886 11.55925369 11.30825806 -8.83248901 5.95505381 11.76555729 -9.062393188 4.97895384 6.76355839
		 -8.31811523 8.03285408 23.5362587 -8.84132385 7.079354286 17.76705933 -12.64059448 -8.58944702 83.35495758
		 -5.40370178 -3.71544647 70.82914734 -12.32099915 -2.2627449 48.34965897 -15.017501831 -0.95534515 17.7617588
		 -12.57220459 -3.74704361 56.94415665 -15.57899475 -1.63174438 57.11585617 -15.81329346 -2.34884644 61.4295578
		 -12.84460449 -4.53194809 61.23405838 -18.71290588 3.40775299 48.90495682 -15.30810547 -0.31374741 48.47965622
		 -18.96749878 4.031452179 44.56335831 -19.28190613 4.80405426 39.81215668 -16.63659668 1.84805298 34.85875702
		 -19.4927063 5.37085342 35.02715683 -14.70849609 -0.27444649 23.22245789 -16.960495 2.21655464 28.97635651
		 -14.073898315 -0.24234772 34.84605789 -14.50010681 0.06725502 29.040756226 -20.44689941 4.38445377 11.49415874
		 -20.82080078 3.83215404 6.98217344 -9.69839478 5.0025539398 29.32855797 -11.97279358 2.54965401 29.17655945
		 -11.51049805 2.34985352 35.04945755 -7.40884399 9.067354202 29.69495773 -8.36412048 13.87825394 29.91185951
		 -19.63710022 5.67695427 29.018257141 -21.081604004 9.88585472 29.36805725 -19.37600708 13.87215328 29.72395706
		 -15.5171051 17.20025253 29.94505692 -11.54350281 17.07995224 29.99775696 -5.15420532 12.61825562 71.1802597
		 -1.91679382 7.36845398 70.60714722 -1.94309998 1.059257507 70.39525604 -16.83250427 11.2793541 63.51105499
		 -19.51350403 7.045654297 62.8712616 -9.21710205 -2.85684204 61.34205627 -18.85420227 1.61275482 61.93075562
		 -11.18809509 11.1210556 107.86215973 -14.64680481 6.75505066 107.68695831;
	setAttr ".vt[2822:2987]" -16.028594971 1.78585052 107.55114746 -3.43710327 12.48765564 107.76475525
		 -7.31599426 12.94865417 107.90595245 -10.022201538 -8.63484192 106.11615753 -7.00050354004 -9.79684448 105.61834717
		 -15.075698853 -3.54224396 107.13975525 -12.40859985 -6.93914795 106.55874634 -3.9683075 -10.95704651 105.12135315
		 -19.75520325 7.56875229 58.55445862 -20.20860291 8.046955109 54.21905899 -17.70269775 12.12075424 54.90215683
		 -17.19630432 11.67175293 59.20155716 -12.99259949 14.90175247 59.52575684 -13.51040649 15.25105286 55.22425461
		 -8.42500305 14.4430542 55.029453278 -7.67089844 13.85855484 59.30366135 -5.26190186 10.49285507 54.62945557
		 -4.39860535 9.6087532 58.94625854 -5.84120178 0.22685242 57.17425537 -6.25720215 1.51665497 52.90605545
		 -9.22850037 -0.79844666 52.77745819 -9.14730835 -1.80654526 57.063957214 -3.83120728 6.15855408 53.85005569
		 -3.32139587 4.89705276 58.099452972 -12.36439514 -3.00044631958 52.64465332 -15.35899353 -0.97094727 52.79405594
		 -18.68249512 2.81355286 53.25345612 -18.73519897 2.2535553 57.60245895 -15.64430237 -2.1064024 6.31095791
		 -19.14567566 -1.033337593 6.83652592 -19.48365784 -1.27073765 6.89732599 -15.68209839 -2.4970026 6.38825798
		 -19.38119507 14.0058441162 4.81105804 -14.90119934 18.047758102 4.51275921 -15.013198853 18.43175697 4.50685883
		 -19.69537354 14.24966431 4.80395794 -21.65820313 8.29905415 5.14625835 -22.052703857 8.36165428 5.1661582
		 -11.32519531 1.70265388 6.09485817 -13.21980286 -1.42744446 6.55267525 -12.95199585 -1.72124386 6.59687424
		 -11.0039978027 1.43135405 6.13865852 -11.5124054 17.41915512 4.61075878 -11.2671051 17.73505783 4.60775852
		 -9.45004272 10.87313271 5.095458031 -9.078872681 10.98272991 5.084758759 -9.38600159 4.88275385 5.74535847
		 -8.96574402 4.78375387 5.7631588 -20.53089905 3.8787539 5.95577335 -20.89559937 3.72165394 6.0033731461
		 -14.63720703 6.66615295 108.19835663 -11.18490601 11.013656616 108.37135315 -16.029296875 1.70905304 108.06035614
		 -7.31440735 12.82335663 108.4153595 -3.43730164 12.3486557 108.27535248 -7.0010070801 -9.87164307 106.13535309
		 -10.023193359 -8.70924377 106.63234711 -12.41009521 -7.0128479 107.073348999 -15.077301025 -3.61534882 107.65035248
		 -3.96910095 -11.031944275 105.63835907 17.76893616 2.98776722 9.015692711 20.70344543 4.24382782 5.40858173
		 17.92944336 4.97614002 10.83167076 15.73554993 2.55603409 9.6862936 15.72665405 4.53497219 11.44974804
		 13.49964905 4.0604949 10.93566895 14.0051574707 2.10761881 9.27935219 11.24453735 3.90175796 6.12546158
		 18.055557251 1.57064104 7.75572109 16.060897827 1.22728682 8.30102158 14.47839355 0.74472189 7.92813873
		 11.64962769 0.41304493 5.56756115 20.1993103 -6.67800999 4.95276499 18.2353363 -7.63995171 5.30637217
		 16.23083496 -7.90061426 5.11731911 13.062240601 -7.48293018 3.76044464 22.028305054 -9.93552208 3.30708408
		 20.85351563 -11.74760628 4.017252922 18.83624268 -13.2062397 4.47094345 16.75047302 -13.27514362 4.33218479
		 15.04977417 -12.23967361 3.98664474 11.30917358 1.82375002 6.035117149 12.23753357 -3.28176498 4.41121817
		 13.96392822 -9.82329273 3.79679871 14.88296509 -12.60002136 1.69708443 13.31587219 -9.75354481 1.29218674
		 16.72561646 -10.50407791 5.084051132 18.58580017 -10.30832481 5.27436256 20.43548584 -9.3150425 4.9297781
		 20.080825806 5.99593306 6.054690361 21.70368958 1.085342884 4.16341829 21.14894104 2.76250291 4.79999924
		 22.33584595 -7.87633896 2.93102646 22.46762085 -4.90291977 2.79896736 11.75569153 5.63513756 2.45982742
		 11.1530304 7.39409924 2.50061941 10.39707947 13.63657475 2.42421436 11.36746216 15.69027519 2.40758324
		 16.12986755 17.062601089 6.85899162 13.71795654 16.92737007 2.42396736 19.38342285 13.54417992 2.41157246
		 18.025543213 15.4684906 2.42113113 20.096389771 8.6264534 5.91176939 19.21240234 13.1386776 5.80873156
		 18.647995 -0.037187099 6.74336338 19.39326477 -1.88140488 5.79975033 16.60578918 -0.61898708 7.2692976
		 17.2975769 -2.64109755 6.31690216 15.43571472 -2.9659214 6.028949738 12.0053100586 -1.36561918 5.003118515
		 22.14802551 -0.6557858 3.52014637 10.44682312 13.52544022 6.31625986 11.75270081 16.100214 6.83746433
		 13.66859436 17.29140091 6.91824341 17.78277588 15.35217476 6.32204819 22.14723206 -10.3332653 1.52000618
		 20.79455566 -12.17220116 1.70062256 18.85180664 -13.54589462 1.92025375 16.85923767 -13.59391022 1.91135406
		 12.15919495 3.61397982 2.33423042 11.48620605 -3.17243004 1.17522621 12.020278931 -1.20989788 1.44752026
		 12.19464111 -7.36198044 1.10460377 20.50627136 7.81377888 2.34482813 21.74549866 3.44814301 1.97103739
		 10.99052429 6.40538788 6.044090271 20.34823608 9.67158508 2.39512825 12.20759583 1.32576513 2.068908453
		 22.75798035 -0.5260601 1.1223855 16.1290741 16.79444313 2.42371559 22.45454407 -10.50424767 0.48429585
		 18.69541931 -11.55988121 0.58206177 21.010421753 -12.47289848 0.765028 18.9617157 -13.93388176 1.0036296844
		 16.81924438 -14.080877304 0.99271202 14.62979126 -12.98620224 0.74350739 12.90937805 -9.95874691 0.29811096
		 11.52770996 -1.23637724 1.4305115e-06 11.94842529 3.84615707 1.29302037 11.40533447 5.70376682 1.41501844
		 10.79722595 7.33672476 1.51993525 9.90640259 11.34029102 1.4667244 10.065826416 13.79575157 1.40669727
		 11.066162109 15.91566277 1.3674221 13.60336304 17.25298691 1.37891865 16.22235107 17.11166954 1.36919594
		 18.21708679 15.74875259 1.37979031 19.64115906 13.76066971 1.38127422 20.65621948 9.78762245 1.29555845
		 21.40304565 5.83222389 1.093599319 22.68096924 1.28299379 4.7683716e-07 22.98469543 -7.96882153 0.19753361
		 10.18695068 11.28070641 2.45714998 21.13693237 5.5655489 2.16366148 22.35377502 1.1607089 1.39481139
		 22.94549561 -4.82950974 0.98589134 22.62783813 -7.96086502 1.20056152 23.33050537 -4.86817741 -2.0681392e-16
		 23.10894775 -0.46356487 -9.5367432e-07 22.052200317 3.60277891 0.78847337 20.85025024 7.94818878 1.27005029
		 19.64306641 13.76218033 -9.5367432e-07 20.70106506 9.73968315 -4.7683716e-07 18.22439575 15.75289917 -9.5367432e-07
		 16.24386597 17.011869431 -9.5367432e-07 13.61763 17.16941261 -9.5367432e-07;
	setAttr ".vt[2988:3153]" 11.061401367 15.83264256 -9.5367432e-07 10.018936157 13.80438232 -9.5367432e-07
		 10.70669556 7.32509899 -8.3446503e-07 9.86248779 11.32626247 -4.7683716e-07 11.91108704 1.38308907 0.89967132
		 11.044235229 -3.2137413 -9.5367432e-07 11.76649475 -7.49906063 0.1323843 15.63778687 9.38150311 -9.5367432e-07
		 14.26248169 14.57194901 3.2631475e-22 14.815979 12.40522289 -8.7199858e-23 16.098907471 7.82873821 1.40738034
		 16.3057251 5.21301365 1.19410741 16.71287537 2.40742302 0.83216047 17.037811279 -0.0032029059 4.7683716e-07
		 17.19212341 -1.80525303 -9.5367432e-07 17.90364075 -6.17931747 6.7595228e-17 18.4083252 -8.8761692 0.23943615
		 16.077575684 7.85027409 -9.5367432e-07 11.25895691 5.66314411 -9.4622374e-07 20.82022095 7.95961189 -1.1920929e-06
		 17.61853027 5.1482048 10.53369045 18.74504089 5.27443314 8.54080009 15.64117432 4.75376701 11.10041618
		 13.61785889 4.30359077 10.57471275 12.38642883 3.77243519 8.93078709 19.061660767 7.98424625 7.66492462
		 11.5509491 10.81020355 7.87929964 12.7194519 14.76229095 8.9776783 14.175354 15.78467178 9.2663269
		 15.93916321 15.63475609 9.02381897 17.085647583 14.31337357 8.43894768 12.011825562 5.99496603 8.10611629
		 11.91078186 12.91168022 8.36042595 18.05960083 12.55306435 7.85078096 14.99119568 -1.021837234 6.88962936
		 9.75021362 10.96015549 5.91239119 -0.013900757 11.45840454 180.97546387 -0.013900757 13.86820984 178.29045105
		 -0.013900757 -0.62840271 182.51644897 -0.013900757 -5.34429932 176.77046204 -0.013900757 -3.84649658 179.85446167
		 -0.013900757 -6.52940369 176.94543457 -0.013900757 -11.24835205 177.23460388 7.028701782 -3.017700195 174.70645142
		 8.038848877 0.67379761 173.40345764 7.98379517 1.12480164 174.44245911 6.855896 -2.79379272 175.592453
		 8.63505554 3.8361969 172.3324585 8.50416565 4.30979919 173.43145752 7.93029785 1.91920471 176.99745178
		 8.33320618 5.17010498 176.14645386 6.86219788 6.4828949 180.13145447 6.67010498 3.20930481 180.95545959
		 6.49180603 -1.69259644 177.9694519 5.46369934 -0.038192749 180.87846375 3.52029419 13.43119812 171.14845276
		 4.050201416 13.168396 171.20346069 4.0030975342 13.02230835 170.042449951 3.50740051 13.28720093 169.99046326
		 3.87509155 13.60029602 174.41645813 3.38890076 13.82580566 173.78645325 3.6197052 10.9434967 180.31045532
		 3.7612915 7.46090698 181.93745422 6.56559753 10.30810547 178.88545227 3.50740051 13.2243042 178.0064544678
		 5.46369934 12.14959717 177.3384552 8.11424255 7.72909546 171.16645813 8.046615601 8.1907959 172.25045776
		 6.27189636 11.23500061 170.28045654 6.28930664 11.51899719 171.43545532 7.95791626 9.030395508 174.94245911
		 6.16816711 12.053695679 174.19345093 3.67750549 3.66290283 182.56945801 3.50740051 -0.49240112 181.98245239
		 3.50740051 -4.91229248 176.30545044 3.50740051 -4.66040039 177.23545837 3.50740051 -3.33839417 179.54545593
		 3.50740051 -6.025802612 176.3324585 7.028701782 -4.0079956055 174.74845886 3.40229797 -10.4549408 176.65011597
		 6.042938232 -11.42121887 175.6930542 -0.013900757 14.23269653 174.42146301 7.84300232 0.70399475 173.37945557
		 6.87120056 -2.94749451 174.60446167 8.43075562 3.82740784 172.31045532 3.89390564 12.85650635 170.066452026
		 3.42939758 13.25469971 171.17245483 3.41189575 13.11300659 170.012451172 3.31439209 13.64039612 173.77845764
		 7.91621399 7.67849731 171.16946411 6.11529541 11.11419678 170.31045532 3.42529297 -4.80989075 176.15444946
		 6.95140076 -4.018798828 174.56445313 3.45480347 -6.038894653 176.14045715 5.98727417 -11.4223175 175.50405884
		 3.35246277 -10.46092224 176.4564209 -7.056503296 -3.017700195 174.70645142 -8.066650391 0.67379761 173.40345764
		 -8.01159668 1.12480164 174.44245911 -6.88369751 -2.79379272 175.592453 -8.66285706 3.8361969 172.3324585
		 -8.53196716 4.30979919 173.43145752 -7.95809937 1.91920471 176.99745178 -8.36100769 5.17010498 176.14645386
		 -6.88999939 6.4828949 180.13145447 -6.69790649 3.20930481 180.95545959 -6.51960754 -1.69259644 177.9694519
		 -5.49150085 -0.038192749 180.87846375 -3.5480957 13.43119812 171.14845276 -4.07800293 13.168396 171.20346069
		 -4.030899048 13.02230835 170.042449951 -3.53520203 13.28720093 169.99046326 -0.013900757 14.43240356 174.43345642
		 -0.013900757 14.39810181 175.23745728 -3.90289307 13.60029602 174.41645813 -3.41670227 13.82580566 173.78645325
		 -3.64750671 10.9434967 180.31045532 -3.78909302 7.46090698 181.93745422 -6.59339905 10.30810547 178.88545227
		 -3.53520203 13.2243042 178.0064544678 -5.49150085 12.14959717 177.3384552 -0.013900757 7.94239807 182.90846252
		 -8.14204407 7.72909546 171.16645813 -8.074417114 8.1907959 172.25045776 -6.29969788 11.23500061 170.28045654
		 -6.31710815 11.51899719 171.43545532 -7.98571777 9.030395508 174.94245911 -6.19596863 12.053695679 174.19345093
		 -3.70530701 3.66290283 182.56945801 -0.013900757 3.78900146 183.33345032 -3.53520203 -0.49240112 181.98245239
		 -3.53520203 -4.91229248 176.30545044 -3.53520203 -4.66040039 177.23545837 -0.013900757 -5.13899231 177.63645935
		 -3.53520203 -3.33839417 179.54545593 -3.53520203 -6.025802612 176.3324585 -7.056503296 -4.0079956055 174.74845886
		 -3.43009949 -10.4549408 176.65011597 -6.070739746 -11.42121887 175.6930542 -0.013900757 -14.4034729 177.16345215
		 -7.87080383 0.70399475 173.37945557 -6.89900208 -2.94749451 174.60446167 -8.45855713 3.82740784 172.31045532
		 -3.92170715 12.85650635 170.066452026 -3.4571991 13.25469971 171.17245483 -3.43969727 13.11300659 170.012451172
		 -3.3421936 13.64039612 173.77845764 -7.9440155 7.67849731 171.16946411 -6.14309692 11.11419678 170.31045532
		 -3.45309448 -4.80989075 176.15444946 -0.013900757 -5.23260498 176.60446167 -6.97920227 -4.018798828 174.56445313
		 -3.48260498 -6.038894653 176.14045715 -0.013900757 -6.55119324 176.74645996 -6.015075684 -11.4223175 175.50405884
		 -3.38026428 -10.46092224 176.4564209 -0.013900757 -11.25187683 177.03477478 -0.013900757 -14.39086914 176.96446228
		 1.66291809 14.33424377 171.0597229 1.65151978 14.18966675 169.90177917 1.57368469 14.0083770752 169.92446899
		 1.58731079 14.15164185 171.084320068 -0.013900757 14.70384216 171.023406982 -0.013900757 14.55752563 169.8656311
		 -0.013900757 14.36450195 169.88948059 -0.013900757 14.5098114 171.049118042;
	setAttr ".vt[3154:3319]" -1.6907196 14.33424377 171.0597229 -1.67932129 14.18966675 169.90177917
		 -1.60148621 14.0083770752 169.92446899 -1.6151123 14.15164185 171.084320068 3.42741394 -13.79563904 176.37106323
		 3.43963623 -13.80807495 176.56956482 -3.44116211 -13.81707764 176.57563782 -3.35444641 -13.83027649 176.3944397
		 -6.95159912 -8.64959717 175.30436707 -6.8837738 -8.65383911 175.11698914 6.85597229 -8.65383911 175.11698914
		 6.92379761 -8.64959717 175.30436707 46.33171082 2.43180084 90.25905609 46.59707642 2.26155853 89.00440979
		 47.1854248 1.86313629 86.3526535 46.19393921 4.21474457 86.24333191 46.18753052 0.45478821 91.024749756
		 46.56750488 -0.03012085 89.59596252 45.46368408 -1.5859375 91.42562103 45.73591614 -2.17878723 90.065994263
		 47.27124023 -0.78424072 86.97225952 46.18041992 -3.028831482 87.68250275 42.54527283 5.42396545 87.85568237
		 42.90116882 5.27026367 85.97467804 42.74647522 3.35022736 85.53804779 43.24700928 -1.26289368 85.95811462
		 42.58630371 1.50268555 87.43022156 43.18447876 1.068061829 85.43143463 42.15608215 1.87610626 88.44003296
		 43.89981079 -2.99053955 90.078598022 43.64422607 -3.10719299 87.65496826 41.24194336 -2.58399963 93.29908752
		 41.40939331 -0.82228088 95.29979706 39.97599792 3.1469574 95.4109726 41.36244202 -2.84164429 87.90478516
		 41.54664612 -2.4165802 88.28347778 42.54710388 -3.20193481 88.5401001 41.24987793 -0.87931824 88.46627808
		 41.94754028 -1.49342346 88.083770752 39.59362793 -3.48992157 88.82390594 39.48092651 -2.89122772 89.52426147
		 42.10591125 -4.61878204 89.28074646 41.4030304 -4.94045258 84.5477066 40.84959412 -5.79432678 83.51538849
		 40.86233521 -6.59822083 83.51733398 40.061340332 -4.40552521 84.45643616 40.017471313 -6.52609253 85.44152832
		 40.73254395 -6.88352966 83.70154572 45.037384033 -2.1865921 74.68727112 46.0096893311 -1.099685669 76.5298996
		 45.24264526 -3.1880188 75.064277649 46.1783905 -2.57042694 77.14672852 44.39440918 -3.38547516 75.29956818
		 45.023620605 -2.84067535 77.48338318 46.75906372 -2.24832916 78.81305695 47.07359314 0.11994934 81.0313797
		 45.42153931 -2.46078491 79.024085999 47.11166382 0.31800079 81.80504608 47.25869751 -1.38791656 82.46944427
		 47.41213989 -1.11777496 85.74930573 45.48258972 -1.72444153 82.30666351 43.79702759 -1.57659912 84.92680359
		 46.16600037 3.027023315 81.50593567 45.990448 2.65123749 79.77111053 43.094329834 3.24937439 84.3946228
		 46.18295288 4.074928284 85.090965271 46.69726563 1.4648819 81.51007843 46.4480896 1.19882202 79.98271179
		 43.63508606 0.88594818 84.19412231 44.58374023 -4.58107758 83.18636322 44.63812256 -4.29553223 83.84938812
		 46.44680786 -4.65847778 83.14756775 46.46270752 -4.4250946 83.86896515 44.1104126 -3.54957581 86.46105957
		 46.3208313 -3.39238739 86.60175323 45.088180542 4.29968262 81.6169281 44.88703918 4.29786682 80.83019257
		 43.82800293 3.6640625 81.84365082 43.67835999 3.55949402 81.16625977 44.99380493 -3.8506546 79.36231232
		 46.22012329 -4.19452667 79.23647308 43.20501709 5.13659668 78.44983673 43.87864685 3.94876862 78.43251801
		 42.95559692 3.22221375 78.72424316 45.42182922 1.96457672 77.54070282 45.13728333 1.74434662 76.79553986
		 45.88757324 0.63761139 77.84551239 45.62432861 0.45037079 77.11155701 44.13957214 -4.94058228 77.036605835
		 43.85691833 -5.92961121 77.40518188 44.19165039 -4.57318115 77.37004089 44.72877502 -6.14643097 77.28425598
		 45.35966492 -4.82432556 77.23799133 44.99885559 -5.11408997 76.9315033 42.62393188 3.42282867 76.33449554
		 42.018432617 2.96091461 76.65397644 43.0078125 0.19139862 74.71628571 44.11495972 0.95370483 74.72424316
		 43.84277344 0.5258255 74.40971375 44.71412659 -0.38896942 75.011070251 44.2983551 -0.46424103 74.63446045
		 43.48182678 -0.81190491 74.984375 43.58851624 5.59009552 93.82738495 45.060943604 3.13503265 94.80506897
		 41.57745361 4.80023956 92.71520996 43.17938232 5.87845612 95.95504761 44.13562012 3.74824524 97.066734314
		 41.074676514 5.43395996 95.19818115 43.91517639 1.42075348 97.64421082 44.6209259 0.460289 95.50938416
		 42.72061157 0.1097641 97.61628723 43.20779419 -0.84310913 95.49190521 43.7040863 -2.83261871 91.30764008
		 44.22047424 -2.34886169 74.88258362 45.40896606 0.026550293 81.67302704 45.46270752 -0.13632202 81.026779175
		 44.82116699 -1.35012817 76.93200684 42.25509644 4.38233185 78.78027344 46.10125732 3.36790466 90.18544006
		 46.32366943 3.32770538 88.86082458 44.18757629 6.0043029785 89.7215271 44.49787903 6.013504028 87.26360321
		 40.49775314 -0.50426829 93.28970337 40.52099228 1.086362839 95.29195404 42.015823364 -5.18701172 86.45024872
		 42.38500977 -4.22611237 88.90090942 41.039291382 -1.50805664 88.50295258 39.11839294 -4.99591064 86.7304306
		 39.59483337 -3.9859314 89.21570587 45.60333252 -2.39290619 75.26281738 45.072509766 -3.51727295 75.82307434
		 47.25372314 -0.95272827 79.96059418 46.36212158 -2.31565094 80.46893311 47.43759155 -0.62333679 81.34959412
		 47.52728271 -0.25519562 83.078300476 46.40524292 -1.9429245 81.73900604 46.27352905 -1.76235199 83.25605774
		 45.16851807 3.32048035 82.40655518 46.73274231 2.48466492 82.58589172 44.64483643 1.71244812 81.43689728
		 46.0032653809 1.004699707 81.4896698 44.51960754 1.91567993 82.18341064 46.048858643 1.072593689 82.24265289
		 46.18603516 -2.68833923 81.95867157 46.13302612 -2.42520142 82.64400482 47.046173096 -3.77016449 82.65356445
		 46.99737549 -3.49481201 83.389534 44.79359436 3.75189209 82.95082092 44.73475647 -4.2383728 80.9228363
		 45.28617859 -5.54085541 81.31020355 46.073867798 -3.27986908 80.30063629 46.6290741 -4.54965973 80.69696808
		 44.33804321 0.81996155 78.1078186 45.42970276 0.19210815 78.094963074 44.46400452 1.3079071 80.032424927
		 45.85092163 0.71349335 80.1027298 43.79156494 -5.20614624 77.65946198 44.31074524 -6.35057068 77.87993622
		 44.5369873 -4.5371933 79.70256805 45.036621094 -5.83061218 79.95007324 42.65931702 2.98294067 76.83776093
		 43.097412109 -0.25057983 75.39070129 44.26547241 -0.85377502 75.31610107 44.12316895 0.61671448 77.42110443
		 45.20050049 0.0036849976 77.38019562 42.76130676 5.67140198 92.053825378;
	setAttr ".vt[3320:3485]" 42.35528564 5.81492615 94.48679352 44.55046082 2.1051178 96.44275665
		 43.77586365 0.17021942 96.67990112 45.30639648 0.86103058 94.080879211 44.21395874 -1.015098572 94.26823425
		 39.25997925 -6.72992706 83.57321167 41.085449219 3.51851654 92.95082855 41.93078613 5.10032654 91.39405823
		 44.58042908 -2.93994141 74.58997345 44.31295776 -5.63477325 76.85062408 41.7461853 4.01914978 76.36727142
		 43.50674438 -0.29483032 74.3605423 40.75689697 4.065704346 94.21322632 44.97821045 -0.760849 82.62310791
		 46.1960907 0.6647644 82.34897614 43.6651001 5.67630768 83.69693756 45.18437195 -1.34448242 80.11598206
		 46.15756226 -0.031311035 79.64485931 41.81809998 4.35630035 76.84647369 41.2888031 -0.39636993 96.20496368
		 46.90505981 2.93411255 84.98480225 44.58589172 5.77465057 85.39591217 43.65896606 5.74647522 85.36278534
		 43.40304565 2.092063904 84.20706177 43.73538208 -0.36620331 84.42495728 43.82470703 -2.67054749 85.7052536
		 47.13400269 -2.45348358 86.26191711 47.72402954 0.29902649 85.31736755 39.32035828 -6.30326748 83.28765106
		 44.74664307 -1.61736298 75.040374756 44.14306641 -2.7286911 75.66303253 46.2795105 0.27306366 80.91778564
		 45.1388855 -1.074226379 81.33015442 41.38665771 -1.58521271 94.33583069 39.80381775 1.51515186 97.064666748
		 42.79652405 6.025718689 96.9258728 39.91279602 4.63549042 96.090820313 45.7399292 2.75463867 92.76583862
		 43.74473572 2.81407928 98.43084717 41.73292542 6.16552734 96.40136719 43.05015564 0.99086761 98.70379639
		 39.99708939 -2.7749095 91.33638763 45.63696289 4.32982635 90.1612854 46.82737732 3.099998474 86.22460938
		 45.85951233 4.36629486 88.77294159 44.55648804 5.83312225 86.26455688 46.3356781 1.48943329 90.61521149
		 46.66333008 1.14650726 89.27656555 45.9611969 -0.65090942 91.28614807 46.31710815 -1.25104523 89.86882782
		 47.4347229 0.57430267 86.57347107 46.93960571 -2.087989807 87.38435364 42.32861328 5.40380859 88.98259735
		 41.85968018 3.69873047 88.24905396 43.16094971 5.97367859 89.3848114 43.33326721 6.030075073 88.14087677
		 42.14758301 3.57914734 87.39173889 43.60256958 5.8082428 86.1605072 42.36196899 -0.35322571 87.55203247
		 42.57048035 0.49464417 87.46813202 43.27108765 -0.11937714 85.5968399 41.96731567 0.23567963 88.46853638
		 42.22183228 0.97716522 88.5018158 42.33578491 2.54510498 87.36432648 42.97654724 2.23223877 85.42540741
		 41.95225525 2.81377411 88.31082153 44.84945679 -2.70502472 90.13465881 45.049026489 -3.39935303 87.75176239
		 40.20655823 -1.62938166 92.32289124 40.21490479 0.63568878 92.056289673 40.72326279 0.54813451 94.25333405
		 40.39408875 2.79400635 94.45294189 40.19729996 1.34462035 96.18232727 41.81494141 -4.28890991 86.14448547
		 42.2220459 -3.41674805 88.15122986 42.737854 -3.89730835 89.56594849 41.73744202 -1.96537018 88.30266571
		 40.91381836 -2.15536499 88.38594055 40.42103577 -3.76364899 86.086929321 40.79176331 -2.71468353 87.97117615
		 40.59910583 -5.11500549 89.88915253 40.75126648 -4.61752319 91.047264099 40.1865387 -6.21870422 87.13871002
		 42.47045898 -4.18304443 90.14157867 39.50311279 -3.41920471 90.067008972 40.57531738 -4.43077087 84.42236328
		 40.098846436 -5.58916473 83.29327393 40.94920349 -3.81908417 86.053489685 41.60458374 -5.91815948 84.83046722
		 38.93391418 -5.27134705 84.74699402 39.18304443 -4.47232819 86.44959259 39.62696838 -5.522789 83.34098816
		 41.79052734 -5.72068787 86.71045685 41.4425354 -6.30392456 85.054672241 38.89865112 -5.66512299 85.027786255
		 45.349823 -1.71539307 74.94542694 45.6164093 -3.15013885 75.57022858 45.17173767 -2.68280792 74.76399231
		 46.2678833 -1.83825684 76.80731201 44.44595337 -3.40090942 75.87814331 44.78813171 -3.54734802 75.091903687
		 45.67770386 -2.98935699 77.4223175 46.54611206 -0.59275055 78.17227173 46.80966187 -1.38916779 78.45596313
		 46.91203308 -0.20478821 79.68086243 47.14993286 -1.88124847 80.33306122 46.12327576 -2.6257782 79.019012451
		 45.52488708 -2.16616821 80.39211273 47.50115967 -0.44882965 82.16284943 47.21636963 -1.52947235 81.66325378
		 47.047027588 0.5343399 82.6446228 47.1686554 -1.27749634 83.34086609 46.37579346 -1.78224182 82.47486877
		 45.55265808 -1.87266541 81.64321136 46.14164734 -1.82940674 83.66558075 45.33355713 -1.58275604 82.96647644
		 44.64059448 2.63505554 81.40509796 45.28662109 3.080200195 81.45870972 45.19296265 2.70244598 79.77867889
		 44.52963257 2.82157135 82.26428986 44.98587036 3.55844879 83.069618225 46.10830688 3.2919693 82.60453033
		 46.72247314 2.30426025 81.53028107 46.51443481 2.00025177002 79.84992218 46.71194458 1.5622406 82.42494202
		 45.17382813 0.98821259 81.48200226 45.10003662 1.15971375 82.18920135 46.06854248 0.94708252 82.67705536
		 44.59542847 -3.73004913 82.60187531 44.57278442 -3.53104401 83.29753113 45.22006226 -2.91149902 82.03187561
		 45.41166687 -4.91409302 83.34246063 45.39233398 -4.69966888 84.066665649 45.14677429 -2.76209259 82.75847626
		 45.18156433 -3.83529663 86.71802521 46.94075012 -2.96337128 82.18041229 46.93275452 -2.66970062 82.89918518
		 44.31689453 5.83403015 81.82141113 44.18557739 5.7591095 81.035064697 44.45953369 5.73390198 83.62249756
		 45.31838989 4.25505829 83.18325806 44.52392578 3.7259903 81.70245361 44.35971069 3.68350983 80.97812653
		 43.9836731 3.7416687 82.97698975 44.66334534 -5.11904907 81.31036377 46.10778809 -5.38446808 81.063346863
		 45.27851868 -3.45578766 80.47653198 45.68862915 -3.76969147 79.20717621 46.67089844 -3.6582489 80.37227631
		 46.1937561 -5.041183472 79.46764374 43.53237915 3.38492584 78.57268524 44.28172302 1.58266449 77.85493469
		 44.75865173 2.0210495 77.6217804 44.490448 1.79592133 76.89746094 44.53649902 2.23053741 79.86654663
		 45.85365295 1.36567688 77.63462067 45.57406616 1.15649414 76.8955307 44.79493713 0.20296478 78.23420715
		 45.085189819 0.66029358 80.1554184 43.79957581 -5.45809937 77.10303497 43.78143311 -5.93979645 77.88961792
		 44.19874573 -6.24393463 77.26251984 44.97555542 -6.28770447 77.71391296 44.49189758 -5.36070251 79.97898865
		 45.74642944 -5.77603149 79.74097443 44.84088135 -4.46482086 77.21878052;
	setAttr ".vt[3486:3651]" 44.55490112 -4.9131546 76.77931976 45.36860657 -5.60366821 77.46072388
		 44.95828247 -5.69732666 76.94869232 42.36099243 4.52368927 76.64086151 42.1781311 4.17514038 76.33678436
		 42.9715271 3.48108673 76.6302948 42.34675598 3.028129578 76.37321472 42.13819885 2.83054352 77.045555115
		 42.96755981 0.50926208 75.12315369 43.43707275 0.95547485 74.87020111 43.28132629 0.4608078 74.37602997
		 44.046096802 1.35464478 77.16358185 44.59844971 0.36136627 74.7927475 44.14883423 0.022781372 74.32102203
		 43.038970947 -0.43715668 74.76222229 43.61077881 -0.86296844 75.5069809 43.90962219 -0.87883759 74.7082901
		 44.56892395 -0.046379089 77.56719208 43.76907349 5.62312317 92.51608276 45.27690125 3.79048157 93.13519287
		 42.53692627 5.65971375 93.33950043 43.42814636 5.72494507 94.95632935 44.55844116 3.46875763 96.090820313
		 41.37239075 5.18398285 94.19576263 42.11352539 5.99245453 95.47131348 44.14137268 2.48220825 97.43563843
		 44.29006958 0.98771667 96.6315918 44.9556427 1.60361481 95.33436584 43.4413147 0.61493683 97.71118164
		 43.01449585 -0.29801941 96.59629059 44.023483276 -0.36360931 95.53549194 44.90762329 -0.18510437 94.2333374
		 45.52688599 1.94701385 93.65740967 43.29994202 -1.57167053 94.27758026 44.64884949 -2.28355408 91.47932434
		 39.72155762 -6.90607452 83.52603149 40.7204895 2.092727661 93.13248444 41.60131836 -0.34062958 88.45201874
		 39.69551086 -0.59560394 91.11286163 44.10173035 -2.97769165 74.96839905 44.53749084 -2.1548996 74.50760651
		 41.55612183 3.6996994 76.65142822 40.37362671 4.38890076 95.19596863 45.30307007 0.19081879 82.36216736
		 45.13645935 -0.91134644 81.97363281 46.27581787 0.45665741 81.62760162 43.024551392 5.19933319 85.167099
		 43.083984375 5.13484192 83.63122559 43.55781555 5.65445709 82.014984131 45.38076782 -0.42250061 79.80567169
		 45.11402893 -1.69631958 78.79033661 45.86462402 -0.45315552 78.22047424 42.95095825 4.87124634 81.42411041
		 43.45167542 5.5482254 81.26862335 42.61526489 4.95288849 78.62228394 44.7205658 -2.12869263 77.26911926
		 45.378479 -0.97515106 76.63291931 41.041290283 -0.16181946 97.092010498 47.2691803 1.61206818 85.041984558
		 43.31201172 -2.25878906 86.61092377 39.82699585 -6.51758814 83.17802429 44.22369385 -1.98885345 75.32965088
		 45.24588013 -0.85405731 78.46835327 41.48937988 3.84534454 77.046791077 43.050323486 4.98120117 82.12795258
		 39.50537109 3.37272644 96.31051636 40.69908142 0.028770447 97.97817993 43.73051453 4.013183594 98.053520203
		 40.65716553 5.66146088 96.09488678 43.52471924 1.79395294 98.64250183 42.34146118 0.44269562 98.59063721
		 42.15180969 -0.99012756 87.78520203 42.95748901 -3.085731506 88.43011475 39.42227173 -1.82610321 90.28003693
		 41.0090789795 -3.64455414 92.17998505 42.99008179 -3.54838562 90.83914185 43.19976807 -3.429245 89.92692566
		 -17.79673767 2.98776722 9.015692711 -20.73124695 4.24382782 5.40858173 -17.95724487 4.97614002 10.83167076
		 -15.76335144 2.55603409 9.6862936 -15.75445557 4.53497219 11.44974804 -13.52745056 4.0604949 10.93566895
		 -14.032958984 2.10761881 9.27935219 -11.27233887 3.90175796 6.12546158 -18.083358765 1.57064104 7.75572109
		 -16.088699341 1.22728682 8.30102158 -14.50619507 0.74472189 7.92813873 -11.6774292 0.41304493 5.56756115
		 -20.22711182 -6.67800999 4.95276499 -18.26313782 -7.63995171 5.30637217 -16.25863647 -7.90061426 5.11731911
		 -22.056106567 -9.93552208 3.30708408 -20.88131714 -11.74760628 4.017252922 -18.86404419 -13.2062397 4.47094345
		 -16.77827454 -13.27514362 4.33218479 -15.077575684 -12.23967361 3.98664474 -11.3369751 1.82375002 6.035117149
		 -12.26533508 -3.28176498 4.41121817 -13.090042114 -7.48293018 3.76044464 -13.99172974 -9.82329273 3.79679871
		 -14.9107666 -12.60002136 1.69708443 -13.34367371 -9.75354481 1.29218674 -16.75341797 -10.50407791 5.084051132
		 -18.61360168 -10.30832481 5.27436256 -20.46328735 -9.3150425 4.9297781 -20.10862732 5.99593306 6.054690361
		 -21.73149109 1.085342884 4.16341829 -21.17674255 2.76250291 4.79999924 -22.36364746 -7.87633896 2.93102646
		 -22.49542999 -4.90291977 2.79896736 -11.78349304 5.63513756 2.45982742 -11.18083191 7.39409924 2.50061941
		 -10.42488098 13.63657475 2.42421436 -11.39526367 15.69027519 2.40758324 -16.15766907 17.062601089 6.85899162
		 -13.74575806 16.92737007 2.42396736 -18.053344727 15.4684906 2.42113113 -20.12419128 8.6264534 5.91176939
		 -18.67579651 -0.037187099 6.74336338 -19.42106628 -1.88140488 5.79975033 -16.6335907 -0.61898708 7.2692976
		 -17.32537842 -2.64109755 6.31690216 -15.46351624 -2.9659214 6.028949738 -12.033111572 -1.36561918 5.003118515
		 -22.17582703 -0.6557858 3.52014637 -10.47462463 13.52544022 6.31625986 -9.77801514 10.96015549 5.91239119
		 -11.78050232 16.100214 6.83746433 -13.69639587 17.29140091 6.91824341 -17.81057739 15.35217476 6.32204819
		 -22.17502594 -10.3332653 1.52000618 -20.82235718 -12.17220116 1.70062256 -18.87960815 -13.54589462 1.92025375
		 -16.88703918 -13.59391022 1.91135406 -12.18699646 3.61397982 2.33423042 -11.51400757 -3.17243004 1.17522621
		 -12.048080444 -1.20989788 1.44752026 -20.53407288 7.81377888 2.34482813 -21.77330017 3.44814301 1.97103739
		 -11.018325806 6.40538788 6.044090271 -19.24020386 13.1386776 5.80873156 -20.3760376 9.67158508 2.39512825
		 -12.23539734 1.32576513 2.068908453 -22.78577423 -0.5260601 1.1223855 -16.15687561 16.79444313 2.42371559
		 -22.48233795 -10.50424767 0.48429585 -18.72322083 -11.55988121 0.58206177 -21.038223267 -12.47289848 0.765028
		 -18.98951721 -13.93388176 1.0036296844 -16.8470459 -14.080877304 0.99271202 -14.65759277 -12.98620224 0.74350739
		 -12.93717957 -9.95874691 0.29811096 -11.79429626 -7.49906063 0.1323843 -11.55551147 -1.23637724 1.4305115e-06
		 -11.97622681 3.84615707 1.29302037 -11.43313599 5.70376682 1.41501844 -10.82502747 7.33672476 1.51993525
		 -9.9342041 11.34029102 1.4667244 -10.09362793 13.79575157 1.40669727 -11.093963623 15.91566277 1.3674221
		 -13.63116455 17.25298691 1.37891865 -16.25015259 17.11166954 1.36919594 -18.24488831 15.74875259 1.37979031
		 -19.66896057 13.76066971 1.38127422 -20.684021 9.78762245 1.29555845;
	setAttr ".vt[3652:3817]" -21.43084717 5.83222389 1.093599319 -22.70877075 1.28299379 4.7683716e-07
		 -23.012496948 -7.96882153 0.19753361 -12.22244263 -7.36198044 1.10460377 -10.2147522 11.28070641 2.45714998
		 -19.41122437 13.54417992 2.41157246 -21.16473389 5.5655489 2.16366148 -22.38157654 1.1607089 1.39481139
		 -22.97329712 -4.82950974 0.98589134 -22.65563965 -7.96086502 1.20056152 -23.35830688 -4.86817741 1.7003556e-17
		 -23.13674927 -0.46356487 -9.5367432e-07 -22.079994202 3.60277891 0.78847337 -20.87805176 7.94818878 1.27005029
		 -20.72886658 9.73968315 -4.7683716e-07 -19.67086792 13.76218033 -9.5367432e-07 -18.25219727 15.75289917 -9.5367432e-07
		 -16.27166748 17.011869431 -9.5367432e-07 -13.64543152 17.16941261 -9.5367432e-07
		 -11.089202881 15.83264256 -9.5367432e-07 -10.046737671 13.80438232 -9.5367432e-07
		 -9.89028931 11.32626247 -4.7683716e-07 -10.73449707 7.32509899 -8.3446503e-07 -11.93888855 1.38308907 0.89967132
		 -11.072036743 -3.2137413 -9.5367432e-07 -15.66558838 9.38150311 -9.5367432e-07 -14.2902832 14.57194901 -3.4409068e-22
		 -14.84378052 12.40522289 -1.2407174e-22 -16.12670898 7.82873821 1.40738034 -16.33352661 5.21301365 1.19410741
		 -16.74067688 2.40742302 0.83216047 -17.065612793 -0.0032029059 4.7683716e-07 -17.21992493 -1.80525303 -9.5367432e-07
		 -17.93144226 -6.17931747 -4.3353975e-18 -18.43612671 -8.8761692 0.23943615 -16.1053772 7.85027409 -9.5367432e-07
		 -11.28675842 5.66314411 -9.4622374e-07 -20.84802246 7.95961189 -1.1920929e-06 -17.64633179 5.1482048 10.53369045
		 -18.77284241 5.27443314 8.54080009 -15.66897583 4.75376701 11.10041618 -13.6456604 4.30359077 10.57471275
		 -12.41423035 3.77243519 8.93078709 -19.08946228 7.98424625 7.66492462 -11.57875061 10.81020355 7.87929964
		 -12.74725342 14.76229095 8.9776783 -14.20315552 15.78467178 9.2663269 -15.96696472 15.63475609 9.02381897
		 -17.1134491 14.31337357 8.43894768 -12.039627075 5.99496603 8.10611629 -11.93858337 12.91168022 8.36042595
		 -18.087402344 12.55306435 7.85078096 -15.018997192 -1.021837234 6.88962936 4.64118958 -0.74177551 151.22436523
		 3.71453857 0.80783081 153.14935303 8.56665039 3.41430664 152.74635315 6.3669281 4.30830383 154.3923645
		 9.36050415 9.033996582 155.80235291 6.72505188 8.65142822 156.68135071 5.33618164 14.062759399 155.75836182
		 4.45750427 12.077178955 157.017364502 5.67454529 -5.64804077 145.24635315 10.9210968 -3.18577576 146.47436523
		 14.74980164 3.2052002 151.42036438 15.146698 8.84786987 153.23335266 19.54400635 3.99659729 149.93135071
		 14.43730164 -1.4302063 146.49035645 18.89569092 0.24832153 146.095352173 12.97109985 -7.18914795 138.22836304
		 15.8585968 -4.6739502 139.024353027 13.51890564 -5.88874817 132.74736023 15.96170044 -2.27706909 133.90835571
		 18.84700012 -1.16409302 139.60336304 20.76080322 -0.0088195801 138.86135864 22.397995 1.2321167 143.79736328
		 23.20349121 4.65890503 146.78135681 17.89649963 11.17954254 132.52836609 18.96240234 10.90879059 132.80136108
		 17.081695557 15.99515533 138.89035034 19.062393188 15.075706482 137.31335449 13.98219299 15.14605713 148.94934082
		 10.64120483 15.98205566 149.98535156 19.65750122 8.75926208 151.11535645 17.49809265 14.42466736 147.037353516
		 23.10559082 8.85519409 147.48635864 21.24079895 13.3964386 143.67236328 6.76489258 -10.27044678 137.61535645
		 7.15539551 -10.58204651 131.73936462 22.77479553 1.20800781 135.10536194 25.55609131 3.0079498291 138.21536255
		 26.80819702 6.039810181 139.34535217 26.75309753 9.54747009 139.26835632 24.51919556 13.10269165 137.77235413
		 19.51730347 10.73986053 130.68336487 21.7749939 14.091003418 133.72135925 14.013397217 17.83985138 139.92036438
		 10.71350098 18.96185303 140.4213562 5.78625488 17.95385742 150.31535339 5.69517517 19.65615082 140.13935852
		 26.98899841 2.046356201 126.97135925 29.98120117 3.80106354 129.54936218 31.23660278 6.65374756 130.47135925
		 31.18899536 9.94506073 130.36335754 29.18280029 13.29890442 128.98335266 22.7796936 11.50351715 122.85735321
		 25.93609619 14.069877625 125.8493576 26.16619873 5.42879486 115.14636993 30.90840149 1.63854218 118.51136017
		 34.42500305 3.24570465 120.77935791 35.92349243 6.2153244 121.6633606 35.94569397 9.70856476 121.55935669
		 33.94400024 13.17390442 120.12535858 26.4230957 11.39456177 115.17835999 29.97869873 14.23495483 117.47635651
		 39.88670349 -1.79668427 101.81735992 43.77529907 -0.40092468 102.59436035 45.79299927 2.38423157 102.35434723
		 46.23840332 5.7313385 101.42235565 44.59799194 9.022926331 99.80136108 36.75320435 7.5495224 97.71615601
		 40.72729492 10.042915344 98.195961 37.73770142 1.87219238 98.2985611 40.87480164 -0.7971344 100.12535858
		 43.6322937 0.22263336 100.67235565 45.086303711 2.17185211 100.47335815 45.45750427 4.52082062 99.78305817
		 44.37199402 6.93613434 98.59976196 38.57879639 5.91992188 97.21525574 41.54100037 7.76990509 97.4683609
		 41.79440308 -1.77922821 97.09954834 44.71170044 -0.73432922 97.56195831 46.19450378 1.24191284 97.33055878
		 46.56520081 3.63812256 96.653862 45.44689941 6.13442993 95.52516174 39.48620605 5.087753296 94.19935608
		 42.49220276 6.98271179 94.42375183 34.41290283 2.56056213 100.80036163 38.7164917 -1.38352203 104.18635559
		 42.74020386 0.12672424 105.62136078 44.85758972 3.27437592 105.61936188 45.25650024 6.98462677 104.62735748
		 43.3677063 10.33929443 102.68635559 35.59320068 8.38771057 99.48005676 39.47810364 11.16054535 100.52735901
		 7.62313843 -11.55273438 121.016357422 15.050201416 -7.68374634 114.69635773 18.0043945313 -2.81774902 115.14936066
		 17.55569458 7.95599365 115.077362061 14.069396973 16.036651611 132.91035461 10.19689941 18.082855225 133.37036133
		 13.97099304 12.27858734 115.0073547363 8.78593445 15.0092010498 114.94935608 7.91604614 -11.68858337 107.98934937
		 15.43930054 -8.24664307 108.37036133 18.67329407 -3.13798523 108.73535919 18.94529724 3.10274506 109.028358459
		 17.82899475 7.29458618 109.18135834 14.18780518 11.94418335 109.76835632 8.67097473 15.15126038 109.78135681
		 5.090377808 18.27625275 132.9153595 3.84199524 15.050315857 114.55136108 3.77450562 15.19525909 109.64335632
		 0.3182373 -6.12783813 144.54536438 7.43887329 -10.95932007 126.76835632 14.068405151 -6.40964508 127.20035553
		 16.50920105 -2.29244995 127.71736145;
	setAttr ".vt[3818:3983]" 18.064605713 3.58805084 128.19035339 17.44309998 9.8445816 127.032348633
		 13.85760498 14.0496521 126.69136047 9.4311676 16.18225098 126.52735901 4.35243225 16.17525482 125.93735504
		 8.44889832 -11.3559494 98.31045532 16.24450684 -6.88528442 99.57546234 20.19952393 -1.94845581 100.9173584
		 18.34339905 8.22106934 103.43735504 14.522995 12.99858093 104.44935608 8.85054016 16.33430481 105.067359924
		 3.81269836 16.47341156 104.90535736 7.84773254 -10.41202545 98.14485931 15.093170166 -6.23723602 99.30215454
		 18.99319458 -1.48678589 100.53936005 18.50270081 4.15330505 102.0093612671 17.080230713 8.0099411011 102.94335938
		 13.52560425 12.52485657 103.92235565 8.224823 15.61846161 104.49835205 3.53808594 15.76889801 104.42935944
		 7.93121338 -10.41950226 93.13975525 15.58802795 -6.86645508 94.34015656 20.48835754 -0.43589783 95.64465332
		 17.70001221 9.28858185 98.10785675 14.0574646 15.048126221 99.098251343 8.26025391 17.1203537 99.68286133
		 3.52456665 17.25385284 99.55185699 35.4611969 0.044342041 109.95635986 39.25689697 1.45622253 111.90635681
		 41.11320496 4.57210541 112.44435883 41.31800842 8.27411652 111.96135712 39.30659485 11.65381622 110.32235718
		 31.82460022 9.84844208 106.15635681 35.4309082 12.61656189 107.90335083 8.61654663 -12.12722778 102.6693573
		 16.52659607 -8.14994812 103.62435913 20.11828613 -2.85335541 104.61235809 18.60620117 7.75424194 106.35035706
		 14.72940063 12.60142517 106.98935699 8.96154785 15.98344421 107.34635925 3.87747192 16.11515045 107.23735809
		 24.99229431 1.89013672 131.16136169 27.77990723 3.68708801 133.93136597 28.96879578 6.54977417 134.89935303
		 28.89990234 9.83647156 134.78735352 26.84919739 13.16503143 133.39135742 21.071990967 11.31337738 126.72135162
		 23.97340393 13.88561249 129.93235779 7.79592896 -11.36248016 114.25735474 14.55349731 -7.027252197 121.43936157
		 17.23179626 -2.52642822 121.88435364 18.32789612 3.3496933 122.27536011 17.418396 8.9034729 121.7433548
		 13.85020447 13.11203766 121.65435028 9.079681396 15.49884796 121.61734772 4.071365356 15.53164673 121.24435425
		 28.92320251 2.0021133423 122.71535492 32.18930054 3.69540405 125.13436127 33.55680847 6.58913422 126.038360596
		 33.54330444 9.95978546 125.94536591 31.55070496 13.37853241 124.55435944 24.51730347 11.59186554 118.98435974
		 27.90139771 14.30397797 121.65634918 33.13040161 0.98665619 114.19435883 36.81079102 2.46739197 116.32936096
		 38.50669861 5.50984955 117.047355652 38.63819885 9.11758423 116.75135803 36.63960266 12.54816437 115.20336151
		 29.089691162 10.7822876 110.59835815 32.6802063 13.60470581 112.62935638 32.77130127 3.32444763 103.76435852
		 37.085098267 -0.66846466 107.074356079 40.99520874 0.79239655 108.76935577 42.97999573 3.92593384 109.040359497
		 43.28170776 7.6324234 108.30535889 41.33070374 10.99968719 106.51735687 33.70349121 9.1187973 102.82634735
		 37.44779968 11.89123535 104.22535706 18.13900757 3.57954407 133.60336304 18.82119751 5.18916321 133.30836487
		 19.2164917 5.32421875 131.039352417 22.20059204 5.18447113 122.86135864 35.53129578 2.023681641 99.15345764
		 38.60350037 1.0052642822 95.28785706 18.63909912 3.18437195 115.51835632 19.61064148 4.13002777 102.43635559
		 20.038208008 5.3066864 97.13256073 31.13510132 4.088401794 106.71534729 19.88169861 3.5477066 105.68235779
		 20.3421936 4.95792389 126.85335541 24.12240601 5.45101166 118.96035767 28.64190674 4.97416687 110.88935852
		 -0.013900757 13.15501404 156.99536133 -0.013900757 14.85281372 114.34034729 4.64027405 -0.3065033 158.010437012
		 7.12124634 3.92976379 160.11436462 7.51298523 8.46142578 162.55636597 5.002166748 12.01083374 162.90235901
		 0.31800842 -10.074142456 137.38435364 0.31637573 0.040710449 152.79275513 0.31802368 -1.45033264 150.64335632
		 -0.013900757 18.14324951 150.28935242 0.31526184 -12.58732605 120.76835632 0.31335449 -12.69187927 114.018356323
		 -0.013900757 15.60381317 125.64636993 0.31546021 -12.32131958 97.17079163 -0.013900757 15.76094818 104.35434723
		 0.31820679 -10.65093994 130.99835205 0.31239319 -13.14978027 107.81035614 0.31723022 -11.62451935 126.44635773
		 0.31542969 -12.64364624 97.83016205 0.31266785 -13.66293335 102.27536011 0.31585693 -10.5631485 92.69915771
		 0.5153656 -3.40899658 156.030227661 0.93421936 -6.072647095 144.62634277 1.059402466 -10.096740723 137.41035461
		 1.10447693 -10.64294434 131.083358765 0.70716858 0.080001831 152.85675049 0.81520081 -1.36883545 150.70936584
		 1.13621521 -11.54802704 126.48336029 1.15567017 -12.46833038 120.79735565 1.17384338 -12.53897858 114.046356201
		 1.18681335 -12.98178101 107.83036041 1.26760864 -13.48632813 102.32035828 1.25079346 -12.4937439 97.8854599
		 1.1816864 -12.18021393 97.21999359 1.19161987 -10.42124176 92.74985504 0.81362915 -3.1378479 156.28955078
		 1.47016907 -6.56234741 145.055358887 1.0652771 -0.070037842 152.92636108 1.90429688 -12.1100235 126.65935516
		 2.037811279 -13.040481567 114.12635803 2.16221619 -12.74064636 97.41616058 1.16882324 -2.73442078 156.63349915
		 1.68075562 -10.73484802 137.62335205 1.78363037 -11.27104187 131.28236389 1.26748657 -1.78709412 151.19035339
		 1.9778595 -13.00043487549 120.90335846 2.073318481 -13.46968079 107.88135529 2.22605896 -13.95703125 102.24436188
		 2.035461426 -11.63334656 97.33695984 2.047958374 -10.69641113 92.74874878 -0.013900757 16.46173096 104.81135559
		 -0.013900757 15.1049118 109.58634949 -0.013900757 13.13224792 162.87734985 3.39198303 1.37037659 152.88572693
		 5.86364746 4.68066406 154.079223633 6.13182068 8.57078552 156.31863403 4.099975586 11.5955658 156.6565094
		 38.1897583 2.22310638 98.70167542 40.92218018 -0.11102295 100.25576782 43.20849609 0.77896881 100.64273071
		 44.4415741 2.44245148 100.43994904 44.7618103 4.46773529 99.83961487 43.84654236 6.54966736 98.8538208
		 38.95495605 5.73681641 97.77648163 41.47883606 7.27826691 97.9627533 41.9552002 -1.11818695 96.93471527
		 44.33283997 -0.22145081 97.27311707 45.58178711 1.43969727 97.055847168 45.9098053 3.48065948 96.46501923
		 44.99371338 5.60121918 95.50767517 40.027267456 4.72795105 94.45970917 42.54431152 6.31140137 94.61511993
		 0.31674194 -5.5401001 144.16516113 7.66610718 -9.78166962 93.25328064;
	setAttr ".vt[3984:4149]" 15.1178894 -6.36734772 94.41773987 19.79333496 -0.22486877 95.65618896
		 17.11178589 8.99398041 98.0050735474 13.6000061 14.54155731 98.95079041 8.082168579 16.46651459 99.50740051
		 3.52059937 16.57646942 99.37541199 39.24942017 1.25048065 95.40040588 19.30844116 5.22922516 97.081733704
		 -0.013900757 12.55049133 156.64245605 4.1557312 0.23332214 158.33848572 6.45043945 4.10279846 160.21469116
		 6.8621521 8.21620178 162.63572693 4.60745239 11.43380737 162.93743896 0.34454346 -9.40419006 137.18322754
		 0.29089355 0.68962097 152.53146362 0.29258728 -0.91957092 150.18768311 0.22015381 -11.9001236 120.67507172
		 0.19294739 -12.005241394 113.95492554 0.19711304 -11.69004822 97.44916534 0.32333374 -9.96658325 130.85131836
		 0.18156433 -12.46304321 107.77459717 0.25976563 -10.94676208 126.28100586 0.1971283 -12.015914917 98.11644745
		 0.1816864 -12.98740387 102.40383911 0.19720459 -9.92111206 92.95158386 -0.006362915 -3.14813232 156.57533264
		 1.00099182129 0.68841553 152.67372131 1.30715942 -9.77889252 93.0028991699 0.42956543 -2.83979797 156.83499146
		 1.39900208 0.51179504 152.72610474 0.91659546 -2.5244751 157.15081787 2.03805542 -10.040855408 92.92723846
		 -0.013900757 16.56543732 99.29109192 -0.013900757 12.43226624 162.8800354 -8.5944519 3.41430664 152.74635315
		 -6.39472961 4.30830383 154.3923645 -3.74234009 0.80783081 153.14935303 -4.66899109 -0.74177551 151.22436523
		 -9.38830566 9.033996582 155.80235291 -6.75285339 8.65142822 156.68135071 -5.36398315 14.062759399 155.75836182
		 -4.48530579 12.077178955 157.017364502 -5.7023468 -5.64804077 145.24635315 -10.94889832 -3.18577576 146.47436523
		 -14.77760315 3.2052002 151.42036438 -15.17449951 8.84786987 153.23335266 -14.46510315 -1.4302063 146.49035645
		 -18.92349243 0.24832153 146.095352173 -19.57180786 3.99659729 149.93135071 -15.88639832 -4.6739502 139.024353027
		 -12.99890137 -7.18914795 138.22836304 -15.98950195 -2.27706909 133.90835571 -13.54670715 -5.88874817 132.74736023
		 -18.87480164 -1.16409302 139.60336304 -18.16680908 3.57954407 133.60336304 -20.78860474 -0.0088195801 138.86135864
		 -18.84899902 5.18916321 133.30836487 -22.42579651 1.2321167 143.79736328 -23.23130035 4.65890503 146.78135681
		 -17.92430115 11.17954254 132.52836609 -18.99020386 10.90879059 132.80136108 -19.090194702 15.075706482 137.31335449
		 -17.10949707 15.99515533 138.89035034 -19.68530273 8.75926208 151.11535645 -14.0099945068 15.14605713 148.94934082
		 -10.66900635 15.98205566 149.98535156 -5.8140564 17.95385742 150.31535339 -17.52589417 14.42466736 147.037353516
		 -23.13339996 8.85519409 147.48635864 -21.26860046 13.3964386 143.67236328 -6.79269409 -10.27044678 137.61535645
		 -1.70855713 -10.73484802 137.62335205 -1.49797058 -6.56234741 145.055358887 -7.18319702 -10.58204651 131.73936462
		 -1.81143188 -11.27104187 131.28236389 -22.80259705 1.20800781 135.10536194 -19.24429321 5.32421875 131.039352417
		 -25.58390045 3.0079498291 138.21536255 -26.83599854 6.039810181 139.34535217 -26.78089905 9.54747009 139.26835632
		 -24.54699707 13.10269165 137.77235413 -19.54510498 10.73986053 130.68336487 -21.80279541 14.091003418 133.72135925
		 -14.04119873 17.83985138 139.92036438 -10.74130249 18.96185303 140.4213562 -5.72297668 19.65615082 140.13935852
		 -20.36999512 4.95792389 126.85335541 -25.020103455 1.89013672 131.16136169 -27.80770111 3.68708801 133.93136597
		 -28.99659729 6.54977417 134.89935303 -28.92770386 9.83647156 134.78735352 -26.8769989 13.16503143 133.39135742
		 -21.09979248 11.31337738 126.72135162 -24.0012054443 13.88561249 129.93235779 -22.22840118 5.18447113 122.86135864
		 -24.15019989 5.45101166 118.96035767 -28.95100403 2.0021133423 122.71535492 -27.016799927 2.046356201 126.97135925
		 -32.21710205 3.69540405 125.13436127 -30.0090026855 3.80106354 129.54936218 -33.58460999 6.58913422 126.038360596
		 -31.2644043 6.65374756 130.47135925 -31.21679688 9.94506073 130.36335754 -33.57110596 9.95978546 125.94536591
		 -29.21060181 13.29890442 128.98335266 -31.57849884 13.37853241 124.55435944 -22.80750275 11.50351715 122.85735321
		 -24.54510498 11.59186554 118.98435974 -25.96389771 14.069877625 125.8493576 -27.92919922 14.30397797 121.65634918
		 -26.19400024 5.42879486 115.14636993 -28.66970062 4.97416687 110.88935852 -33.15820313 0.98665619 114.19435883
		 -30.936203 1.63854218 118.51136017 -36.83860016 2.46739197 116.32936096 -34.45280457 3.24570465 120.77935791
		 -38.53450012 5.50984955 117.047355652 -35.95130157 6.2153244 121.6633606 -38.66600037 9.11758423 116.75135803
		 -35.97349548 9.70856476 121.55935669 -36.66740417 12.54816437 115.20336151 -33.97180176 13.17390442 120.12535858
		 -26.45089722 11.39456177 115.17835999 -29.11750031 10.7822876 110.59835815 -30.0065002441 14.23495483 117.47635651
		 -32.70800018 13.60470581 112.62935638 -39.914505 -1.79668427 101.81735992 -35.55909729 2.023681641 99.15345764
		 -37.76550293 1.87219238 98.2985611 -40.90260315 -0.7971344 100.12535858 -43.80310059 -0.40092468 102.59436035
		 -43.66009521 0.22263336 100.67235565 -45.82080078 2.38423157 102.35434723 -45.11410522 2.17185211 100.47335815
		 -46.26620483 5.7313385 101.42235565 -45.48530579 4.52082062 99.78305817 -44.62580109 9.022926331 99.80136108
		 -44.39979553 6.93613434 98.59976196 -36.78100586 7.5495224 97.71615601 -38.6065979 5.91992188 97.21525574
		 -40.75509644 10.042915344 98.195961 -41.56880188 7.76990509 97.4683609 -38.63130188 1.0052642822 95.28785706
		 -41.82220459 -1.77922821 97.09954834 -44.73950195 -0.73432922 97.56195831 -46.2223053 1.24191284 97.33055878
		 -46.59300232 3.63812256 96.653862 -45.47470093 6.13442993 95.52516174 -39.51399994 5.087753296 94.19935608
		 -42.52000427 6.98271179 94.42375183 -38.74430084 -1.38352203 104.18635559 -34.44070435 2.56056213 100.80036163
		 -42.76800537 0.12672424 105.62136078 -44.88539124 3.27437592 105.61936188 -45.28430176 6.98462677 104.62735748
		 -43.39550018 10.33929443 102.68635559 -35.6210022 8.38771057 99.48005676 -39.50590515 11.16054535 100.52735901
		 -14.58129883 -7.027252197 121.43936157 -14.096206665 -6.40964508 127.20035553 -7.4666748 -10.95932007 126.76835632
		 -7.65093994 -11.55273438 121.016357422 -17.25959778 -2.52642822 121.88435364 -16.53700256 -2.29244995 127.71736145
		 -18.35569763 3.3496933 122.27536011 -18.092407227 3.58805084 128.19035339;
	setAttr ".vt[4150:4315]" -17.47090149 9.8445816 127.032348633 -17.44619751 8.9034729 121.7433548
		 -14.097198486 16.036651611 132.91035461 -10.22470093 18.082855225 133.37036133 -13.88540649 14.0496521 126.69136047
		 -9.45896912 16.18225098 126.52735901 -13.87800598 13.11203766 121.65435028 -9.10748291 15.49884796 121.61734772
		 -7.82373047 -11.36248016 114.25735474 -7.94384766 -11.68858337 107.98934937 -15.46710205 -8.24664307 108.37036133
		 -15.07800293 -7.68374634 114.69635773 -18.70109558 -3.13798523 108.73535919 -18.032196045 -2.81774902 115.14936066
		 -18.97309875 3.10274506 109.028358459 -18.66690063 3.18437195 115.51835632 -17.85679626 7.29458618 109.18135834
		 -17.58349609 7.95599365 115.077362061 -14.21560669 11.94418335 109.76835632 -13.99879456 12.27858734 115.0073547363
		 -8.69877625 15.15126038 109.78135681 -8.81373596 15.0092010498 114.94935608 -5.11817932 18.27625275 132.9153595
		 -4.38023376 16.17525482 125.93735504 -3.80230713 15.19525909 109.64335632 -3.86979675 15.050315857 114.55136108
		 -1.29528809 -1.78709412 151.19035339 -1.093078613 -0.070037842 152.92636108 -0.013900757 15.097320557 155.68635559
		 -0.013900757 19.078056335 139.75236511 -1.93209839 -12.1100235 126.65935516 -2.0056610107 -13.00043487549 120.90335846
		 -2.065612793 -13.040481567 114.12635803 -2.10112 -13.46968079 107.88135529 -0.013900757 17.55665588 132.57835388
		 -4.09916687 15.53164673 121.24435425 -0.013900757 15.14168549 121.031349182 -8.64434814 -12.12722778 102.6693573
		 -16.55439758 -8.14994812 103.62435913 -20.14608765 -2.85335541 104.61235809 -19.90950012 3.5477066 105.68235779
		 -18.63400269 7.75424194 106.35035706 -14.75720215 12.60142517 106.98935699 -8.98934937 15.98344421 107.34635925
		 -3.90527344 16.11515045 107.23735809 -2.25386047 -13.95703125 102.24436188 -16.27230835 -6.88528442 99.57546234
		 -8.47669983 -11.3559494 98.31045532 -7.87553406 -10.41202545 98.14485931 -15.12097168 -6.23723602 99.30215454
		 -20.22732544 -1.94845581 100.9173584 -19.020996094 -1.48678589 100.53936005 -19.63844299 4.13002777 102.43635559
		 -18.53050232 4.15330505 102.0093612671 -18.37120056 8.22106934 103.43735504 -17.10803223 8.0099411011 102.94335938
		 -14.55079651 12.99858093 104.44935608 -13.55340576 12.52485657 103.92235565 -8.87834167 16.33430481 105.067359924
		 -8.25262451 15.61846161 104.49835205 -3.84049988 16.47341156 104.90535736 -3.56588745 15.76889801 104.42935944
		 -2.1900177 -12.74064636 97.41616058 -2.063262939 -11.63334656 97.33695984 -7.95901489 -10.41950226 93.13975525
		 -15.61582947 -6.86645508 94.34015656 -20.51615906 -0.43589783 95.64465332 -20.066009521 5.3066864 97.13256073
		 -17.72781372 9.28858185 98.10785675 -14.085266113 15.048126221 99.098251343 -8.28805542 17.1203537 99.68286133
		 -3.55236816 17.25385284 99.55185699 -2.075759888 -10.69641113 92.74874878 -32.79910278 3.32444763 103.76435852
		 -37.11289978 -0.66846466 107.074356079 -35.48899841 0.044342041 109.95635986 -31.16290283 4.088401794 106.71534729
		 -41.023010254 0.79239655 108.76935577 -39.28469849 1.45622253 111.90635681 -43.0077972412 3.92593384 109.040359497
		 -41.14100647 4.57210541 112.44435883 -43.30950165 7.6324234 108.30535889 -41.34580994 8.27411652 111.96135712
		 -41.35850525 10.99968719 106.51735687 -39.33439636 11.65381622 110.32235718 -33.73130035 9.1187973 102.82634735
		 -31.85240173 9.84844208 106.15635681 -37.4756012 11.89123535 104.22535706 -35.45870209 12.61656189 107.90335083
		 -0.013900757 16.083465576 107.17235565 -1.29541016 -13.48632813 102.32035828 -0.34046936 -13.66293335 102.27536011
		 -0.3432312 -12.64364624 97.83016205 -1.27859497 -12.4937439 97.8854599 -0.013900757 17.24295807 99.46705627
		 -1.2016449 -12.53897858 114.046356201 -1.18347168 -12.46833038 120.79735565 -0.34306335 -12.58732605 120.76835632
		 -0.34115601 -12.69187927 114.018356323 -1.94203186 -2.96386719 156.41117859 -4.66807556 -0.3065033 158.010437012
		 -7.14904785 3.92976379 160.11436462 -7.54078674 8.46142578 162.55636597 -5.029968262 12.01083374 162.90235901
		 -1.087203979 -10.096740723 137.41035461 -0.96202087 -6.072647095 144.62634277 -0.34603882 -6.12783813 144.54536438
		 -0.34580994 -10.074142456 137.38435364 -1.13227844 -10.64294434 131.083358765 -0.3460083 -10.65093994 130.99835205
		 -0.84300232 -1.36883545 150.70936584 -0.73497009 -0.042190552 152.9130249 -0.34417725 -0.081481934 152.84902954
		 -0.3458252 -1.45033264 150.64335632 -1.16401672 -11.54802704 126.48336029 -0.34503174 -11.62451935 126.44635773
		 -1.21461487 -12.98178101 107.83036041 -0.3401947 -13.14978027 107.81035614 -0.34326172 -12.32131958 97.17079163
		 -1.20948792 -12.18021393 97.21999359 -1.21942139 -10.42124176 92.74985504 -0.34365845 -10.5631485 92.69915771
		 -1.60136414 -3.20350647 156.22117615 -1.31138611 -3.6113739 155.80978394 -3.41978455 1.37037659 152.88572693
		 -5.89144897 4.68066406 154.079223633 -6.15962219 8.57078552 156.31863403 -4.1277771 11.5955658 156.6565094
		 -38.21755981 2.22310638 98.70167542 -40.94998932 -0.11102295 100.25576782 -43.23629761 0.77896881 100.64273071
		 -44.46937561 2.44245148 100.43994904 -44.78961182 4.46773529 99.83961487 -43.87434387 6.54966736 98.8538208
		 -38.9827652 5.73681641 97.77648163 -41.50663757 7.27826691 97.9627533 -39.27721405 1.25048065 95.40040588
		 -41.98300171 -1.11818695 96.93471527 -44.36064148 -0.22145081 97.27311707 -45.60958862 1.43969727 97.055847168
		 -45.93760681 3.48065948 96.46501923 -45.021514893 5.60121918 95.50767517 -40.05506897 4.72795105 94.45970917
		 -42.57211304 6.31140137 94.61511993 -1.42680359 0.51179504 152.72610474 -7.69390869 -9.78166962 93.25328064
		 -15.14569092 -6.36734772 94.41773987 -19.82113647 -0.22486877 95.65618896 -19.33624268 5.22922516 97.081733704
		 -17.1395874 8.99398041 98.0050735474 -13.62780762 14.54155731 98.95079041 -8.10997009 16.46651459 99.50740051
		 -3.54840088 16.57646942 99.37541199 -2.065856934 -10.040855408 92.92723846 -0.22492981 -12.015914917 98.11644745
		 -0.20948792 -12.98740387 102.40383911 -0.24795532 -11.9001236 120.67507172 -0.2207489 -12.005241394 113.95492554
		 -1.55267334 -2.54356384 157.04914856 -4.18353271 0.23332214 158.33848572 -6.47824097 4.10279846 160.21469116
		 -6.88995361 8.21620178 162.63572693 -4.63525391 11.43380737 162.93743896 -0.34454346 -5.5401001 144.16516113
		 -0.37234497 -9.40419006 137.18322754 -0.35113525 -9.96658325 130.85131836;
	setAttr ".vt[4316:4355]" -0.31869507 0.56742859 152.58773804 -1.028793335 0.5662384 152.73001099
		 -0.32038879 -0.91957092 150.18768311 -0.28756714 -10.94676208 126.28100586 -0.20936584 -12.46304321 107.77459717
		 -0.22491455 -11.69004822 97.44916534 -1.33496094 -9.77889252 93.0028991699 -0.2250061 -9.92111206 92.95158386
		 -0.92063904 -3.22438049 156.41023254 -1.23706055 -2.87670898 156.73907471 1.13728333 -1.090515137 154.85058594
		 0.75997925 -1.12840271 154.81639099 0.34671021 -1.16804504 154.75061035 0.29948425 -0.49958801 155.00073242188
		 1.061462402 -0.51268005 155.10316467 1.39804077 -0.46688843 154.91516113 3.73405457 0.86109924 155.32797241
		 6.12646484 4.42184448 156.82723999 6.45892334 8.41197205 159.147995 4.32727051 11.52311707 159.46966553
		 -0.013900757 12.49752808 159.43618774 -4.35507202 11.52311707 159.46966553 -6.48672485 8.41197205 159.147995
		 -6.15426636 4.42184448 156.82723999 -3.76185608 0.86109924 155.32795715 -1.42584229 -0.46688843 154.91516113
		 -1.2698822 -0.67619324 155.23474121 -0.50790405 -0.6631012 155.13235474 -0.57342529 -1.19047546 154.78694153
		 -0.85791016 -1.15084839 154.85270691 -1.16508484 -1.090515137 154.85057068 -4.15696716 0.30873108 155.32658386
		 -6.73258972 4.13876343 156.9552002 -7.10575867 8.56632996 159.31271362 -4.72924805 12.047470093 159.65319824
		 -0.013900757 13.14482117 159.62985229 4.70144653 12.047470093 159.65319824 7.077957153 8.56632996 159.31271362
		 6.70478821 4.13876343 156.95518494 4.12916565 0.30873108 155.3265686;
	setAttr -s 8602 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 107 1 107 106 1 0 106 1 107 198 1 198 196 1
		 106 196 1 1 2 1 2 197 1 197 107 1 197 3 1 3 198 1 198 109 1 109 108 1 196 108 1 3 199 1
		 199 109 1 0 200 1 200 201 1 201 1 1 200 4 1 4 5 1 5 201 1 4 202 1 202 203 1 203 5 1
		 202 6 1 6 7 1 7 203 1 201 204 1 204 2 1 5 8 1 8 204 1 203 205 1 205 8 1 7 9 1 9 205 1
		 207 206 1 206 10 1 10 210 1 210 207 1 206 208 1 208 209 1 209 10 1 208 108 1 109 209 1
		 10 11 1 11 12 1 12 210 1 209 211 1 211 11 1 199 211 1 13 212 1 212 213 1 213 214 1
		 214 13 1 213 14 1 14 15 1 15 214 1 212 215 1 215 216 1 216 213 1 216 16 1 16 14 1
		 14 217 1 217 218 1 218 15 1 217 210 1 12 218 1 16 219 1 219 217 1 219 207 1 7 220 1
		 220 221 1 221 9 1 220 17 1 17 18 1 18 221 1 358 222 1 222 110 1 110 223 1 223 358 1
		 110 224 1 224 356 1 356 223 1 222 19 1 187 19 1 187 110 1 20 187 1 20 224 1 224 111 1
		 111 225 1 225 356 1 111 226 1 226 21 1 21 225 1 173 20 1 173 111 1 377 173 1 377 226 1
		 241 22 1 22 228 1 228 227 1 241 227 1 22 23 1 23 24 1 24 228 1 228 113 1 113 112 1
		 227 112 1 24 229 1 229 113 1 25 26 1 26 230 1 230 114 1 25 114 1 230 23 1 23 231 1
		 114 231 1 244 27 1 27 233 1 233 232 1 244 232 1 27 28 1 28 231 1 231 233 1 233 22 1
		 232 241 1 235 234 1 234 29 1 29 237 1 237 235 1 234 236 1 236 246 1 246 29 1 29 113 1
		 229 237 1 246 112 1 234 116 1 116 115 1 236 115 1 235 238 1 238 116 1 116 27 1 115 244 1
		 238 28 1 240 239 1 239 30 1 30 31 1 31 240 1 239 241 1 227 30 1 30 242 1 242 32 1
		 32 31 1 112 242 1 182 243 1 243 33 1 33 245 1 245 182 1 243 244 1 232 33 1 33 239 1
		 240 245 1 236 34 1 34 247 1;
	setAttr ".ed[166:331]" 247 246 1 34 355 1 355 35 1 35 247 1 247 242 1 35 32 1
		 34 248 1 248 159 1 355 159 1 115 248 1 248 243 1 182 159 1 36 249 1 249 117 1 117 251 1
		 251 36 1 249 37 1 37 252 1 252 117 1 117 250 1 250 38 1 38 251 1 252 39 1 39 250 1
		 250 118 1 118 254 1 254 38 1 39 255 1 255 118 1 118 253 1 253 40 1 40 254 1 255 41 1
		 41 253 1 37 256 1 256 257 1 257 252 1 257 42 1 42 39 1 256 258 1 258 119 1 119 257 1
		 258 43 1 43 121 1 121 119 1 119 259 1 259 42 1 121 263 1 263 259 1 42 260 1 260 255 1
		 260 44 1 44 41 1 259 120 1 120 260 1 263 123 1 123 120 1 120 261 1 261 44 1 123 267 1
		 267 261 1 43 45 1 45 262 1 262 121 1 262 46 1 46 263 1 45 264 1 264 122 1 122 262 1
		 264 378 1 181 378 1 181 122 1 122 265 1 265 46 1 47 181 1 47 265 1 46 266 1 266 123 1
		 266 48 1 48 267 1 265 124 1 124 266 1 47 268 1 268 124 1 124 269 1 269 48 1 268 49 1
		 49 269 1 308 270 1 270 271 1 271 272 1 272 308 1 271 50 1 50 51 1 51 272 1 270 273 1
		 273 125 1 125 271 1 273 52 1 52 274 1 274 125 1 125 275 1 275 50 1 274 53 1 53 275 1
		 50 276 1 276 277 1 277 51 1 276 54 1 54 55 1 55 277 1 275 126 1 126 276 1 174 53 1
		 174 126 1 126 278 1 278 54 1 378 174 1 378 278 1 142 308 1 142 127 1 127 270 1 312 142 1
		 312 279 1 279 127 1 143 312 1 143 128 1 128 279 1 55 143 1 54 128 1 127 129 1 129 273 1
		 279 280 1 280 129 1 129 177 1 52 177 1 280 56 1 177 56 1 128 130 1 130 280 1 278 130 1
		 130 281 1 281 56 1 378 281 1 284 282 1 282 283 1 283 287 1 287 284 1 282 57 1 57 58 1
		 58 283 1 57 285 1 285 286 1 286 58 1 285 59 1 59 60 1 60 286 1 283 179 1 49 179 1
		 49 287 1 58 61 1 179 61 1 286 288 1 288 61 1 60 62 1 62 288 1;
	setAttr ".ed[332:497]" 287 132 1 132 131 1 284 131 1 132 290 1 290 289 1 131 289 1
		 268 132 1 47 290 1 290 134 1 134 133 1 289 133 1 134 60 1 133 59 1 180 47 1 180 134 1
		 62 180 1 292 291 1 291 63 1 63 64 1 64 292 1 291 293 1 293 294 1 294 63 1 293 175 1
		 53 175 1 53 294 1 63 295 1 295 296 1 296 64 1 295 65 1 65 66 1 66 296 1 294 135 1
		 135 295 1 274 135 1 135 297 1 297 65 1 52 297 1 146 67 1 146 136 1 136 300 1 300 67 1
		 317 146 1 317 298 1 298 136 1 147 317 1 147 137 1 137 298 1 318 147 1 318 299 1 299 137 1
		 136 282 1 284 300 1 298 57 1 137 285 1 299 59 1 300 138 1 138 301 1 301 67 1 138 302 1
		 302 68 1 68 301 1 131 138 1 289 302 1 302 139 1 139 303 1 303 68 1 139 299 1 318 303 1
		 133 139 1 69 292 1 64 70 1 69 70 1 296 304 1 70 304 1 66 71 1 304 71 1 331 305 1
		 305 306 1 306 307 1 307 331 1 306 72 1 72 73 1 73 307 1 305 308 1 272 306 1 51 72 1
		 72 309 1 309 310 1 310 73 1 309 74 1 74 75 1 75 310 1 277 309 1 55 74 1 151 331 1
		 151 140 1 140 305 1 337 151 1 337 311 1 311 140 1 152 337 1 152 141 1 141 311 1 75 152 1
		 74 141 1 140 142 1 311 312 1 141 143 1 76 313 1 313 144 1 144 78 1 78 76 1 313 77 1
		 77 314 1 314 144 1 77 315 1 315 145 1 145 314 1 315 79 1 79 316 1 316 145 1 144 146 1
		 67 78 1 314 317 1 145 147 1 316 318 1 78 319 1 319 320 1 320 76 1 319 80 1 80 81 1
		 81 320 1 301 319 1 68 80 1 80 321 1 321 322 1 322 81 1 321 316 1 79 322 1 303 321 1
		 324 323 1 323 325 1 325 82 1 82 324 1 323 69 1 70 325 1 325 148 1 148 326 1 326 82 1
		 148 327 1 327 83 1 83 326 1 304 148 1 71 327 1 84 328 1 328 329 1 329 330 1 330 84 1
		 329 85 1 85 86 1 86 330 1 328 331 1 307 329 1 73 85 1 85 332 1;
	setAttr ".ed[498:663]" 332 333 1 333 86 1 332 87 1 87 88 1 88 333 1 310 332 1
		 75 87 1 84 334 1 334 149 1 149 328 1 334 89 1 89 335 1 335 149 1 89 336 1 336 150 1
		 150 335 1 336 88 1 87 150 1 149 151 1 335 337 1 150 152 1 108 338 1 338 339 1 339 196 1
		 338 90 1 90 91 1 91 339 1 208 153 1 153 338 1 161 206 1 161 153 1 153 340 1 340 90 1
		 92 161 1 92 340 1 90 341 1 341 342 1 342 91 1 341 93 1 93 94 1 94 342 1 340 154 1
		 154 341 1 92 343 1 343 154 1 154 344 1 344 93 1 343 95 1 95 344 1 94 345 1 345 155 1
		 155 342 1 345 96 1 96 346 1 346 155 1 155 347 1 347 91 1 346 97 1 97 347 1 96 348 1
		 348 156 1 156 346 1 348 98 1 98 349 1 349 156 1 156 350 1 350 97 1 349 99 1 99 350 1
		 347 157 1 157 352 1 352 91 1 97 351 1 351 157 1 157 202 1 4 352 1 351 6 1 350 158 1
		 158 351 1 99 353 1 353 158 1 158 354 1 354 6 1 353 100 1 100 354 1 380 182 1 380 355 1
		 216 160 1 160 92 1 92 16 1 215 356 1 356 160 1 219 161 1 223 357 1 357 25 1 25 358 1
		 215 357 1 251 162 1 162 360 1 360 36 1 254 162 1 162 359 1 359 101 1 101 360 1 40 359 1
		 320 163 1 163 313 1 322 163 1 163 315 1 326 164 1 164 324 1 83 361 1 361 164 1 336 165 1
		 165 333 1 334 165 1 165 330 1 160 166 1 166 343 1 225 166 1 166 362 1 362 95 1 21 362 1
		 178 49 1 178 167 1 167 269 1 56 178 1 56 363 1 363 167 1 167 364 1 364 48 1 363 102 1
		 102 364 1 281 168 1 168 363 1 264 168 1 168 365 1 365 102 1 45 365 1 366 52 1 366 367 1
		 367 297 1 367 384 1 384 65 1 176 366 1 176 169 1 169 367 1 175 176 1 293 169 1 169 368 1
		 368 384 1 291 368 1 186 267 1 186 170 1 170 261 1 103 186 1 103 369 1 369 170 1 170 370 1
		 370 44 1 369 382 1 382 370 1 185 103 1 185 171 1 171 369 1 43 185 1;
	setAttr ".ed[664:829]" 258 171 1 171 371 1 371 382 1 256 371 1 66 372 1 372 105 1
		 105 71 1 372 373 1 373 374 1 374 105 1 373 292 1 69 374 1 105 383 1 383 327 1 374 172 1
		 172 383 1 323 172 1 349 173 1 20 99 1 98 377 1 197 174 1 53 3 1 2 378 1 199 175 1
		 211 176 1 366 11 1 52 12 1 218 177 1 56 15 1 214 178 1 49 13 1 18 379 1 379 179 1
		 61 18 1 379 13 1 288 221 1 62 9 1 205 180 1 47 8 1 204 181 1 240 380 1 104 376 1
		 376 183 1 183 381 1 381 104 1 376 37 1 249 183 1 183 360 1 101 381 1 41 375 1 375 184 1
		 184 253 1 375 104 1 381 184 1 184 359 1 371 376 1 104 382 1 370 375 1 365 185 1 103 102 1
		 364 186 1 172 164 1 361 383 1 368 373 1 372 384 1 380 32 1 353 187 1 19 100 1 385 21 1
		 226 188 1 385 188 0 377 386 1 188 386 0 387 94 1 93 189 1 387 189 0 388 95 1 362 190 1
		 388 190 0 190 385 0 106 191 1 191 200 1 339 191 1 191 352 1 389 96 1 345 192 1 389 192 0
		 192 387 0 344 193 1 189 193 0 193 388 0 98 390 1 386 390 0 348 194 1 390 194 0 194 389 0
		 357 391 1 391 26 1 212 391 1 230 392 1 392 24 1 26 18 1 18 392 1 28 393 1 393 114 1
		 393 358 1 238 195 1 195 393 1 195 222 1 235 394 1 394 195 1 394 19 1 394 395 1 395 100 1
		 237 395 1 391 379 1 17 396 1 396 392 1 396 229 1 354 220 1 100 17 1 395 396 1 397 897 1
		 897 656 1 656 900 1 900 397 1 897 398 1 398 898 1 898 656 1 656 899 1 899 400 1 400 900 1
		 898 399 1 399 899 1 398 901 1 901 657 1 657 898 1 901 653 1 653 902 1 902 657 1 657 903 1
		 903 399 1 902 401 1 401 903 1 899 658 1 658 906 1 906 400 1 399 904 1 904 658 1 658 905 1
		 905 403 1 403 906 1 904 402 1 402 905 1 903 659 1 659 904 1 401 907 1 907 659 1 659 908 1
		 908 402 1 907 404 1 404 908 1 655 909 1 909 660 1 660 912 1 912 655 1;
	setAttr ".ed[830:995]" 909 407 1 407 910 1 910 660 1 660 911 1 911 410 1 410 912 1
		 910 432 1 432 911 1 407 913 1 913 661 1 661 916 1 916 407 1 913 406 1 406 914 1 914 661 1
		 661 915 1 915 409 1 409 916 1 914 408 1 408 915 1 406 917 1 917 662 1 662 914 1 917 398 1
		 897 662 1 662 918 1 918 408 1 397 918 1 654 919 1 919 663 1 663 921 1 921 654 1 919 655 1
		 912 663 1 663 920 1 920 411 1 411 921 1 410 920 1 410 922 1 922 664 1 664 920 1 922 412 1
		 412 923 1 923 664 1 664 924 1 924 411 1 923 413 1 413 924 1 653 925 1 925 665 1 665 902 1
		 925 654 1 921 665 1 665 926 1 926 401 1 411 926 1 924 666 1 666 926 1 413 927 1 927 666 1
		 666 907 1 927 404 1 414 928 1 928 667 1 667 931 1 931 414 1 928 415 1 415 929 1 929 667 1
		 667 930 1 930 417 1 417 931 1 929 416 1 416 930 1 415 932 1 932 668 1 668 929 1 932 418 1
		 418 933 1 933 668 1 668 934 1 934 416 1 933 419 1 419 934 1 930 669 1 669 936 1 936 417 1
		 416 935 1 935 669 1 669 923 1 412 936 1 935 413 1 934 670 1 670 935 1 419 937 1 937 670 1
		 670 927 1 937 404 1 420 938 1 938 671 1 671 941 1 941 420 1 938 421 1 421 939 1 939 671 1
		 671 940 1 940 423 1 423 941 1 939 422 1 422 940 1 421 942 1 942 672 1 672 939 1 942 414 1
		 931 672 1 672 943 1 943 422 1 417 943 1 940 673 1 673 946 1 946 423 1 422 944 1 944 673 1
		 673 945 1 945 425 1 425 946 1 944 424 1 424 945 1 943 674 1 674 944 1 936 674 1 674 947 1
		 947 424 1 412 947 1 945 675 1 675 950 1 950 425 1 424 948 1 948 675 1 675 949 1 949 427 1
		 427 950 1 948 426 1 426 949 1 947 676 1 676 948 1 412 951 1 951 676 1 676 952 1 952 426 1
		 951 428 1 428 952 1 949 677 1 677 955 1 955 427 1 426 953 1 953 677 1 677 954 1 954 430 1
		 430 955 1 953 429 1 429 954 1 952 678 1 678 953 1 428 956 1 956 678 1;
	setAttr ".ed[996:1161]" 678 957 1 957 429 1 956 431 1 431 957 1 916 679 1 679 910 1
		 409 958 1 958 679 1 679 959 1 959 432 1 958 433 1 433 959 1 911 680 1 680 922 1 432 960 1
		 960 680 1 680 951 1 960 428 1 959 681 1 681 960 1 433 961 1 961 681 1 681 956 1 961 431 1
		 434 962 1 962 682 1 682 964 1 964 434 1 962 435 1 435 963 1 963 682 1 682 906 1 403 964 1
		 963 400 1 436 965 1 965 683 1 683 966 1 966 436 1 965 397 1 900 683 1 683 963 1 435 966 1
		 436 967 1 967 684 1 684 965 1 967 437 1 437 968 1 968 684 1 684 918 1 968 408 1 437 969 1
		 969 685 1 685 968 1 969 438 1 438 970 1 970 685 1 685 915 1 970 409 1 439 971 1 971 686 1
		 686 973 1 973 439 1 971 431 1 961 686 1 686 972 1 972 440 1 440 973 1 433 972 1 970 687 1
		 687 958 1 438 974 1 974 687 1 687 972 1 974 440 1 441 975 1 975 688 1 688 977 1 977 441 1
		 975 430 1 954 688 1 688 976 1 976 442 1 442 977 1 429 976 1 976 689 1 689 978 1 978 442 1
		 957 689 1 689 971 1 439 978 1 443 979 1 979 690 1 690 982 1 982 443 1 979 444 1 444 980 1
		 980 690 1 690 981 1 981 446 1 446 982 1 980 445 1 445 981 1 444 983 1 983 691 1 691 980 1
		 983 403 1 905 691 1 691 984 1 984 445 1 402 984 1 981 692 1 692 987 1 987 446 1 445 985 1
		 985 692 1 692 986 1 986 448 1 448 987 1 985 447 1 447 986 1 984 693 1 693 985 1 402 988 1
		 988 693 1 693 989 1 989 447 1 988 449 1 449 989 1 964 694 1 694 991 1 991 434 1 983 694 1
		 694 990 1 990 450 1 450 991 1 444 990 1 990 695 1 695 993 1 993 450 1 979 695 1 695 992 1
		 992 451 1 451 993 1 443 992 1 441 994 1 994 696 1 696 975 1 994 452 1 452 995 1 995 696 1
		 696 996 1 996 430 1 995 453 1 453 996 1 452 997 1 997 697 1 697 995 1 997 454 1 454 998 1
		 998 697 1 697 999 1 999 453 1 998 455 1 455 999 1 996 698 1 698 955 1;
	setAttr ".ed[1162:1327]" 453 1000 1 1000 698 1 698 1001 1 1001 427 1 1000 456 1
		 456 1001 1 999 699 1 699 1000 1 455 1002 1 1002 699 1 699 1003 1 1003 456 1 1002 457 1
		 457 1003 1 1001 700 1 700 950 1 456 1004 1 1004 700 1 700 1005 1 1005 425 1 1004 458 1
		 458 1005 1 1003 701 1 701 1004 1 457 1006 1 1006 701 1 701 1007 1 1007 458 1 1006 459 1
		 459 1007 1 941 702 1 702 1010 1 1010 420 1 423 1008 1 1008 702 1 702 1009 1 1009 461 1
		 461 1010 1 1008 460 1 460 1009 1 946 703 1 703 1008 1 1005 703 1 703 1011 1 1011 460 1
		 458 1011 1 1009 704 1 704 1014 1 1014 461 1 460 1012 1 1012 704 1 704 1013 1 1013 463 1
		 463 1014 1 1012 462 1 462 1013 1 1011 705 1 705 1012 1 1007 705 1 705 1015 1 1015 462 1
		 459 1015 1 464 1016 1 1016 706 1 706 1019 1 1019 464 1 1016 465 1 465 1017 1 1017 706 1
		 706 1018 1 1018 467 1 467 1019 1 1017 466 1 466 1018 1 465 1020 1 1020 707 1 707 1017 1
		 1020 414 1 942 707 1 707 1021 1 1021 466 1 421 1021 1 1018 708 1 708 1024 1 1024 467 1
		 466 1022 1 1022 708 1 708 1023 1 1023 469 1 469 1024 1 1022 468 1 468 1023 1 1021 709 1
		 709 1022 1 938 709 1 709 1025 1 1025 468 1 420 1025 1 1020 710 1 710 928 1 465 1026 1
		 1026 710 1 710 1027 1 1027 415 1 1026 470 1 470 1027 1 1016 711 1 711 1026 1 464 1028 1
		 1028 711 1 711 1029 1 1029 470 1 1028 471 1 471 1029 1 1027 712 1 712 932 1 470 1030 1
		 1030 712 1 712 1031 1 1031 418 1 1030 472 1 472 1031 1 1029 713 1 713 1030 1 471 1032 1
		 1032 713 1 713 1033 1 1033 472 1 1032 473 1 473 1033 1 1010 714 1 714 1025 1 461 1034 1
		 1034 714 1 714 1035 1 1035 468 1 1034 474 1 474 1035 1 1014 715 1 715 1034 1 463 1036 1
		 1036 715 1 715 1037 1 1037 474 1 1036 475 1 475 1037 1 1035 716 1 716 1023 1 474 1038 1
		 1038 716 1 716 1039 1 1039 469 1 1038 476 1 476 1039 1 1037 717 1 717 1038 1 475 1040 1
		 1040 717 1 717 1041 1 1041 476 1 1040 477 1 477 1041 1 478 1042 1 1042 718 1 718 1045 1
		 1045 478 1;
	setAttr ".ed[1328:1493]" 1042 479 1 479 1043 1 1043 718 1 718 1044 1 1044 481 1
		 481 1045 1 1043 480 1 480 1044 1 479 1046 1 1046 719 1 719 1043 1 1046 482 1 482 1047 1
		 1047 719 1 719 1048 1 1048 480 1 1047 483 1 483 1048 1 1044 720 1 720 1050 1 1050 481 1
		 480 1049 1 1049 720 1 720 1033 1 473 1050 1 1049 472 1 1048 721 1 721 1049 1 483 1051 1
		 1051 721 1 721 1031 1 1051 418 1 484 1052 1 1052 722 1 722 1055 1 1055 484 1 1052 485 1
		 485 1053 1 1053 722 1 722 1054 1 1054 487 1 487 1055 1 1053 486 1 486 1054 1 485 1056 1
		 1056 723 1 723 1053 1 1056 463 1 1013 723 1 723 1057 1 1057 486 1 462 1057 1 1054 724 1
		 724 1060 1 1060 487 1 486 1058 1 1058 724 1 724 1059 1 1059 489 1 489 1060 1 1058 488 1
		 488 1059 1 1057 725 1 725 1058 1 1015 725 1 725 1061 1 1061 488 1 459 1061 1 455 1062 1
		 1062 726 1 726 1002 1 1062 490 1 490 1063 1 1063 726 1 726 1064 1 1064 457 1 1063 491 1
		 491 1064 1 490 1065 1 1065 727 0 727 1063 1 727 1066 0 1066 491 1 1064 728 1 728 1006 1
		 491 1067 1 1067 728 1 728 1061 1 1067 488 1 1066 729 0 729 1067 1 729 1068 0 1068 488 1
		 454 1069 1 1069 730 1 730 998 1 1069 492 1 492 1070 1 1070 730 1 730 1062 1 1070 490 1
		 492 1071 1 1071 731 0 731 1070 1 731 1065 0 1046 732 1 732 1074 1 1074 482 1 479 1072 1
		 1072 732 1 732 1073 1 1073 494 1 494 1074 1 1072 493 1 493 1073 1 1042 733 1 733 1072 1
		 478 1075 1 1075 733 1 733 1076 1 1076 493 1 1075 495 1 495 1076 1 1073 734 1 734 1079 1
		 1079 494 1 493 1077 1 1077 734 1 734 1078 1 1078 497 1 497 1079 1 1077 496 1 496 1078 1
		 1076 735 1 735 1077 1 495 1080 1 1080 735 1 735 1081 1 1081 496 1 1080 498 1 498 1081 1
		 499 1082 1 1082 736 1 736 1085 1 1085 499 1 1082 500 1 500 1083 1 1083 736 1 736 1084 1
		 1084 502 1 502 1085 1 1083 501 1 501 1084 1 500 1086 1 1086 737 1 737 1083 1 1086 503 1
		 503 1087 1 1087 737 1 737 1088 1 1088 501 1 1087 504 1 504 1088 1 1084 738 1 738 1090 1
		 1090 502 1;
	setAttr ".ed[1494:1659]" 501 1089 1 1089 738 1 738 1050 1 473 1090 1 1089 481 1
		 1088 739 1 739 1089 1 504 1091 1 1091 739 1 739 1045 1 1091 478 1 505 1092 1 1092 740 1
		 740 1095 1 1095 505 1 1092 506 1 506 1093 1 1093 740 1 740 1094 1 1094 508 1 508 1095 1
		 1093 507 1 507 1094 1 506 1096 1 1096 741 1 741 1093 1 1096 509 1 509 1097 1 1097 741 1
		 741 1098 1 1098 507 1 1097 510 1 510 1098 1 1094 742 1 742 1100 1 1100 508 1 507 1099 1
		 1099 742 1 742 1028 1 464 1100 1 1099 471 1 1098 743 1 743 1099 1 510 1101 1 1101 743 1
		 743 1032 1 1101 473 1 1091 744 1 744 1075 1 504 1102 1 1102 744 1 744 1103 1 1103 495 1
		 1102 511 1 511 1103 1 1087 745 1 745 1102 1 503 1104 1 1104 745 1 745 1105 1 1105 511 1
		 1104 512 1 512 1105 1 1103 746 1 746 1080 1 511 1106 1 1106 746 1 746 1107 1 1107 498 1
		 1106 513 1 513 1107 1 1105 747 1 747 1106 1 512 1108 1 1108 747 1 747 1109 1 1109 513 1
		 1108 514 1 514 1109 1 1095 748 1 748 1112 1 1112 505 1 508 1110 1 1110 748 1 748 1111 1
		 1111 516 1 516 1112 1 1110 515 1 515 1111 1 1100 749 1 749 1110 1 1019 749 1 749 1113 1
		 1113 515 1 467 1113 1 1111 750 1 750 1116 1 1116 516 1 515 1114 1 1114 750 1 750 1115 1
		 1115 518 1 518 1116 1 1114 517 1 517 1115 1 1113 751 1 751 1114 1 1024 751 1 751 1117 1
		 1117 517 1 469 1117 1 519 1118 1 1118 752 1 752 1121 1 1121 519 1 1118 520 1 520 1119 1
		 1119 752 1 752 1120 1 1120 522 1 522 1121 1 1119 521 1 521 1120 1 520 1122 1 1122 753 1
		 753 1119 1 1122 505 1 1112 753 1 753 1123 1 1123 521 1 516 1123 1 1120 754 1 754 1126 1
		 1126 522 1 521 1124 1 1124 754 1 754 1125 1 1125 524 1 524 1126 1 1124 523 1 523 1125 1
		 1123 755 1 755 1124 1 1116 755 1 755 1127 1 1127 523 1 518 1127 1 525 1128 1 1128 756 1
		 756 1131 1 1131 525 1 1128 526 1 526 1129 1 1129 756 1 756 1130 1 1130 528 1 528 1131 1
		 1129 527 1 527 1130 1 526 1132 1 1132 757 1 757 1129 1 1132 524 1 1125 757 1 757 1133 1
		 1133 527 1;
	setAttr ".ed[1660:1825]" 523 1133 1 1130 758 1 758 1136 1 1136 528 1 527 1134 1
		 1134 758 1 758 1135 1 1135 530 1 530 1136 1 1134 529 1 529 1135 1 1133 759 1 759 1134 1
		 1127 759 1 759 1137 1 1137 529 1 518 1137 1 531 1138 1 1138 760 1 760 1141 1 1141 531 1
		 1138 532 1 532 1139 1 1139 760 1 760 1140 1 1140 534 1 534 1141 1 1139 533 1 533 1140 1
		 532 1142 1 1142 761 1 761 1139 1 1142 509 1 1096 761 1 761 1143 1 1143 533 1 506 1143 1
		 1140 762 1 762 1145 1 1145 534 1 533 1144 1 1144 762 1 762 1118 1 519 1145 1 1144 520 1
		 1143 763 1 763 1144 1 1092 763 1 763 1122 1 1142 764 1 764 1148 1 1148 509 1 532 1146 1
		 1146 764 1 764 1147 1 1147 536 1 536 1148 1 1146 535 1 535 1147 1 1138 765 1 765 1146 1
		 531 1149 1 1149 765 1 765 1150 1 1150 535 1 1149 537 1 537 1150 1 1147 766 1 766 1152 1
		 1152 536 1 535 1151 1 1151 766 1 766 1082 1 499 1152 1 1151 500 1 1150 767 1 767 1151 1
		 537 1153 1 1153 767 1 767 1086 1 1153 503 1 538 1154 1 1154 768 1 768 1157 1 1157 538 1
		 1154 539 1 539 1155 1 1155 768 1 768 1156 1 1156 541 1 541 1157 1 1155 540 1 540 1156 1
		 539 1158 1 1158 769 1 769 1155 1 1158 542 1 542 1159 1 1159 769 1 769 1160 1 1160 540 1
		 1159 543 1 543 1160 1 1156 770 1 770 1162 1 1162 541 1 540 1161 1 1161 770 1 770 1041 1
		 477 1162 1 1161 476 1 1160 771 1 771 1161 1 543 1163 1 1163 771 1 771 1164 1 1164 476 1
		 1163 544 1 544 1164 1 484 1165 1 1165 772 1 772 1052 1 1165 545 1 545 1166 1 1166 772 1
		 772 1167 1 1167 485 1 1166 546 1 546 1167 1 545 1168 1 1168 773 1 773 1166 1 1168 538 1
		 1157 773 1 773 1169 1 1169 546 1 541 1169 1 1167 774 1 774 1056 1 546 1170 1 1170 774 1
		 774 1036 1 1170 475 1 1169 775 1 775 1170 1 1162 775 1 775 1040 1 1121 776 1 776 1173 1
		 1173 519 1 522 1171 1 1171 776 1 776 1172 1 1172 548 1 548 1173 1 1171 547 1 547 1172 1
		 1126 777 1 777 1171 1 524 1174 1 1174 777 1 777 1175 1 1175 547 1 1174 549 1 549 1175 1
		 1172 778 1;
	setAttr ".ed[1826:1991]" 778 1178 1 1178 548 1 547 1176 1 1176 778 1 778 1177 1
		 1177 551 1 551 1178 1 1176 550 1 550 1177 1 1175 779 1 779 1176 1 549 1179 1 1179 779 1
		 779 1180 1 1180 550 1 1179 552 1 552 1180 1 553 1181 1 1181 780 1 780 1184 1 1184 553 1
		 1181 554 1 554 1182 1 1182 780 1 780 1183 1 1183 556 1 556 1184 1 1182 555 1 555 1183 1
		 554 1185 1 1185 781 1 781 1182 1 1185 531 1 1141 781 1 781 1186 1 1186 555 1 534 1186 1
		 1183 782 1 782 1188 1 1188 556 1 555 1187 1 1187 782 1 782 1178 1 551 1188 1 1187 548 1
		 1186 783 1 783 1187 1 1145 783 1 783 1173 1 1185 784 1 784 1149 1 554 1189 1 1189 784 1
		 784 1190 1 1190 537 1 1189 557 1 557 1190 1 1181 785 1 785 1189 1 553 1191 1 1191 785 1
		 785 1192 1 1192 557 1 1191 558 1 558 1192 1 1190 786 1 786 1153 1 557 1193 1 1193 786 1
		 786 1104 1 1193 512 1 1192 787 1 787 1193 1 558 1194 1 1194 787 1 787 1108 1 1194 514 1
		 1078 788 1 788 1197 1 1197 497 1 496 1195 1 1195 788 1 788 1196 1 1196 560 1 560 1197 1
		 1195 559 1 559 1196 1 1081 789 1 789 1195 1 498 1198 1 1198 789 1 789 1199 1 1199 559 1
		 1198 561 1 561 1199 1 1196 790 1 790 1202 1 1202 560 1 559 1200 1 1200 790 1 790 1201 1
		 1201 562 1 562 1202 1 1200 556 1 556 1201 1 1199 791 1 791 1200 1 561 1203 1 1203 791 1
		 791 1184 1 1203 553 1 552 1204 1 1204 792 1 792 1180 1 1204 563 1 563 1205 1 1205 792 1
		 792 1206 1 1206 550 1 1205 564 1 564 1206 1 563 1207 1 1207 793 1 793 1205 1 1207 565 1
		 565 1208 1 1208 793 1 793 1209 1 1209 564 1 1208 566 1 566 1209 1 1206 794 1 794 1177 1
		 564 1210 1 1210 794 1 794 1211 1 1211 551 1 1210 567 1 567 1211 1 1209 795 1 795 1210 1
		 566 1212 1 1212 795 1 795 1213 1 1213 567 1 1212 568 1 568 1213 1 569 1214 1 1214 796 1
		 796 1216 1 1216 569 1 1214 497 1 1197 796 1 796 1215 1 1215 570 1 570 1216 1 560 1215 1
		 1215 797 1 797 1218 1 1218 570 1 1202 797 1 797 1217 1 1217 571 1 571 1218 1 562 1217 1
		 992 798 1;
	setAttr ".ed[1992:2157]" 798 1221 1 1221 451 1 443 1219 1 1219 798 1 798 1220 1
		 1220 573 1 573 1221 1 1219 572 1 572 1220 1 1220 799 1 799 1223 1 1223 573 1 572 1222 1
		 1222 799 1 799 1214 1 569 1223 1 1222 497 1 574 1224 1 1224 800 1 800 1227 1 1227 574 1
		 1224 575 1 575 1225 1 1225 800 1 800 1226 1 1226 577 1 577 1227 1 1225 576 1 576 1226 1
		 575 1228 1 1228 801 1 801 1225 1 1228 538 1 538 1229 1 1229 801 1 801 1230 1 1230 576 1
		 1229 578 1 578 1230 1 1226 802 1 802 1233 1 1233 577 1 576 1231 1 1231 802 1 802 1232 1
		 1232 580 1 580 1233 1 1231 579 1 579 1232 1 1230 803 1 803 1231 1 578 1234 1 1234 803 1
		 803 1235 1 1235 579 1 1234 581 1 581 1235 1 574 1236 1 1236 804 1 804 1224 1 1236 582 1
		 582 1237 1 1237 804 1 804 1238 1 1238 575 1 1237 583 1 583 1238 1 582 1239 1 1239 805 1
		 805 1237 1 1239 584 1 584 1240 1 1240 805 1 805 1241 1 1241 583 1 1240 585 1 585 1241 1
		 1238 806 1 806 1228 1 583 1242 1 1242 806 1 806 1154 1 1242 539 1 1241 807 1 807 1242 1
		 585 1243 1 1243 807 1 807 1158 1 1243 542 1 1168 808 1 808 1229 1 545 1244 1 1244 808 1
		 808 1245 1 1245 578 1 1244 586 1 586 1245 1 1165 809 1 809 1244 1 484 1246 1 1246 809 1
		 809 1247 1 1247 586 1 1246 587 1 587 1247 1 1245 810 1 810 1234 1 586 1248 1 1248 810 1
		 810 1249 1 1249 581 1 1248 588 1 588 1249 1 1247 811 1 811 1248 1 587 1250 1 1250 811 1
		 811 1251 1 1251 588 1 1250 589 1 589 1251 1 1055 812 1 812 1246 1 487 1252 1 1252 812 1
		 812 1253 1 1253 587 1 1252 590 1 590 1253 1 1060 813 1 813 1252 1 489 1254 1 1254 813 1
		 813 1255 1 1255 590 1 1254 591 1 1253 814 1 814 1250 1 590 1256 1 1256 814 1 814 1257 1
		 1257 589 1 592 1257 1 1258 815 1 1258 1398 0 584 1259 1 1259 816 1 816 1240 1 1259 593 1
		 593 1260 1 1260 816 1 816 1261 1 1261 585 1 1260 594 1 594 1261 1 593 1262 1 1262 817 1
		 817 1260 1 1262 595 1 595 1263 1 1263 817 1 817 1264 1 1264 594 1 1263 596 1 596 1264 1
		 1261 818 1;
	setAttr ".ed[2158:2323]" 818 1243 1 594 1265 1 1265 818 1 818 1159 1 1265 543 1
		 1264 819 1 819 1265 1 596 1266 1 1266 819 1 819 1163 1 1266 544 1 597 1267 0 1267 592 0
		 589 1268 1 1268 820 1 820 1251 1 1268 598 1 598 1269 1 1269 820 1 820 1270 1 1270 588 1
		 1269 599 1 599 1270 1 598 1271 1 1271 821 1 821 1269 1 1271 600 1 600 1272 1 1272 821 1
		 821 1273 1 1273 599 1 1272 601 1 601 1273 1 1270 822 1 822 1249 1 599 1274 1 1274 822 1
		 822 1275 1 1275 581 1 1274 602 1 602 1275 1 1273 823 1 823 1274 1 601 1276 1 1276 823 1
		 823 1277 1 1277 602 1 1276 603 1 603 1277 1 1275 824 1 824 1235 1 602 1278 1 1278 824 1
		 824 1279 1 1279 579 1 1278 604 1 604 1279 1 1277 825 1 825 1278 1 603 1280 1 1280 825 1
		 825 1281 1 1281 604 1 1280 605 1 605 1281 1 1279 826 1 826 1232 1 604 1282 1 1282 826 1
		 826 1283 1 1283 580 1 1282 606 1 606 1283 1 1281 827 1 827 1282 1 605 1284 1 1284 827 1
		 827 1285 1 1285 606 1 1284 607 1 607 1285 1 530 1286 1 1286 828 1 828 1289 1 1289 530 1
		 1286 608 1 608 1287 1 1287 828 1 828 1288 1 1288 610 1 610 1289 1 1287 609 1 609 1288 1
		 608 1290 1 1290 829 1 829 1287 1 1290 595 1 1262 829 1 829 1291 1 1291 609 1 593 1291 1
		 1288 830 1 830 1293 1 1293 610 1 609 1292 1 1292 830 1 830 1236 1 574 1293 1 1292 582 1
		 1291 831 1 831 1292 1 1259 831 1 831 1239 1 580 1294 1 1294 832 1 832 1233 1 1294 611 1
		 611 1295 1 1295 832 1 832 1296 1 1296 577 1 1295 612 1 612 1296 1 611 1297 1 1297 833 1
		 833 1295 1 1297 613 1 613 1298 1 1298 833 1 833 1299 1 1299 612 1 1298 614 1 614 1299 1
		 1296 834 1 834 1227 1 612 1300 1 1300 834 1 834 1301 1 1301 574 1 1300 615 1 615 1301 1
		 1299 835 1 835 1300 1 614 1302 1 1302 835 1 835 1303 1 1303 615 1 1302 616 1 616 1303 1
		 1301 836 1 836 1293 1 615 1304 1 1304 836 1 836 1305 1 1305 610 1 1304 617 1 617 1305 1
		 1303 837 1 837 1304 1 616 1306 1 1306 837 1 837 1307 1 1307 617 1 1306 618 1 618 1307 1
		 1305 838 1;
	setAttr ".ed[2324:2489]" 838 1289 1 617 1308 1 1308 838 1 838 1136 1 1308 528 1
		 1307 839 1 839 1308 1 618 1309 1 1309 839 1 839 1131 1 1309 525 1 1132 840 1 840 1174 1
		 526 1310 1 1310 840 1 840 1311 1 1311 549 1 1310 619 1 619 1311 1 1128 841 1 841 1310 1
		 525 1312 1 1312 841 1 841 1313 1 1313 619 1 1312 620 1 620 1313 1 1311 842 1 842 1179 1
		 619 1314 1 1314 842 1 842 1315 1 1315 552 1 1314 621 1 621 1315 1 1313 843 1 843 1314 1
		 620 1316 1 1316 843 1 843 1317 1 1317 621 1 1316 622 1 622 1317 1 623 1318 1 1318 844 1
		 844 1321 1 1321 623 1 1318 624 1 624 1319 1 1319 844 1 844 1320 1 1320 626 1 626 1321 1
		 1319 625 1 625 1320 1 624 1322 1 1322 845 1 845 1319 1 1322 622 1 1316 845 1 845 1323 1
		 1323 625 1 620 1323 1 1320 846 1 846 1325 1 1325 626 1 625 1324 1 1324 846 1 846 1306 1
		 616 1325 1 1324 618 1 1323 847 1 847 1324 1 1312 847 1 847 1309 1 622 1326 1 1326 848 1
		 848 1317 1 1326 627 1 627 1327 1 1327 848 1 848 1328 1 1328 621 1 1327 628 1 628 1328 1
		 627 1329 1 1329 849 1 849 1327 1 1329 629 1 629 1330 1 1330 849 1 849 1331 1 1331 628 1
		 1330 630 1 630 1331 1 1328 850 1 850 1315 1 628 1332 1 1332 850 1 850 1204 1 1332 563 1
		 1331 851 1 851 1332 1 630 1333 1 1333 851 1 851 1207 1 1333 565 1 631 1334 1 1334 852 1
		 852 1337 1 1337 631 1 1334 632 1 632 1335 1 1335 852 1 852 1336 1 1336 634 1 634 1337 1
		 1335 633 1 633 1336 1 632 1338 1 1338 853 1 853 1335 1 1338 629 1 1329 853 1 853 1339 1
		 1339 633 1 627 1339 1 1336 854 1 854 1341 1 1341 634 1 633 1340 1 1340 854 1 854 1318 1
		 623 1341 1 1340 624 1 1339 855 1 855 1340 1 1326 855 1 855 1322 1 1302 856 1 856 1325 1
		 614 1342 1 1342 856 1 856 1343 1 1343 626 1 1342 635 1 635 1343 1 1298 857 1 857 1342 1
		 613 1344 1 1344 857 1 857 1345 1 1345 635 1 1344 636 1 636 1345 1 1343 858 1 858 1321 1
		 635 1346 1 1346 858 1 858 1347 1 1347 623 1 1346 637 1 637 1347 1 1345 859 1 859 1346 1
		 636 1348 1;
	setAttr ".ed[2490:2655]" 1348 859 1 859 1349 1 1349 637 1 1348 638 1 638 1349 1
		 1283 860 1 860 1294 1 606 1350 1 1350 860 1 860 1351 1 1351 611 1 1350 639 1 639 1351 1
		 1285 861 1 861 1350 1 607 1352 1 1352 861 1 861 1353 1 1353 639 1 1352 640 1 640 1353 1
		 1351 862 1 862 1297 1 639 1354 1 1354 862 1 862 1355 1 1355 613 1 1354 641 1 641 1355 1
		 1353 863 1 863 1354 1 640 1356 1 1356 863 1 863 1357 1 1357 641 1 1356 642 1 642 1357 1
		 638 1358 1 1358 864 1 864 1349 1 1358 643 1 643 1359 1 1359 864 1 864 1360 1 1360 637 1
		 1359 644 1 644 1360 1 643 1361 1 1361 865 1 865 1359 1 1361 645 1 645 1362 1 1362 865 1
		 865 1363 1 1363 644 1 1362 646 1 646 1363 1 1360 866 1 866 1347 1 644 1364 1 1364 866 1
		 866 1341 1 1364 634 1 1363 867 1 867 1364 1 646 1365 1 1365 867 1 867 1337 1 1365 631 1
		 1355 868 1 868 1344 1 641 1366 1 1366 868 1 868 1367 1 1367 636 1 1366 647 1 647 1367 1
		 1357 869 1 869 1366 1 642 1368 1 1368 869 1 869 1369 1 1369 647 1 1368 648 1 648 1369 1
		 1367 870 1 870 1348 1 647 1370 1 1370 870 1 870 1358 1 1370 643 1 1369 871 1 871 1370 1
		 648 1371 1 1371 871 1 871 1361 1 1371 645 1 937 872 1 872 908 1 419 1372 1 1372 872 1
		 872 988 1 1372 449 1 933 873 1 873 1372 1 1051 873 1 873 1373 1 1373 449 1 483 1373 1
		 1373 874 1 874 989 1 1047 874 1 874 1374 1 1374 447 1 482 1374 1 1222 875 1 875 1079 1
		 572 1375 1 1375 875 1 875 1376 1 1376 494 1 1375 448 1 448 1376 1 1219 876 1 876 1375 1
		 982 876 1 876 987 1 1376 877 1 877 1074 1 986 877 1 877 1374 1 1217 878 1 878 1378 1
		 1378 571 1 562 1377 1 1377 878 1 878 1213 1 568 1378 1 1377 567 1 1379 597 0 649 1379 0
		 1267 879 1 879 1257 1 597 1380 1 1380 879 1 879 1268 1 1380 598 1 1379 880 1 880 1380 1
		 649 1381 1 1381 880 1 880 1271 1 1381 600 1 1117 881 1 881 1383 1 1383 517 1 1039 881 1
		 881 1382 1 1382 650 1 650 1383 1 476 1382 1 1148 882 1 882 1097 1 536 1384 1 1384 882 1
		 882 1385 1;
	setAttr ".ed[2656:2821]" 1385 510 1 1384 651 1 651 1385 1 651 1386 1 1386 883 1
		 883 1385 1 1386 502 1 1090 883 1 883 1101 1 1191 884 1 884 1388 1 1388 558 1 1203 884 1
		 884 1387 1 1387 652 1 652 1388 1 561 1387 1 1188 885 1 885 1201 1 1211 885 1 885 1377 1
		 1085 886 1 886 1152 1 1386 886 1 886 1384 1 1383 887 1 887 1115 1 650 1389 1 1389 887 1
		 887 1137 1 1389 529 1 1068 888 0 888 1059 1 888 1390 0 1390 489 1 608 1391 1 1391 889 1
		 889 1290 1 1391 650 1 650 1392 1 1392 889 1 889 1263 1 1392 596 1 1382 890 1 890 1392 1
		 1164 890 1 890 1266 1 652 1393 1 1393 891 1 891 1388 1 1393 513 1 1109 891 1 891 1194 1
		 1387 892 1 892 1393 1 1198 892 1 892 1107 1 1135 893 1 893 1286 1 1389 893 1 893 1391 1
		 1390 591 0 405 1394 1 1394 894 1 894 1395 1 1395 405 1 1394 653 1 901 894 1 894 917 1
		 406 1395 1 405 1396 1 1396 895 1 895 1394 1 1396 655 1 919 895 1 895 925 1 1395 896 1
		 896 1396 1 913 896 1 896 909 1 1254 1399 1 815 1397 1 590 815 1 1397 1257 1 1398 592 0
		 1256 1397 1 1397 1398 1 1399 815 1 1400 1258 0 1255 1399 1 1399 1400 1 591 1400 0
		 1401 1865 1 1865 1624 1 1624 1868 1 1868 1401 1 1865 1402 1 1402 1866 1 1866 1624 1
		 1624 1867 1 1867 1404 1 1404 1868 1 1866 1403 1 1403 1867 1 1402 1869 1 1869 1625 1
		 1625 1866 1 1869 1621 1 1621 1870 1 1870 1625 1 1625 1871 1 1871 1403 1 1870 1405 1
		 1405 1871 1 1867 1626 1 1626 1874 1 1874 1404 1 1403 1872 1 1872 1626 1 1626 1873 1
		 1873 1407 1 1407 1874 1 1872 1406 1 1406 1873 1 1871 1627 1 1627 1872 1 1405 1875 1
		 1875 1627 1 1627 1876 1 1876 1406 1 1875 1408 1 1408 1876 1 1623 1877 1 1877 1628 1
		 1628 1880 1 1880 1623 1 1877 1411 1 1411 1878 1 1878 1628 1 1628 1879 1 1879 1414 1
		 1414 1880 1 1878 1436 1 1436 1879 1 1411 1881 1 1881 1629 1 1629 1884 1 1884 1411 1
		 1881 1410 1 1410 1882 1 1882 1629 1 1629 1883 1 1883 1413 1 1413 1884 1 1882 1412 1
		 1412 1883 1 1410 1885 1 1885 1630 1 1630 1882 1 1885 1402 1 1865 1630 1 1630 1886 1
		 1886 1412 1 1401 1886 1 1622 1887 1 1887 1631 1;
	setAttr ".ed[2822:2987]" 1631 1889 1 1889 1622 1 1887 1623 1 1880 1631 1 1631 1888 1
		 1888 1415 1 1415 1889 1 1414 1888 1 1414 1890 1 1890 1632 1 1632 1888 1 1890 1416 1
		 1416 1891 1 1891 1632 1 1632 1892 1 1892 1415 1 1891 1417 1 1417 1892 1 1621 1893 1
		 1893 1633 1 1633 1870 1 1893 1622 1 1889 1633 1 1633 1894 1 1894 1405 1 1415 1894 1
		 1892 1634 1 1634 1894 1 1417 1895 1 1895 1634 1 1634 1875 1 1895 1408 1 1418 1896 1
		 1896 1635 1 1635 1899 1 1899 1418 1 1896 1419 1 1419 1897 1 1897 1635 1 1635 1898 1
		 1898 1421 1 1421 1899 1 1897 1420 1 1420 1898 1 1419 1900 1 1900 1636 1 1636 1897 1
		 1900 1422 1 1422 1901 1 1901 1636 1 1636 1902 1 1902 1420 1 1901 1423 1 1423 1902 1
		 1898 1637 1 1637 1904 1 1904 1421 1 1420 1903 1 1903 1637 1 1637 1891 1 1416 1904 1
		 1903 1417 1 1902 1638 1 1638 1903 1 1423 1905 1 1905 1638 1 1638 1895 1 1905 1408 1
		 1424 1906 1 1906 1639 1 1639 1909 1 1909 1424 1 1906 1425 1 1425 1907 1 1907 1639 1
		 1639 1908 1 1908 1427 1 1427 1909 1 1907 1426 1 1426 1908 1 1425 1910 1 1910 1640 1
		 1640 1907 1 1910 1418 1 1899 1640 1 1640 1911 1 1911 1426 1 1421 1911 1 1908 1641 1
		 1641 1914 1 1914 1427 1 1426 1912 1 1912 1641 1 1641 1913 1 1913 1429 1 1429 1914 1
		 1912 1428 1 1428 1913 1 1911 1642 1 1642 1912 1 1904 1642 1 1642 1915 1 1915 1428 1
		 1416 1915 1 1913 1643 1 1643 1918 1 1918 1429 1 1428 1916 1 1916 1643 1 1643 1917 1
		 1917 1431 1 1431 1918 1 1916 1430 1 1430 1917 1 1915 1644 1 1644 1916 1 1416 1919 1
		 1919 1644 1 1644 1920 1 1920 1430 1 1919 1432 1 1432 1920 1 1917 1645 1 1645 1923 1
		 1923 1431 1 1430 1921 1 1921 1645 1 1645 1922 1 1922 1434 1 1434 1923 1 1921 1433 1
		 1433 1922 1 1920 1646 1 1646 1921 1 1432 1924 1 1924 1646 1 1646 1925 1 1925 1433 1
		 1924 1435 1 1435 1925 1 1884 1647 1 1647 1878 1 1413 1926 1 1926 1647 1 1647 1927 1
		 1927 1436 1 1926 1437 1 1437 1927 1 1879 1648 1 1648 1890 1 1436 1928 1 1928 1648 1
		 1648 1919 1 1928 1432 1 1927 1649 1 1649 1928 1 1437 1929 1 1929 1649 1 1649 1924 1
		 1929 1435 1 962 1650 1 1650 1931 1 1931 434 1 435 1930 1 1930 1650 1 1650 1874 1;
	setAttr ".ed[2988:3153]" 1407 1931 1 1930 1404 1 436 1932 1 1932 1651 1 1651 966 1
		 1932 1401 1 1868 1651 1 1651 1930 1 967 1652 1 1652 1932 1 437 1933 1 1933 1652 1
		 1652 1886 1 1933 1412 1 969 1653 1 1653 1933 1 438 1934 1 1934 1653 1 1653 1883 1
		 1934 1413 1 439 1935 1 1935 1654 1 1654 973 1 1935 1435 1 1929 1654 1 1654 1936 1
		 1936 440 1 1437 1936 1 1934 1655 1 1655 1926 1 974 1655 1 1655 1936 1 441 1937 1
		 1937 1656 1 1656 977 1 1937 1434 1 1922 1656 1 1656 1938 1 1938 442 1 1433 1938 1
		 1938 1657 1 1657 978 1 1925 1657 1 1657 1935 1 1438 1939 1 1939 1658 1 1658 1942 1
		 1942 1438 1 1939 1439 1 1439 1940 1 1940 1658 1 1658 1941 1 1941 1441 1 1441 1942 1
		 1940 1440 1 1440 1941 1 1439 1943 1 1943 1659 1 1659 1940 1 1943 1407 1 1873 1659 1
		 1659 1944 1 1944 1440 1 1406 1944 1 1941 1660 1 1660 1947 1 1947 1441 1 1440 1945 1
		 1945 1660 1 1660 1946 1 1946 1443 1 1443 1947 1 1945 1442 1 1442 1946 1 1944 1661 1
		 1661 1945 1 1406 1948 1 1948 1661 1 1661 1949 1 1949 1442 1 1948 1444 1 1444 1949 1
		 1931 1662 1 1662 991 1 1943 1662 1 1662 1950 1 1950 450 1 1439 1950 1 1950 1663 1
		 1663 993 1 1939 1663 1 1663 1951 1 1951 451 1 1438 1951 1 994 1664 1 1664 1937 1
		 452 1952 1 1952 1664 1 1664 1953 1 1953 1434 1 1952 1445 1 1445 1953 1 997 1665 1
		 1665 1952 1 454 1954 1 1954 1665 1 1665 1955 1 1955 1445 1 1954 1446 1 1446 1955 1
		 1953 1666 1 1666 1923 1 1445 1956 1 1956 1666 1 1666 1957 1 1957 1431 1 1956 1447 1
		 1447 1957 1 1955 1667 1 1667 1956 1 1446 1958 1 1958 1667 1 1667 1959 1 1959 1447 1
		 1958 1448 1 1448 1959 1 1957 1668 1 1668 1918 1 1447 1960 1 1960 1668 1 1668 1961 1
		 1961 1429 1 1960 1449 1 1449 1961 1 1959 1669 1 1669 1960 1 1448 1962 1 1962 1669 1
		 1669 1963 1 1963 1449 1 1962 1450 1 1450 1963 1 1909 1670 1 1670 1966 1 1966 1424 1
		 1427 1964 1 1964 1670 1 1670 1965 1 1965 1452 1 1452 1966 1 1964 1451 1 1451 1965 1
		 1914 1671 1 1671 1964 1 1961 1671 1 1671 1967 1 1967 1451 1 1449 1967 1 1965 1672 1
		 1672 1970 1 1970 1452 1 1451 1968 1 1968 1672 1 1672 1969 1 1969 1454 1 1454 1970 1;
	setAttr ".ed[3154:3319]" 1968 1453 1 1453 1969 1 1967 1673 1 1673 1968 1 1963 1673 1
		 1673 1971 1 1971 1453 1 1450 1971 1 1455 1972 1 1972 1674 1 1674 1975 1 1975 1455 1
		 1972 1456 1 1456 1973 1 1973 1674 1 1674 1974 1 1974 1458 1 1458 1975 1 1973 1457 1
		 1457 1974 1 1456 1976 1 1976 1675 1 1675 1973 1 1976 1418 1 1910 1675 1 1675 1977 1
		 1977 1457 1 1425 1977 1 1974 1676 1 1676 1980 1 1980 1458 1 1457 1978 1 1978 1676 1
		 1676 1979 1 1979 1460 1 1460 1980 1 1978 1459 1 1459 1979 1 1977 1677 1 1677 1978 1
		 1906 1677 1 1677 1981 1 1981 1459 1 1424 1981 1 1976 1678 1 1678 1896 1 1456 1982 1
		 1982 1678 1 1678 1983 1 1983 1419 1 1982 1461 1 1461 1983 1 1972 1679 1 1679 1982 1
		 1455 1984 1 1984 1679 1 1679 1985 1 1985 1461 1 1984 1462 1 1462 1985 1 1983 1680 1
		 1680 1900 1 1461 1986 1 1986 1680 1 1680 1987 1 1987 1422 1 1986 1463 1 1463 1987 1
		 1985 1681 1 1681 1986 1 1462 1988 1 1988 1681 1 1681 1989 1 1989 1463 1 1988 1464 1
		 1464 1989 1 1966 1682 1 1682 1981 1 1452 1990 1 1990 1682 1 1682 1991 1 1991 1459 1
		 1990 1465 1 1465 1991 1 1970 1683 1 1683 1990 1 1454 1992 1 1992 1683 1 1683 1993 1
		 1993 1465 1 1992 1466 1 1466 1993 1 1991 1684 1 1684 1979 1 1465 1994 1 1994 1684 1
		 1684 1995 1 1995 1460 1 1994 1467 1 1467 1995 1 1993 1685 1 1685 1994 1 1466 1996 1
		 1996 1685 1 1685 1997 1 1997 1467 1 1996 1468 1 1468 1997 1 1469 1998 1 1998 1686 1
		 1686 2001 1 2001 1469 1 1998 1470 1 1470 1999 1 1999 1686 1 1686 2000 1 2000 1472 1
		 1472 2001 1 1999 1471 1 1471 2000 1 1470 2002 1 2002 1687 1 1687 1999 1 2002 1473 1
		 1473 2003 1 2003 1687 1 1687 2004 1 2004 1471 1 2003 1474 1 1474 2004 1 2000 1688 1
		 1688 2006 1 2006 1472 1 1471 2005 1 2005 1688 1 1688 1989 1 1464 2006 1 2005 1463 1
		 2004 1689 1 1689 2005 1 1474 2007 1 2007 1689 1 1689 1987 1 2007 1422 1 1475 2008 1
		 2008 1690 1 1690 2011 1 2011 1475 1 2008 1476 1 1476 2009 1 2009 1690 1 1690 2010 1
		 2010 1478 1 1478 2011 1 2009 1477 1 1477 2010 1 1476 2012 1 2012 1691 1 1691 2009 1
		 2012 1454 1 1969 1691 1 1691 2013 1 2013 1477 1 1453 2013 1 2010 1692 1 1692 2016 1;
	setAttr ".ed[3320:3485]" 2016 1478 1 1477 2014 1 2014 1692 1 1692 2015 1 2015 1480 1
		 1480 2016 1 2014 1479 1 1479 2015 1 2013 1693 1 1693 2014 1 1971 1693 1 1693 2017 1
		 2017 1479 1 1450 2017 1 1446 2018 1 2018 1694 1 1694 1958 1 2018 1481 1 1481 2019 1
		 2019 1694 1 1694 2020 1 2020 1448 1 2019 1482 1 1482 2020 1 1481 2021 1 2021 1695 0
		 1695 2019 1 1695 2022 0 2022 1482 1 2020 1696 1 1696 1962 1 1482 2023 1 2023 1696 1
		 1696 2017 1 2023 1479 1 2022 1697 0 1697 2023 1 1697 2024 0 2024 1479 1 1069 1698 1
		 1698 1954 1 492 2025 1 2025 1698 1 1698 2018 1 2025 1481 1 1071 1699 0 1699 2025 1
		 1699 2021 0 2002 1700 1 1700 2028 1 2028 1473 1 1470 2026 1 2026 1700 1 1700 2027 1
		 2027 1484 1 1484 2028 1 2026 1483 1 1483 2027 1 1998 1701 1 1701 2026 1 1469 2029 1
		 2029 1701 1 1701 2030 1 2030 1483 1 2029 1485 1 1485 2030 1 2027 1702 1 1702 2033 1
		 2033 1484 1 1483 2031 1 2031 1702 1 1702 2032 1 2032 1487 1 1487 2033 1 2031 1486 1
		 1486 2032 1 2030 1703 1 1703 2031 1 1485 2034 1 2034 1703 1 1703 2035 1 2035 1486 1
		 2034 1488 1 1488 2035 1 1489 2036 1 2036 1704 1 1704 2039 1 2039 1489 1 2036 1490 1
		 1490 2037 1 2037 1704 1 1704 2038 1 2038 1492 1 1492 2039 1 2037 1491 1 1491 2038 1
		 1490 2040 1 2040 1705 1 1705 2037 1 2040 1493 1 1493 2041 1 2041 1705 1 1705 2042 1
		 2042 1491 1 2041 1494 1 1494 2042 1 2038 1706 1 1706 2044 1 2044 1492 1 1491 2043 1
		 2043 1706 1 1706 2006 1 1464 2044 1 2043 1472 1 2042 1707 1 1707 2043 1 1494 2045 1
		 2045 1707 1 1707 2001 1 2045 1469 1 1495 2046 1 2046 1708 1 1708 2049 1 2049 1495 1
		 2046 1496 1 1496 2047 1 2047 1708 1 1708 2048 1 2048 1498 1 1498 2049 1 2047 1497 1
		 1497 2048 1 1496 2050 1 2050 1709 1 1709 2047 1 2050 1499 1 1499 2051 1 2051 1709 1
		 1709 2052 1 2052 1497 1 2051 1500 1 1500 2052 1 2048 1710 1 1710 2054 1 2054 1498 1
		 1497 2053 1 2053 1710 1 1710 1984 1 1455 2054 1 2053 1462 1 2052 1711 1 1711 2053 1
		 1500 2055 1 2055 1711 1 1711 1988 1 2055 1464 1 2045 1712 1 1712 2029 1 1494 2056 1
		 2056 1712 1 1712 2057 1 2057 1485 1 2056 1501 1 1501 2057 1 2041 1713 1 1713 2056 1;
	setAttr ".ed[3486:3651]" 1493 2058 1 2058 1713 1 1713 2059 1 2059 1501 1 2058 1502 1
		 1502 2059 1 2057 1714 1 1714 2034 1 1501 2060 1 2060 1714 1 1714 2061 1 2061 1488 1
		 2060 1503 1 1503 2061 1 2059 1715 1 1715 2060 1 1502 2062 1 2062 1715 1 1715 2063 1
		 2063 1503 1 2062 1504 1 1504 2063 1 2049 1716 1 1716 2066 1 2066 1495 1 1498 2064 1
		 2064 1716 1 1716 2065 1 2065 1506 1 1506 2066 1 2064 1505 1 1505 2065 1 2054 1717 1
		 1717 2064 1 1975 1717 1 1717 2067 1 2067 1505 1 1458 2067 1 2065 1718 1 1718 2070 1
		 2070 1506 1 1505 2068 1 2068 1718 1 1718 2069 1 2069 1508 1 1508 2070 1 2068 1507 1
		 1507 2069 1 2067 1719 1 1719 2068 1 1980 1719 1 1719 2071 1 2071 1507 1 1460 2071 1
		 1509 2072 1 2072 1720 1 1720 2075 1 2075 1509 1 2072 1510 1 1510 2073 1 2073 1720 1
		 1720 2074 1 2074 1512 1 1512 2075 1 2073 1511 1 1511 2074 1 1510 2076 1 2076 1721 1
		 1721 2073 1 2076 1495 1 2066 1721 1 1721 2077 1 2077 1511 1 1506 2077 1 2074 1722 1
		 1722 2080 1 2080 1512 1 1511 2078 1 2078 1722 1 1722 2079 1 2079 1514 1 1514 2080 1
		 2078 1513 1 1513 2079 1 2077 1723 1 1723 2078 1 2070 1723 1 1723 2081 1 2081 1513 1
		 1508 2081 1 1515 2082 1 2082 1724 1 1724 2085 1 2085 1515 1 2082 1516 1 1516 2083 1
		 2083 1724 1 1724 2084 1 2084 1518 1 1518 2085 1 2083 1517 1 1517 2084 1 1516 2086 1
		 2086 1725 1 1725 2083 1 2086 1514 1 2079 1725 1 1725 2087 1 2087 1517 1 1513 2087 1
		 2084 1726 1 1726 2090 1 2090 1518 1 1517 2088 1 2088 1726 1 1726 2089 1 2089 1520 1
		 1520 2090 1 2088 1519 1 1519 2089 1 2087 1727 1 1727 2088 1 2081 1727 1 1727 2091 1
		 2091 1519 1 1508 2091 1 1521 2092 1 2092 1728 1 1728 2095 1 2095 1521 1 2092 1522 1
		 1522 2093 1 2093 1728 1 1728 2094 1 2094 1524 1 1524 2095 1 2093 1523 1 1523 2094 1
		 1522 2096 1 2096 1729 1 1729 2093 1 2096 1499 1 2050 1729 1 1729 2097 1 2097 1523 1
		 1496 2097 1 2094 1730 1 1730 2099 1 2099 1524 1 1523 2098 1 2098 1730 1 1730 2072 1
		 1509 2099 1 2098 1510 1 2097 1731 1 1731 2098 1 2046 1731 1 1731 2076 1 2096 1732 1
		 1732 2102 1 2102 1499 1 1522 2100 1 2100 1732 1 1732 2101 1 2101 1526 1 1526 2102 1;
	setAttr ".ed[3652:3817]" 2100 1525 1 1525 2101 1 2092 1733 1 1733 2100 1 1521 2103 1
		 2103 1733 1 1733 2104 1 2104 1525 1 2103 1527 1 1527 2104 1 2101 1734 1 1734 2106 1
		 2106 1526 1 1525 2105 1 2105 1734 1 1734 2036 1 1489 2106 1 2105 1490 1 2104 1735 1
		 1735 2105 1 1527 2107 1 2107 1735 1 1735 2040 1 2107 1493 1 1528 2108 1 2108 1736 1
		 1736 2111 1 2111 1528 1 2108 1529 1 1529 2109 1 2109 1736 1 1736 2110 1 2110 1531 1
		 1531 2111 1 2109 1530 1 1530 2110 1 1529 2112 1 2112 1737 1 1737 2109 1 2112 1532 1
		 1532 2113 1 2113 1737 1 1737 2114 1 2114 1530 1 2113 1533 1 1533 2114 1 2110 1738 1
		 1738 2116 1 2116 1531 1 1530 2115 1 2115 1738 1 1738 1997 1 1468 2116 1 2115 1467 1
		 2114 1739 1 1739 2115 1 1533 2117 1 2117 1739 1 1739 2118 1 2118 1467 1 2117 1534 1
		 1534 2118 1 1475 2119 1 2119 1740 1 1740 2008 1 2119 1535 1 1535 2120 1 2120 1740 1
		 1740 2121 1 2121 1476 1 2120 1536 1 1536 2121 1 1535 2122 1 2122 1741 1 1741 2120 1
		 2122 1528 1 2111 1741 1 1741 2123 1 2123 1536 1 1531 2123 1 2121 1742 1 1742 2012 1
		 1536 2124 1 2124 1742 1 1742 1992 1 2124 1466 1 2123 1743 1 1743 2124 1 2116 1743 1
		 1743 1996 1 2075 1744 1 1744 2127 1 2127 1509 1 1512 2125 1 2125 1744 1 1744 2126 1
		 2126 1538 1 1538 2127 1 2125 1537 1 1537 2126 1 2080 1745 1 1745 2125 1 1514 2128 1
		 2128 1745 1 1745 2129 1 2129 1537 1 2128 1539 1 1539 2129 1 2126 1746 1 1746 2132 1
		 2132 1538 1 1537 2130 1 2130 1746 1 1746 2131 1 2131 1541 1 1541 2132 1 2130 1540 1
		 1540 2131 1 2129 1747 1 1747 2130 1 1539 2133 1 2133 1747 1 1747 2134 1 2134 1540 1
		 2133 1542 1 1542 2134 1 1543 2135 1 2135 1748 1 1748 2138 1 2138 1543 1 2135 1544 1
		 1544 2136 1 2136 1748 1 1748 2137 1 2137 1546 1 1546 2138 1 2136 1545 1 1545 2137 1
		 1544 2139 1 2139 1749 1 1749 2136 1 2139 1521 1 2095 1749 1 1749 2140 1 2140 1545 1
		 1524 2140 1 2137 1750 1 1750 2142 1 2142 1546 1 1545 2141 1 2141 1750 1 1750 2132 1
		 1541 2142 1 2141 1538 1 2140 1751 1 1751 2141 1 2099 1751 1 1751 2127 1 2139 1752 1
		 1752 2103 1 1544 2143 1 2143 1752 1 1752 2144 1 2144 1527 1 2143 1547 1 1547 2144 1;
	setAttr ".ed[3818:3983]" 2135 1753 1 1753 2143 1 1543 2145 1 2145 1753 1 1753 2146 1
		 2146 1547 1 2145 1548 1 1548 2146 1 2144 1754 1 1754 2107 1 1547 2147 1 2147 1754 1
		 1754 2058 1 2147 1502 1 2146 1755 1 1755 2147 1 1548 2148 1 2148 1755 1 1755 2062 1
		 2148 1504 1 2032 1756 1 1756 2151 1 2151 1487 1 1486 2149 1 2149 1756 1 1756 2150 1
		 2150 1550 1 1550 2151 1 2149 1549 1 1549 2150 1 2035 1757 1 1757 2149 1 1488 2152 1
		 2152 1757 1 1757 2153 1 2153 1549 1 2152 1551 1 1551 2153 1 2150 1758 1 1758 2156 1
		 2156 1550 1 1549 2154 1 2154 1758 1 1758 2155 1 2155 1552 1 1552 2156 1 2154 1546 1
		 1546 2155 1 2153 1759 1 1759 2154 1 1551 2157 1 2157 1759 1 1759 2138 1 2157 1543 1
		 1542 2158 1 2158 1760 1 1760 2134 1 2158 1553 1 1553 2159 1 2159 1760 1 1760 2160 1
		 2160 1540 1 2159 1554 1 1554 2160 1 1553 2161 1 2161 1761 1 1761 2159 1 2161 565 1
		 1208 1761 1 1761 2162 1 2162 1554 1 566 2162 1 2160 1762 1 1762 2131 1 1554 2163 1
		 2163 1762 1 1762 2164 1 2164 1541 1 2163 1555 1 1555 2164 1 2162 1763 1 1763 2163 1
		 1212 1763 1 1763 2165 1 2165 1555 1 568 2165 1 569 2166 1 2166 1764 1 1764 1216 1
		 2166 1487 1 2151 1764 1 1764 2167 1 2167 570 1 1550 2167 1 2167 1765 1 1765 1218 1
		 2156 1765 1 1765 2168 1 2168 571 1 1552 2168 1 1951 1766 1 1766 1221 1 1438 2169 1
		 2169 1766 1 1766 2170 1 2170 573 1 2169 1556 1 1556 2170 1 2170 1767 1 1767 1223 1
		 1556 2171 1 2171 1767 1 1767 2166 1 2171 1487 1 1557 2172 1 2172 1768 1 1768 2175 1
		 2175 1557 1 2172 1558 1 1558 2173 1 2173 1768 1 1768 2174 1 2174 1560 1 1560 2175 1
		 2173 1559 1 1559 2174 1 1558 2176 1 2176 1769 1 1769 2173 1 2176 1528 1 1528 2177 1
		 2177 1769 1 1769 2178 1 2178 1559 1 2177 1561 1 1561 2178 1 2174 1770 1 1770 2181 1
		 2181 1560 1 1559 2179 1 2179 1770 1 1770 2180 1 2180 1563 1 1563 2181 1 2179 1562 1
		 1562 2180 1 2178 1771 1 1771 2179 1 1561 2182 1 2182 1771 1 1771 2183 1 2183 1562 1
		 2182 1564 1 1564 2183 1 1557 2184 1 2184 1772 1 1772 2172 1 2184 1565 1 1565 2185 1
		 2185 1772 1 1772 2186 1 2186 1558 1 2185 1566 1 1566 2186 1 1565 2187 1 2187 1773 1;
	setAttr ".ed[3984:4149]" 1773 2185 1 2187 1567 1 1567 2188 1 2188 1773 1 1773 2189 1
		 2189 1566 1 2188 1568 1 1568 2189 1 2186 1774 1 1774 2176 1 1566 2190 1 2190 1774 1
		 1774 2108 1 2190 1529 1 2189 1775 1 1775 2190 1 1568 2191 1 2191 1775 1 1775 2112 1
		 2191 1532 1 2122 1776 1 1776 2177 1 1535 2192 1 2192 1776 1 1776 2193 1 2193 1561 1
		 2192 1569 1 1569 2193 1 2119 1777 1 1777 2192 1 1475 2194 1 2194 1777 1 1777 2195 1
		 2195 1569 1 2194 1570 1 1570 2195 1 2193 1778 1 1778 2182 1 1569 2196 1 2196 1778 1
		 1778 2197 1 2197 1564 1 2196 1571 1 1571 2197 1 2195 1779 1 1779 2196 1 1570 2198 1
		 2198 1779 1 1779 2199 1 2199 1571 1 2198 1572 1 1572 2199 1 2011 1780 1 1780 2194 1
		 1478 2200 1 2200 1780 1 1780 2201 1 2201 1570 1 2200 1573 1 1573 2201 1 2016 1781 1
		 1781 2200 1 1480 2202 1 2202 1781 1 1781 2203 1 2203 1573 1 2202 1574 1 2201 1782 1
		 1782 2198 1 1573 2204 1 2204 1782 1 1782 2205 1 2205 1572 1 1575 2205 1 2206 1783 1
		 2206 2330 0 1567 2207 1 2207 1784 1 1784 2188 1 2207 1576 1 1576 2208 1 2208 1784 1
		 1784 2209 1 2209 1568 1 2208 1577 1 1577 2209 1 1576 2210 1 2210 1785 1 1785 2208 1
		 2210 1578 1 1578 2211 1 2211 1785 1 1785 2212 1 2212 1577 1 2211 1579 1 1579 2212 1
		 2209 1786 1 1786 2191 1 1577 2213 1 2213 1786 1 1786 2113 1 2213 1533 1 2212 1787 1
		 1787 2213 1 1579 2214 1 2214 1787 1 1787 2117 1 2214 1534 1 1580 2215 0 2215 1575 0
		 1572 2216 1 2216 1788 1 1788 2199 1 2216 1581 1 1581 2217 1 2217 1788 1 1788 2218 1
		 2218 1571 1 2217 1582 1 1582 2218 1 1581 2219 1 2219 1789 1 1789 2217 1 2219 600 1
		 1272 1789 1 1789 2220 1 2220 1582 1 601 2220 1 2218 1790 1 1790 2197 1 1582 2221 1
		 2221 1790 1 1790 2222 1 2222 1564 1 2221 1583 1 1583 2222 1 2220 1791 1 1791 2221 1
		 1276 1791 1 1791 2223 1 2223 1583 1 603 2223 1 2222 1792 1 1792 2183 1 1583 2224 1
		 2224 1792 1 1792 2225 1 2225 1562 1 2224 1584 1 1584 2225 1 2223 1793 1 1793 2224 1
		 1280 1793 1 1793 2226 1 2226 1584 1 605 2226 1 2225 1794 1 1794 2180 1 1584 2227 1
		 2227 1794 1 1794 2228 1 2228 1563 1 2227 1585 1 1585 2228 1 2226 1795 1 1795 2227 1;
	setAttr ".ed[4150:4315]" 1284 1795 1 1795 2229 1 2229 1585 1 607 2229 1 1520 2230 1
		 2230 1796 1 1796 2233 1 2233 1520 1 2230 1586 1 1586 2231 1 2231 1796 1 1796 2232 1
		 2232 1588 1 1588 2233 1 2231 1587 1 1587 2232 1 1586 2234 1 2234 1797 1 1797 2231 1
		 2234 1578 1 2210 1797 1 1797 2235 1 2235 1587 1 1576 2235 1 2232 1798 1 1798 2237 1
		 2237 1588 1 1587 2236 1 2236 1798 1 1798 2184 1 1557 2237 1 2236 1565 1 2235 1799 1
		 1799 2236 1 2207 1799 1 1799 2187 1 1563 2238 1 2238 1800 1 1800 2181 1 2238 1589 1
		 1589 2239 1 2239 1800 1 1800 2240 1 2240 1560 1 2239 1590 1 1590 2240 1 1589 2241 1
		 2241 1801 1 1801 2239 1 2241 1591 1 1591 2242 1 2242 1801 1 1801 2243 1 2243 1590 1
		 2242 1592 1 1592 2243 1 2240 1802 1 1802 2175 1 1590 2244 1 2244 1802 1 1802 2245 1
		 2245 1557 1 2244 1593 1 1593 2245 1 2243 1803 1 1803 2244 1 1592 2246 1 2246 1803 1
		 1803 2247 1 2247 1593 1 2246 1594 1 1594 2247 1 2245 1804 1 1804 2237 1 1593 2248 1
		 2248 1804 1 1804 2249 1 2249 1588 1 2248 1595 1 1595 2249 1 2247 1805 1 1805 2248 1
		 1594 2250 1 2250 1805 1 1805 2251 1 2251 1595 1 2250 1596 1 1596 2251 1 2249 1806 1
		 1806 2233 1 1595 2252 1 2252 1806 1 1806 2090 1 2252 1518 1 2251 1807 1 1807 2252 1
		 1596 2253 1 2253 1807 1 1807 2085 1 2253 1515 1 2086 1808 1 1808 2128 1 1516 2254 1
		 2254 1808 1 1808 2255 1 2255 1539 1 2254 1597 1 1597 2255 1 2082 1809 1 1809 2254 1
		 1515 2256 1 2256 1809 1 1809 2257 1 2257 1597 1 2256 1598 1 1598 2257 1 2255 1810 1
		 1810 2133 1 1597 2258 1 2258 1810 1 1810 2259 1 2259 1542 1 2258 1599 1 1599 2259 1
		 2257 1811 1 1811 2258 1 1598 2260 1 2260 1811 1 1811 2261 1 2261 1599 1 2260 1600 1
		 1600 2261 1 1601 2262 1 2262 1812 1 1812 2265 1 2265 1601 1 2262 1602 1 1602 2263 1
		 2263 1812 1 1812 2264 1 2264 1604 1 1604 2265 1 2263 1603 1 1603 2264 1 1602 2266 1
		 2266 1813 1 1813 2263 1 2266 1600 1 2260 1813 1 1813 2267 1 2267 1603 1 1598 2267 1
		 2264 1814 1 1814 2269 1 2269 1604 1 1603 2268 1 2268 1814 1 1814 2250 1 1594 2269 1
		 2268 1596 1 2267 1815 1 1815 2268 1 2256 1815 1 1815 2253 1 1600 2270 1 2270 1816 1;
	setAttr ".ed[4316:4481]" 1816 2261 1 2270 1605 1 1605 2271 1 2271 1816 1 1816 2272 1
		 2272 1599 1 2271 1606 1 1606 2272 1 1605 2273 1 2273 1817 1 1817 2271 1 2273 629 1
		 1330 1817 1 1817 2274 1 2274 1606 1 630 2274 1 2272 1818 1 1818 2259 1 1606 2275 1
		 2275 1818 1 1818 2158 1 2275 1553 1 2274 1819 1 1819 2275 1 1333 1819 1 1819 2161 1
		 1334 1820 1 1820 2278 1 2278 631 1 632 2276 1 2276 1820 1 1820 2277 1 2277 1608 1
		 1608 2278 1 2276 1607 1 1607 2277 1 1338 1821 1 1821 2276 1 2273 1821 1 1821 2279 1
		 2279 1607 1 1605 2279 1 2277 1822 1 1822 2281 1 2281 1608 1 1607 2280 1 2280 1822 1
		 1822 2262 1 1601 2281 1 2280 1602 1 2279 1823 1 1823 2280 1 2270 1823 1 1823 2266 1
		 2246 1824 1 1824 2269 1 1592 2282 1 2282 1824 1 1824 2283 1 2283 1604 1 2282 1609 1
		 1609 2283 1 2242 1825 1 1825 2282 1 1591 2284 1 2284 1825 1 1825 2285 1 2285 1609 1
		 2284 1610 1 1610 2285 1 2283 1826 1 1826 2265 1 1609 2286 1 2286 1826 1 1826 2287 1
		 2287 1601 1 2286 1611 1 1611 2287 1 2285 1827 1 1827 2286 1 1610 2288 1 2288 1827 1
		 1827 2289 1 2289 1611 1 2288 1612 1 1612 2289 1 2228 1828 1 1828 2238 1 1585 2290 1
		 2290 1828 1 1828 2291 1 2291 1589 1 2290 1613 1 1613 2291 1 2229 1829 1 1829 2290 1
		 1352 1829 1 1829 2292 1 2292 1613 1 640 2292 1 2291 1830 1 1830 2241 1 1613 2293 1
		 2293 1830 1 1830 2294 1 2294 1591 1 2293 1614 1 1614 2294 1 2292 1831 1 1831 2293 1
		 1356 1831 1 1831 2295 1 2295 1614 1 642 2295 1 1612 2296 1 2296 1832 1 1832 2289 1
		 2296 1615 1 1615 2297 1 2297 1832 1 1832 2298 1 2298 1611 1 2297 1616 1 1616 2298 1
		 1615 2299 1 2299 1833 1 1833 2297 1 2299 645 1 1362 1833 1 1833 2300 1 2300 1616 1
		 646 2300 1 2298 1834 1 1834 2287 1 1616 2301 1 2301 1834 1 1834 2281 1 2301 1608 1
		 2300 1835 1 1835 2301 1 1365 1835 1 1835 2278 1 2294 1836 1 1836 2284 1 1614 2302 1
		 2302 1836 1 1836 2303 1 2303 1610 1 2302 1617 1 1617 2303 1 2295 1837 1 1837 2302 1
		 1368 1837 1 1837 2304 1 2304 1617 1 648 2304 1 2303 1838 1 1838 2288 1 1617 2305 1
		 2305 1838 1 1838 2296 1 2305 1615 1 2304 1839 1 1839 2305 1 1371 1839 1 1839 2299 1;
	setAttr ".ed[4482:4647]" 1905 1840 1 1840 1876 1 1423 2306 1 2306 1840 1 1840 1948 1
		 2306 1444 1 1901 1841 1 1841 2306 1 2007 1841 1 1841 2307 1 2307 1444 1 1474 2307 1
		 2307 1842 1 1842 1949 1 2003 1842 1 1842 2308 1 2308 1442 1 1473 2308 1 2171 1843 1
		 1843 2033 1 1556 2309 1 2309 1843 1 1843 2310 1 2310 1484 1 2309 1443 1 1443 2310 1
		 2169 1844 1 1844 2309 1 1942 1844 1 1844 1947 1 2310 1845 1 1845 2028 1 1946 1845 1
		 1845 2308 1 2168 1846 1 1846 1378 1 1552 2311 1 2311 1846 1 1846 2165 1 2311 1555 1
		 2312 1580 0 649 2312 0 2215 1847 1 1847 2205 1 1580 2313 1 2313 1847 1 1847 2216 1
		 2313 1581 1 2312 1848 1 1848 2313 1 1381 1848 1 1848 2219 1 2071 1849 1 1849 2315 1
		 2315 1507 1 1995 1849 1 1849 2314 1 2314 1618 1 1618 2315 1 1467 2314 1 2102 1850 1
		 1850 2051 1 1526 2316 1 2316 1850 1 1850 2317 1 2317 1500 1 2316 1619 1 1619 2317 1
		 1619 2318 1 2318 1851 1 1851 2317 1 2318 1492 1 2044 1851 1 1851 2055 1 2145 1852 1
		 1852 2320 1 2320 1548 1 2157 1852 1 1852 2319 1 2319 1620 1 1620 2320 1 1551 2319 1
		 2142 1853 1 1853 2155 1 2164 1853 1 1853 2311 1 2039 1854 1 1854 2106 1 2318 1854 1
		 1854 2316 1 2315 1855 1 1855 2069 1 1618 2321 1 2321 1855 1 1855 2091 1 2321 1519 1
		 2024 1856 0 1856 2015 1 1856 2322 0 2322 1480 1 1586 2323 1 2323 1857 1 1857 2234 1
		 2323 1618 1 1618 2324 1 2324 1857 1 1857 2211 1 2324 1579 1 2314 1858 1 1858 2324 1
		 2118 1858 1 1858 2214 1 1620 2325 1 2325 1859 1 1859 2320 1 2325 1503 1 2063 1859 1
		 1859 2148 1 2319 1860 1 1860 2325 1 2152 1860 1 1860 2061 1 2089 1861 1 1861 2230 1
		 2321 1861 1 1861 2323 1 2322 1574 0 1409 2326 1 2326 1862 1 1862 2327 1 2327 1409 1
		 2326 1621 1 1869 1862 1 1862 1885 1 1410 2327 1 1409 2328 1 2328 1863 1 1863 2326 1
		 2328 1623 1 1887 1863 1 1863 1893 1 2327 1864 1 1864 2328 1 1881 1864 1 1864 1877 1
		 2202 2331 1 1783 2329 1 1573 1783 1 2329 2205 1 2330 1575 0 2204 2329 1 2329 2330 1
		 2331 1783 1 2332 2206 0 2203 2331 1 2331 2332 1 1574 2332 0 2333 2334 1 2334 2335 1
		 2335 2336 1 2336 2333 1 2335 2337 1 2337 2338 1 2338 2336 1 2339 2340 1 2340 2341 1;
	setAttr ".ed[4648:4813]" 2341 2342 1 2342 2339 1 2341 2334 1 2333 2342 1 2343 2344 1
		 2344 2345 1 2345 2346 1 2346 2343 1 2347 2343 1 2346 2348 1 2348 2347 1 2349 2350 1
		 2350 2351 1 2351 2352 1 2352 2349 1 2353 2349 1 2352 2354 1 2354 2353 1 2355 2356 1
		 2356 2357 1 2357 2358 1 2358 2355 1 2358 2359 1 2359 2360 1 2360 2355 1 2336 2361 1
		 2361 2362 1 2362 2333 1 2338 2363 1 2363 2361 1 2342 2364 1 2364 2365 1 2365 2339 1
		 2362 2364 1 2366 2367 1 2367 2368 1 2368 2369 1 2369 2366 1 2367 2370 1 2370 2371 1
		 2371 2368 1 2368 2372 1 2372 2373 1 2373 2369 1 2371 2374 1 2374 2372 1 2375 2376 1
		 2376 2377 1 2377 2378 1 2378 2375 1 2379 2378 1 2377 2380 1 2380 2379 1 2378 2367 1
		 2366 2375 1 2379 2370 1 2381 2382 1 2382 2383 1 2383 2384 1 2384 2381 1 2375 2381 1
		 2384 2376 1 2381 2385 1 2385 2386 1 2386 2382 1 2366 2385 1 2387 2383 1 2382 2388 1
		 2388 2387 1 2386 2389 1 2389 2388 1 2390 2391 1 2391 2387 1 2388 2390 1 2392 2390 1
		 2389 2392 1 2393 2394 1 2394 2395 1 2395 2396 1 2396 2393 1 2397 2398 1 2398 2395 1
		 2395 2399 1 2399 2397 1 2400 2401 1 2401 2402 1 2402 2403 1 2403 2400 1 2402 2404 1
		 2404 2405 1 2405 2403 1 2400 2406 1 2406 2407 1 2407 2408 1 2408 2400 1 2409 2408 1
		 2407 2410 1 2410 2409 1 2411 2397 1 2399 2412 1 2412 2411 1 2413 2409 1 2410 2414 1
		 2414 2413 1 2415 2413 1 2414 2416 1 2416 2415 1 2417 2418 1 2418 2419 1 2419 2420 1
		 2420 2417 1 2421 2422 1 2422 2423 1 2423 2424 1 2424 2421 1 2423 2425 1 2425 2426 1
		 2426 2424 1 2419 2422 1 2421 2420 1 2427 2428 1 2428 2429 1 2429 2430 1 2430 2427 1
		 2431 2432 1 2432 2433 1 2433 2434 1 2434 2431 1 2435 2436 1 2436 2437 1 2437 2438 1
		 2438 2435 1 2439 2440 1 2440 2436 1 2435 2439 1 2441 2433 1 2432 2429 1 2429 2441 1
		 2442 2443 1 2443 2444 1 2444 2445 1 2445 2442 1 2446 2447 1 2447 2443 1 2442 2446 1
		 2448 2449 1 2449 2450 1 2450 2451 1 2451 2448 1 2450 2447 1 2446 2451 1 2452 2453 1
		 2453 2449 1 2448 2452 1 2452 2454 1 2454 2455 1 2455 2453 1 2437 2456 1 2456 2457 1
		 2457 2438 1 2456 2458 1 2458 2459 1 2459 2457 1 2385 2460 1 2460 2461 1 2461 2386 1;
	setAttr ".ed[4814:4979]" 2462 2374 1 2371 2463 1 2463 2462 1 2389 2357 1 2356 2392 1
		 2373 2461 1 2460 2369 1 2344 2464 1 2464 2465 1 2465 2345 1 2466 2467 1 2467 2468 1
		 2468 2469 1 2469 2466 1 2425 2470 1 2470 2471 1 2471 2426 1 2458 2468 1 2467 2459 1
		 2472 2370 1 2370 2473 1 2473 2474 1 2474 2472 1 2379 2475 1 2475 2473 1 2404 2476 1
		 2476 2477 1 2477 2405 1 2476 2478 1 2478 2479 1 2479 2477 1 2427 2471 1 2470 2428 1
		 2475 2393 1 2393 2480 1 2480 2473 1 2472 2463 1 2475 2481 1 2481 2394 1 2380 2481 1
		 2357 2363 1 2338 2358 1 2482 2483 1 2483 2484 1 2484 2485 1 2485 2482 1 2486 2487 1
		 2487 2488 1 2488 2489 1 2489 2486 1 2490 2491 1 2491 2488 1 2487 2490 1 2492 2493 1
		 2493 2494 1 2494 2495 1 2495 2492 1 2496 2497 1 2497 2498 1 2498 2499 1 2499 2496 1
		 2489 2500 1 2500 2501 1 2501 2486 1 2500 2502 1 2502 2503 1 2503 2501 1 2493 2504 1
		 2504 2505 1 2505 2494 1 2497 2506 1 2506 2507 1 2507 2498 1 2502 2505 1 2504 2503 1
		 2506 2455 1 2454 2507 1 2343 2352 1 2351 2344 1 2347 2354 1 2398 2508 1 2508 2396 1
		 2464 2396 1 2508 2465 1 2394 2509 1 2509 2399 1 2509 2479 1 2479 2412 1 2432 2510 1
		 2510 2430 1 2466 2441 1 2428 2466 1 2495 2482 1 2485 2492 1 2511 2499 1 2499 2492 1
		 2485 2511 1 2355 2346 1 2345 2356 1 2360 2348 1 2390 2508 1 2398 2391 1 2392 2465 1
		 2397 2416 1 2416 2391 1 2411 2415 1 2512 2513 1 2513 2514 1 2514 2515 1 2515 2512 1
		 2516 2517 1 2517 2431 1 2431 2518 1 2518 2516 1 2519 2434 1 2434 2520 1 2520 2521 1
		 2521 2519 1 2444 2522 1 2522 2511 1 2511 2445 1 2523 2520 1 2520 2524 1 2524 2525 1
		 2525 2523 1 2526 2484 1 2483 2527 1 2527 2526 1 2518 2418 1 2417 2516 1 2521 2440 1
		 2439 2519 1 2337 2359 1 2527 2491 1 2490 2526 1 2528 2529 1 2529 2530 1 2530 2469 1
		 2469 2528 1 2531 2528 1 2468 2531 1 2532 2531 1 2458 2532 1 2523 2533 1 2533 2521 1
		 2533 2534 1 2534 2440 1 2436 2535 1 2535 2536 1 2536 2437 1 2534 2535 1 2536 2537 1
		 2537 2456 1 2537 2532 1 2529 2525 1 2524 2530 1 2525 2522 1 2444 2523 1 2433 2524 1
		 2419 2435 1 2438 2422 1 2418 2439 1 2441 2530 1 2457 2423 1 2459 2425 1 2470 2467 1;
	setAttr ".ed[4980:5145]" 2519 2518 1 2445 2484 1 2526 2442 1 2490 2446 1 2451 2487 1
		 2486 2448 1 2496 2529 1 2528 2497 1 2501 2452 1 2503 2454 1 2531 2506 1 2532 2455 1
		 2443 2533 1 2447 2534 1 2535 2450 1 2449 2536 1 2498 2493 1 2453 2537 1 2507 2504 1
		 2496 2522 1 2410 2383 1 2387 2414 1 2376 2406 1 2406 2538 1 2538 2377 1 2538 2539 1
		 2539 2380 1 2407 2384 1 2539 2540 1 2540 2481 1 2540 2509 1 2403 2538 1 2405 2539 1
		 2408 2541 1 2541 2401 1 2409 2542 1 2542 2541 1 2515 2411 1 2412 2543 1 2543 2515 1
		 2413 2544 1 2544 2542 1 2415 2514 1 2514 2544 1 2477 2540 1 2478 2543 1 2545 2546 1
		 2546 2335 1 2334 2545 1 2546 2547 1 2547 2337 1 2548 2549 1 2549 2341 1 2340 2548 1
		 2549 2545 1 2550 2551 1 2551 2347 1 2348 2550 1 2552 2553 1 2553 2360 1 2359 2552 1
		 2554 2548 1 2340 2555 1 2555 2554 1 2547 2552 1 2556 2354 1 2551 2556 1 2553 2550 1
		 2557 2558 1 2558 2559 1 2559 2560 1 2560 2557 1 2561 2562 1 2562 2563 1 2563 2564 1
		 2564 2561 1 2563 2565 1 2565 2566 1 2566 2564 1 2559 2562 1 2561 2560 1 2567 2568 1
		 2568 2569 1 2569 2570 1 2570 2567 1 2565 2571 1 2571 2572 1 2572 2566 1 2571 2568 1
		 2567 2572 1 2569 2573 1 2573 2512 1 2512 2570 1 2574 2573 1 2573 2510 1 2510 2517 1
		 2517 2574 1 2574 2575 1 2575 2576 1 2576 2513 1 2513 2574 1 2575 2558 1 2557 2576 1
		 2558 2417 1 2420 2559 1 2562 2421 1 2424 2563 1 2426 2565 1 2568 2427 1 2430 2569 1
		 2471 2571 1 2516 2575 1 2542 2557 1 2560 2541 1 2401 2561 1 2564 2402 1 2566 2404 1
		 2478 2567 1 2570 2543 1 2572 2476 1 2576 2544 1 2361 2461 1 2373 2362 1 2363 2386 1
		 2364 2372 1 2374 2365 1 2464 2480 1 2351 2480 1 2462 2577 1 2577 2365 1 2339 2578 1
		 2578 2555 1 2577 2578 1 2579 2353 1 2556 2579 1 2580 2474 1 2480 2580 1 2350 2580 1
		 2581 2582 0 2582 2583 1 2583 2584 1 2584 2581 1 2585 2586 0 2586 2587 1 2587 2588 1
		 2588 2585 1 2589 2585 0 2588 2590 1 2590 2589 1 2591 2592 0 2592 2593 1 2593 2594 1
		 2594 2591 1 2586 2595 0 2595 2596 1 2596 2587 1 2595 2597 0 2597 2598 1 2598 2596 1
		 2599 2591 0 2594 2600 1 2600 2599 1 2597 2599 0 2600 2598 1 2592 2581 0 2584 2593 1;
	setAttr ".ed[5146:5311]" 2582 2601 0 2601 2602 1 2602 2583 1 2601 2589 0 2590 2602 1
		 2603 2604 0 2605 2603 0 2606 2607 0 2604 2606 0 2608 2609 0 2610 2611 0 2607 2612 0
		 2611 2605 0 2613 2608 0 2609 2610 0 2614 2613 0 2583 2483 1 2482 2584 1 2587 2489 1
		 2488 2588 1 2491 2590 1 2593 2495 1 2494 2594 1 2596 2500 1 2598 2502 1 2505 2600 1
		 2602 2527 1 2603 2546 1 2545 2604 1 2605 2547 1 2606 2549 1 2548 2607 1 2550 2609 1
		 2608 2551 1 2552 2611 1 2610 2553 1 2554 2612 1 2613 2556 1 2614 2579 1 2615 2618 1
		 2618 2617 1 2617 2616 1 2616 2615 1 2618 2620 1 2620 2619 1 2619 2617 1 2621 2624 1
		 2624 2623 1 2623 2622 1 2622 2621 1 2624 2615 1 2616 2623 1 2625 2628 1 2628 2627 1
		 2627 2626 1 2626 2625 1 2629 2630 1 2630 2628 1 2625 2629 1 2349 2632 1 2632 2631 1
		 2631 2350 1 2353 2633 1 2633 2632 1 2634 2637 1 2637 2636 1 2636 2635 1 2635 2634 1
		 2634 2639 1 2639 2638 1 2638 2637 1 2615 2641 1 2641 2640 1 2640 2618 1 2640 2642 1
		 2642 2620 1 2621 2644 1 2644 2643 1 2643 2624 1 2643 2641 1 2645 2648 1 2648 2647 1
		 2647 2646 1 2646 2645 1 2647 2650 1 2650 2649 1 2649 2646 1 2648 2652 1 2652 2651 1
		 2651 2647 1 2651 2653 1 2653 2650 1 2654 2657 1 2657 2656 1 2656 2655 1 2655 2654 1
		 2658 2659 1 2659 2656 1 2657 2658 1 2654 2645 1 2646 2657 1 2649 2658 1 2660 2663 1
		 2663 2662 1 2662 2661 1 2661 2660 1 2655 2663 1 2660 2654 1 2661 2665 1 2665 2664 1
		 2664 2660 1 2664 2645 1 2666 2667 1 2667 2661 1 2662 2666 1 2667 2668 1 2668 2665 1
		 2669 2667 1 2666 2670 1 2670 2669 1 2671 2668 1 2669 2671 1 2672 2675 1 2675 2674 1
		 2674 2673 1 2673 2672 1 2676 2678 1 2678 2674 1 2674 2677 1 2677 2676 1 2679 2682 1
		 2682 2681 1 2681 2680 1 2680 2679 1 2682 2684 1 2684 2683 1 2683 2681 1 2679 2687 1
		 2687 2686 1 2686 2685 1 2685 2679 1 2688 2689 1 2689 2686 1 2687 2688 1 2690 2691 1
		 2691 2678 1 2676 2690 1 2692 2693 1 2693 2689 1 2688 2692 1 2694 2695 1 2695 2693 1
		 2692 2694 1 2696 2699 1 2699 2698 1 2698 2697 1 2697 2696 1 2700 2703 1 2703 2702 1
		 2702 2701 1 2701 2700 1 2703 2705 1 2705 2704 1 2704 2702 1 2699 2700 1 2701 2698 1;
	setAttr ".ed[5312:5477]" 2706 2709 1 2709 2708 1 2708 2707 1 2707 2706 1 2710 2713 1
		 2713 2712 1 2712 2711 1 2711 2710 1 2714 2717 1 2717 2716 1 2716 2715 1 2715 2714 1
		 2718 2714 1 2715 2719 1 2719 2718 1 2720 2708 1 2708 2711 1 2712 2720 1 2721 2724 1
		 2724 2723 1 2723 2722 1 2722 2721 1 2725 2721 1 2722 2726 1 2726 2725 1 2727 2730 1
		 2730 2729 1 2729 2728 1 2728 2727 1 2730 2725 1 2726 2729 1 2731 2727 1 2728 2732 1
		 2732 2731 1 2732 2734 1 2734 2733 1 2733 2731 1 2717 2736 1 2736 2735 1 2735 2716 1
		 2736 2738 1 2738 2737 1 2737 2735 1 2665 2740 1 2740 2739 1 2739 2664 1 2463 2650 1
		 2653 2462 1 2671 2635 1 2636 2668 1 2648 2739 1 2740 2652 1 2627 2742 1 2742 2741 1
		 2741 2626 1 2743 2746 1 2746 2745 1 2745 2744 1 2744 2743 1 2705 2748 1 2748 2747 1
		 2747 2704 1 2738 2744 1 2745 2737 1 2474 2749 1 2749 2649 1 2649 2472 1 2749 2750 1
		 2750 2658 1 2684 2752 1 2752 2751 1 2751 2683 1 2752 2754 1 2754 2753 1 2753 2751 1
		 2707 2747 1 2748 2706 1 2749 2755 1 2755 2672 1 2672 2750 1 2673 2756 1 2756 2750 1
		 2756 2659 1 2637 2620 1 2642 2636 1 2757 2760 1 2760 2759 1 2759 2758 1 2758 2757 1
		 2761 2764 1 2764 2763 1 2763 2762 1 2762 2761 1 2765 2762 1 2763 2766 1 2766 2765 1
		 2767 2770 1 2770 2769 1 2769 2768 1 2768 2767 1 2771 2774 1 2774 2773 1 2773 2772 1
		 2772 2771 1 2761 2776 1 2776 2775 1 2775 2764 1 2776 2778 1 2778 2777 1 2777 2775 1
		 2769 2780 1 2780 2779 1 2779 2768 1 2773 2782 1 2782 2781 1 2781 2772 1 2778 2779 1
		 2780 2777 1 2782 2733 1 2734 2781 1 2626 2631 1 2632 2625 1 2633 2629 1 2675 2783 1
		 2783 2677 1 2742 2783 1 2675 2741 1 2678 2784 1 2784 2673 1 2691 2754 1 2754 2784 1
		 2709 2785 1 2785 2711 1 2743 2707 1 2720 2743 1 2767 2760 1 2757 2770 1 2786 2760 1
		 2767 2774 1 2774 2786 1 2635 2627 1 2628 2634 1 2630 2639 1 2670 2677 1 2783 2669 1
		 2742 2671 1 2670 2695 1 2695 2676 1 2694 2690 1 2787 2790 1 2790 2789 1 2789 2788 1
		 2788 2787 1 2791 2793 1 2793 2710 1 2710 2792 1 2792 2791 1 2794 2796 1 2796 2795 1
		 2795 2713 1 2713 2794 1 2724 2786 1 2786 2797 1 2797 2723 1 2798 2800 1 2800 2799 1;
	setAttr ".ed[5478:5643]" 2799 2795 1 2795 2798 1 2801 2802 1 2802 2758 1 2759 2801 1
		 2791 2696 1 2697 2793 1 2794 2718 1 2719 2796 1 2638 2619 1 2801 2765 1 2766 2802 1
		 2803 2746 1 2746 2805 1 2805 2804 1 2804 2803 1 2806 2745 1 2803 2806 1 2807 2737 1
		 2806 2807 1 2796 2808 1 2808 2798 1 2719 2809 1 2809 2808 1 2716 2811 1 2811 2810 1
		 2810 2715 1 2810 2809 1 2735 2812 1 2812 2811 1 2807 2812 1 2805 2799 1 2800 2804 1
		 2798 2723 1 2797 2800 1 2799 2712 1 2701 2717 1 2714 2698 1 2718 2697 1 2805 2720 1
		 2702 2736 1 2704 2738 1 2744 2747 1 2793 2794 1 2721 2801 1 2759 2724 1 2725 2765 1
		 2727 2761 1 2762 2730 1 2772 2803 1 2804 2771 1 2731 2776 1 2733 2778 1 2781 2806 1
		 2734 2807 1 2808 2722 1 2809 2726 1 2811 2728 1 2729 2810 1 2768 2773 1 2812 2732 1
		 2779 2782 1 2797 2771 1 2693 2666 1 2662 2689 1 2656 2813 1 2813 2685 1 2685 2655 1
		 2659 2814 1 2814 2813 1 2663 2686 1 2756 2815 1 2815 2814 1 2784 2815 1 2813 2682 1
		 2814 2684 1 2680 2816 1 2816 2687 1 2816 2817 1 2817 2688 1 2790 2818 1 2818 2691 1
		 2690 2790 1 2817 2819 1 2819 2692 1 2819 2789 1 2789 2694 1 2815 2752 1 2818 2753 1
		 2820 2616 1 2617 2821 1 2821 2820 1 2619 2822 1 2822 2821 1 2823 2622 1 2623 2824 1
		 2824 2823 1 2820 2824 1 2825 2630 1 2629 2826 1 2826 2825 1 2827 2638 1 2639 2828 1
		 2828 2827 1 2555 2622 1 2823 2554 1 2827 2822 1 2829 2826 1 2633 2829 1 2825 2828 1
		 2830 2833 1 2833 2832 1 2832 2831 1 2831 2830 1 2834 2837 1 2837 2836 1 2836 2835 1
		 2835 2834 1 2837 2839 1 2839 2838 1 2838 2836 1 2833 2834 1 2835 2832 1 2840 2843 1
		 2843 2842 1 2842 2841 1 2841 2840 1 2839 2845 1 2845 2844 1 2844 2838 1 2845 2840 1
		 2841 2844 1 2843 2787 1 2787 2846 1 2846 2842 1 2847 2792 1 2792 2785 1 2785 2846 1
		 2846 2847 1 2847 2788 1 2788 2849 1 2849 2848 1 2848 2847 1 2849 2830 1 2831 2848 1
		 2832 2699 1 2696 2831 1 2836 2703 1 2700 2835 1 2838 2705 1 2842 2709 1 2706 2841 1
		 2844 2748 1 2848 2791 1 2816 2833 1 2830 2817 1 2681 2837 1 2834 2680 1 2683 2839 1
		 2818 2843 1 2840 2753 1 2751 2845 1 2819 2849 1 2641 2652 1 2740 2640 1 2665 2642 1;
	setAttr ".ed[5644:5809]" 2644 2653 1 2651 2643 1 2755 2741 1 2755 2631 1 2644 2577 1
		 2578 2621 1 2579 2829 1 2580 2755 1 2850 2853 1 2853 2852 1 2852 2851 1 2851 2850 0
		 2854 2857 1 2857 2856 1 2856 2855 1 2855 2854 0 2858 2859 1 2859 2857 1 2854 2858 0
		 2860 2863 1 2863 2862 1 2862 2861 1 2861 2860 0 2856 2865 1 2865 2864 1 2864 2855 0
		 2865 2867 1 2867 2866 1 2866 2864 0 2868 2869 1 2869 2863 1 2860 2868 0 2867 2869 1
		 2868 2866 0 2862 2853 1 2850 2861 0 2852 2871 1 2871 2870 1 2870 2851 0 2871 2859 1
		 2858 2870 0 2873 2872 0 2872 2874 0 2876 2875 0 2875 2873 0 2878 2877 0 2880 2879 0
		 2612 2876 0 2874 2880 0 2877 2881 0 2879 2878 0 2881 2614 0 2853 2757 1 2758 2852 1
		 2857 2763 1 2764 2856 1 2859 2766 1 2863 2769 1 2770 2862 1 2775 2865 1 2777 2867 1
		 2869 2780 1 2802 2871 1 2873 2820 1 2821 2872 1 2822 2874 1 2876 2823 1 2824 2875 1
		 2826 2877 1 2878 2825 1 2828 2879 1 2880 2827 1 2829 2881 1 2882 2883 1 2883 2911 1
		 2911 2884 1 2884 2882 1 2885 2882 1 2884 2886 1 2886 2885 1 2887 2888 1 2888 2885 1
		 2886 2887 1 2889 2903 1 2903 2888 1 2887 2889 1 2882 2890 1 2890 2913 1 2913 2883 1
		 2885 2891 1 2891 2890 1 2888 2892 1 2892 2891 1 2903 2893 1 2893 2892 1 2908 2905 1
		 2905 2902 1 2901 2902 1 2901 2908 1 2909 2908 1 2900 2901 1 2900 2909 1 2899 2910 1
		 2910 2909 1 2899 2900 1 2898 2914 1 2914 2910 1 2899 2898 1 2935 2920 1 2920 2951 1
		 2921 2951 1 2921 2935 1 2936 2925 1 2925 2922 1 2923 2922 1 2923 2936 1 2926 2927 1
		 2927 2932 1 2932 2912 1 2912 2926 1 2928 2929 1 2929 2927 1 2926 2928 1 2895 2929 1
		 2929 2930 1 2930 2896 1 2896 2895 1 2896 2897 1 2930 2904 1 2897 2904 1 2900 2939 1
		 2938 2939 1 2938 2899 1 2901 2940 1 2939 2940 1 2902 2906 1 2940 2906 1 2941 2916 1
		 2941 2903 1 2889 2916 1 2883 2975 1 2945 2975 1 2945 2911 1 2912 2976 1 2946 2976 1
		 2946 2913 1 2912 2913 1 2978 2937 1 2978 2914 1 2898 2937 1 2977 2978 1 2977 2915 1
		 2914 2915 1 2950 2977 1 2950 2932 1 2915 2932 1 2933 2918 1 2974 2918 1 3023 2974 1
		 2933 3023 1 2954 2952 1 2955 2954 1 2955 2953 1 2953 2952 1 2952 2937 1 2937 2938 1;
	setAttr ".ed[5810:5975]" 2938 2954 1 2939 2955 1 2955 2956 1 2940 2956 1 2956 2957 1
		 2906 2957 1 2957 2958 1 2906 2907 1 2907 2958 1 2907 2944 1 2994 2944 1 2994 2958 1
		 2944 2942 1 2942 2993 1 2993 2994 1 2949 2992 1 2992 2959 1 2959 2943 1 2943 2949 1
		 2916 2961 1 2961 2960 1 2960 2941 1 2974 2963 1 2962 2963 1 2962 2917 1 2917 2974 1
		 2965 2964 1 2964 2918 1 2918 2919 1 2919 2965 1 2966 2965 1 2921 2919 1 2921 2966 1
		 2967 2966 1 2951 2967 1 2968 2967 1 2923 2951 1 2923 2968 1 2969 2922 1 2969 2968 1
		 2922 2948 1 2948 2970 1 2969 2970 1 2975 2971 1 2982 2971 1 2982 2945 1 2946 2981 1
		 2981 2971 1 2975 2946 1 2976 2950 1 2950 2980 1 2980 2972 1 2972 2976 1 2952 2973 1
		 2973 2978 1 2997 2995 1 2995 2990 1 2991 2990 1 2991 2997 1 2989 2996 1 2996 2997 1
		 2989 2991 1 2989 2988 1 2988 2987 1 2987 2996 1 2987 2986 1 2986 2985 1 2985 2996 1
		 2985 2983 1 2997 2983 1 2983 2984 1 2984 2995 1 2998 2982 1 2971 2999 1 2999 2998 1
		 2981 3000 1 3000 2999 1 3001 2972 1 2980 3002 1 3002 3001 1 2953 3004 1 3004 2973 1
		 2957 2953 1 2958 3004 1 3003 2994 1 3003 3004 1 2993 3002 1 3002 3003 1 3001 2959 1
		 2992 3000 1 3000 3001 1 2999 2960 1 2961 2998 1 3006 3005 1 3005 2998 1 2961 3006 1
		 2990 2962 1 2963 2991 1 2964 2989 1 2963 2964 1 2965 2988 1 2966 2987 1 2967 2986 1
		 2968 2985 1 3007 2984 1 2984 2970 1 2970 2982 1 2982 3007 1 3005 3007 1 3010 3008 0
		 3010 2886 1 2884 3008 1 3011 3010 0 3011 2887 1 3012 3011 0 3012 2889 1 3021 3013 0
		 3013 2924 1 2925 2924 1 2925 3021 1 3014 3023 1 3014 3020 0 3020 2933 1 3016 3015 0
		 3016 2935 1 2935 2934 1 2934 3015 1 3018 3017 0 3018 2936 1 2936 2920 1 2920 3017 1
		 3019 3012 0 3019 2947 1 2889 2947 1 3015 3020 0 2934 2933 1 3017 3016 0 3008 3009 0
		 2911 3009 1 2894 2910 1 2894 2915 1 2895 2909 1 2895 2894 1 2896 2908 1 2897 2905 1
		 2927 2894 1 2928 3022 1 3022 2930 1 3022 2931 1 2904 2931 1 2943 2942 1 2993 2959 1
		 2977 2979 1 2980 2979 1 2973 2979 1 3003 2979 1 2890 2926 1 2891 2928 1 2892 3022 1
		 2931 2893 1 2960 2992 1 2941 2949 1 2981 2972 1 2917 2947 1 2947 3023 1 2916 2917 1;
	setAttr ".ed[5976:6141]" 2961 2962 1 2945 2948 1 2995 3005 1 2990 3006 1 2983 2969 1
		 3009 3013 0 2924 2911 1 3014 3019 0 3021 3018 0 2905 2907 1 2934 2919 1 2931 2943 1
		 2942 2904 1 2948 2924 1 2949 2893 1 2897 2944 1 3031 3032 1 3032 3033 1 3033 3034 1
		 3034 3031 1 3035 3036 1 3036 3033 1 3032 3035 1 3037 3038 1 3038 3039 1 3039 3040 1
		 3040 3037 1 3041 3037 1 3040 3042 1 3042 3041 1 3043 3044 1 3044 3045 1 3045 3046 1
		 3046 3043 1 3100 3101 1 3101 3047 1 3047 3048 1 3048 3100 1 3049 3050 1 3050 3039 1
		 3039 3051 1 3051 3049 1 3052 3049 1 3051 3053 1 3053 3052 1 3052 3025 1 3025 3024 1
		 3024 3049 1 3024 3109 1 3109 3050 1 3054 3055 1 3055 3036 1 3035 3054 1 3056 3057 1
		 3057 3055 1 3054 3056 1 3058 3059 1 3059 3053 1 3051 3058 1 3038 3058 1 3060 3117 1
		 3117 3026 1 3026 3061 1 3061 3060 1 3040 3060 1 3061 3042 1 3050 3060 1 3109 3117 1
		 3027 3062 1 3062 3063 1 3063 3121 1 3121 3027 1 3062 3031 1 3034 3063 1 3064 3041 1
		 3061 3064 1 3028 3064 1 3026 3028 1 3062 3065 1 3065 3066 1 3066 3031 1 3027 3029 1
		 3029 3065 1 3068 3165 1 3165 3067 1 3159 3067 1 3159 3068 1 3127 3159 1 3030 3067 1
		 3030 3127 1 3041 3034 1 3033 3037 1 3036 3038 1 3043 3048 1 3047 3044 1 3055 3058 1
		 3057 3059 1 3028 3121 1 3063 3064 1 3056 3045 1 3044 3057 1 3047 3059 1 3047 3052 1
		 3101 3025 1 3070 3071 0 3072 3070 0 3075 3073 0 3069 3076 0 3077 3072 0 3078 3077 0
		 3079 3138 0 3071 3079 0 3080 3081 1 3081 3079 1 3071 3080 1 3081 3141 1 3141 3138 1
		 3083 3164 1 3164 3082 1 3082 3158 1 3083 3158 1 3158 3145 1 3145 3144 1 3083 3144 1
		 3076 3074 0 3073 3078 0 3031 3071 1 3070 3032 1 3072 3035 1 3045 3073 1 3075 3046 1
		 3048 3076 1 3069 3100 1 3077 3054 1 3078 3056 1 3066 3080 1 3164 3165 1 3068 3082 1
		 3158 3159 1 3127 3145 1 3074 3043 0 3084 3087 1 3087 3086 1 3086 3085 1 3085 3084 1
		 3088 3085 1 3086 3089 1 3089 3088 1 3090 3093 1 3093 3092 1 3092 3091 1 3091 3090 1
		 3094 3095 1 3095 3093 1 3090 3094 1 3096 3099 1 3099 3098 1 3098 3097 1 3097 3096 1
		 3100 3103 1 3103 3102 1 3102 3101 1 3104 3106 1 3106 3092 1 3092 3105 1 3105 3104 1;
	setAttr ".ed[6142:6307]" 3107 3108 1 3108 3106 1 3104 3107 1 3104 3024 1 3025 3107 1
		 3105 3109 1 3110 3088 1 3089 3111 1 3111 3110 1 3112 3110 1 3111 3113 1 3113 3112 1
		 3114 3106 1 3108 3115 1 3115 3114 1 3114 3091 1 3116 3118 1 3118 3026 1 3117 3116 1
		 3095 3118 1 3116 3093 1 3116 3105 1 3121 3120 1 3120 3119 1 3119 3027 1 3120 3087 1
		 3084 3119 1 3122 3118 1 3094 3122 1 3122 3028 1 3084 3124 1 3124 3123 1 3123 3119 1
		 3123 3029 1 3125 3162 1 3162 3126 1 3126 3160 1 3125 3160 1 3125 3030 1 3160 3127 1
		 3090 3086 1 3087 3094 1 3091 3089 1 3097 3102 1 3103 3096 1 3114 3111 1 3115 3113 1
		 3122 3120 1 3113 3097 1 3098 3112 1 3115 3102 1 3107 3102 1 3129 3128 0 3128 3130 0
		 3131 3133 0 3134 3069 0 3130 3135 0 3135 3136 0 3138 3137 0 3137 3129 0 3139 3129 1
		 3137 3140 1 3140 3139 1 3141 3140 1 3142 3163 1 3163 3143 1 3161 3143 1 3161 3142 1
		 3144 3143 1 3145 3161 1 3132 3134 0 3136 3131 0 3085 3128 1 3129 3084 1 3088 3130 1
		 3099 3133 1 3131 3098 1 3134 3103 1 3110 3135 1 3112 3136 1 3139 3124 1 3162 3163 1
		 3142 3126 1 3160 3161 1 3096 3132 0 3154 3155 1 3155 3099 0 3154 3096 0 3155 3156 1
		 3156 3133 0 3157 3132 0 3157 3154 1 3046 3147 0 3146 3147 1 3043 3146 0 3075 3148 0
		 3147 3148 1 3074 3149 0 3149 3146 1 3147 3151 0 3150 3151 1 3146 3150 0 3148 3152 0
		 3151 3152 1 3149 3153 0 3153 3150 1 3151 3155 0 3150 3154 0 3152 3156 0 3153 3157 0
		 3029 3030 1 3065 3067 1 3125 3123 1 3124 3162 1 3163 3139 1 3140 3143 1 3144 3141 1
		 3083 3081 1 3080 3164 1 3165 3066 1 3166 3167 1 3167 3273 1 3273 3272 1 3166 3272 1
		 3273 3364 1 3364 3362 1 3272 3362 1 3167 3168 1 3168 3363 1 3363 3273 1 3363 3169 1
		 3169 3364 1 3364 3275 1 3275 3274 1 3362 3274 1 3169 3365 1 3365 3275 1 3166 3366 1
		 3366 3367 1 3367 3167 1 3366 3170 1 3170 3171 1 3171 3367 1 3170 3368 1 3368 3369 1
		 3369 3171 1 3368 3172 1 3172 3173 1 3173 3369 1 3367 3370 1 3370 3168 1 3171 3174 1
		 3174 3370 1 3369 3371 1 3371 3174 1 3173 3175 1 3175 3371 1 3373 3372 1 3372 3176 1
		 3176 3376 1 3376 3373 1 3372 3374 1 3374 3375 1 3375 3176 1 3374 3274 1 3275 3375 1;
	setAttr ".ed[6308:6473]" 3176 3177 1 3177 3178 1 3178 3376 1 3375 3377 1 3377 3177 1
		 3365 3377 1 3179 3378 1 3378 3379 1 3379 3380 1 3380 3179 1 3379 3180 1 3180 3181 1
		 3181 3380 1 3378 3381 1 3381 3382 1 3382 3379 1 3382 3182 1 3182 3180 1 3180 3383 1
		 3383 3384 1 3384 3181 1 3383 3376 1 3178 3384 1 3182 3385 1 3385 3383 1 3385 3373 1
		 3173 3386 1 3386 3387 1 3387 3175 1 3386 3183 1 3183 3184 1 3184 3387 1 3524 3388 1
		 3388 3276 1 3276 3389 1 3389 3524 1 3276 3390 1 3390 3522 1 3522 3389 1 3388 3185 1
		 3353 3185 1 3353 3276 1 3186 3353 1 3186 3390 1 3390 3277 1 3277 3391 1 3391 3522 1
		 3277 3392 1 3392 3187 1 3187 3391 1 3339 3186 1 3339 3277 1 3543 3339 1 3543 3392 1
		 3407 3188 1 3188 3394 1 3394 3393 1 3407 3393 1 3188 3189 1 3189 3190 1 3190 3394 1
		 3394 3279 1 3279 3278 1 3393 3278 1 3190 3395 1 3395 3279 1 3191 3192 1 3192 3396 1
		 3396 3280 1 3191 3280 1 3396 3189 1 3189 3397 1 3280 3397 1 3410 3193 1 3193 3399 1
		 3399 3398 1 3410 3398 1 3193 3194 1 3194 3397 1 3397 3399 1 3399 3188 1 3398 3407 1
		 3401 3400 1 3400 3195 1 3195 3403 1 3403 3401 1 3400 3402 1 3402 3412 1 3412 3195 1
		 3195 3279 1 3395 3403 1 3412 3278 1 3400 3282 1 3282 3281 1 3402 3281 1 3401 3404 1
		 3404 3282 1 3282 3193 1 3281 3410 1 3404 3194 1 3406 3405 1 3405 3196 1 3196 3197 1
		 3197 3406 1 3405 3407 1 3393 3196 1 3196 3408 1 3408 3198 1 3198 3197 1 3278 3408 1
		 3348 3409 1 3409 3199 1 3199 3411 1 3411 3348 1 3409 3410 1 3398 3199 1 3199 3405 1
		 3406 3411 1 3402 3200 1 3200 3413 1 3413 3412 1 3200 3521 1 3521 3201 1 3201 3413 1
		 3413 3408 1 3201 3198 1 3200 3414 1 3414 3325 1 3521 3325 1 3281 3414 1 3414 3409 1
		 3348 3325 1 3202 3415 1 3415 3283 1 3283 3417 1 3417 3202 1 3415 3203 1 3203 3418 1
		 3418 3283 1 3283 3416 1 3416 3204 1 3204 3417 1 3418 3205 1 3205 3416 1 3416 3284 1
		 3284 3420 1 3420 3204 1 3205 3421 1 3421 3284 1 3284 3419 1 3419 3206 1 3206 3420 1
		 3421 3207 1 3207 3419 1 3203 3422 1 3422 3423 1 3423 3418 1 3423 3208 1 3208 3205 1
		 3422 3424 1 3424 3285 1 3285 3423 1 3424 3209 1 3209 3287 1 3287 3285 1 3285 3425 1;
	setAttr ".ed[6474:6639]" 3425 3208 1 3287 3429 1 3429 3425 1 3208 3426 1 3426 3421 1
		 3426 3210 1 3210 3207 1 3425 3286 1 3286 3426 1 3429 3289 1 3289 3286 1 3286 3427 1
		 3427 3210 1 3289 3433 1 3433 3427 1 3209 3211 1 3211 3428 1 3428 3287 1 3428 3212 1
		 3212 3429 1 3211 3430 1 3430 3288 1 3288 3428 1 3430 3544 1 3347 3544 1 3347 3288 1
		 3288 3431 1 3431 3212 1 3213 3347 1 3213 3431 1 3212 3432 1 3432 3289 1 3432 3214 1
		 3214 3433 1 3431 3290 1 3290 3432 1 3213 3434 1 3434 3290 1 3290 3435 1 3435 3214 1
		 3434 3215 1 3215 3435 1 3474 3436 1 3436 3437 1 3437 3438 1 3438 3474 1 3437 3216 1
		 3216 3217 1 3217 3438 1 3436 3439 1 3439 3291 1 3291 3437 1 3439 3218 1 3218 3440 1
		 3440 3291 1 3291 3441 1 3441 3216 1 3440 3219 1 3219 3441 1 3216 3442 1 3442 3443 1
		 3443 3217 1 3442 3220 1 3220 3221 1 3221 3443 1 3441 3292 1 3292 3442 1 3340 3219 1
		 3340 3292 1 3292 3444 1 3444 3220 1 3544 3340 1 3544 3444 1 3308 3474 1 3308 3293 1
		 3293 3436 1 3478 3308 1 3478 3445 1 3445 3293 1 3309 3478 1 3309 3294 1 3294 3445 1
		 3221 3309 1 3220 3294 1 3293 3295 1 3295 3439 1 3445 3446 1 3446 3295 1 3295 3343 1
		 3218 3343 1 3446 3222 1 3343 3222 1 3294 3296 1 3296 3446 1 3444 3296 1 3296 3447 1
		 3447 3222 1 3544 3447 1 3450 3448 1 3448 3449 1 3449 3453 1 3453 3450 1 3448 3223 1
		 3223 3224 1 3224 3449 1 3223 3451 1 3451 3452 1 3452 3224 1 3451 3225 1 3225 3226 1
		 3226 3452 1 3449 3345 1 3215 3345 1 3215 3453 1 3224 3227 1 3345 3227 1 3452 3454 1
		 3454 3227 1 3226 3228 1 3228 3454 1 3453 3298 1 3298 3297 1 3450 3297 1 3298 3456 1
		 3456 3455 1 3297 3455 1 3434 3298 1 3213 3456 1 3456 3300 1 3300 3299 1 3455 3299 1
		 3300 3226 1 3299 3225 1 3346 3213 1 3346 3300 1 3228 3346 1 3458 3457 1 3457 3229 1
		 3229 3230 1 3230 3458 1 3457 3459 1 3459 3460 1 3460 3229 1 3459 3341 1 3219 3341 1
		 3219 3460 1 3229 3461 1 3461 3462 1 3462 3230 1 3461 3231 1 3231 3232 1 3232 3462 1
		 3460 3301 1 3301 3461 1 3440 3301 1 3301 3463 1 3463 3231 1 3218 3463 1 3312 3233 1
		 3312 3302 1 3302 3466 1 3466 3233 1 3483 3312 1 3483 3464 1 3464 3302 1 3313 3483 1;
	setAttr ".ed[6640:6805]" 3313 3303 1 3303 3464 1 3484 3313 1 3484 3465 1 3465 3303 1
		 3302 3448 1 3450 3466 1 3464 3223 1 3303 3451 1 3465 3225 1 3466 3304 1 3304 3467 1
		 3467 3233 1 3304 3468 1 3468 3234 1 3234 3467 1 3297 3304 1 3455 3468 1 3468 3305 1
		 3305 3469 1 3469 3234 1 3305 3465 1 3484 3469 1 3299 3305 1 3235 3458 1 3230 3236 1
		 3235 3236 1 3462 3470 1 3236 3470 1 3232 3237 1 3470 3237 1 3497 3471 1 3471 3472 1
		 3472 3473 1 3473 3497 1 3472 3238 1 3238 3239 1 3239 3473 1 3471 3474 1 3438 3472 1
		 3217 3238 1 3238 3475 1 3475 3476 1 3476 3239 1 3475 3240 1 3240 3241 1 3241 3476 1
		 3443 3475 1 3221 3240 1 3317 3497 1 3317 3306 1 3306 3471 1 3503 3317 1 3503 3477 1
		 3477 3306 1 3318 3503 1 3318 3307 1 3307 3477 1 3241 3318 1 3240 3307 1 3306 3308 1
		 3477 3478 1 3307 3309 1 3242 3479 1 3479 3310 1 3310 3244 1 3244 3242 1 3479 3243 1
		 3243 3480 1 3480 3310 1 3243 3481 1 3481 3311 1 3311 3480 1 3481 3245 1 3245 3482 1
		 3482 3311 1 3310 3312 1 3233 3244 1 3480 3483 1 3311 3313 1 3482 3484 1 3244 3485 1
		 3485 3486 1 3486 3242 1 3485 3246 1 3246 3247 1 3247 3486 1 3467 3485 1 3234 3246 1
		 3246 3487 1 3487 3488 1 3488 3247 1 3487 3482 1 3245 3488 1 3469 3487 1 3490 3489 1
		 3489 3491 1 3491 3248 1 3248 3490 1 3489 3235 1 3236 3491 1 3491 3314 1 3314 3492 1
		 3492 3248 1 3314 3493 1 3493 3249 1 3249 3492 1 3470 3314 1 3237 3493 1 3250 3494 1
		 3494 3495 1 3495 3496 1 3496 3250 1 3495 3251 1 3251 3252 1 3252 3496 1 3494 3497 1
		 3473 3495 1 3239 3251 1 3251 3498 1 3498 3499 1 3499 3252 1 3498 3253 1 3253 3254 1
		 3254 3499 1 3476 3498 1 3241 3253 1 3250 3500 1 3500 3315 1 3315 3494 1 3500 3255 1
		 3255 3501 1 3501 3315 1 3255 3502 1 3502 3316 1 3316 3501 1 3502 3254 1 3253 3316 1
		 3315 3317 1 3501 3503 1 3316 3318 1 3274 3504 1 3504 3505 1 3505 3362 1 3504 3256 1
		 3256 3257 1 3257 3505 1 3374 3319 1 3319 3504 1 3327 3372 1 3327 3319 1 3319 3506 1
		 3506 3256 1 3258 3327 1 3258 3506 1 3256 3507 1 3507 3508 1 3508 3257 1 3507 3259 1
		 3259 3260 1 3260 3508 1 3506 3320 1 3320 3507 1 3258 3509 1 3509 3320 1 3320 3510 1;
	setAttr ".ed[6806:6971]" 3510 3259 1 3509 3261 1 3261 3510 1 3260 3511 1 3511 3321 1
		 3321 3508 1 3511 3262 1 3262 3512 1 3512 3321 1 3321 3513 1 3513 3257 1 3512 3263 1
		 3263 3513 1 3262 3514 1 3514 3322 1 3322 3512 1 3514 3264 1 3264 3515 1 3515 3322 1
		 3322 3516 1 3516 3263 1 3515 3265 1 3265 3516 1 3513 3323 1 3323 3518 1 3518 3257 1
		 3263 3517 1 3517 3323 1 3323 3368 1 3170 3518 1 3517 3172 1 3516 3324 1 3324 3517 1
		 3265 3519 1 3519 3324 1 3324 3520 1 3520 3172 1 3519 3266 1 3266 3520 1 3546 3348 1
		 3546 3521 1 3382 3326 1 3326 3258 1 3258 3182 1 3381 3522 1 3522 3326 1 3385 3327 1
		 3389 3523 1 3523 3191 1 3191 3524 1 3381 3523 1 3417 3328 1 3328 3526 1 3526 3202 1
		 3420 3328 1 3328 3525 1 3525 3267 1 3267 3526 1 3206 3525 1 3486 3329 1 3329 3479 1
		 3488 3329 1 3329 3481 1 3492 3330 1 3330 3490 1 3249 3527 1 3527 3330 1 3502 3331 1
		 3331 3499 1 3500 3331 1 3331 3496 1 3326 3332 1 3332 3509 1 3391 3332 1 3332 3528 1
		 3528 3261 1 3187 3528 1 3344 3215 1 3344 3333 1 3333 3435 1 3222 3344 1 3222 3529 1
		 3529 3333 1 3333 3530 1 3530 3214 1 3529 3268 1 3268 3530 1 3447 3334 1 3334 3529 1
		 3430 3334 1 3334 3531 1 3531 3268 1 3211 3531 1 3532 3218 1 3532 3533 1 3533 3463 1
		 3533 3550 1 3550 3231 1 3342 3532 1 3342 3335 1 3335 3533 1 3341 3342 1 3459 3335 1
		 3335 3534 1 3534 3550 1 3457 3534 1 3352 3433 1 3352 3336 1 3336 3427 1 3269 3352 1
		 3269 3535 1 3535 3336 1 3336 3536 1 3536 3210 1 3535 3548 1 3548 3536 1 3351 3269 1
		 3351 3337 1 3337 3535 1 3209 3351 1 3424 3337 1 3337 3537 1 3537 3548 1 3422 3537 1
		 3232 3538 1 3538 3271 1 3271 3237 1 3538 3539 1 3539 3540 1 3540 3271 1 3539 3458 1
		 3235 3540 1 3271 3549 1 3549 3493 1 3540 3338 1 3338 3549 1 3489 3338 1 3515 3339 1
		 3186 3265 1 3264 3543 1 3363 3340 1 3219 3169 1 3168 3544 1 3365 3341 1 3377 3342 1
		 3532 3177 1 3218 3178 1 3384 3343 1 3222 3181 1 3380 3344 1 3215 3179 1 3184 3545 1
		 3545 3345 1 3227 3184 1 3545 3179 1 3454 3387 1 3228 3175 1 3371 3346 1 3213 3174 1
		 3370 3347 1 3406 3546 1 3270 3542 1 3542 3349 1 3349 3547 1 3547 3270 1 3542 3203 1;
	setAttr ".ed[6972:7137]" 3415 3349 1 3349 3526 1 3267 3547 1 3207 3541 1 3541 3350 1
		 3350 3419 1 3541 3270 1 3547 3350 1 3350 3525 1 3537 3542 1 3270 3548 1 3536 3541 1
		 3531 3351 1 3269 3268 1 3530 3352 1 3338 3330 1 3527 3549 1 3534 3539 1 3538 3550 1
		 3546 3198 1 3519 3353 1 3185 3266 1 3551 3187 1 3392 3354 1 3551 3354 0 3543 3552 1
		 3354 3552 0 3553 3260 1 3259 3355 1 3553 3355 0 3554 3261 1 3528 3356 1 3554 3356 0
		 3356 3551 0 3272 3357 1 3357 3366 1 3505 3357 1 3357 3518 1 3555 3262 1 3511 3358 1
		 3555 3358 0 3358 3553 0 3510 3359 1 3355 3359 0 3359 3554 0 3264 3556 1 3552 3556 0
		 3514 3360 1 3556 3360 0 3360 3555 0 3523 3557 1 3557 3192 1 3378 3557 1 3396 3558 1
		 3558 3190 1 3192 3184 1 3184 3558 1 3194 3559 1 3559 3280 1 3559 3524 1 3404 3361 1
		 3361 3559 1 3361 3388 1 3401 3560 1 3560 3361 1 3560 3185 1 3560 3561 1 3561 3266 1
		 3403 3561 1 3557 3545 1 3183 3562 1 3562 3558 1 3562 3395 1 3520 3386 1 3266 3183 1
		 3561 3562 1 3565 3563 1 3592 3565 1 3564 3592 1 3563 3564 1 3567 3566 1 3565 3567 1
		 3566 3563 1 3567 3568 1 3569 3566 1 3568 3569 1 3568 3570 1 3583 3569 1 3570 3583 1
		 3594 3564 1 3571 3594 1 3563 3571 1 3572 3571 1 3566 3572 1 3573 3572 1 3569 3573 1
		 3574 3573 1 3583 3574 1 3581 3589 1 3582 3581 1 3586 3582 1 3589 3586 1 3580 3590 1
		 3581 3580 1 3590 3589 1 3580 3579 1 3591 3590 1 3579 3591 1 3578 3579 1 3595 3591 1
		 3578 3595 1 3602 3615 1 3631 3602 1 3601 3631 1 3615 3601 1 3603 3616 1 3657 3603 1
		 3627 3657 1 3616 3627 1 3593 3605 1 3611 3593 1 3606 3611 1 3605 3606 1 3605 3607 1
		 3608 3606 1 3607 3608 1 3576 3577 1 3609 3577 1 3608 3609 1 3576 3608 1 3584 3585 1
		 3609 3584 1 3585 3577 1 3618 3579 1 3619 3618 1 3580 3619 1 3620 3619 1 3581 3620 1
		 3587 3620 1 3582 3587 1 3570 3597 1 3621 3583 1 3597 3621 1 3624 3592 1 3658 3624 1
		 3564 3658 1 3594 3593 1 3625 3594 1 3659 3625 1 3593 3659 1 3578 3617 1 3661 3595 1
		 3617 3661 1 3596 3595 1 3596 3660 1 3661 3660 1 3611 3596 1 3630 3611 1 3660 3630 1
		 3613 3612 1 3656 3613 1 3599 3656 1 3612 3599 1 3633 3632 1 3635 3633 1 3634 3635 1;
	setAttr ".ed[7138:7303]" 3632 3634 1 3618 3634 1 3618 3617 1 3632 3617 1 3619 3635 1
		 3620 3636 1 3636 3635 1 3587 3637 1 3637 3636 1 3588 3638 1 3588 3587 1 3638 3637 1
		 3638 3639 1 3655 3639 1 3588 3655 1 3639 3676 1 3622 3676 1 3655 3622 1 3623 3629 1
		 3640 3623 1 3675 3640 1 3629 3675 1 3641 3621 1 3641 3642 1 3597 3642 1 3656 3598 1
		 3643 3598 1 3644 3643 1 3656 3644 1 3600 3646 1 3600 3599 1 3645 3599 1 3645 3646 1
		 3602 3647 1 3600 3602 1 3646 3647 1 3631 3648 1 3647 3648 1 3603 3649 1 3631 3603 1
		 3648 3649 1 3650 3649 1 3657 3650 1 3651 3650 1 3628 3651 1 3657 3628 1 3665 3624 1
		 3652 3665 1 3658 3652 1 3658 3625 1 3664 3652 1 3625 3664 1 3653 3659 1 3653 3663 1
		 3630 3663 1 3659 3630 1 3654 3661 1 3654 3632 1 3679 3673 1 3674 3673 1 3677 3674 1
		 3679 3677 1 3673 3672 1 3678 3679 1 3672 3678 1 3670 3678 1 3670 3671 1 3671 3672 1
		 3668 3678 1 3668 3669 1 3669 3670 1 3667 3679 1 3668 3667 1 3666 3677 1 3666 3667 1
		 3681 3680 1 3652 3681 1 3680 3665 1 3682 3681 1 3664 3682 1 3684 3683 1 3663 3684 1
		 3683 3653 1 3686 3654 1 3633 3686 1 3637 3633 1 3638 3686 1 3685 3686 1 3639 3685 1
		 3684 3685 1 3676 3684 1 3682 3683 1 3675 3682 1 3683 3640 1 3642 3680 1 3681 3641 1
		 3642 3688 1 3687 3680 1 3688 3687 1 3673 3644 1 3674 3643 1 3645 3644 1 3645 3672 1
		 3646 3671 1 3647 3670 1 3648 3669 1 3649 3668 1 3665 3689 1 3651 3665 1 3666 3651 1
		 3689 3666 1 3687 3689 1 3565 3690 1 3692 3567 1 3692 3690 0 3693 3568 1 3693 3692 0
		 3694 3570 1 3694 3693 0 3627 3703 1 3604 3627 1 3695 3604 1 3703 3695 0 3702 3612 1
		 3696 3702 0 3613 3696 1 3614 3697 1 3614 3615 1 3698 3615 1 3698 3697 0 3601 3699 1
		 3601 3616 1 3700 3616 1 3700 3699 0 3626 3570 1 3701 3626 1 3701 3694 0 3612 3614 1
		 3697 3702 0 3699 3698 0 3592 3691 1 3690 3691 0 3596 3575 1 3575 3591 1 3575 3576 1
		 3576 3590 1 3577 3589 1 3586 3585 1 3606 3575 1 3704 3609 1 3607 3704 1 3610 3584 1
		 3704 3610 1 3640 3676 1 3622 3623 1 3662 3663 1 3662 3660 1 3662 3654 1 3662 3685 1
		 3571 3605 1 3572 3607 1 3573 3704 1 3574 3610 1 3629 3621 1 3675 3641 1 3653 3664 1;
	setAttr ".ed[7304:7469]" 3626 3613 1 3598 3626 1 3643 3642 1 3598 3597 1 3628 3624 1
		 3688 3674 1 3677 3687 1 3650 3667 1 3592 3604 1 3691 3695 0 3696 3701 0 3703 3700 0
		 3586 3588 1 3614 3600 1 3622 3584 1 3610 3623 1 3628 3604 1 3629 3574 1 3655 3585 1
		 3707 3708 1 3708 3706 1 3706 3705 1 3705 3707 1 3709 3710 1 3710 3708 1 3707 3709 1
		 3711 3712 1 3712 3710 1 3709 3711 1 3705 3713 1 3713 3714 1 3714 3707 1 3715 3716 1
		 3716 3709 1 3707 3715 1 3718 3715 1 3714 3718 1 3719 3717 1 3717 3715 1 3718 3719 1
		 3721 3718 1 3714 3720 1 3720 3721 1 3723 3721 1 3720 3722 1 3722 3723 1 3724 3721 1
		 3723 3896 1 3896 3724 1 3725 3724 1 3896 3897 1 3897 3725 1 3724 3719 1 3725 3726 1
		 3726 3719 1 3726 3727 1 3727 3717 1 3896 3728 1 3728 3729 1 3729 3897 1 3731 3729 1
		 3728 3730 1 3730 3731 1 3734 3716 1 3717 3734 1 3732 3733 1 3733 3709 1 3716 3732 1
		 3749 3711 1 3733 3749 1 3734 3735 1 3735 3732 1 3727 3736 1 3736 3734 1 3736 3737 1
		 3737 3735 1 3713 3738 1 3738 3720 1 3952 3738 1 3713 3946 1 3946 3952 1 3738 3739 1
		 3739 3722 1 3952 3953 1 3953 3739 1 3740 3725 1 3897 3898 1 3898 3740 1 3740 3741 1
		 3741 3726 1 3741 3742 1 3742 3727 1 3742 3743 1 3743 3736 1 3743 3744 1 3744 3737 1
		 3745 3898 1 3729 3745 1 3746 3745 1 3731 3746 1 3731 3737 1 3744 3746 1 3730 3735 1
		 3747 3732 1 3730 3747 1 3747 3748 1 3748 3733 1 3750 3749 1 3748 3750 1 3898 3907 1
		 3907 3859 1 3859 3740 1 3859 3860 1 3860 3741 1 3860 3861 1 3861 3742 1 3861 3862 1
		 3862 3743 1 3862 3863 1 3863 3744 1 3745 3864 1 3864 3907 1 3746 3865 1 3865 3864 1
		 3863 3865 1 3899 3908 1 3908 3874 1 3874 3751 1 3751 3899 1 3874 3875 1 3875 3752 1
		 3752 3751 1 3875 3876 1 3876 3753 1 3753 3752 1 3754 3753 1 3876 3877 1 3877 3754 1
		 3755 3754 1 3877 3878 1 3878 3755 1 3756 3879 1 3879 3908 1 3899 3756 1 3756 3757 1
		 3757 3880 1 3880 3879 1 3757 3755 1 3878 3880 1 3758 3909 1 3909 3881 1 3881 3759 1
		 3759 3758 1 3881 3882 1 3882 3760 1 3760 3759 1 3882 3883 1 3883 3761 1 3761 3760 1
		 3883 3884 1 3884 3762 1 3762 3761 1 3884 3885 1 3885 3763 1 3763 3762 1 3758 3764 1;
	setAttr ".ed[7470:7635]" 3764 3886 1 3886 3909 1 3764 3765 1 3765 3887 1 3887 3886 1
		 3765 3763 1 3885 3887 1 3766 3900 1 3900 3773 1 3773 3774 1 3774 3766 1 3767 3766 1
		 3774 3775 1 3775 3767 1 3768 3767 1 3775 3776 1 3776 3768 1 3769 3768 1 3776 3777 1
		 3777 3769 1 3770 3769 1 3777 3778 1 3778 3770 1 3900 3771 1 3771 3779 1 3779 3773 1
		 3771 3772 1 3772 3780 1 3780 3779 1 3772 3770 1 3778 3780 1 3773 3901 1 3901 3781 1
		 3781 3774 1 3781 3782 1 3782 3775 1 3782 3783 1 3783 3776 1 3783 3784 1 3784 3777 1
		 3784 3785 1 3785 3778 1 3779 3786 1 3786 3901 1 3780 3787 1 3787 3786 1 3785 3787 1
		 3766 3789 1 3789 3788 1 3788 3900 1 3767 3790 1 3790 3789 1 3768 3791 1 3791 3790 1
		 3769 3792 1 3792 3791 1 3770 3793 1 3793 3792 1 3788 3794 1 3794 3771 1 3794 3795 1
		 3795 3772 1 3795 3793 1 3867 3816 1 3816 3815 1 3815 3796 1 3796 3867 1 3868 3817 1
		 3817 3816 1 3867 3868 1 3869 3818 1 3818 3817 1 3868 3869 1 3819 3818 1 3869 3870 1
		 3870 3819 1 3800 3747 1 3728 3800 1 3800 3801 1 3801 3748 1 3728 3819 1 3819 3820 1
		 3820 3800 1 3821 3820 1 3820 3871 1 3871 3872 1 3872 3821 1 3866 3804 1 3804 3805 1
		 3805 3797 1 3797 3866 1 3805 3806 1 3806 3798 1 3798 3797 1 3806 3807 1 3807 3902 1
		 3902 3798 1 3807 3808 1 3808 3799 1 3799 3902 1 3808 3809 1 3809 3802 1 3802 3799 1
		 3809 3810 1 3810 3803 1 3803 3802 1 3811 3750 1 3801 3811 1 3801 3821 1 3821 3822 1
		 3822 3811 1 3813 3812 1 3812 3803 1 3810 3813 1 3954 3705 1 3706 3947 1 3947 3954 1
		 3711 4178 1 4178 3910 1 3910 3712 1 3954 3946 1 3749 3919 1 3919 4178 1 3750 4179 1
		 4179 3919 1 3948 3955 1 3955 3796 1 3815 3948 1 3949 3956 1 3956 3804 1 3866 3949 1
		 3811 4184 1 4184 4179 1 3822 3922 1 3922 4184 1 3816 3722 1 3739 3815 1 3817 3723 1
		 3818 3896 1 3870 3871 1 3872 3873 1 3873 3822 1 3953 3948 1 3873 4186 1 4186 3922 1
		 3804 3852 1 3852 3853 1 3853 3805 1 3853 3854 1 3854 3806 1 3854 3906 1 3906 3807 1
		 3906 3855 1 3855 3808 1 3855 3856 1 3856 3809 1 3856 3857 1 3857 3810 1 3857 3858 1
		 3858 3813 1 3957 3852 1 3956 3957 1 3824 3823 1 3823 3830 1 3830 3831 1 3831 3824 1;
	setAttr ".ed[7636:7801]" 3825 3824 1 3831 3832 1 3832 3825 1 3903 3825 1 3832 3833 1
		 3833 3903 1 3826 3903 1 3833 3834 1 3834 3826 1 3827 3826 1 3834 3835 1 3835 3827 1
		 3828 3827 1 3835 3836 1 3836 3828 1 3829 3828 1 3836 3837 1 3837 3829 1 3823 3950 1
		 3950 3958 1 3958 3830 1 3830 3838 1 3838 3839 1 3839 3831 1 3839 3840 1 3840 3832 1
		 3840 3904 1 3904 3833 1 3904 3841 1 3841 3834 1 3841 3842 1 3842 3835 1 3842 3843 1
		 3843 3836 1 3843 3844 1 3844 3837 1 3958 3959 1 3959 3838 1 3888 3889 1 3889 3845 1
		 3845 3905 1 3905 3888 1 3889 3890 1 3890 3846 1 3846 3845 1 3890 3891 1 3891 3847 1
		 3847 3846 1 3891 3892 1 3892 3848 1 3848 3847 1 3892 3893 1 3893 3849 1 3849 3848 1
		 3894 3888 1 3905 3850 1 3850 3894 1 3895 3894 1 3850 3851 1 3851 3895 1 3893 3895 1
		 3851 3849 1 3824 3853 1 3852 3823 1 3825 3854 1 3903 3906 1 3826 3855 1 3827 3856 1
		 3828 3857 1 3829 3858 1 3829 3960 1 3960 4239 1 4239 3858 1 3941 3929 1 3929 3928 1
		 3928 3942 1 3942 3941 1 3907 3899 1 3751 3859 1 3752 3860 1 3753 3861 1 3754 3862 1
		 3755 3863 1 3864 3756 1 3865 3757 1 3911 3812 1 3813 3961 1 3961 3911 1 4239 3961 1
		 3837 3924 1 3924 3960 1 3844 4244 1 4244 3924 1 3796 3866 1 3797 3867 1 3798 3868 1
		 3902 3869 1 3799 3870 1 3802 3871 1 3803 3872 1 3812 3873 1 3911 4186 1 3939 3938 1
		 3938 3920 1 3920 3921 1 3921 3939 1 3908 3758 1 3759 3874 1 3760 3875 1 3761 3876 1
		 3762 3877 1 3763 3878 1 3879 3764 1 3880 3765 1 3909 3905 1 3845 3881 1 3846 3882 1
		 3847 3883 1 3848 3884 1 3849 3885 1 3886 3850 1 3887 3851 1 3789 3889 1 3888 3788 1
		 3790 3890 1 3791 3891 1 3792 3892 1 3793 3893 1 3894 3794 1 3895 3795 1 4355 4326 1
		 4326 3947 1 3706 4355 1 3708 4354 1 4354 4355 1 3710 4353 1 4353 4354 1 4352 4353 1
		 3712 4352 1 4351 4352 1 3910 4351 1 3933 3932 1 3932 3814 1 3814 3916 1 3916 3933 1
		 3934 3933 1 3916 3925 1 3925 3934 1 3936 3935 1 3935 3917 1 3917 3918 1 3918 3936 1
		 3932 3936 1 3918 3814 1 3938 3937 1 3937 3927 1 3927 3920 1 3940 3939 1 3921 3926 1
		 3926 3940 1 3937 3934 1 3925 3927 1 3941 3940 1 3926 3929 1 3923 3943 1 3943 3942 1;
	setAttr ".ed[7802:7967]" 3928 3923 1 3944 3943 1 3923 3930 1 3930 3944 1 3942 3950 1
		 3950 3957 1 3957 3941 1 3939 3949 1 3949 3955 1 3955 3938 1 3935 4327 1 4327 4328 1
		 4328 3917 1 3946 3932 1 3933 3952 1 3934 3953 1 3947 3935 1 3936 3954 1 3948 3937 1
		 3940 3956 1 3943 3958 1 3944 3959 1 4326 4327 1 3990 3967 1 3968 3967 0 3968 3975 1
		 3975 3990 1 3969 3968 0 3969 3976 1 3976 3975 1 3970 3969 0 3970 3977 1 3977 3976 1
		 3971 3970 0 3971 3978 1 3978 3977 1 3972 3971 0 3972 3979 1 3979 3978 1 3980 3973 1
		 3967 3973 0 3990 3980 1 3981 3974 1 3973 3974 0 3980 3981 1 3974 3972 0 3981 3979 1
		 4013 3963 0 4013 4331 1 4331 4332 1 4332 3963 1 4332 4333 1 4333 3964 1 3963 3964 0
		 4333 4334 1 4334 3965 1 3964 3965 0 4334 4335 1 4335 3966 1 3965 3966 0 4335 4336 1
		 4336 3992 1 3966 3992 0 4329 4330 1 4330 4010 1 3998 4010 0 3998 4329 1 4330 4331 1
		 4010 4013 0 3901 3990 1 3975 3781 1 3976 3782 1 3977 3783 1 3978 3784 1 3979 3785 1
		 3786 3980 1 3787 3981 1 3838 3983 1 3984 3983 0 3984 3839 1 3985 3984 0 3985 3840 1
		 3991 3985 0 3991 3904 1 3986 3991 0 3986 3841 1 3987 3986 0 3987 3842 1 3988 3987 0
		 3988 3843 1 3989 3988 0 3989 3844 1 3959 4015 1 3983 4015 0 3929 4007 1 4006 4007 1
		 4006 3928 1 4016 3989 0 4016 4244 1 3920 4000 1 4001 4000 1 4001 3921 1 3912 3951 1
		 3912 3993 1 4014 3993 1 4014 3951 1 3913 3912 1 3913 3994 1 3993 3994 1 3914 3913 1
		 3914 3995 1 3994 3995 1 3915 3914 1 3915 3996 1 3995 3996 1 3962 3915 1 3962 4017 1
		 3996 4017 1 3814 3982 1 3997 3982 1 3997 3916 1 4003 3997 1 4003 3925 1 3917 3998 1
		 3999 3998 1 3999 3918 1 3982 3999 1 3927 4005 1 4000 4005 1 4004 4001 1 4004 3926 1
		 4005 4003 1 4007 4004 1 4002 4006 1 4002 3923 1 4008 4002 1 4008 3930 1 4011 4008 0
		 4011 3944 1 3945 3931 1 3945 4012 1 4009 4012 1 4009 3931 1 4328 4329 1 4015 4011 0
		 3951 3945 1 4012 4014 1 4018 4021 1 4021 4020 1 4020 4019 1 4019 4018 1 4022 4018 1
		 4019 4023 1 4023 4022 1 4024 4022 1 4023 4025 1 4025 4024 1 4018 4027 1 4027 4026 1
		 4026 4021 1 4028 4018 1 4022 4029 1 4029 4028 1 4030 4027 1 4028 4030 1 4031 4030 1;
	setAttr ".ed[7968:8133]" 4028 4032 1 4032 4031 1 4033 4034 1 4034 4027 1 4030 4033 1
		 4035 4036 1 4036 4034 1 4033 4035 1 4037 4038 1 4038 4035 1 4033 4037 1 4039 4040 1
		 4040 4038 1 4037 4039 1 4031 4037 1 4031 4041 1 4041 4039 1 4032 4042 1 4042 4041 1
		 4040 4044 1 4044 4043 1 4043 4038 1 4045 4046 1 4046 4043 1 4044 4045 1 4047 4032 1
		 4029 4047 1 4048 4029 1 4022 4049 1 4049 4048 1 4050 4049 1 4024 4050 1 4048 4051 1
		 4051 4047 1 4047 4052 1 4052 4042 1 4051 4053 1 4053 4052 1 4034 4054 1 4054 4026 1
		 4055 4056 1 4056 4026 1 4054 4055 1 4036 4057 1 4057 4054 1 4057 4058 1 4058 4055 1
		 4059 4060 1 4060 4040 1 4039 4059 1 4041 4061 1 4061 4059 1 4042 4062 1 4062 4061 1
		 4052 4063 1 4063 4062 1 4053 4064 1 4064 4063 1 4065 4044 1 4060 4065 1 4066 4045 1
		 4065 4066 1 4066 4064 1 4053 4045 1 4051 4046 1 4067 4046 1 4048 4067 1 4049 4068 1
		 4068 4067 1 4069 4068 1 4050 4069 1 4059 4071 1 4071 4070 1 4070 4060 1 4061 4072 1
		 4072 4071 1 4062 4073 1 4073 4072 1 4063 4074 1 4074 4073 1 4064 4075 1 4075 4074 1
		 4070 4076 1 4076 4065 1 4076 4077 1 4077 4066 1 4077 4075 1 4078 4081 1 4081 4080 1
		 4080 4079 1 4079 4078 1 4081 4083 1 4083 4082 1 4082 4080 1 4083 4085 1 4085 4084 1
		 4084 4082 1 4086 4087 1 4087 4084 1 4085 4086 1 4088 4089 1 4089 4087 1 4086 4088 1
		 4090 4078 1 4079 4091 1 4091 4090 1 4091 4093 1 4093 4092 1 4092 4090 1 4093 4089 1
		 4088 4092 1 4094 4097 1 4097 4096 1 4096 4095 1 4095 4094 1 4097 4099 1 4099 4098 1
		 4098 4096 1 4099 4101 1 4101 4100 1 4100 4098 1 4101 4103 1 4103 4102 1 4102 4100 1
		 4103 4105 1 4105 4104 1 4104 4102 1 4095 4107 1 4107 4106 1 4106 4094 1 4107 4109 1
		 4109 4108 1 4108 4106 1 4109 4104 1 4105 4108 1 4110 4113 1 4113 4112 1 4112 4111 1
		 4111 4110 1 4114 4115 1 4115 4113 1 4110 4114 1 4116 4117 1 4117 4115 1 4114 4116 1
		 4118 4119 1 4119 4117 1 4116 4118 1 4120 4121 1 4121 4119 1 4118 4120 1 4112 4123 1
		 4123 4122 1 4122 4111 1 4123 4125 1 4125 4124 1 4124 4122 1 4125 4121 1 4120 4124 1
		 4113 4127 1 4127 4126 1 4126 4112 1 4115 4128 1 4128 4127 1 4117 4129 1 4129 4128 1;
	setAttr ".ed[8134:8299]" 4119 4130 1 4130 4129 1 4121 4131 1 4131 4130 1 4126 4132 1
		 4132 4123 1 4132 4133 1 4133 4125 1 4133 4131 1 4111 4135 1 4135 4134 1 4134 4110 1
		 4134 4136 1 4136 4114 1 4136 4137 1 4137 4116 1 4137 4138 1 4138 4118 1 4138 4139 1
		 4139 4120 1 4122 4140 1 4140 4135 1 4124 4141 1 4141 4140 1 4139 4141 1 4142 4145 1
		 4145 4144 1 4144 4143 1 4143 4142 1 4146 4142 1 4143 4147 1 4147 4146 1 4148 4146 1
		 4147 4149 1 4149 4148 1 4150 4151 1 4151 4148 1 4149 4150 1 4152 4043 1 4067 4152 1
		 4068 4153 1 4153 4152 1 4152 4154 1 4154 4150 1 4150 4043 1 4155 4157 1 4157 4156 1
		 4156 4154 1 4154 4155 1 4158 4161 1 4161 4160 1 4160 4159 1 4159 4158 1 4161 4163 1
		 4163 4162 1 4162 4160 1 4163 4165 1 4165 4164 1 4164 4162 1 4165 4167 1 4167 4166 1
		 4166 4164 1 4167 4169 1 4169 4168 1 4168 4166 1 4169 4171 1 4171 4170 1 4170 4168 1
		 4172 4153 1 4069 4172 1 4172 4173 1 4173 4155 1 4155 4153 1 4174 4170 1 4171 4175 1
		 4175 4174 1 4176 4177 1 4177 4020 1 4021 4176 1 4025 3910 1 4178 4024 1 4056 4176 1
		 3919 4050 1 4179 4069 1 4180 4144 1 4145 4181 1 4181 4180 1 4182 4158 1 4159 4183 1
		 4183 4182 1 4184 4172 1 3922 4173 1 4144 4057 1 4036 4143 1 4035 4147 1 4038 4149 1
		 4156 4151 1 4173 4185 1 4185 4157 1 4180 4058 1 4186 4185 1 4160 4188 1 4188 4187 1
		 4187 4159 1 4162 4189 1 4189 4188 1 4164 4190 1 4190 4189 1 4166 4191 1 4191 4190 1
		 4168 4192 1 4192 4191 1 4170 4193 1 4193 4192 1 4174 4194 1 4194 4193 1 4195 4183 1
		 4187 4195 1 4196 4199 1 4199 4198 1 4198 4197 1 4197 4196 1 4200 4201 1 4201 4199 1
		 4196 4200 1 4202 4203 1 4203 4201 1 4200 4202 1 4204 4205 1 4205 4203 1 4202 4204 1
		 4206 4207 1 4207 4205 1 4204 4206 1 4208 4209 1 4209 4207 1 4206 4208 1 4210 4211 1
		 4211 4209 1 4208 4210 1 4198 4213 1 4213 4212 1 4212 4197 1 4199 4215 1 4215 4214 1
		 4214 4198 1 4201 4216 1 4216 4215 1 4203 4217 1 4217 4216 1 4205 4218 1 4218 4217 1
		 4207 4219 1 4219 4218 1 4209 4220 1 4220 4219 1 4211 4221 1 4221 4220 1 4214 4222 1
		 4222 4213 1 4223 4226 1 4226 4225 1 4225 4224 1 4224 4223 1 4225 4228 1 4228 4227 1;
	setAttr ".ed[8300:8465]" 4227 4224 1 4228 4230 1 4230 4229 1 4229 4227 1 4230 4232 1
		 4232 4231 1 4231 4229 1 4232 4234 1 4234 4233 1 4233 4231 1 4235 4236 1 4236 4226 1
		 4223 4235 1 4237 4238 1 4238 4236 1 4235 4237 1 4234 4238 1 4237 4233 1 4197 4187 1
		 4188 4196 1 4189 4200 1 4190 4202 1 4191 4204 1 4192 4206 1 4193 4208 1 4194 4210 1
		 4194 4239 1 3960 4210 1 4240 4243 1 4243 4242 1 4242 4241 1 4241 4240 1 4071 4081 1
		 4078 4070 1 4072 4083 1 4073 4085 1 4074 4086 1 4075 4088 1 4090 4076 1 4092 4077 1
		 3961 4174 1 4175 3911 1 3924 4211 1 4244 4221 1 4142 4161 1 4158 4145 1 4146 4163 1
		 4148 4165 1 4151 4167 1 4156 4169 1 4157 4171 1 4185 4175 1 4245 4248 1 4248 4247 1
		 4247 4246 1 4246 4245 1 4080 4097 1 4094 4079 1 4082 4099 1 4084 4101 1 4087 4103 1
		 4089 4105 1 4106 4091 1 4108 4093 1 4096 4225 1 4226 4095 1 4098 4228 1 4100 4230 1
		 4102 4232 1 4104 4234 1 4236 4107 1 4238 4109 1 4135 4223 1 4224 4134 1 4227 4136 1
		 4229 4137 1 4231 4138 1 4233 4139 1 4140 4235 1 4141 4237 1 4346 4347 1 4347 4020 1
		 4177 4346 1 4347 4348 1 4348 4019 1 4348 4349 1 4349 4023 1 4349 4350 1 4350 4025 1
		 4350 4351 1 4254 4257 1 4257 4256 1 4256 4255 1 4255 4254 1 4258 4259 1 4259 4257 1
		 4254 4258 1 4260 4263 1 4263 4262 1 4262 4261 1 4261 4260 1 4256 4263 1 4260 4255 1
		 4247 4265 1 4265 4264 1 4264 4246 1 4266 4267 1 4267 4248 1 4245 4266 1 4265 4259 1
		 4258 4264 1 4241 4267 1 4266 4240 1 4268 4242 1 4243 4269 1 4269 4268 1 4270 4271 1
		 4271 4268 1 4269 4270 1 4240 4195 1 4195 4212 1 4212 4243 1 4246 4181 1 4181 4182 1
		 4182 4245 1 4262 4344 1 4344 4345 1 4345 4261 1 4055 4254 1 4255 4056 1 4058 4258 1
		 4176 4260 1 4261 4177 1 4264 4180 1 4183 4266 1 4213 4269 1 4222 4270 1 4345 4346 1
		 4286 4287 1 4287 4279 1 4278 4279 0 4278 4286 1 4287 4288 1 4288 4280 1 4279 4280 0
		 4288 4289 1 4289 4281 1 4280 4281 0 4289 4290 1 4290 4282 1 4281 4282 0 4290 4291 1
		 4291 4283 1 4282 4283 0 4292 4286 1 4284 4278 0 4284 4292 1 4293 4292 1 4285 4284 0
		 4285 4293 1 4291 4293 1 4283 4285 0 4274 4340 1 4340 4341 1 4341 4294 1 4274 4294 0;
	setAttr ".ed[8466:8601]" 4339 4340 1 4275 4274 0 4275 4339 1 4338 4339 1 4276 4275 0
		 4276 4338 1 4277 4276 0 4277 4337 1 4337 4338 1 3992 4277 0 4336 4337 1 4342 4343 1
		 4343 4316 1 4317 4316 0 4317 4342 1 4341 4342 1 4294 4317 0 4127 4287 1 4286 4126 1
		 4128 4288 1 4129 4289 1 4130 4290 1 4131 4291 1 4292 4132 1 4293 4133 1 4215 4296 1
		 4295 4296 0 4295 4214 1 4216 4297 1 4296 4297 0 4217 4298 1 4297 4298 0 4218 4299 1
		 4298 4299 0 4219 4300 1 4299 4300 0 4220 4301 1 4300 4301 0 4221 4302 1 4301 4302 0
		 4303 4295 0 4303 4222 1 4242 4304 1 4305 4304 1 4305 4241 1 4302 4016 0 4248 4307 1
		 4306 4307 1 4306 4247 1 4249 4308 1 4309 4308 1 4309 4250 1 4249 4250 1 4310 4309 1
		 4310 4251 1 4250 4251 1 4311 4310 1 4311 4252 1 4251 4252 1 4312 4311 1 4312 4253 1
		 4252 4253 1 4017 4312 1 4253 3962 1 4257 4314 1 4313 4314 1 4313 4256 1 4259 4315 1
		 4314 4315 1 4263 4318 1 4316 4318 1 4316 4262 1 4318 4313 1 4319 4306 1 4319 4265 1
		 4267 4320 1 4307 4320 1 4315 4319 1 4320 4305 1 4268 4321 1 4304 4321 1 4271 4323 1
		 4321 4323 1 4270 4322 1 4323 4322 0 4273 4324 1 4325 4324 1 4325 4272 1 4273 4272 1
		 4343 4344 1 4322 4303 0 4308 4325 1 4272 4249 1 3951 4326 1 4327 3945 1 3931 4328 1
		 4329 4009 1 4012 4330 1 4331 4014 1 3993 4332 1 3994 4333 1 3995 4334 1 3996 4335 1
		 4017 4336 1 4337 4312 1 4338 4311 1 4339 4310 1 4340 4309 1 4308 4341 1 4342 4325 1
		 4324 4343 1 4344 4273 1 4272 4345 1 4346 4249 1 4250 4347 1 4251 4348 1 4252 4349 1
		 4253 4350 1 4351 3962 1 4352 3915 1 4353 3914 1 4354 3913 1 4355 3912 1 4002 4321 1
		 4008 4323 0 4006 4304 1 4007 4305 1 4004 4320 1 4001 4307 1 4000 4306 1 4005 4319 1
		 4003 4315 1 3997 4314 1 3982 4313 1 3999 4318 1 3998 4316 0;
	setAttr -s 4248 -ch 16992 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 3 -3 -2 -1
		mu 0 4 0 3 2 1
		mu 1 4 0 3 2 1
		f 4 6 -6 -5 2
		mu 0 4 3 9 8 2
		mu 1 4 3 5 4 2
		f 4 1 -10 -9 -8
		mu 0 4 1 2 7 6
		mu 1 4 1 2 7 6
		f 4 4 -12 -11 9
		mu 0 4 2 8 16 7
		mu 1 4 2 4 8 7
		f 4 14 -14 -13 5
		mu 0 4 9 18 17 8
		mu 1 4 5 10 9 4
		f 4 12 -17 -16 11
		mu 0 4 8 17 28 16
		mu 1 4 4 9 11 8
		f 4 0 -20 -19 -18
		mu 0 4 0 1 5 4
		mu 1 4 0 1 13 12
		f 4 18 -23 -22 -21
		mu 0 4 4 5 12 11
		mu 1 4 12 13 15 14
		f 4 21 -26 -25 -24
		mu 0 4 11 12 22 21
		mu 1 4 14 15 17 16
		f 4 24 -29 -28 -27
		mu 0 4 21 22 33 32
		mu 1 4 16 17 19 18
		f 4 7 -31 -30 19
		mu 0 4 1 6 13 5
		mu 1 4 1 6 20 13
		f 4 29 -33 -32 22
		mu 0 4 5 13 23 12
		mu 1 4 13 20 21 15
		f 4 31 -35 -34 25
		mu 0 4 12 23 34 22
		mu 1 4 15 21 22 17
		f 4 33 -37 -36 28
		mu 0 4 22 34 49 33
		mu 1 4 17 22 23 19
		f 4 -41 -40 -39 -38
		mu 0 4 158 161 160 159
		mu 1 4 24 27 26 25
		f 4 38 -44 -43 -42
		mu 0 4 159 160 467 164
		mu 1 4 25 26 29 28
		f 4 42 -46 13 -45
		mu 0 4 430 165 17 18
		mu 1 4 30 31 9 10
		f 4 -49 -48 -47 39
		mu 0 4 161 167 166 160
		mu 1 4 27 33 32 26
		f 4 46 -51 -50 43
		mu 0 4 160 166 411 467
		mu 1 4 26 32 34 29
		f 4 49 -52 16 45
		mu 0 4 165 172 28 17
		mu 1 4 31 35 11 9
		f 4 -56 -55 -54 -53
		mu 0 4 211 197 185 198
		mu 1 4 36 39 38 37
		f 4 -59 -58 -57 54
		mu 0 4 197 184 176 185
		mu 1 4 39 41 40 38
		f 4 53 -62 -61 -60
		mu 0 4 198 185 177 186
		mu 1 4 37 38 43 42
		f 4 56 -64 -63 61
		mu 0 4 185 176 169 177
		mu 1 4 38 40 44 43
		f 4 -67 -66 -65 57
		mu 0 4 184 175 168 176
		mu 1 4 41 46 45 40
		f 4 -69 48 -68 65
		mu 0 4 175 167 161 168
		mu 1 4 46 33 27 45
		f 4 64 -71 -70 63
		mu 0 4 176 168 162 169
		mu 1 4 40 45 47 44
		f 4 67 40 -72 70
		mu 0 4 168 161 158 162
		mu 1 4 45 27 24 47
		f 4 35 -75 -74 -73
		mu 0 4 33 49 410 48
		mu 1 4 19 23 49 48
		f 4 73 -78 -77 -76
		mu 0 4 48 410 253 367
		mu 1 4 48 49 51 50
		f 4 -82 -81 -80 -79
		mu 0 4 483 488 213 234
		mu 1 4 52 55 54 53
		f 4 -85 -84 -83 80
		mu 0 4 488 487 214 213
		mu 1 4 55 57 56 54
		f 4 79 -88 86 -86
		mu 0 4 234 213 235 377
		mu 1 4 58 61 60 59
		f 4 82 -90 88 87
		mu 0 4 213 214 236 235
		mu 1 4 61 63 62 60
		f 4 -93 -92 -91 83
		mu 0 4 487 486 217 214
		mu 1 4 57 65 64 56
		f 4 -96 -95 -94 91
		mu 0 4 486 218 240 217
		mu 1 4 65 67 66 64
		f 4 90 -98 96 89
		mu 0 4 214 217 239 236
		mu 1 4 63 69 68 62
		f 4 93 -100 98 97
		mu 0 4 217 240 257 239
		mu 1 4 69 71 70 68
		f 4 103 -103 -102 -101
		mu 0 4 351 347 348 352
		mu 1 4 72 75 74 73
		f 4 101 -107 -106 -105
		mu 0 4 352 348 353 359
		mu 1 4 73 74 77 76
		f 4 109 -109 -108 102
		mu 0 4 347 478 482 348
		mu 1 4 75 79 78 74
		f 4 107 -112 -111 106
		mu 0 4 348 482 481 353
		mu 1 4 74 78 80 77
		f 4 115 -115 -114 -113
		mu 0 4 216 237 273 233
		mu 1 4 81 84 83 82
		f 4 118 -118 -117 114
		mu 0 4 237 255 359 273
		mu 1 4 84 85 76 83
		f 4 122 -122 -121 -120
		mu 0 4 302 325 383 480
		mu 1 4 86 89 88 87
		f 4 120 -126 -125 -124
		mu 0 4 480 383 255 469
		mu 1 4 87 88 85 90
		f 4 127 100 -127 121
		mu 0 4 325 351 352 383
		mu 1 4 89 72 73 88
		f 4 126 104 117 125
		mu 0 4 383 352 359 255
		mu 1 4 88 73 76 85
		f 4 -132 -131 -130 -129
		mu 0 4 288 360 355 300
		mu 1 4 91 94 93 92
		f 4 129 -135 -134 -133
		mu 0 4 300 355 356 314
		mu 1 4 92 93 96 95
		f 4 -137 111 -136 130
		mu 0 4 360 354 349 355
		mu 1 4 94 98 97 93
		f 4 135 108 -138 134
		mu 0 4 355 349 350 356
		mu 1 4 93 97 99 96
		f 4 140 -140 -139 132
		mu 0 4 314 301 286 300
		mu 1 4 95 101 100 92
		f 4 138 -143 -142 128
		mu 0 4 300 286 274 288
		mu 1 4 92 100 102 91
		f 4 144 119 -144 139
		mu 0 4 301 477 287 286
		mu 1 4 101 104 103 100
		f 4 143 123 -146 142
		mu 0 4 286 287 256 274
		mu 1 4 100 103 105 102
		f 4 -150 -149 -148 -147
		mu 0 4 385 362 357 384
		mu 1 4 106 109 108 107
		f 4 147 -152 -104 -151
		mu 0 4 384 357 347 351
		mu 1 4 107 108 75 72
		f 4 -155 -154 -153 148
		mu 0 4 362 474 479 357
		mu 1 4 109 111 110 108
		f 4 152 -156 -110 151
		mu 0 4 357 479 478 347
		mu 1 4 108 110 79 75
		f 4 -160 -159 -158 -157
		mu 0 4 328 339 326 476
		mu 1 4 112 115 114 113
		f 4 157 -162 -123 -161
		mu 0 4 476 326 325 302
		mu 1 4 113 114 89 86
		f 4 -164 146 -163 158
		mu 0 4 339 385 384 326
		mu 1 4 115 106 107 114
		f 4 162 150 -128 161
		mu 0 4 326 384 351 325
		mu 1 4 114 107 72 89
		f 4 133 -167 -166 -165
		mu 0 4 314 356 361 324
		mu 1 4 95 96 117 116
		f 4 165 -170 -169 -168
		mu 0 4 324 361 366 338
		mu 1 4 116 117 119 118
		f 4 137 155 -171 166
		mu 0 4 356 350 358 361
		mu 1 4 96 99 120 117
		f 4 170 153 -172 169
		mu 0 4 361 358 363 366
		mu 1 4 117 120 121 119
		f 4 174 -174 -173 167
		mu 0 4 338 327 315 324
		mu 1 4 118 123 122 116
		f 4 172 -176 -141 164
		mu 0 4 324 315 301 314
		mu 1 4 116 122 101 95
		f 4 -178 156 -177 173
		mu 0 4 327 475 316 315
		mu 1 4 123 125 124 122
		f 4 176 160 -145 175
		mu 0 4 315 316 477 301
		mu 1 4 122 124 104 101
		f 4 -182 -181 -180 -179
		mu 0 4 151 152 140 139
		mu 1 4 126 129 128 127
		f 4 179 -185 -184 -183
		mu 0 4 139 140 122 121
		mu 1 4 127 128 131 130
		f 4 -188 -187 -186 180
		mu 0 4 152 156 150 140
		mu 1 4 129 133 132 128
		f 4 185 -190 -189 184
		mu 0 4 140 150 138 122
		mu 1 4 128 132 134 131
		f 4 -193 -192 -191 186
		mu 0 4 156 425 466 150
		mu 1 4 133 136 135 132
		f 4 190 -195 -194 189
		mu 0 4 150 466 149 138
		mu 1 4 132 135 137 134
		f 4 -198 -197 -196 191
		mu 0 4 157 342 332 155
		mu 1 4 138 141 140 139
		f 4 195 -200 -199 194
		mu 0 4 155 332 320 465
		mu 1 4 139 140 143 142
		f 4 183 -203 -202 -201
		mu 0 4 121 122 107 106
		mu 1 4 130 131 145 144
		f 4 188 -205 -204 202
		mu 0 4 122 138 120 107
		mu 1 4 131 134 146 145
		f 4 201 -208 -207 -206
		mu 0 4 106 107 89 88
		mu 1 4 144 145 148 147
		f 4 206 -211 -210 -209
		mu 0 4 88 89 70 69
		mu 1 4 147 148 150 149
		f 4 203 -213 -212 207
		mu 0 4 107 120 105 89
		mu 1 4 145 146 151 148
		f 4 211 -215 -214 210
		mu 0 4 89 105 87 70
		mu 1 4 148 151 152 150
		f 4 193 -217 -216 204
		mu 0 4 138 149 137 120
		mu 1 4 134 137 153 146
		f 4 198 -219 -218 216
		mu 0 4 465 320 310 464
		mu 1 4 142 143 155 154
		f 4 215 -221 -220 212
		mu 0 4 120 137 463 105
		mu 1 4 146 153 156 151
		f 4 219 -223 -222 214
		mu 0 4 105 463 386 87
		mu 1 4 151 156 157 152
		f 4 217 -225 -224 220
		mu 0 4 464 310 296 136
		mu 1 4 154 155 159 158
		f 4 223 -227 -226 222
		mu 0 4 136 296 282 462
		mu 1 4 158 159 161 160
		f 4 209 -230 -229 -228
		mu 0 4 69 70 53 52
		mu 1 4 149 150 163 162
		f 4 213 -232 -231 229
		mu 0 4 70 87 68 53
		mu 1 4 150 152 164 163
		f 4 228 -235 -234 -233
		mu 0 4 52 53 37 36
		mu 1 4 162 163 166 165
		f 4 233 -238 236 -236
		mu 0 4 36 37 24 14
		mu 1 4 165 166 168 167
		f 4 230 -240 -239 234
		mu 0 4 53 68 51 37
		mu 1 4 163 164 169 166
		f 4 238 -242 240 237
		mu 0 4 37 51 35 24
		mu 1 4 166 169 170 168
		f 4 221 -244 -243 231
		mu 0 4 87 386 387 68
		mu 1 4 152 157 171 164
		f 4 225 -246 -245 243
		mu 0 4 462 282 268 461
		mu 1 4 160 161 173 172
		f 4 242 -248 -247 239
		mu 0 4 68 387 460 51
		mu 1 4 164 171 174 169
		f 4 246 -250 -249 241
		mu 0 4 51 460 389 35
		mu 1 4 169 174 175 170
		f 4 244 -252 -251 247
		mu 0 4 461 268 251 388
		mu 1 4 172 173 177 176
		f 4 250 -254 -253 249
		mu 0 4 388 251 231 453
		mu 1 4 176 177 179 178
		f 4 -258 -257 -256 -255
		mu 0 4 224 443 228 207
		mu 1 4 180 183 182 181
		f 4 -261 -260 -259 256
		mu 0 4 248 71 54 459
		mu 1 4 184 187 186 185
		f 4 255 -264 -263 -262
		mu 0 4 207 228 458 194
		mu 1 4 181 182 189 188
		f 4 262 -267 -266 -265
		mu 0 4 194 458 75 174
		mu 1 4 188 189 191 190
		f 4 258 -269 -268 263
		mu 0 4 459 54 38 227
		mu 1 4 185 186 193 192
		f 4 267 -271 -270 266
		mu 0 4 227 38 27 450
		mu 1 4 192 193 195 194
		f 4 -274 -273 -272 259
		mu 0 4 71 56 41 54
		mu 1 4 187 197 196 186
		f 4 -277 -276 -275 272
		mu 0 4 56 57 42 41
		mu 1 4 197 199 198 196
		f 4 271 -279 -278 268
		mu 0 4 54 41 25 38
		mu 1 4 186 196 200 193
		f 4 277 -281 279 270
		mu 0 4 38 25 15 27
		mu 1 4 193 200 201 195
		f 4 274 -283 -282 278
		mu 0 4 41 42 26 25
		mu 1 4 196 198 202 200
		f 4 281 -285 283 280
		mu 0 4 25 26 14 15
		mu 1 4 200 202 167 201
		f 4 254 -288 -287 285
		mu 0 4 224 207 208 225
		mu 1 4 180 181 204 203
		f 4 286 -291 -290 288
		mu 0 4 225 208 226 247
		mu 1 4 203 204 206 205
		f 4 289 -294 -293 291
		mu 0 4 247 226 457 72
		mu 1 4 205 206 208 207
		f 4 292 -296 275 294
		mu 0 4 442 55 42 57
		mu 1 4 209 210 198 199
		f 4 261 -298 -297 287
		mu 0 4 207 194 195 208
		mu 1 4 181 188 211 204
		f 4 296 -300 -299 290
		mu 0 4 208 195 209 226
		mu 1 4 204 211 212 206
		f 4 264 301 -301 297
		mu 0 4 194 174 183 195
		mu 1 4 188 190 213 211
		f 4 300 303 -303 299
		mu 0 4 195 183 196 209
		mu 1 4 211 213 214 212
		f 4 298 -306 -305 293
		mu 0 4 226 209 456 457
		mu 1 4 206 212 215 208
		f 4 304 -307 282 295
		mu 0 4 55 39 26 42
		mu 1 4 210 216 202 198
		f 4 302 -309 -308 305
		mu 0 4 209 196 417 456
		mu 1 4 212 214 217 215
		f 4 307 -310 284 306
		mu 0 4 39 40 14 26
		mu 1 4 216 218 167 202
		f 4 -314 -313 -312 -311
		mu 0 4 283 269 270 284
		mu 1 4 219 222 221 220
		f 4 311 -317 -316 -315
		mu 0 4 284 270 285 299
		mu 1 4 220 221 224 223
		f 4 315 -320 -319 -318
		mu 0 4 299 285 455 375
		mu 1 4 225 228 227 226
		f 4 318 -323 -322 -321
		mu 0 4 449 373 84 102
		mu 1 4 226 227 230 229
		f 4 -326 324 -324 312
		mu 0 4 269 231 252 270
		mu 1 4 222 179 231 221
		f 4 323 327 -327 316
		mu 0 4 270 252 271 285
		mu 1 4 221 231 232 224
		f 4 326 -330 -329 319
		mu 0 4 285 271 409 455
		mu 1 4 228 234 233 227
		f 4 328 -332 -331 322
		mu 0 4 373 372 65 84
		mu 1 4 227 233 235 230
		f 4 334 -334 -333 313
		mu 0 4 283 446 391 269
		mu 1 4 219 237 236 222
		f 4 337 -337 -336 333
		mu 0 4 392 85 66 454
		mu 1 4 238 241 240 239
		f 4 332 -339 252 325
		mu 0 4 269 391 453 231
		mu 1 4 222 236 178 179
		f 4 335 -340 248 338
		mu 0 4 454 66 35 389
		mu 1 4 239 240 170 175
		f 4 342 -342 -341 336
		mu 0 4 85 86 67 66
		mu 1 4 241 243 242 240
		f 4 344 321 -344 341
		mu 0 4 86 102 84 67
		mu 1 4 243 229 230 242
		f 4 340 -347 345 339
		mu 0 4 66 67 50 35
		mu 1 4 240 242 244 170
		f 4 343 330 347 346
		mu 0 4 67 84 65 50
		mu 1 4 242 230 235 244
		f 4 -352 -351 -350 -349
		mu 0 4 95 96 78 77
		mu 1 4 245 248 247 246
		f 4 349 -355 -354 -353
		mu 0 4 77 78 59 58
		mu 1 4 246 247 250 249
		f 4 353 -358 356 -356
		mu 0 4 58 59 27 43
		mu 1 4 249 250 195 251
		f 4 -361 -360 -359 350
		mu 0 4 96 445 94 78
		mu 1 4 248 253 252 247
		f 4 -364 -363 -362 359
		mu 0 4 112 206 193 452
		mu 1 4 254 257 256 255
		f 4 358 -366 -365 354
		mu 0 4 78 94 451 59
		mu 1 4 247 252 258 250
		f 4 364 -367 269 357
		mu 0 4 59 451 450 27
		mu 1 4 250 258 194 195
		f 4 361 -369 -368 365
		mu 0 4 452 193 182 76
		mu 1 4 255 256 260 259
		f 4 367 -370 265 366
		mu 0 4 76 182 174 75
		mu 1 4 259 260 190 191
		f 4 -374 -373 -372 370
		mu 0 4 311 297 298 312
		mu 1 4 261 264 263 262
		f 4 371 -377 -376 374
		mu 0 4 312 298 313 323
		mu 1 4 262 263 266 265
		f 4 375 -380 -379 377
		mu 0 4 323 313 448 336
		mu 1 4 267 270 269 268
		f 4 378 -383 -382 380
		mu 0 4 440 337 117 131
		mu 1 4 268 269 272 271
		f 4 -385 310 -384 372
		mu 0 4 297 283 284 298
		mu 1 4 264 219 220 263
		f 4 383 314 -386 376
		mu 0 4 298 284 299 313
		mu 1 4 263 220 223 266
		f 4 385 317 -387 379
		mu 0 4 313 299 375 448
		mu 1 4 270 225 226 269
		f 4 386 320 -388 382
		mu 0 4 337 449 102 117
		mu 1 4 269 226 229 272
		f 4 -391 -390 -389 373
		mu 0 4 311 437 133 297
		mu 1 4 261 274 273 264
		f 4 -394 -393 -392 389
		mu 0 4 132 118 103 447
		mu 1 4 275 278 277 276
		f 4 388 -395 -335 384
		mu 0 4 297 133 446 283
		mu 1 4 264 273 237 219
		f 4 391 -396 -338 394
		mu 0 4 447 103 85 392
		mu 1 4 276 277 241 238
		f 4 -399 -398 -397 392
		mu 0 4 118 119 104 103
		mu 1 4 278 280 279 277
		f 4 -401 381 -400 397
		mu 0 4 119 131 117 104
		mu 1 4 280 271 272 279
		f 4 396 -402 -343 395
		mu 0 4 103 104 86 85
		mu 1 4 277 279 243 241
		f 4 399 387 -345 401
		mu 0 4 104 117 102 86
		mu 1 4 279 272 229 243
		f 4 404 -404 351 -403
		mu 0 4 113 114 96 95
		mu 1 4 281 282 248 245
		f 4 406 -406 360 403
		mu 0 4 114 435 445 96
		mu 1 4 282 283 253 248
		f 4 408 -408 363 405
		mu 0 4 127 223 206 112
		mu 1 4 284 285 257 254
		f 4 -413 -412 -411 -410
		mu 0 4 262 433 265 245
		mu 1 4 286 289 288 287
		f 4 -416 -415 -414 411
		mu 0 4 279 108 90 444
		mu 1 4 290 293 292 291
		f 4 410 -418 257 -417
		mu 0 4 245 265 443 224
		mu 1 4 287 288 183 180
		f 4 413 -419 260 417
		mu 0 4 444 90 71 248
		mu 1 4 291 292 187 184
		f 4 -422 -421 -420 414
		mu 0 4 108 92 73 90
		mu 1 4 293 295 294 292
		f 4 -425 -424 -423 420
		mu 0 4 92 93 74 73
		mu 1 4 295 297 296 294
		f 4 419 -426 273 418
		mu 0 4 90 73 56 71
		mu 1 4 292 294 197 187
		f 4 422 -427 276 425
		mu 0 4 73 74 57 56
		mu 1 4 294 296 199 197
		f 4 409 -430 -429 427
		mu 0 4 262 245 246 263
		mu 1 4 286 287 299 298
		f 4 428 -433 -432 430
		mu 0 4 263 246 264 278
		mu 1 4 298 299 301 300
		f 4 431 -436 -435 433
		mu 0 4 278 264 441 109
		mu 1 4 300 301 303 302
		f 4 434 -438 423 436
		mu 0 4 432 91 74 93
		mu 1 4 304 305 296 297
		f 4 416 -286 -439 429
		mu 0 4 245 224 225 246
		mu 1 4 287 180 203 299
		f 4 438 -289 -440 432
		mu 0 4 246 225 247 264
		mu 1 4 299 203 205 301
		f 4 439 -292 -441 435
		mu 0 4 264 247 72 441
		mu 1 4 301 205 207 303
		f 4 440 -295 426 437
		mu 0 4 91 442 57 74
		mu 1 4 305 209 199 296
		f 4 -445 -444 -443 -442
		mu 0 4 333 321 322 334
		mu 1 4 306 309 308 307
		f 4 442 -448 -447 -446
		mu 0 4 334 322 335 343
		mu 1 4 307 308 311 310
		f 4 446 -451 -450 -449
		mu 0 4 343 335 439 346
		mu 1 4 312 315 314 313
		f 4 449 -454 -453 -452
		mu 0 4 423 344 145 154
		mu 1 4 313 314 317 316
		f 4 -456 -371 -455 443
		mu 0 4 321 311 312 322
		mu 1 4 309 261 262 308
		f 4 454 -375 -457 447
		mu 0 4 322 312 323 335
		mu 1 4 308 262 265 311
		f 4 456 -378 -458 450
		mu 0 4 335 323 336 439
		mu 1 4 315 267 268 314
		f 4 457 -381 -459 453
		mu 0 4 344 440 131 145
		mu 1 4 314 268 271 317
		f 4 -462 -461 -460 444
		mu 0 4 333 424 146 321
		mu 1 4 306 319 318 309
		f 4 -465 -464 -463 460
		mu 0 4 393 147 134 438
		mu 1 4 320 323 322 321
		f 4 459 -466 390 455
		mu 0 4 321 146 437 311
		mu 1 4 309 318 274 261
		f 4 462 -467 393 465
		mu 0 4 438 134 118 132
		mu 1 4 321 322 278 275
		f 4 -470 -469 -468 463
		mu 0 4 147 148 135 134
		mu 1 4 323 325 324 322
		f 4 -472 452 -471 468
		mu 0 4 148 154 145 135
		mu 1 4 325 316 317 324
		f 4 467 -473 398 466
		mu 0 4 134 135 119 118
		mu 1 4 322 324 280 278
		f 4 470 458 400 472
		mu 0 4 135 145 131 119
		mu 1 4 324 317 271 280
		f 4 -477 -476 -475 -474
		mu 0 4 143 144 129 128
		mu 1 4 326 329 328 327
		f 4 474 -479 -405 -478
		mu 0 4 128 129 114 113
		mu 1 4 327 328 282 281
		f 4 -482 -481 -480 475
		mu 0 4 144 421 142 129
		mu 1 4 329 331 330 328
		f 4 -485 -484 -483 480
		mu 0 4 153 261 244 436
		mu 1 4 332 335 334 333
		f 4 479 -486 -407 478
		mu 0 4 129 142 435 114
		mu 1 4 328 330 283 282
		f 4 482 -487 -409 485
		mu 0 4 436 244 223 127
		mu 1 4 333 334 285 284
		f 4 -491 -490 -489 -488
		mu 0 4 290 419 293 276
		mu 1 4 336 339 338 337
		f 4 -494 -493 -492 489
		mu 0 4 304 390 123 434
		mu 1 4 340 343 342 341
		f 4 488 -496 412 -495
		mu 0 4 276 293 433 262
		mu 1 4 337 338 289 286
		f 4 491 -497 415 495
		mu 0 4 434 123 108 279
		mu 1 4 341 342 293 290
		f 4 -500 -499 -498 492
		mu 0 4 390 125 110 123
		mu 1 4 343 345 344 342
		f 4 -503 -502 -501 498
		mu 0 4 125 126 111 110
		mu 1 4 345 347 346 344
		f 4 497 -504 421 496
		mu 0 4 123 110 92 108
		mu 1 4 342 344 295 293
		f 4 500 -505 424 503
		mu 0 4 110 111 93 92
		mu 1 4 344 346 297 295
		f 4 487 -508 -507 -506
		mu 0 4 290 276 277 291
		mu 1 4 336 337 349 348
		f 4 506 -511 -510 -509
		mu 0 4 291 277 292 305
		mu 1 4 348 349 351 350
		f 4 509 -514 -513 -512
		mu 0 4 305 292 431 141
		mu 1 4 350 351 353 352
		f 4 512 -516 501 -515
		mu 0 4 420 124 111 126
		mu 1 4 354 355 346 347
		f 4 494 -428 -517 507
		mu 0 4 276 262 263 277
		mu 1 4 337 286 298 349
		f 4 516 -431 -518 510
		mu 0 4 277 263 278 292
		mu 1 4 349 298 300 351
		f 4 517 -434 -519 513
		mu 0 4 292 278 109 431
		mu 1 4 351 300 302 353
		f 4 518 -437 504 515
		mu 0 4 124 432 93 111
		mu 1 4 355 304 297 346
		f 4 -522 -521 -520 -15
		mu 0 4 9 19 29 18
		mu 1 4 5 357 356 10
		f 4 -525 -524 -523 520
		mu 0 4 19 30 44 29
		mu 1 4 357 359 358 356
		f 4 519 -527 -526 44
		mu 0 4 18 29 429 430
		mu 1 4 10 356 360 30
		f 4 525 -529 527 41
		mu 0 4 164 171 163 159
		mu 1 4 28 362 361 25
		f 4 522 -531 -530 526
		mu 0 4 29 44 428 429
		mu 1 4 356 358 363 360
		f 4 529 -533 531 528
		mu 0 4 171 179 170 163
		mu 1 4 362 365 364 361
		f 4 -536 -535 -534 523
		mu 0 4 30 61 60 44
		mu 1 4 359 367 366 358
		f 4 -539 -538 -537 534
		mu 0 4 61 80 79 60
		mu 1 4 367 369 368 366
		f 4 533 -541 -540 530
		mu 0 4 44 60 427 428
		mu 1 4 358 366 370 363
		f 4 539 -543 -542 532
		mu 0 4 179 190 189 170
		mu 1 4 365 372 371 364
		f 4 536 -545 -544 540
		mu 0 4 60 79 397 427
		mu 1 4 366 368 373 370
		f 4 543 -547 -546 542
		mu 0 4 190 369 203 189
		mu 1 4 372 375 374 371
		f 4 538 -550 -549 -548
		mu 0 4 80 61 62 81
		mu 1 4 369 367 377 376
		f 4 548 -553 -552 -551
		mu 0 4 81 62 82 100
		mu 1 4 376 377 379 378
		f 4 535 -555 -554 549
		mu 0 4 61 30 45 62
		mu 1 4 367 359 380 377
		f 4 553 -557 -556 552
		mu 0 4 62 45 63 82
		mu 1 4 377 380 381 379
		f 4 551 -560 -559 -558
		mu 0 4 100 82 101 116
		mu 1 4 378 379 383 382
		f 4 558 -563 -562 -561
		mu 0 4 116 101 378 379
		mu 1 4 382 383 385 384
		f 4 555 -565 -564 559
		mu 0 4 82 63 83 101
		mu 1 4 379 381 386 383
		f 4 563 -567 -566 562
		mu 0 4 101 83 376 378
		mu 1 4 383 386 387 385
		f 4 -570 -569 -568 554
		mu 0 4 30 20 31 45
		mu 1 4 359 389 388 380
		f 4 567 -572 -571 556
		mu 0 4 45 31 46 63
		mu 1 4 380 388 390 381
		f 4 -574 23 -573 568
		mu 0 4 20 11 21 31
		mu 1 4 389 14 16 388
		f 4 572 26 -575 571
		mu 0 4 31 21 32 46
		mu 1 4 388 16 18 390
		f 4 570 -577 -576 564
		mu 0 4 63 46 64 83
		mu 1 4 381 390 391 386
		f 4 575 -579 -578 566
		mu 0 4 83 64 374 376
		mu 1 4 386 391 392 387
		f 4 574 -581 -580 576
		mu 0 4 46 32 47 64
		mu 1 4 390 18 393 391
		f 4 579 -583 -582 578
		mu 0 4 64 47 368 374
		mu 1 4 391 393 394 392
		f 4 177 -175 -585 583
		mu 0 4 475 327 338 473
		mu 1 4 125 123 118 395
		f 4 -588 -587 -586 62
		mu 0 4 169 170 178 177
		mu 1 4 44 364 396 43
		f 4 585 -590 -589 60
		mu 0 4 177 178 187 186
		mu 1 4 43 396 57 42
		f 4 37 -528 -591 71
		mu 0 4 158 159 163 162
		mu 1 4 24 25 361 47
		f 4 590 -532 587 69
		mu 0 4 162 163 170 169
		mu 1 4 47 361 364 44
		f 4 -594 -593 -592 81
		mu 0 4 215 216 200 199
		mu 1 4 52 81 397 55
		f 4 591 -595 588 84
		mu 0 4 199 200 186 187
		mu 1 4 55 397 42 57
		f 4 -598 -597 -596 181
		mu 0 4 151 408 426 152
		mu 1 4 126 399 398 129
		f 4 595 -599 192 187
		mu 0 4 152 426 425 156
		mu 1 4 129 398 136 133
		f 4 -602 -601 -600 596
		mu 0 4 340 330 331 341
		mu 1 4 400 403 402 401
		f 4 599 -603 197 598
		mu 0 4 341 331 342 157
		mu 1 4 401 402 141 138
		f 4 441 -605 -604 461
		mu 0 4 333 334 422 424
		mu 1 4 306 307 404 319
		f 4 603 -606 469 464
		mu 0 4 393 345 148 147
		mu 1 4 320 405 325 323
		f 4 445 448 -607 604
		mu 0 4 334 343 346 422
		mu 1 4 307 310 406 404
		f 4 606 451 471 605
		mu 0 4 345 423 154 148
		mu 1 4 405 313 316 325
		f 4 476 -609 -608 481
		mu 0 4 144 143 402 421
		mu 1 4 329 326 407 331
		f 4 607 -611 -610 484
		mu 0 4 153 275 260 261
		mu 1 4 332 409 408 335
		f 4 502 -613 -612 514
		mu 0 4 126 125 418 420
		mu 1 4 347 345 410 354
		f 4 611 -614 508 511
		mu 0 4 141 303 291 305
		mu 1 4 352 411 348 350
		f 4 499 493 -615 612
		mu 0 4 125 390 304 418
		mu 1 4 345 343 340 410
		f 4 614 490 505 613
		mu 0 4 303 419 290 291
		mu 1 4 411 339 336 348
		f 4 541 -617 -616 586
		mu 0 4 170 189 188 178
		mu 1 4 364 371 412 396
		f 4 615 -618 92 589
		mu 0 4 178 188 201 187
		mu 1 4 396 412 65 57
		f 4 545 -620 -619 616
		mu 0 4 189 203 202 188
		mu 1 4 371 374 413 412
		f 4 618 -621 95 617
		mu 0 4 188 202 485 201
		mu 1 4 412 413 67 65
		f 4 253 -624 -623 621
		mu 0 4 231 251 230 210
		mu 1 4 179 177 415 414
		f 4 622 -627 -626 624
		mu 0 4 210 230 229 196
		mu 1 4 414 415 416 214
		f 4 251 -629 -628 623
		mu 0 4 251 268 250 230
		mu 1 4 177 173 417 415
		f 4 627 -631 -630 626
		mu 0 4 230 250 249 229
		mu 1 4 415 417 418 416
		f 4 625 -633 -632 308
		mu 0 4 196 229 416 417
		mu 1 4 214 416 419 217
		f 4 631 -634 235 309
		mu 0 4 40 394 36 14
		mu 1 4 218 420 165 167
		f 4 629 -636 -635 632
		mu 0 4 229 249 403 416
		mu 1 4 416 418 421 419
		f 4 634 -637 232 633
		mu 0 4 394 395 52 36
		mu 1 4 420 422 162 165
		f 4 369 -640 -639 637
		mu 0 4 174 182 181 173
		mu 1 4 190 260 424 423
		f 4 368 -642 -641 639
		mu 0 4 182 193 192 181
		mu 1 4 260 256 425 424
		f 4 638 -645 -644 642
		mu 0 4 173 181 415 180
		mu 1 4 423 424 427 426
		f 4 643 -647 355 645
		mu 0 4 412 191 58 43
		mu 1 4 428 429 249 251
		f 4 640 -649 -648 644
		mu 0 4 181 192 399 415
		mu 1 4 424 425 430 427
		f 4 647 -650 352 646
		mu 0 4 191 204 77 58
		mu 1 4 429 431 246 249
		f 4 226 -653 -652 650
		mu 0 4 282 296 281 267
		mu 1 4 161 159 433 432
		f 4 651 -656 -655 653
		mu 0 4 267 281 280 266
		mu 1 4 432 433 435 434
		f 4 224 -658 -657 652
		mu 0 4 296 310 295 281
		mu 1 4 159 155 436 433
		f 4 656 -660 -659 655
		mu 0 4 281 295 294 280
		mu 1 4 433 436 437 435
		f 4 654 -663 -662 660
		mu 0 4 266 280 414 396
		mu 1 4 434 435 439 438
		f 4 661 -665 208 663
		mu 0 4 404 306 88 69
		mu 1 4 440 441 147 149
		f 4 658 -667 -666 662
		mu 0 4 280 294 405 414
		mu 1 4 435 437 442 439
		f 4 665 -668 205 664
		mu 0 4 306 307 106 88
		mu 1 4 441 443 144 147
		f 4 407 -671 -670 -669
		mu 0 4 206 223 222 205
		mu 1 4 257 285 445 444
		f 4 669 -674 -673 -672
		mu 0 4 205 222 413 221
		mu 1 4 444 445 447 446
		f 4 672 -676 402 -675
		mu 0 4 400 242 113 95
		mu 1 4 448 449 281 245
		f 4 486 -678 -677 670
		mu 0 4 223 244 243 222
		mu 1 4 285 334 450 445
		f 4 676 -680 -679 673
		mu 0 4 222 243 401 413
		mu 1 4 445 450 451 447
		f 4 678 -681 477 675
		mu 0 4 242 259 128 113
		mu 1 4 449 452 327 281
		f 4 -683 -97 -682 565
		mu 0 4 376 236 239 378
		mu 1 4 387 62 68 385
		f 4 681 -99 -684 561
		mu 0 4 378 239 257 379
		mu 1 4 385 68 70 384
		f 4 -686 -280 -685 10
		mu 0 4 16 27 15 7
		mu 1 4 8 195 201 7
		f 4 684 -284 -687 8
		mu 0 4 7 15 14 6
		mu 1 4 7 201 167 6
		f 4 687 -357 685 15
		mu 0 4 28 43 27 16
		mu 1 4 11 251 195 8
		f 4 -690 -643 -689 50
		mu 0 4 166 173 180 411
		mu 1 4 32 423 426 34
		f 4 688 -646 -688 51
		mu 0 4 172 412 43 28
		mu 1 4 35 428 251 11
		f 4 -691 -638 689 47
		mu 0 4 167 174 173 166
		mu 1 4 33 190 423 32
		f 4 -693 -304 -692 66
		mu 0 4 184 196 183 175
		mu 1 4 41 214 213 46
		f 4 691 -302 690 68
		mu 0 4 175 183 174 167
		mu 1 4 46 213 190 33
		f 4 -695 -622 -694 55
		mu 0 4 211 231 210 197
		mu 1 4 36 179 414 39
		f 4 693 -625 692 58
		mu 0 4 197 210 196 184
		mu 1 4 39 414 214 41
		f 4 -698 -328 -697 -696
		mu 0 4 470 271 252 232
		mu 1 4 453 232 231 454
		f 4 696 -325 694 -699
		mu 0 4 232 252 231 211
		mu 1 4 454 231 179 36
		f 4 697 77 -700 329
		mu 0 4 271 470 371 409
		mu 1 4 234 51 49 233
		f 4 699 74 -701 331
		mu 0 4 372 410 49 65
		mu 1 4 233 49 23 235
		f 4 -703 -346 -702 34
		mu 0 4 23 35 50 34
		mu 1 4 21 170 244 22
		f 4 701 -348 700 36
		mu 0 4 34 50 65 49
		mu 1 4 22 244 235 23
		f 4 686 -237 -704 30
		mu 0 4 6 14 24 13
		mu 1 4 6 167 168 20
		f 4 703 -241 702 32
		mu 0 4 13 24 35 23
		mu 1 4 20 168 170 21
		f 4 159 -584 -705 163
		mu 0 4 339 328 382 385
		mu 1 4 115 112 455 106
		f 4 -709 -708 -707 -706
		mu 0 4 308 318 407 317
		mu 1 4 456 459 458 457
		f 4 706 -711 182 -710
		mu 0 4 406 329 139 121
		mu 1 4 460 461 127 130
		f 4 -713 601 -712 707
		mu 0 4 318 330 340 407
		mu 1 4 459 403 400 458
		f 4 711 597 178 710
		mu 0 4 329 408 151 139
		mu 1 4 461 399 126 127
		f 4 199 -716 -715 -714
		mu 0 4 320 332 319 309
		mu 1 4 143 140 463 462
		f 4 714 -718 708 -717
		mu 0 4 309 319 318 308
		mu 1 4 462 463 459 456
		f 4 196 602 -719 715
		mu 0 4 332 342 331 319
		mu 1 4 140 141 402 463
		f 4 718 600 712 717
		mu 0 4 319 331 330 318
		mu 1 4 463 402 403 459
		f 4 -721 705 -720 666
		mu 0 4 294 308 317 405
		mu 1 4 437 456 457 442
		f 4 719 709 200 667
		mu 0 4 307 406 121 106
		mu 1 4 443 460 130 144
		f 4 218 713 -722 657
		mu 0 4 310 320 309 295
		mu 1 4 155 143 462 436
		f 4 721 716 720 659
		mu 0 4 295 309 308 294
		mu 1 4 436 462 456 437
		f 4 -724 -661 -723 635
		mu 0 4 249 266 396 403
		mu 1 4 418 434 438 421
		f 4 722 -664 227 636
		mu 0 4 395 404 69 52
		mu 1 4 422 440 149 162
		f 4 245 -651 -725 628
		mu 0 4 268 282 267 250
		mu 1 4 173 161 432 417
		f 4 724 -654 723 630
		mu 0 4 250 267 266 249
		mu 1 4 417 432 434 418
		f 4 -727 610 -726 679
		mu 0 4 243 260 275 401
		mu 1 4 450 408 409 451
		f 4 725 608 473 680
		mu 0 4 259 402 143 128
		mu 1 4 452 407 326 327
		f 4 483 609 726 677
		mu 0 4 244 261 260 243
		mu 1 4 334 335 408 450
		f 4 -729 671 -728 648
		mu 0 4 192 205 221 399
		mu 1 4 425 444 446 430
		f 4 727 674 348 649
		mu 0 4 204 400 95 77
		mu 1 4 431 448 245 246
		f 4 362 668 728 641
		mu 0 4 193 206 205 192
		mu 1 4 256 257 444 425
		f 4 729 154 149 704
		mu 0 4 382 474 362 385
		mu 1 4 455 111 109 106
		f 4 168 171 -730 584
		mu 0 4 338 366 363 473
		mu 1 4 118 119 121 395
		f 4 -732 -87 -731 581
		mu 0 4 368 377 235 374
		mu 1 4 394 59 60 392
		f 4 730 -89 682 577
		mu 0 4 374 235 236 376
		mu 1 4 392 60 62 387
		f 4 734 -734 94 -733
		mu 0 4 241 258 240 218
		mu 1 4 464 465 66 67
		f 4 736 -736 99 733
		mu 0 4 258 381 257 240
		mu 1 4 466 467 70 71
		f 4 739 -739 537 -738
		mu 0 4 97 98 79 80
		mu 1 4 468 469 368 369
		f 4 742 -742 619 -741
		mu 0 4 219 220 202 203
		mu 1 4 470 471 413 374
		f 4 743 732 620 741
		mu 0 4 220 484 485 202
		mu 1 4 471 464 67 413
		f 4 17 -746 -745 -4
		mu 0 4 0 4 10 3
		mu 1 4 0 12 472 3
		f 4 744 -747 521 -7
		mu 0 4 3 10 19 9
		mu 1 4 3 472 357 5
		f 4 20 573 -748 745
		mu 0 4 4 11 20 10
		mu 1 4 12 14 389 472
		f 4 747 569 524 746
		mu 0 4 10 20 30 19
		mu 1 4 472 389 359 357
		f 4 750 -750 550 -749
		mu 0 4 115 99 81 100
		mu 1 4 473 474 376 378
		f 4 751 737 547 749
		mu 0 4 99 97 80 81
		mu 1 4 474 468 369 376
		f 4 753 -753 544 738
		mu 0 4 98 398 397 79
		mu 1 4 469 475 373 368
		f 4 754 740 546 752
		mu 0 4 370 219 203 369
		mu 1 4 476 470 374 375
		f 4 756 -756 683 735
		mu 0 4 381 380 379 257
		mu 1 4 467 477 384 70
		f 4 758 -758 560 755
		mu 0 4 380 130 116 379
		mu 1 4 477 478 382 384
		f 4 759 748 557 757
		mu 0 4 130 115 100 116
		mu 1 4 478 473 378 382
		f 4 112 -762 -761 592
		mu 0 4 216 233 212 200
		mu 1 4 81 82 479 397
		f 4 760 -763 59 594
		mu 0 4 200 212 198 186
		mu 1 4 397 479 37 42
		f 4 -765 -764 116 105
		mu 0 4 353 471 273 359
		mu 1 4 77 480 83 76
		f 4 -767 -766 113 763
		mu 0 4 471 470 233 273
		mu 1 4 480 453 82 83
		f 4 -119 -769 -768 124
		mu 0 4 255 237 468 469
		mu 1 4 85 84 481 90
		f 4 -116 593 -770 768
		mu 0 4 237 216 215 468
		mu 1 4 84 81 52 481
		f 4 767 -772 -771 145
		mu 0 4 256 238 254 274
		mu 1 4 90 481 483 482
		f 4 769 78 -773 771
		mu 0 4 238 483 234 254
		mu 1 4 481 52 53 483
		f 4 770 -775 -774 141
		mu 0 4 274 254 289 288
		mu 1 4 102 485 484 91
		f 4 772 85 -776 774
		mu 0 4 254 234 377 289
		mu 1 4 485 58 59 484
		f 4 -778 -777 775 731
		mu 0 4 368 365 289 377
		mu 1 4 394 486 484 59
		f 4 -779 131 773 776
		mu 0 4 365 360 288 289
		mu 1 4 486 94 91 484
		f 4 695 -780 761 765
		mu 0 4 470 232 212 233
		mu 1 4 453 454 479 82
		f 4 698 52 762 779
		mu 0 4 232 211 198 212
		mu 1 4 454 36 37 479
		f 4 76 766 -782 -781
		mu 0 4 367 253 272 364
		mu 1 4 50 51 488 487
		f 4 781 764 110 -783
		mu 0 4 364 272 472 354
		mu 1 4 487 488 489 98
		f 4 72 -784 580 27
		mu 0 4 33 48 47 32
		mu 1 4 19 48 393 18
		f 4 75 -785 582 783
		mu 0 4 48 367 368 47
		mu 1 4 48 50 394 393
		f 4 780 -786 777 784
		mu 0 4 367 364 365 368
		mu 1 4 50 487 486 394
		f 4 782 136 778 785
		mu 0 4 364 354 360 365
		mu 1 4 487 98 94 486
		f 4 -790 -789 -788 -787
		mu 0 4 489 490 491 492
		mu 1 4 490 491 492 493
		f 4 787 -793 -792 -791
		mu 0 4 492 491 493 494
		mu 1 4 493 492 494 495
		f 4 -796 -795 -794 788
		mu 0 4 490 495 496 491
		mu 1 4 491 496 497 492
		f 4 793 -798 -797 792
		mu 0 4 491 496 497 493
		mu 1 4 492 497 498 494
		f 4 791 -801 -800 -799
		mu 0 4 494 493 498 499
		mu 1 4 495 494 499 500
		f 4 799 -804 -803 -802
		mu 0 4 499 498 500 501
		mu 1 4 500 499 501 502
		f 4 796 -806 -805 800
		mu 0 4 493 497 502 498
		mu 1 4 494 498 503 499
		f 4 804 -808 -807 803
		mu 0 4 498 502 503 500
		mu 1 4 499 503 504 501
		f 4 -811 -810 -809 794
		mu 0 4 495 504 505 496
		mu 1 4 496 505 506 497
		f 4 808 -813 -812 797
		mu 0 4 496 505 506 497
		mu 1 4 497 506 507 498
		f 4 -816 -815 -814 809
		mu 0 4 504 507 508 505
		mu 1 4 505 508 509 506
		f 4 813 -818 -817 812
		mu 0 4 505 508 509 506
		mu 1 4 506 509 510 507
		f 4 811 -820 -819 805
		mu 0 4 497 506 510 502
		mu 1 4 498 507 511 503
		f 4 818 -822 -821 807
		mu 0 4 502 510 511 503
		mu 1 4 503 511 512 504
		f 4 816 -824 -823 819
		mu 0 4 506 509 512 510
		mu 1 4 507 510 513 511
		f 4 822 -826 -825 821
		mu 0 4 510 512 513 511
		mu 1 4 511 513 514 512
		f 4 -830 -829 -828 -827
		mu 0 4 514 515 516 517
		mu 1 4 515 516 517 518
		f 4 827 -833 -832 -831
		mu 0 4 517 516 518 519
		mu 1 4 518 517 519 520
		f 4 -836 -835 -834 828
		mu 0 4 515 520 521 516
		mu 1 4 516 521 522 517
		f 4 833 -838 -837 832
		mu 0 4 516 521 522 518
		mu 1 4 517 522 523 519
		f 4 -842 -841 -840 -839
		mu 0 4 519 523 524 525
		mu 1 4 520 524 525 526
		f 4 839 -845 -844 -843
		mu 0 4 525 524 526 527
		mu 1 4 526 525 527 528
		f 4 -848 -847 -846 840
		mu 0 4 523 528 529 524
		mu 1 4 524 529 530 525
		f 4 845 -850 -849 844
		mu 0 4 524 529 530 526
		mu 1 4 525 530 531 527
		f 4 843 -853 -852 -851
		mu 0 4 527 526 531 532
		mu 1 4 528 527 532 533
		f 4 851 -855 790 -854
		mu 0 4 532 531 492 494
		mu 1 4 533 532 493 495
		f 4 848 -857 -856 852
		mu 0 4 526 530 533 531
		mu 1 4 527 531 534 532
		f 4 855 -858 786 854
		mu 0 4 531 533 489 492
		mu 1 4 532 534 490 493
		f 4 -862 -861 -860 -859
		mu 0 4 534 535 536 537
		mu 1 4 535 536 537 538
		f 4 859 -864 829 -863
		mu 0 4 537 536 515 514
		mu 1 4 538 537 516 515
		f 4 -867 -866 -865 860
		mu 0 4 535 538 539 536
		mu 1 4 536 539 540 537
		f 4 864 -868 835 863
		mu 0 4 536 539 520 515
		mu 1 4 537 540 521 516
		f 4 867 -871 -870 -869
		mu 0 4 520 539 540 541
		mu 1 4 521 540 541 542
		f 4 869 -874 -873 -872
		mu 0 4 541 540 542 543
		mu 1 4 542 541 543 544
		f 4 865 -876 -875 870
		mu 0 4 539 538 544 540
		mu 1 4 540 539 545 541
		f 4 874 -878 -877 873
		mu 0 4 540 544 545 542
		mu 1 4 541 545 546 543
		f 4 802 -881 -880 -879
		mu 0 4 501 500 546 547
		mu 1 4 502 501 547 548
		f 4 879 -883 861 -882
		mu 0 4 547 546 535 534
		mu 1 4 548 547 536 535
		f 4 806 -885 -884 880
		mu 0 4 500 503 548 546
		mu 1 4 501 504 549 547
		f 4 883 -886 866 882
		mu 0 4 546 548 538 535
		mu 1 4 547 549 539 536
		f 4 885 -888 -887 875
		mu 0 4 538 548 549 544
		mu 1 4 539 549 550 545
		f 4 886 -890 -889 877
		mu 0 4 544 549 550 545
		mu 1 4 545 550 551 546
		f 4 884 820 -891 887
		mu 0 4 548 503 511 549
		mu 1 4 549 504 512 550
		f 4 890 824 -892 889
		mu 0 4 549 511 513 550
		mu 1 4 550 512 514 551
		f 4 -896 -895 -894 -893
		mu 0 4 551 552 553 554
		mu 1 4 552 553 554 555
		f 4 893 -899 -898 -897
		mu 0 4 554 553 555 556
		mu 1 4 555 554 556 557
		f 4 -902 -901 -900 894
		mu 0 4 552 557 558 553
		mu 1 4 553 558 559 554
		f 4 899 -904 -903 898
		mu 0 4 553 558 559 555
		mu 1 4 554 559 560 556
		f 4 897 -907 -906 -905
		mu 0 4 556 555 560 561
		mu 1 4 557 556 561 562
		f 4 905 -910 -909 -908
		mu 0 4 561 560 562 563
		mu 1 4 562 561 563 564
		f 4 902 -912 -911 906
		mu 0 4 555 559 564 560
		mu 1 4 556 560 565 561
		f 4 910 -914 -913 909
		mu 0 4 560 564 565 562
		mu 1 4 561 565 566 563
		f 4 -917 -916 -915 900
		mu 0 4 557 566 567 558
		mu 1 4 558 567 568 559
		f 4 914 -919 -918 903
		mu 0 4 558 567 568 559
		mu 1 4 559 568 569 560
		f 4 -921 872 -920 915
		mu 0 4 566 543 542 567
		mu 1 4 567 544 543 568
		f 4 919 876 -922 918
		mu 0 4 567 542 545 568
		mu 1 4 568 543 546 569
		f 4 917 -924 -923 911
		mu 0 4 559 568 569 564
		mu 1 4 560 569 570 565
		f 4 922 -926 -925 913
		mu 0 4 564 569 570 565
		mu 1 4 565 570 571 566
		f 4 921 888 -927 923
		mu 0 4 568 545 550 569
		mu 1 4 569 546 551 570
		f 4 926 891 -928 925
		mu 0 4 569 550 513 570
		mu 1 4 570 551 514 571
		f 4 -932 -931 -930 -929
		mu 0 4 571 572 573 574
		mu 1 4 572 573 574 575
		f 4 929 -935 -934 -933
		mu 0 4 574 573 575 576
		mu 1 4 575 574 576 577
		f 4 -938 -937 -936 930
		mu 0 4 572 577 578 573
		mu 1 4 573 578 579 574
		f 4 935 -940 -939 934
		mu 0 4 573 578 579 575
		mu 1 4 574 579 580 576
		f 4 933 -943 -942 -941
		mu 0 4 576 575 580 581
		mu 1 4 577 576 581 582
		f 4 941 -945 895 -944
		mu 0 4 581 580 552 551
		mu 1 4 582 581 553 552
		f 4 938 -947 -946 942
		mu 0 4 575 579 582 580
		mu 1 4 576 580 583 581
		f 4 945 -948 901 944
		mu 0 4 580 582 557 552
		mu 1 4 581 583 558 553
		f 4 -951 -950 -949 936
		mu 0 4 577 583 584 578
		mu 1 4 578 584 585 579
		f 4 948 -953 -952 939
		mu 0 4 578 584 585 579
		mu 1 4 579 585 586 580
		f 4 -956 -955 -954 949
		mu 0 4 583 586 587 584
		mu 1 4 584 587 588 585
		f 4 953 -958 -957 952
		mu 0 4 584 587 588 585
		mu 1 4 585 588 589 586
		f 4 951 -960 -959 946
		mu 0 4 579 585 589 582
		mu 1 4 580 586 590 583
		f 4 958 -961 916 947
		mu 0 4 582 589 566 557
		mu 1 4 583 590 567 558
		f 4 956 -963 -962 959
		mu 0 4 585 588 590 589
		mu 1 4 586 589 591 590
		f 4 961 -964 920 960
		mu 0 4 589 590 543 566
		mu 1 4 590 591 544 567
		f 4 -967 -966 -965 954
		mu 0 4 586 591 592 587
		mu 1 4 587 592 593 588
		f 4 964 -969 -968 957
		mu 0 4 587 592 593 588
		mu 1 4 588 593 594 589
		f 4 -972 -971 -970 965
		mu 0 4 591 594 595 592
		mu 1 4 592 595 596 593
		f 4 969 -974 -973 968
		mu 0 4 592 595 596 593
		mu 1 4 593 596 597 594
		f 4 967 -976 -975 962
		mu 0 4 588 593 597 590
		mu 1 4 589 594 598 591
		f 4 974 -978 -977 963
		mu 0 4 590 597 598 543
		mu 1 4 591 598 599 544
		f 4 972 -980 -979 975
		mu 0 4 593 596 599 597
		mu 1 4 594 597 600 598
		f 4 978 -982 -981 977
		mu 0 4 597 599 600 598
		mu 1 4 598 600 601 599
		f 4 -985 -984 -983 970
		mu 0 4 594 601 602 595
		mu 1 4 595 602 603 596
		f 4 982 -987 -986 973
		mu 0 4 595 602 603 596
		mu 1 4 596 603 604 597
		f 4 -990 -989 -988 983
		mu 0 4 601 604 605 602
		mu 1 4 602 605 606 603
		f 4 987 -992 -991 986
		mu 0 4 602 605 606 603
		mu 1 4 603 606 607 604
		f 4 985 -994 -993 979
		mu 0 4 596 603 607 599
		mu 1 4 597 604 608 600
		f 4 992 -996 -995 981
		mu 0 4 599 607 608 600
		mu 1 4 600 608 609 601
		f 4 990 -998 -997 993
		mu 0 4 603 606 609 607
		mu 1 4 604 607 610 608
		f 4 996 -1000 -999 995
		mu 0 4 607 609 610 608
		mu 1 4 608 610 611 609
		f 4 831 -1002 -1001 841
		mu 0 4 519 518 611 523
		mu 1 4 520 519 612 524
		f 4 1000 -1004 -1003 847
		mu 0 4 523 611 612 528
		mu 1 4 524 612 613 529
		f 4 836 -1006 -1005 1001
		mu 0 4 518 522 613 611
		mu 1 4 519 523 614 612
		f 4 1004 -1008 -1007 1003
		mu 0 4 611 613 614 612
		mu 1 4 612 614 615 613
		f 4 868 -1010 -1009 834
		mu 0 4 520 541 615 521
		mu 1 4 521 542 616 522
		f 4 1008 -1012 -1011 837
		mu 0 4 521 615 616 522
		mu 1 4 522 616 617 523
		f 4 871 976 -1013 1009
		mu 0 4 541 543 598 615
		mu 1 4 542 544 599 616
		f 4 1012 980 -1014 1011
		mu 0 4 615 598 600 616
		mu 1 4 616 599 601 617
		f 4 1010 -1016 -1015 1005
		mu 0 4 522 616 617 613
		mu 1 4 523 617 618 614
		f 4 1014 -1018 -1017 1007
		mu 0 4 613 617 618 614
		mu 1 4 614 618 619 615
		f 4 1013 994 -1019 1015
		mu 0 4 616 600 608 617
		mu 1 4 617 601 609 618
		f 4 1018 998 -1020 1017
		mu 0 4 617 608 610 618
		mu 1 4 618 609 611 619
		f 4 -1024 -1023 -1022 -1021
		mu 0 4 619 620 621 622
		mu 1 4 620 621 622 623
		f 4 1021 -1027 -1026 -1025
		mu 0 4 622 621 623 624
		mu 1 4 623 622 624 625
		f 4 -1029 815 -1028 1022
		mu 0 4 620 507 504 621
		mu 1 4 621 508 505 622
		f 4 1027 810 -1030 1026
		mu 0 4 621 504 495 623
		mu 1 4 622 505 496 624
		f 4 -1034 -1033 -1032 -1031
		mu 0 4 625 626 627 628
		mu 1 4 626 627 628 629
		f 4 1031 -1036 789 -1035
		mu 0 4 628 627 490 489
		mu 1 4 629 628 491 490;
	setAttr ".fc[500:999]"
		f 4 -1038 1025 -1037 1032
		mu 0 4 626 624 623 627
		mu 1 4 627 625 624 628
		f 4 1036 1029 795 1035
		mu 0 4 627 623 495 490
		mu 1 4 628 624 496 491
		f 4 1030 -1041 -1040 -1039
		mu 0 4 625 628 629 630
		mu 1 4 626 629 630 631
		f 4 1039 -1044 -1043 -1042
		mu 0 4 630 629 631 632
		mu 1 4 631 630 632 633
		f 4 1034 857 -1045 1040
		mu 0 4 628 489 533 629
		mu 1 4 629 490 534 630
		f 4 1044 856 -1046 1043
		mu 0 4 629 533 530 631
		mu 1 4 630 534 531 632
		f 4 1042 -1049 -1048 -1047
		mu 0 4 632 631 633 634
		mu 1 4 633 632 634 635
		f 4 1047 -1052 -1051 -1050
		mu 0 4 634 633 635 636
		mu 1 4 635 634 636 637
		f 4 1045 849 -1053 1048
		mu 0 4 631 530 529 633
		mu 1 4 632 531 530 634
		f 4 1052 846 -1054 1051
		mu 0 4 633 529 528 635
		mu 1 4 634 530 529 636
		f 4 -1058 -1057 -1056 -1055
		mu 0 4 637 638 639 640
		mu 1 4 638 639 640 641
		f 4 1055 -1060 1019 -1059
		mu 0 4 640 639 618 610
		mu 1 4 641 640 619 611
		f 4 -1063 -1062 -1061 1056
		mu 0 4 638 641 642 639
		mu 1 4 639 642 643 640
		f 4 1060 -1064 1016 1059
		mu 0 4 639 642 614 618
		mu 1 4 640 643 615 619
		f 4 1002 -1066 -1065 1053
		mu 0 4 528 612 643 635
		mu 1 4 529 613 644 636
		f 4 1064 -1068 -1067 1050
		mu 0 4 635 643 644 636
		mu 1 4 636 644 645 637
		f 4 1006 1063 -1069 1065
		mu 0 4 612 614 642 643
		mu 1 4 613 615 643 644
		f 4 1068 1061 -1070 1067
		mu 0 4 643 642 641 644
		mu 1 4 644 643 642 645
		f 4 -1074 -1073 -1072 -1071
		mu 0 4 645 646 647 648
		mu 1 4 646 647 648 649
		f 4 1071 -1076 988 -1075
		mu 0 4 648 647 605 604
		mu 1 4 649 648 606 605
		f 4 -1079 -1078 -1077 1072
		mu 0 4 646 649 650 647
		mu 1 4 647 650 651 648
		f 4 1076 -1080 991 1075
		mu 0 4 647 650 606 605
		mu 1 4 648 651 607 606
		f 4 -1083 -1082 -1081 1077
		mu 0 4 649 651 652 650
		mu 1 4 650 652 653 651
		f 4 1080 -1084 997 1079
		mu 0 4 650 652 609 606
		mu 1 4 651 653 610 607
		f 4 -1086 1054 -1085 1081
		mu 0 4 651 637 640 652
		mu 1 4 652 638 641 653
		f 4 1084 1058 999 1083
		mu 0 4 652 640 610 609
		mu 1 4 653 641 611 610
		f 4 -1090 -1089 -1088 -1087
		mu 0 4 653 654 655 656
		mu 1 4 654 655 656 657
		f 4 1087 -1093 -1092 -1091
		mu 0 4 656 655 657 658
		mu 1 4 657 656 658 659
		f 4 -1096 -1095 -1094 1088
		mu 0 4 654 659 660 655
		mu 1 4 655 660 661 656
		f 4 1093 -1098 -1097 1092
		mu 0 4 655 660 661 657
		mu 1 4 656 661 662 658
		f 4 1091 -1101 -1100 -1099
		mu 0 4 658 657 662 663
		mu 1 4 659 658 663 664
		f 4 1099 -1103 814 -1102
		mu 0 4 663 662 508 507
		mu 1 4 664 663 509 508
		f 4 1096 -1105 -1104 1100
		mu 0 4 657 661 664 662
		mu 1 4 658 662 665 663
		f 4 1103 -1106 817 1102
		mu 0 4 662 664 509 508
		mu 1 4 663 665 510 509
		f 4 -1109 -1108 -1107 1094
		mu 0 4 659 665 666 660
		mu 1 4 660 666 667 661
		f 4 1106 -1111 -1110 1097
		mu 0 4 660 666 667 661
		mu 1 4 661 667 668 662
		f 4 -1114 -1113 -1112 1107
		mu 0 4 665 668 669 666
		mu 1 4 666 669 670 667
		f 4 1111 -1116 -1115 1110
		mu 0 4 666 669 670 667
		mu 1 4 667 670 671 668
		f 4 1109 -1118 -1117 1104
		mu 0 4 661 667 671 664
		mu 1 4 662 668 672 665
		f 4 1116 -1120 -1119 1105
		mu 0 4 664 671 672 509
		mu 1 4 665 672 673 510
		f 4 1114 -1122 -1121 1117
		mu 0 4 667 670 673 671
		mu 1 4 668 671 674 672
		f 4 1120 -1124 -1123 1119
		mu 0 4 671 673 674 672
		mu 1 4 672 674 675 673
		f 4 -1127 -1126 -1125 1023
		mu 0 4 619 675 676 620
		mu 1 4 620 676 677 621
		f 4 1124 -1128 1101 1028
		mu 0 4 620 676 663 507
		mu 1 4 621 677 664 508
		f 4 -1131 -1130 -1129 1125
		mu 0 4 675 677 678 676
		mu 1 4 676 678 679 677
		f 4 1128 -1132 1098 1127
		mu 0 4 676 678 658 663
		mu 1 4 677 679 659 664
		f 4 -1135 -1134 -1133 1129
		mu 0 4 677 679 680 678
		mu 1 4 678 680 681 679
		f 4 1132 -1136 1090 1131
		mu 0 4 678 680 656 658
		mu 1 4 679 681 657 659
		f 4 -1139 -1138 -1137 1133
		mu 0 4 679 681 682 680
		mu 1 4 680 682 683 681
		f 4 1136 -1140 1086 1135
		mu 0 4 680 682 653 656
		mu 1 4 681 683 654 657
		f 4 1070 -1143 -1142 -1141
		mu 0 4 645 648 683 684
		mu 1 4 646 649 684 685
		f 4 1141 -1146 -1145 -1144
		mu 0 4 684 683 685 686
		mu 1 4 685 684 686 687
		f 4 1074 -1148 -1147 1142
		mu 0 4 648 604 687 683
		mu 1 4 649 605 688 684
		f 4 1146 -1150 -1149 1145
		mu 0 4 683 687 688 685
		mu 1 4 684 688 689 686
		f 4 1144 -1153 -1152 -1151
		mu 0 4 686 685 689 690
		mu 1 4 687 686 690 691
		f 4 1151 -1156 -1155 -1154
		mu 0 4 690 689 691 692
		mu 1 4 691 690 692 693
		f 4 1148 -1158 -1157 1152
		mu 0 4 685 688 693 689
		mu 1 4 686 689 694 690
		f 4 1156 -1160 -1159 1155
		mu 0 4 689 693 694 691
		mu 1 4 690 694 695 692
		f 4 989 -1162 -1161 1147
		mu 0 4 604 601 695 687
		mu 1 4 605 602 696 688
		f 4 1160 -1164 -1163 1149
		mu 0 4 687 695 696 688
		mu 1 4 688 696 697 689
		f 4 984 -1166 -1165 1161
		mu 0 4 601 594 697 695
		mu 1 4 602 595 698 696
		f 4 1164 -1168 -1167 1163
		mu 0 4 695 697 698 696
		mu 1 4 696 698 699 697
		f 4 1162 -1170 -1169 1157
		mu 0 4 688 696 699 693
		mu 1 4 689 697 700 694
		f 4 1168 -1172 -1171 1159
		mu 0 4 693 699 700 694
		mu 1 4 694 700 701 695
		f 4 1166 -1174 -1173 1169
		mu 0 4 696 698 701 699
		mu 1 4 697 699 702 700
		f 4 1172 -1176 -1175 1171
		mu 0 4 699 701 702 700
		mu 1 4 700 702 703 701
		f 4 971 -1178 -1177 1165
		mu 0 4 594 591 703 697
		mu 1 4 595 592 704 698
		f 4 1176 -1180 -1179 1167
		mu 0 4 697 703 704 698
		mu 1 4 698 704 705 699
		f 4 966 -1182 -1181 1177
		mu 0 4 591 586 705 703
		mu 1 4 592 587 706 704
		f 4 1180 -1184 -1183 1179
		mu 0 4 703 705 706 704
		mu 1 4 704 706 707 705
		f 4 1178 -1186 -1185 1173
		mu 0 4 698 704 707 701
		mu 1 4 699 705 708 702
		f 4 1184 -1188 -1187 1175
		mu 0 4 701 707 708 702
		mu 1 4 702 708 709 703
		f 4 1182 -1190 -1189 1185
		mu 0 4 704 706 709 707
		mu 1 4 705 707 710 708
		f 4 1188 -1192 -1191 1187
		mu 0 4 707 709 710 708
		mu 1 4 708 710 711 709
		f 4 -1195 -1194 -1193 931
		mu 0 4 571 711 712 572
		mu 1 4 572 712 713 573
		f 4 1192 -1197 -1196 937
		mu 0 4 572 712 713 577
		mu 1 4 573 713 714 578
		f 4 -1200 -1199 -1198 1193
		mu 0 4 711 714 715 712
		mu 1 4 712 715 716 713
		f 4 1197 -1202 -1201 1196
		mu 0 4 712 715 716 713
		mu 1 4 713 716 717 714
		f 4 1195 -1204 -1203 950
		mu 0 4 577 713 717 583
		mu 1 4 578 714 718 584
		f 4 1202 -1205 1181 955
		mu 0 4 583 717 705 586
		mu 1 4 584 718 706 587
		f 4 1200 -1207 -1206 1203
		mu 0 4 713 716 718 717
		mu 1 4 714 717 719 718
		f 4 1205 -1208 1183 1204
		mu 0 4 717 718 706 705
		mu 1 4 718 719 707 706
		f 4 -1211 -1210 -1209 1198
		mu 0 4 714 719 720 715
		mu 1 4 715 720 721 716
		f 4 1208 -1213 -1212 1201
		mu 0 4 715 720 721 716
		mu 1 4 716 721 722 717
		f 4 -1216 -1215 -1214 1209
		mu 0 4 719 722 723 720
		mu 1 4 720 723 724 721
		f 4 1213 -1218 -1217 1212
		mu 0 4 720 723 724 721
		mu 1 4 721 724 725 722
		f 4 1211 -1220 -1219 1206
		mu 0 4 716 721 725 718
		mu 1 4 717 722 726 719
		f 4 1218 -1221 1189 1207
		mu 0 4 718 725 709 706
		mu 1 4 719 726 710 707
		f 4 1216 -1223 -1222 1219
		mu 0 4 721 724 726 725
		mu 1 4 722 725 727 726
		f 4 1221 -1224 1191 1220
		mu 0 4 725 726 710 709
		mu 1 4 726 727 711 710
		f 4 -1228 -1227 -1226 -1225
		mu 0 4 727 728 729 730
		mu 1 4 728 729 730 731
		f 4 1225 -1231 -1230 -1229
		mu 0 4 730 729 731 732
		mu 1 4 731 730 732 733
		f 4 -1234 -1233 -1232 1226
		mu 0 4 728 733 734 729
		mu 1 4 729 734 735 730
		f 4 1231 -1236 -1235 1230
		mu 0 4 729 734 735 731
		mu 1 4 730 735 736 732
		f 4 1229 -1239 -1238 -1237
		mu 0 4 732 731 736 737
		mu 1 4 733 732 737 738
		f 4 1237 -1241 943 -1240
		mu 0 4 737 736 581 551
		mu 1 4 738 737 582 552
		f 4 1234 -1243 -1242 1238
		mu 0 4 731 735 738 736
		mu 1 4 732 736 739 737
		f 4 1241 -1244 940 1240
		mu 0 4 736 738 576 581
		mu 1 4 737 739 577 582
		f 4 -1247 -1246 -1245 1232
		mu 0 4 733 739 740 734
		mu 1 4 734 740 741 735
		f 4 1244 -1249 -1248 1235
		mu 0 4 734 740 741 735
		mu 1 4 735 741 742 736
		f 4 -1252 -1251 -1250 1245
		mu 0 4 739 742 743 740
		mu 1 4 740 743 744 741
		f 4 1249 -1254 -1253 1248
		mu 0 4 740 743 744 741
		mu 1 4 741 744 745 742
		f 4 1247 -1256 -1255 1242
		mu 0 4 735 741 745 738
		mu 1 4 736 742 746 739
		f 4 1254 -1257 932 1243
		mu 0 4 738 745 574 576
		mu 1 4 739 746 575 577
		f 4 1252 -1259 -1258 1255
		mu 0 4 741 744 746 745
		mu 1 4 742 745 747 746
		f 4 1257 -1260 928 1256
		mu 0 4 745 746 571 574
		mu 1 4 746 747 572 575
		f 4 892 -1262 -1261 1239
		mu 0 4 551 554 747 737
		mu 1 4 552 555 748 738
		f 4 1260 -1264 -1263 1236
		mu 0 4 737 747 748 732
		mu 1 4 738 748 749 733
		f 4 896 -1266 -1265 1261
		mu 0 4 554 556 749 747
		mu 1 4 555 557 750 748
		f 4 1264 -1268 -1267 1263
		mu 0 4 747 749 750 748
		mu 1 4 748 750 751 749
		f 4 1262 -1270 -1269 1228
		mu 0 4 732 748 751 730
		mu 1 4 733 749 752 731
		f 4 1268 -1272 -1271 1224
		mu 0 4 730 751 752 727
		mu 1 4 731 752 753 728
		f 4 1266 -1274 -1273 1269
		mu 0 4 748 750 753 751
		mu 1 4 749 751 754 752
		f 4 1272 -1276 -1275 1271
		mu 0 4 751 753 754 752
		mu 1 4 752 754 755 753
		f 4 904 -1278 -1277 1265
		mu 0 4 556 561 755 749
		mu 1 4 557 562 756 750
		f 4 1276 -1280 -1279 1267
		mu 0 4 749 755 756 750
		mu 1 4 750 756 757 751
		f 4 907 -1282 -1281 1277
		mu 0 4 561 563 757 755
		mu 1 4 562 564 758 756
		f 4 1280 -1284 -1283 1279
		mu 0 4 755 757 758 756
		mu 1 4 756 758 759 757
		f 4 1278 -1286 -1285 1273
		mu 0 4 750 756 759 753
		mu 1 4 751 757 760 754
		f 4 1284 -1288 -1287 1275
		mu 0 4 753 759 760 754
		mu 1 4 754 760 761 755
		f 4 1282 -1290 -1289 1285
		mu 0 4 756 758 761 759
		mu 1 4 757 759 762 760
		f 4 1288 -1292 -1291 1287
		mu 0 4 759 761 762 760
		mu 1 4 760 762 763 761
		f 4 1259 -1294 -1293 1194
		mu 0 4 571 746 763 711
		mu 1 4 572 747 764 712
		f 4 1292 -1296 -1295 1199
		mu 0 4 711 763 764 714
		mu 1 4 712 764 765 715
		f 4 1258 -1298 -1297 1293
		mu 0 4 746 744 765 763
		mu 1 4 747 745 766 764
		f 4 1296 -1300 -1299 1295
		mu 0 4 763 765 766 764
		mu 1 4 764 766 767 765
		f 4 1294 -1302 -1301 1210
		mu 0 4 714 764 767 719
		mu 1 4 715 765 768 720
		f 4 1300 -1304 -1303 1215
		mu 0 4 719 767 768 722
		mu 1 4 720 768 769 723
		f 4 1298 -1306 -1305 1301
		mu 0 4 764 766 769 767
		mu 1 4 765 767 770 768
		f 4 1304 -1308 -1307 1303
		mu 0 4 767 769 770 768
		mu 1 4 768 770 771 769
		f 4 1253 -1310 -1309 1297
		mu 0 4 744 743 771 765
		mu 1 4 745 744 772 766
		f 4 1308 -1312 -1311 1299
		mu 0 4 765 771 772 766
		mu 1 4 766 772 773 767
		f 4 1250 -1314 -1313 1309
		mu 0 4 743 742 773 771
		mu 1 4 744 743 774 772
		f 4 1312 -1316 -1315 1311
		mu 0 4 771 773 774 772
		mu 1 4 772 774 775 773
		f 4 1310 -1318 -1317 1305
		mu 0 4 766 772 775 769
		mu 1 4 767 773 776 770
		f 4 1316 -1320 -1319 1307
		mu 0 4 769 775 776 770
		mu 1 4 770 776 777 771
		f 4 1314 -1322 -1321 1317
		mu 0 4 772 774 777 775
		mu 1 4 773 775 778 776
		f 4 1320 -1324 -1323 1319
		mu 0 4 775 777 778 776
		mu 1 4 776 778 779 777
		f 4 -1328 -1327 -1326 -1325
		mu 0 4 779 780 781 782
		mu 1 4 780 781 782 783
		f 4 1325 -1331 -1330 -1329
		mu 0 4 782 781 783 784
		mu 1 4 783 782 784 785
		f 4 -1334 -1333 -1332 1326
		mu 0 4 780 785 786 781
		mu 1 4 781 786 787 782
		f 4 1331 -1336 -1335 1330
		mu 0 4 781 786 787 783
		mu 1 4 782 787 788 784
		f 4 1329 -1339 -1338 -1337
		mu 0 4 784 783 788 789
		mu 1 4 785 784 789 790
		f 4 1337 -1342 -1341 -1340
		mu 0 4 789 788 790 791
		mu 1 4 790 789 791 792
		f 4 1334 -1344 -1343 1338
		mu 0 4 783 787 792 788
		mu 1 4 784 788 793 789
		f 4 1342 -1346 -1345 1341
		mu 0 4 788 792 793 790
		mu 1 4 789 793 794 791
		f 4 -1349 -1348 -1347 1332
		mu 0 4 785 794 795 786
		mu 1 4 786 795 796 787
		f 4 1346 -1351 -1350 1335
		mu 0 4 786 795 796 787
		mu 1 4 787 796 797 788
		f 4 -1353 1291 -1352 1347
		mu 0 4 794 762 761 795
		mu 1 4 795 763 762 796
		f 4 1351 1289 -1354 1350
		mu 0 4 795 761 758 796
		mu 1 4 796 762 759 797
		f 4 1349 -1356 -1355 1343
		mu 0 4 787 796 797 792
		mu 1 4 788 797 798 793
		f 4 1354 -1358 -1357 1345
		mu 0 4 792 797 798 793
		mu 1 4 793 798 799 794
		f 4 1353 1283 -1359 1355
		mu 0 4 796 758 757 797
		mu 1 4 797 759 758 798
		f 4 1358 1281 -1360 1357
		mu 0 4 797 757 563 798
		mu 1 4 798 758 564 799
		f 4 -1364 -1363 -1362 -1361
		mu 0 4 799 800 801 802
		mu 1 4 800 801 802 803
		f 4 1361 -1367 -1366 -1365
		mu 0 4 802 801 803 804
		mu 1 4 803 802 804 805
		f 4 -1370 -1369 -1368 1362
		mu 0 4 800 805 806 801
		mu 1 4 801 806 807 802
		f 4 1367 -1372 -1371 1366
		mu 0 4 801 806 807 803
		mu 1 4 802 807 808 804
		f 4 1365 -1375 -1374 -1373
		mu 0 4 804 803 808 809
		mu 1 4 805 804 809 810
		f 4 1373 -1377 1214 -1376
		mu 0 4 809 808 723 722
		mu 1 4 810 809 724 723
		f 4 1370 -1379 -1378 1374
		mu 0 4 803 807 810 808
		mu 1 4 804 808 811 809
		f 4 1377 -1380 1217 1376
		mu 0 4 808 810 724 723
		mu 1 4 809 811 725 724
		f 4 -1383 -1382 -1381 1368
		mu 0 4 805 811 812 806
		mu 1 4 806 812 813 807
		f 4 1380 -1385 -1384 1371
		mu 0 4 806 812 813 807
		mu 1 4 807 813 814 808
		f 4 -1388 -1387 -1386 1381
		mu 0 4 811 814 815 812
		mu 1 4 812 815 816 813
		f 4 1385 -1390 -1389 1384
		mu 0 4 812 815 816 813
		mu 1 4 813 816 817 814
		f 4 1383 -1392 -1391 1378
		mu 0 4 807 813 817 810
		mu 1 4 808 814 818 811
		f 4 1390 -1393 1222 1379
		mu 0 4 810 817 726 724
		mu 1 4 811 818 727 725
		f 4 1388 -1395 -1394 1391
		mu 0 4 813 816 818 817
		mu 1 4 814 817 819 818
		f 4 1393 -1396 1223 1392
		mu 0 4 817 818 710 726
		mu 1 4 818 819 711 727
		f 4 1170 -1399 -1398 -1397
		mu 0 4 694 700 819 820
		mu 1 4 695 701 820 821
		f 4 1397 -1402 -1401 -1400
		mu 0 4 820 819 821 822
		mu 1 4 821 820 822 823
		f 4 1174 -1404 -1403 1398
		mu 0 4 700 702 823 819
		mu 1 4 701 703 824 820
		f 4 1402 -1406 -1405 1401
		mu 0 4 819 823 824 821
		mu 1 4 820 824 825 822
		f 4 1400 -1409 -1408 -1407
		mu 0 4 822 821 825 826
		mu 1 4 823 822 826 827
		f 4 1404 -1411 -1410 1408
		mu 0 4 821 824 827 825
		mu 1 4 822 825 828 826
		f 4 1186 -1413 -1412 1403
		mu 0 4 702 708 828 823
		mu 1 4 703 709 829 824
		f 4 1411 -1415 -1414 1405
		mu 0 4 823 828 829 824
		mu 1 4 824 829 830 825
		f 4 1190 1395 -1416 1412
		mu 0 4 708 710 818 828
		mu 1 4 709 711 819 829
		f 4 1415 1394 -1417 1414
		mu 0 4 828 818 816 829
		mu 1 4 829 819 817 830
		f 4 1413 -1419 -1418 1410
		mu 0 4 824 829 830 827
		mu 1 4 825 830 831 828
		f 4 1416 -1421 -1420 1418
		mu 0 4 829 816 831 830
		mu 1 4 830 817 832 831
		f 4 1154 -1424 -1423 -1422
		mu 0 4 692 691 832 833
		mu 1 4 693 692 833 834
		f 4 1422 -1427 -1426 -1425
		mu 0 4 833 832 834 835
		mu 1 4 834 833 835 836
		f 4 1158 1396 -1428 1423
		mu 0 4 691 694 820 832
		mu 1 4 692 695 821 833
		f 4 1427 1399 -1429 1426
		mu 0 4 832 820 822 834
		mu 1 4 833 821 823 835
		f 4 1425 -1432 -1431 -1430
		mu 0 4 835 834 836 837
		mu 1 4 836 835 837 838
		f 4 1428 1406 -1433 1431
		mu 0 4 834 822 826 836
		mu 1 4 835 823 827 837
		f 4 -1436 -1435 -1434 1339
		mu 0 4 791 838 839 789
		mu 1 4 792 839 840 790
		f 4 1433 -1438 -1437 1336
		mu 0 4 789 839 840 784
		mu 1 4 790 840 841 785
		f 4 -1441 -1440 -1439 1434
		mu 0 4 838 841 842 839
		mu 1 4 839 842 843 840
		f 4 1438 -1443 -1442 1437
		mu 0 4 839 842 843 840
		mu 1 4 840 843 844 841
		f 4 1436 -1445 -1444 1328
		mu 0 4 784 840 844 782
		mu 1 4 785 841 845 783
		f 4 1443 -1447 -1446 1324
		mu 0 4 782 844 845 779
		mu 1 4 783 845 846 780
		f 4 1441 -1449 -1448 1444
		mu 0 4 840 843 846 844
		mu 1 4 841 844 847 845
		f 4 1447 -1451 -1450 1446
		mu 0 4 844 846 847 845
		mu 1 4 845 847 848 846
		f 4 -1454 -1453 -1452 1439
		mu 0 4 841 848 849 842
		mu 1 4 842 849 850 843
		f 4 1451 -1456 -1455 1442
		mu 0 4 842 849 850 843
		mu 1 4 843 850 851 844
		f 4 -1459 -1458 -1457 1452
		mu 0 4 848 851 852 849
		mu 1 4 849 852 853 850
		f 4 1456 -1461 -1460 1455
		mu 0 4 849 852 853 850
		mu 1 4 850 853 854 851
		f 4 1454 -1463 -1462 1448
		mu 0 4 843 850 854 846
		mu 1 4 844 851 855 847
		f 4 1461 -1465 -1464 1450
		mu 0 4 846 854 855 847
		mu 1 4 847 855 856 848
		f 4 1459 -1467 -1466 1462
		mu 0 4 850 853 856 854
		mu 1 4 851 854 857 855
		f 4 1465 -1469 -1468 1464
		mu 0 4 854 856 857 855
		mu 1 4 855 857 858 856
		f 4 -1473 -1472 -1471 -1470
		mu 0 4 858 859 860 861
		mu 1 4 859 860 861 862
		f 4 1470 -1476 -1475 -1474
		mu 0 4 861 860 862 863
		mu 1 4 862 861 863 864
		f 4 -1479 -1478 -1477 1471
		mu 0 4 859 864 865 860
		mu 1 4 860 865 866 861
		f 4 1476 -1481 -1480 1475
		mu 0 4 860 865 866 862
		mu 1 4 861 866 867 863
		f 4 1474 -1484 -1483 -1482
		mu 0 4 863 862 867 868
		mu 1 4 864 863 868 869
		f 4 1482 -1487 -1486 -1485
		mu 0 4 868 867 869 870
		mu 1 4 869 868 870 871
		f 4 1479 -1489 -1488 1483
		mu 0 4 862 866 871 867
		mu 1 4 863 867 872 868
		f 4 1487 -1491 -1490 1486
		mu 0 4 867 871 872 869
		mu 1 4 868 872 873 870
		f 4 -1494 -1493 -1492 1477
		mu 0 4 864 873 874 865
		mu 1 4 865 874 875 866
		f 4 1491 -1496 -1495 1480
		mu 0 4 865 874 875 866
		mu 1 4 866 875 876 867
		f 4 -1498 1352 -1497 1492
		mu 0 4 873 762 794 874
		mu 1 4 874 763 795 875
		f 4 1496 1348 -1499 1495
		mu 0 4 874 794 785 875
		mu 1 4 875 795 786 876
		f 4 1494 -1501 -1500 1488
		mu 0 4 866 875 876 871
		mu 1 4 867 876 877 872
		f 4 1499 -1503 -1502 1490
		mu 0 4 871 876 877 872
		mu 1 4 872 877 878 873
		f 4 1498 1333 -1504 1500
		mu 0 4 875 785 780 876
		mu 1 4 876 786 781 877
		f 4 1503 1327 -1505 1502
		mu 0 4 876 780 779 877
		mu 1 4 877 781 780 878
		f 4 -1509 -1508 -1507 -1506
		mu 0 4 878 879 880 881
		mu 1 4 879 880 881 882
		f 4 1506 -1512 -1511 -1510
		mu 0 4 881 880 882 883
		mu 1 4 882 881 883 884
		f 4 -1515 -1514 -1513 1507
		mu 0 4 879 884 885 880
		mu 1 4 880 885 886 881
		f 4 1512 -1517 -1516 1511
		mu 0 4 880 885 886 882
		mu 1 4 881 886 887 883
		f 4 1510 -1520 -1519 -1518
		mu 0 4 883 882 887 888
		mu 1 4 884 883 888 889
		f 4 1518 -1523 -1522 -1521
		mu 0 4 888 887 889 890
		mu 1 4 889 888 890 891
		f 4 1515 -1525 -1524 1519
		mu 0 4 882 886 891 887
		mu 1 4 883 887 892 888
		f 4 1523 -1527 -1526 1522
		mu 0 4 887 891 892 889
		mu 1 4 888 892 893 890
		f 4 -1530 -1529 -1528 1513
		mu 0 4 884 893 894 885
		mu 1 4 885 894 895 886
		f 4 1527 -1532 -1531 1516
		mu 0 4 885 894 895 886
		mu 1 4 886 895 896 887
		f 4 -1534 1270 -1533 1528
		mu 0 4 893 727 752 894
		mu 1 4 894 728 753 895
		f 4 1532 1274 -1535 1531
		mu 0 4 894 752 754 895
		mu 1 4 895 753 755 896
		f 4 1530 -1537 -1536 1524
		mu 0 4 886 895 896 891
		mu 1 4 887 896 897 892
		f 4 1535 -1539 -1538 1526
		mu 0 4 891 896 897 892
		mu 1 4 892 897 898 893
		f 4 1534 1286 -1540 1536
		mu 0 4 895 754 760 896
		mu 1 4 896 755 761 897
		f 4 1539 1290 -1541 1538
		mu 0 4 896 760 762 897
		mu 1 4 897 761 763 898
		f 4 1445 -1543 -1542 1504
		mu 0 4 779 845 898 877
		mu 1 4 780 846 899 878
		f 4 1541 -1545 -1544 1501
		mu 0 4 877 898 899 872
		mu 1 4 878 899 900 873
		f 4 1449 -1547 -1546 1542
		mu 0 4 845 847 900 898
		mu 1 4 846 848 901 899
		f 4 1545 -1549 -1548 1544
		mu 0 4 898 900 901 899
		mu 1 4 899 901 902 900
		f 4 1543 -1551 -1550 1489
		mu 0 4 872 899 902 869
		mu 1 4 873 900 903 870
		f 4 1549 -1553 -1552 1485
		mu 0 4 869 902 903 870
		mu 1 4 870 903 904 871
		f 4 1547 -1555 -1554 1550
		mu 0 4 899 901 904 902
		mu 1 4 900 902 905 903
		f 4 1553 -1557 -1556 1552
		mu 0 4 902 904 905 903
		mu 1 4 903 905 906 904
		f 4 1463 -1559 -1558 1546
		mu 0 4 847 855 906 900
		mu 1 4 848 856 907 901
		f 4 1557 -1561 -1560 1548
		mu 0 4 900 906 907 901
		mu 1 4 901 907 908 902
		f 4 1467 -1563 -1562 1558
		mu 0 4 855 857 908 906
		mu 1 4 856 858 909 907
		f 4 1561 -1565 -1564 1560
		mu 0 4 906 908 909 907
		mu 1 4 907 909 910 908
		f 4 1559 -1567 -1566 1554
		mu 0 4 901 907 910 904
		mu 1 4 902 908 911 905
		f 4 1565 -1569 -1568 1556
		mu 0 4 904 910 911 905
		mu 1 4 905 911 912 906
		f 4 1563 -1571 -1570 1566
		mu 0 4 907 909 912 910
		mu 1 4 908 910 913 911
		f 4 1569 -1573 -1572 1568
		mu 0 4 910 912 913 911
		mu 1 4 911 913 914 912
		f 4 -1576 -1575 -1574 1508
		mu 0 4 878 914 915 879
		mu 1 4 879 915 916 880
		f 4 1573 -1578 -1577 1514
		mu 0 4 879 915 916 884
		mu 1 4 880 916 917 885
		f 4 -1581 -1580 -1579 1574
		mu 0 4 914 917 918 915
		mu 1 4 915 918 919 916
		f 4 1578 -1583 -1582 1577
		mu 0 4 915 918 919 916
		mu 1 4 916 919 920 917
		f 4 1576 -1585 -1584 1529
		mu 0 4 884 916 920 893
		mu 1 4 885 917 921 894
		f 4 1583 -1586 1227 1533
		mu 0 4 893 920 728 727
		mu 1 4 894 921 729 728
		f 4 1581 -1588 -1587 1584
		mu 0 4 916 919 921 920
		mu 1 4 917 920 922 921
		f 4 1586 -1589 1233 1585
		mu 0 4 920 921 733 728
		mu 1 4 921 922 734 729
		f 4 -1592 -1591 -1590 1579
		mu 0 4 917 922 923 918
		mu 1 4 918 923 924 919
		f 4 1589 -1594 -1593 1582
		mu 0 4 918 923 924 919
		mu 1 4 919 924 925 920
		f 4 -1597 -1596 -1595 1590
		mu 0 4 922 925 926 923
		mu 1 4 923 926 927 924
		f 4 1594 -1599 -1598 1593
		mu 0 4 923 926 927 924
		mu 1 4 924 927 928 925
		f 4 1592 -1601 -1600 1587
		mu 0 4 919 924 928 921
		mu 1 4 920 925 929 922
		f 4 1599 -1602 1246 1588
		mu 0 4 921 928 739 733
		mu 1 4 922 929 740 734
		f 4 1597 -1604 -1603 1600
		mu 0 4 924 927 929 928
		mu 1 4 925 928 930 929
		f 4 1602 -1605 1251 1601
		mu 0 4 928 929 742 739
		mu 1 4 929 930 743 740
		f 4 -1609 -1608 -1607 -1606
		mu 0 4 930 931 932 933
		mu 1 4 931 932 933 934
		f 4 1606 -1612 -1611 -1610
		mu 0 4 933 932 934 935
		mu 1 4 934 933 935 936
		f 4 -1615 -1614 -1613 1607
		mu 0 4 931 936 937 932
		mu 1 4 932 937 938 933
		f 4 1612 -1617 -1616 1611
		mu 0 4 932 937 938 934
		mu 1 4 933 938 939 935
		f 4 1610 -1620 -1619 -1618
		mu 0 4 935 934 939 940
		mu 1 4 936 935 940 941
		f 4 1618 -1622 1575 -1621
		mu 0 4 940 939 914 878
		mu 1 4 941 940 915 879
		f 4 1615 -1624 -1623 1619
		mu 0 4 934 938 941 939
		mu 1 4 935 939 942 940
		f 4 1622 -1625 1580 1621
		mu 0 4 939 941 917 914
		mu 1 4 940 942 918 915
		f 4 -1628 -1627 -1626 1613
		mu 0 4 936 942 943 937
		mu 1 4 937 943 944 938
		f 4 1625 -1630 -1629 1616
		mu 0 4 937 943 944 938
		mu 1 4 938 944 945 939
		f 4 -1633 -1632 -1631 1626
		mu 0 4 942 945 946 943
		mu 1 4 943 946 947 944
		f 4 1630 -1635 -1634 1629
		mu 0 4 943 946 947 944
		mu 1 4 944 947 948 945
		f 4 1628 -1637 -1636 1623
		mu 0 4 938 944 948 941
		mu 1 4 939 945 949 942
		f 4 1635 -1638 1591 1624
		mu 0 4 941 948 922 917
		mu 1 4 942 949 923 918
		f 4 1633 -1640 -1639 1636
		mu 0 4 944 947 949 948
		mu 1 4 945 948 950 949
		f 4 1638 -1641 1596 1637
		mu 0 4 948 949 925 922
		mu 1 4 949 950 926 923
		f 4 -1645 -1644 -1643 -1642
		mu 0 4 950 951 952 953
		mu 1 4 951 952 953 954
		f 4 1642 -1648 -1647 -1646
		mu 0 4 953 952 954 955
		mu 1 4 954 953 955 956
		f 4 -1651 -1650 -1649 1643
		mu 0 4 951 956 957 952
		mu 1 4 952 957 958 953
		f 4 1648 -1653 -1652 1647
		mu 0 4 952 957 958 954
		mu 1 4 953 958 959 955
		f 4 1646 -1656 -1655 -1654
		mu 0 4 955 954 959 960
		mu 1 4 956 955 960 961
		f 4 1654 -1658 1631 -1657
		mu 0 4 960 959 946 945
		mu 1 4 961 960 947 946
		f 4 1651 -1660 -1659 1655
		mu 0 4 954 958 961 959
		mu 1 4 955 959 962 960
		f 4 1658 -1661 1634 1657
		mu 0 4 959 961 947 946
		mu 1 4 960 962 948 947
		f 4 -1664 -1663 -1662 1649
		mu 0 4 956 962 963 957
		mu 1 4 957 963 964 958
		f 4 1661 -1666 -1665 1652
		mu 0 4 957 963 964 958
		mu 1 4 958 964 965 959
		f 4 -1669 -1668 -1667 1662
		mu 0 4 962 965 966 963
		mu 1 4 963 966 967 964
		f 4 1666 -1671 -1670 1665
		mu 0 4 963 966 967 964
		mu 1 4 964 967 968 965
		f 4 1664 -1673 -1672 1659
		mu 0 4 958 964 968 961
		mu 1 4 959 965 969 962
		f 4 1671 -1674 1639 1660
		mu 0 4 961 968 949 947
		mu 1 4 962 969 950 948
		f 4 1669 -1676 -1675 1672
		mu 0 4 964 967 969 968
		mu 1 4 965 968 970 969
		f 4 1674 -1677 1640 1673
		mu 0 4 968 969 925 949
		mu 1 4 969 970 926 950
		f 4 -1681 -1680 -1679 -1678
		mu 0 4 970 971 972 973
		mu 1 4 971 972 973 974
		f 4 1678 -1684 -1683 -1682
		mu 0 4 973 972 974 975
		mu 1 4 974 973 975 976
		f 4 -1687 -1686 -1685 1679
		mu 0 4 971 976 977 972
		mu 1 4 972 977 978 973
		f 4 1684 -1689 -1688 1683
		mu 0 4 972 977 978 974
		mu 1 4 973 978 979 975
		f 4 1682 -1692 -1691 -1690
		mu 0 4 975 974 979 980
		mu 1 4 976 975 980 981
		f 4 1690 -1694 1520 -1693
		mu 0 4 980 979 888 890
		mu 1 4 981 980 889 891
		f 4 1687 -1696 -1695 1691
		mu 0 4 974 978 981 979
		mu 1 4 975 979 982 980
		f 4 1694 -1697 1517 1693
		mu 0 4 979 981 883 888
		mu 1 4 980 982 884 889
		f 4 -1700 -1699 -1698 1685
		mu 0 4 976 982 983 977
		mu 1 4 977 983 984 978
		f 4 1697 -1702 -1701 1688
		mu 0 4 977 983 984 978
		mu 1 4 978 984 985 979
		f 4 -1704 1605 -1703 1698
		mu 0 4 982 930 933 983
		mu 1 4 983 931 934 984
		f 4 1702 1609 -1705 1701
		mu 0 4 983 933 935 984
		mu 1 4 984 934 936 985
		f 4 1700 -1707 -1706 1695
		mu 0 4 978 984 985 981
		mu 1 4 979 985 986 982
		f 4 1705 -1708 1509 1696
		mu 0 4 981 985 881 883
		mu 1 4 982 986 882 884
		f 4 1704 1617 -1709 1706
		mu 0 4 984 935 940 985
		mu 1 4 985 936 941 986
		f 4 1708 1620 1505 1707
		mu 0 4 985 940 878 881
		mu 1 4 986 941 879 882
		f 4 -1712 -1711 -1710 1692
		mu 0 4 890 986 987 980
		mu 1 4 891 987 988 981
		f 4 1709 -1714 -1713 1689
		mu 0 4 980 987 988 975
		mu 1 4 981 988 989 976
		f 4 -1717 -1716 -1715 1710
		mu 0 4 986 989 990 987
		mu 1 4 987 990 991 988
		f 4 1714 -1719 -1718 1713
		mu 0 4 987 990 991 988
		mu 1 4 988 991 992 989
		f 4 1712 -1721 -1720 1681
		mu 0 4 975 988 992 973
		mu 1 4 976 989 993 974
		f 4 1719 -1723 -1722 1677
		mu 0 4 973 992 993 970
		mu 1 4 974 993 994 971
		f 4 1717 -1725 -1724 1720
		mu 0 4 988 991 994 992
		mu 1 4 989 992 995 993
		f 4 1723 -1727 -1726 1722
		mu 0 4 992 994 995 993
		mu 1 4 993 995 996 994
		f 4 -1730 -1729 -1728 1715
		mu 0 4 989 996 997 990
		mu 1 4 990 997 998 991
		f 4 1727 -1732 -1731 1718
		mu 0 4 990 997 998 991
		mu 1 4 991 998 999 992
		f 4 -1734 1469 -1733 1728
		mu 0 4 996 858 861 997
		mu 1 4 997 859 862 998
		f 4 1732 1473 -1735 1731
		mu 0 4 997 861 863 998
		mu 1 4 998 862 864 999
		f 4 1730 -1737 -1736 1724
		mu 0 4 991 998 999 994
		mu 1 4 992 999 1000 995
		f 4 1735 -1739 -1738 1726
		mu 0 4 994 999 1000 995
		mu 1 4 995 1000 1001 996
		f 4 1734 1481 -1740 1736
		mu 0 4 998 863 868 999
		mu 1 4 999 864 869 1000
		f 4 1739 1484 -1741 1738
		mu 0 4 999 868 870 1000
		mu 1 4 1000 869 871 1001
		f 4 -1745 -1744 -1743 -1742
		mu 0 4 1001 1002 1003 1004
		mu 1 4 1002 1003 1004 1005
		f 4 1742 -1748 -1747 -1746
		mu 0 4 1004 1003 1005 1006
		mu 1 4 1005 1004 1006 1007
		f 4 -1751 -1750 -1749 1743
		mu 0 4 1002 1007 1008 1003
		mu 1 4 1003 1008 1009 1004
		f 4 1748 -1753 -1752 1747
		mu 0 4 1003 1008 1009 1005
		mu 1 4 1004 1009 1010 1006
		f 4 1746 -1756 -1755 -1754
		mu 0 4 1006 1005 1010 1011
		mu 1 4 1007 1006 1011 1012
		f 4 1754 -1759 -1758 -1757
		mu 0 4 1011 1010 1012 1013
		mu 1 4 1012 1011 1013 1014
		f 4 1751 -1761 -1760 1755
		mu 0 4 1005 1009 1014 1010
		mu 1 4 1006 1010 1015 1011
		f 4 1759 -1763 -1762 1758
		mu 0 4 1010 1014 1015 1012
		mu 1 4 1011 1015 1016 1013
		f 4 -1766 -1765 -1764 1749
		mu 0 4 1007 1016 1017 1008
		mu 1 4 1008 1017 1018 1009
		f 4 1763 -1768 -1767 1752
		mu 0 4 1008 1017 1018 1009
		mu 1 4 1009 1018 1019 1010
		f 4 -1770 1323 -1769 1764
		mu 0 4 1016 778 777 1017
		mu 1 4 1017 779 778 1018
		f 4 1768 1321 -1771 1767
		mu 0 4 1017 777 774 1018
		mu 1 4 1018 778 775 1019
		f 4 1766 -1773 -1772 1760
		mu 0 4 1009 1018 1019 1014
		mu 1 4 1010 1019 1020 1015
		f 4 1771 -1775 -1774 1762
		mu 0 4 1014 1019 1020 1015
		mu 1 4 1015 1020 1021 1016
		f 4 1770 -1777 -1776 1772
		mu 0 4 1018 774 1021 1019
		mu 1 4 1019 775 1022 1020
		f 4 1775 -1779 -1778 1774
		mu 0 4 1019 1021 1022 1020
		mu 1 4 1020 1022 1023 1021
		f 4 1360 -1782 -1781 -1780
		mu 0 4 799 802 1023 1024
		mu 1 4 800 803 1024 1025
		f 4 1780 -1785 -1784 -1783
		mu 0 4 1024 1023 1025 1026
		mu 1 4 1025 1024 1026 1027
		f 4 1364 -1787 -1786 1781
		mu 0 4 802 804 1027 1023
		mu 1 4 803 805 1028 1024
		f 4 1785 -1789 -1788 1784
		mu 0 4 1023 1027 1028 1025
		mu 1 4 1024 1028 1029 1026
		f 4 1783 -1792 -1791 -1790
		mu 0 4 1026 1025 1029 1030
		mu 1 4 1027 1026 1030 1031
		f 4 1790 -1794 1744 -1793
		mu 0 4 1030 1029 1002 1001
		mu 1 4 1031 1030 1003 1002
		f 4 1787 -1796 -1795 1791
		mu 0 4 1025 1028 1031 1029
		mu 1 4 1026 1029 1032 1030
		f 4 1794 -1797 1750 1793
		mu 0 4 1029 1031 1007 1002
		mu 1 4 1030 1032 1008 1003
		f 4 1372 -1799 -1798 1786
		mu 0 4 804 809 1032 1027
		mu 1 4 805 810 1033 1028
		f 4 1797 -1801 -1800 1788
		mu 0 4 1027 1032 1033 1028
		mu 1 4 1028 1033 1034 1029
		f 4 1375 1302 -1802 1798
		mu 0 4 809 722 768 1032
		mu 1 4 810 723 769 1033
		f 4 1801 1306 -1803 1800
		mu 0 4 1032 768 770 1033
		mu 1 4 1033 769 771 1034
		f 4 1799 -1805 -1804 1795
		mu 0 4 1028 1033 1034 1031
		mu 1 4 1029 1034 1035 1032
		f 4 1803 -1806 1765 1796
		mu 0 4 1031 1034 1016 1007
		mu 1 4 1032 1035 1017 1008
		f 4 1802 1318 -1807 1804
		mu 0 4 1033 770 776 1034
		mu 1 4 1034 771 777 1035
		f 4 1806 1322 1769 1805
		mu 0 4 1034 776 778 1016
		mu 1 4 1035 777 779 1017
		f 4 -1810 -1809 -1808 1608
		mu 0 4 930 1035 1036 931
		mu 1 4 931 1036 1037 932
		f 4 1807 -1812 -1811 1614
		mu 0 4 931 1036 1037 936
		mu 1 4 932 1037 1038 937
		f 4 -1815 -1814 -1813 1808
		mu 0 4 1035 1038 1039 1036
		mu 1 4 1036 1039 1040 1037
		f 4 1812 -1817 -1816 1811
		mu 0 4 1036 1039 1040 1037
		mu 1 4 1037 1040 1041 1038
		f 4 1810 -1819 -1818 1627
		mu 0 4 936 1037 1041 942
		mu 1 4 937 1038 1042 943
		f 4 1817 -1821 -1820 1632
		mu 0 4 942 1041 1042 945
		mu 1 4 943 1042 1043 946
		f 4 1815 -1823 -1822 1818
		mu 0 4 1037 1040 1043 1041
		mu 1 4 1038 1041 1044 1042
		f 4 1821 -1825 -1824 1820
		mu 0 4 1041 1043 1044 1042
		mu 1 4 1042 1044 1045 1043
		f 4 -1828 -1827 -1826 1813
		mu 0 4 1038 1045 1046 1039
		mu 1 4 1039 1046 1047 1040
		f 4 1825 -1830 -1829 1816
		mu 0 4 1039 1046 1047 1040
		mu 1 4 1040 1047 1048 1041
		f 4 -1833 -1832 -1831 1826
		mu 0 4 1045 1048 1049 1046
		mu 1 4 1046 1049 1050 1047
		f 4 1830 -1835 -1834 1829
		mu 0 4 1046 1049 1050 1047
		mu 1 4 1047 1050 1051 1048
		f 4 1828 -1837 -1836 1822
		mu 0 4 1040 1047 1051 1043
		mu 1 4 1041 1048 1052 1044
		f 4 1835 -1839 -1838 1824
		mu 0 4 1043 1051 1052 1044
		mu 1 4 1044 1052 1053 1045
		f 4 1833 -1841 -1840 1836
		mu 0 4 1047 1050 1053 1051
		mu 1 4 1048 1051 1054 1052
		f 4 1839 -1843 -1842 1838
		mu 0 4 1051 1053 1054 1052
		mu 1 4 1052 1054 1055 1053
		f 4 -1847 -1846 -1845 -1844
		mu 0 4 1055 1056 1057 1058
		mu 1 4 1056 1057 1058 1059
		f 4 1844 -1850 -1849 -1848
		mu 0 4 1058 1057 1059 1060
		mu 1 4 1059 1058 1060 1061
		f 4 -1853 -1852 -1851 1845
		mu 0 4 1056 1061 1062 1057
		mu 1 4 1057 1062 1063 1058
		f 4 1850 -1855 -1854 1849
		mu 0 4 1057 1062 1063 1059
		mu 1 4 1058 1063 1064 1060
		f 4 1848 -1858 -1857 -1856
		mu 0 4 1060 1059 1064 1065
		mu 1 4 1061 1060 1065 1066
		f 4 1856 -1860 1680 -1859
		mu 0 4 1065 1064 971 970
		mu 1 4 1066 1065 972 971
		f 4 1853 -1862 -1861 1857
		mu 0 4 1059 1063 1066 1064
		mu 1 4 1060 1064 1067 1065
		f 4 1860 -1863 1686 1859
		mu 0 4 1064 1066 976 971
		mu 1 4 1065 1067 977 972
		f 4 -1866 -1865 -1864 1851
		mu 0 4 1061 1067 1068 1062
		mu 1 4 1062 1068 1069 1063
		f 4 1863 -1868 -1867 1854
		mu 0 4 1062 1068 1069 1063
		mu 1 4 1063 1069 1070 1064
		f 4 -1870 1832 -1869 1864
		mu 0 4 1067 1048 1045 1068
		mu 1 4 1068 1049 1046 1069
		f 4 1868 1827 -1871 1867
		mu 0 4 1068 1045 1038 1069
		mu 1 4 1069 1046 1039 1070
		f 4 1866 -1873 -1872 1861
		mu 0 4 1063 1069 1070 1066
		mu 1 4 1064 1070 1071 1067
		f 4 1871 -1874 1699 1862
		mu 0 4 1066 1070 982 976
		mu 1 4 1067 1071 983 977
		f 4 1870 1814 -1875 1872
		mu 0 4 1069 1038 1035 1070
		mu 1 4 1070 1039 1036 1071
		f 4 1874 1809 1703 1873
		mu 0 4 1070 1035 930 982
		mu 1 4 1071 1036 931 983
		f 4 1721 -1877 -1876 1858
		mu 0 4 970 993 1071 1065
		mu 1 4 971 994 1072 1066
		f 4 1875 -1879 -1878 1855
		mu 0 4 1065 1071 1072 1060
		mu 1 4 1066 1072 1073 1061
		f 4 1725 -1881 -1880 1876
		mu 0 4 993 995 1073 1071
		mu 1 4 994 996 1074 1072
		f 4 1879 -1883 -1882 1878
		mu 0 4 1071 1073 1074 1072
		mu 1 4 1072 1074 1075 1073
		f 4 1877 -1885 -1884 1847
		mu 0 4 1060 1072 1075 1058
		mu 1 4 1061 1073 1076 1059
		f 4 1883 -1887 -1886 1843
		mu 0 4 1058 1075 1076 1055
		mu 1 4 1059 1076 1077 1056
		f 4 1881 -1889 -1888 1884
		mu 0 4 1072 1074 1077 1075
		mu 1 4 1073 1075 1078 1076
		f 4 1887 -1891 -1890 1886
		mu 0 4 1075 1077 1078 1076
		mu 1 4 1076 1078 1079 1077
		f 4 1737 -1893 -1892 1880
		mu 0 4 995 1000 1079 1073
		mu 1 4 996 1001 1080 1074
		f 4 1891 -1895 -1894 1882
		mu 0 4 1073 1079 1080 1074
		mu 1 4 1074 1080 1081 1075
		f 4 1740 1551 -1896 1892
		mu 0 4 1000 870 903 1079
		mu 1 4 1001 871 904 1080
		f 4 1895 1555 -1897 1894
		mu 0 4 1079 903 905 1080
		mu 1 4 1080 904 906 1081
		f 4 1893 -1899 -1898 1888
		mu 0 4 1074 1080 1081 1077
		mu 1 4 1075 1081 1082 1078
		f 4 1897 -1901 -1900 1890
		mu 0 4 1077 1081 1082 1078
		mu 1 4 1078 1082 1083 1079
		f 4 1896 1567 -1902 1898
		mu 0 4 1080 905 911 1081
		mu 1 4 1081 906 912 1082
		f 4 1901 1571 -1903 1900
		mu 0 4 1081 911 913 1082
		mu 1 4 1082 912 914 1083
		f 4 -1906 -1905 -1904 1457
		mu 0 4 851 1083 1084 852
		mu 1 4 852 1084 1085 853
		f 4 1903 -1908 -1907 1460
		mu 0 4 852 1084 1085 853
		mu 1 4 853 1085 1086 854
		f 4 -1911 -1910 -1909 1904
		mu 0 4 1083 1086 1087 1084
		mu 1 4 1084 1087 1088 1085
		f 4 1908 -1913 -1912 1907
		mu 0 4 1084 1087 1088 1085
		mu 1 4 1085 1088 1089 1086
		f 4 1906 -1915 -1914 1466
		mu 0 4 853 1085 1089 856
		mu 1 4 854 1086 1090 857
		f 4 1913 -1917 -1916 1468
		mu 0 4 856 1089 1090 857
		mu 1 4 857 1090 1091 858
		f 4 1911 -1919 -1918 1914
		mu 0 4 1085 1088 1091 1089
		mu 1 4 1086 1089 1092 1090
		f 4 1917 -1921 -1920 1916
		mu 0 4 1089 1091 1092 1090
		mu 1 4 1090 1092 1093 1091
		f 4 -1924 -1923 -1922 1909
		mu 0 4 1086 1093 1094 1087
		mu 1 4 1087 1094 1095 1088
		f 4 1921 -1926 -1925 1912
		mu 0 4 1087 1094 1095 1088
		mu 1 4 1088 1095 1096 1089
		f 4 -1929 -1928 -1927 1922
		mu 0 4 1093 1096 1097 1094
		mu 1 4 1094 1097 1098 1095
		f 4 1926 -1931 -1930 1925
		mu 0 4 1094 1097 1061 1095
		mu 1 4 1095 1098 1062 1096
		f 4 1924 -1933 -1932 1918
		mu 0 4 1088 1095 1098 1091
		mu 1 4 1089 1096 1099 1092
		f 4 1931 -1935 -1934 1920
		mu 0 4 1091 1098 1099 1092
		mu 1 4 1092 1099 1100 1093
		f 4 1929 1852 -1936 1932
		mu 0 4 1095 1061 1056 1098
		mu 1 4 1096 1062 1057 1099
		f 4 1935 1846 -1937 1934
		mu 0 4 1098 1056 1055 1099
		mu 1 4 1099 1057 1056 1100
		f 4 1842 -1940 -1939 -1938
		mu 0 4 1054 1053 1100 1101
		mu 1 4 1055 1054 1101 1102
		f 4 1938 -1943 -1942 -1941
		mu 0 4 1101 1100 1102 1103
		mu 1 4 1102 1101 1103 1104
		f 4 1840 -1945 -1944 1939
		mu 0 4 1053 1050 1104 1100
		mu 1 4 1054 1051 1105 1101
		f 4 1943 -1947 -1946 1942
		mu 0 4 1100 1104 1105 1102
		mu 1 4 1101 1105 1106 1103
		f 4 1941 -1950 -1949 -1948
		mu 0 4 1103 1102 1106 1107
		mu 1 4 1104 1103 1107 1108
		f 4 1948 -1953 -1952 -1951
		mu 0 4 1107 1106 1108 1109
		mu 1 4 1108 1107 1109 1110
		f 4 1945 -1955 -1954 1949
		mu 0 4 1102 1105 1110 1106
		mu 1 4 1103 1106 1111 1107
		f 4 1953 -1957 -1956 1952
		mu 0 4 1106 1110 1111 1108
		mu 1 4 1107 1111 1112 1109
		f 4 1834 -1959 -1958 1944
		mu 0 4 1050 1049 1112 1104
		mu 1 4 1051 1050 1113 1105
		f 4 1957 -1961 -1960 1946
		mu 0 4 1104 1112 1113 1105
		mu 1 4 1105 1113 1114 1106
		f 4 1831 -1963 -1962 1958
		mu 0 4 1049 1048 1114 1112
		mu 1 4 1050 1049 1115 1113
		f 4 1961 -1965 -1964 1960
		mu 0 4 1112 1114 1115 1113
		mu 1 4 1113 1115 1116 1114
		f 4 1959 -1967 -1966 1954
		mu 0 4 1105 1113 1116 1110
		mu 1 4 1106 1114 1117 1111
		f 4 1965 -1969 -1968 1956
		mu 0 4 1110 1116 1117 1111
		mu 1 4 1111 1117 1118 1112
		f 4 1963 -1971 -1970 1966
		mu 0 4 1113 1115 1118 1116
		mu 1 4 1114 1116 1119 1117
		f 4 1969 -1973 -1972 1968
		mu 0 4 1116 1118 1119 1117
		mu 1 4 1117 1119 1120 1118
		f 4 -1977 -1976 -1975 -1974
		mu 0 4 1120 1121 1122 1123
		mu 1 4 1121 1122 1123 1124
		f 4 1974 -1979 1905 -1978
		mu 0 4 1123 1122 1083 851
		mu 1 4 1124 1123 1084 852
		f 4 -1982 -1981 -1980 1975
		mu 0 4 1121 1124 1125 1122
		mu 1 4 1122 1125 1126 1123
		f 4 1979 -1983 1910 1978
		mu 0 4 1122 1125 1086 1083
		mu 1 4 1123 1126 1087 1084
		f 4 -1986 -1985 -1984 1980
		mu 0 4 1124 1126 1127 1125
		mu 1 4 1125 1127 1128 1126
		f 4 1983 -1987 1923 1982
		mu 0 4 1125 1127 1093 1086
		mu 1 4 1126 1128 1094 1087
		f 4 -1990 -1989 -1988 1984
		mu 0 4 1126 1128 1129 1127
		mu 1 4 1127 1129 1130 1128
		f 4 1987 -1991 1928 1986
		mu 0 4 1127 1129 1096 1093
		mu 1 4 1128 1130 1097 1094
		f 4 -1994 -1993 -1992 1137
		mu 0 4 681 1130 1131 682
		mu 1 4 682 1131 1132 683
		f 4 1991 -1996 -1995 1139
		mu 0 4 682 1131 1132 653
		mu 1 4 683 1132 1133 654
		f 4 -1999 -1998 -1997 1992
		mu 0 4 1130 1133 1134 1131
		mu 1 4 1131 1134 1135 1132
		f 4 1996 -2001 -2000 1995
		mu 0 4 1131 1134 1135 1132
		mu 1 4 1132 1135 1136 1133
		f 4 -2004 -2003 -2002 1997
		mu 0 4 1133 1136 1137 1134
		mu 1 4 1134 1137 1138 1135
		f 4 2001 -2006 -2005 2000
		mu 0 4 1134 1137 1138 1135
		mu 1 4 1135 1138 1139 1136
		f 4 -2008 1973 -2007 2002
		mu 0 4 1136 1120 1123 1137
		mu 1 4 1137 1121 1124 1138
		f 4 2006 1977 -2009 2005
		mu 0 4 1137 1123 851 1138
		mu 1 4 1138 1124 852 1139
		f 4 -2013 -2012 -2011 -2010
		mu 0 4 1139 1140 1141 1142
		mu 1 4 1140 1141 1142 1143
		f 4 2010 -2016 -2015 -2014
		mu 0 4 1142 1141 1143 1144
		mu 1 4 1143 1142 1144 1145
		f 4 -2019 -2018 -2017 2011
		mu 0 4 1140 1145 1146 1141
		mu 1 4 1141 1146 1147 1142
		f 4 2016 -2021 -2020 2015
		mu 0 4 1141 1146 1147 1143
		mu 1 4 1142 1147 1148 1144
		f 4 2014 -2024 -2023 -2022
		mu 0 4 1144 1143 1148 1149
		mu 1 4 1145 1144 1149 1150
		f 4 2022 -2027 -2026 -2025
		mu 0 4 1149 1148 1150 1001
		mu 1 4 1150 1149 1151 1002
		f 4 2019 -2029 -2028 2023
		mu 0 4 1143 1147 1151 1148
		mu 1 4 1144 1148 1152 1149
		f 4 2027 -2031 -2030 2026
		mu 0 4 1148 1151 1152 1150
		mu 1 4 1149 1152 1153 1151
		f 4 -2034 -2033 -2032 2017
		mu 0 4 1145 1153 1154 1146
		mu 1 4 1146 1154 1155 1147
		f 4 2031 -2036 -2035 2020
		mu 0 4 1146 1154 1155 1147
		mu 1 4 1147 1155 1156 1148
		f 4 -2039 -2038 -2037 2032
		mu 0 4 1153 1156 1157 1154
		mu 1 4 1154 1157 1158 1155
		f 4 2036 -2041 -2040 2035
		mu 0 4 1154 1157 1158 1155
		mu 1 4 1155 1158 1159 1156
		f 4 2034 -2043 -2042 2028
		mu 0 4 1147 1155 1159 1151
		mu 1 4 1148 1156 1160 1152
		f 4 2041 -2045 -2044 2030
		mu 0 4 1151 1159 1160 1152
		mu 1 4 1152 1160 1161 1153
		f 4 2039 -2047 -2046 2042
		mu 0 4 1155 1158 1161 1159
		mu 1 4 1156 1159 1162 1160
		f 4 2045 -2049 -2048 2044
		mu 0 4 1159 1161 1162 1160
		mu 1 4 1160 1162 1163 1161
		f 4 2009 -2052 -2051 -2050
		mu 0 4 1139 1142 1163 1164
		mu 1 4 1140 1143 1164 1165
		f 4 2050 -2055 -2054 -2053
		mu 0 4 1164 1163 1165 1166
		mu 1 4 1165 1164 1166 1167
		f 4 2013 -2057 -2056 2051
		mu 0 4 1142 1144 1167 1163
		mu 1 4 1143 1145 1168 1164
		f 4 2055 -2059 -2058 2054
		mu 0 4 1163 1167 1168 1165
		mu 1 4 1164 1168 1169 1166
		f 4 2053 -2062 -2061 -2060
		mu 0 4 1166 1165 1169 1170
		mu 1 4 1167 1166 1170 1171
		f 4 2060 -2065 -2064 -2063
		mu 0 4 1170 1169 1171 1172
		mu 1 4 1171 1170 1172 1173
		f 4 2057 -2067 -2066 2061
		mu 0 4 1165 1168 1173 1169
		mu 1 4 1166 1169 1174 1170
		f 4 2065 -2069 -2068 2064
		mu 0 4 1169 1173 1174 1171
		mu 1 4 1170 1174 1175 1172
		f 4 2021 -2071 -2070 2056
		mu 0 4 1144 1149 1175 1167
		mu 1 4 1145 1150 1176 1168
		f 4 2069 -2073 -2072 2058
		mu 0 4 1167 1175 1176 1168
		mu 1 4 1168 1176 1177 1169
		f 4 2024 1741 -2074 2070
		mu 0 4 1149 1001 1004 1175
		mu 1 4 1150 1002 1005 1176
		f 4 2073 1745 -2075 2072
		mu 0 4 1175 1004 1006 1176
		mu 1 4 1176 1005 1007 1177
		f 4 2071 -2077 -2076 2066
		mu 0 4 1168 1176 1177 1173
		mu 1 4 1169 1177 1178 1174
		f 4 2075 -2079 -2078 2068
		mu 0 4 1173 1177 1178 1174
		mu 1 4 1174 1178 1179 1175
		f 4 2074 1753 -2080 2076
		mu 0 4 1176 1006 1011 1177
		mu 1 4 1177 1007 1012 1178
		f 4 2079 1756 -2081 2078
		mu 0 4 1177 1011 1013 1178
		mu 1 4 1178 1012 1014 1179
		f 4 2025 -2083 -2082 1792
		mu 0 4 1001 1150 1179 1030
		mu 1 4 1002 1151 1180 1031
		f 4 2081 -2085 -2084 1789
		mu 0 4 1030 1179 1180 1026
		mu 1 4 1031 1180 1181 1027
		f 4 2029 -2087 -2086 2082
		mu 0 4 1150 1152 1181 1179
		mu 1 4 1151 1153 1182 1180
		f 4 2085 -2089 -2088 2084
		mu 0 4 1179 1181 1182 1180
		mu 1 4 1180 1182 1183 1181
		f 4 2083 -2091 -2090 1782
		mu 0 4 1026 1180 1183 1024
		mu 1 4 1027 1181 1184 1025
		f 4 2089 -2093 -2092 1779
		mu 0 4 1024 1183 1184 799
		mu 1 4 1025 1184 1185 800
		f 4 2087 -2095 -2094 2090
		mu 0 4 1180 1182 1185 1183
		mu 1 4 1181 1183 1186 1184
		f 4 2093 -2097 -2096 2092
		mu 0 4 1183 1185 1186 1184
		mu 1 4 1184 1186 1187 1185;
	setAttr ".fc[1000:1499]"
		f 4 2043 -2099 -2098 2086
		mu 0 4 1152 1160 1187 1181
		mu 1 4 1153 1161 1188 1182
		f 4 2097 -2101 -2100 2088
		mu 0 4 1181 1187 1188 1182
		mu 1 4 1182 1188 1189 1183
		f 4 2047 -2103 -2102 2098
		mu 0 4 1160 1162 1189 1187
		mu 1 4 1161 1163 1190 1188
		f 4 2101 -2105 -2104 2100
		mu 0 4 1187 1189 1190 1188
		mu 1 4 1188 1190 1191 1189
		f 4 2099 -2107 -2106 2094
		mu 0 4 1182 1188 1191 1185
		mu 1 4 1183 1189 1192 1186
		f 4 2105 -2109 -2108 2096
		mu 0 4 1185 1191 1192 1186
		mu 1 4 1186 1192 1193 1187
		f 4 2103 -2111 -2110 2106
		mu 0 4 1188 1190 1193 1191
		mu 1 4 1189 1191 1194 1192
		f 4 2109 -2113 -2112 2108
		mu 0 4 1191 1193 1194 1192
		mu 1 4 1192 1194 1195 1193
		f 4 2091 -2115 -2114 1363
		mu 0 4 799 1184 1195 800
		mu 1 4 800 1185 1196 801
		f 4 2113 -2117 -2116 1369
		mu 0 4 800 1195 1196 805
		mu 1 4 801 1196 1197 806
		f 4 2095 -2119 -2118 2114
		mu 0 4 1184 1186 1197 1195
		mu 1 4 1185 1187 1198 1196
		f 4 2117 -2121 -2120 2116
		mu 0 4 1195 1197 1198 1196
		mu 1 4 1196 1198 1199 1197
		f 4 2115 -2123 -2122 1382
		mu 0 4 805 1196 1199 811
		mu 1 4 806 1197 1200 812
		f 4 2121 -2125 -2124 1387
		mu 0 4 811 1199 1200 814
		mu 1 4 812 1200 1201 815
		f 4 2119 -2127 -2126 2122
		mu 0 4 1196 1198 1201 1199
		mu 1 4 1197 1199 1202 1200
		f 4 -2737 2124 2125 2745
		mu 0 4 1202 1200 1199 1201
		mu 1 4 1203 1201 1200 1202
		f 4 2107 -2130 -2129 2118
		mu 0 4 1186 1192 1203 1197
		mu 1 4 1187 1193 1204 1198
		f 4 2128 -2132 -2131 2120
		mu 0 4 1197 1203 1204 1198
		mu 1 4 1198 1204 1205 1199
		f 4 2111 -2134 -2133 2129
		mu 0 4 1192 1194 1205 1203
		mu 1 4 1193 1195 1206 1204
		f 4 -2740 -2742 2131 2132
		mu 0 4 1205 1206 1204 1203
		mu 1 4 1206 1207 1205 1204
		f 4 2741 -2738 -2739 2130
		mu 0 4 1204 1206 1207 1198
		mu 1 4 1205 1207 1208 1199
		f 4 2063 -2140 -2139 -2138
		mu 0 4 1172 1171 1208 1209
		mu 1 4 1173 1172 1209 1210
		f 4 2138 -2143 -2142 -2141
		mu 0 4 1209 1208 1210 1211
		mu 1 4 1210 1209 1211 1212
		f 4 2067 -2145 -2144 2139
		mu 0 4 1171 1174 1212 1208
		mu 1 4 1172 1175 1213 1209
		f 4 2143 -2147 -2146 2142
		mu 0 4 1208 1212 1213 1210
		mu 1 4 1209 1213 1214 1211
		f 4 2141 -2150 -2149 -2148
		mu 0 4 1211 1210 1214 1215
		mu 1 4 1212 1211 1215 1216
		f 4 2148 -2153 -2152 -2151
		mu 0 4 1215 1214 1216 1217
		mu 1 4 1216 1215 1217 1218
		f 4 2145 -2155 -2154 2149
		mu 0 4 1210 1213 1218 1214
		mu 1 4 1211 1214 1219 1215
		f 4 2153 -2157 -2156 2152
		mu 0 4 1214 1218 1219 1216
		mu 1 4 1215 1219 1220 1217
		f 4 2077 -2159 -2158 2144
		mu 0 4 1174 1178 1220 1212
		mu 1 4 1175 1179 1221 1213
		f 4 2157 -2161 -2160 2146
		mu 0 4 1212 1220 1221 1213
		mu 1 4 1213 1221 1222 1214
		f 4 2080 1757 -2162 2158
		mu 0 4 1178 1013 1012 1220
		mu 1 4 1179 1014 1013 1221
		f 4 2161 1761 -2163 2160
		mu 0 4 1220 1012 1015 1221
		mu 1 4 1221 1013 1016 1222
		f 4 2159 -2165 -2164 2154
		mu 0 4 1213 1221 1222 1218
		mu 1 4 1214 1222 1223 1219
		f 4 2163 -2167 -2166 2156
		mu 0 4 1218 1222 1223 1219
		mu 1 4 1219 1223 1224 1220
		f 4 2162 1773 -2168 2164
		mu 0 4 1221 1015 1020 1222
		mu 1 4 1222 1016 1021 1223
		f 4 2167 1777 -2169 2166
		mu 0 4 1222 1020 1022 1223
		mu 1 4 1223 1021 1023 1224
		f 4 2112 -2174 -2173 -2172
		mu 0 4 1194 1193 1224 1225
		mu 1 4 1195 1194 1225 1226
		f 4 2172 -2177 -2176 -2175
		mu 0 4 1225 1224 1226 1227
		mu 1 4 1226 1225 1227 1228
		f 4 2110 -2179 -2178 2173
		mu 0 4 1193 1190 1228 1224
		mu 1 4 1194 1191 1229 1225
		f 4 2177 -2181 -2180 2176
		mu 0 4 1224 1228 1229 1226
		mu 1 4 1225 1229 1230 1227
		f 4 2175 -2184 -2183 -2182
		mu 0 4 1227 1226 1230 1231
		mu 1 4 1228 1227 1231 1232
		f 4 2182 -2187 -2186 -2185
		mu 0 4 1231 1230 1232 1233
		mu 1 4 1232 1231 1233 1234
		f 4 2179 -2189 -2188 2183
		mu 0 4 1226 1229 1234 1230
		mu 1 4 1227 1230 1235 1231
		f 4 2187 -2191 -2190 2186
		mu 0 4 1230 1234 1235 1232
		mu 1 4 1231 1235 1236 1233
		f 4 2104 -2193 -2192 2178
		mu 0 4 1190 1189 1236 1228
		mu 1 4 1191 1190 1237 1229
		f 4 2191 -2195 -2194 2180
		mu 0 4 1228 1236 1237 1229
		mu 1 4 1229 1237 1238 1230
		f 4 2102 -2197 -2196 2192
		mu 0 4 1189 1162 1238 1236
		mu 1 4 1190 1163 1239 1237
		f 4 2195 -2199 -2198 2194
		mu 0 4 1236 1238 1239 1237
		mu 1 4 1237 1239 1240 1238
		f 4 2193 -2201 -2200 2188
		mu 0 4 1229 1237 1240 1234
		mu 1 4 1230 1238 1241 1235
		f 4 2199 -2203 -2202 2190
		mu 0 4 1234 1240 1241 1235
		mu 1 4 1235 1241 1242 1236
		f 4 2197 -2205 -2204 2200
		mu 0 4 1237 1239 1242 1240
		mu 1 4 1238 1240 1243 1241
		f 4 2203 -2207 -2206 2202
		mu 0 4 1240 1242 1243 1241
		mu 1 4 1241 1243 1244 1242
		f 4 2048 -2209 -2208 2196
		mu 0 4 1162 1161 1244 1238
		mu 1 4 1163 1162 1245 1239
		f 4 2207 -2211 -2210 2198
		mu 0 4 1238 1244 1245 1239
		mu 1 4 1239 1245 1246 1240
		f 4 2046 -2213 -2212 2208
		mu 0 4 1161 1158 1246 1244
		mu 1 4 1162 1159 1247 1245
		f 4 2211 -2215 -2214 2210
		mu 0 4 1244 1246 1247 1245
		mu 1 4 1245 1247 1248 1246
		f 4 2209 -2217 -2216 2204
		mu 0 4 1239 1245 1248 1242
		mu 1 4 1240 1246 1249 1243
		f 4 2215 -2219 -2218 2206
		mu 0 4 1242 1248 1249 1243
		mu 1 4 1243 1249 1250 1244
		f 4 2213 -2221 -2220 2216
		mu 0 4 1245 1247 1250 1248
		mu 1 4 1246 1248 1251 1249
		f 4 2219 -2223 -2222 2218
		mu 0 4 1248 1250 1251 1249
		mu 1 4 1249 1251 1252 1250
		f 4 2040 -2225 -2224 2212
		mu 0 4 1158 1157 1252 1246
		mu 1 4 1159 1158 1253 1247
		f 4 2223 -2227 -2226 2214
		mu 0 4 1246 1252 1253 1247
		mu 1 4 1247 1253 1254 1248
		f 4 2037 -2229 -2228 2224
		mu 0 4 1157 1156 1254 1252
		mu 1 4 1158 1157 1255 1253
		f 4 2227 -2231 -2230 2226
		mu 0 4 1252 1254 1255 1253
		mu 1 4 1253 1255 1256 1254
		f 4 2225 -2233 -2232 2220
		mu 0 4 1247 1253 1256 1250
		mu 1 4 1248 1254 1257 1251
		f 4 2231 -2235 -2234 2222
		mu 0 4 1250 1256 1257 1251
		mu 1 4 1251 1257 1258 1252
		f 4 2229 -2237 -2236 2232
		mu 0 4 1253 1255 1258 1256
		mu 1 4 1254 1256 1259 1257
		f 4 2235 -2239 -2238 2234
		mu 0 4 1256 1258 1259 1257
		mu 1 4 1257 1259 1260 1258
		f 4 -2243 -2242 -2241 -2240
		mu 0 4 965 1260 1261 1262
		mu 1 4 966 1261 1262 1263
		f 4 2240 -2246 -2245 -2244
		mu 0 4 1262 1261 1263 1264
		mu 1 4 1263 1262 1264 1265
		f 4 -2249 -2248 -2247 2241
		mu 0 4 1260 1265 1266 1261
		mu 1 4 1261 1266 1267 1262
		f 4 2246 -2251 -2250 2245
		mu 0 4 1261 1266 1267 1263
		mu 1 4 1262 1267 1268 1264
		f 4 2244 -2254 -2253 -2252
		mu 0 4 1264 1263 1268 1269
		mu 1 4 1265 1264 1269 1270
		f 4 2252 -2256 2150 -2255
		mu 0 4 1269 1268 1215 1217
		mu 1 4 1270 1269 1216 1218
		f 4 2249 -2258 -2257 2253
		mu 0 4 1263 1267 1270 1268
		mu 1 4 1264 1268 1271 1269
		f 4 2256 -2259 2147 2255
		mu 0 4 1268 1270 1211 1215
		mu 1 4 1269 1271 1212 1216
		f 4 -2262 -2261 -2260 2247
		mu 0 4 1265 1271 1272 1266
		mu 1 4 1266 1272 1273 1267
		f 4 2259 -2264 -2263 2250
		mu 0 4 1266 1272 1273 1267
		mu 1 4 1267 1273 1274 1268
		f 4 -2266 2049 -2265 2260
		mu 0 4 1271 1139 1164 1272
		mu 1 4 1272 1140 1165 1273
		f 4 2264 2052 -2267 2263
		mu 0 4 1272 1164 1166 1273
		mu 1 4 1273 1165 1167 1274
		f 4 2262 -2269 -2268 2257
		mu 0 4 1267 1273 1274 1270
		mu 1 4 1268 1274 1275 1271
		f 4 2267 -2270 2140 2258
		mu 0 4 1270 1274 1209 1211
		mu 1 4 1271 1275 1210 1212
		f 4 2266 2059 -2271 2268
		mu 0 4 1273 1166 1170 1274
		mu 1 4 1274 1167 1171 1275
		f 4 2270 2062 2137 2269
		mu 0 4 1274 1170 1172 1209
		mu 1 4 1275 1171 1173 1210
		f 4 2038 -2274 -2273 -2272
		mu 0 4 1156 1153 1275 1276
		mu 1 4 1157 1154 1276 1277
		f 4 2272 -2277 -2276 -2275
		mu 0 4 1276 1275 1277 1278
		mu 1 4 1277 1276 1278 1279
		f 4 2033 -2279 -2278 2273
		mu 0 4 1153 1145 1279 1275
		mu 1 4 1154 1146 1280 1276
		f 4 2277 -2281 -2280 2276
		mu 0 4 1275 1279 1280 1277
		mu 1 4 1276 1280 1281 1278
		f 4 2275 -2284 -2283 -2282
		mu 0 4 1278 1277 1281 1282
		mu 1 4 1279 1278 1282 1283
		f 4 2282 -2287 -2286 -2285
		mu 0 4 1282 1281 1283 1284
		mu 1 4 1283 1282 1284 1285
		f 4 2279 -2289 -2288 2283
		mu 0 4 1277 1280 1285 1281
		mu 1 4 1278 1281 1286 1282
		f 4 2287 -2291 -2290 2286
		mu 0 4 1281 1285 1286 1283
		mu 1 4 1282 1286 1287 1284
		f 4 2018 -2293 -2292 2278
		mu 0 4 1145 1140 1287 1279
		mu 1 4 1146 1141 1288 1280
		f 4 2291 -2295 -2294 2280
		mu 0 4 1279 1287 1288 1280
		mu 1 4 1280 1288 1289 1281
		f 4 2012 -2297 -2296 2292
		mu 0 4 1140 1139 1289 1287
		mu 1 4 1141 1140 1290 1288
		f 4 2295 -2299 -2298 2294
		mu 0 4 1287 1289 1290 1288
		mu 1 4 1288 1290 1291 1289
		f 4 2293 -2301 -2300 2288
		mu 0 4 1280 1288 1291 1285
		mu 1 4 1281 1289 1292 1286
		f 4 2299 -2303 -2302 2290
		mu 0 4 1285 1291 1292 1286
		mu 1 4 1286 1292 1293 1287
		f 4 2297 -2305 -2304 2300
		mu 0 4 1288 1290 1293 1291
		mu 1 4 1289 1291 1294 1292
		f 4 2303 -2307 -2306 2302
		mu 0 4 1291 1293 1294 1292
		mu 1 4 1292 1294 1295 1293
		f 4 2265 -2309 -2308 2296
		mu 0 4 1139 1271 1295 1289
		mu 1 4 1140 1272 1296 1290
		f 4 2307 -2311 -2310 2298
		mu 0 4 1289 1295 1296 1290
		mu 1 4 1290 1296 1297 1291
		f 4 2261 -2313 -2312 2308
		mu 0 4 1271 1265 1297 1295
		mu 1 4 1272 1266 1298 1296
		f 4 2311 -2315 -2314 2310
		mu 0 4 1295 1297 1298 1296
		mu 1 4 1296 1298 1299 1297
		f 4 2309 -2317 -2316 2304
		mu 0 4 1290 1296 1299 1293
		mu 1 4 1291 1297 1300 1294
		f 4 2315 -2319 -2318 2306
		mu 0 4 1293 1299 1300 1294
		mu 1 4 1294 1300 1301 1295
		f 4 2313 -2321 -2320 2316
		mu 0 4 1296 1298 1301 1299
		mu 1 4 1297 1299 1302 1300
		f 4 2319 -2323 -2322 2318
		mu 0 4 1299 1301 1302 1300
		mu 1 4 1300 1302 1303 1301
		f 4 2248 -2325 -2324 2312
		mu 0 4 1265 1260 1303 1297
		mu 1 4 1266 1261 1304 1298
		f 4 2323 -2327 -2326 2314
		mu 0 4 1297 1303 1304 1298
		mu 1 4 1298 1304 1305 1299
		f 4 2242 1668 -2328 2324
		mu 0 4 1260 965 962 1303
		mu 1 4 1261 966 963 1304
		f 4 2327 1663 -2329 2326
		mu 0 4 1303 962 956 1304
		mu 1 4 1304 963 957 1305
		f 4 2325 -2331 -2330 2320
		mu 0 4 1298 1304 1305 1301
		mu 1 4 1299 1305 1306 1302
		f 4 2329 -2333 -2332 2322
		mu 0 4 1301 1305 1306 1302
		mu 1 4 1302 1306 1307 1303
		f 4 2328 1650 -2334 2330
		mu 0 4 1304 956 951 1305
		mu 1 4 1305 957 952 1306
		f 4 2333 1644 -2335 2332
		mu 0 4 1305 951 950 1306
		mu 1 4 1306 952 951 1307
		f 4 1819 -2337 -2336 1656
		mu 0 4 945 1042 1307 960
		mu 1 4 946 1043 1308 961
		f 4 2335 -2339 -2338 1653
		mu 0 4 960 1307 1308 955
		mu 1 4 961 1308 1309 956
		f 4 1823 -2341 -2340 2336
		mu 0 4 1042 1044 1309 1307
		mu 1 4 1043 1045 1310 1308
		f 4 2339 -2343 -2342 2338
		mu 0 4 1307 1309 1310 1308
		mu 1 4 1308 1310 1311 1309
		f 4 2337 -2345 -2344 1645
		mu 0 4 955 1308 1311 953
		mu 1 4 956 1309 1312 954
		f 4 2343 -2347 -2346 1641
		mu 0 4 953 1311 1312 950
		mu 1 4 954 1312 1313 951
		f 4 2341 -2349 -2348 2344
		mu 0 4 1308 1310 1313 1311
		mu 1 4 1309 1311 1314 1312
		f 4 2347 -2351 -2350 2346
		mu 0 4 1311 1313 1314 1312
		mu 1 4 1312 1314 1315 1313
		f 4 1837 -2353 -2352 2340
		mu 0 4 1044 1052 1315 1309
		mu 1 4 1045 1053 1316 1310
		f 4 2351 -2355 -2354 2342
		mu 0 4 1309 1315 1316 1310
		mu 1 4 1310 1316 1317 1311
		f 4 1841 -2357 -2356 2352
		mu 0 4 1052 1054 1317 1315
		mu 1 4 1053 1055 1318 1316
		f 4 2355 -2359 -2358 2354
		mu 0 4 1315 1317 1318 1316
		mu 1 4 1316 1318 1319 1317
		f 4 2353 -2361 -2360 2348
		mu 0 4 1310 1316 1319 1313
		mu 1 4 1311 1317 1320 1314
		f 4 2359 -2363 -2362 2350
		mu 0 4 1313 1319 1320 1314
		mu 1 4 1314 1320 1321 1315
		f 4 2357 -2365 -2364 2360
		mu 0 4 1316 1318 1321 1319
		mu 1 4 1317 1319 1322 1320
		f 4 2363 -2367 -2366 2362
		mu 0 4 1319 1321 1322 1320
		mu 1 4 1320 1322 1323 1321
		f 4 -2371 -2370 -2369 -2368
		mu 0 4 1323 1324 1325 1326
		mu 1 4 1324 1325 1326 1327
		f 4 2368 -2374 -2373 -2372
		mu 0 4 1326 1325 1327 1328
		mu 1 4 1327 1326 1328 1329
		f 4 -2377 -2376 -2375 2369
		mu 0 4 1324 1329 1330 1325
		mu 1 4 1325 1330 1331 1326
		f 4 2374 -2379 -2378 2373
		mu 0 4 1325 1330 1331 1327
		mu 1 4 1326 1331 1332 1328
		f 4 2372 -2382 -2381 -2380
		mu 0 4 1328 1327 1332 1333
		mu 1 4 1329 1328 1333 1334
		f 4 2380 -2384 2365 -2383
		mu 0 4 1333 1332 1320 1322
		mu 1 4 1334 1333 1321 1323
		f 4 2377 -2386 -2385 2381
		mu 0 4 1327 1331 1334 1332
		mu 1 4 1328 1332 1335 1333
		f 4 2384 -2387 2361 2383
		mu 0 4 1332 1334 1314 1320
		mu 1 4 1333 1335 1315 1321
		f 4 -2390 -2389 -2388 2375
		mu 0 4 1329 1335 1336 1330
		mu 1 4 1330 1336 1337 1331
		f 4 2387 -2392 -2391 2378
		mu 0 4 1330 1336 1337 1331
		mu 1 4 1331 1337 1338 1332
		f 4 -2394 2317 -2393 2388
		mu 0 4 1335 1294 1300 1336
		mu 1 4 1336 1295 1301 1337
		f 4 2392 2321 -2395 2391
		mu 0 4 1336 1300 1302 1337
		mu 1 4 1337 1301 1303 1338
		f 4 2390 -2397 -2396 2385
		mu 0 4 1331 1337 1338 1334
		mu 1 4 1332 1338 1339 1335
		f 4 2395 -2398 2349 2386
		mu 0 4 1334 1338 1312 1314
		mu 1 4 1335 1339 1313 1315
		f 4 2394 2331 -2399 2396
		mu 0 4 1337 1302 1306 1338
		mu 1 4 1338 1303 1307 1339
		f 4 2398 2334 2345 2397
		mu 0 4 1338 1306 950 1312
		mu 1 4 1339 1307 951 1313
		f 4 2366 -2402 -2401 -2400
		mu 0 4 1322 1321 1339 1340
		mu 1 4 1323 1322 1340 1341
		f 4 2400 -2405 -2404 -2403
		mu 0 4 1340 1339 1341 1342
		mu 1 4 1341 1340 1342 1343
		f 4 2364 -2407 -2406 2401
		mu 0 4 1321 1318 1343 1339
		mu 1 4 1322 1319 1344 1340
		f 4 2405 -2409 -2408 2404
		mu 0 4 1339 1343 1344 1341
		mu 1 4 1340 1344 1345 1342
		f 4 2403 -2412 -2411 -2410
		mu 0 4 1342 1341 1345 1346
		mu 1 4 1343 1342 1346 1347
		f 4 2410 -2415 -2414 -2413
		mu 0 4 1346 1345 1347 1348
		mu 1 4 1347 1346 1348 1349
		f 4 2407 -2417 -2416 2411
		mu 0 4 1341 1344 1349 1345
		mu 1 4 1342 1345 1350 1346
		f 4 2415 -2419 -2418 2414
		mu 0 4 1345 1349 1350 1347
		mu 1 4 1346 1350 1351 1348
		f 4 2358 -2421 -2420 2406
		mu 0 4 1318 1317 1351 1343
		mu 1 4 1319 1318 1352 1344
		f 4 2419 -2423 -2422 2408
		mu 0 4 1343 1351 1352 1344
		mu 1 4 1344 1352 1353 1345
		f 4 2356 1937 -2424 2420
		mu 0 4 1317 1054 1101 1351
		mu 1 4 1318 1055 1102 1352
		f 4 2423 1940 -2425 2422
		mu 0 4 1351 1101 1103 1352
		mu 1 4 1352 1102 1104 1353
		f 4 2421 -2427 -2426 2416
		mu 0 4 1344 1352 1353 1349
		mu 1 4 1345 1353 1354 1350
		f 4 2425 -2429 -2428 2418
		mu 0 4 1349 1353 1354 1350
		mu 1 4 1350 1354 1355 1351
		f 4 2424 1947 -2430 2426
		mu 0 4 1352 1103 1107 1353
		mu 1 4 1353 1104 1108 1354
		f 4 2429 1950 -2431 2428
		mu 0 4 1353 1107 1109 1354
		mu 1 4 1354 1108 1110 1355
		f 4 -2435 -2434 -2433 -2432
		mu 0 4 1355 1356 1357 1358
		mu 1 4 1356 1357 1358 1359
		f 4 2432 -2438 -2437 -2436
		mu 0 4 1358 1357 1359 1360
		mu 1 4 1359 1358 1360 1361
		f 4 -2441 -2440 -2439 2433
		mu 0 4 1356 1361 1362 1357
		mu 1 4 1357 1362 1363 1358
		f 4 2438 -2443 -2442 2437
		mu 0 4 1357 1362 1363 1359
		mu 1 4 1358 1363 1364 1360
		f 4 2436 -2446 -2445 -2444
		mu 0 4 1360 1359 1364 1365
		mu 1 4 1361 1360 1365 1366
		f 4 2444 -2448 2412 -2447
		mu 0 4 1365 1364 1346 1348
		mu 1 4 1366 1365 1347 1349
		f 4 2441 -2450 -2449 2445
		mu 0 4 1359 1363 1366 1364
		mu 1 4 1360 1364 1367 1365
		f 4 2448 -2451 2409 2447
		mu 0 4 1364 1366 1342 1346
		mu 1 4 1365 1367 1343 1347
		f 4 -2454 -2453 -2452 2439
		mu 0 4 1361 1367 1368 1362
		mu 1 4 1362 1368 1369 1363
		f 4 2451 -2456 -2455 2442
		mu 0 4 1362 1368 1369 1363
		mu 1 4 1363 1369 1370 1364
		f 4 -2458 2367 -2457 2452
		mu 0 4 1367 1323 1326 1368
		mu 1 4 1368 1324 1327 1369
		f 4 2456 2371 -2459 2455
		mu 0 4 1368 1326 1328 1369
		mu 1 4 1369 1327 1329 1370
		f 4 2454 -2461 -2460 2449
		mu 0 4 1363 1369 1370 1366
		mu 1 4 1364 1370 1371 1367
		f 4 2459 -2462 2402 2450
		mu 0 4 1366 1370 1340 1342
		mu 1 4 1367 1371 1341 1343
		f 4 2458 2379 -2463 2460
		mu 0 4 1369 1328 1333 1370
		mu 1 4 1370 1329 1334 1371
		f 4 2462 2382 2399 2461
		mu 0 4 1370 1333 1322 1340
		mu 1 4 1371 1334 1323 1341
		f 4 2393 -2465 -2464 2305
		mu 0 4 1294 1335 1371 1292
		mu 1 4 1295 1336 1372 1293
		f 4 2463 -2467 -2466 2301
		mu 0 4 1292 1371 1372 1286
		mu 1 4 1293 1372 1373 1287
		f 4 2389 -2469 -2468 2464
		mu 0 4 1335 1329 1373 1371
		mu 1 4 1336 1330 1374 1372
		f 4 2467 -2471 -2470 2466
		mu 0 4 1371 1373 1374 1372
		mu 1 4 1372 1374 1375 1373
		f 4 2465 -2473 -2472 2289
		mu 0 4 1286 1372 1375 1283
		mu 1 4 1287 1373 1376 1284
		f 4 2471 -2475 -2474 2285
		mu 0 4 1283 1375 1376 1284
		mu 1 4 1284 1376 1377 1285
		f 4 2469 -2477 -2476 2472
		mu 0 4 1372 1374 1377 1375
		mu 1 4 1373 1375 1378 1376
		f 4 2475 -2479 -2478 2474
		mu 0 4 1375 1377 1378 1376
		mu 1 4 1376 1378 1379 1377
		f 4 2376 -2481 -2480 2468
		mu 0 4 1329 1324 1379 1373
		mu 1 4 1330 1325 1380 1374
		f 4 2479 -2483 -2482 2470
		mu 0 4 1373 1379 1380 1374
		mu 1 4 1374 1380 1381 1375
		f 4 2370 -2485 -2484 2480
		mu 0 4 1324 1323 1381 1379
		mu 1 4 1325 1324 1382 1380
		f 4 2483 -2487 -2486 2482
		mu 0 4 1379 1381 1382 1380
		mu 1 4 1380 1382 1383 1381
		f 4 2481 -2489 -2488 2476
		mu 0 4 1374 1380 1383 1377
		mu 1 4 1375 1381 1384 1378
		f 4 2487 -2491 -2490 2478
		mu 0 4 1377 1383 1384 1378
		mu 1 4 1378 1384 1385 1379
		f 4 2485 -2493 -2492 2488
		mu 0 4 1380 1382 1385 1383
		mu 1 4 1381 1383 1386 1384
		f 4 2491 -2495 -2494 2490
		mu 0 4 1383 1385 1386 1384
		mu 1 4 1384 1386 1387 1385
		f 4 2271 -2497 -2496 2228
		mu 0 4 1156 1276 1387 1254
		mu 1 4 1157 1277 1388 1255
		f 4 2495 -2499 -2498 2230
		mu 0 4 1254 1387 1388 1255
		mu 1 4 1255 1388 1389 1256
		f 4 2274 -2501 -2500 2496
		mu 0 4 1276 1278 1389 1387
		mu 1 4 1277 1279 1390 1388
		f 4 2499 -2503 -2502 2498
		mu 0 4 1387 1389 1390 1388
		mu 1 4 1388 1390 1391 1389
		f 4 2497 -2505 -2504 2236
		mu 0 4 1255 1388 1391 1258
		mu 1 4 1256 1389 1392 1259
		f 4 2503 -2507 -2506 2238
		mu 0 4 1258 1391 1392 1259
		mu 1 4 1259 1392 1393 1260
		f 4 2501 -2509 -2508 2504
		mu 0 4 1388 1390 1393 1391
		mu 1 4 1389 1391 1394 1392
		f 4 2507 -2511 -2510 2506
		mu 0 4 1391 1393 1394 1392
		mu 1 4 1392 1394 1395 1393
		f 4 2281 -2513 -2512 2500
		mu 0 4 1278 1282 1395 1389
		mu 1 4 1279 1283 1396 1390
		f 4 2511 -2515 -2514 2502
		mu 0 4 1389 1395 1396 1390
		mu 1 4 1390 1396 1397 1391
		f 4 2284 -2517 -2516 2512
		mu 0 4 1282 1284 1397 1395
		mu 1 4 1283 1285 1398 1396
		f 4 2515 -2519 -2518 2514
		mu 0 4 1395 1397 1398 1396
		mu 1 4 1396 1398 1399 1397
		f 4 2513 -2521 -2520 2508
		mu 0 4 1390 1396 1399 1393
		mu 1 4 1391 1397 1400 1394
		f 4 2519 -2523 -2522 2510
		mu 0 4 1393 1399 1400 1394
		mu 1 4 1394 1400 1401 1395
		f 4 2517 -2525 -2524 2520
		mu 0 4 1396 1398 1401 1399
		mu 1 4 1397 1399 1402 1400
		f 4 2523 -2527 -2526 2522
		mu 0 4 1399 1401 1402 1400
		mu 1 4 1400 1402 1403 1401
		f 4 2494 -2530 -2529 -2528
		mu 0 4 1386 1385 1403 1404
		mu 1 4 1387 1386 1404 1405
		f 4 2528 -2533 -2532 -2531
		mu 0 4 1404 1403 1405 1406
		mu 1 4 1405 1404 1406 1407
		f 4 2492 -2535 -2534 2529
		mu 0 4 1385 1382 1407 1403
		mu 1 4 1386 1383 1408 1404
		f 4 2533 -2537 -2536 2532
		mu 0 4 1403 1407 1408 1405
		mu 1 4 1404 1408 1409 1406
		f 4 2531 -2540 -2539 -2538
		mu 0 4 1406 1405 1409 1410
		mu 1 4 1407 1406 1410 1411
		f 4 2538 -2543 -2542 -2541
		mu 0 4 1410 1409 1411 1412
		mu 1 4 1411 1410 1412 1413
		f 4 2535 -2545 -2544 2539
		mu 0 4 1405 1408 1413 1409
		mu 1 4 1406 1409 1414 1410
		f 4 2543 -2547 -2546 2542
		mu 0 4 1409 1413 1414 1411
		mu 1 4 1410 1414 1415 1412
		f 4 2486 -2549 -2548 2534
		mu 0 4 1382 1381 1415 1407
		mu 1 4 1383 1382 1416 1408
		f 4 2547 -2551 -2550 2536
		mu 0 4 1407 1415 1416 1408
		mu 1 4 1408 1416 1417 1409
		f 4 2484 2457 -2552 2548
		mu 0 4 1381 1323 1367 1415
		mu 1 4 1382 1324 1368 1416
		f 4 2551 2453 -2553 2550
		mu 0 4 1415 1367 1361 1416
		mu 1 4 1416 1368 1362 1417
		f 4 2549 -2555 -2554 2544
		mu 0 4 1408 1416 1417 1413
		mu 1 4 1409 1417 1418 1414
		f 4 2553 -2557 -2556 2546
		mu 0 4 1413 1417 1418 1414
		mu 1 4 1414 1418 1419 1415
		f 4 2552 2440 -2558 2554
		mu 0 4 1416 1361 1356 1417
		mu 1 4 1417 1362 1357 1418
		f 4 2557 2434 -2559 2556
		mu 0 4 1417 1356 1355 1418
		mu 1 4 1418 1357 1356 1419
		f 4 2473 -2561 -2560 2516
		mu 0 4 1284 1376 1419 1397
		mu 1 4 1285 1377 1420 1398
		f 4 2559 -2563 -2562 2518
		mu 0 4 1397 1419 1420 1398
		mu 1 4 1398 1420 1421 1399
		f 4 2477 -2565 -2564 2560
		mu 0 4 1376 1378 1421 1419
		mu 1 4 1377 1379 1422 1420
		f 4 2563 -2567 -2566 2562
		mu 0 4 1419 1421 1422 1420
		mu 1 4 1420 1422 1423 1421
		f 4 2561 -2569 -2568 2524
		mu 0 4 1398 1420 1423 1401
		mu 1 4 1399 1421 1424 1402
		f 4 2567 -2571 -2570 2526
		mu 0 4 1401 1423 1424 1402
		mu 1 4 1402 1424 1425 1403
		f 4 2565 -2573 -2572 2568
		mu 0 4 1420 1422 1425 1423
		mu 1 4 1421 1423 1426 1424
		f 4 2571 -2575 -2574 2570
		mu 0 4 1423 1425 1426 1424
		mu 1 4 1424 1426 1427 1425
		f 4 2489 -2577 -2576 2564
		mu 0 4 1378 1384 1427 1421
		mu 1 4 1379 1385 1428 1422
		f 4 2575 -2579 -2578 2566
		mu 0 4 1421 1427 1428 1422
		mu 1 4 1422 1428 1429 1423
		f 4 2493 2527 -2580 2576
		mu 0 4 1384 1386 1404 1427
		mu 1 4 1385 1387 1405 1428
		f 4 2579 2530 -2581 2578
		mu 0 4 1427 1404 1406 1428
		mu 1 4 1428 1405 1407 1429
		f 4 2577 -2583 -2582 2572
		mu 0 4 1422 1428 1429 1425
		mu 1 4 1423 1429 1430 1426
		f 4 2581 -2585 -2584 2574
		mu 0 4 1425 1429 1430 1426
		mu 1 4 1426 1430 1431 1427
		f 4 2580 2537 -2586 2582
		mu 0 4 1428 1406 1410 1429
		mu 1 4 1429 1407 1411 1430
		f 4 2585 2540 -2587 2584
		mu 0 4 1429 1410 1412 1430
		mu 1 4 1430 1411 1413 1431
		f 4 825 -2589 -2588 927
		mu 0 4 513 512 1431 570
		mu 1 4 514 513 1432 571
		f 4 2587 -2591 -2590 924
		mu 0 4 570 1431 1432 565
		mu 1 4 571 1432 1433 566
		f 4 823 1118 -2592 2588
		mu 0 4 512 509 672 1431
		mu 1 4 513 510 673 1432
		f 4 2591 1122 -2593 2590
		mu 0 4 1431 672 674 1432
		mu 1 4 1432 673 675 1433
		f 4 2589 -2595 -2594 912
		mu 0 4 565 1432 1433 562
		mu 1 4 566 1433 1434 563
		f 4 2593 -2596 1359 908
		mu 0 4 562 1433 798 563
		mu 1 4 563 1434 799 564
		f 4 2592 -2598 -2597 2594
		mu 0 4 1432 674 1434 1433
		mu 1 4 1433 675 1435 1434
		f 4 2596 -2599 1356 2595
		mu 0 4 1433 1434 793 798
		mu 1 4 1434 1435 794 799
		f 4 1123 -2601 -2600 2597
		mu 0 4 674 673 1435 1434
		mu 1 4 675 674 1436 1435
		f 4 2599 -2602 1344 2598
		mu 0 4 1434 1435 790 793
		mu 1 4 1435 1436 791 794
		f 4 1121 -2604 -2603 2600
		mu 0 4 673 670 1436 1435
		mu 1 4 674 671 1437 1436
		f 4 2602 -2605 1340 2601
		mu 0 4 1435 1436 791 790
		mu 1 4 1436 1437 792 791
		f 4 1458 -2607 -2606 2008
		mu 0 4 851 848 1437 1138
		mu 1 4 852 849 1438 1139
		f 4 2605 -2609 -2608 2004
		mu 0 4 1138 1437 1438 1135
		mu 1 4 1139 1438 1439 1136
		f 4 1453 -2611 -2610 2606
		mu 0 4 848 841 1439 1437
		mu 1 4 849 842 1440 1438
		f 4 2609 -2613 -2612 2608
		mu 0 4 1437 1439 668 1438
		mu 1 4 1438 1440 669 1439
		f 4 2607 -2615 -2614 1999
		mu 0 4 1135 1438 1440 1132
		mu 1 4 1136 1439 1441 1133
		f 4 2613 -2616 1089 1994
		mu 0 4 1132 1440 654 653
		mu 1 4 1133 1441 655 654
		f 4 2611 1113 -2617 2614
		mu 0 4 1438 668 665 1440
		mu 1 4 1439 669 666 1441
		f 4 2616 1108 1095 2615
		mu 0 4 1440 665 659 654
		mu 1 4 1441 666 660 655
		f 4 1440 -2619 -2618 2610
		mu 0 4 841 838 1441 1439
		mu 1 4 842 839 1442 1440
		f 4 2617 -2620 1112 2612
		mu 0 4 1439 1441 669 668
		mu 1 4 1440 1442 670 669
		f 4 1435 2604 -2621 2618
		mu 0 4 838 791 1436 1441
		mu 1 4 839 792 1437 1442
		f 4 2620 2603 1115 2619
		mu 0 4 1441 1436 670 669
		mu 1 4 1442 1437 671 670
		f 4 -2624 -2623 -2622 1988
		mu 0 4 1128 1442 1443 1129
		mu 1 4 1129 1443 1444 1130
		f 4 2621 -2626 -2625 1990
		mu 0 4 1129 1443 1444 1096
		mu 1 4 1130 1444 1445 1097
		f 4 -2628 1972 -2627 2622
		mu 0 4 1442 1119 1118 1443
		mu 1 4 1443 1120 1119 1444
		f 4 2626 1970 -2629 2625
		mu 0 4 1443 1118 1115 1444
		mu 1 4 1444 1119 1116 1445
		f 4 2134 -2633 -2632 2170
		mu 0 4 1445 1205 1446 1447
		mu 1 4 1446 1206 1447 1448
		f 4 2631 -2635 -2634 2169
		mu 0 4 1447 1446 1448 1449
		mu 1 4 1448 1447 1449 1450
		f 4 2133 2171 -2636 2632
		mu 0 4 1205 1194 1225 1446
		mu 1 4 1206 1195 1226 1447
		f 4 2635 2174 -2637 2634
		mu 0 4 1446 1225 1227 1448
		mu 1 4 1447 1226 1228 1449
		f 4 2633 -2639 -2638 2629
		mu 0 4 1449 1448 1450 1451
		mu 1 4 1450 1449 1451 1452
		f 4 2637 -2641 -2640 2630
		mu 0 4 1451 1450 1452 1453
		mu 1 4 1452 1451 1453 1454
		f 4 2636 2181 -2642 2638
		mu 0 4 1448 1227 1231 1450
		mu 1 4 1449 1228 1232 1451
		f 4 2641 2184 -2643 2640
		mu 0 4 1450 1231 1233 1452
		mu 1 4 1451 1232 1234 1453
		f 4 -2646 -2645 -2644 1603
		mu 0 4 927 1454 1455 929
		mu 1 4 928 1455 1456 930
		f 4 2643 -2647 1313 1604
		mu 0 4 929 1455 773 742
		mu 1 4 930 1456 774 743
		f 4 -2650 -2649 -2648 2644
		mu 0 4 1454 1456 1457 1455
		mu 1 4 1455 1457 1458 1456
		f 4 2647 -2651 1315 2646
		mu 0 4 1455 1457 774 773
		mu 1 4 1456 1458 775 774
		f 4 1521 -2653 -2652 1711
		mu 0 4 890 889 1458 986
		mu 1 4 891 890 1459 987
		f 4 2651 -2655 -2654 1716
		mu 0 4 986 1458 1459 989
		mu 1 4 987 1459 1460 990
		f 4 1525 -2657 -2656 2652
		mu 0 4 889 892 1460 1458
		mu 1 4 890 893 1461 1459
		f 4 2655 -2659 -2658 2654
		mu 0 4 1458 1460 1461 1459
		mu 1 4 1459 1461 1462 1460
		f 4 2658 -2662 -2661 -2660
		mu 0 4 1461 1460 1462 1463
		mu 1 4 1462 1461 1463 1464
		f 4 2660 -2664 1493 -2663
		mu 0 4 1463 1462 873 864
		mu 1 4 1464 1463 874 865
		f 4 2656 1537 -2665 2661
		mu 0 4 1460 892 897 1462
		mu 1 4 1461 893 898 1463
		f 4 2664 1540 1497 2663
		mu 0 4 1462 897 762 873
		mu 1 4 1463 898 763 874
		f 4 -2668 -2667 -2666 1889
		mu 0 4 1078 1464 1465 1076
		mu 1 4 1079 1465 1466 1077
		f 4 2665 -2669 1936 1885
		mu 0 4 1076 1465 1099 1055
		mu 1 4 1077 1466 1100 1056
		f 4 -2672 -2671 -2670 2666
		mu 0 4 1464 1466 1467 1465
		mu 1 4 1465 1467 1468 1466
		f 4 2669 -2673 1933 2668
		mu 0 4 1465 1467 1092 1099
		mu 1 4 1466 1468 1093 1100
		f 4 1930 -2675 -2674 1865
		mu 0 4 1061 1097 1468 1067
		mu 1 4 1062 1098 1469 1068
		f 4 2673 -2676 1962 1869
		mu 0 4 1067 1468 1114 1048
		mu 1 4 1068 1469 1115 1049
		f 4 1927 2624 -2677 2674
		mu 0 4 1097 1096 1444 1468
		mu 1 4 1098 1097 1445 1469
		f 4 2676 2628 1964 2675
		mu 0 4 1468 1444 1115 1114
		mu 1 4 1469 1445 1116 1115
		f 4 1733 -2679 -2678 1472
		mu 0 4 858 996 1469 859
		mu 1 4 859 997 1470 860
		f 4 2677 -2680 2662 1478
		mu 0 4 859 1469 1463 864
		mu 1 4 860 1470 1464 865
		f 4 1729 2653 -2681 2678
		mu 0 4 996 989 1459 1469
		mu 1 4 997 990 1460 1470
		f 4 2680 2657 2659 2679
		mu 0 4 1469 1459 1461 1463
		mu 1 4 1470 1460 1462 1464
		f 4 1598 -2683 -2682 2645
		mu 0 4 927 926 1470 1454
		mu 1 4 928 927 1471 1455
		f 4 2681 -2685 -2684 2649
		mu 0 4 1454 1470 1471 1456
		mu 1 4 1455 1471 1472 1457
		f 4 1595 1676 -2686 2682
		mu 0 4 926 925 969 1470
		mu 1 4 927 926 970 1471
		f 4 2685 1675 -2687 2684
		mu 0 4 1470 969 967 1471
		mu 1 4 1471 970 968 1472
		f 4 1389 -2689 -2688 1420
		mu 0 4 816 815 1472 831
		mu 1 4 817 816 1473 832
		f 4 1386 -2691 -2690 2688
		mu 0 4 815 814 1473 1472
		mu 1 4 816 815 1474 1473
		f 4 2251 -2694 -2693 -2692
		mu 0 4 1264 1269 1474 1475
		mu 1 4 1265 1270 1475 1476
		f 4 2692 -2697 -2696 -2695
		mu 0 4 1475 1474 1476 1456
		mu 1 4 1476 1475 1477 1457
		f 4 2254 2151 -2698 2693
		mu 0 4 1269 1217 1216 1474
		mu 1 4 1270 1218 1217 1475
		f 4 2697 2155 -2699 2696
		mu 0 4 1474 1216 1219 1476
		mu 1 4 1475 1217 1220 1477
		f 4 2695 -2701 -2700 2648
		mu 0 4 1456 1476 1477 1457
		mu 1 4 1457 1477 1478 1458
		f 4 2699 -2702 1776 2650
		mu 0 4 1457 1477 1021 774
		mu 1 4 1458 1478 1022 775
		f 4 2698 2165 -2703 2700
		mu 0 4 1476 1219 1223 1477
		mu 1 4 1477 1220 1224 1478
		f 4 2702 2168 1778 2701
		mu 0 4 1477 1223 1022 1021
		mu 1 4 1478 1224 1023 1022
		f 4 2671 -2706 -2705 -2704
		mu 0 4 1466 1464 1478 1479
		mu 1 4 1467 1465 1479 1480
		f 4 2704 -2708 1570 -2707
		mu 0 4 1479 1478 912 909
		mu 1 4 1480 1479 913 910
		f 4 2667 1899 -2709 2705
		mu 0 4 1464 1078 1082 1478
		mu 1 4 1465 1079 1083 1479
		f 4 2708 1902 1572 2707
		mu 0 4 1478 1082 913 912
		mu 1 4 1479 1083 914 913
		f 4 2703 -2711 -2710 2670
		mu 0 4 1466 1479 1480 1467
		mu 1 4 1467 1480 1481 1468
		f 4 2709 -2712 1919 2672
		mu 0 4 1467 1480 1090 1092
		mu 1 4 1468 1481 1091 1093
		f 4 2706 1564 -2713 2710
		mu 0 4 1479 909 908 1480
		mu 1 4 1480 910 909 1481
		f 4 2712 1562 1915 2711
		mu 0 4 1480 908 857 1090
		mu 1 4 1481 909 858 1091
		f 4 2239 -2715 -2714 1667
		mu 0 4 965 1262 1481 966
		mu 1 4 966 1263 1482 967
		f 4 2713 -2716 2686 1670
		mu 0 4 966 1481 1471 967
		mu 1 4 967 1482 1472 968
		f 4 2243 2691 -2717 2714
		mu 0 4 1262 1264 1475 1481
		mu 1 4 1263 1265 1476 1482
		f 4 2716 2694 2683 2715
		mu 0 4 1481 1475 1456 1471
		mu 1 4 1482 1476 1457 1472
		f 4 2127 -2718 2690 2123
		mu 0 4 1200 1482 1473 814
		mu 1 4 1201 1483 1474 815
		f 4 -2722 -2721 -2720 -2719
		mu 0 4 1483 1484 1485 1486
		mu 1 4 1484 1485 1486 1487
		f 4 2719 -2724 801 -2723
		mu 0 4 1486 1485 499 501
		mu 1 4 1487 1486 500 502
		f 4 -2726 850 -2725 2720
		mu 0 4 1484 527 532 1485
		mu 1 4 1485 528 533 1486
		f 4 2724 853 798 2723
		mu 0 4 1485 532 494 499
		mu 1 4 1486 533 495 500
		f 4 2718 -2729 -2728 -2727
		mu 0 4 1483 1486 1487 1488
		mu 1 4 1484 1487 1488 1489
		f 4 2727 -2731 862 -2730
		mu 0 4 1488 1487 537 514
		mu 1 4 1489 1488 538 515
		f 4 2722 878 -2732 2728
		mu 0 4 1486 501 547 1487
		mu 1 4 1487 502 548 1488
		f 4 2731 881 858 2730
		mu 0 4 1487 547 534 537
		mu 1 4 1488 548 535 538
		f 4 2726 -2734 -2733 2721
		mu 0 4 1483 1488 1489 1484
		mu 1 4 1484 1489 1490 1485
		f 4 2732 -2735 842 2725
		mu 0 4 1484 1489 525 527
		mu 1 4 1485 1490 526 528
		f 4 2729 826 -2736 2733
		mu 0 4 1488 514 517 1489
		mu 1 4 1489 515 518 1490
		f 4 2735 830 838 2734
		mu 0 4 1489 517 519 525
		mu 1 4 1490 518 520 526
		f 4 -2128 2736 2746 -2748
		mu 0 4 1482 1200 1202 1490
		mu 1 4 1491 1201 1203 1492
		f 4 -2136 -2745 -2747 2743
		mu 0 4 1207 1491 1490 1202
		mu 1 4 1208 1493 1492 1203
		f 4 -2741 -2743 2739 -2135
		mu 0 4 1445 1492 1206 1205
		mu 1 4 1446 1494 1207 1206
		f 4 -2744 -2746 2126 2738
		mu 0 4 1207 1202 1201 1198
		mu 1 4 1208 1203 1202 1199
		f 4 -2137 2135 2737 2742
		mu 0 4 1492 1491 1207 1206
		mu 1 4 1494 1495 1208 1207
		f 4 2748 2749 2750 2751
		mu 0 4 1493 1494 1495 1496
		mu 1 4 1496 1497 1498 1499
		f 4 2752 2753 2754 -2750
		mu 0 4 1494 1497 1498 1495
		mu 1 4 1497 1500 1501 1498
		f 4 -2751 2755 2756 2757
		mu 0 4 1496 1495 1499 1500
		mu 1 4 1499 1498 1502 1503
		f 4 -2755 2758 2759 -2756
		mu 0 4 1495 1498 1501 1499
		mu 1 4 1498 1501 1504 1502
		f 4 2760 2761 2762 -2754
		mu 0 4 1497 1502 1503 1498
		mu 1 4 1500 1505 1506 1501
		f 4 2763 2764 2765 -2762
		mu 0 4 1502 1504 1505 1503
		mu 1 4 1505 1507 1508 1506
		f 4 -2763 2766 2767 -2759
		mu 0 4 1498 1503 1506 1501
		mu 1 4 1501 1506 1509 1504
		f 4 -2766 2768 2769 -2767
		mu 0 4 1503 1505 1507 1506
		mu 1 4 1506 1508 1510 1509
		f 4 -2757 2770 2771 2772
		mu 0 4 1500 1499 1508 1509
		mu 1 4 1503 1502 1511 1512
		f 4 -2760 2773 2774 -2771
		mu 0 4 1499 1501 1510 1508
		mu 1 4 1502 1504 1513 1511
		f 4 -2772 2775 2776 2777
		mu 0 4 1509 1508 1511 1512
		mu 1 4 1512 1511 1514 1515
		f 4 -2775 2778 2779 -2776
		mu 0 4 1508 1510 1513 1511
		mu 1 4 1511 1513 1516 1514
		f 4 -2768 2780 2781 -2774
		mu 0 4 1501 1506 1514 1510
		mu 1 4 1504 1509 1517 1513
		f 4 -2770 2782 2783 -2781
		mu 0 4 1506 1507 1515 1514
		mu 1 4 1509 1510 1518 1517
		f 4 -2782 2784 2785 -2779
		mu 0 4 1510 1514 1516 1513
		mu 1 4 1513 1517 1519 1516
		f 4 -2784 2786 2787 -2785
		mu 0 4 1514 1515 1517 1516
		mu 1 4 1517 1518 1520 1519
		f 4 2788 2789 2790 2791
		mu 0 4 1518 1519 1520 1521
		mu 1 4 1521 1522 1523 1524
		f 4 2792 2793 2794 -2790
		mu 0 4 1519 1522 1523 1520
		mu 1 4 1522 1525 1526 1523
		f 4 -2791 2795 2796 2797
		mu 0 4 1521 1520 1524 1525
		mu 1 4 1524 1523 1527 1528
		f 4 -2795 2798 2799 -2796
		mu 0 4 1520 1523 1526 1524
		mu 1 4 1523 1526 1529 1527
		f 4 2800 2801 2802 2803
		mu 0 4 1522 1527 1528 1529
		mu 1 4 1525 1530 1531 1532
		f 4 2804 2805 2806 -2802
		mu 0 4 1527 1530 1531 1528
		mu 1 4 1530 1533 1534 1531
		f 4 -2803 2807 2808 2809
		mu 0 4 1529 1528 1532 1533
		mu 1 4 1532 1531 1535 1536
		f 4 -2807 2810 2811 -2808
		mu 0 4 1528 1531 1534 1532
		mu 1 4 1531 1534 1537 1535
		f 4 2812 2813 2814 -2806
		mu 0 4 1530 1535 1536 1531
		mu 1 4 1533 1538 1539 1534
		f 4 2815 -2753 2816 -2814
		mu 0 4 1535 1497 1494 1536
		mu 1 4 1538 1500 1497 1539
		f 4 -2815 2817 2818 -2811
		mu 0 4 1531 1536 1537 1534
		mu 1 4 1534 1539 1540 1537
		f 4 -2817 -2749 2819 -2818
		mu 0 4 1536 1494 1493 1537
		mu 1 4 1539 1497 1496 1540
		f 4 2820 2821 2822 2823
		mu 0 4 1538 1539 1540 1541
		mu 1 4 1541 1542 1543 1544
		f 4 2824 -2792 2825 -2822
		mu 0 4 1539 1518 1521 1540
		mu 1 4 1542 1521 1524 1543
		f 4 -2823 2826 2827 2828
		mu 0 4 1541 1540 1542 1543
		mu 1 4 1544 1543 1545 1546
		f 4 -2826 -2798 2829 -2827
		mu 0 4 1540 1521 1525 1542
		mu 1 4 1543 1524 1528 1545
		f 4 2830 2831 2832 -2830
		mu 0 4 1525 1544 1545 1542
		mu 1 4 1528 1547 1548 1545
		f 4 2833 2834 2835 -2832
		mu 0 4 1544 1546 1547 1545
		mu 1 4 1547 1549 1550 1548
		f 4 -2833 2836 2837 -2828
		mu 0 4 1542 1545 1548 1543
		mu 1 4 1545 1548 1551 1546
		f 4 -2836 2838 2839 -2837
		mu 0 4 1545 1547 1549 1548
		mu 1 4 1548 1550 1552 1551
		f 4 2840 2841 2842 -2765
		mu 0 4 1504 1550 1551 1505
		mu 1 4 1507 1553 1554 1508
		f 4 2843 -2824 2844 -2842
		mu 0 4 1550 1538 1541 1551
		mu 1 4 1553 1541 1544 1554
		f 4 -2843 2845 2846 -2769
		mu 0 4 1505 1551 1552 1507
		mu 1 4 1508 1554 1555 1510
		f 4 -2845 -2829 2847 -2846
		mu 0 4 1551 1541 1543 1552
		mu 1 4 1554 1544 1546 1555
		f 4 -2838 2848 2849 -2848
		mu 0 4 1543 1548 1553 1552
		mu 1 4 1546 1551 1556 1555
		f 4 -2840 2850 2851 -2849
		mu 0 4 1548 1549 1554 1553
		mu 1 4 1551 1552 1557 1556
		f 4 -2850 2852 -2783 -2847
		mu 0 4 1552 1553 1515 1507
		mu 1 4 1555 1556 1518 1510
		f 4 -2852 2853 -2787 -2853
		mu 0 4 1553 1554 1517 1515
		mu 1 4 1556 1557 1520 1518
		f 4 2854 2855 2856 2857
		mu 0 4 1555 1556 1557 1558
		mu 1 4 1558 1559 1560 1561
		f 4 2858 2859 2860 -2856
		mu 0 4 1556 1559 1560 1557
		mu 1 4 1559 1562 1563 1560
		f 4 -2857 2861 2862 2863
		mu 0 4 1558 1557 1561 1562
		mu 1 4 1561 1560 1564 1565
		f 4 -2861 2864 2865 -2862
		mu 0 4 1557 1560 1563 1561
		mu 1 4 1560 1563 1566 1564
		f 4 2866 2867 2868 -2860
		mu 0 4 1559 1564 1565 1560
		mu 1 4 1562 1567 1568 1563
		f 4 2869 2870 2871 -2868
		mu 0 4 1564 1566 1567 1565
		mu 1 4 1567 1569 1570 1568
		f 4 -2869 2872 2873 -2865
		mu 0 4 1560 1565 1568 1563
		mu 1 4 1563 1568 1571 1566
		f 4 -2872 2874 2875 -2873
		mu 0 4 1565 1567 1569 1568
		mu 1 4 1568 1570 1572 1571
		f 4 -2863 2876 2877 2878
		mu 0 4 1562 1561 1570 1571
		mu 1 4 1565 1564 1573 1574
		f 4 -2866 2879 2880 -2877
		mu 0 4 1561 1563 1572 1570
		mu 1 4 1564 1566 1575 1573
		f 4 -2878 2881 -2835 2882
		mu 0 4 1571 1570 1547 1546
		mu 1 4 1574 1573 1550 1549
		f 4 -2881 2883 -2839 -2882
		mu 0 4 1570 1572 1549 1547
		mu 1 4 1573 1575 1552 1550
		f 4 -2874 2884 2885 -2880
		mu 0 4 1563 1568 1573 1572
		mu 1 4 1566 1571 1576 1575
		f 4 -2876 2886 2887 -2885
		mu 0 4 1568 1569 1574 1573
		mu 1 4 1571 1572 1577 1576
		f 4 -2886 2888 -2851 -2884
		mu 0 4 1572 1573 1554 1549
		mu 1 4 1575 1576 1557 1552
		f 4 -2888 2889 -2854 -2889
		mu 0 4 1573 1574 1517 1554
		mu 1 4 1576 1577 1520 1557
		f 4 2890 2891 2892 2893
		mu 0 4 1575 1576 1577 1578
		mu 1 4 1578 1579 1580 1581
		f 4 2894 2895 2896 -2892
		mu 0 4 1576 1579 1580 1577
		mu 1 4 1579 1582 1583 1580
		f 4 -2893 2897 2898 2899
		mu 0 4 1578 1577 1581 1582
		mu 1 4 1581 1580 1584 1585
		f 4 -2897 2900 2901 -2898
		mu 0 4 1577 1580 1583 1581
		mu 1 4 1580 1583 1586 1584
		f 4 2902 2903 2904 -2896
		mu 0 4 1579 1584 1585 1580
		mu 1 4 1582 1587 1588 1583
		f 4 2905 -2858 2906 -2904
		mu 0 4 1584 1555 1558 1585
		mu 1 4 1587 1558 1561 1588
		f 4 -2905 2907 2908 -2901
		mu 0 4 1580 1585 1586 1583
		mu 1 4 1583 1588 1589 1586
		f 4 -2907 -2864 2909 -2908
		mu 0 4 1585 1558 1562 1586
		mu 1 4 1588 1561 1565 1589
		f 4 -2899 2910 2911 2912
		mu 0 4 1582 1581 1587 1588
		mu 1 4 1585 1584 1590 1591
		f 4 -2902 2913 2914 -2911
		mu 0 4 1581 1583 1589 1587
		mu 1 4 1584 1586 1592 1590
		f 4 -2912 2915 2916 2917
		mu 0 4 1588 1587 1590 1591
		mu 1 4 1591 1590 1593 1594
		f 4 -2915 2918 2919 -2916
		mu 0 4 1587 1589 1592 1590
		mu 1 4 1590 1592 1595 1593
		f 4 -2909 2920 2921 -2914
		mu 0 4 1583 1586 1593 1589
		mu 1 4 1586 1589 1596 1592
		f 4 -2910 -2879 2922 -2921
		mu 0 4 1586 1562 1571 1593
		mu 1 4 1589 1565 1574 1596
		f 4 -2922 2923 2924 -2919
		mu 0 4 1589 1593 1594 1592
		mu 1 4 1592 1596 1597 1595
		f 4 -2923 -2883 2925 -2924
		mu 0 4 1593 1571 1546 1594
		mu 1 4 1596 1574 1549 1597
		f 4 -2917 2926 2927 2928
		mu 0 4 1591 1590 1595 1596
		mu 1 4 1594 1593 1598 1599
		f 4 -2920 2929 2930 -2927
		mu 0 4 1590 1592 1597 1595
		mu 1 4 1593 1595 1600 1598
		f 4 -2928 2931 2932 2933
		mu 0 4 1596 1595 1598 1599
		mu 1 4 1599 1598 1601 1602
		f 4 -2931 2934 2935 -2932
		mu 0 4 1595 1597 1600 1598
		mu 1 4 1598 1600 1603 1601
		f 4 -2925 2936 2937 -2930
		mu 0 4 1592 1594 1601 1597
		mu 1 4 1595 1597 1604 1600
		f 4 -2926 2938 2939 -2937
		mu 0 4 1594 1546 1602 1601
		mu 1 4 1597 1549 1605 1604
		f 4 -2938 2940 2941 -2935
		mu 0 4 1597 1601 1603 1600
		mu 1 4 1600 1604 1606 1603
		f 4 -2940 2942 2943 -2941
		mu 0 4 1601 1602 1604 1603
		mu 1 4 1604 1605 1607 1606
		f 4 -2933 2944 2945 2946
		mu 0 4 1599 1598 1605 1606
		mu 1 4 1602 1601 1608 1609
		f 4 -2936 2947 2948 -2945
		mu 0 4 1598 1600 1607 1605
		mu 1 4 1601 1603 1610 1608
		f 4 -2946 2949 2950 2951
		mu 0 4 1606 1605 1608 1609
		mu 1 4 1609 1608 1611 1612
		f 4 -2949 2952 2953 -2950
		mu 0 4 1605 1607 1610 1608
		mu 1 4 1608 1610 1613 1611
		f 4 -2942 2954 2955 -2948
		mu 0 4 1600 1603 1611 1607
		mu 1 4 1603 1606 1614 1610
		f 4 -2944 2956 2957 -2955
		mu 0 4 1603 1604 1612 1611
		mu 1 4 1606 1607 1615 1614
		f 4 -2956 2958 2959 -2953
		mu 0 4 1607 1611 1613 1610
		mu 1 4 1610 1614 1616 1613
		f 4 -2958 2960 2961 -2959
		mu 0 4 1611 1612 1614 1613
		mu 1 4 1614 1615 1617 1616
		f 4 -2804 2962 2963 -2794
		mu 0 4 1522 1529 1615 1523
		mu 1 4 1525 1532 1618 1526
		f 4 -2810 2964 2965 -2963
		mu 0 4 1529 1533 1616 1615
		mu 1 4 1532 1536 1619 1618
		f 4 -2964 2966 2967 -2799
		mu 0 4 1523 1615 1617 1526
		mu 1 4 1526 1618 1620 1529
		f 4 -2966 2968 2969 -2967
		mu 0 4 1615 1616 1618 1617
		mu 1 4 1618 1619 1621 1620
		f 4 -2797 2970 2971 -2831
		mu 0 4 1525 1524 1619 1544
		mu 1 4 1528 1527 1622 1547
		f 4 -2800 2972 2973 -2971
		mu 0 4 1524 1526 1620 1619
		mu 1 4 1527 1529 1623 1622
		f 4 -2972 2974 -2939 -2834
		mu 0 4 1544 1619 1602 1546
		mu 1 4 1547 1622 1605 1549
		f 4 -2974 2975 -2943 -2975
		mu 0 4 1619 1620 1604 1602
		mu 1 4 1622 1623 1607 1605
		f 4 -2968 2976 2977 -2973
		mu 0 4 1526 1617 1621 1620
		mu 1 4 1529 1620 1624 1623
		f 4 -2970 2978 2979 -2977
		mu 0 4 1617 1618 1622 1621
		mu 1 4 1620 1621 1625 1624
		f 4 -2978 2980 -2957 -2976
		mu 0 4 1620 1621 1612 1604
		mu 1 4 1623 1624 1615 1607
		f 4 -2980 2981 -2961 -2981
		mu 0 4 1621 1622 1614 1612
		mu 1 4 1624 1625 1617 1615
		f 4 1020 2982 2983 2984
		mu 0 4 619 622 1623 1624
		mu 1 4 1626 1627 1628 1629
		f 4 1024 2985 2986 -2983
		mu 0 4 622 624 1625 1623
		mu 1 4 1627 1630 1631 1628
		f 4 -2984 2987 -2778 2988
		mu 0 4 1624 1623 1509 1512
		mu 1 4 1629 1628 1512 1515
		f 4 -2987 2989 -2773 -2988
		mu 0 4 1623 1625 1500 1509
		mu 1 4 1628 1631 1503 1512
		f 4 2990 2991 2992 1033
		mu 0 4 625 1626 1627 626
		mu 1 4 1632 1633 1634 1635
		f 4 2993 -2752 2994 -2992
		mu 0 4 1626 1493 1496 1627
		mu 1 4 1633 1496 1499 1634
		f 4 -2993 2995 -2986 1037
		mu 0 4 626 1627 1625 624
		mu 1 4 1635 1634 1631 1630
		f 4 -2995 -2758 -2990 -2996
		mu 0 4 1627 1496 1500 1625
		mu 1 4 1634 1499 1503 1631
		f 4 1038 2996 2997 -2991
		mu 0 4 625 630 1628 1626
		mu 1 4 1632 1636 1637 1633
		f 4 1041 2998 2999 -2997
		mu 0 4 630 632 1629 1628
		mu 1 4 1636 1638 1639 1637
		f 4 -2998 3000 -2820 -2994
		mu 0 4 1626 1628 1537 1493
		mu 1 4 1633 1637 1540 1496
		f 4 -3000 3001 -2819 -3001
		mu 0 4 1628 1629 1534 1537
		mu 1 4 1637 1639 1537 1540
		f 4 1046 3002 3003 -2999
		mu 0 4 632 634 1630 1629
		mu 1 4 1638 1640 1641 1639
		f 4 1049 3004 3005 -3003
		mu 0 4 634 636 1631 1630
		mu 1 4 1640 1642 1643 1641
		f 4 -3004 3006 -2812 -3002
		mu 0 4 1629 1630 1532 1534
		mu 1 4 1639 1641 1535 1537
		f 4 -3006 3007 -2809 -3007
		mu 0 4 1630 1631 1533 1532
		mu 1 4 1641 1643 1536 1535
		f 4 3008 3009 3010 1057
		mu 0 4 637 1632 1633 638
		mu 1 4 1644 1645 1646 1647
		f 4 3011 -2982 3012 -3010
		mu 0 4 1632 1614 1622 1633
		mu 1 4 1645 1617 1625 1646
		f 4 -3011 3013 3014 1062
		mu 0 4 638 1633 1634 641
		mu 1 4 1647 1646 1648 1649
		f 4 -3013 -2979 3015 -3014
		mu 0 4 1633 1622 1618 1634
		mu 1 4 1646 1625 1621 1648
		f 4 -3008 3016 3017 -2965
		mu 0 4 1533 1631 1635 1616
		mu 1 4 1536 1643 1650 1619
		f 4 -3005 1066 3018 -3017
		mu 0 4 1631 636 644 1635
		mu 1 4 1643 1642 1651 1650
		f 4 -3018 3019 -3016 -2969
		mu 0 4 1616 1635 1634 1618
		mu 1 4 1619 1650 1648 1621
		f 4 -3019 1069 -3015 -3020
		mu 0 4 1635 644 641 1634
		mu 1 4 1650 1651 1649 1648
		f 4 3020 3021 3022 1073
		mu 0 4 645 1636 1637 646
		mu 1 4 1652 1653 1654 1655
		f 4 3023 -2951 3024 -3022
		mu 0 4 1636 1609 1608 1637
		mu 1 4 1653 1612 1611 1654
		f 4 -3023 3025 3026 1078
		mu 0 4 646 1637 1638 649
		mu 1 4 1655 1654 1656 1657
		f 4 -3025 -2954 3027 -3026
		mu 0 4 1637 1608 1610 1638
		mu 1 4 1654 1611 1613 1656
		f 4 -3027 3028 3029 1082
		mu 0 4 649 1638 1639 651
		mu 1 4 1657 1656 1658 1659
		f 4 -3028 -2960 3030 -3029
		mu 0 4 1638 1610 1613 1639
		mu 1 4 1656 1613 1616 1658
		f 4 -3030 3031 -3009 1085
		mu 0 4 651 1639 1632 637
		mu 1 4 1659 1658 1645 1644
		f 4 -3031 -2962 -3012 -3032
		mu 0 4 1639 1613 1614 1632
		mu 1 4 1658 1616 1617 1645
		f 4 3032 3033 3034 3035
		mu 0 4 1640 1641 1642 1643
		mu 1 4 1660 1661 1662 1663
		f 4 3036 3037 3038 -3034
		mu 0 4 1641 1644 1645 1642
		mu 1 4 1661 1664 1665 1662
		f 4 -3035 3039 3040 3041
		mu 0 4 1643 1642 1646 1647
		mu 1 4 1663 1662 1666 1667
		f 4 -3039 3042 3043 -3040
		mu 0 4 1642 1645 1648 1646
		mu 1 4 1662 1665 1668 1666
		f 4 3044 3045 3046 -3038
		mu 0 4 1644 1649 1650 1645
		mu 1 4 1664 1669 1670 1665
		f 4 3047 -2777 3048 -3046
		mu 0 4 1649 1512 1511 1650
		mu 1 4 1669 1515 1514 1670
		f 4 -3047 3049 3050 -3043
		mu 0 4 1645 1650 1651 1648
		mu 1 4 1665 1670 1671 1668
		f 4 -3049 -2780 3051 -3050
		mu 0 4 1650 1511 1513 1651
		mu 1 4 1670 1514 1516 1671
		f 4 -3041 3052 3053 3054
		mu 0 4 1647 1646 1652 1653
		mu 1 4 1667 1666 1672 1673
		f 4 -3044 3055 3056 -3053
		mu 0 4 1646 1648 1654 1652
		mu 1 4 1666 1668 1674 1672
		f 4 -3054 3057 3058 3059
		mu 0 4 1653 1652 1655 1656
		mu 1 4 1673 1672 1675 1676
		f 4 -3057 3060 3061 -3058
		mu 0 4 1652 1654 1657 1655
		mu 1 4 1672 1674 1677 1675
		f 4 -3051 3062 3063 -3056
		mu 0 4 1648 1651 1658 1654
		mu 1 4 1668 1671 1678 1674
		f 4 -3052 3064 3065 -3063
		mu 0 4 1651 1513 1659 1658
		mu 1 4 1671 1516 1679 1678
		f 4 -3064 3066 3067 -3061
		mu 0 4 1654 1658 1660 1657
		mu 1 4 1674 1678 1680 1677;
	setAttr ".fc[1500:1999]"
		f 4 -3066 3068 3069 -3067
		mu 0 4 1658 1659 1661 1660
		mu 1 4 1678 1679 1681 1680
		f 4 -2985 3070 3071 1126
		mu 0 4 619 1624 1662 675
		mu 1 4 1626 1629 1682 1683
		f 4 -2989 -3048 3072 -3071
		mu 0 4 1624 1512 1649 1662
		mu 1 4 1629 1515 1669 1682
		f 4 -3072 3073 3074 1130
		mu 0 4 675 1662 1663 677
		mu 1 4 1683 1682 1684 1685
		f 4 -3073 -3045 3075 -3074
		mu 0 4 1662 1649 1644 1663
		mu 1 4 1682 1669 1664 1684
		f 4 -3075 3076 3077 1134
		mu 0 4 677 1663 1664 679
		mu 1 4 1685 1684 1686 1687
		f 4 -3076 -3037 3078 -3077
		mu 0 4 1663 1644 1641 1664
		mu 1 4 1684 1664 1661 1686
		f 4 -3078 3079 3080 1138
		mu 0 4 679 1664 1665 681
		mu 1 4 1687 1686 1688 1689
		f 4 -3079 -3033 3081 -3080
		mu 0 4 1664 1641 1640 1665
		mu 1 4 1686 1661 1660 1688
		f 4 1140 3082 3083 -3021
		mu 0 4 645 684 1666 1636
		mu 1 4 1652 1690 1691 1653
		f 4 1143 3084 3085 -3083
		mu 0 4 684 686 1667 1666
		mu 1 4 1690 1692 1693 1691
		f 4 -3084 3086 3087 -3024
		mu 0 4 1636 1666 1668 1609
		mu 1 4 1653 1691 1694 1612
		f 4 -3086 3088 3089 -3087
		mu 0 4 1666 1667 1669 1668
		mu 1 4 1691 1693 1695 1694
		f 4 1150 3090 3091 -3085
		mu 0 4 686 690 1670 1667
		mu 1 4 1692 1696 1697 1693
		f 4 1153 3092 3093 -3091
		mu 0 4 690 692 1671 1670
		mu 1 4 1696 1698 1699 1697
		f 4 -3092 3094 3095 -3089
		mu 0 4 1667 1670 1672 1669
		mu 1 4 1693 1697 1700 1695
		f 4 -3094 3096 3097 -3095
		mu 0 4 1670 1671 1673 1672
		mu 1 4 1697 1699 1701 1700
		f 4 -3088 3098 3099 -2952
		mu 0 4 1609 1668 1674 1606
		mu 1 4 1612 1694 1702 1609
		f 4 -3090 3100 3101 -3099
		mu 0 4 1668 1669 1675 1674
		mu 1 4 1694 1695 1703 1702
		f 4 -3100 3102 3103 -2947
		mu 0 4 1606 1674 1676 1599
		mu 1 4 1609 1702 1704 1602
		f 4 -3102 3104 3105 -3103
		mu 0 4 1674 1675 1677 1676
		mu 1 4 1702 1703 1705 1704
		f 4 -3096 3106 3107 -3101
		mu 0 4 1669 1672 1678 1675
		mu 1 4 1695 1700 1706 1703
		f 4 -3098 3108 3109 -3107
		mu 0 4 1672 1673 1679 1678
		mu 1 4 1700 1701 1707 1706
		f 4 -3108 3110 3111 -3105
		mu 0 4 1675 1678 1680 1677
		mu 1 4 1703 1706 1708 1705
		f 4 -3110 3112 3113 -3111
		mu 0 4 1678 1679 1681 1680
		mu 1 4 1706 1707 1709 1708
		f 4 -3104 3114 3115 -2934
		mu 0 4 1599 1676 1682 1596
		mu 1 4 1602 1704 1710 1599
		f 4 -3106 3116 3117 -3115
		mu 0 4 1676 1677 1683 1682
		mu 1 4 1704 1705 1711 1710
		f 4 -3116 3118 3119 -2929
		mu 0 4 1596 1682 1684 1591
		mu 1 4 1599 1710 1712 1594
		f 4 -3118 3120 3121 -3119
		mu 0 4 1682 1683 1685 1684
		mu 1 4 1710 1711 1713 1712
		f 4 -3112 3122 3123 -3117
		mu 0 4 1677 1680 1686 1683
		mu 1 4 1705 1708 1714 1711
		f 4 -3114 3124 3125 -3123
		mu 0 4 1680 1681 1687 1686
		mu 1 4 1708 1709 1715 1714
		f 4 -3124 3126 3127 -3121
		mu 0 4 1683 1686 1688 1685
		mu 1 4 1711 1714 1716 1713
		f 4 -3126 3128 3129 -3127
		mu 0 4 1686 1687 1689 1688
		mu 1 4 1714 1715 1717 1716
		f 4 -2894 3130 3131 3132
		mu 0 4 1575 1578 1690 1691
		mu 1 4 1578 1581 1718 1719
		f 4 -2900 3133 3134 -3131
		mu 0 4 1578 1582 1692 1690
		mu 1 4 1581 1585 1720 1718
		f 4 -3132 3135 3136 3137
		mu 0 4 1691 1690 1693 1694
		mu 1 4 1719 1718 1721 1722
		f 4 -3135 3138 3139 -3136
		mu 0 4 1690 1692 1695 1693
		mu 1 4 1718 1720 1723 1721
		f 4 -2913 3140 3141 -3134
		mu 0 4 1582 1588 1696 1692
		mu 1 4 1585 1591 1724 1720
		f 4 -2918 -3120 3142 -3141
		mu 0 4 1588 1591 1684 1696
		mu 1 4 1591 1594 1712 1724
		f 4 -3142 3143 3144 -3139
		mu 0 4 1692 1696 1697 1695
		mu 1 4 1720 1724 1725 1723
		f 4 -3143 -3122 3145 -3144
		mu 0 4 1696 1684 1685 1697
		mu 1 4 1724 1712 1713 1725
		f 4 -3137 3146 3147 3148
		mu 0 4 1694 1693 1698 1699
		mu 1 4 1722 1721 1726 1727
		f 4 -3140 3149 3150 -3147
		mu 0 4 1693 1695 1700 1698
		mu 1 4 1721 1723 1728 1726
		f 4 -3148 3151 3152 3153
		mu 0 4 1699 1698 1701 1702
		mu 1 4 1727 1726 1729 1730
		f 4 -3151 3154 3155 -3152
		mu 0 4 1698 1700 1703 1701
		mu 1 4 1726 1728 1731 1729
		f 4 -3145 3156 3157 -3150
		mu 0 4 1695 1697 1704 1700
		mu 1 4 1723 1725 1732 1728
		f 4 -3146 -3128 3158 -3157
		mu 0 4 1697 1685 1688 1704
		mu 1 4 1725 1713 1716 1732
		f 4 -3158 3159 3160 -3155
		mu 0 4 1700 1704 1705 1703
		mu 1 4 1728 1732 1733 1731
		f 4 -3159 -3130 3161 -3160
		mu 0 4 1704 1688 1689 1705
		mu 1 4 1732 1716 1717 1733
		f 4 3162 3163 3164 3165
		mu 0 4 1706 1707 1708 1709
		mu 1 4 1734 1735 1736 1737
		f 4 3166 3167 3168 -3164
		mu 0 4 1707 1710 1711 1708
		mu 1 4 1735 1738 1739 1736
		f 4 -3165 3169 3170 3171
		mu 0 4 1709 1708 1712 1713
		mu 1 4 1737 1736 1740 1741
		f 4 -3169 3172 3173 -3170
		mu 0 4 1708 1711 1714 1712
		mu 1 4 1736 1739 1742 1740
		f 4 3174 3175 3176 -3168
		mu 0 4 1710 1715 1716 1711
		mu 1 4 1738 1743 1744 1739
		f 4 3177 -2906 3178 -3176
		mu 0 4 1715 1555 1584 1716
		mu 1 4 1743 1558 1587 1744
		f 4 -3177 3179 3180 -3173
		mu 0 4 1711 1716 1717 1714
		mu 1 4 1739 1744 1745 1742
		f 4 -3179 -2903 3181 -3180
		mu 0 4 1716 1584 1579 1717
		mu 1 4 1744 1587 1582 1745
		f 4 -3171 3182 3183 3184
		mu 0 4 1713 1712 1718 1719
		mu 1 4 1741 1740 1746 1747
		f 4 -3174 3185 3186 -3183
		mu 0 4 1712 1714 1720 1718
		mu 1 4 1740 1742 1748 1746
		f 4 -3184 3187 3188 3189
		mu 0 4 1719 1718 1721 1722
		mu 1 4 1747 1746 1749 1750
		f 4 -3187 3190 3191 -3188
		mu 0 4 1718 1720 1723 1721
		mu 1 4 1746 1748 1751 1749
		f 4 -3181 3192 3193 -3186
		mu 0 4 1714 1717 1724 1720
		mu 1 4 1742 1745 1752 1748
		f 4 -3182 -2895 3194 -3193
		mu 0 4 1717 1579 1576 1724
		mu 1 4 1745 1582 1579 1752
		f 4 -3194 3195 3196 -3191
		mu 0 4 1720 1724 1725 1723
		mu 1 4 1748 1752 1753 1751
		f 4 -3195 -2891 3197 -3196
		mu 0 4 1724 1576 1575 1725
		mu 1 4 1752 1579 1578 1753
		f 4 -3178 3198 3199 -2855
		mu 0 4 1555 1715 1726 1556
		mu 1 4 1558 1743 1754 1559
		f 4 -3175 3200 3201 -3199
		mu 0 4 1715 1710 1727 1726
		mu 1 4 1743 1738 1755 1754
		f 4 -3200 3202 3203 -2859
		mu 0 4 1556 1726 1728 1559
		mu 1 4 1559 1754 1756 1562
		f 4 -3202 3204 3205 -3203
		mu 0 4 1726 1727 1729 1728
		mu 1 4 1754 1755 1757 1756
		f 4 -3167 3206 3207 -3201
		mu 0 4 1710 1707 1730 1727
		mu 1 4 1738 1735 1758 1755
		f 4 -3163 3208 3209 -3207
		mu 0 4 1707 1706 1731 1730
		mu 1 4 1735 1734 1759 1758
		f 4 -3208 3210 3211 -3205
		mu 0 4 1727 1730 1732 1729
		mu 1 4 1755 1758 1760 1757
		f 4 -3210 3212 3213 -3211
		mu 0 4 1730 1731 1733 1732
		mu 1 4 1758 1759 1761 1760
		f 4 -3204 3214 3215 -2867
		mu 0 4 1559 1728 1734 1564
		mu 1 4 1562 1756 1762 1567
		f 4 -3206 3216 3217 -3215
		mu 0 4 1728 1729 1735 1734
		mu 1 4 1756 1757 1763 1762
		f 4 -3216 3218 3219 -2870
		mu 0 4 1564 1734 1736 1566
		mu 1 4 1567 1762 1764 1569
		f 4 -3218 3220 3221 -3219
		mu 0 4 1734 1735 1737 1736
		mu 1 4 1762 1763 1765 1764
		f 4 -3212 3222 3223 -3217
		mu 0 4 1729 1732 1738 1735
		mu 1 4 1757 1760 1766 1763
		f 4 -3214 3224 3225 -3223
		mu 0 4 1732 1733 1739 1738
		mu 1 4 1760 1761 1767 1766
		f 4 -3224 3226 3227 -3221
		mu 0 4 1735 1738 1740 1737
		mu 1 4 1763 1766 1768 1765
		f 4 -3226 3228 3229 -3227
		mu 0 4 1738 1739 1741 1740
		mu 1 4 1766 1767 1769 1768
		f 4 -3133 3230 3231 -3198
		mu 0 4 1575 1691 1742 1725
		mu 1 4 1578 1719 1770 1753
		f 4 -3138 3232 3233 -3231
		mu 0 4 1691 1694 1743 1742
		mu 1 4 1719 1722 1771 1770
		f 4 -3232 3234 3235 -3197
		mu 0 4 1725 1742 1744 1723
		mu 1 4 1753 1770 1772 1751
		f 4 -3234 3236 3237 -3235
		mu 0 4 1742 1743 1745 1744
		mu 1 4 1770 1771 1773 1772
		f 4 -3149 3238 3239 -3233
		mu 0 4 1694 1699 1746 1743
		mu 1 4 1722 1727 1774 1771
		f 4 -3154 3240 3241 -3239
		mu 0 4 1699 1702 1747 1746
		mu 1 4 1727 1730 1775 1774
		f 4 -3240 3242 3243 -3237
		mu 0 4 1743 1746 1748 1745
		mu 1 4 1771 1774 1776 1773
		f 4 -3242 3244 3245 -3243
		mu 0 4 1746 1747 1749 1748
		mu 1 4 1774 1775 1777 1776
		f 4 -3236 3246 3247 -3192
		mu 0 4 1723 1744 1750 1721
		mu 1 4 1751 1772 1778 1749
		f 4 -3238 3248 3249 -3247
		mu 0 4 1744 1745 1751 1750
		mu 1 4 1772 1773 1779 1778
		f 4 -3248 3250 3251 -3189
		mu 0 4 1721 1750 1752 1722
		mu 1 4 1749 1778 1780 1750
		f 4 -3250 3252 3253 -3251
		mu 0 4 1750 1751 1753 1752
		mu 1 4 1778 1779 1781 1780
		f 4 -3244 3254 3255 -3249
		mu 0 4 1745 1748 1754 1751
		mu 1 4 1773 1776 1782 1779
		f 4 -3246 3256 3257 -3255
		mu 0 4 1748 1749 1755 1754
		mu 1 4 1776 1777 1783 1782
		f 4 -3256 3258 3259 -3253
		mu 0 4 1751 1754 1756 1753
		mu 1 4 1779 1782 1784 1781
		f 4 -3258 3260 3261 -3259
		mu 0 4 1754 1755 1757 1756
		mu 1 4 1782 1783 1785 1784
		f 4 3262 3263 3264 3265
		mu 0 4 1758 1759 1760 1761
		mu 1 4 1786 1787 1788 1789
		f 4 3266 3267 3268 -3264
		mu 0 4 1759 1762 1763 1760
		mu 1 4 1787 1790 1791 1788
		f 4 -3265 3269 3270 3271
		mu 0 4 1761 1760 1764 1765
		mu 1 4 1789 1788 1792 1793
		f 4 -3269 3272 3273 -3270
		mu 0 4 1760 1763 1766 1764
		mu 1 4 1788 1791 1794 1792
		f 4 3274 3275 3276 -3268
		mu 0 4 1762 1767 1768 1763
		mu 1 4 1790 1795 1796 1791
		f 4 3277 3278 3279 -3276
		mu 0 4 1767 1769 1770 1768
		mu 1 4 1795 1797 1798 1796
		f 4 -3277 3280 3281 -3273
		mu 0 4 1763 1768 1771 1766
		mu 1 4 1791 1796 1799 1794
		f 4 -3280 3282 3283 -3281
		mu 0 4 1768 1770 1772 1771
		mu 1 4 1796 1798 1800 1799
		f 4 -3271 3284 3285 3286
		mu 0 4 1765 1764 1773 1774
		mu 1 4 1793 1792 1801 1802
		f 4 -3274 3287 3288 -3285
		mu 0 4 1764 1766 1775 1773
		mu 1 4 1792 1794 1803 1801
		f 4 -3286 3289 -3230 3290
		mu 0 4 1774 1773 1740 1741
		mu 1 4 1802 1801 1768 1769
		f 4 -3289 3291 -3228 -3290
		mu 0 4 1773 1775 1737 1740
		mu 1 4 1801 1803 1765 1768
		f 4 -3282 3292 3293 -3288
		mu 0 4 1766 1771 1776 1775
		mu 1 4 1794 1799 1804 1803
		f 4 -3284 3294 3295 -3293
		mu 0 4 1771 1772 1777 1776
		mu 1 4 1799 1800 1805 1804
		f 4 -3294 3296 -3222 -3292
		mu 0 4 1775 1776 1736 1737
		mu 1 4 1803 1804 1764 1765
		f 4 -3296 3297 -3220 -3297
		mu 0 4 1776 1777 1566 1736
		mu 1 4 1804 1805 1569 1764
		f 4 3298 3299 3300 3301
		mu 0 4 1778 1779 1780 1781
		mu 1 4 1806 1807 1808 1809
		f 4 3302 3303 3304 -3300
		mu 0 4 1779 1782 1783 1780
		mu 1 4 1807 1810 1811 1808
		f 4 -3301 3305 3306 3307
		mu 0 4 1781 1780 1784 1785
		mu 1 4 1809 1808 1812 1813
		f 4 -3305 3308 3309 -3306
		mu 0 4 1780 1783 1786 1784
		mu 1 4 1808 1811 1814 1812
		f 4 3310 3311 3312 -3304
		mu 0 4 1782 1787 1788 1783
		mu 1 4 1810 1815 1816 1811
		f 4 3313 -3153 3314 -3312
		mu 0 4 1787 1702 1701 1788
		mu 1 4 1815 1730 1729 1816
		f 4 -3313 3315 3316 -3309
		mu 0 4 1783 1788 1789 1786
		mu 1 4 1811 1816 1817 1814
		f 4 -3315 -3156 3317 -3316
		mu 0 4 1788 1701 1703 1789
		mu 1 4 1816 1729 1731 1817
		f 4 -3307 3318 3319 3320
		mu 0 4 1785 1784 1790 1791
		mu 1 4 1813 1812 1818 1819
		f 4 -3310 3321 3322 -3319
		mu 0 4 1784 1786 1792 1790
		mu 1 4 1812 1814 1820 1818
		f 4 -3320 3323 3324 3325
		mu 0 4 1791 1790 1793 1794
		mu 1 4 1819 1818 1821 1822
		f 4 -3323 3326 3327 -3324
		mu 0 4 1790 1792 1795 1793
		mu 1 4 1818 1820 1823 1821
		f 4 -3317 3328 3329 -3322
		mu 0 4 1786 1789 1796 1792
		mu 1 4 1814 1817 1824 1820
		f 4 -3318 -3161 3330 -3329
		mu 0 4 1789 1703 1705 1796
		mu 1 4 1817 1731 1733 1824
		f 4 -3330 3331 3332 -3327
		mu 0 4 1792 1796 1797 1795
		mu 1 4 1820 1824 1825 1823
		f 4 -3331 -3162 3333 -3332
		mu 0 4 1796 1705 1689 1797
		mu 1 4 1824 1733 1717 1825
		f 4 3334 3335 3336 -3109
		mu 0 4 1673 1798 1799 1679
		mu 1 4 1701 1826 1827 1707
		f 4 3337 3338 3339 -3336
		mu 0 4 1798 1800 1801 1799
		mu 1 4 1826 1828 1829 1827
		f 4 -3337 3340 3341 -3113
		mu 0 4 1679 1799 1802 1681
		mu 1 4 1707 1827 1830 1709
		f 4 -3340 3342 3343 -3341
		mu 0 4 1799 1801 1803 1802
		mu 1 4 1827 1829 1831 1830
		f 4 3344 3345 3346 -3339
		mu 0 4 1800 1804 1805 1801
		mu 1 4 1828 1832 1833 1829
		f 4 -3347 3347 3348 -3343
		mu 0 4 1801 1805 1806 1803
		mu 1 4 1829 1833 1834 1831
		f 4 -3342 3349 3350 -3125
		mu 0 4 1681 1802 1807 1687
		mu 1 4 1709 1830 1835 1715
		f 4 -3344 3351 3352 -3350
		mu 0 4 1802 1803 1808 1807
		mu 1 4 1830 1831 1836 1835
		f 4 -3351 3353 -3334 -3129
		mu 0 4 1687 1807 1797 1689
		mu 1 4 1715 1835 1825 1717
		f 4 -3353 3354 -3333 -3354
		mu 0 4 1807 1808 1795 1797
		mu 1 4 1835 1836 1823 1825
		f 4 -3349 3355 3356 -3352
		mu 0 4 1803 1806 1809 1808
		mu 1 4 1831 1834 1837 1836
		f 4 -3357 3357 3358 -3355
		mu 0 4 1808 1809 1810 1795
		mu 1 4 1836 1837 1838 1823
		f 4 1421 3359 3360 -3093
		mu 0 4 692 833 1811 1671
		mu 1 4 1698 1839 1840 1699
		f 4 1424 3361 3362 -3360
		mu 0 4 833 835 1812 1811
		mu 1 4 1839 1841 1842 1840
		f 4 -3361 3363 -3335 -3097
		mu 0 4 1671 1811 1798 1673
		mu 1 4 1699 1840 1826 1701
		f 4 -3363 3364 -3338 -3364
		mu 0 4 1811 1812 1800 1798
		mu 1 4 1840 1842 1828 1826
		f 4 1429 3365 3366 -3362
		mu 0 4 835 837 1813 1812
		mu 1 4 1841 1843 1844 1842
		f 4 -3367 3367 -3345 -3365
		mu 0 4 1812 1813 1804 1800
		mu 1 4 1842 1844 1832 1828
		f 4 -3278 3368 3369 3370
		mu 0 4 1769 1767 1814 1815
		mu 1 4 1797 1795 1845 1846
		f 4 -3275 3371 3372 -3369
		mu 0 4 1767 1762 1816 1814
		mu 1 4 1795 1790 1847 1845
		f 4 -3370 3373 3374 3375
		mu 0 4 1815 1814 1817 1818
		mu 1 4 1846 1845 1848 1849
		f 4 -3373 3376 3377 -3374
		mu 0 4 1814 1816 1819 1817
		mu 1 4 1845 1847 1850 1848
		f 4 -3267 3378 3379 -3372
		mu 0 4 1762 1759 1820 1816
		mu 1 4 1790 1787 1851 1847
		f 4 -3263 3380 3381 -3379
		mu 0 4 1759 1758 1821 1820
		mu 1 4 1787 1786 1852 1851
		f 4 -3380 3382 3383 -3377
		mu 0 4 1816 1820 1822 1819
		mu 1 4 1847 1851 1853 1850
		f 4 -3382 3384 3385 -3383
		mu 0 4 1820 1821 1823 1822
		mu 1 4 1851 1852 1854 1853
		f 4 -3375 3386 3387 3388
		mu 0 4 1818 1817 1824 1825
		mu 1 4 1849 1848 1855 1856
		f 4 -3378 3389 3390 -3387
		mu 0 4 1817 1819 1826 1824
		mu 1 4 1848 1850 1857 1855
		f 4 -3388 3391 3392 3393
		mu 0 4 1825 1824 1827 1828
		mu 1 4 1856 1855 1858 1859
		f 4 -3391 3394 3395 -3392
		mu 0 4 1824 1826 1829 1827
		mu 1 4 1855 1857 1860 1858
		f 4 -3384 3396 3397 -3390
		mu 0 4 1819 1822 1830 1826
		mu 1 4 1850 1853 1861 1857
		f 4 -3386 3398 3399 -3397
		mu 0 4 1822 1823 1831 1830
		mu 1 4 1853 1854 1862 1861
		f 4 -3398 3400 3401 -3395
		mu 0 4 1826 1830 1832 1829
		mu 1 4 1857 1861 1863 1860
		f 4 -3400 3402 3403 -3401
		mu 0 4 1830 1831 1833 1832
		mu 1 4 1861 1862 1864 1863
		f 4 3404 3405 3406 3407
		mu 0 4 1834 1835 1836 1837
		mu 1 4 1865 1866 1867 1868
		f 4 3408 3409 3410 -3406
		mu 0 4 1835 1838 1839 1836
		mu 1 4 1866 1869 1870 1867
		f 4 -3407 3411 3412 3413
		mu 0 4 1837 1836 1840 1841
		mu 1 4 1868 1867 1871 1872
		f 4 -3411 3414 3415 -3412
		mu 0 4 1836 1839 1842 1840
		mu 1 4 1867 1870 1873 1871
		f 4 3416 3417 3418 -3410
		mu 0 4 1838 1843 1844 1839
		mu 1 4 1869 1874 1875 1870
		f 4 3419 3420 3421 -3418
		mu 0 4 1843 1845 1846 1844
		mu 1 4 1874 1876 1877 1875
		f 4 -3419 3422 3423 -3415
		mu 0 4 1839 1844 1847 1842
		mu 1 4 1870 1875 1878 1873
		f 4 -3422 3424 3425 -3423
		mu 0 4 1844 1846 1848 1847
		mu 1 4 1875 1877 1879 1878
		f 4 -3413 3426 3427 3428
		mu 0 4 1841 1840 1849 1850
		mu 1 4 1872 1871 1880 1881
		f 4 -3416 3429 3430 -3427
		mu 0 4 1840 1842 1851 1849
		mu 1 4 1871 1873 1882 1880
		f 4 -3428 3431 -3291 3432
		mu 0 4 1850 1849 1774 1741
		mu 1 4 1881 1880 1802 1769
		f 4 -3431 3433 -3287 -3432
		mu 0 4 1849 1851 1765 1774
		mu 1 4 1880 1882 1793 1802
		f 4 -3424 3434 3435 -3430
		mu 0 4 1842 1847 1852 1851
		mu 1 4 1873 1878 1883 1882
		f 4 -3426 3436 3437 -3435
		mu 0 4 1847 1848 1853 1852
		mu 1 4 1878 1879 1884 1883
		f 4 -3436 3438 -3272 -3434
		mu 0 4 1851 1852 1761 1765
		mu 1 4 1882 1883 1789 1793
		f 4 -3438 3439 -3266 -3439
		mu 0 4 1852 1853 1758 1761
		mu 1 4 1883 1884 1786 1789
		f 4 3440 3441 3442 3443
		mu 0 4 1854 1855 1856 1857
		mu 1 4 1885 1886 1887 1888
		f 4 3444 3445 3446 -3442
		mu 0 4 1855 1858 1859 1856
		mu 1 4 1886 1889 1890 1887
		f 4 -3443 3447 3448 3449
		mu 0 4 1857 1856 1860 1861
		mu 1 4 1888 1887 1891 1892
		f 4 -3447 3450 3451 -3448
		mu 0 4 1856 1859 1862 1860
		mu 1 4 1887 1890 1893 1891
		f 4 3452 3453 3454 -3446
		mu 0 4 1858 1863 1864 1859
		mu 1 4 1889 1894 1895 1890
		f 4 3455 3456 3457 -3454
		mu 0 4 1863 1865 1866 1864
		mu 1 4 1894 1896 1897 1895
		f 4 -3455 3458 3459 -3451
		mu 0 4 1859 1864 1867 1862
		mu 1 4 1890 1895 1898 1893
		f 4 -3458 3460 3461 -3459
		mu 0 4 1864 1866 1868 1867
		mu 1 4 1895 1897 1899 1898
		f 4 -3449 3462 3463 3464
		mu 0 4 1861 1860 1869 1870
		mu 1 4 1892 1891 1900 1901
		f 4 -3452 3465 3466 -3463
		mu 0 4 1860 1862 1871 1869
		mu 1 4 1891 1893 1902 1900
		f 4 -3464 3467 -3209 3468
		mu 0 4 1870 1869 1731 1706
		mu 1 4 1901 1900 1759 1734
		f 4 -3467 3469 -3213 -3468
		mu 0 4 1869 1871 1733 1731
		mu 1 4 1900 1902 1761 1759
		f 4 -3460 3470 3471 -3466
		mu 0 4 1862 1867 1872 1871
		mu 1 4 1893 1898 1903 1902
		f 4 -3462 3472 3473 -3471
		mu 0 4 1867 1868 1873 1872
		mu 1 4 1898 1899 1904 1903
		f 4 -3472 3474 -3225 -3470
		mu 0 4 1871 1872 1739 1733
		mu 1 4 1902 1903 1767 1761
		f 4 -3474 3475 -3229 -3475
		mu 0 4 1872 1873 1741 1739
		mu 1 4 1903 1904 1769 1767
		f 4 -3440 3476 3477 -3381
		mu 0 4 1758 1853 1874 1821
		mu 1 4 1786 1884 1905 1852
		f 4 -3437 3478 3479 -3477
		mu 0 4 1853 1848 1875 1874
		mu 1 4 1884 1879 1906 1905
		f 4 -3478 3480 3481 -3385
		mu 0 4 1821 1874 1876 1823
		mu 1 4 1852 1905 1907 1854
		f 4 -3480 3482 3483 -3481
		mu 0 4 1874 1875 1877 1876
		mu 1 4 1905 1906 1908 1907
		f 4 -3425 3484 3485 -3479
		mu 0 4 1848 1846 1878 1875
		mu 1 4 1879 1877 1909 1906
		f 4 -3421 3486 3487 -3485
		mu 0 4 1846 1845 1879 1878
		mu 1 4 1877 1876 1910 1909
		f 4 -3486 3488 3489 -3483
		mu 0 4 1875 1878 1880 1877
		mu 1 4 1906 1909 1911 1908
		f 4 -3488 3490 3491 -3489
		mu 0 4 1878 1879 1881 1880
		mu 1 4 1909 1910 1912 1911
		f 4 -3482 3492 3493 -3399
		mu 0 4 1823 1876 1882 1831
		mu 1 4 1854 1907 1913 1862
		f 4 -3484 3494 3495 -3493
		mu 0 4 1876 1877 1883 1882
		mu 1 4 1907 1908 1914 1913
		f 4 -3494 3496 3497 -3403
		mu 0 4 1831 1882 1884 1833
		mu 1 4 1862 1913 1915 1864
		f 4 -3496 3498 3499 -3497
		mu 0 4 1882 1883 1885 1884
		mu 1 4 1913 1914 1916 1915
		f 4 -3490 3500 3501 -3495
		mu 0 4 1877 1880 1886 1883
		mu 1 4 1908 1911 1917 1914
		f 4 -3492 3502 3503 -3501
		mu 0 4 1880 1881 1887 1886
		mu 1 4 1911 1912 1918 1917
		f 4 -3502 3504 3505 -3499
		mu 0 4 1883 1886 1888 1885
		mu 1 4 1914 1917 1919 1916
		f 4 -3504 3506 3507 -3505
		mu 0 4 1886 1887 1889 1888
		mu 1 4 1917 1918 1920 1919
		f 4 -3444 3508 3509 3510
		mu 0 4 1854 1857 1890 1891
		mu 1 4 1885 1888 1921 1922
		f 4 -3450 3511 3512 -3509
		mu 0 4 1857 1861 1892 1890
		mu 1 4 1888 1892 1923 1921
		f 4 -3510 3513 3514 3515
		mu 0 4 1891 1890 1893 1894
		mu 1 4 1922 1921 1924 1925
		f 4 -3513 3516 3517 -3514
		mu 0 4 1890 1892 1895 1893
		mu 1 4 1921 1923 1926 1924
		f 4 -3465 3518 3519 -3512
		mu 0 4 1861 1870 1896 1892
		mu 1 4 1892 1901 1927 1923
		f 4 -3469 -3166 3520 -3519
		mu 0 4 1870 1706 1709 1896
		mu 1 4 1901 1734 1737 1927
		f 4 -3520 3521 3522 -3517
		mu 0 4 1892 1896 1897 1895
		mu 1 4 1923 1927 1928 1926
		f 4 -3521 -3172 3523 -3522
		mu 0 4 1896 1709 1713 1897
		mu 1 4 1927 1737 1741 1928
		f 4 -3515 3524 3525 3526
		mu 0 4 1894 1893 1898 1899
		mu 1 4 1925 1924 1929 1930
		f 4 -3518 3527 3528 -3525
		mu 0 4 1893 1895 1900 1898
		mu 1 4 1924 1926 1931 1929
		f 4 -3526 3529 3530 3531
		mu 0 4 1899 1898 1901 1902
		mu 1 4 1930 1929 1932 1933
		f 4 -3529 3532 3533 -3530
		mu 0 4 1898 1900 1903 1901
		mu 1 4 1929 1931 1934 1932
		f 4 -3523 3534 3535 -3528
		mu 0 4 1895 1897 1904 1900
		mu 1 4 1926 1928 1935 1931
		f 4 -3524 -3185 3536 -3535
		mu 0 4 1897 1713 1719 1904
		mu 1 4 1928 1741 1747 1935
		f 4 -3536 3537 3538 -3533
		mu 0 4 1900 1904 1905 1903
		mu 1 4 1931 1935 1936 1934
		f 4 -3537 -3190 3539 -3538
		mu 0 4 1904 1719 1722 1905
		mu 1 4 1935 1747 1750 1936
		f 4 3540 3541 3542 3543
		mu 0 4 1906 1907 1908 1909
		mu 1 4 1937 1938 1939 1940
		f 4 3544 3545 3546 -3542
		mu 0 4 1907 1910 1911 1908
		mu 1 4 1938 1941 1942 1939
		f 4 -3543 3547 3548 3549
		mu 0 4 1909 1908 1912 1913
		mu 1 4 1940 1939 1943 1944
		f 4 -3547 3550 3551 -3548
		mu 0 4 1908 1911 1914 1912
		mu 1 4 1939 1942 1945 1943
		f 4 3552 3553 3554 -3546
		mu 0 4 1910 1915 1916 1911
		mu 1 4 1941 1946 1947 1942
		f 4 3555 -3511 3556 -3554
		mu 0 4 1915 1854 1891 1916
		mu 1 4 1946 1885 1922 1947
		f 4 -3555 3557 3558 -3551
		mu 0 4 1911 1916 1917 1914
		mu 1 4 1942 1947 1948 1945
		f 4 -3557 -3516 3559 -3558
		mu 0 4 1916 1891 1894 1917
		mu 1 4 1947 1922 1925 1948
		f 4 -3549 3560 3561 3562
		mu 0 4 1913 1912 1918 1919
		mu 1 4 1944 1943 1949 1950
		f 4 -3552 3563 3564 -3561
		mu 0 4 1912 1914 1920 1918
		mu 1 4 1943 1945 1951 1949
		f 4 -3562 3565 3566 3567
		mu 0 4 1919 1918 1921 1922
		mu 1 4 1950 1949 1952 1953
		f 4 -3565 3568 3569 -3566
		mu 0 4 1918 1920 1923 1921
		mu 1 4 1949 1951 1954 1952
		f 4 -3559 3570 3571 -3564
		mu 0 4 1914 1917 1924 1920
		mu 1 4 1945 1948 1955 1951
		f 4 -3560 -3527 3572 -3571
		mu 0 4 1917 1894 1899 1924
		mu 1 4 1948 1925 1930 1955
		f 4 -3572 3573 3574 -3569
		mu 0 4 1920 1924 1925 1923
		mu 1 4 1951 1955 1956 1954
		f 4 -3573 -3532 3575 -3574
		mu 0 4 1924 1899 1902 1925
		mu 1 4 1955 1930 1933 1956
		f 4 3576 3577 3578 3579
		mu 0 4 1926 1927 1928 1929
		mu 1 4 1957 1958 1959 1960
		f 4 3580 3581 3582 -3578
		mu 0 4 1927 1930 1931 1928
		mu 1 4 1958 1961 1962 1959
		f 4 -3579 3583 3584 3585
		mu 0 4 1929 1928 1932 1933
		mu 1 4 1960 1959 1963 1964
		f 4 -3583 3586 3587 -3584
		mu 0 4 1928 1931 1934 1932
		mu 1 4 1959 1962 1965 1963
		f 4 3588 3589 3590 -3582
		mu 0 4 1930 1935 1936 1931
		mu 1 4 1961 1966 1967 1962
		f 4 3591 -3567 3592 -3590
		mu 0 4 1935 1922 1921 1936
		mu 1 4 1966 1953 1952 1967
		f 4 -3591 3593 3594 -3587
		mu 0 4 1931 1936 1937 1934
		mu 1 4 1962 1967 1968 1965
		f 4 -3593 -3570 3595 -3594
		mu 0 4 1936 1921 1923 1937
		mu 1 4 1967 1952 1954 1968
		f 4 -3585 3596 3597 3598
		mu 0 4 1933 1932 1938 1939
		mu 1 4 1964 1963 1969 1970
		f 4 -3588 3599 3600 -3597
		mu 0 4 1932 1934 1940 1938
		mu 1 4 1963 1965 1971 1969
		f 4 -3598 3601 3602 3603
		mu 0 4 1939 1938 1941 1942
		mu 1 4 1970 1969 1972 1973
		f 4 -3601 3604 3605 -3602
		mu 0 4 1938 1940 1943 1941
		mu 1 4 1969 1971 1974 1972
		f 4 -3595 3606 3607 -3600
		mu 0 4 1934 1937 1944 1940
		mu 1 4 1965 1968 1975 1971
		f 4 -3596 -3575 3608 -3607
		mu 0 4 1937 1923 1925 1944
		mu 1 4 1968 1954 1956 1975
		f 4 -3608 3609 3610 -3605
		mu 0 4 1940 1944 1945 1943
		mu 1 4 1971 1975 1976 1974
		f 4 -3609 -3576 3611 -3610
		mu 0 4 1944 1925 1902 1945
		mu 1 4 1975 1956 1933 1976
		f 4 3612 3613 3614 3615
		mu 0 4 1946 1947 1948 1949
		mu 1 4 1977 1978 1979 1980
		f 4 3616 3617 3618 -3614
		mu 0 4 1947 1950 1951 1948
		mu 1 4 1978 1981 1982 1979
		f 4 -3615 3619 3620 3621
		mu 0 4 1949 1948 1952 1953
		mu 1 4 1980 1979 1983 1984
		f 4 -3619 3622 3623 -3620
		mu 0 4 1948 1951 1954 1952
		mu 1 4 1979 1982 1985 1983
		f 4 3624 3625 3626 -3618
		mu 0 4 1950 1955 1956 1951
		mu 1 4 1981 1986 1987 1982
		f 4 3627 -3456 3628 -3626
		mu 0 4 1955 1865 1863 1956
		mu 1 4 1986 1896 1894 1987
		f 4 -3627 3629 3630 -3623
		mu 0 4 1951 1956 1957 1954
		mu 1 4 1982 1987 1988 1985
		f 4 -3629 -3453 3631 -3630
		mu 0 4 1956 1863 1858 1957
		mu 1 4 1987 1894 1889 1988
		f 4 -3621 3632 3633 3634
		mu 0 4 1953 1952 1958 1959
		mu 1 4 1984 1983 1989 1990
		f 4 -3624 3635 3636 -3633
		mu 0 4 1952 1954 1960 1958
		mu 1 4 1983 1985 1991 1989
		f 4 -3634 3637 -3541 3638
		mu 0 4 1959 1958 1907 1906
		mu 1 4 1990 1989 1938 1937
		f 4 -3637 3639 -3545 -3638
		mu 0 4 1958 1960 1910 1907
		mu 1 4 1989 1991 1941 1938
		f 4 -3631 3640 3641 -3636
		mu 0 4 1954 1957 1961 1960
		mu 1 4 1985 1988 1992 1991
		f 4 -3632 -3445 3642 -3641
		mu 0 4 1957 1858 1855 1961
		mu 1 4 1988 1889 1886 1992
		f 4 -3642 3643 -3553 -3640
		mu 0 4 1960 1961 1915 1910
		mu 1 4 1991 1992 1946 1941
		f 4 -3643 -3441 -3556 -3644
		mu 0 4 1961 1855 1854 1915
		mu 1 4 1992 1886 1885 1946
		f 4 -3628 3644 3645 3646
		mu 0 4 1865 1955 1962 1963
		mu 1 4 1896 1986 1993 1994
		f 4 -3625 3647 3648 -3645
		mu 0 4 1955 1950 1964 1962
		mu 1 4 1986 1981 1995 1993
		f 4 -3646 3649 3650 3651
		mu 0 4 1963 1962 1965 1966
		mu 1 4 1994 1993 1996 1997
		f 4 -3649 3652 3653 -3650
		mu 0 4 1962 1964 1967 1965
		mu 1 4 1993 1995 1998 1996
		f 4 -3617 3654 3655 -3648
		mu 0 4 1950 1947 1968 1964
		mu 1 4 1981 1978 1999 1995
		f 4 -3613 3656 3657 -3655
		mu 0 4 1947 1946 1969 1968
		mu 1 4 1978 1977 2000 1999
		f 4 -3656 3658 3659 -3653
		mu 0 4 1964 1968 1970 1967
		mu 1 4 1995 1999 2001 1998
		f 4 -3658 3660 3661 -3659
		mu 0 4 1968 1969 1971 1970
		mu 1 4 1999 2000 2002 2001
		f 4 -3651 3662 3663 3664
		mu 0 4 1966 1965 1972 1973
		mu 1 4 1997 1996 2003 2004
		f 4 -3654 3665 3666 -3663
		mu 0 4 1965 1967 1974 1972
		mu 1 4 1996 1998 2005 2003
		f 4 -3664 3667 -3405 3668
		mu 0 4 1973 1972 1835 1834
		mu 1 4 2004 2003 1866 1865
		f 4 -3667 3669 -3409 -3668
		mu 0 4 1972 1974 1838 1835
		mu 1 4 2003 2005 1869 1866
		f 4 -3660 3670 3671 -3666
		mu 0 4 1967 1970 1975 1974
		mu 1 4 1998 2001 2006 2005
		f 4 -3662 3672 3673 -3671
		mu 0 4 1970 1971 1976 1975
		mu 1 4 2001 2002 2007 2006
		f 4 -3672 3674 -3417 -3670
		mu 0 4 1974 1975 1843 1838
		mu 1 4 2005 2006 1874 1869
		f 4 -3674 3675 -3420 -3675
		mu 0 4 1975 1976 1845 1843
		mu 1 4 2006 2007 1876 1874
		f 4 3676 3677 3678 3679
		mu 0 4 1977 1978 1979 1980
		mu 1 4 2008 2009 2010 2011
		f 4 3680 3681 3682 -3678
		mu 0 4 1978 1981 1982 1979
		mu 1 4 2009 2012 2013 2010
		f 4 -3679 3683 3684 3685
		mu 0 4 1980 1979 1983 1984
		mu 1 4 2011 2010 2014 2015
		f 4 -3683 3686 3687 -3684
		mu 0 4 1979 1982 1985 1983
		mu 1 4 2010 2013 2016 2014
		f 4 3688 3689 3690 -3682
		mu 0 4 1981 1986 1987 1982
		mu 1 4 2012 2017 2018 2013
		f 4 3691 3692 3693 -3690
		mu 0 4 1986 1988 1989 1987
		mu 1 4 2017 2019 2020 2018
		f 4 -3691 3694 3695 -3687
		mu 0 4 1982 1987 1990 1985
		mu 1 4 2013 2018 2021 2016
		f 4 -3694 3696 3697 -3695
		mu 0 4 1987 1989 1991 1990
		mu 1 4 2018 2020 2022 2021
		f 4 -3685 3698 3699 3700
		mu 0 4 1984 1983 1992 1993
		mu 1 4 2015 2014 2023 2024
		f 4 -3688 3701 3702 -3699
		mu 0 4 1983 1985 1994 1992
		mu 1 4 2014 2016 2025 2023
		f 4 -3700 3703 -3262 3704
		mu 0 4 1993 1992 1756 1757
		mu 1 4 2024 2023 1784 1785
		f 4 -3703 3705 -3260 -3704
		mu 0 4 1992 1994 1753 1756
		mu 1 4 2023 2025 1781 1784
		f 4 -3696 3706 3707 -3702
		mu 0 4 1985 1990 1995 1994
		mu 1 4 2016 2021 2026 2025
		f 4 -3698 3708 3709 -3707
		mu 0 4 1990 1991 1996 1995
		mu 1 4 2021 2022 2027 2026
		f 4 -3708 3710 3711 -3706
		mu 0 4 1994 1995 1997 1753
		mu 1 4 2025 2026 2028 1781
		f 4 -3710 3712 3713 -3711
		mu 0 4 1995 1996 1998 1997
		mu 1 4 2026 2027 2029 2028
		f 4 3714 3715 3716 -3299
		mu 0 4 1778 1999 2000 1779
		mu 1 4 1806 2030 2031 1807
		f 4 3717 3718 3719 -3716
		mu 0 4 1999 2001 2002 2000
		mu 1 4 2030 2032 2033 2031
		f 4 -3717 3720 3721 -3303
		mu 0 4 1779 2000 2003 1782
		mu 1 4 1807 2031 2034 1810
		f 4 -3720 3722 3723 -3721
		mu 0 4 2000 2002 2004 2003
		mu 1 4 2031 2033 2035 2034
		f 4 3724 3725 3726 -3719
		mu 0 4 2001 2005 2006 2002
		mu 1 4 2032 2036 2037 2033
		f 4 3727 -3680 3728 -3726
		mu 0 4 2005 1977 1980 2006
		mu 1 4 2036 2008 2011 2037
		f 4 -3727 3729 3730 -3723
		mu 0 4 2002 2006 2007 2004
		mu 1 4 2033 2037 2038 2035
		f 4 -3729 -3686 3731 -3730
		mu 0 4 2006 1980 1984 2007
		mu 1 4 2037 2011 2015 2038
		f 4 -3722 3732 3733 -3311
		mu 0 4 1782 2003 2008 1787
		mu 1 4 1810 2034 2039 1815
		f 4 -3724 3734 3735 -3733
		mu 0 4 2003 2004 2009 2008
		mu 1 4 2034 2035 2040 2039
		f 4 -3734 3736 -3241 -3314
		mu 0 4 1787 2008 1747 1702
		mu 1 4 1815 2039 1775 1730
		f 4 -3736 3737 -3245 -3737
		mu 0 4 2008 2009 1749 1747
		mu 1 4 2039 2040 1777 1775
		f 4 -3731 3738 3739 -3735
		mu 0 4 2004 2007 2010 2009
		mu 1 4 2035 2038 2041 2040
		f 4 -3732 -3701 3740 -3739
		mu 0 4 2007 1984 1993 2010
		mu 1 4 2038 2015 2024 2041
		f 4 -3740 3741 -3257 -3738
		mu 0 4 2009 2010 1755 1749
		mu 1 4 2040 2041 1783 1777
		f 4 -3741 -3705 -3261 -3742
		mu 0 4 2010 1993 1757 1755
		mu 1 4 2041 2024 1785 1783
		f 4 -3544 3742 3743 3744
		mu 0 4 1906 1909 2011 2012
		mu 1 4 1937 1940 2042 2043
		f 4 -3550 3745 3746 -3743
		mu 0 4 1909 1913 2013 2011
		mu 1 4 1940 1944 2044 2042
		f 4 -3744 3747 3748 3749
		mu 0 4 2012 2011 2014 2015
		mu 1 4 2043 2042 2045 2046
		f 4 -3747 3750 3751 -3748
		mu 0 4 2011 2013 2016 2014
		mu 1 4 2042 2044 2047 2045
		f 4 -3563 3752 3753 -3746
		mu 0 4 1913 1919 2017 2013
		mu 1 4 1944 1950 2048 2044
		f 4 -3568 3754 3755 -3753
		mu 0 4 1919 1922 2018 2017
		mu 1 4 1950 1953 2049 2048
		f 4 -3754 3756 3757 -3751
		mu 0 4 2013 2017 2019 2016
		mu 1 4 2044 2048 2050 2047
		f 4 -3756 3758 3759 -3757
		mu 0 4 2017 2018 2020 2019
		mu 1 4 2048 2049 2051 2050
		f 4 -3749 3760 3761 3762
		mu 0 4 2015 2014 2021 2022
		mu 1 4 2046 2045 2052 2053
		f 4 -3752 3763 3764 -3761
		mu 0 4 2014 2016 2023 2021
		mu 1 4 2045 2047 2054 2052
		f 4 -3762 3765 3766 3767
		mu 0 4 2022 2021 2024 2025
		mu 1 4 2053 2052 2055 2056
		f 4 -3765 3768 3769 -3766
		mu 0 4 2021 2023 2026 2024
		mu 1 4 2052 2054 2057 2055
		f 4 -3758 3770 3771 -3764
		mu 0 4 2016 2019 2027 2023
		mu 1 4 2047 2050 2058 2054
		f 4 -3760 3772 3773 -3771
		mu 0 4 2019 2020 2028 2027
		mu 1 4 2050 2051 2059 2058
		f 4 -3772 3774 3775 -3769
		mu 0 4 2023 2027 2029 2026
		mu 1 4 2054 2058 2060 2057
		f 4 -3774 3776 3777 -3775
		mu 0 4 2027 2028 2030 2029
		mu 1 4 2058 2059 2061 2060
		f 4 3778 3779 3780 3781
		mu 0 4 2031 2032 2033 2034
		mu 1 4 2062 2063 2064 2065
		f 4 3782 3783 3784 -3780
		mu 0 4 2032 2035 2036 2033
		mu 1 4 2063 2066 2067 2064
		f 4 -3781 3785 3786 3787
		mu 0 4 2034 2033 2037 2038
		mu 1 4 2065 2064 2068 2069
		f 4 -3785 3788 3789 -3786
		mu 0 4 2033 2036 2039 2037
		mu 1 4 2064 2067 2070 2068
		f 4 3790 3791 3792 -3784
		mu 0 4 2035 2040 2041 2036
		mu 1 4 2066 2071 2072 2067
		f 4 3793 -3616 3794 -3792
		mu 0 4 2040 1946 1949 2041
		mu 1 4 2071 1977 1980 2072
		f 4 -3793 3795 3796 -3789
		mu 0 4 2036 2041 2042 2039
		mu 1 4 2067 2072 2073 2070
		f 4 -3795 -3622 3797 -3796
		mu 0 4 2041 1949 1953 2042
		mu 1 4 2072 1980 1984 2073
		f 4 -3787 3798 3799 3800
		mu 0 4 2038 2037 2043 2044
		mu 1 4 2069 2068 2074 2075
		f 4 -3790 3801 3802 -3799
		mu 0 4 2037 2039 2045 2043
		mu 1 4 2068 2070 2076 2074
		f 4 -3800 3803 -3768 3804
		mu 0 4 2044 2043 2022 2025
		mu 1 4 2075 2074 2053 2056
		f 4 -3803 3805 -3763 -3804
		mu 0 4 2043 2045 2015 2022
		mu 1 4 2074 2076 2046 2053
		f 4 -3797 3806 3807 -3802
		mu 0 4 2039 2042 2046 2045
		mu 1 4 2070 2073 2077 2076
		f 4 -3798 -3635 3808 -3807
		mu 0 4 2042 1953 1959 2046
		mu 1 4 2073 1984 1990 2077
		f 4 -3808 3809 -3750 -3806
		mu 0 4 2045 2046 2012 2015
		mu 1 4 2076 2077 2043 2046
		f 4 -3809 -3639 -3745 -3810
		mu 0 4 2046 1959 1906 2012
		mu 1 4 2077 1990 1937 2043
		f 4 -3794 3810 3811 -3657
		mu 0 4 1946 2040 2047 1969
		mu 1 4 1977 2071 2078 2000
		f 4 -3791 3812 3813 -3811
		mu 0 4 2040 2035 2048 2047
		mu 1 4 2071 2066 2079 2078
		f 4 -3812 3814 3815 -3661
		mu 0 4 1969 2047 2049 1971
		mu 1 4 2000 2078 2080 2002
		f 4 -3814 3816 3817 -3815
		mu 0 4 2047 2048 2050 2049
		mu 1 4 2078 2079 2081 2080
		f 4 -3783 3818 3819 -3813
		mu 0 4 2035 2032 2051 2048
		mu 1 4 2066 2063 2082 2079
		f 4 -3779 3820 3821 -3819
		mu 0 4 2032 2031 2052 2051
		mu 1 4 2063 2062 2083 2082
		f 4 -3820 3822 3823 -3817
		mu 0 4 2048 2051 2053 2050
		mu 1 4 2079 2082 2084 2081
		f 4 -3822 3824 3825 -3823
		mu 0 4 2051 2052 2054 2053
		mu 1 4 2082 2083 2085 2084
		f 4 -3816 3826 3827 -3673
		mu 0 4 1971 2049 2055 1976
		mu 1 4 2002 2080 2086 2007
		f 4 -3818 3828 3829 -3827
		mu 0 4 2049 2050 2056 2055
		mu 1 4 2080 2081 2087 2086
		f 4 -3828 3830 -3487 -3676
		mu 0 4 1976 2055 1879 1845
		mu 1 4 2007 2086 1910 1876
		f 4 -3830 3831 -3491 -3831
		mu 0 4 2055 2056 1881 1879
		mu 1 4 2086 2087 1912 1910
		f 4 -3824 3832 3833 -3829
		mu 0 4 2050 2053 2057 2056
		mu 1 4 2081 2084 2088 2087
		f 4 -3826 3834 3835 -3833
		mu 0 4 2053 2054 2058 2057
		mu 1 4 2084 2085 2089 2088
		f 4 -3834 3836 -3503 -3832
		mu 0 4 2056 2057 1887 1881
		mu 1 4 2087 2088 1918 1912
		f 4 -3836 3837 -3507 -3837
		mu 0 4 2057 2058 1889 1887
		mu 1 4 2088 2089 1920 1918
		f 4 -3393 3838 3839 3840
		mu 0 4 1828 1827 2059 2060
		mu 1 4 1859 1858 2090 2091
		f 4 -3396 3841 3842 -3839
		mu 0 4 1827 1829 2061 2059
		mu 1 4 1858 1860 2092 2090
		f 4 -3840 3843 3844 3845
		mu 0 4 2060 2059 2062 2063
		mu 1 4 2091 2090 2093 2094
		f 4 -3843 3846 3847 -3844
		mu 0 4 2059 2061 2064 2062
		mu 1 4 2090 2092 2095 2093
		f 4 -3402 3848 3849 -3842
		mu 0 4 1829 1832 2065 2061
		mu 1 4 1860 1863 2096 2092
		f 4 -3404 3850 3851 -3849
		mu 0 4 1832 1833 2066 2065
		mu 1 4 1863 1864 2097 2096
		f 4 -3850 3852 3853 -3847
		mu 0 4 2061 2065 2067 2064
		mu 1 4 2092 2096 2098 2095
		f 4 -3852 3854 3855 -3853
		mu 0 4 2065 2066 2068 2067
		mu 1 4 2096 2097 2099 2098
		f 4 -3845 3856 3857 3858
		mu 0 4 2063 2062 2069 2070
		mu 1 4 2094 2093 2100 2101
		f 4 -3848 3859 3860 -3857
		mu 0 4 2062 2064 2071 2069
		mu 1 4 2093 2095 2102 2100
		f 4 -3858 3861 3862 3863
		mu 0 4 2070 2069 2072 2073
		mu 1 4 2101 2100 2103 2104
		f 4 -3861 3864 3865 -3862
		mu 0 4 2069 2071 2038 2072
		mu 1 4 2100 2102 2069 2103
		f 4 -3854 3866 3867 -3860
		mu 0 4 2064 2067 2074 2071
		mu 1 4 2095 2098 2105 2102
		f 4 -3856 3868 3869 -3867
		mu 0 4 2067 2068 2075 2074
		mu 1 4 2098 2099 2106 2105
		f 4 -3868 3870 -3788 -3865
		mu 0 4 2071 2074 2034 2038
		mu 1 4 2102 2105 2065 2069
		f 4 -3870 3871 -3782 -3871
		mu 0 4 2074 2075 2031 2034
		mu 1 4 2105 2106 2062 2065
		f 4 3872 3873 3874 -3778
		mu 0 4 2030 2076 2077 2029
		mu 1 4 2061 2107 2108 2060
		f 4 3875 3876 3877 -3874
		mu 0 4 2076 2078 2079 2077
		mu 1 4 2107 2109 2110 2108
		f 4 -3875 3878 3879 -3776
		mu 0 4 2029 2077 2080 2026
		mu 1 4 2060 2108 2111 2057
		f 4 -3878 3880 3881 -3879
		mu 0 4 2077 2079 2081 2080
		mu 1 4 2108 2110 2112 2111
		f 4 3882 3883 3884 -3877
		mu 0 4 2078 2082 2083 2079
		mu 1 4 2109 2113 2114 2110
		f 4 3885 1951 3886 -3884
		mu 0 4 2082 1109 1108 2083
		mu 1 4 2113 2115 2116 2114
		f 4 -3885 3887 3888 -3881
		mu 0 4 2079 2083 2084 2081
		mu 1 4 2110 2114 2117 2112
		f 4 -3887 1955 3889 -3888
		mu 0 4 2083 1108 1111 2084
		mu 1 4 2114 2116 2118 2117
		f 4 -3880 3890 3891 -3770
		mu 0 4 2026 2080 2085 2024
		mu 1 4 2057 2111 2119 2055
		f 4 -3882 3892 3893 -3891
		mu 0 4 2080 2081 2086 2085
		mu 1 4 2111 2112 2120 2119
		f 4 -3892 3894 3895 -3767
		mu 0 4 2024 2085 2087 2025
		mu 1 4 2055 2119 2121 2056
		f 4 -3894 3896 3897 -3895
		mu 0 4 2085 2086 2088 2087
		mu 1 4 2119 2120 2122 2121
		f 4 -3889 3898 3899 -3893
		mu 0 4 2081 2084 2089 2086
		mu 1 4 2112 2117 2123 2120
		f 4 -3890 1967 3900 -3899
		mu 0 4 2084 1111 1117 2089
		mu 1 4 2117 2118 2124 2123
		f 4 -3900 3901 3902 -3897
		mu 0 4 2086 2089 2090 2088
		mu 1 4 2120 2123 2125 2122
		f 4 -3901 1971 3903 -3902
		mu 0 4 2089 1117 1119 2090
		mu 1 4 2123 2124 2126 2125
		f 4 3904 3905 3906 1976
		mu 0 4 1120 2091 2092 1121
		mu 1 4 2127 2128 2129 2130
		f 4 3907 -3841 3908 -3906
		mu 0 4 2091 1828 2060 2092
		mu 1 4 2128 1859 2091 2129
		f 4 -3907 3909 3910 1981
		mu 0 4 1121 2092 2093 1124
		mu 1 4 2130 2129 2131 2132
		f 4 -3909 -3846 3911 -3910
		mu 0 4 2092 2060 2063 2093
		mu 1 4 2129 2091 2094 2131
		f 4 -3911 3912 3913 1985
		mu 0 4 1124 2093 2094 1126
		mu 1 4 2132 2131 2133 2134
		f 4 -3912 -3859 3914 -3913
		mu 0 4 2093 2063 2070 2094
		mu 1 4 2131 2094 2101 2133
		f 4 -3914 3915 3916 1989
		mu 0 4 1126 2094 2095 1128
		mu 1 4 2134 2133 2135 2136
		f 4 -3915 -3864 3917 -3916
		mu 0 4 2094 2070 2073 2095
		mu 1 4 2133 2101 2104 2135
		f 4 -3081 3918 3919 1993
		mu 0 4 681 1665 2096 1130
		mu 1 4 1689 1688 2137 2138
		f 4 -3082 3920 3921 -3919
		mu 0 4 1665 1640 2097 2096
		mu 1 4 1688 1660 2139 2137
		f 4 -3920 3922 3923 1998
		mu 0 4 1130 2096 2098 1133
		mu 1 4 2138 2137 2140 2141
		f 4 -3922 3924 3925 -3923
		mu 0 4 2096 2097 2099 2098
		mu 1 4 2137 2139 2142 2140
		f 4 -3924 3926 3927 2003
		mu 0 4 1133 2098 2100 1136
		mu 1 4 2141 2140 2143 2144
		f 4 -3926 3928 3929 -3927
		mu 0 4 2098 2099 2101 2100
		mu 1 4 2140 2142 2145 2143
		f 4 -3928 3930 -3905 2007
		mu 0 4 1136 2100 2091 1120
		mu 1 4 2144 2143 2128 2127
		f 4 -3930 3931 -3908 -3931
		mu 0 4 2100 2101 1828 2091
		mu 1 4 2143 2145 1859 2128
		f 4 3932 3933 3934 3935
		mu 0 4 2102 2103 2104 2105
		mu 1 4 2146 2147 2148 2149
		f 4 3936 3937 3938 -3934
		mu 0 4 2103 2106 2107 2104
		mu 1 4 2147 2150 2151 2148
		f 4 -3935 3939 3940 3941
		mu 0 4 2105 2104 2108 2109
		mu 1 4 2149 2148 2152 2153
		f 4 -3939 3942 3943 -3940
		mu 0 4 2104 2107 2110 2108
		mu 1 4 2148 2151 2154 2152
		f 4 3944 3945 3946 -3938
		mu 0 4 2106 2111 2112 2107
		mu 1 4 2150 2155 2156 2151
		f 4 3947 3948 3949 -3946
		mu 0 4 2111 1977 2113 2112
		mu 1 4 2155 2008 2157 2156
		f 4 -3947 3950 3951 -3943
		mu 0 4 2107 2112 2114 2110
		mu 1 4 2151 2156 2158 2154
		f 4 -3950 3952 3953 -3951
		mu 0 4 2112 2113 2115 2114
		mu 1 4 2156 2157 2159 2158
		f 4 -3941 3954 3955 3956
		mu 0 4 2109 2108 2116 2117
		mu 1 4 2153 2152 2160 2161
		f 4 -3944 3957 3958 -3955
		mu 0 4 2108 2110 2118 2116
		mu 1 4 2152 2154 2162 2160
		f 4 -3956 3959 3960 3961
		mu 0 4 2117 2116 2119 2120
		mu 1 4 2161 2160 2163 2164
		f 4 -3959 3962 3963 -3960
		mu 0 4 2116 2118 2121 2119
		mu 1 4 2160 2162 2165 2163
		f 4 -3952 3964 3965 -3958
		mu 0 4 2110 2114 2122 2118
		mu 1 4 2154 2158 2166 2162
		f 4 -3954 3966 3967 -3965
		mu 0 4 2114 2115 2123 2122
		mu 1 4 2158 2159 2167 2166
		f 4 -3966 3968 3969 -3963
		mu 0 4 2118 2122 2124 2121
		mu 1 4 2162 2166 2168 2165
		f 4 -3968 3970 3971 -3969
		mu 0 4 2122 2123 2125 2124
		mu 1 4 2166 2167 2169 2168
		f 4 3972 3973 3974 -3933
		mu 0 4 2102 2126 2127 2103
		mu 1 4 2146 2170 2171 2147
		f 4 3975 3976 3977 -3974
		mu 0 4 2126 2128 2129 2127
		mu 1 4 2170 2172 2173 2171
		f 4 -3975 3978 3979 -3937
		mu 0 4 2103 2127 2130 2106
		mu 1 4 2147 2171 2174 2150
		f 4 -3978 3980 3981 -3979
		mu 0 4 2127 2129 2131 2130
		mu 1 4 2171 2173 2175 2174
		f 4 3982 3983 3984 -3977
		mu 0 4 2128 2132 2133 2129
		mu 1 4 2172 2176 2177 2173
		f 4 3985 3986 3987 -3984
		mu 0 4 2132 2134 2135 2133
		mu 1 4 2176 2178 2179 2177
		f 4 -3985 3988 3989 -3981
		mu 0 4 2129 2133 2136 2131
		mu 1 4 2173 2177 2180 2175
		f 4 -3988 3990 3991 -3989
		mu 0 4 2133 2135 2137 2136
		mu 1 4 2177 2179 2181 2180
		f 4 -3980 3992 3993 -3945
		mu 0 4 2106 2130 2138 2111
		mu 1 4 2150 2174 2182 2155
		f 4 -3982 3994 3995 -3993
		mu 0 4 2130 2131 2139 2138
		mu 1 4 2174 2175 2183 2182
		f 4 -3994 3996 -3677 -3948
		mu 0 4 2111 2138 1978 1977
		mu 1 4 2155 2182 2009 2008
		f 4 -3996 3997 -3681 -3997
		mu 0 4 2138 2139 1981 1978
		mu 1 4 2182 2183 2012 2009
		f 4 -3990 3998 3999 -3995
		mu 0 4 2131 2136 2140 2139
		mu 1 4 2175 2180 2184 2183
		f 4 -3992 4000 4001 -3999
		mu 0 4 2136 2137 2141 2140
		mu 1 4 2180 2181 2185 2184
		f 4 -4000 4002 -3689 -3998
		mu 0 4 2139 2140 1986 1981
		mu 1 4 2183 2184 2017 2012
		f 4 -4002 4003 -3692 -4003
		mu 0 4 2140 2141 1988 1986
		mu 1 4 2184 2185 2019 2017
		f 4 -3728 4004 4005 -3949
		mu 0 4 1977 2005 2142 2113
		mu 1 4 2008 2036 2186 2157
		f 4 -3725 4006 4007 -4005
		mu 0 4 2005 2001 2143 2142
		mu 1 4 2036 2032 2187 2186
		f 4 -4006 4008 4009 -3953
		mu 0 4 2113 2142 2144 2115
		mu 1 4 2157 2186 2188 2159
		f 4 -4008 4010 4011 -4009
		mu 0 4 2142 2143 2145 2144
		mu 1 4 2186 2187 2189 2188
		f 4 -3718 4012 4013 -4007
		mu 0 4 2001 1999 2146 2143
		mu 1 4 2032 2030 2190 2187
		f 4 -3715 4014 4015 -4013
		mu 0 4 1999 1778 2147 2146
		mu 1 4 2030 1806 2191 2190
		f 4 -4014 4016 4017 -4011
		mu 0 4 2143 2146 2148 2145
		mu 1 4 2187 2190 2192 2189
		f 4 -4016 4018 4019 -4017
		mu 0 4 2146 2147 2149 2148
		mu 1 4 2190 2191 2193 2192
		f 4 -4010 4020 4021 -3967
		mu 0 4 2115 2144 2150 2123
		mu 1 4 2159 2188 2194 2167
		f 4 -4012 4022 4023 -4021
		mu 0 4 2144 2145 2151 2150
		mu 1 4 2188 2189 2195 2194
		f 4 -4022 4024 4025 -3971
		mu 0 4 2123 2150 2152 2125
		mu 1 4 2167 2194 2196 2169
		f 4 -4024 4026 4027 -4025
		mu 0 4 2150 2151 2153 2152
		mu 1 4 2194 2195 2197 2196
		f 4 -4018 4028 4029 -4023
		mu 0 4 2145 2148 2154 2151
		mu 1 4 2189 2192 2198 2195
		f 4 -4020 4030 4031 -4029
		mu 0 4 2148 2149 2155 2154
		mu 1 4 2192 2193 2199 2198
		f 4 -4030 4032 4033 -4027
		mu 0 4 2151 2154 2156 2153
		mu 1 4 2195 2198 2200 2197
		f 4 -4032 4034 4035 -4033
		mu 0 4 2154 2155 2157 2156
		mu 1 4 2198 2199 2201 2200
		f 4 -3302 4036 4037 -4015
		mu 0 4 1778 1781 2158 2147
		mu 1 4 1806 1809 2202 2191
		f 4 -3308 4038 4039 -4037
		mu 0 4 1781 1785 2159 2158
		mu 1 4 1809 1813 2203 2202
		f 4 -4038 4040 4041 -4019
		mu 0 4 2147 2158 2160 2149
		mu 1 4 2191 2202 2204 2193
		f 4 -4040 4042 4043 -4041
		mu 0 4 2158 2159 2161 2160
		mu 1 4 2202 2203 2205 2204
		f 4 -3321 4044 4045 -4039
		mu 0 4 1785 1791 2162 2159
		mu 1 4 1813 1819 2206 2203
		f 4 -3326 4046 4047 -4045
		mu 0 4 1791 1794 2163 2162
		mu 1 4 1819 1822 2207 2206
		f 4 -4046 4048 4049 -4043
		mu 0 4 2159 2162 2164 2161
		mu 1 4 2203 2206 2208 2205
		f 4 -4637 -4049 -4048 4627
		mu 0 4 2165 2164 2162 2163
		mu 1 4 2209 2208 2206 2207
		f 4 -4042 4051 4052 -4031
		mu 0 4 2149 2160 2166 2155
		mu 1 4 2193 2204 2210 2199
		f 4 -4044 4053 4054 -4052
		mu 0 4 2160 2161 2167 2166
		mu 1 4 2204 2205 2211 2210
		f 4 -4053 4055 4056 -4035
		mu 0 4 2155 2166 2168 2157
		mu 1 4 2199 2210 2212 2201
		f 4 -4056 -4055 4632 4630
		mu 0 4 2168 2166 2167 2169
		mu 1 4 2212 2210 2211 2213
		f 4 -4054 4629 4628 -4633
		mu 0 4 2167 2161 2170 2169
		mu 1 4 2211 2205 2214 2213
		f 4 4060 4061 4062 -3987
		mu 0 4 2134 2171 2172 2135
		mu 1 4 2178 2215 2216 2179
		f 4 4063 4064 4065 -4062
		mu 0 4 2171 2173 2174 2172
		mu 1 4 2215 2217 2218 2216
		f 4 -4063 4066 4067 -3991
		mu 0 4 2135 2172 2175 2137
		mu 1 4 2179 2216 2219 2181
		f 4 -4066 4068 4069 -4067
		mu 0 4 2172 2174 2176 2175
		mu 1 4 2216 2218 2220 2219
		f 4 4070 4071 4072 -4065
		mu 0 4 2173 2177 2178 2174
		mu 1 4 2217 2221 2222 2218
		f 4 4073 4074 4075 -4072
		mu 0 4 2177 2179 2180 2178
		mu 1 4 2221 2223 2224 2222
		f 4 -4073 4076 4077 -4069
		mu 0 4 2174 2178 2181 2176
		mu 1 4 2218 2222 2225 2220
		f 4 -4076 4078 4079 -4077
		mu 0 4 2178 2180 2182 2181
		mu 1 4 2222 2224 2226 2225
		f 4 -4068 4080 4081 -4001
		mu 0 4 2137 2175 2183 2141
		mu 1 4 2181 2219 2227 2185
		f 4 -4070 4082 4083 -4081
		mu 0 4 2175 2176 2184 2183
		mu 1 4 2219 2220 2228 2227
		f 4 -4082 4084 -3693 -4004
		mu 0 4 2141 2183 1989 1988
		mu 1 4 2185 2227 2020 2019
		f 4 -4084 4085 -3697 -4085
		mu 0 4 2183 2184 1991 1989
		mu 1 4 2227 2228 2022 2020
		f 4 -4078 4086 4087 -4083
		mu 0 4 2176 2181 2185 2184
		mu 1 4 2220 2225 2229 2228
		f 4 -4080 4088 4089 -4087
		mu 0 4 2181 2182 2186 2185
		mu 1 4 2225 2226 2230 2229
		f 4 -4088 4090 -3709 -4086
		mu 0 4 2184 2185 1996 1991
		mu 1 4 2228 2229 2027 2022
		f 4 -4090 4091 -3713 -4091
		mu 0 4 2185 2186 1998 1996
		mu 1 4 2229 2230 2029 2027
		f 4 4094 4095 4096 -4036
		mu 0 4 2157 2187 2188 2156
		mu 1 4 2201 2231 2232 2200
		f 4 4097 4098 4099 -4096
		mu 0 4 2187 2189 2190 2188
		mu 1 4 2231 2233 2234 2232
		f 4 -4097 4100 4101 -4034
		mu 0 4 2156 2188 2191 2153
		mu 1 4 2200 2232 2235 2197
		f 4 -4100 4102 4103 -4101
		mu 0 4 2188 2190 2192 2191
		mu 1 4 2232 2234 2236 2235;
	setAttr ".fc[2000:2499]"
		f 4 4104 4105 4106 -4099
		mu 0 4 2189 2193 2194 2190
		mu 1 4 2233 2237 2238 2234
		f 4 4107 2185 4108 -4106
		mu 0 4 2193 2195 2196 2194
		mu 1 4 2237 2239 2240 2238
		f 4 -4107 4109 4110 -4103
		mu 0 4 2190 2194 2197 2192
		mu 1 4 2234 2238 2241 2236
		f 4 -4109 2189 4111 -4110
		mu 0 4 2194 2196 2198 2197
		mu 1 4 2238 2240 2242 2241
		f 4 -4102 4112 4113 -4028
		mu 0 4 2153 2191 2199 2152
		mu 1 4 2197 2235 2243 2196
		f 4 -4104 4114 4115 -4113
		mu 0 4 2191 2192 2200 2199
		mu 1 4 2235 2236 2244 2243
		f 4 -4114 4116 4117 -4026
		mu 0 4 2152 2199 2201 2125
		mu 1 4 2196 2243 2245 2169
		f 4 -4116 4118 4119 -4117
		mu 0 4 2199 2200 2202 2201
		mu 1 4 2243 2244 2246 2245
		f 4 -4111 4120 4121 -4115
		mu 0 4 2192 2197 2203 2200
		mu 1 4 2236 2241 2247 2244
		f 4 -4112 2201 4122 -4121
		mu 0 4 2197 2198 2204 2203
		mu 1 4 2241 2242 2248 2247
		f 4 -4122 4123 4124 -4119
		mu 0 4 2200 2203 2205 2202
		mu 1 4 2244 2247 2249 2246
		f 4 -4123 2205 4125 -4124
		mu 0 4 2203 2204 2206 2205
		mu 1 4 2247 2248 2250 2249
		f 4 -4118 4126 4127 -3972
		mu 0 4 2125 2201 2207 2124
		mu 1 4 2169 2245 2251 2168
		f 4 -4120 4128 4129 -4127
		mu 0 4 2201 2202 2208 2207
		mu 1 4 2245 2246 2252 2251
		f 4 -4128 4130 4131 -3970
		mu 0 4 2124 2207 2209 2121
		mu 1 4 2168 2251 2253 2165
		f 4 -4130 4132 4133 -4131
		mu 0 4 2207 2208 2210 2209
		mu 1 4 2251 2252 2254 2253
		f 4 -4125 4134 4135 -4129
		mu 0 4 2202 2205 2211 2208
		mu 1 4 2246 2249 2255 2252
		f 4 -4126 2217 4136 -4135
		mu 0 4 2205 2206 2212 2211
		mu 1 4 2249 2250 2256 2255
		f 4 -4136 4137 4138 -4133
		mu 0 4 2208 2211 2213 2210
		mu 1 4 2252 2255 2257 2254
		f 4 -4137 2221 4139 -4138
		mu 0 4 2211 2212 2214 2213
		mu 1 4 2255 2256 2258 2257
		f 4 -4132 4140 4141 -3964
		mu 0 4 2121 2209 2215 2119
		mu 1 4 2165 2253 2259 2163
		f 4 -4134 4142 4143 -4141
		mu 0 4 2209 2210 2216 2215
		mu 1 4 2253 2254 2260 2259
		f 4 -4142 4144 4145 -3961
		mu 0 4 2119 2215 2217 2120
		mu 1 4 2163 2259 2261 2164
		f 4 -4144 4146 4147 -4145
		mu 0 4 2215 2216 2218 2217
		mu 1 4 2259 2260 2262 2261
		f 4 -4139 4148 4149 -4143
		mu 0 4 2210 2213 2219 2216
		mu 1 4 2254 2257 2263 2260
		f 4 -4140 2233 4150 -4149
		mu 0 4 2213 2214 2220 2219
		mu 1 4 2257 2258 2264 2263
		f 4 -4150 4151 4152 -4147
		mu 0 4 2216 2219 2221 2218
		mu 1 4 2260 2263 2265 2262
		f 4 -4151 2237 4153 -4152
		mu 0 4 2219 2220 2222 2221
		mu 1 4 2263 2264 2266 2265
		f 4 4154 4155 4156 4157
		mu 0 4 1942 2223 2224 2225
		mu 1 4 1973 2267 2268 2269
		f 4 4158 4159 4160 -4156
		mu 0 4 2223 2226 2227 2224
		mu 1 4 2267 2270 2271 2268
		f 4 -4157 4161 4162 4163
		mu 0 4 2225 2224 2228 2229
		mu 1 4 2269 2268 2272 2273
		f 4 -4161 4164 4165 -4162
		mu 0 4 2224 2227 2230 2228
		mu 1 4 2268 2271 2274 2272
		f 4 4166 4167 4168 -4160
		mu 0 4 2226 2231 2232 2227
		mu 1 4 2270 2275 2276 2271
		f 4 4169 -4074 4170 -4168
		mu 0 4 2231 2179 2177 2232
		mu 1 4 2275 2223 2221 2276
		f 4 -4169 4171 4172 -4165
		mu 0 4 2227 2232 2233 2230
		mu 1 4 2271 2276 2277 2274
		f 4 -4171 -4071 4173 -4172
		mu 0 4 2232 2177 2173 2233
		mu 1 4 2276 2221 2217 2277
		f 4 -4163 4174 4175 4176
		mu 0 4 2229 2228 2234 2235
		mu 1 4 2273 2272 2278 2279
		f 4 -4166 4177 4178 -4175
		mu 0 4 2228 2230 2236 2234
		mu 1 4 2272 2274 2280 2278
		f 4 -4176 4179 -3973 4180
		mu 0 4 2235 2234 2126 2102
		mu 1 4 2279 2278 2170 2146
		f 4 -4179 4181 -3976 -4180
		mu 0 4 2234 2236 2128 2126
		mu 1 4 2278 2280 2172 2170
		f 4 -4173 4182 4183 -4178
		mu 0 4 2230 2233 2237 2236
		mu 1 4 2274 2277 2281 2280
		f 4 -4174 -4064 4184 -4183
		mu 0 4 2233 2173 2171 2237
		mu 1 4 2277 2217 2215 2281
		f 4 -4184 4185 -3983 -4182
		mu 0 4 2236 2237 2132 2128
		mu 1 4 2280 2281 2176 2172
		f 4 -4185 -4061 -3986 -4186
		mu 0 4 2237 2171 2134 2132
		mu 1 4 2281 2215 2178 2176
		f 4 4186 4187 4188 -3962
		mu 0 4 2120 2238 2239 2117
		mu 1 4 2164 2282 2283 2161
		f 4 4189 4190 4191 -4188
		mu 0 4 2238 2240 2241 2239
		mu 1 4 2282 2284 2285 2283
		f 4 -4189 4192 4193 -3957
		mu 0 4 2117 2239 2242 2109
		mu 1 4 2161 2283 2286 2153
		f 4 -4192 4194 4195 -4193
		mu 0 4 2239 2241 2243 2242
		mu 1 4 2283 2285 2287 2286
		f 4 4196 4197 4198 -4191
		mu 0 4 2240 2244 2245 2241
		mu 1 4 2284 2288 2289 2285
		f 4 4199 4200 4201 -4198
		mu 0 4 2244 2246 2247 2245
		mu 1 4 2288 2290 2291 2289
		f 4 -4199 4202 4203 -4195
		mu 0 4 2241 2245 2248 2243
		mu 1 4 2285 2289 2292 2287
		f 4 -4202 4204 4205 -4203
		mu 0 4 2245 2247 2249 2248
		mu 1 4 2289 2291 2293 2292
		f 4 -4194 4206 4207 -3942
		mu 0 4 2109 2242 2250 2105
		mu 1 4 2153 2286 2294 2149
		f 4 -4196 4208 4209 -4207
		mu 0 4 2242 2243 2251 2250
		mu 1 4 2286 2287 2295 2294
		f 4 -4208 4210 4211 -3936
		mu 0 4 2105 2250 2252 2102
		mu 1 4 2149 2294 2296 2146
		f 4 -4210 4212 4213 -4211
		mu 0 4 2250 2251 2253 2252
		mu 1 4 2294 2295 2297 2296
		f 4 -4204 4214 4215 -4209
		mu 0 4 2243 2248 2254 2251
		mu 1 4 2287 2292 2298 2295
		f 4 -4206 4216 4217 -4215
		mu 0 4 2248 2249 2255 2254
		mu 1 4 2292 2293 2299 2298
		f 4 -4216 4218 4219 -4213
		mu 0 4 2251 2254 2256 2253
		mu 1 4 2295 2298 2300 2297
		f 4 -4218 4220 4221 -4219
		mu 0 4 2254 2255 2257 2256
		mu 1 4 2298 2299 2301 2300
		f 4 -4212 4222 4223 -4181
		mu 0 4 2102 2252 2258 2235
		mu 1 4 2146 2296 2302 2279
		f 4 -4214 4224 4225 -4223
		mu 0 4 2252 2253 2259 2258
		mu 1 4 2296 2297 2303 2302
		f 4 -4224 4226 4227 -4177
		mu 0 4 2235 2258 2260 2229
		mu 1 4 2279 2302 2304 2273
		f 4 -4226 4228 4229 -4227
		mu 0 4 2258 2259 2261 2260
		mu 1 4 2302 2303 2305 2304
		f 4 -4220 4230 4231 -4225
		mu 0 4 2253 2256 2262 2259
		mu 1 4 2297 2300 2306 2303
		f 4 -4222 4232 4233 -4231
		mu 0 4 2256 2257 2263 2262
		mu 1 4 2300 2301 2307 2306
		f 4 -4232 4234 4235 -4229
		mu 0 4 2259 2262 2264 2261
		mu 1 4 2303 2306 2308 2305
		f 4 -4234 4236 4237 -4235
		mu 0 4 2262 2263 2265 2264
		mu 1 4 2306 2307 2309 2308
		f 4 -4228 4238 4239 -4164
		mu 0 4 2229 2260 2266 2225
		mu 1 4 2273 2304 2310 2269
		f 4 -4230 4240 4241 -4239
		mu 0 4 2260 2261 2267 2266
		mu 1 4 2304 2305 2311 2310
		f 4 -4240 4242 -3604 -4158
		mu 0 4 2225 2266 1939 1942
		mu 1 4 2269 2310 1970 1973
		f 4 -4242 4243 -3599 -4243
		mu 0 4 2266 2267 1933 1939
		mu 1 4 2310 2311 1964 1970
		f 4 -4236 4244 4245 -4241
		mu 0 4 2261 2264 2268 2267
		mu 1 4 2305 2308 2312 2311
		f 4 -4238 4246 4247 -4245
		mu 0 4 2264 2265 2269 2268
		mu 1 4 2308 2309 2313 2312
		f 4 -4246 4248 -3586 -4244
		mu 0 4 2267 2268 1929 1933
		mu 1 4 2311 2312 1960 1964
		f 4 -4248 4249 -3580 -4249
		mu 0 4 2268 2269 1926 1929
		mu 1 4 2312 2313 1957 1960
		f 4 -3592 4250 4251 -3755
		mu 0 4 1922 1935 2270 2018
		mu 1 4 1953 1966 2314 2049
		f 4 -3589 4252 4253 -4251
		mu 0 4 1935 1930 2271 2270
		mu 1 4 1966 1961 2315 2314
		f 4 -4252 4254 4255 -3759
		mu 0 4 2018 2270 2272 2020
		mu 1 4 2049 2314 2316 2051
		f 4 -4254 4256 4257 -4255
		mu 0 4 2270 2271 2273 2272
		mu 1 4 2314 2315 2317 2316
		f 4 -3581 4258 4259 -4253
		mu 0 4 1930 1927 2274 2271
		mu 1 4 1961 1958 2318 2315
		f 4 -3577 4260 4261 -4259
		mu 0 4 1927 1926 2275 2274
		mu 1 4 1958 1957 2319 2318
		f 4 -4260 4262 4263 -4257
		mu 0 4 2271 2274 2276 2273
		mu 1 4 2315 2318 2320 2317
		f 4 -4262 4264 4265 -4263
		mu 0 4 2274 2275 2277 2276
		mu 1 4 2318 2319 2321 2320
		f 4 -4256 4266 4267 -3773
		mu 0 4 2020 2272 2278 2028
		mu 1 4 2051 2316 2322 2059
		f 4 -4258 4268 4269 -4267
		mu 0 4 2272 2273 2279 2278
		mu 1 4 2316 2317 2323 2322
		f 4 -4268 4270 4271 -3777
		mu 0 4 2028 2278 2280 2030
		mu 1 4 2059 2322 2324 2061
		f 4 -4270 4272 4273 -4271
		mu 0 4 2278 2279 2281 2280
		mu 1 4 2322 2323 2325 2324
		f 4 -4264 4274 4275 -4269
		mu 0 4 2273 2276 2282 2279
		mu 1 4 2317 2320 2326 2323
		f 4 -4266 4276 4277 -4275
		mu 0 4 2276 2277 2283 2282
		mu 1 4 2320 2321 2327 2326
		f 4 -4276 4278 4279 -4273
		mu 0 4 2279 2282 2284 2281
		mu 1 4 2323 2326 2328 2325
		f 4 -4278 4280 4281 -4279
		mu 0 4 2282 2283 2285 2284
		mu 1 4 2326 2327 2329 2328
		f 4 4282 4283 4284 4285
		mu 0 4 2286 2287 2288 2289
		mu 1 4 2330 2331 2332 2333
		f 4 4286 4287 4288 -4284
		mu 0 4 2287 2290 2291 2288
		mu 1 4 2331 2334 2335 2332
		f 4 -4285 4289 4290 4291
		mu 0 4 2289 2288 2292 2293
		mu 1 4 2333 2332 2336 2337
		f 4 -4289 4292 4293 -4290
		mu 0 4 2288 2291 2294 2292
		mu 1 4 2332 2335 2338 2336
		f 4 4294 4295 4296 -4288
		mu 0 4 2290 2295 2296 2291
		mu 1 4 2334 2339 2340 2335
		f 4 4297 -4281 4298 -4296
		mu 0 4 2295 2285 2283 2296
		mu 1 4 2339 2329 2327 2340
		f 4 -4297 4299 4300 -4293
		mu 0 4 2291 2296 2297 2294
		mu 1 4 2335 2340 2341 2338
		f 4 -4299 -4277 4301 -4300
		mu 0 4 2296 2283 2277 2297
		mu 1 4 2340 2327 2321 2341
		f 4 -4291 4302 4303 4304
		mu 0 4 2293 2292 2298 2299
		mu 1 4 2337 2336 2342 2343
		f 4 -4294 4305 4306 -4303
		mu 0 4 2292 2294 2300 2298
		mu 1 4 2336 2338 2344 2342
		f 4 -4304 4307 -4233 4308
		mu 0 4 2299 2298 2263 2257
		mu 1 4 2343 2342 2307 2301
		f 4 -4307 4309 -4237 -4308
		mu 0 4 2298 2300 2265 2263
		mu 1 4 2342 2344 2309 2307
		f 4 -4301 4310 4311 -4306
		mu 0 4 2294 2297 2301 2300
		mu 1 4 2338 2341 2345 2344
		f 4 -4302 -4265 4312 -4311
		mu 0 4 2297 2277 2275 2301
		mu 1 4 2341 2321 2319 2345
		f 4 -4312 4313 -4247 -4310
		mu 0 4 2300 2301 2269 2265
		mu 1 4 2344 2345 2313 2309
		f 4 -4313 -4261 -4250 -4314
		mu 0 4 2301 2275 1926 2269
		mu 1 4 2345 2319 1957 2313
		f 4 4314 4315 4316 -4282
		mu 0 4 2285 2302 2303 2284
		mu 1 4 2329 2346 2347 2328
		f 4 4317 4318 4319 -4316
		mu 0 4 2302 2304 2305 2303
		mu 1 4 2346 2348 2349 2347
		f 4 -4317 4320 4321 -4280
		mu 0 4 2284 2303 2306 2281
		mu 1 4 2328 2347 2350 2325
		f 4 -4320 4322 4323 -4321
		mu 0 4 2303 2305 2307 2306
		mu 1 4 2347 2349 2351 2350
		f 4 4324 4325 4326 -4319
		mu 0 4 2304 2308 2309 2305
		mu 1 4 2348 2352 2353 2349
		f 4 4327 2413 4328 -4326
		mu 0 4 2308 1348 1347 2309
		mu 1 4 2352 2354 2355 2353
		f 4 -4327 4329 4330 -4323
		mu 0 4 2305 2309 2310 2307
		mu 1 4 2349 2353 2356 2351
		f 4 -4329 2417 4331 -4330
		mu 0 4 2309 1347 1350 2310
		mu 1 4 2353 2355 2357 2356
		f 4 -4322 4332 4333 -4274
		mu 0 4 2281 2306 2311 2280
		mu 1 4 2325 2350 2358 2324
		f 4 -4324 4334 4335 -4333
		mu 0 4 2306 2307 2312 2311
		mu 1 4 2350 2351 2359 2358
		f 4 -4334 4336 -3873 -4272
		mu 0 4 2280 2311 2076 2030
		mu 1 4 2324 2358 2107 2061
		f 4 -4336 4337 -3876 -4337
		mu 0 4 2311 2312 2078 2076
		mu 1 4 2358 2359 2109 2107
		f 4 -4331 4338 4339 -4335
		mu 0 4 2307 2310 2313 2312
		mu 1 4 2351 2356 2360 2359
		f 4 -4332 2427 4340 -4339
		mu 0 4 2310 1350 1354 2313
		mu 1 4 2356 2357 2361 2360
		f 4 -4340 4341 -3883 -4338
		mu 0 4 2312 2313 2082 2078
		mu 1 4 2359 2360 2113 2109
		f 4 -4341 2430 -3886 -4342
		mu 0 4 2313 1354 1109 2082
		mu 1 4 2360 2361 2115 2113
		f 4 2431 4342 4343 4344
		mu 0 4 2314 2315 2316 2317
		mu 1 4 2362 2363 2364 2365
		f 4 2435 4345 4346 -4343
		mu 0 4 2315 2318 2319 2316
		mu 1 4 2363 2366 2367 2364
		f 4 -4344 4347 4348 4349
		mu 0 4 2317 2316 2320 2321
		mu 1 4 2365 2364 2368 2369
		f 4 -4347 4350 4351 -4348
		mu 0 4 2316 2319 2322 2320
		mu 1 4 2364 2367 2370 2368
		f 4 2443 4352 4353 -4346
		mu 0 4 2318 1365 2323 2319
		mu 1 4 2366 2371 2372 2367
		f 4 2446 -4328 4354 -4353
		mu 0 4 1365 1348 2308 2323
		mu 1 4 2371 2354 2352 2372
		f 4 -4354 4355 4356 -4351
		mu 0 4 2319 2323 2324 2322
		mu 1 4 2367 2372 2373 2370
		f 4 -4355 -4325 4357 -4356
		mu 0 4 2323 2308 2304 2324
		mu 1 4 2372 2352 2348 2373
		f 4 -4349 4358 4359 4360
		mu 0 4 2321 2320 2325 2326
		mu 1 4 2369 2368 2374 2375
		f 4 -4352 4361 4362 -4359
		mu 0 4 2320 2322 2327 2325
		mu 1 4 2368 2370 2376 2374
		f 4 -4360 4363 -4283 4364
		mu 0 4 2326 2325 2287 2286
		mu 1 4 2375 2374 2331 2330
		f 4 -4363 4365 -4287 -4364
		mu 0 4 2325 2327 2290 2287
		mu 1 4 2374 2376 2334 2331
		f 4 -4357 4366 4367 -4362
		mu 0 4 2322 2324 2328 2327
		mu 1 4 2370 2373 2377 2376
		f 4 -4358 -4318 4368 -4367
		mu 0 4 2324 2304 2302 2328
		mu 1 4 2373 2348 2346 2377
		f 4 -4368 4369 -4295 -4366
		mu 0 4 2327 2328 2295 2290
		mu 1 4 2376 2377 2339 2334
		f 4 -4369 -4315 -4298 -4370
		mu 0 4 2328 2302 2285 2295
		mu 1 4 2377 2346 2329 2339
		f 4 -4221 4370 4371 -4309
		mu 0 4 2257 2255 2329 2299
		mu 1 4 2301 2299 2378 2343
		f 4 -4217 4372 4373 -4371
		mu 0 4 2255 2249 2330 2329
		mu 1 4 2299 2293 2379 2378
		f 4 -4372 4374 4375 -4305
		mu 0 4 2299 2329 2331 2293
		mu 1 4 2343 2378 2380 2337
		f 4 -4374 4376 4377 -4375
		mu 0 4 2329 2330 2332 2331
		mu 1 4 2378 2379 2381 2380
		f 4 -4205 4378 4379 -4373
		mu 0 4 2249 2247 2333 2330
		mu 1 4 2293 2291 2382 2379
		f 4 -4201 4380 4381 -4379
		mu 0 4 2247 2246 2334 2333
		mu 1 4 2291 2290 2383 2382
		f 4 -4380 4382 4383 -4377
		mu 0 4 2330 2333 2335 2332
		mu 1 4 2379 2382 2384 2381
		f 4 -4382 4384 4385 -4383
		mu 0 4 2333 2334 2336 2335
		mu 1 4 2382 2383 2385 2384
		f 4 -4376 4386 4387 -4292
		mu 0 4 2293 2331 2337 2289
		mu 1 4 2337 2380 2386 2333
		f 4 -4378 4388 4389 -4387
		mu 0 4 2331 2332 2338 2337
		mu 1 4 2380 2381 2387 2386
		f 4 -4388 4390 4391 -4286
		mu 0 4 2289 2337 2339 2286
		mu 1 4 2333 2386 2388 2330
		f 4 -4390 4392 4393 -4391
		mu 0 4 2337 2338 2340 2339
		mu 1 4 2386 2387 2389 2388
		f 4 -4384 4394 4395 -4389
		mu 0 4 2332 2335 2341 2338
		mu 1 4 2381 2384 2390 2387
		f 4 -4386 4396 4397 -4395
		mu 0 4 2335 2336 2342 2341
		mu 1 4 2384 2385 2391 2390
		f 4 -4396 4398 4399 -4393
		mu 0 4 2338 2341 2343 2340
		mu 1 4 2387 2390 2392 2389
		f 4 -4398 4400 4401 -4399
		mu 0 4 2341 2342 2344 2343
		mu 1 4 2390 2391 2393 2392
		f 4 -4146 4402 4403 -4187
		mu 0 4 2120 2217 2345 2238
		mu 1 4 2164 2261 2394 2282
		f 4 -4148 4404 4405 -4403
		mu 0 4 2217 2218 2346 2345
		mu 1 4 2261 2262 2395 2394
		f 4 -4404 4406 4407 -4190
		mu 0 4 2238 2345 2347 2240
		mu 1 4 2282 2394 2396 2284
		f 4 -4406 4408 4409 -4407
		mu 0 4 2345 2346 2348 2347
		mu 1 4 2394 2395 2397 2396
		f 4 -4153 4410 4411 -4405
		mu 0 4 2218 2221 2349 2346
		mu 1 4 2262 2265 2398 2395
		f 4 -4154 2505 4412 -4411
		mu 0 4 2221 2222 2350 2349
		mu 1 4 2265 2266 2399 2398
		f 4 -4412 4413 4414 -4409
		mu 0 4 2346 2349 2351 2348
		mu 1 4 2395 2398 2400 2397
		f 4 -4413 2509 4415 -4414
		mu 0 4 2349 2350 2352 2351
		mu 1 4 2398 2399 2401 2400
		f 4 -4408 4416 4417 -4197
		mu 0 4 2240 2347 2353 2244
		mu 1 4 2284 2396 2402 2288
		f 4 -4410 4418 4419 -4417
		mu 0 4 2347 2348 2354 2353
		mu 1 4 2396 2397 2403 2402
		f 4 -4418 4420 4421 -4200
		mu 0 4 2244 2353 2355 2246
		mu 1 4 2288 2402 2404 2290
		f 4 -4420 4422 4423 -4421
		mu 0 4 2353 2354 2356 2355
		mu 1 4 2402 2403 2405 2404
		f 4 -4415 4424 4425 -4419
		mu 0 4 2348 2351 2357 2354
		mu 1 4 2397 2400 2406 2403
		f 4 -4416 2521 4426 -4425
		mu 0 4 2351 2352 2358 2357
		mu 1 4 2400 2401 2407 2406
		f 4 -4426 4427 4428 -4423
		mu 0 4 2354 2357 2359 2356
		mu 1 4 2403 2406 2408 2405
		f 4 -4427 2525 4429 -4428
		mu 0 4 2357 2358 2360 2359
		mu 1 4 2406 2407 2409 2408
		f 4 4430 4431 4432 -4402
		mu 0 4 2344 2361 2362 2343
		mu 1 4 2393 2410 2411 2392
		f 4 4433 4434 4435 -4432
		mu 0 4 2361 2363 2364 2362
		mu 1 4 2410 2412 2413 2411
		f 4 -4433 4436 4437 -4400
		mu 0 4 2343 2362 2365 2340
		mu 1 4 2392 2411 2414 2389
		f 4 -4436 4438 4439 -4437
		mu 0 4 2362 2364 2366 2365
		mu 1 4 2411 2413 2415 2414
		f 4 4440 4441 4442 -4435
		mu 0 4 2363 2367 2368 2364
		mu 1 4 2412 2416 2417 2413
		f 4 4443 2541 4444 -4442
		mu 0 4 2367 2369 2370 2368
		mu 1 4 2416 2418 2419 2417
		f 4 -4443 4445 4446 -4439
		mu 0 4 2364 2368 2371 2366
		mu 1 4 2413 2417 2420 2415
		f 4 -4445 2545 4447 -4446
		mu 0 4 2368 2370 2372 2371
		mu 1 4 2417 2419 2421 2420
		f 4 -4438 4448 4449 -4394
		mu 0 4 2340 2365 2373 2339
		mu 1 4 2389 2414 2422 2388
		f 4 -4440 4450 4451 -4449
		mu 0 4 2365 2366 2374 2373
		mu 1 4 2414 2415 2423 2422
		f 4 -4450 4452 -4365 -4392
		mu 0 4 2339 2373 2326 2286
		mu 1 4 2388 2422 2375 2330
		f 4 -4452 4453 -4361 -4453
		mu 0 4 2373 2374 2321 2326
		mu 1 4 2422 2423 2369 2375
		f 4 -4447 4454 4455 -4451
		mu 0 4 2366 2371 2375 2374
		mu 1 4 2415 2420 2424 2423
		f 4 -4448 2555 4456 -4455
		mu 0 4 2371 2372 2376 2375
		mu 1 4 2420 2421 2425 2424
		f 4 -4456 4457 -4350 -4454
		mu 0 4 2374 2375 2317 2321
		mu 1 4 2423 2424 2365 2369
		f 4 -4457 2558 -4345 -4458
		mu 0 4 2375 2376 2314 2317
		mu 1 4 2424 2425 2362 2365
		f 4 -4422 4458 4459 -4381
		mu 0 4 2246 2355 2377 2334
		mu 1 4 2290 2404 2426 2383
		f 4 -4424 4460 4461 -4459
		mu 0 4 2355 2356 2378 2377
		mu 1 4 2404 2405 2427 2426
		f 4 -4460 4462 4463 -4385
		mu 0 4 2334 2377 2379 2336
		mu 1 4 2383 2426 2428 2385
		f 4 -4462 4464 4465 -4463
		mu 0 4 2377 2378 2380 2379
		mu 1 4 2426 2427 2429 2428
		f 4 -4429 4466 4467 -4461
		mu 0 4 2356 2359 2381 2378
		mu 1 4 2405 2408 2430 2427
		f 4 -4430 2569 4468 -4467
		mu 0 4 2359 2360 2382 2381
		mu 1 4 2408 2409 2431 2430
		f 4 -4468 4469 4470 -4465
		mu 0 4 2378 2381 2383 2380
		mu 1 4 2427 2430 2432 2429
		f 4 -4469 2573 4471 -4470
		mu 0 4 2381 2382 2384 2383
		mu 1 4 2430 2431 2433 2432
		f 4 -4464 4472 4473 -4397
		mu 0 4 2336 2379 2385 2342
		mu 1 4 2385 2428 2434 2391
		f 4 -4466 4474 4475 -4473
		mu 0 4 2379 2380 2386 2385
		mu 1 4 2428 2429 2435 2434
		f 4 -4474 4476 -4431 -4401
		mu 0 4 2342 2385 2361 2344
		mu 1 4 2391 2434 2410 2393
		f 4 -4476 4477 -4434 -4477
		mu 0 4 2385 2386 2363 2361
		mu 1 4 2434 2435 2412 2410
		f 4 -4471 4478 4479 -4475
		mu 0 4 2380 2383 2387 2386
		mu 1 4 2429 2432 2436 2435
		f 4 -4472 2583 4480 -4479
		mu 0 4 2383 2384 2388 2387
		mu 1 4 2432 2433 2437 2436
		f 4 -4480 4481 -4441 -4478
		mu 0 4 2386 2387 2367 2363
		mu 1 4 2435 2436 2416 2412
		f 4 -4481 2586 -4444 -4482
		mu 0 4 2387 2388 2369 2367
		mu 1 4 2436 2437 2418 2416
		f 4 -2890 4482 4483 -2788
		mu 0 4 1517 1574 2389 1516
		mu 1 4 1520 1577 2438 1519
		f 4 -2887 4484 4485 -4483
		mu 0 4 1574 1569 2390 2389
		mu 1 4 1577 1572 2439 2438
		f 4 -4484 4486 -3065 -2786
		mu 0 4 1516 2389 1659 1513
		mu 1 4 1519 2438 1679 1516
		f 4 -4486 4487 -3069 -4487
		mu 0 4 2389 2390 1661 1659
		mu 1 4 2438 2439 1681 1679
		f 4 -2875 4488 4489 -4485
		mu 0 4 1569 1567 2391 2390
		mu 1 4 1572 1570 2440 2439
		f 4 -2871 -3298 4490 -4489
		mu 0 4 1567 1566 1777 2391
		mu 1 4 1570 1569 1805 2440
		f 4 -4490 4491 4492 -4488
		mu 0 4 2390 2391 2392 1661
		mu 1 4 2439 2440 2441 1681
		f 4 -4491 -3295 4493 -4492
		mu 0 4 2391 1777 1772 2392
		mu 1 4 2440 1805 1800 2441
		f 4 -4493 4494 4495 -3070
		mu 0 4 1661 2392 2393 1660
		mu 1 4 1681 2441 2442 1680
		f 4 -4494 -3283 4496 -4495
		mu 0 4 2392 1772 1770 2393
		mu 1 4 2441 1800 1798 2442
		f 4 -4496 4497 4498 -3068
		mu 0 4 1660 2393 2394 1657
		mu 1 4 1680 2442 2443 1677
		f 4 -4497 -3279 4499 -4498
		mu 0 4 2393 1770 1769 2394
		mu 1 4 2442 1798 1797 2443
		f 4 -3932 4500 4501 -3394
		mu 0 4 1828 2101 2395 1825
		mu 1 4 1859 2145 2444 1856
		f 4 -3929 4502 4503 -4501
		mu 0 4 2101 2099 2396 2395
		mu 1 4 2145 2142 2445 2444
		f 4 -4502 4504 4505 -3389
		mu 0 4 1825 2395 2397 1818
		mu 1 4 1856 2444 2446 1849
		f 4 -4504 4506 4507 -4505
		mu 0 4 2395 2396 1656 2397
		mu 1 4 2444 2445 1676 2446
		f 4 -3925 4508 4509 -4503
		mu 0 4 2099 2097 2398 2396
		mu 1 4 2142 2139 2447 2445
		f 4 -3921 -3036 4510 -4509
		mu 0 4 2097 1640 1643 2398
		mu 1 4 2139 1660 1663 2447
		f 4 -4510 4511 -3060 -4507
		mu 0 4 2396 2398 1653 1656
		mu 1 4 2445 2447 1673 1676
		f 4 -4511 -3042 -3055 -4512
		mu 0 4 2398 1643 1647 1653
		mu 1 4 2447 1663 1667 1673
		f 4 -4506 4512 4513 -3376
		mu 0 4 1818 2397 2399 1815
		mu 1 4 1849 2446 2448 1846
		f 4 -4508 -3059 4514 -4513
		mu 0 4 2397 1656 1655 2399
		mu 1 4 2446 1676 1675 2448
		f 4 -4514 4515 -4500 -3371
		mu 0 4 1815 2399 2394 1769
		mu 1 4 1846 2448 2443 1797
		f 4 -4515 -3062 -4499 -4516
		mu 0 4 2399 1655 1657 2394
		mu 1 4 2448 1675 1677 2443
		f 4 -3917 4516 4517 2623
		mu 0 4 1128 2095 2400 1442
		mu 1 4 2136 2135 2449 2450
		f 4 -3918 4518 4519 -4517
		mu 0 4 2095 2073 2401 2400
		mu 1 4 2135 2104 2451 2449
		f 4 -4518 4520 -3904 2627
		mu 0 4 1442 2400 2090 1119
		mu 1 4 2450 2449 2125 2126
		f 4 -4520 4521 -3903 -4521
		mu 0 4 2400 2401 2088 2090
		mu 1 4 2449 2451 2122 2125
		f 4 -4094 4524 4525 -4058
		mu 0 4 2402 2403 2404 2168
		mu 1 4 2452 2453 2454 2212
		f 4 -4093 4526 4527 -4525
		mu 0 4 2403 2405 2406 2404
		mu 1 4 2453 2455 2456 2454
		f 4 -4526 4528 -4095 -4057
		mu 0 4 2168 2404 2187 2157
		mu 1 4 2212 2454 2231 2201
		f 4 -4528 4529 -4098 -4529
		mu 0 4 2404 2406 2189 2187
		mu 1 4 2454 2456 2233 2231
		f 4 -4523 4530 4531 -4527
		mu 0 4 2405 2407 2408 2406
		mu 1 4 2455 2457 2458 2456
		f 4 -4524 2639 4532 -4531
		mu 0 4 2407 2409 2410 2408
		mu 1 4 2457 2459 2460 2458
		f 4 -4532 4533 -4105 -4530
		mu 0 4 2406 2408 2193 2189
		mu 1 4 2456 2458 2237 2233
		f 4 -4533 2642 -4108 -4534
		mu 0 4 2408 2410 2195 2193
		mu 1 4 2458 2460 2239 2237
		f 4 -3539 4534 4535 4536
		mu 0 4 1903 1905 2411 2412
		mu 1 4 1934 1936 2461 2462
		f 4 -3540 -3252 4537 -4535
		mu 0 4 1905 1722 1752 2411
		mu 1 4 1936 1750 1780 2461
		f 4 -4536 4538 4539 4540
		mu 0 4 2412 2411 2413 2414
		mu 1 4 2462 2461 2463 2464
		f 4 -4538 -3254 4541 -4539
		mu 0 4 2411 1752 1753 2413
		mu 1 4 2461 1780 1781 2463
		f 4 -3647 4542 4543 -3457
		mu 0 4 1865 1963 2415 1866
		mu 1 4 1896 1994 2465 1897
		f 4 -3652 4544 4545 -4543
		mu 0 4 1963 1966 2416 2415
		mu 1 4 1994 1997 2466 2465
		f 4 -4544 4546 4547 -3461
		mu 0 4 1866 2415 2417 1868
		mu 1 4 1897 2465 2467 1899
		f 4 -4546 4548 4549 -4547
		mu 0 4 2415 2416 2418 2417
		mu 1 4 2465 2466 2468 2467
		f 4 4550 4551 4552 -4550
		mu 0 4 2418 2419 2420 2417
		mu 1 4 2468 2469 2470 2467
		f 4 4553 -3429 4554 -4552
		mu 0 4 2419 1841 1850 2420
		mu 1 4 2469 1872 1881 2470
		f 4 -4553 4555 -3473 -4548
		mu 0 4 2417 2420 1873 1868
		mu 1 4 2467 2470 1904 1899
		f 4 -4555 -3433 -3476 -4556
		mu 0 4 2420 1850 1741 1873
		mu 1 4 2470 1881 1769 1904
		f 4 -3825 4556 4557 4558
		mu 0 4 2054 2052 2421 2422
		mu 1 4 2085 2083 2471 2472
		f 4 -3821 -3872 4559 -4557
		mu 0 4 2052 2031 2075 2421
		mu 1 4 2083 2062 2106 2471
		f 4 -4558 4560 4561 4562
		mu 0 4 2422 2421 2423 2424
		mu 1 4 2472 2471 2473 2474
		f 4 -4560 -3869 4563 -4561
		mu 0 4 2421 2075 2068 2423
		mu 1 4 2471 2106 2099 2473
		f 4 -3801 4564 4565 -3866
		mu 0 4 2038 2044 2425 2072
		mu 1 4 2069 2075 2475 2103
		f 4 -3805 -3896 4566 -4565
		mu 0 4 2044 2025 2087 2425
		mu 1 4 2075 2056 2121 2475
		f 4 -4566 4567 -4519 -3863
		mu 0 4 2072 2425 2401 2073
		mu 1 4 2103 2475 2451 2104
		f 4 -4567 -3898 -4522 -4568
		mu 0 4 2425 2087 2088 2401
		mu 1 4 2475 2121 2122 2451
		f 4 -3408 4568 4569 -3669
		mu 0 4 1834 1837 2426 1973
		mu 1 4 1865 1868 2476 2004
		f 4 -3414 -4554 4570 -4569
		mu 0 4 1837 1841 2419 2426
		mu 1 4 1868 1872 2469 2476
		f 4 -4570 4571 -4545 -3665
		mu 0 4 1973 2426 2416 1966
		mu 1 4 2004 2476 2466 1997
		f 4 -4571 -4551 -4549 -4572
		mu 0 4 2426 2419 2418 2416
		mu 1 4 2476 2469 2468 2466
		f 4 -4537 4572 4573 -3534
		mu 0 4 1903 2412 2427 1901
		mu 1 4 1934 2462 2477 1932
		f 4 -4541 4574 4575 -4573
		mu 0 4 2412 2414 2428 2427
		mu 1 4 2462 2464 2478 2477
		f 4 -4574 4576 -3612 -3531
		mu 0 4 1901 2427 1945 1902
		mu 1 4 1932 2477 1976 1933
		f 4 -4576 4577 -3611 -4577
		mu 0 4 2427 2428 1943 1945
		mu 1 4 2477 2478 1974 1976
		f 4 -3359 4578 4579 -3328
		mu 0 4 1795 1810 2429 1793
		mu 1 4 1823 1838 2479 1821
		f 4 -4580 4580 4581 -3325
		mu 0 4 1793 2429 2430 1794
		mu 1 4 1821 2479 2480 1822
		f 4 4582 4583 4584 -4167
		mu 0 4 2226 2431 2432 2231
		mu 1 4 2270 2481 2482 2275
		f 4 4585 4586 4587 -4584
		mu 0 4 2431 2414 2433 2432
		mu 1 4 2481 2464 2483 2482
		f 4 -4585 4588 -4075 -4170
		mu 0 4 2231 2432 2180 2179
		mu 1 4 2275 2482 2224 2223
		f 4 -4588 4589 -4079 -4589
		mu 0 4 2432 2433 2182 2180
		mu 1 4 2482 2483 2226 2224
		f 4 -4540 4590 4591 -4587
		mu 0 4 2414 2413 2434 2433
		mu 1 4 2464 2463 2484 2483
		f 4 -4542 -3712 4592 -4591
		mu 0 4 2413 1753 1997 2434
		mu 1 4 2463 1781 2028 2484
		f 4 -4592 4593 -4089 -4590
		mu 0 4 2433 2434 2186 2182
		mu 1 4 2483 2484 2230 2226
		f 4 -4593 -3714 -4092 -4594
		mu 0 4 2434 1997 1998 2186
		mu 1 4 2484 2028 2029 2230
		f 4 4594 4595 4596 -4563
		mu 0 4 2424 2435 2436 2422
		mu 1 4 2474 2485 2486 2472
		f 4 4597 -3506 4598 -4596
		mu 0 4 2435 1885 1888 2436
		mu 1 4 2485 1916 1919 2486
		f 4 -4597 4599 -3835 -4559
		mu 0 4 2422 2436 2058 2054
		mu 1 4 2472 2486 2089 2085
		f 4 -4599 -3508 -3838 -4600
		mu 0 4 2436 1888 1889 2058
		mu 1 4 2486 1919 1920 2089
		f 4 -4562 4600 4601 -4595
		mu 0 4 2424 2423 2437 2435
		mu 1 4 2474 2473 2487 2485
		f 4 -4564 -3855 4602 -4601
		mu 0 4 2423 2068 2066 2437
		mu 1 4 2473 2099 2097 2487
		f 4 -4602 4603 -3500 -4598
		mu 0 4 2435 2437 1884 1885
		mu 1 4 2485 2487 1915 1916
		f 4 -4603 -3851 -3498 -4604
		mu 0 4 2437 2066 1833 1884
		mu 1 4 2487 2097 1864 1915
		f 4 -3603 4604 4605 -4155
		mu 0 4 1942 1941 2438 2223
		mu 1 4 1973 1972 2488 2267
		f 4 -3606 -4578 4606 -4605
		mu 0 4 1941 1943 2428 2438
		mu 1 4 1972 1974 2478 2488
		f 4 -4606 4607 -4583 -4159
		mu 0 4 2223 2438 2431 2226
		mu 1 4 2267 2488 2481 2270
		f 4 -4607 -4575 -4586 -4608
		mu 0 4 2438 2428 2414 2431
		mu 1 4 2488 2478 2464 2481
		f 4 -4047 -4582 4608 -4051
		mu 0 4 2163 1794 2430 2439
		mu 1 4 2207 1822 2480 2489
		f 4 4609 4610 4611 4612
		mu 0 4 2440 2441 2442 2443
		mu 1 4 2490 2491 2492 2493
		f 4 4613 -2764 4614 -4611
		mu 0 4 2441 1504 1502 2442
		mu 1 4 2491 1507 1505 2492
		f 4 -4612 4615 -2813 4616
		mu 0 4 2443 2442 1535 1530
		mu 1 4 2493 2492 1538 1533
		f 4 -4615 -2761 -2816 -4616
		mu 0 4 2442 1502 1497 1535
		mu 1 4 2492 1505 1500 1538
		f 4 4617 4618 4619 -4610
		mu 0 4 2440 2444 2445 2441
		mu 1 4 2490 2494 2495 2491
		f 4 4620 -2825 4621 -4619
		mu 0 4 2444 1518 1539 2445
		mu 1 4 2494 1521 1542 2495
		f 4 -4620 4622 -2841 -4614
		mu 0 4 2441 2445 1550 1504
		mu 1 4 2491 2495 1553 1507
		f 4 -4622 -2821 -2844 -4623
		mu 0 4 2445 1539 1538 1550
		mu 1 4 2495 1542 1541 1553
		f 4 -4613 4623 4624 -4618
		mu 0 4 2440 2443 2446 2444
		mu 1 4 2490 2493 2496 2494
		f 4 -4617 -2805 4625 -4624
		mu 0 4 2443 1530 1527 2446
		mu 1 4 2493 1533 1530 2496
		f 4 -4625 4626 -2789 -4621
		mu 0 4 2444 2446 1519 1518
		mu 1 4 2494 2496 1522 1521
		f 4 -4626 -2801 -2793 -4627
		mu 0 4 2446 1527 1522 1519
		mu 1 4 2496 1530 1525 1522
		f 4 4638 -4638 -4628 4050
		mu 0 4 2439 2447 2165 2163
		mu 1 4 2497 2498 2209 2207
		f 4 -4635 4637 4635 4058
		mu 0 4 2170 2165 2447 2448
		mu 1 4 2214 2209 2498 2499
		f 4 4057 -4631 4633 4631
		mu 0 4 2402 2168 2169 2449
		mu 1 4 2452 2212 2213 2500
		f 4 -4630 -4050 4636 4634
		mu 0 4 2170 2161 2164 2165
		mu 1 4 2214 2205 2208 2209
		f 4 -4634 -4629 -4059 4059
		mu 0 4 2449 2169 2170 2448
		mu 1 4 2500 2213 2214 2501
		f 4 4639 4640 4641 4642
		mu 0 4 2450 2451 2452 2453
		mu 1 4 2502 2503 2504 2505
		f 4 -4642 4643 4644 4645
		mu 0 4 2453 2452 2454 2455
		mu 1 4 2505 2504 2506 2507
		f 4 4646 4647 4648 4649
		mu 0 4 2456 2457 2458 2459
		mu 1 4 2508 2509 2510 2511
		f 4 -4649 4650 -4640 4651
		mu 0 4 2459 2458 2451 2450
		mu 1 4 2511 2510 2503 2502
		f 4 4652 4653 4654 4655
		mu 0 4 2460 2461 2462 2463
		mu 1 4 2512 2513 2514 2515
		f 4 4656 -4656 4657 4658
		mu 0 4 2464 2460 2463 2465
		mu 1 4 2516 2512 2515 2517
		f 4 4659 4660 4661 4662
		mu 0 4 2466 2467 2468 2469
		mu 1 4 2518 2519 2520 2521
		f 4 4663 -4663 4664 4665
		mu 0 4 2470 2466 2469 2471
		mu 1 4 2522 2518 2521 2523
		f 4 4666 4667 4668 4669
		mu 0 4 2472 2473 2474 2475
		mu 1 4 2524 2525 2526 2527
		f 4 -4670 4670 4671 4672
		mu 0 4 2472 2475 2476 2477
		mu 1 4 2524 2527 2528 2529
		f 4 -4643 4673 4674 4675
		mu 0 4 2450 2453 2478 2479
		mu 1 4 2502 2505 2530 2531
		f 4 -4646 4676 4677 -4674
		mu 0 4 2453 2455 2480 2478
		mu 1 4 2505 2507 2532 2530
		f 4 -4650 4678 4679 4680
		mu 0 4 2456 2459 2481 2482
		mu 1 4 2508 2511 2533 2534
		f 4 -4652 -4676 4681 -4679
		mu 0 4 2459 2450 2479 2481
		mu 1 4 2511 2502 2531 2533
		f 4 4682 4683 4684 4685
		mu 0 4 2483 2484 2485 2486
		mu 1 4 2535 2536 2537 2538
		f 4 4686 4687 4688 -4684
		mu 0 4 2484 2487 2488 2485
		mu 1 4 2536 2539 2540 2537
		f 4 -4685 4689 4690 4691
		mu 0 4 2486 2485 2489 2490
		mu 1 4 2538 2537 2541 2542
		f 4 -4689 4692 4693 -4690
		mu 0 4 2485 2488 2491 2489
		mu 1 4 2537 2540 2543 2541
		f 4 4694 4695 4696 4697
		mu 0 4 2492 2493 2494 2495
		mu 1 4 2544 2545 2546 2547
		f 4 4698 -4697 4699 4700
		mu 0 4 2496 2495 2494 2497
		mu 1 4 2548 2547 2546 2549
		f 4 -4698 4701 -4683 4702
		mu 0 4 2492 2495 2484 2483
		mu 1 4 2544 2547 2536 2535
		f 4 -4699 4703 -4687 -4702
		mu 0 4 2495 2496 2487 2484
		mu 1 4 2547 2548 2539 2536
		f 4 4704 4705 4706 4707
		mu 0 4 2498 2499 2500 2501
		mu 1 4 2550 2551 2552 2553
		f 4 4708 -4708 4709 -4695
		mu 0 4 2492 2498 2501 2493
		mu 1 4 2544 2550 2553 2545
		f 4 -4705 4710 4711 4712
		mu 0 4 2499 2498 2502 2503
		mu 1 4 2551 2550 2554 2555
		f 4 -4709 -4703 4713 -4711
		mu 0 4 2498 2492 2483 2502
		mu 1 4 2550 2544 2535 2554
		f 4 4714 -4706 4715 4716
		mu 0 4 2504 2500 2499 2505
		mu 1 4 2556 2552 2551 2557
		f 4 -4716 -4713 4717 4718
		mu 0 4 2505 2499 2503 2506
		mu 1 4 2557 2551 2555 2558
		f 4 4719 4720 -4717 4721
		mu 0 4 2507 2508 2509 2510
		mu 1 4 2559 2560 2556 2557
		f 4 4722 -4722 -4719 4723
		mu 0 4 2511 2507 2510 2512
		mu 1 4 2561 2559 2557 2558
		f 4 4724 4725 4726 4727
		mu 0 4 2513 2514 2515 2516
		mu 1 4 2562 2563 2564 2565
		f 4 4728 4729 4730 4731
		mu 0 4 2517 2518 2515 2519
		mu 1 4 2566 2567 2564 2568
		f 4 4732 4733 4734 4735
		mu 0 4 2520 2521 2522 2523
		mu 1 4 2569 2570 2571 2572
		f 4 -4735 4736 4737 4738
		mu 0 4 2523 2522 2524 2525
		mu 1 4 2572 2571 2573 2574
		f 4 4739 4740 4741 4742
		mu 0 4 2520 2526 2527 2528
		mu 1 4 2569 2575 2576 2577
		f 4 4743 -4742 4744 4745
		mu 0 4 2529 2528 2527 2530
		mu 1 4 2578 2577 2576 2579
		f 4 4746 -4732 4747 4748
		mu 0 4 2531 2517 2519 2532
		mu 1 4 2580 2566 2568 2581
		f 4 4749 -4746 4750 4751
		mu 0 4 2533 2529 2530 2534
		mu 1 4 2582 2578 2579 2583
		f 4 4752 -4752 4753 4754
		mu 0 4 2535 2536 2537 2538
		mu 1 4 2584 2582 2583 2585
		f 4 4755 4756 4757 4758
		mu 0 4 2539 2540 2541 2542
		mu 1 4 2586 2587 2588 2589
		f 4 4759 4760 4761 4762
		mu 0 4 2543 2544 2545 2546
		mu 1 4 2590 2591 2592 2593
		f 4 -4762 4763 4764 4765
		mu 0 4 2546 2545 2547 2548
		mu 1 4 2593 2592 2594 2595
		f 4 -4758 4766 -4760 4767
		mu 0 4 2542 2541 2544 2543
		mu 1 4 2589 2588 2591 2590
		f 4 4768 4769 4770 4771
		mu 0 4 2549 2550 2551 2552
		mu 1 4 2596 2597 2598 2599
		f 4 4772 4773 4774 4775
		mu 0 4 2553 2554 2555 2556
		mu 1 4 2600 2601 2602 2603
		f 4 4776 4777 4778 4779
		mu 0 4 2557 2558 2559 2560
		mu 1 4 2604 2605 2606 2607
		f 4 4780 4781 -4777 4782
		mu 0 4 2561 2562 2558 2557
		mu 1 4 2608 2609 2605 2604
		f 4 4783 -4774 4784 4785
		mu 0 4 2563 2555 2554 2551
		mu 1 4 2610 2602 2601 2598
		f 4 4786 4787 4788 4789
		mu 0 4 2564 2565 2566 2567
		mu 1 4 2611 2612 2613 2614
		f 4 4790 4791 -4787 4792
		mu 0 4 2568 2569 2570 2571
		mu 1 4 2615 2616 2612 2611
		f 4 4793 4794 4795 4796
		mu 0 4 2572 2573 2574 2575
		mu 1 4 2617 2618 2619 2620
		f 4 -4796 4797 -4791 4798
		mu 0 4 2575 2574 2569 2568
		mu 1 4 2620 2619 2616 2615
		f 4 4799 4800 -4794 4801
		mu 0 4 2576 2577 2573 2572
		mu 1 4 2621 2622 2618 2617
		f 4 4802 4803 4804 -4800
		mu 0 4 2576 2578 2579 2577
		mu 1 4 2621 2623 2624 2622
		f 4 -4779 4805 4806 4807
		mu 0 4 2560 2559 2580 2581
		mu 1 4 2607 2606 2625 2626
		f 4 -4807 4808 4809 4810
		mu 0 4 2581 2580 2582 2583
		mu 1 4 2626 2625 2627 2628
		f 4 4811 4812 4813 -4712
		mu 0 4 2502 2584 2585 2503
		mu 1 4 2554 2629 2630 2555
		f 4 4814 -4693 4815 4816
		mu 0 4 2586 2491 2488 2587
		mu 1 4 2631 2543 2540 2632
		f 4 -4724 4817 -4668 4818
		mu 0 4 2511 2512 2474 2473
		mu 1 4 2561 2558 2526 2525
		f 4 -4692 4819 -4813 4820
		mu 0 4 2486 2490 2585 2584
		mu 1 4 2538 2542 2630 2629
		f 4 4821 4822 4823 -4654
		mu 0 4 2461 2588 2589 2462
		mu 1 4 2513 2633 2634 2514
		f 4 4824 4825 4826 4827
		mu 0 4 2590 2591 2592 2593
		mu 1 4 2635 2636 2637 2638
		f 4 -4765 4828 4829 4830
		mu 0 4 2548 2547 2594 2595
		mu 1 4 2595 2594 2639 2640
		f 4 -4810 4831 -4826 4832
		mu 0 4 2583 2582 2596 2597
		mu 1 4 2628 2627 2641 2642
		f 4 4833 4834 4835 4836
		mu 0 4 2598 2487 2599 2600
		mu 1 4 2643 2539 2644 2645
		f 4 -4835 -4704 4837 4838
		mu 0 4 2599 2487 2496 2601
		mu 1 4 2644 2539 2548 2646
		f 4 -4738 4839 4840 4841
		mu 0 4 2525 2524 2602 2603
		mu 1 4 2574 2573 2647 2648
		f 4 -4841 4842 4843 4844
		mu 0 4 2604 2605 2606 2607
		mu 1 4 2649 2650 2651 2652
		f 4 4845 -4830 4846 -4769
		mu 0 4 2549 2608 2609 2550
		mu 1 4 2596 2653 2654 2597
		f 4 -4839 4847 4848 4849
		mu 0 4 2610 2611 2513 2612
		mu 1 4 2655 2656 2562 2657
		f 4 -4821 -4812 -4714 -4686
		mu 0 4 2486 2584 2502 2483
		mu 1 4 2538 2629 2554 2535
		f 4 -4688 -4834 4850 -4816
		mu 0 4 2488 2487 2598 2587
		mu 1 4 2540 2539 2643 2632
		f 4 -4725 -4848 4851 4852
		mu 0 4 2514 2513 2611 2613
		mu 1 4 2563 2562 2656 2658
		f 4 -4838 -4701 4853 -4852
		mu 0 4 2601 2496 2497 2614
		mu 1 4 2646 2548 2549 2659
		f 4 4854 -4677 4855 -4669
		mu 0 4 2615 2480 2455 2616
		mu 1 4 2526 2532 2507 2527
		f 4 4856 4857 4858 4859
		mu 0 4 2617 2618 2619 2620
		mu 1 4 2660 2661 2662 2663
		f 4 4860 4861 4862 4863
		mu 0 4 2621 2622 2623 2624
		mu 1 4 2664 2665 2666 2667
		f 4 4864 4865 -4862 4866
		mu 0 4 2625 2626 2623 2622
		mu 1 4 2668 2669 2666 2665
		f 4 4867 4868 4869 4870
		mu 0 4 2627 2628 2629 2630
		mu 1 4 2670 2671 2672 2673
		f 4 4871 4872 4873 4874
		mu 0 4 2631 2632 2633 2634
		mu 1 4 2674 2675 2676 2677
		f 4 4875 4876 4877 -4864
		mu 0 4 2624 2635 2636 2621
		mu 1 4 2667 2678 2679 2664
		f 4 4878 4879 4880 -4877
		mu 0 4 2635 2637 2638 2636
		mu 1 4 2678 2680 2681 2679
		f 4 4881 4882 4883 -4869
		mu 0 4 2628 2639 2640 2629
		mu 1 4 2671 2682 2683 2672
		f 4 4884 4885 4886 -4873
		mu 0 4 2632 2641 2642 2633
		mu 1 4 2675 2684 2685 2676
		f 4 -4880 4887 -4883 4888
		mu 0 4 2638 2637 2643 2644
		mu 1 4 2681 2680 2686 2687
		f 4 4889 -4804 4890 -4886
		mu 0 4 2645 2579 2578 2646
		mu 1 4 2688 2624 2623 2689
		f 4 -4653 4891 -4662 4892
		mu 0 4 2461 2460 2469 2468
		mu 1 4 2513 2512 2521 2520
		f 4 -4657 4893 -4665 -4892
		mu 0 4 2460 2464 2471 2469
		mu 1 4 2512 2516 2523 2521
		f 4 -4727 -4730 4894 4895
		mu 0 4 2516 2515 2518 2647
		mu 1 4 2565 2564 2567 2690
		f 4 4896 -4896 4897 -4823
		mu 0 4 2588 2516 2647 2589
		mu 1 4 2633 2565 2690 2634
		f 4 -4731 -4726 4898 4899
		mu 0 4 2519 2515 2514 2648
		mu 1 4 2568 2564 2563 2691
		f 4 -4748 -4900 4900 4901
		mu 0 4 2532 2519 2648 2607
		mu 1 4 2581 2568 2691 2652
		f 4 -4771 -4785 4902 4903
		mu 0 4 2552 2551 2554 2649
		mu 1 4 2599 2598 2601 2692
		f 4 4904 -4786 -4770 4905
		mu 0 4 2590 2563 2551 2550
		mu 1 4 2635 2610 2598 2597
		f 4 -4871 4906 -4860 4907
		mu 0 4 2627 2630 2617 2620
		mu 1 4 2670 2673 2660 2663
		f 4 4908 4909 -4908 4910
		mu 0 4 2650 2634 2627 2620
		mu 1 4 2693 2677 2670 2663
		f 4 -4667 4911 -4655 4912
		mu 0 4 2473 2472 2463 2462
		mu 1 4 2525 2524 2515 2514
		f 4 -4912 -4673 4913 -4658
		mu 0 4 2463 2472 2477 2465
		mu 1 4 2515 2524 2529 2517
		f 4 -4720 4914 -4895 4915
		mu 0 4 2508 2507 2647 2518
		mu 1 4 2560 2559 2690 2567
		f 4 -4723 4916 -4898 -4915
		mu 0 4 2507 2511 2589 2647
		mu 1 4 2559 2561 2634 2690
		f 4 4917 4918 -4916 -4729
		mu 0 4 2517 2538 2508 2518
		mu 1 4 2566 2585 2560 2567
		f 4 4919 -4755 -4918 -4747
		mu 0 4 2531 2535 2538 2517
		mu 1 4 2580 2584 2585 2566
		f 4 4920 4921 4922 4923
		mu 0 4 2651 2652 2653 2654
		mu 1 4 2694 2695 2696 2697
		f 4 4924 4925 4926 4927
		mu 0 4 2655 2656 2553 2657
		mu 1 4 2698 2699 2600 2700
		f 4 4928 4929 4930 4931
		mu 0 4 2658 2556 2659 2660
		mu 1 4 2701 2603 2702 2703
		f 4 -4789 4932 4933 4934
		mu 0 4 2567 2566 2661 2650
		mu 1 4 2614 2613 2704 2693
		f 4 4935 4936 4937 4938
		mu 0 4 2662 2659 2663 2664
		mu 1 4 2705 2702 2706 2707
		f 4 4939 -4858 4940 4941
		mu 0 4 2665 2619 2618 2666
		mu 1 4 2708 2662 2661 2709
		f 4 -4928 4942 -4756 4943
		mu 0 4 2667 2668 2540 2539
		mu 1 4 2698 2700 2587 2586
		f 4 -4932 4944 -4781 4945
		mu 0 4 2669 2670 2562 2561
		mu 1 4 2701 2703 2609 2608
		f 4 4946 -4671 -4856 -4645
		mu 0 4 2454 2671 2616 2455
		mu 1 4 2506 2528 2527 2507
		f 4 -4942 4947 -4865 4948
		mu 0 4 2672 2673 2626 2625
		mu 1 4 2708 2709 2669 2668
		f 4 4949 4950 4951 4952
		mu 0 4 2674 2675 2676 2593
		mu 1 4 2710 2711 2712 2638
		f 4 4953 -4953 -4827 4954
		mu 0 4 2677 2674 2593 2592
		mu 1 4 2713 2710 2638 2637
		f 4 4955 -4955 -4832 4956
		mu 0 4 2678 2679 2596 2582
		mu 1 4 2714 2715 2641 2627
		f 4 -4936 4957 4958 -4931
		mu 0 4 2659 2662 2680 2660
		mu 1 4 2702 2705 2716 2703
		f 4 -4959 4959 4960 -4945
		mu 0 4 2670 2681 2682 2562
		mu 1 4 2703 2716 2717 2609
		f 4 4961 4962 4963 -4778
		mu 0 4 2558 2683 2684 2559
		mu 1 4 2605 2718 2719 2606
		f 4 -4961 4964 -4962 -4782
		mu 0 4 2562 2682 2683 2558
		mu 1 4 2609 2717 2718 2605
		f 4 -4964 4965 4966 -4806
		mu 0 4 2559 2684 2685 2580
		mu 1 4 2606 2719 2720 2625
		f 4 4967 -4957 -4809 -4967
		mu 0 4 2685 2678 2582 2580
		mu 1 4 2720 2714 2627 2625
		f 4 4968 -4938 4969 -4951
		mu 0 4 2675 2664 2663 2676
		mu 1 4 2711 2707 2706 2712
		f 4 -4939 4970 -4933 4971
		mu 0 4 2662 2664 2661 2566
		mu 1 4 2705 2707 2704 2613
		f 4 -4775 4972 -4937 -4930
		mu 0 4 2556 2555 2663 2659
		mu 1 4 2603 2602 2706 2702
		f 4 4973 -4780 4974 -4767
		mu 0 4 2541 2557 2560 2544
		mu 1 4 2588 2604 2607 2591
		f 4 4975 -4783 -4974 -4757
		mu 0 4 2540 2561 2557 2541
		mu 1 4 2587 2608 2604 2588
		f 4 -4784 4976 -4970 -4973
		mu 0 4 2555 2563 2676 2663
		mu 1 4 2602 2610 2712 2706
		f 4 -4975 -4808 4977 -4761
		mu 0 4 2544 2560 2581 2545
		mu 1 4 2591 2607 2626 2592
		f 4 -4978 -4811 4978 -4764
		mu 0 4 2545 2581 2583 2547
		mu 1 4 2592 2626 2628 2594
		f 4 -4825 -4906 -4847 4979
		mu 0 4 2591 2590 2550 2609
		mu 1 4 2636 2635 2597 2654
		f 4 -4979 -4833 -4980 -4829
		mu 0 4 2547 2583 2597 2594
		mu 1 4 2594 2628 2642 2639
		f 4 -4905 -4828 -4952 -4977
		mu 0 4 2563 2590 2593 2676
		mu 1 4 2610 2635 2638 2712
		f 4 -4929 4980 -4927 -4776
		mu 0 4 2556 2658 2657 2553
		mu 1 4 2603 2701 2700 2600
		f 4 -4981 -4946 -4976 -4943
		mu 0 4 2668 2669 2561 2540
		mu 1 4 2700 2701 2608 2587
		f 4 -4790 4981 -4940 4982
		mu 0 4 2564 2567 2619 2665
		mu 1 4 2611 2614 2662 2708
		f 4 4983 -4793 -4983 -4949
		mu 0 4 2625 2568 2571 2672
		mu 1 4 2668 2615 2611 2708
		f 4 -4797 4984 -4861 4985
		mu 0 4 2572 2575 2622 2621
		mu 1 4 2617 2620 2665 2664
		f 4 -4985 -4799 -4984 -4867
		mu 0 4 2622 2575 2568 2625
		mu 1 4 2665 2620 2615 2668
		f 4 -4872 4986 -4950 4987
		mu 0 4 2632 2631 2675 2674
		mu 1 4 2675 2674 2711 2710
		f 4 4988 -4802 -4986 -4878
		mu 0 4 2636 2576 2572 2621
		mu 1 4 2679 2621 2617 2664
		f 4 -4803 -4989 -4881 4989
		mu 0 4 2578 2576 2636 2638
		mu 1 4 2623 2621 2679 2681
		f 4 -4885 -4988 -4954 4990
		mu 0 4 2641 2632 2674 2677
		mu 1 4 2684 2675 2710 2713
		f 4 -4890 -4991 -4956 4991
		mu 0 4 2579 2645 2679 2678
		mu 1 4 2624 2688 2715 2714
		f 4 -4972 -4788 4992 -4958
		mu 0 4 2662 2566 2565 2680
		mu 1 4 2705 2613 2612 2716
		f 4 -4993 -4792 4993 -4960
		mu 0 4 2681 2570 2569 2682
		mu 1 4 2716 2612 2616 2717
		f 4 4994 -4795 4995 -4963
		mu 0 4 2683 2574 2573 2684
		mu 1 4 2718 2619 2618 2719
		f 4 -4994 -4798 -4995 -4965
		mu 0 4 2682 2569 2574 2683
		mu 1 4 2717 2616 2619 2718
		f 4 -4874 4996 -4868 -4910
		mu 0 4 2634 2633 2628 2627
		mu 1 4 2677 2676 2671 2670
		f 4 -4996 -4801 4997 -4966
		mu 0 4 2684 2573 2577 2685
		mu 1 4 2719 2618 2622 2720
		f 4 -4805 -4992 -4968 -4998
		mu 0 4 2577 2579 2678 2685
		mu 1 4 2622 2624 2714 2720
		f 4 -4887 4998 -4882 -4997
		mu 0 4 2633 2642 2639 2628
		mu 1 4 2676 2685 2682 2671
		f 4 -4891 -4990 -4889 -4999
		mu 0 4 2646 2578 2638 2644
		mu 1 4 2689 2623 2681 2687
		f 4 4999 -4971 -4969 -4987
		mu 0 4 2631 2661 2664 2675
		mu 1 4 2674 2704 2707 2711
		f 4 -4909 -4934 -5000 -4875
		mu 0 4 2634 2650 2661 2631
		mu 1 4 2677 2693 2704 2674
		f 4 -4935 -4911 -4859 -4982
		mu 0 4 2567 2650 2620 2619
		mu 1 4 2614 2693 2663 2662
		f 4 -4751 5000 -4715 5001
		mu 0 4 2534 2530 2500 2504
		mu 1 4 2583 2579 2552 2556
		f 4 -4754 -5002 -4721 -4919
		mu 0 4 2538 2537 2509 2508
		mu 1 4 2585 2583 2556 2560
		f 4 5002 5003 5004 -4696
		mu 0 4 2493 2526 2686 2494
		mu 1 4 2545 2575 2721 2546
		f 4 -5005 5005 5006 -4700
		mu 0 4 2494 2686 2687 2497
		mu 1 4 2546 2721 2722 2549
		f 4 -4745 5007 -4707 -5001
		mu 0 4 2530 2527 2501 2500
		mu 1 4 2579 2576 2553 2552
		f 4 -4741 -5003 -4710 -5008
		mu 0 4 2527 2526 2493 2501
		mu 1 4 2576 2575 2545 2553
		f 4 -5007 5008 5009 -4854
		mu 0 4 2497 2687 2688 2614
		mu 1 4 2549 2722 2723 2659
		f 4 -5010 5010 -4899 -4853
		mu 0 4 2613 2689 2648 2514
		mu 1 4 2658 2724 2691 2563
		f 4 -4740 -4736 5011 -5004
		mu 0 4 2526 2520 2523 2686
		mu 1 4 2575 2569 2572 2721
		f 4 -5012 -4739 5012 -5006
		mu 0 4 2686 2523 2525 2687
		mu 1 4 2721 2572 2574 2722
		f 4 -4733 -4743 5013 5014
		mu 0 4 2521 2520 2528 2690
		mu 1 4 2570 2569 2577 2725
		f 4 -4744 5015 5016 -5014
		mu 0 4 2528 2529 2691 2690
		mu 1 4 2577 2578 2726 2725
		f 4 5017 -4749 5018 5019
		mu 0 4 2654 2531 2532 2692
		mu 1 4 2697 2580 2581 2727
		f 4 -4750 5020 5021 -5016
		mu 0 4 2529 2533 2693 2691
		mu 1 4 2578 2582 2728 2726
		f 4 -4753 5022 5023 -5021
		mu 0 4 2536 2535 2653 2694
		mu 1 4 2582 2584 2696 2728
		f 4 -5013 -4842 5024 -5009
		mu 0 4 2687 2525 2603 2688
		mu 1 4 2722 2574 2648 2723
		f 4 -5025 -4845 -4901 -5011
		mu 0 4 2689 2604 2607 2648
		mu 1 4 2724 2649 2652 2691
		f 4 -5019 -4902 -4844 5025
		mu 0 4 2692 2532 2607 2606
		mu 1 4 2727 2581 2652 2651
		f 4 -4920 -5018 -4923 -5023
		mu 0 4 2535 2531 2654 2653
		mu 1 4 2584 2580 2697 2696
		f 4 5026 5027 -4641 5028
		mu 0 4 2695 2696 2452 2451
		mu 1 4 2729 2730 2504 2503
		f 4 5029 5030 -4644 -5028
		mu 0 4 2696 2697 2454 2452
		mu 1 4 2730 2731 2506 2504
		f 4 5031 5032 -4648 5033
		mu 0 4 2698 2699 2458 2457
		mu 1 4 2732 2733 2510 2509
		f 4 -5029 -4651 -5033 5034
		mu 0 4 2695 2451 2458 2699
		mu 1 4 2729 2503 2510 2733
		f 4 5035 5036 -4659 5037
		mu 0 4 2700 2701 2464 2465
		mu 1 4 2734 2735 2516 2517
		f 4 5038 5039 -4672 5040
		mu 0 4 2702 2703 2477 2476
		mu 1 4 2736 2737 2529 2528
		f 4 5041 -5034 5042 5043
		mu 0 4 2704 2698 2457 2705
		mu 1 4 2738 2732 2509 2739
		f 4 -5041 -4947 -5031 5044
		mu 0 4 2706 2671 2454 2697
		mu 1 4 2736 2528 2506 2731
		f 4 5045 -4894 -5037 5046
		mu 0 4 2707 2471 2464 2701
		mu 1 4 2740 2523 2516 2735
		f 4 -5038 -4914 -5040 5047
		mu 0 4 2700 2465 2477 2703
		mu 1 4 2734 2517 2529 2737
		f 4 5048 5049 5050 5051
		mu 0 4 2708 2709 2710 2711
		mu 1 4 2741 2742 2743 2744
		f 4 5052 5053 5054 5055
		mu 0 4 2712 2713 2714 2715
		mu 1 4 2745 2746 2747 2748
		f 4 -5055 5056 5057 5058
		mu 0 4 2715 2714 2716 2717
		mu 1 4 2748 2747 2749 2750
		f 4 -5051 5059 -5053 5060
		mu 0 4 2711 2710 2713 2712
		mu 1 4 2744 2743 2746 2745
		f 4 5061 5062 5063 5064
		mu 0 4 2718 2719 2720 2721
		mu 1 4 2751 2752 2753 2754
		f 4 -5058 5065 5066 5067
		mu 0 4 2717 2716 2722 2723
		mu 1 4 2750 2749 2755 2756
		f 4 -5067 5068 -5062 5069
		mu 0 4 2724 2725 2719 2718
		mu 1 4 2757 2758 2752 2751
		f 4 -5064 5070 5071 5072
		mu 0 4 2721 2720 2726 2651
		mu 1 4 2754 2753 2759 2694;
	setAttr ".fc[2500:2999]"
		f 4 5073 5074 5075 5076
		mu 0 4 2727 2726 2649 2656
		mu 1 4 2760 2759 2692 2699
		f 4 5077 5078 5079 5080
		mu 0 4 2727 2728 2729 2652
		mu 1 4 2760 2761 2762 2695
		f 4 -5079 5081 -5049 5082
		mu 0 4 2730 2731 2709 2708
		mu 1 4 2762 2761 2742 2741
		f 4 5083 -4759 5084 -5050
		mu 0 4 2709 2539 2542 2710
		mu 1 4 2742 2586 2589 2743
		f 4 5085 -4763 5086 -5054
		mu 0 4 2713 2543 2546 2714
		mu 1 4 2746 2590 2593 2747
		f 4 -5087 -4766 5087 -5057
		mu 0 4 2714 2546 2548 2716
		mu 1 4 2747 2593 2595 2749
		f 4 -5085 -4768 -5086 -5060
		mu 0 4 2710 2542 2543 2713
		mu 1 4 2743 2589 2590 2746
		f 4 5088 -4772 5089 -5063
		mu 0 4 2719 2549 2552 2720
		mu 1 4 2752 2596 2599 2753
		f 4 -5088 -4831 5090 -5066
		mu 0 4 2716 2548 2595 2722
		mu 1 4 2749 2595 2640 2755
		f 4 -4846 -5089 -5069 -5091
		mu 0 4 2608 2549 2719 2725
		mu 1 4 2653 2596 2752 2758
		f 4 -5090 -4904 -5075 -5071
		mu 0 4 2720 2552 2649 2726
		mu 1 4 2753 2599 2692 2759
		f 4 -4921 -5072 -5074 -5081
		mu 0 4 2652 2651 2726 2727
		mu 1 4 2695 2694 2759 2760
		f 4 -4925 5091 -5078 -5077
		mu 0 4 2656 2655 2728 2727
		mu 1 4 2699 2698 2761 2760
		f 4 -5092 -4944 -5084 -5082
		mu 0 4 2731 2667 2539 2709
		mu 1 4 2761 2698 2586 2742
		f 4 5092 -5052 5093 -5017
		mu 0 4 2691 2708 2711 2690
		mu 1 4 2726 2741 2744 2725
		f 4 5094 -5056 5095 -4734
		mu 0 4 2521 2712 2715 2522
		mu 1 4 2570 2745 2748 2571
		f 4 -5096 -5059 5096 -4737
		mu 0 4 2522 2715 2717 2524
		mu 1 4 2571 2748 2750 2573
		f 4 -5094 -5061 -5095 -5015
		mu 0 4 2690 2711 2712 2521
		mu 1 4 2725 2744 2745 2570
		f 4 5097 -5065 5098 -5026
		mu 0 4 2606 2718 2721 2692
		mu 1 4 2651 2751 2754 2727
		f 4 -5097 -5068 5099 -4840
		mu 0 4 2524 2717 2723 2602
		mu 1 4 2573 2750 2756 2647
		f 4 -5100 -5070 -5098 -4843
		mu 0 4 2605 2724 2718 2606
		mu 1 4 2650 2757 2751 2651
		f 4 -5099 -5073 -4924 -5020
		mu 0 4 2692 2721 2651 2654
		mu 1 4 2727 2754 2694 2697
		f 4 -5076 -4903 -4773 -4926
		mu 0 4 2656 2649 2554 2553
		mu 1 4 2699 2692 2601 2600
		f 4 -5080 5100 -5024 -4922
		mu 0 4 2652 2729 2694 2653
		mu 1 4 2695 2762 2728 2696
		f 4 -5101 -5083 -5093 -5022
		mu 0 4 2693 2730 2708 2691
		mu 1 4 2728 2762 2741 2726
		f 4 -4675 5101 -4820 5102
		mu 0 4 2479 2478 2585 2490
		mu 1 4 2531 2530 2630 2542
		f 4 -4678 5103 -4814 -5102
		mu 0 4 2478 2480 2503 2585
		mu 1 4 2530 2532 2555 2630
		f 4 -4680 5104 -4694 5105
		mu 0 4 2482 2481 2489 2491
		mu 1 4 2534 2533 2541 2543
		f 4 -4682 -5103 -4691 -5105
		mu 0 4 2481 2479 2490 2489
		mu 1 4 2533 2531 2542 2541
		f 4 -4855 -4818 -4718 -5104
		mu 0 4 2480 2615 2506 2503
		mu 1 4 2532 2526 2558 2555
		f 4 -4819 -4913 -4824 -4917
		mu 0 4 2511 2473 2462 2589
		mu 1 4 2561 2525 2514 2634
		f 4 -4849 -4728 -4897 5106
		mu 0 4 2612 2513 2516 2588
		mu 1 4 2657 2562 2565 2633
		f 4 5107 -5107 -4822 -4893
		mu 0 4 2468 2612 2588 2461
		mu 1 4 2520 2657 2633 2513
		f 4 -4815 5108 5109 -5106
		mu 0 4 2491 2586 2732 2482
		mu 1 4 2543 2631 2763 2534
		f 4 5110 5111 -5043 -4647
		mu 0 4 2456 2733 2705 2457
		mu 1 4 2508 2764 2739 2509
		f 4 -5110 5112 -5111 -4681
		mu 0 4 2482 2732 2733 2456
		mu 1 4 2534 2763 2764 2508
		f 4 5113 -4666 -5046 5114
		mu 0 4 2734 2470 2471 2707
		mu 1 4 2765 2522 2523 2740
		f 4 5115 -4836 -4850 5116
		mu 0 4 2735 2736 2610 2612
		mu 1 4 2766 2767 2655 2657
		f 4 5117 -5117 -5108 -4661
		mu 0 4 2467 2735 2612 2468
		mu 1 4 2519 2766 2657 2520
		f 4 5118 5119 5120 5121
		mu 0 4 2737 2738 2739 2740
		mu 1 4 2768 2769 2770 2771
		f 4 5122 5123 5124 5125
		mu 0 4 2741 2742 2743 2744
		mu 1 4 2772 2773 2774 2775
		f 4 5126 -5126 5127 5128
		mu 0 4 2745 2741 2744 2746
		mu 1 4 2776 2772 2775 2777
		f 4 5129 5130 5131 5132
		mu 0 4 2747 2748 2749 2750
		mu 1 4 2778 2779 2780 2781
		f 4 5133 5134 5135 -5124
		mu 0 4 2742 2751 2752 2743
		mu 1 4 2773 2782 2783 2774
		f 4 5136 5137 5138 -5135
		mu 0 4 2751 2753 2754 2752
		mu 1 4 2782 2784 2785 2783
		f 4 5139 -5133 5140 5141
		mu 0 4 2755 2747 2750 2756
		mu 1 4 2786 2778 2781 2787
		f 4 5142 -5142 5143 -5138
		mu 0 4 2753 2757 2758 2754
		mu 1 4 2784 2788 2789 2785
		f 4 5144 -5122 5145 -5131
		mu 0 4 2748 2737 2740 2749
		mu 1 4 2779 2768 2771 2780
		f 4 5146 5147 5148 -5120
		mu 0 4 2738 2759 2760 2739
		mu 1 4 2769 2790 2791 2770
		f 4 5149 -5129 5150 -5148
		mu 0 4 2761 2745 2746 2762
		mu 1 4 2790 2776 2777 2791
		f 4 -5121 5162 -4857 5163
		mu 0 4 2740 2739 2618 2617
		mu 1 4 2771 2770 2661 2660
		f 4 -5125 5164 -4863 5165
		mu 0 4 2744 2743 2624 2623
		mu 1 4 2775 2774 2667 2666
		f 4 -5128 -5166 -4866 5166
		mu 0 4 2746 2744 2623 2626
		mu 1 4 2777 2775 2666 2669
		f 4 -5132 5167 -4870 5168
		mu 0 4 2750 2749 2630 2629
		mu 1 4 2781 2780 2673 2672
		f 4 -5136 5169 -4876 -5165
		mu 0 4 2743 2752 2635 2624
		mu 1 4 2774 2783 2678 2667
		f 4 -5139 5170 -4879 -5170
		mu 0 4 2752 2754 2637 2635
		mu 1 4 2783 2785 2680 2678
		f 4 -5141 -5169 -4884 5171
		mu 0 4 2756 2750 2629 2640
		mu 1 4 2787 2781 2672 2683
		f 4 -5144 -5172 -4888 -5171
		mu 0 4 2754 2758 2643 2637
		mu 1 4 2785 2789 2686 2680
		f 4 -5146 -5164 -4907 -5168
		mu 0 4 2749 2740 2617 2630
		mu 1 4 2780 2771 2660 2673
		f 4 -5149 5172 -4941 -5163
		mu 0 4 2739 2760 2666 2618
		mu 1 4 2770 2791 2709 2661
		f 4 -5151 -5167 -4948 -5173
		mu 0 4 2762 2746 2626 2673
		mu 1 4 2791 2777 2669 2709
		f 4 -5152 5173 -5027 5174
		mu 0 4 2763 2764 2696 2695
		mu 1 4 2792 2793 2730 2729
		f 4 -5153 5175 -5030 -5174
		mu 0 4 2764 2765 2697 2696
		mu 1 4 2793 2794 2731 2730
		f 4 -5154 5176 -5032 5177
		mu 0 4 2766 2767 2699 2698
		mu 1 4 2795 2796 2733 2732
		f 4 -5155 -5175 -5035 -5177
		mu 0 4 2767 2763 2695 2699
		mu 1 4 2796 2792 2729 2733
		f 4 5178 -5156 5179 -5036
		mu 0 4 2700 2768 2769 2701
		mu 1 4 2734 2797 2798 2735
		f 4 5180 -5157 5181 -5039
		mu 0 4 2702 2770 2771 2703
		mu 1 4 2736 2799 2800 2737
		f 4 -5158 -5178 -5042 5182
		mu 0 4 2772 2766 2698 2704
		mu 1 4 2801 2795 2732 2738
		f 4 -5159 -5181 -5045 -5176
		mu 0 4 2765 2773 2706 2697
		mu 1 4 2794 2799 2736 2731
		f 4 -5180 -5160 5183 -5047
		mu 0 4 2701 2769 2774 2707
		mu 1 4 2735 2798 2802 2740
		f 4 -5182 -5161 -5179 -5048
		mu 0 4 2703 2771 2768 2700
		mu 1 4 2737 2800 2797 2734
		f 4 -5184 -5162 5184 -5115
		mu 0 4 2707 2774 2775 2734
		mu 1 4 2740 2802 2803 2765
		f 4 5185 5186 5187 5188
		mu 0 4 2776 2777 2778 2779
		mu 1 4 2804 2805 2806 2807
		f 4 5189 5190 5191 -5187
		mu 0 4 2777 2780 2781 2778
		mu 1 4 2805 2808 2809 2806
		f 4 5192 5193 5194 5195
		mu 0 4 2782 2783 2784 2785
		mu 1 4 2810 2811 2812 2813
		f 4 5196 -5189 5197 -5194
		mu 0 4 2783 2776 2779 2784
		mu 1 4 2811 2804 2807 2812
		f 4 5198 5199 5200 5201
		mu 0 4 2786 2787 2788 2789
		mu 1 4 2814 2815 2816 2817
		f 4 5202 5203 -5199 5204
		mu 0 4 2790 2791 2787 2786
		mu 1 4 2818 2819 2815 2814
		f 4 5205 5206 5207 -4660
		mu 0 4 2466 2792 2793 2467
		mu 1 4 2518 2820 2821 2519
		f 4 5208 5209 -5206 -4664
		mu 0 4 2470 2794 2792 2466
		mu 1 4 2522 2822 2820 2518
		f 4 5210 5211 5212 5213
		mu 0 4 2795 2796 2797 2798
		mu 1 4 2823 2824 2825 2826
		f 4 5214 5215 5216 -5211
		mu 0 4 2795 2799 2800 2796
		mu 1 4 2823 2827 2828 2824
		f 4 5217 5218 5219 -5186
		mu 0 4 2776 2801 2802 2777
		mu 1 4 2804 2829 2830 2805
		f 4 -5220 5220 5221 -5190
		mu 0 4 2777 2802 2803 2780
		mu 1 4 2805 2830 2831 2808
		f 4 5222 5223 5224 -5193
		mu 0 4 2782 2804 2805 2783
		mu 1 4 2810 2832 2833 2811
		f 4 -5225 5225 -5218 -5197
		mu 0 4 2783 2805 2801 2776
		mu 1 4 2811 2833 2829 2804
		f 4 5226 5227 5228 5229
		mu 0 4 2806 2807 2808 2809
		mu 1 4 2834 2835 2836 2837
		f 4 -5229 5230 5231 5232
		mu 0 4 2809 2808 2810 2811
		mu 1 4 2837 2836 2838 2839
		f 4 5233 5234 5235 -5228
		mu 0 4 2807 2812 2813 2808
		mu 1 4 2835 2840 2841 2836
		f 4 -5236 5236 5237 -5231
		mu 0 4 2808 2813 2814 2810
		mu 1 4 2836 2841 2842 2838
		f 4 5238 5239 5240 5241
		mu 0 4 2815 2816 2817 2818
		mu 1 4 2843 2844 2845 2846
		f 4 5242 5243 -5240 5244
		mu 0 4 2819 2820 2817 2816
		mu 1 4 2847 2848 2845 2844
		f 4 5245 -5230 5246 -5239
		mu 0 4 2815 2806 2809 2816
		mu 1 4 2843 2834 2837 2844
		f 4 -5247 -5233 5247 -5245
		mu 0 4 2816 2809 2811 2819
		mu 1 4 2844 2837 2839 2847
		f 4 5248 5249 5250 5251
		mu 0 4 2821 2822 2823 2824
		mu 1 4 2849 2850 2851 2852
		f 4 -5242 5252 -5249 5253
		mu 0 4 2815 2818 2822 2821
		mu 1 4 2843 2846 2850 2849
		f 4 5254 5255 5256 -5252
		mu 0 4 2824 2825 2826 2821
		mu 1 4 2852 2853 2854 2849
		f 4 -5257 5257 -5246 -5254
		mu 0 4 2821 2826 2806 2815
		mu 1 4 2849 2854 2834 2843
		f 4 5258 5259 -5251 5260
		mu 0 4 2827 2828 2824 2823
		mu 1 4 2855 2856 2852 2851
		f 4 5261 5262 -5255 -5260
		mu 0 4 2828 2829 2825 2824
		mu 1 4 2856 2857 2853 2852
		f 4 5263 -5259 5264 5265
		mu 0 4 2830 2831 2832 2833
		mu 1 4 2858 2856 2855 2859
		f 4 5266 -5262 -5264 5267
		mu 0 4 2834 2835 2831 2830
		mu 1 4 2860 2857 2856 2858
		f 4 5268 5269 5270 5271
		mu 0 4 2836 2837 2838 2839
		mu 1 4 2861 2862 2863 2864
		f 4 5272 5273 5274 5275
		mu 0 4 2840 2841 2838 2842
		mu 1 4 2865 2866 2863 2867
		f 4 5276 5277 5278 5279
		mu 0 4 2843 2844 2845 2846
		mu 1 4 2868 2869 2870 2871
		f 4 5280 5281 5282 -5278
		mu 0 4 2844 2847 2848 2845
		mu 1 4 2869 2872 2873 2870
		f 4 5283 5284 5285 5286
		mu 0 4 2843 2849 2850 2851
		mu 1 4 2868 2874 2875 2876
		f 4 5287 5288 -5285 5289
		mu 0 4 2852 2853 2850 2849
		mu 1 4 2877 2878 2875 2874
		f 4 5290 5291 -5273 5292
		mu 0 4 2854 2855 2841 2840
		mu 1 4 2879 2880 2866 2865
		f 4 5293 5294 -5288 5295
		mu 0 4 2856 2857 2853 2852
		mu 1 4 2881 2882 2878 2877
		f 4 5296 5297 -5294 5298
		mu 0 4 2858 2859 2860 2861
		mu 1 4 2883 2884 2882 2881
		f 4 5299 5300 5301 5302
		mu 0 4 2862 2863 2864 2865
		mu 1 4 2885 2886 2887 2888
		f 4 5303 5304 5305 5306
		mu 0 4 2866 2867 2868 2869
		mu 1 4 2889 2890 2891 2892
		f 4 5307 5308 5309 -5305
		mu 0 4 2867 2870 2871 2868
		mu 1 4 2890 2893 2894 2891
		f 4 5310 -5307 5311 -5301
		mu 0 4 2863 2866 2869 2864
		mu 1 4 2886 2889 2892 2887
		f 4 5312 5313 5314 5315
		mu 0 4 2872 2873 2874 2875
		mu 1 4 2895 2896 2897 2898
		f 4 5316 5317 5318 5319
		mu 0 4 2876 2877 2878 2879
		mu 1 4 2899 2900 2901 2902
		f 4 5320 5321 5322 5323
		mu 0 4 2880 2881 2882 2883
		mu 1 4 2903 2904 2905 2906
		f 4 5324 -5324 5325 5326
		mu 0 4 2884 2880 2883 2885
		mu 1 4 2907 2903 2906 2908
		f 4 5327 5328 -5319 5329
		mu 0 4 2886 2874 2879 2878
		mu 1 4 2909 2897 2902 2901
		f 4 5330 5331 5332 5333
		mu 0 4 2887 2888 2889 2890
		mu 1 4 2910 2911 2912 2913
		f 4 5334 -5334 5335 5336
		mu 0 4 2891 2892 2893 2894
		mu 1 4 2914 2910 2913 2915
		f 4 5337 5338 5339 5340
		mu 0 4 2895 2896 2897 2898
		mu 1 4 2916 2917 2918 2919
		f 4 5341 -5337 5342 -5339
		mu 0 4 2896 2891 2894 2897
		mu 1 4 2917 2914 2915 2918
		f 4 5343 -5341 5344 5345
		mu 0 4 2899 2895 2898 2900
		mu 1 4 2920 2916 2919 2921
		f 4 -5346 5346 5347 5348
		mu 0 4 2899 2900 2901 2902
		mu 1 4 2920 2921 2922 2923
		f 4 5349 5350 5351 -5322
		mu 0 4 2881 2903 2904 2882
		mu 1 4 2904 2924 2925 2905
		f 4 5352 5353 5354 -5351
		mu 0 4 2903 2905 2906 2904
		mu 1 4 2924 2926 2927 2925
		f 4 -5256 5355 5356 5357
		mu 0 4 2826 2825 2907 2908
		mu 1 4 2854 2853 2928 2929
		f 4 -4817 5358 -5238 5359
		mu 0 4 2586 2587 2810 2814
		mu 1 4 2930 2931 2838 2842
		f 4 5360 -5213 5361 -5267
		mu 0 4 2834 2798 2797 2835
		mu 1 4 2860 2826 2825 2857
		f 4 5362 -5357 5363 -5234
		mu 0 4 2807 2908 2907 2812
		mu 1 4 2835 2929 2928 2840
		f 4 -5201 5364 5365 5366
		mu 0 4 2789 2788 2909 2910
		mu 1 4 2817 2816 2932 2933
		f 4 5367 5368 5369 5370
		mu 0 4 2911 2912 2913 2914
		mu 1 4 2934 2935 2936 2937
		f 4 5371 5372 5373 -5309
		mu 0 4 2870 2915 2916 2871
		mu 1 4 2893 2938 2939 2894
		f 4 5374 -5370 5375 -5354
		mu 0 4 2905 2917 2918 2906
		mu 1 4 2926 2940 2941 2927
		f 4 -4837 5376 5377 5378
		mu 0 4 2598 2600 2919 2811
		mu 1 4 2942 2943 2944 2839
		f 4 5379 5380 -5248 -5378
		mu 0 4 2919 2920 2819 2811
		mu 1 4 2944 2945 2847 2839
		f 4 5381 5382 5383 -5282
		mu 0 4 2847 2921 2922 2848
		mu 1 4 2872 2946 2947 2873
		f 4 5384 5385 5386 -5383
		mu 0 4 2923 2924 2925 2926
		mu 1 4 2948 2949 2950 2951
		f 4 -5316 5387 -5373 5388
		mu 0 4 2872 2875 2927 2928
		mu 1 4 2895 2898 2952 2953
		f 4 5389 5390 5391 -5380
		mu 0 4 2929 2930 2836 2931
		mu 1 4 2954 2955 2861 2956
		f 4 -5227 -5258 -5358 -5363
		mu 0 4 2807 2806 2826 2908
		mu 1 4 2835 2834 2854 2929
		f 4 -5359 -4851 -5379 -5232
		mu 0 4 2810 2587 2598 2811
		mu 1 4 2838 2931 2942 2839
		f 4 5392 5393 -5392 -5272
		mu 0 4 2839 2932 2931 2836
		mu 1 4 2864 2957 2956 2861
		f 4 -5394 5394 -5243 -5381
		mu 0 4 2920 2933 2820 2819
		mu 1 4 2945 2958 2848 2847
		f 4 -5212 5395 -5222 5396
		mu 0 4 2934 2935 2780 2803
		mu 1 4 2825 2824 2808 2831
		f 4 5397 5398 5399 5400
		mu 0 4 2936 2937 2938 2939
		mu 1 4 2959 2960 2961 2962
		f 4 5401 5402 5403 5404
		mu 0 4 2940 2941 2942 2943
		mu 1 4 2963 2964 2965 2966
		f 4 5405 -5404 5406 5407
		mu 0 4 2944 2943 2942 2945
		mu 1 4 2967 2966 2965 2968
		f 4 5408 5409 5410 5411
		mu 0 4 2946 2947 2948 2949
		mu 1 4 2969 2970 2971 2972
		f 4 5412 5413 5414 5415
		mu 0 4 2950 2951 2952 2953
		mu 1 4 2973 2974 2975 2976
		f 4 -5402 5416 5417 5418
		mu 0 4 2941 2940 2954 2955
		mu 1 4 2964 2963 2977 2978
		f 4 -5418 5419 5420 5421
		mu 0 4 2955 2954 2956 2957
		mu 1 4 2978 2977 2979 2980
		f 4 -5411 5422 5423 5424
		mu 0 4 2949 2948 2958 2959
		mu 1 4 2972 2971 2981 2982
		f 4 -5415 5425 5426 5427
		mu 0 4 2953 2952 2960 2961
		mu 1 4 2976 2975 2983 2984
		f 4 5428 -5424 5429 -5421
		mu 0 4 2956 2962 2963 2957
		mu 1 4 2979 2985 2986 2980
		f 4 -5427 5430 -5348 5431
		mu 0 4 2964 2965 2902 2901
		mu 1 4 2987 2988 2923 2922
		f 4 5432 -5207 5433 -5202
		mu 0 4 2789 2793 2792 2786
		mu 1 4 2817 2821 2820 2814
		f 4 -5434 -5210 5434 -5205
		mu 0 4 2786 2792 2794 2790
		mu 1 4 2814 2820 2822 2818
		f 4 5435 5436 -5275 -5270
		mu 0 4 2837 2966 2842 2838
		mu 1 4 2862 2989 2867 2863
		f 4 -5366 5437 -5436 5438
		mu 0 4 2910 2909 2966 2837
		mu 1 4 2933 2932 2989 2862
		f 4 5439 5440 -5271 -5274
		mu 0 4 2841 2967 2839 2838
		mu 1 4 2866 2990 2864 2863
		f 4 5441 5442 -5440 -5292
		mu 0 4 2855 2924 2967 2841
		mu 1 4 2880 2949 2990 2866
		f 4 5443 5444 -5329 -5314
		mu 0 4 2873 2968 2879 2874
		mu 1 4 2896 2991 2902 2897
		f 4 5445 -5315 -5328 5446
		mu 0 4 2911 2875 2874 2886
		mu 1 4 2934 2898 2897 2909
		f 4 5447 -5398 5448 -5409
		mu 0 4 2946 2937 2936 2947
		mu 1 4 2969 2960 2959 2970
		f 4 5449 -5448 5450 5451
		mu 0 4 2969 2937 2946 2951
		mu 1 4 2992 2960 2969 2974
		f 4 5452 -5200 5453 -5214
		mu 0 4 2798 2788 2787 2795
		mu 1 4 2826 2816 2815 2823
		f 4 -5204 5454 -5215 -5454
		mu 0 4 2787 2791 2799 2795
		mu 1 4 2815 2819 2827 2823
		f 4 5455 -5437 5456 -5266
		mu 0 4 2833 2842 2966 2830
		mu 1 4 2859 2867 2989 2858
		f 4 -5457 -5438 5457 -5268
		mu 0 4 2830 2966 2909 2834
		mu 1 4 2858 2989 2932 2860
		f 4 -5276 -5456 5458 5459
		mu 0 4 2840 2842 2833 2859
		mu 1 4 2865 2867 2859 2884
		f 4 -5293 -5460 -5297 5460
		mu 0 4 2854 2840 2859 2858
		mu 1 4 2879 2865 2884 2883
		f 4 5461 5462 5463 5464
		mu 0 4 2970 2971 2972 2973
		mu 1 4 2993 2994 2995 2996
		f 4 5465 5466 5467 5468
		mu 0 4 2974 2975 2876 2976
		mu 1 4 2997 2998 2899 2999
		f 4 5469 5470 5471 5472
		mu 0 4 2977 2978 2979 2877
		mu 1 4 3000 3001 3002 2900
		f 4 5473 5474 5475 -5332
		mu 0 4 2888 2969 2980 2889
		mu 1 4 2911 2992 3003 2912
		f 4 5476 5477 5478 5479
		mu 0 4 2981 2982 2983 2979
		mu 1 4 3004 3005 3006 3002
		f 4 5480 5481 -5400 5482
		mu 0 4 2984 2985 2939 2938
		mu 1 4 3007 3008 2962 2961
		f 4 5483 -5303 5484 -5466
		mu 0 4 2986 2862 2865 2987
		mu 1 4 2997 2885 2888 2998
		f 4 5485 -5327 5486 -5470
		mu 0 4 2988 2884 2885 2989
		mu 1 4 3000 2907 2908 3001
		f 4 -5191 -5396 -5217 5487
		mu 0 4 2781 2780 2935 2990
		mu 1 4 2809 2808 2824 2828
		f 4 5488 -5408 5489 -5481
		mu 0 4 2991 2944 2945 2992
		mu 1 4 3007 2967 2968 3008
		f 4 5490 5491 5492 5493
		mu 0 4 2993 2912 2994 2995
		mu 1 4 3009 2935 3010 3011
		f 4 5494 -5369 -5491 5495
		mu 0 4 2996 2913 2912 2993
		mu 1 4 3012 2936 2935 3009
		f 4 5496 -5376 -5495 5497
		mu 0 4 2997 2906 2918 2998
		mu 1 4 3013 2927 2941 3014
		f 4 -5471 5498 5499 -5480
		mu 0 4 2979 2978 2999 2981
		mu 1 4 3002 3001 3015 3004
		f 4 -5487 5500 5501 -5499
		mu 0 4 2989 2885 3000 3001
		mu 1 4 3001 2908 3016 3015
		f 4 -5323 5502 5503 5504
		mu 0 4 2883 2882 3002 3003
		mu 1 4 2906 2905 3017 3018
		f 4 -5326 -5505 5505 -5501
		mu 0 4 2885 2883 3003 3000
		mu 1 4 2908 2906 3018 3016
		f 4 -5352 5506 5507 -5503
		mu 0 4 2882 2904 3004 3002
		mu 1 4 2905 2925 3019 3017
		f 4 -5507 -5355 -5497 5508
		mu 0 4 3004 2904 2906 2997
		mu 1 4 3019 2925 2927 3013
		f 4 -5493 5509 -5478 5510
		mu 0 4 2995 2994 2983 2982
		mu 1 4 3011 3010 3006 3005
		f 4 5511 -5476 5512 -5477
		mu 0 4 2981 2889 2980 2982
		mu 1 4 3004 2912 3003 3005
		f 4 -5472 -5479 5513 -5318
		mu 0 4 2877 2979 2983 2878
		mu 1 4 2900 3002 3006 2901
		f 4 -5312 5514 -5321 5515
		mu 0 4 2864 2869 2881 2880
		mu 1 4 2887 2892 2904 2903
		f 4 -5302 -5516 -5325 5516
		mu 0 4 2865 2864 2880 2884
		mu 1 4 2888 2887 2903 2907
		f 4 -5514 -5510 5517 -5330
		mu 0 4 2878 2983 2994 2886
		mu 1 4 2901 3006 3010 2909
		f 4 -5306 5518 -5350 -5515
		mu 0 4 2869 2868 2903 2881
		mu 1 4 2892 2891 2924 2904
		f 4 -5310 5519 -5353 -5519
		mu 0 4 2868 2871 2905 2903
		mu 1 4 2891 2894 2926 2924
		f 4 5520 -5388 -5446 -5371
		mu 0 4 2914 2927 2875 2911
		mu 1 4 2937 2952 2898 2934
		f 4 -5374 -5521 -5375 -5520
		mu 0 4 2871 2916 2917 2905
		mu 1 4 2894 2939 2940 2926
		f 4 -5518 -5492 -5368 -5447
		mu 0 4 2886 2994 2912 2911
		mu 1 4 2909 3010 2935 2934
		f 4 -5317 -5467 5521 -5473
		mu 0 4 2877 2876 2975 2977
		mu 1 4 2900 2899 2998 3000
		f 4 -5485 -5517 -5486 -5522
		mu 0 4 2987 2865 2884 2988
		mu 1 4 2998 2888 2907 3000
		f 4 5522 -5483 5523 -5331
		mu 0 4 2887 2984 2938 2888
		mu 1 4 2910 3007 2961 2911
		f 4 -5489 -5523 -5335 5524
		mu 0 4 2944 2991 2892 2891
		mu 1 4 2967 3007 2910 2914
		f 4 5525 -5405 5526 -5338
		mu 0 4 2895 2940 2943 2896
		mu 1 4 2916 2963 2966 2917
		f 4 -5406 -5525 -5342 -5527
		mu 0 4 2943 2944 2891 2896
		mu 1 4 2966 2967 2914 2917
		f 4 5527 -5494 5528 -5416
		mu 0 4 2953 2993 2995 2950
		mu 1 4 2976 3009 3011 2973
		f 4 -5417 -5526 -5344 5529
		mu 0 4 2954 2940 2895 2899
		mu 1 4 2977 2963 2916 2920
		f 4 5530 -5420 -5530 -5349
		mu 0 4 2902 2956 2954 2899
		mu 1 4 2923 2979 2977 2920
		f 4 5531 -5496 -5528 -5428
		mu 0 4 2961 2996 2993 2953
		mu 1 4 2984 3012 3009 2976
		f 4 5532 -5498 -5532 -5432
		mu 0 4 2901 2997 2998 2964
		mu 1 4 2922 3013 3014 2987
		f 4 -5500 5533 -5333 -5512
		mu 0 4 2981 2999 2890 2889
		mu 1 4 3004 3015 2913 2912
		f 4 -5502 5534 -5336 -5534
		mu 0 4 3001 3000 2894 2893
		mu 1 4 3015 3016 2915 2913
		f 4 -5504 5535 -5340 5536
		mu 0 4 3003 3002 2898 2897
		mu 1 4 3018 3017 2919 2918
		f 4 -5506 -5537 -5343 -5535
		mu 0 4 3000 3003 2897 2894
		mu 1 4 3016 3018 2918 2915
		f 4 -5451 -5412 5537 -5414
		mu 0 4 2951 2946 2949 2952
		mu 1 4 2974 2969 2972 2975
		f 4 -5508 5538 -5345 -5536
		mu 0 4 3002 3004 2900 2898
		mu 1 4 3017 3019 2921 2919
		f 4 -5539 -5509 -5533 -5347
		mu 0 4 2900 3004 2997 2901
		mu 1 4 2921 3019 3013 2922
		f 4 -5538 -5425 5539 -5426
		mu 0 4 2952 2949 2959 2960
		mu 1 4 2975 2972 2982 2983
		f 4 -5540 -5429 -5531 -5431
		mu 0 4 2965 2962 2956 2902
		mu 1 4 2988 2985 2979 2923
		f 4 -5529 -5511 -5513 5540
		mu 0 4 2950 2995 2982 2980
		mu 1 4 2973 3011 3005 3003
		f 4 -5413 -5541 -5475 -5452
		mu 0 4 2951 2950 2980 2969
		mu 1 4 2974 2973 3003 2992
		f 4 -5524 -5399 -5450 -5474
		mu 0 4 2888 2938 2937 2969
		mu 1 4 2911 2961 2960 2992
		f 4 5541 -5261 5542 -5295
		mu 0 4 2857 2827 2823 2853
		mu 1 4 2882 2855 2851 2878
		f 4 -5459 -5265 -5542 -5298
		mu 0 4 2859 2833 2832 2860
		mu 1 4 2884 2859 2855 2882
		f 4 -5241 5543 5544 5545
		mu 0 4 2818 2817 3005 2851
		mu 1 4 2846 2845 3020 2876
		f 4 -5244 5546 5547 -5544
		mu 0 4 2817 2820 3006 3005
		mu 1 4 2845 2848 3021 3020
		f 4 -5543 -5250 5548 -5289
		mu 0 4 2853 2823 2822 2850
		mu 1 4 2878 2851 2850 2875
		f 4 -5549 -5253 -5546 -5286
		mu 0 4 2850 2822 2818 2851
		mu 1 4 2875 2850 2846 2876
		f 4 -5395 5549 5550 -5547
		mu 0 4 2820 2933 3007 3006
		mu 1 4 2848 2958 3022 3021
		f 4 -5393 -5441 5551 -5550
		mu 0 4 2932 2839 2967 3008
		mu 1 4 2957 2864 2990 3023
		f 4 -5545 5552 -5277 -5287
		mu 0 4 2851 3005 2844 2843
		mu 1 4 2876 3020 2869 2868
		f 4 -5548 5553 -5281 -5553
		mu 0 4 3005 3006 2847 2844
		mu 1 4 3020 3021 2872 2869
		f 4 5554 5555 -5284 -5280
		mu 0 4 2846 3009 2849 2843
		mu 1 4 2871 3024 2874 2868
		f 4 -5556 5556 5557 -5290
		mu 0 4 2849 3009 3010 2852
		mu 1 4 2874 3024 3025 2877
		f 4 5558 5559 -5291 5560
		mu 0 4 2971 3011 2855 2854
		mu 1 4 2994 3026 2880 2879
		f 4 -5558 5561 5562 -5296
		mu 0 4 2852 3010 3012 2856
		mu 1 4 2877 3025 3027 2881
		f 4 -5563 5563 5564 -5299
		mu 0 4 2861 3013 2972 2858
		mu 1 4 2881 3027 2995 2883
		f 4 -5551 5565 -5382 -5554
		mu 0 4 3006 3007 2921 2847
		mu 1 4 3021 3022 2946 2872
		f 4 -5552 -5443 -5385 -5566
		mu 0 4 3008 2967 2924 2923
		mu 1 4 3023 2990 2949 2948
		f 4 5566 -5386 -5442 -5560
		mu 0 4 3011 2925 2924 2855
		mu 1 4 3026 2950 2949 2880
		f 4 -5565 -5463 -5561 -5461
		mu 0 4 2858 2972 2971 2854
		mu 1 4 2883 2995 2994 2879
		f 4 5567 -5188 5568 5569
		mu 0 4 3014 2779 2778 3015
		mu 1 4 3028 2807 2806 3029
		f 4 -5569 -5192 5570 5571
		mu 0 4 3015 2778 2781 3016
		mu 1 4 3029 2806 2809 3030
		f 4 5572 -5195 5573 5574
		mu 0 4 3017 2785 2784 3018
		mu 1 4 3031 2813 2812 3032
		f 4 5575 -5574 -5198 -5568
		mu 0 4 3014 3018 2784 2779
		mu 1 4 3028 3032 2812 2807
		f 4 5576 -5203 5577 5578
		mu 0 4 3019 2791 2790 3020
		mu 1 4 3033 2819 2818 3034
		f 4 5579 -5216 5580 5581
		mu 0 4 3021 2800 2799 3022
		mu 1 4 3035 2828 2827 3036
		f 4 -5044 5582 -5573 5583
		mu 0 4 2704 2705 2785 3017
		mu 1 4 3037 3038 2813 3031
		f 4 5584 -5571 -5488 -5580
		mu 0 4 3023 3016 2781 2990
		mu 1 4 3035 3030 2809 2828
		f 4 5585 -5578 -5435 5586
		mu 0 4 3024 3020 2790 2794
		mu 1 4 3039 3034 2818 2822
		f 4 5587 -5581 -5455 -5577
		mu 0 4 3019 3022 2799 2791
		mu 1 4 3033 3036 2827 2819
		f 4 5588 5589 5590 5591
		mu 0 4 3025 3026 3027 3028
		mu 1 4 3040 3041 3042 3043
		f 4 5592 5593 5594 5595
		mu 0 4 3029 3030 3031 3032
		mu 1 4 3044 3045 3046 3047
		f 4 5596 5597 5598 -5594
		mu 0 4 3030 3033 3034 3031
		mu 1 4 3045 3048 3049 3046
		f 4 5599 -5596 5600 -5590
		mu 0 4 3026 3029 3032 3027
		mu 1 4 3041 3044 3047 3042
		f 4 5601 5602 5603 5604
		mu 0 4 3035 3036 3037 3038
		mu 1 4 3050 3051 3052 3053
		f 4 5605 5606 5607 -5598
		mu 0 4 3033 3039 3040 3034
		mu 1 4 3048 3054 3055 3049
		f 4 5608 -5605 5609 -5607
		mu 0 4 3041 3035 3038 3042
		mu 1 4 3056 3050 3053 3057
		f 4 5610 5611 5612 -5603
		mu 0 4 3036 2970 3043 3037
		mu 1 4 3051 2993 3058 3052
		f 4 5613 5614 5615 5616
		mu 0 4 3044 2976 2968 3043
		mu 1 4 3059 2999 2991 3058
		f 4 5617 5618 5619 5620
		mu 0 4 3044 2973 3045 3046
		mu 1 4 3059 2996 3060 3061
		f 4 5621 -5592 5622 -5620
		mu 0 4 3047 3025 3028 3048
		mu 1 4 3060 3040 3043 3061
		f 4 -5591 5623 -5300 5624
		mu 0 4 3028 3027 2863 2862
		mu 1 4 3043 3042 2886 2885
		f 4 -5595 5625 -5304 5626
		mu 0 4 3032 3031 2867 2866
		mu 1 4 3047 3046 2890 2889
		f 4 -5599 5627 -5308 -5626
		mu 0 4 3031 3034 2870 2867
		mu 1 4 3046 3049 2893 2890
		f 4 -5601 -5627 -5311 -5624
		mu 0 4 3027 3032 2866 2863
		mu 1 4 3042 3047 2889 2886
		f 4 -5604 5628 -5313 5629
		mu 0 4 3038 3037 2873 2872
		mu 1 4 3053 3052 2896 2895
		f 4 -5608 5630 -5372 -5628
		mu 0 4 3034 3040 2915 2870
		mu 1 4 3049 3055 2938 2893
		f 4 -5631 -5610 -5630 -5389
		mu 0 4 2928 3042 3038 2872
		mu 1 4 2953 3057 3053 2895
		f 4 -5613 -5616 -5444 -5629
		mu 0 4 3037 3043 2968 2873
		mu 1 4 3052 3058 2991 2896
		f 4 -5618 -5617 -5612 -5465
		mu 0 4 2973 3044 3043 2970
		mu 1 4 2996 3059 3058 2993
		f 4 -5614 -5621 5631 -5469
		mu 0 4 2976 3044 3046 2974
		mu 1 4 2999 3059 3061 2997
		f 4 -5623 -5625 -5484 -5632
		mu 0 4 3048 3028 2862 2986
		mu 1 4 3061 3043 2885 2997
		f 4 -5557 5632 -5589 5633
		mu 0 4 3010 3009 3026 3025
		mu 1 4 3025 3024 3041 3040
		f 4 -5279 5634 -5593 5635
		mu 0 4 2846 2845 3030 3029
		mu 1 4 2871 2870 3045 3044
		f 4 -5283 5636 -5597 -5635
		mu 0 4 2845 2848 3033 3030
		mu 1 4 2870 2873 3048 3045
		f 4 -5555 -5636 -5600 -5633
		mu 0 4 3009 2846 3029 3026
		mu 1 4 3024 2871 3044 3041
		f 4 -5567 5637 -5602 5638
		mu 0 4 2925 3011 3036 3035
		mu 1 4 2950 3026 3051 3050
		f 4 -5384 5639 -5606 -5637
		mu 0 4 2848 2922 3039 3033
		mu 1 4 2873 2947 3054 3048
		f 4 -5387 -5639 -5609 -5640
		mu 0 4 2926 2925 3035 3041
		mu 1 4 2951 2950 3050 3056
		f 4 -5559 -5462 -5611 -5638
		mu 0 4 3011 2971 2970 3036
		mu 1 4 3026 2994 2993 3051
		f 4 -5468 -5320 -5445 -5615
		mu 0 4 2976 2876 2879 2968
		mu 1 4 2999 2899 2902 2991
		f 4 -5464 -5564 5640 -5619
		mu 0 4 2973 2972 3013 3045
		mu 1 4 2996 2995 3027 3060
		f 4 -5562 -5634 -5622 -5641
		mu 0 4 3012 3010 3025 3047
		mu 1 4 3027 3025 3040 3060
		f 4 5641 -5364 5642 -5219
		mu 0 4 2801 2812 2907 2802
		mu 1 4 2829 2840 2928 2830
		f 4 -5643 -5356 5643 -5221
		mu 0 4 2802 2907 2825 2803
		mu 1 4 2830 2928 2853 2831
		f 4 5644 -5237 5645 -5224
		mu 0 4 2804 2814 2813 2805
		mu 1 4 2832 2842 2841 2833
		f 4 -5646 -5235 -5642 -5226
		mu 0 4 2805 2813 2812 2801
		mu 1 4 2833 2841 2840 2829
		f 4 -5644 -5263 -5362 -5397
		mu 0 4 2803 2825 2829 2934
		mu 1 4 2831 2853 2857 2825
		f 4 -5458 -5365 -5453 -5361
		mu 0 4 2834 2909 2788 2798
		mu 1 4 2860 2932 2816 2826
		f 4 5646 -5439 -5269 -5391
		mu 0 4 2930 2910 2837 2836
		mu 1 4 2955 2933 2862 2861
		f 4 -5433 -5367 -5647 5647
		mu 0 4 2793 2789 2910 2930
		mu 1 4 2821 2817 2933 2955
		f 4 -5645 5648 -5109 -5360
		mu 0 4 2814 2804 2732 2586
		mu 1 4 2842 2832 3062 2930
		f 4 -5196 -5583 -5112 5649
		mu 0 4 2782 2785 2705 2733
		mu 1 4 2810 2813 3038 3063
		f 4 -5223 -5650 -5113 -5649
		mu 0 4 2804 2782 2733 2732
		mu 1 4 2832 2810 3063 3062
		f 4 5650 -5587 -5209 -5114
		mu 0 4 2734 3024 2794 2470
		mu 1 4 2765 3039 2822 2522
		f 4 5651 -5390 -5377 -5116
		mu 0 4 2735 2930 2929 2736
		mu 1 4 2766 2955 2954 2767
		f 4 -5208 -5648 -5652 -5118
		mu 0 4 2467 2793 2930 2735
		mu 1 4 2519 2821 2955 2766
		f 4 5652 5653 5654 5655
		mu 0 4 3049 3050 3051 3052
		mu 1 4 3064 3065 3066 3067
		f 4 5656 5657 5658 5659
		mu 0 4 3053 3054 3055 3056
		mu 1 4 3068 3069 3070 3071
		f 4 5660 5661 -5657 5662
		mu 0 4 3057 3058 3054 3053
		mu 1 4 3072 3073 3069 3068
		f 4 5663 5664 5665 5666
		mu 0 4 3059 3060 3061 3062
		mu 1 4 3074 3075 3076 3077
		f 4 -5659 5667 5668 5669
		mu 0 4 3056 3055 3063 3064
		mu 1 4 3071 3070 3078 3079
		f 4 -5669 5670 5671 5672
		mu 0 4 3064 3063 3065 3066
		mu 1 4 3079 3078 3080 3081
		f 4 5673 5674 -5664 5675
		mu 0 4 3067 3068 3060 3059
		mu 1 4 3082 3083 3075 3074
		f 4 -5672 5676 -5674 5677
		mu 0 4 3066 3065 3069 3070
		mu 1 4 3081 3080 3084 3085
		f 4 -5666 5678 -5653 5679
		mu 0 4 3062 3061 3050 3049
		mu 1 4 3077 3076 3065 3064
		f 4 -5655 5680 5681 5682
		mu 0 4 3052 3051 3071 3072
		mu 1 4 3067 3066 3086 3087
		f 4 -5682 5683 -5661 5684
		mu 0 4 3073 3074 3058 3057
		mu 1 4 3087 3086 3073 3072
		f 4 5696 -5401 5697 -5654
		mu 0 4 3050 2936 2939 3051
		mu 1 4 3065 2959 2962 3066
		f 4 5698 -5403 5699 -5658
		mu 0 4 3054 2942 2941 3055
		mu 1 4 3069 2965 2964 3070
		f 4 5700 -5407 -5699 -5662
		mu 0 4 3058 2945 2942 3054
		mu 1 4 3073 2968 2965 3069
		f 4 5701 -5410 5702 -5665
		mu 0 4 3060 2948 2947 3061
		mu 1 4 3075 2971 2970 3076
		f 4 -5700 -5419 5703 -5668
		mu 0 4 3055 2941 2955 3063
		mu 1 4 3070 2964 2978 3078
		f 4 -5704 -5422 5704 -5671
		mu 0 4 3063 2955 2957 3065
		mu 1 4 3078 2978 2980 3080
		f 4 5705 -5423 -5702 -5675
		mu 0 4 3068 2958 2948 3060
		mu 1 4 3083 2981 2971 3075
		f 4 -5705 -5430 -5706 -5677
		mu 0 4 3065 2957 2963 3069
		mu 1 4 3080 2980 2986 3084
		f 4 -5703 -5449 -5697 -5679
		mu 0 4 3061 2947 2936 3050
		mu 1 4 3076 2970 2959 3065
		f 4 -5698 -5482 5706 -5681
		mu 0 4 3051 2939 2985 3071
		mu 1 4 3066 2962 3008 3086
		f 4 -5707 -5490 -5701 -5684
		mu 0 4 3074 2992 2945 3058
		mu 1 4 3086 3008 2968 3073
		f 4 5707 -5570 5708 -5686
		mu 0 4 3075 3014 3015 3076
		mu 1 4 3088 3028 3029 3089
		f 4 -5709 -5572 5709 -5687
		mu 0 4 3076 3015 3016 3077
		mu 1 4 3089 3029 3030 3090
		f 4 5710 -5575 5711 -5688
		mu 0 4 3078 3017 3018 3079
		mu 1 4 3091 3031 3032 3092
		f 4 -5712 -5576 -5708 -5689
		mu 0 4 3079 3018 3014 3075
		mu 1 4 3092 3032 3028 3088
		f 4 -5579 5712 -5690 5713
		mu 0 4 3019 3020 3080 3081
		mu 1 4 3033 3034 3093 3094
		f 4 -5582 5714 -5691 5715
		mu 0 4 3021 3022 3082 3083
		mu 1 4 3035 3036 3095 3096
		f 4 -5183 -5584 -5711 -5692
		mu 0 4 2772 2704 3017 3078
		mu 1 4 3097 3037 3031 3091
		f 4 -5710 -5585 -5716 -5693
		mu 0 4 3077 3016 3023 3084
		mu 1 4 3090 3030 3035 3096
		f 4 -5586 5716 -5694 -5713
		mu 0 4 3020 3024 3085 3080
		mu 1 4 3034 3039 3098 3093
		f 4 -5588 -5714 -5695 -5715
		mu 0 4 3022 3019 3081 3082
		mu 1 4 3036 3033 3094 3095
		f 4 -5651 -5185 -5696 -5717
		mu 0 4 3024 2734 2775 3085
		mu 1 4 3039 2765 2803 3098
		f 4 5717 5718 5719 5720
		mu 0 4 3086 3087 3088 3089
		mu 1 4 3099 3100 3101 3102
		f 4 5721 -5721 5722 5723
		mu 0 4 3090 3086 3089 3091
		mu 1 4 3103 3099 3102 3104
		f 4 5724 5725 -5724 5726
		mu 0 4 3092 3093 3090 3091
		mu 1 4 3105 3106 3103 3104
		f 4 5727 5728 -5725 5729
		mu 0 4 3094 3095 3093 3092
		mu 1 4 3107 3108 3106 3105
		f 4 5730 5731 5732 -5718
		mu 0 4 3086 3096 3097 3087
		mu 1 4 3099 3109 3110 3100
		f 4 5733 5734 -5731 -5722
		mu 0 4 3090 3098 3096 3086
		mu 1 4 3103 3111 3109 3099
		f 4 -5726 5735 5736 -5734
		mu 0 4 3090 3093 3099 3098
		mu 1 4 3103 3106 3112 3111
		f 4 -5729 5737 5738 -5736
		mu 0 4 3093 3095 3100 3099
		mu 1 4 3106 3108 3113 3112
		f 4 5739 5740 -5742 5742
		mu 0 4 3101 3102 3103 3104
		mu 1 4 3114 3115 3116 3117
		f 4 5743 -5743 -5745 5745
		mu 0 4 3105 3101 3104 3106
		mu 1 4 3118 3114 3117 3119
		f 4 5746 5747 -5746 -5749
		mu 0 4 3107 3108 3105 3106
		mu 1 4 3120 3121 3118 3119
		f 4 5749 5750 -5747 5751
		mu 0 4 3109 3110 3108 3107
		mu 1 4 3122 3123 3121 3120
		f 4 5752 5753 -5755 5755
		mu 0 4 3111 3112 3113 3114
		mu 1 4 3124 3125 3126 3127
		f 4 5756 5757 -5759 5759
		mu 0 4 3115 3116 3117 3118
		mu 1 4 3128 3129 3130 3131
		f 4 5760 5761 5762 5763
		mu 0 4 3119 3120 3121 3122
		mu 1 4 3132 3133 3134 3135
		f 4 5764 5765 -5761 5766
		mu 0 4 3123 3124 3120 3119
		mu 1 4 3136 3137 3133 3132
		f 4 5767 5768 5769 5770
		mu 0 4 3125 3124 3126 3127
		mu 1 4 3138 3137 3139 3140
		f 4 -5772 -5770 5772 -5774
		mu 0 4 3128 3127 3126 3129
		mu 1 4 3141 3140 3139 3142
		f 4 5774 -5776 5776 5748
		mu 0 4 3106 3130 3131 3107
		mu 1 4 3119 3143 3144 3120
		f 4 5777 -5779 -5775 5744
		mu 0 4 3104 3132 3130 3106
		mu 1 4 3117 3145 3143 3119
		f 4 5779 -5781 -5778 5741
		mu 0 4 3103 3133 3132 3104
		mu 1 4 3116 3146 3145 3117
		f 4 -5782 5782 -5728 5783
		mu 0 4 3134 3135 3095 3094
		mu 1 4 3147 3148 3108 3107
		f 4 5784 -5786 5786 -5719
		mu 0 4 3087 3136 3137 3088
		mu 1 4 3100 3149 3150 3101
		f 4 5787 -5789 5789 -5791
		mu 0 4 3122 3138 3139 3097
		mu 1 4 3135 3151 3152 3110
		f 4 -5792 5792 -5750 5793
		mu 0 4 3140 3141 3110 3109
		mu 1 4 3153 3154 3123 3122
		f 4 -5795 5795 -5797 -5793
		mu 0 4 3141 3142 3143 3110
		mu 1 4 3154 3155 3156 3123
		f 4 -5796 -5798 5798 -5800
		mu 0 4 3143 3142 3144 3121
		mu 1 4 3156 3155 3157 3134
		f 4 5800 -5802 -5803 -5804
		mu 0 4 3145 3146 3147 3148
		mu 1 4 3158 3159 3160 3161
		f 4 -5805 -5806 5806 5807
		mu 0 4 3149 3150 3151 3152
		mu 1 4 3162 3163 3164 3165
		f 4 5804 5808 5809 5810
		mu 0 4 3153 3149 3154 3155
		mu 1 4 3166 3167 3153 3144
		f 4 5805 -5811 5775 5811
		mu 0 4 3156 3153 3155 3157
		mu 1 4 3168 3166 3144 3143
		f 4 -5813 -5812 5778 5813
		mu 0 4 3158 3159 3160 3161
		mu 1 4 3169 3168 3143 3145
		f 4 -5815 -5814 5780 5815
		mu 0 4 3162 3158 3161 3163
		mu 1 4 3170 3169 3145 3146
		f 4 -5817 -5816 5817 5818
		mu 0 4 3164 3162 3163 3165
		mu 1 4 3171 3170 3146 3172
		f 4 5819 -5821 5821 -5819
		mu 0 4 3165 3166 3167 3164
		mu 1 4 3172 3173 3174 3171
		f 4 5822 5823 5824 5820
		mu 0 4 3166 3168 3169 3167
		mu 1 4 3173 3175 3176 3174
		f 4 5825 5826 5827 5828
		mu 0 4 3170 3171 3172 3173
		mu 1 4 3177 3178 3179 3180
		f 4 5781 5829 5830 5831
		mu 0 4 3174 3175 3176 3177
		mu 1 4 3148 3147 3181 3182
		f 4 5832 -5834 5834 5835
		mu 0 4 3178 3179 3180 3181
		mu 1 4 3160 3183 3184 3185
		f 4 5836 5837 5838 5839
		mu 0 4 3182 3183 3184 3185
		mu 1 4 3186 3187 3159 3188
		f 4 5840 -5840 -5842 5842
		mu 0 4 3186 3182 3185 3187
		mu 1 4 3189 3186 3188 3190
		f 4 5843 -5843 5754 5844
		mu 0 4 3188 3189 3190 3191
		mu 1 4 3191 3192 3127 3126
		f 4 5845 -5845 -5847 5847
		mu 0 4 3192 3188 3191 3193
		mu 1 4 3193 3191 3126 3131
		f 4 5758 -5849 5849 -5848
		mu 0 4 3193 3194 3195 3192
		mu 1 4 3131 3130 3194 3193
		f 4 5850 5851 -5853 5848
		mu 0 4 3194 3196 3197 3195
		mu 1 4 3130 3195 3196 3194
		f 4 5853 -5855 5855 5785
		mu 0 4 3198 3199 3200 3201
		mu 1 4 3149 3197 3198 3150
		f 4 5856 5857 -5854 5858
		mu 0 4 3202 3203 3199 3198
		mu 1 4 3152 3199 3197 3149
		f 4 5859 5860 5861 5862
		mu 0 4 3204 3205 3206 3207
		mu 1 4 3151 3157 3200 3201
		f 4 5863 5864 5791 -5809
		mu 0 4 3149 3208 3209 3154
		mu 1 4 3167 3202 3154 3153
		f 4 5865 5866 -5868 5868
		mu 0 4 3210 3211 3212 3213
		mu 1 4 3203 3204 3205 3206
		f 4 5869 5870 -5869 -5872
		mu 0 4 3214 3215 3210 3213
		mu 1 4 3207 3208 3203 3206
		f 4 -5870 5872 5873 5874
		mu 0 4 3215 3214 3216 3217
		mu 1 4 3208 3207 3209 3210
		f 4 -5875 5875 5876 5877
		mu 0 4 3215 3217 3218 3219
		mu 1 4 3208 3210 3211 3212
		f 4 5878 -5880 -5871 -5878
		mu 0 4 3219 3220 3210 3215
		mu 1 4 3212 3213 3203 3208
		f 4 5879 5880 5881 -5866
		mu 0 4 3210 3220 3221 3211
		mu 1 4 3203 3213 3214 3204
		f 4 5882 5854 5883 5884
		mu 0 4 3222 3200 3199 3223
		mu 1 4 3215 3216 3217 3218
		f 4 5885 5886 -5884 -5858
		mu 0 4 3203 3224 3223 3199
		mu 1 4 3219 3220 3218 3217
		f 4 5887 -5862 5888 5889
		mu 0 4 3225 3207 3206 3226
		mu 1 4 3221 3222 3223 3224
		f 4 -5808 5890 5891 -5864
		mu 0 4 3149 3152 3227 3208
		mu 1 4 3162 3165 3225 3226
		f 4 5892 -5807 5812 5814
		mu 0 4 3162 3152 3151 3228
		mu 1 4 3227 3165 3164 3228
		f 4 -5891 -5893 5816 5893
		mu 0 4 3227 3152 3162 3164
		mu 1 4 3225 3165 3227 3229
		f 4 -5895 5895 -5894 -5822
		mu 0 4 3167 3229 3227 3164
		mu 1 4 3230 3231 3225 3229
		f 4 5894 -5825 5896 5897
		mu 0 4 3229 3167 3169 3226
		mu 1 4 3231 3230 3232 3224
		f 4 5898 -5827 5899 5900
		mu 0 4 3225 3172 3171 3224
		mu 1 4 3221 3233 3234 3220
		f 4 5901 -5831 5902 -5885
		mu 0 4 3223 3177 3176 3222
		mu 1 4 3218 3235 3236 3215
		f 4 5903 5904 -5903 5905
		mu 0 4 3230 3231 3222 3176
		mu 1 4 3237 3238 3215 3236
		f 4 5867 5906 5833 5907
		mu 0 4 3213 3212 3180 3179
		mu 1 4 3239 3240 3184 3183
		f 4 5908 5871 -5908 5909
		mu 0 4 3183 3214 3213 3179
		mu 1 4 3187 3241 3239 3183
		f 4 -5873 -5909 -5837 5910
		mu 0 4 3232 3214 3183 3182
		mu 1 4 3242 3241 3187 3186
		f 4 -5874 -5911 -5841 5911
		mu 0 4 3233 3232 3182 3186
		mu 1 4 3243 3242 3186 3189
		f 4 -5876 -5912 -5844 5912
		mu 0 4 3234 3235 3189 3188
		mu 1 4 3244 3245 3192 3191
		f 4 -5877 -5913 -5846 5913
		mu 0 4 3219 3234 3188 3192
		mu 1 4 3246 3244 3191 3193
		f 4 5914 5915 5916 5917
		mu 0 4 3236 3221 3197 3200
		mu 1 4 3247 3248 3196 3198
		f 4 5918 -5918 -5883 -5905
		mu 0 4 3231 3236 3200 3222
		mu 1 4 3238 3249 3216 3215
		f 4 -5920 5920 -5723 5921
		mu 0 4 3237 3238 3091 3089
		mu 1 4 3250 3251 3104 3102
		f 4 -5923 5923 -5727 -5921
		mu 0 4 3238 3239 3092 3091
		mu 1 4 3251 3252 3105 3104
		f 4 -5925 5925 -5730 -5924
		mu 0 4 3239 3240 3094 3092
		mu 1 4 3252 3253 3107 3105
		f 4 5926 5927 -5929 5929
		mu 0 4 3241 3242 3243 3116
		mu 1 4 3254 3255 3256 3129
		f 4 -5931 5931 5932 5803
		mu 0 4 3148 3244 3245 3145
		mu 1 4 3161 3257 3258 3158
		f 4 -5934 5934 5935 5936
		mu 0 4 3246 3247 3248 3249
		mu 1 4 3259 3260 3261 3262
		f 4 -5938 5938 5939 5940
		mu 0 4 3250 3251 3115 3112
		mu 1 4 3263 3264 3128 3125
		f 4 -5926 -5942 5942 -5944
		mu 0 4 3094 3240 3252 3253
		mu 1 4 3107 3253 3265 3266
		f 4 -5945 -5937 5945 -5933
		mu 0 4 3245 3246 3249 3145
		mu 1 4 3258 3259 3262 3158
		f 4 -5947 -5941 -5753 -5935
		mu 0 4 3254 3250 3112 3111
		mu 1 4 3267 3263 3125 3124
		f 4 -5948 -5922 -5720 5948
		mu 0 4 3255 3237 3089 3088
		mu 1 4 3268 3250 3102 3101
		f 4 5949 -5751 5796 -5951
		mu 0 4 3256 3108 3110 3143
		mu 1 4 3269 3121 3123 3156
		f 4 5951 -5748 -5950 -5953
		mu 0 4 3125 3105 3108 3256
		mu 1 4 3138 3118 3121 3269
		f 4 5953 -5744 -5952 -5771
		mu 0 4 3127 3101 3105 3125
		mu 1 4 3140 3114 3118 3138
		f 4 -5740 -5954 5771 5954
		mu 0 4 3102 3101 3127 3128
		mu 1 4 3115 3114 3140 3141
		f 4 5955 5950 5799 -5762
		mu 0 4 3120 3256 3143 3121
		mu 1 4 3133 3269 3156 3134
		f 4 -5768 5952 -5956 -5766
		mu 0 4 3124 3125 3256 3120
		mu 1 4 3137 3138 3269 3133
		f 4 5956 5957 -5769 -5765
		mu 0 4 3123 3257 3126 3124
		mu 1 4 3136 3270 3139 3137
		f 4 5958 -5960 -5773 -5958
		mu 0 4 3257 3258 3129 3126
		mu 1 4 3270 3271 3142 3139
		f 4 -5961 -5828 -5962 -5824
		mu 0 4 3168 3173 3172 3169
		mu 1 4 3175 3180 3179 3176
		f 4 5962 -5964 -5861 5797
		mu 0 4 3259 3260 3206 3205
		mu 1 4 3155 3272 3200 3157
		f 4 5794 -5865 5964 -5963
		mu 0 4 3259 3209 3208 3260
		mu 1 4 3155 3154 3202 3272
		f 4 -5966 -5898 -5889 5963
		mu 0 4 3260 3229 3226 3206
		mu 1 4 3273 3231 3224 3223
		f 4 -5892 -5896 5965 -5965
		mu 0 4 3208 3227 3229 3260
		mu 1 4 3226 3225 3231 3273
		f 4 -5899 -5890 -5897 5961
		mu 0 4 3172 3225 3226 3169
		mu 1 4 3233 3221 3224 3232
		f 4 5966 -5764 5790 -5732
		mu 0 4 3096 3119 3122 3097
		mu 1 4 3109 3132 3135 3110
		f 4 5967 -5767 -5967 -5735
		mu 0 4 3098 3123 3119 3096
		mu 1 4 3111 3136 3132 3109
		f 4 -5957 -5968 -5737 5968
		mu 0 4 3257 3123 3098 3099
		mu 1 4 3270 3136 3111 3112
		f 4 -5959 -5969 -5739 -5970
		mu 0 4 3258 3257 3099 3100
		mu 1 4 3271 3270 3112 3113
		f 4 -5832 5970 -5826 -5972
		mu 0 4 3174 3177 3171 3170
		mu 1 4 3148 3182 3178 3177
		f 4 -5863 -5973 -5857 5788
		mu 0 4 3204 3207 3203 3202
		mu 1 4 3151 3201 3199 3152
		f 4 -5888 -5901 -5886 5972
		mu 0 4 3207 3225 3224 3203
		mu 1 4 3222 3221 3220 3219
		f 4 -5902 -5887 -5900 -5971
		mu 0 4 3177 3223 3224 3171
		mu 1 4 3235 3218 3220 3234
		f 4 5802 -5836 5973 5974
		mu 0 4 3148 3147 3261 3253
		mu 1 4 3161 3160 3185 3266
		f 4 -5830 5975 -5835 -5977
		mu 0 4 3176 3175 3181 3180
		mu 1 4 3181 3147 3185 3184
		f 4 -5978 -5856 -5917 -5852
		mu 0 4 3196 3201 3200 3197
		mu 1 4 3195 3150 3198 3196
		f 4 5978 -5904 -5980 -5867
		mu 0 4 3211 3231 3230 3212
		mu 1 4 3204 3238 3237 3205
		f 4 -5919 -5979 -5882 -5915
		mu 0 4 3236 3231 3211 3221
		mu 1 4 3249 3238 3204 3214
		f 4 5979 -5906 5976 -5907
		mu 0 4 3212 3230 3176 3180
		mu 1 4 3240 3274 3181 3184
		f 4 5980 5852 -5916 -5881
		mu 0 4 3220 3195 3197 3221
		mu 1 4 3275 3194 3196 3248
		f 4 -5982 -5949 -5983 -5928
		mu 0 4 3242 3255 3088 3243
		mu 1 4 3255 3268 3101 3256
		f 4 5930 -5975 -5943 -5984
		mu 0 4 3244 3148 3253 3252
		mu 1 4 3257 3161 3266 3265
		f 4 -5838 -5910 -5833 5801
		mu 0 4 3184 3183 3179 3178
		mu 1 4 3159 3187 3183 3160
		f 4 -5914 -5850 -5981 -5879
		mu 0 4 3219 3192 3195 3220
		mu 1 4 3246 3193 3194 3275
		f 4 -5757 -5939 -5985 -5930
		mu 0 4 3116 3115 3251 3241
		mu 1 4 3129 3128 3264 3254
		f 4 -5780 -5741 5985 -5818
		mu 0 4 3133 3103 3102 3262
		mu 1 4 3146 3116 3115 3172
		f 4 -5784 5943 -5974 -5976
		mu 0 4 3134 3094 3253 3261
		mu 1 4 3147 3107 3266 3185
		f 4 -5801 -5946 5986 -5839
		mu 0 4 3146 3145 3249 3263
		mu 1 4 3159 3158 3262 3188
		f 4 -5752 -5777 -5810 -5794
		mu 0 4 3109 3107 3131 3140
		mu 1 4 3122 3120 3144 3153
		f 4 5959 5987 5960 5988
		mu 0 4 3129 3258 3264 3265
		mu 1 4 3142 3271 3180 3175
		f 4 5982 -5787 5977 5989
		mu 0 4 3243 3088 3137 3266
		mu 1 4 3256 3101 3150 3195
		f 4 -5738 -5783 5971 5990
		mu 0 4 3100 3095 3135 3267
		mu 1 4 3113 3108 3148 3177
		f 4 -5936 -5756 5841 -5987
		mu 0 4 3249 3248 3268 3263
		mu 1 4 3262 3261 3190 3188
		f 4 -5940 -5760 5846 -5754
		mu 0 4 3112 3115 3118 3113
		mu 1 4 3125 3128 3131 3126
		f 4 5773 -5989 -5823 -5992
		mu 0 4 3128 3129 3265 3269
		mu 1 4 3141 3142 3175 3173
		f 4 -5986 -5955 5991 -5820
		mu 0 4 3262 3102 3128 3269
		mu 1 4 3172 3115 3141 3173
		f 4 -5788 -5763 -5799 -5860
		mu 0 4 3138 3122 3121 3144
		mu 1 4 3151 3135 3134 3157
		f 4 -5785 -5733 -5790 -5859
		mu 0 4 3136 3087 3097 3139
		mu 1 4 3149 3100 3110 3152
		f 4 5969 -5991 -5829 -5988
		mu 0 4 3258 3100 3267 3264
		mu 1 4 3271 3113 3177 3180
		f 4 5928 -5990 -5851 -5758
		mu 0 4 3116 3243 3266 3117
		mu 1 4 3129 3256 3195 3130
		f 4 5992 5993 5994 5995
		mu 0 4 3270 3271 3272 3273
		mu 1 4 3276 3277 3278 3279
		f 4 5996 5997 -5994 5998
		mu 0 4 3274 3275 3272 3271
		mu 1 4 3280 3281 3278 3277
		f 4 5999 6000 6001 6002
		mu 0 4 3276 3277 3278 3279
		mu 1 4 3282 3283 3284 3285
		f 4 6003 -6003 6004 6005
		mu 0 4 3280 3276 3279 3281
		mu 1 4 3286 3282 3285 3287
		f 4 6006 6007 6008 6009
		mu 0 4 3282 3283 3284 3285
		mu 1 4 3288 3289 3290 3291
		f 4 6010 6011 6012 6013
		mu 0 4 3286 3287 3288 3289
		mu 1 4 3292 3293 3294 3295
		f 4 6014 6015 6016 6017
		mu 0 4 3290 3291 3278 3292
		mu 1 4 3296 3297 3284 3298
		f 4 6018 -6018 6019 6020
		mu 0 4 3293 3290 3292 3294
		mu 1 4 3299 3296 3298 3300
		f 4 -6019 6021 6022 6023
		mu 0 4 3290 3293 3295 3296
		mu 1 4 3296 3299 3301 3302
		f 4 -6015 -6024 6024 6025
		mu 0 4 3291 3290 3296 3297
		mu 1 4 3297 3296 3302 3303
		f 4 6026 6027 -5997 6028
		mu 0 4 3298 3299 3275 3274
		mu 1 4 3304 3305 3281 3280
		f 4 6029 6030 -6027 6031
		mu 0 4 3300 3301 3299 3298
		mu 1 4 3306 3307 3305 3304
		f 4 6032 6033 -6020 6034
		mu 0 4 3302 3303 3294 3292
		mu 1 4 3308 3309 3300 3298
		f 4 6035 -6035 -6017 -6001
		mu 0 4 3277 3302 3292 3278
		mu 1 4 3283 3308 3298 3284
		f 4 6036 6037 6038 6039
		mu 0 4 3304 3305 3306 3307
		mu 1 4 3310 3311 3312 3313
		f 4 6040 -6040 6041 -6005
		mu 0 4 3279 3304 3307 3281
		mu 1 4 3285 3310 3313 3287
		f 4 -6041 -6002 -6016 6042
		mu 0 4 3304 3279 3278 3291
		mu 1 4 3310 3285 3284 3297
		f 4 -6037 -6043 -6026 6043
		mu 0 4 3305 3304 3291 3297
		mu 1 4 3311 3310 3297 3303
		f 4 6044 6045 6046 6047
		mu 0 4 3308 3309 3310 3311
		mu 1 4 3314 3315 3316 3317
		f 4 6048 -5996 6049 -6046
		mu 0 4 3309 3270 3273 3310
		mu 1 4 3315 3276 3279 3316
		f 4 6050 -6006 -6042 6051
		mu 0 4 3312 3280 3281 3307
		mu 1 4 3318 3286 3287 3313
		f 4 6052 -6052 -6039 6053
		mu 0 4 3313 3312 3307 3306
		mu 1 4 3319 3318 3313 3312
		f 4 6054 6055 6056 -6049
		mu 0 4 3309 3314 3315 3270
		mu 1 4 3315 3320 3321 3276
		f 4 6057 6058 -6055 -6045
		mu 0 4 3308 3316 3314 3309
		mu 1 4 3314 3322 3320 3315
		f 4 6059 6060 -6062 6062
		mu 0 4 3317 3318 3319 3320
		mu 1 4 3323 3324 3325 3326
		f 4 6063 6061 -6065 6065
		mu 0 4 3321 3320 3319 3322
		mu 1 4 3327 3326 3325 3328
		f 4 -6004 6066 -5995 6067
		mu 0 4 3276 3280 3273 3272
		mu 1 4 3282 3286 3279 3278
		f 4 6068 -6000 -6068 -5998
		mu 0 4 3275 3277 3276 3272
		mu 1 4 3281 3283 3282 3278
		f 4 -6007 6069 -6013 6070
		mu 0 4 3283 3282 3289 3288
		mu 1 4 3289 3288 3295 3294
		f 4 6071 -6036 -6069 -6028
		mu 0 4 3299 3302 3277 3275
		mu 1 4 3305 3308 3283 3281;
	setAttr ".fc[3000:3499]"
		f 4 6072 -6033 -6072 -6031
		mu 0 4 3301 3303 3302 3299
		mu 1 4 3307 3309 3308 3305
		f 4 -6053 6073 -6047 6074
		mu 0 4 3312 3313 3311 3310
		mu 1 4 3318 3319 3317 3316
		f 4 -6051 -6075 -6050 -6067
		mu 0 4 3280 3312 3310 3273
		mu 1 4 3286 3318 3316 3279
		f 4 6075 -6008 6076 -6030
		mu 0 4 3300 3284 3283 3301
		mu 1 4 3306 3290 3289 3307
		f 4 -6077 -6071 6077 -6073
		mu 0 4 3301 3283 3288 3303
		mu 1 4 3307 3289 3294 3309
		f 4 -6078 6078 -6021 -6034
		mu 0 4 3303 3288 3293 3294
		mu 1 4 3309 3294 3299 3300
		f 4 -6079 -6012 6079 -6022
		mu 0 4 3293 3288 3287 3295
		mu 1 4 3299 3294 3293 3301
		f 4 6088 6089 -6088 6090
		mu 0 4 3323 3324 3325 3326
		mu 1 4 3329 3330 3331 3332
		f 4 6091 6092 -6087 -6090
		mu 0 4 3324 3327 3328 3325
		mu 1 4 3330 3333 3334 3331
		f 4 6093 6094 6095 -6097
		mu 0 4 3329 3330 3331 3332
		mu 1 4 3335 3336 3337 3338
		f 4 6096 6097 6098 -6100
		mu 0 4 3329 3332 3333 3334
		mu 1 4 3335 3338 3339 3340
		f 4 -5993 6102 -6081 6103
		mu 0 4 3271 3270 3335 3336
		mu 1 4 3277 3276 3341 3342
		f 4 -5999 -6104 -6082 6104
		mu 0 4 3274 3271 3336 3337
		mu 1 4 3280 3277 3342 3343
		f 4 -6009 6105 -6083 6106
		mu 0 4 3285 3284 3338 3339
		mu 1 4 3291 3290 3344 3345
		f 4 -6014 6107 -6084 6108
		mu 0 4 3286 3289 3340 3341
		mu 1 4 3292 3295 3346 3347
		f 4 -6029 -6105 -6085 6109
		mu 0 4 3298 3274 3337 3342
		mu 1 4 3304 3280 3343 3348
		f 4 -6032 -6110 -6086 6110
		mu 0 4 3300 3298 3342 3343
		mu 1 4 3306 3304 3348 3349
		f 4 -6057 6111 -6091 -6103
		mu 0 4 3270 3315 3344 3335
		mu 1 4 3276 3321 3350 3341
		f 4 6112 -6060 6113 -6095
		mu 0 4 3345 3318 3317 3346
		mu 1 4 3351 3324 3323 3352
		f 4 6114 -6064 6115 -6098
		mu 0 4 3332 3320 3321 3333
		mu 1 4 3353 3326 3327 3354
		f 4 -6070 -6117 -6101 -6108
		mu 0 4 3289 3282 3347 3340
		mu 1 4 3295 3288 3355 3346
		f 4 -6076 -6111 -6102 -6106
		mu 0 4 3284 3300 3343 3338
		mu 1 4 3290 3306 3349 3344
		f 4 6117 6118 6119 6120
		mu 0 4 3348 3349 3350 3351
		mu 1 4 3356 3357 3358 3359
		f 4 6121 -6120 6122 6123
		mu 0 4 3352 3351 3350 3353
		mu 1 4 3360 3359 3358 3361
		f 4 6124 6125 6126 6127
		mu 0 4 3354 3355 3356 3357
		mu 1 4 3362 3363 3364 3365
		f 4 6128 6129 -6125 6130
		mu 0 4 3358 3359 3355 3354
		mu 1 4 3366 3367 3363 3362
		f 4 6131 6132 6133 6134
		mu 0 4 3360 3361 3362 3363
		mu 1 4 3368 3369 3370 3371
		f 4 6135 6136 6137 -6011
		mu 0 4 3286 3364 3365 3287
		mu 1 4 3292 3372 3373 3293
		f 4 6138 6139 6140 6141
		mu 0 4 3366 3367 3356 3368
		mu 1 4 3374 3375 3364 3376
		f 4 6142 6143 -6139 6144
		mu 0 4 3369 3370 3367 3366
		mu 1 4 3377 3378 3375 3374
		f 4 6145 -6023 6146 -6145
		mu 0 4 3366 3296 3295 3369
		mu 1 4 3374 3302 3301 3377
		f 4 6147 -6025 -6146 -6142
		mu 0 4 3368 3297 3296 3366
		mu 1 4 3376 3303 3302 3374
		f 4 6148 -6124 6149 6150
		mu 0 4 3371 3352 3353 3372
		mu 1 4 3379 3360 3361 3380
		f 4 6151 -6151 6152 6153
		mu 0 4 3373 3371 3372 3374
		mu 1 4 3381 3379 3380 3382
		f 4 6154 -6144 6155 6156
		mu 0 4 3375 3367 3370 3376
		mu 1 4 3383 3375 3378 3384
		f 4 -6127 -6140 -6155 6157
		mu 0 4 3357 3356 3367 3375
		mu 1 4 3365 3364 3375 3383
		f 4 6158 6159 -6038 6160
		mu 0 4 3377 3378 3306 3305
		mu 1 4 3385 3386 3312 3311
		f 4 -6130 6161 -6159 6162
		mu 0 4 3355 3359 3378 3377
		mu 1 4 3363 3367 3386 3385
		f 4 6163 -6141 -6126 -6163
		mu 0 4 3377 3368 3356 3355
		mu 1 4 3385 3376 3364 3363
		f 4 -6044 -6148 -6164 -6161
		mu 0 4 3305 3297 3368 3377
		mu 1 4 3311 3303 3376 3385
		f 4 -6048 6164 6165 6166
		mu 0 4 3308 3311 3379 3380
		mu 1 4 3314 3317 3387 3388
		f 4 -6166 6167 -6118 6168
		mu 0 4 3380 3379 3349 3348
		mu 1 4 3388 3387 3357 3356
		f 4 6169 -6162 -6129 6170
		mu 0 4 3381 3378 3359 3358
		mu 1 4 3389 3386 3367 3366
		f 4 -6054 -6160 -6170 6171
		mu 0 4 3313 3306 3378 3381
		mu 1 4 3319 3312 3386 3389
		f 4 -6169 6172 6173 6174
		mu 0 4 3380 3348 3382 3383
		mu 1 4 3388 3356 3390 3391
		f 4 -6167 -6175 6175 -6058
		mu 0 4 3308 3380 3383 3316
		mu 1 4 3314 3388 3391 3322
		f 4 6176 6177 6178 -6180
		mu 0 4 3384 3385 3386 3387
		mu 1 4 3392 3393 3394 3395
		f 4 -6066 -6181 6179 6181
		mu 0 4 3321 3322 3384 3387
		mu 1 4 3327 3328 3392 3395
		f 4 6182 -6119 6183 -6131
		mu 0 4 3354 3350 3349 3358
		mu 1 4 3362 3358 3357 3366
		f 4 -6123 -6183 -6128 6184
		mu 0 4 3353 3350 3354 3357
		mu 1 4 3361 3358 3362 3365
		f 4 6185 -6137 6186 -6135
		mu 0 4 3363 3365 3364 3360
		mu 1 4 3371 3373 3372 3368
		f 4 -6150 -6185 -6158 6187
		mu 0 4 3372 3353 3357 3375
		mu 1 4 3380 3361 3365 3383
		f 4 -6153 -6188 -6157 6188
		mu 0 4 3374 3372 3375 3376
		mu 1 4 3382 3380 3383 3384
		f 4 6189 -6165 -6074 -6172
		mu 0 4 3381 3379 3311 3313
		mu 1 4 3389 3387 3317 3319
		f 4 -6184 -6168 -6190 -6171
		mu 0 4 3358 3349 3379 3381
		mu 1 4 3366 3357 3387 3389
		f 4 -6154 6190 -6134 6191
		mu 0 4 3373 3374 3363 3362
		mu 1 4 3381 3382 3371 3370
		f 4 -6189 6192 -6186 -6191
		mu 0 4 3374 3376 3365 3363
		mu 1 4 3382 3384 3373 3371
		f 4 -6156 -6143 6193 -6193
		mu 0 4 3376 3370 3369 3365
		mu 1 4 3384 3378 3377 3373
		f 4 -6147 -6080 -6138 -6194
		mu 0 4 3369 3295 3287 3365
		mu 1 4 3377 3301 3293 3373
		f 4 6202 -6202 6203 6204
		mu 0 4 3388 3389 3390 3391
		mu 1 4 3396 3397 3398 3399
		f 4 -6204 -6201 -6093 6205
		mu 0 4 3391 3390 3328 3327
		mu 1 4 3399 3398 3334 3333
		f 4 6206 6207 -6209 6209
		mu 0 4 3392 3393 3394 3395
		mu 1 4 3400 3401 3402 3403
		f 4 -6211 -6099 6211 6208
		mu 0 4 3394 3334 3333 3395
		mu 1 4 3402 3340 3339 3403
		f 4 6214 -6195 6215 -6121
		mu 0 4 3351 3396 3397 3348
		mu 1 4 3359 3404 3405 3356
		f 4 6216 -6196 -6215 -6122
		mu 0 4 3352 3398 3396 3351
		mu 1 4 3360 3406 3404 3359
		f 4 6217 -6197 6218 -6133
		mu 0 4 3361 3399 3400 3362
		mu 1 4 3369 3407 3408 3370
		f 4 -6109 -6198 6219 -6136
		mu 0 4 3286 3341 3401 3364
		mu 1 4 3292 3347 3409 3372
		f 4 6220 -6199 -6217 -6149
		mu 0 4 3371 3402 3398 3352
		mu 1 4 3379 3410 3406 3360
		f 4 6221 -6200 -6221 -6152
		mu 0 4 3373 3403 3402 3371
		mu 1 4 3381 3411 3410 3379
		f 4 -6216 -6203 6222 -6173
		mu 0 4 3348 3397 3404 3382
		mu 1 4 3356 3405 3412 3390
		f 4 6223 -6207 6224 -6178
		mu 0 4 3385 3405 3406 3386
		mu 1 4 3393 3413 3414 3394
		f 4 6225 -6212 -6116 -6182
		mu 0 4 3387 3395 3333 3321
		mu 1 4 3395 3415 3354 3327
		f 4 -6220 -6213 -6227 -6187
		mu 0 4 3364 3401 3407 3360
		mu 1 4 3372 3409 3416 3368
		f 4 -6219 -6214 -6222 -6192
		mu 0 4 3362 3400 3403 3373
		mu 1 4 3370 3408 3411 3381
		f 4 6227 6228 -6132 -6230
		mu 0 4 3408 3409 3361 3360
		mu 1 4 3417 3418 3369 3368
		f 4 6230 6231 -6218 -6229
		mu 0 4 3409 3410 3399 3361
		mu 1 4 3418 3419 3407 3369
		f 4 6233 6229 6226 -6233
		mu 0 4 3411 3408 3360 3407
		mu 1 4 3420 3417 3368 3416
		f 4 -6010 6234 -6236 -6237
		mu 0 4 3282 3285 3412 3413
		mu 1 4 3288 3291 3421 3422
		f 4 -6107 6237 -6239 -6235
		mu 0 4 3285 3339 3414 3412
		mu 1 4 3291 3345 3423 3421
		f 4 6116 6236 -6241 -6240
		mu 0 4 3347 3282 3413 3415
		mu 1 4 3355 3288 3422 3424
		f 4 6235 6241 -6243 -6244
		mu 0 4 3413 3412 3416 3417
		mu 1 4 3422 3421 3425 3426
		f 4 6238 6244 -6246 -6242
		mu 0 4 3412 3414 3418 3416
		mu 1 4 3421 3423 3427 3425
		f 4 6240 6243 -6248 -6247
		mu 0 4 3415 3413 3417 3419
		mu 1 4 3424 3422 3426 3428
		f 4 6242 6248 -6228 -6250
		mu 0 4 3417 3416 3409 3408
		mu 1 4 3426 3425 3418 3417
		f 4 6245 6250 -6231 -6249
		mu 0 4 3416 3418 3410 3409
		mu 1 4 3425 3427 3419 3418
		f 4 6247 6249 -6234 -6252
		mu 0 4 3419 3417 3408 3411
		mu 1 4 3428 3426 3417 3420
		f 4 -6063 -6115 -6096 -6114
		mu 0 4 3317 3320 3332 3346
		mu 1 4 3323 3326 3353 3352
		f 4 -6225 -6210 -6226 -6179
		mu 0 4 3386 3406 3395 3387
		mu 1 4 3394 3414 3415 3395
		f 4 6252 6064 -6254 -6059
		mu 0 4 3316 3322 3319 3314
		mu 1 4 3322 3328 3325 3320
		f 4 -6176 -6255 6180 -6253
		mu 0 4 3316 3383 3384 3322
		mu 1 4 3322 3391 3392 3328
		f 4 -6174 6255 -6177 6254
		mu 0 4 3383 3382 3385 3384
		mu 1 4 3391 3390 3393 3392
		f 4 -6223 -6257 -6224 -6256
		mu 0 4 3382 3404 3405 3385
		mu 1 4 3390 3412 3413 3393
		f 4 -6208 6256 -6205 6257
		mu 0 4 3394 3393 3388 3391
		mu 1 4 3402 3401 3396 3399
		f 4 6210 -6258 -6206 -6259
		mu 0 4 3334 3394 3391 3327
		mu 1 4 3340 3402 3399 3333
		f 4 6099 6258 -6092 -6260
		mu 0 4 3329 3334 3327 3324
		mu 1 4 3335 3340 3333 3330
		f 4 -6094 6259 -6089 6260
		mu 0 4 3330 3329 3324 3323
		mu 1 4 3336 3335 3330 3329
		f 4 -6262 -6113 -6261 -6112
		mu 0 4 3315 3318 3345 3344
		mu 1 4 3321 3324 3351 3350
		f 4 6253 -6061 6261 -6056
		mu 0 4 3314 3319 3318 3315
		mu 1 4 3320 3325 3324 3321
		f 4 6262 6263 6264 -6266
		mu 0 4 3420 3421 3422 3423
		mu 1 4 3429 3430 3431 3432
		f 4 -6265 6266 6267 -6269
		mu 0 4 3423 3422 3424 3425
		mu 1 4 3432 3431 3433 3434
		f 4 6269 6270 6271 -6264
		mu 0 4 3421 3426 3427 3422
		mu 1 4 3430 3435 3436 3431
		f 4 -6272 6272 6273 -6267
		mu 0 4 3422 3427 3428 3424
		mu 1 4 3431 3436 3437 3433
		f 4 -6268 6274 6275 -6277
		mu 0 4 3425 3424 3429 3430
		mu 1 4 3434 3433 3438 3439
		f 4 -6274 6277 6278 -6275
		mu 0 4 3424 3428 3431 3429
		mu 1 4 3433 3437 3440 3438
		f 4 6279 6280 6281 -6263
		mu 0 4 3420 3432 3433 3421
		mu 1 4 3429 3441 3442 3430
		f 4 6282 6283 6284 -6281
		mu 0 4 3432 3434 3435 3433
		mu 1 4 3441 3443 3444 3442
		f 4 6285 6286 6287 -6284
		mu 0 4 3434 3436 3437 3435
		mu 1 4 3443 3445 3446 3444
		f 4 6288 6289 6290 -6287
		mu 0 4 3436 3438 3439 3437
		mu 1 4 3445 3447 3448 3446
		f 4 -6282 6291 6292 -6270
		mu 0 4 3421 3433 3440 3426
		mu 1 4 3430 3442 3449 3435
		f 4 -6285 6293 6294 -6292
		mu 0 4 3433 3435 3441 3440
		mu 1 4 3442 3444 3450 3449
		f 4 -6288 6295 6296 -6294
		mu 0 4 3435 3437 3442 3441
		mu 1 4 3444 3446 3451 3450
		f 4 -6291 6297 6298 -6296
		mu 0 4 3437 3439 3443 3442
		mu 1 4 3446 3448 3452 3451
		f 4 6299 6300 6301 6302
		mu 0 4 3444 3445 3446 3447
		mu 1 4 3453 3454 3455 3456
		f 4 6303 6304 6305 -6301
		mu 0 4 3445 3448 3449 3446
		mu 1 4 3454 3457 3458 3455
		f 4 6306 -6276 6307 -6305
		mu 0 4 3450 3430 3429 3451
		mu 1 4 3459 3439 3438 3460
		f 4 -6302 6308 6309 6310
		mu 0 4 3447 3446 3452 3453
		mu 1 4 3456 3455 3461 3462
		f 4 -6306 6311 6312 -6309
		mu 0 4 3446 3449 3454 3452
		mu 1 4 3455 3458 3463 3461
		f 4 -6308 -6279 6313 -6312
		mu 0 4 3451 3429 3431 3455
		mu 1 4 3460 3438 3440 3464
		f 4 6314 6315 6316 6317
		mu 0 4 3456 3457 3458 3459
		mu 1 4 3465 3466 3467 3468
		f 4 -6317 6318 6319 6320
		mu 0 4 3459 3458 3460 3461
		mu 1 4 3468 3467 3469 3470
		f 4 6321 6322 6323 -6316
		mu 0 4 3457 3462 3463 3458
		mu 1 4 3466 3471 3472 3467
		f 4 -6324 6324 6325 -6319
		mu 0 4 3458 3463 3464 3460
		mu 1 4 3467 3472 3473 3469
		f 4 -6320 6326 6327 6328
		mu 0 4 3461 3460 3465 3466
		mu 1 4 3470 3469 3474 3475
		f 4 -6328 6329 -6311 6330
		mu 0 4 3466 3465 3447 3453
		mu 1 4 3475 3474 3456 3462
		f 4 -6326 6331 6332 -6327
		mu 0 4 3460 3464 3467 3465
		mu 1 4 3469 3473 3476 3474
		f 4 -6333 6333 -6303 -6330
		mu 0 4 3465 3467 3444 3447
		mu 1 4 3474 3476 3453 3456
		f 4 6334 6335 6336 -6298
		mu 0 4 3439 3468 3469 3443
		mu 1 4 3448 3477 3478 3452
		f 4 6337 6338 6339 -6336
		mu 0 4 3468 3470 3471 3469
		mu 1 4 3477 3479 3480 3478
		f 4 6340 6341 6342 6343
		mu 0 4 3472 3473 3474 3475
		mu 1 4 3481 3482 3483 3484
		f 4 -6343 6344 6345 6346
		mu 0 4 3475 3474 3476 3477
		mu 1 4 3484 3483 3485 3486
		f 4 6347 -6349 6349 -6342
		mu 0 4 3473 3478 3479 3474
		mu 1 4 3487 3488 3489 3490
		f 4 -6350 -6351 6351 -6345
		mu 0 4 3474 3479 3480 3476
		mu 1 4 3490 3489 3491 3492
		f 4 -6346 6352 6353 6354
		mu 0 4 3477 3476 3481 3482
		mu 1 4 3486 3485 3493 3494
		f 4 -6354 6355 6356 6357
		mu 0 4 3482 3481 3483 3484
		mu 1 4 3494 3493 3495 3496
		f 4 -6352 -6359 6359 -6353
		mu 0 4 3476 3480 3485 3481
		mu 1 4 3492 3491 3497 3498
		f 4 -6360 -6361 6361 -6356
		mu 0 4 3481 3485 3486 3483
		mu 1 4 3498 3497 3499 3500
		f 4 6362 6363 6364 -6366
		mu 0 4 3487 3488 3489 3490
		mu 1 4 3501 3502 3503 3504
		f 4 6366 6367 6368 -6364
		mu 0 4 3488 3491 3492 3489
		mu 1 4 3502 3505 3506 3503
		f 4 -6365 6369 6370 -6372
		mu 0 4 3490 3489 3493 3494
		mu 1 4 3504 3503 3507 3508
		f 4 -6369 6372 6373 -6370
		mu 0 4 3489 3492 3495 3493
		mu 1 4 3503 3506 3509 3507
		f 4 6374 6375 6376 -6378
		mu 0 4 3496 3497 3498 3499
		mu 1 4 3510 3511 3512 3513
		f 4 -6377 6378 6379 -6381
		mu 0 4 3499 3498 3491 3500
		mu 1 4 3513 3512 3505 3514
		f 4 6381 6382 6383 -6385
		mu 0 4 3501 3502 3503 3504
		mu 1 4 3515 3516 3517 3518
		f 4 6385 6386 6387 -6383
		mu 0 4 3502 3505 3500 3503
		mu 1 4 3516 3519 3514 3517
		f 4 -6384 6388 -6363 -6390
		mu 0 4 3504 3503 3488 3487
		mu 1 4 3518 3517 3502 3501
		f 4 -6388 -6380 -6367 -6389
		mu 0 4 3503 3500 3491 3488
		mu 1 4 3517 3514 3505 3502
		f 4 6390 6391 6392 6393
		mu 0 4 3506 3507 3508 3509
		mu 1 4 3520 3521 3522 3523
		f 4 6394 6395 6396 -6392
		mu 0 4 3507 3510 3511 3508
		mu 1 4 3521 3524 3525 3522
		f 4 -6393 6397 -6374 6398
		mu 0 4 3509 3508 3512 3513
		mu 1 4 3523 3522 3526 3527
		f 4 -6397 6399 -6371 -6398
		mu 0 4 3508 3511 3514 3512
		mu 1 4 3522 3525 3528 3526
		f 4 -6395 6400 6401 -6403
		mu 0 4 3510 3507 3515 3516
		mu 1 4 3524 3521 3529 3530
		f 4 -6391 6403 6404 -6401
		mu 0 4 3507 3506 3517 3515
		mu 1 4 3521 3520 3531 3529
		f 4 -6402 6405 -6382 -6407
		mu 0 4 3516 3515 3518 3519
		mu 1 4 3530 3529 3532 3533
		f 4 -6405 6407 -6386 -6406
		mu 0 4 3515 3517 3520 3518
		mu 1 4 3529 3531 3534 3532
		f 4 6408 6409 6410 6411
		mu 0 4 3521 3522 3523 3524
		mu 1 4 3535 3536 3537 3538
		f 4 6412 6365 6413 -6410
		mu 0 4 3522 3487 3490 3523
		mu 1 4 3536 3501 3504 3537
		f 4 -6411 6414 6415 6416
		mu 0 4 3524 3523 3525 3526
		mu 1 4 3538 3537 3539 3540
		f 4 -6414 6371 6417 -6415
		mu 0 4 3523 3490 3494 3525
		mu 1 4 3537 3504 3508 3539
		f 4 6418 6419 6420 6421
		mu 0 4 3527 3528 3529 3530
		mu 1 4 3541 3542 3543 3544
		f 4 6422 6384 6423 -6420
		mu 0 4 3528 3501 3504 3529
		mu 1 4 3542 3515 3518 3543
		f 4 -6421 6424 -6409 6425
		mu 0 4 3530 3529 3522 3521
		mu 1 4 3544 3543 3536 3535
		f 4 -6424 6389 -6413 -6425
		mu 0 4 3529 3504 3487 3522
		mu 1 4 3543 3518 3501 3536
		f 4 6426 6427 6428 -6396
		mu 0 4 3510 3531 3532 3511
		mu 1 4 3524 3545 3546 3525
		f 4 6429 6430 6431 -6428
		mu 0 4 3531 3533 3534 3532
		mu 1 4 3545 3547 3548 3546
		f 4 -6429 6432 -6418 -6400
		mu 0 4 3511 3532 3535 3514
		mu 1 4 3525 3546 3549 3528
		f 4 -6432 6433 -6416 -6433
		mu 0 4 3532 3534 3536 3535
		mu 1 4 3546 3548 3550 3549
		f 4 -6430 6434 6435 -6437
		mu 0 4 3533 3531 3537 3538
		mu 1 4 3547 3545 3551 3552
		f 4 -6427 6402 6437 -6435
		mu 0 4 3531 3510 3516 3537
		mu 1 4 3545 3524 3530 3551
		f 4 -6436 6438 -6419 6439
		mu 0 4 3538 3537 3539 3540
		mu 1 4 3552 3551 3553 3554
		f 4 -6438 6406 -6423 -6439
		mu 0 4 3537 3516 3519 3539
		mu 1 4 3551 3530 3533 3553
		f 4 6440 6441 6442 6443
		mu 0 4 3541 3542 3543 3544
		mu 1 4 3555 3556 3557 3558
		f 4 6444 6445 6446 -6442
		mu 0 4 3542 3545 3546 3543
		mu 1 4 3556 3559 3560 3557
		f 4 -6443 6447 6448 6449
		mu 0 4 3544 3543 3547 3548
		mu 1 4 3558 3557 3561 3562
		f 4 -6447 6450 6451 -6448
		mu 0 4 3543 3546 3549 3547
		mu 1 4 3557 3560 3563 3561
		f 4 -6449 6452 6453 6454
		mu 0 4 3548 3547 3550 3551
		mu 1 4 3562 3561 3564 3565
		f 4 -6452 6455 6456 -6453
		mu 0 4 3547 3549 3552 3550
		mu 1 4 3561 3563 3566 3564
		f 4 -6454 6457 6458 6459
		mu 0 4 3553 3554 3555 3556
		mu 1 4 3567 3568 3569 3570
		f 4 -6457 6460 6461 -6458
		mu 0 4 3554 3557 3558 3555
		mu 1 4 3568 3571 3572 3569
		f 4 6462 6463 6464 -6446
		mu 0 4 3545 3559 3560 3546
		mu 1 4 3559 3573 3574 3560
		f 4 -6465 6465 6466 -6451
		mu 0 4 3546 3560 3561 3549
		mu 1 4 3560 3574 3575 3563
		f 4 6467 6468 6469 -6464
		mu 0 4 3559 3562 3563 3560
		mu 1 4 3573 3576 3577 3574
		f 4 6470 6471 6472 -6469
		mu 0 4 3562 3564 3565 3563
		mu 1 4 3576 3578 3579 3577
		f 4 -6470 6473 6474 -6466
		mu 0 4 3560 3563 3566 3561
		mu 1 4 3574 3577 3580 3575
		f 4 -6473 6475 6476 -6474
		mu 0 4 3563 3565 3567 3566
		mu 1 4 3577 3579 3581 3580
		f 4 -6467 6477 6478 -6456
		mu 0 4 3549 3561 3568 3552
		mu 1 4 3563 3575 3582 3566
		f 4 -6479 6479 6480 -6461
		mu 0 4 3557 3569 3570 3558
		mu 1 4 3571 3583 3584 3572
		f 4 -6475 6481 6482 -6478
		mu 0 4 3561 3566 3571 3568
		mu 1 4 3575 3580 3585 3582
		f 4 -6477 6483 6484 -6482
		mu 0 4 3566 3567 3572 3571
		mu 1 4 3580 3581 3586 3585
		f 4 -6483 6485 6486 -6480
		mu 0 4 3569 3573 3574 3570
		mu 1 4 3583 3587 3588 3584
		f 4 -6485 6487 6488 -6486
		mu 0 4 3573 3575 3576 3574
		mu 1 4 3587 3589 3590 3588
		f 4 6489 6490 6491 -6472
		mu 0 4 3564 3577 3578 3565
		mu 1 4 3578 3591 3592 3579
		f 4 -6492 6492 6493 -6476
		mu 0 4 3565 3578 3579 3567
		mu 1 4 3579 3592 3593 3581
		f 4 6494 6495 6496 -6491
		mu 0 4 3577 3580 3581 3578
		mu 1 4 3591 3594 3595 3592
		f 4 6497 -6499 6499 -6496
		mu 0 4 3580 3582 3583 3581
		mu 1 4 3594 3596 3597 3595
		f 4 -6497 6500 6501 -6493
		mu 0 4 3578 3581 3584 3579
		mu 1 4 3592 3595 3598 3593
		f 4 -6500 -6503 6503 -6501
		mu 0 4 3581 3583 3585 3584
		mu 1 4 3595 3597 3599 3598
		f 4 -6494 6504 6505 -6484
		mu 0 4 3567 3579 3586 3572
		mu 1 4 3581 3593 3600 3586
		f 4 -6506 6506 6507 -6488
		mu 0 4 3575 3587 3588 3576
		mu 1 4 3589 3601 3602 3590
		f 4 -6502 6508 6509 -6505
		mu 0 4 3579 3584 3589 3586
		mu 1 4 3593 3598 3603 3600
		f 4 -6504 6510 6511 -6509
		mu 0 4 3584 3585 3590 3589
		mu 1 4 3598 3599 3604 3603
		f 4 -6510 6512 6513 -6507
		mu 0 4 3587 3591 3592 3588
		mu 1 4 3601 3605 3606 3602
		f 4 -6512 6514 6515 -6513
		mu 0 4 3591 3593 3594 3592
		mu 1 4 3605 3607 3608 3606
		f 4 6516 6517 6518 6519
		mu 0 4 3595 3596 3597 3598
		mu 1 4 3609 3610 3611 3612
		f 4 -6519 6520 6521 6522
		mu 0 4 3599 3600 3601 3602
		mu 1 4 3613 3614 3615 3616
		f 4 6523 6524 6525 -6518
		mu 0 4 3596 3603 3604 3597
		mu 1 4 3610 3617 3618 3611
		f 4 6526 6527 6528 -6525
		mu 0 4 3603 3605 3606 3604
		mu 1 4 3617 3619 3620 3618
		f 4 -6526 6529 6530 -6521
		mu 0 4 3600 3607 3608 3601
		mu 1 4 3614 3621 3622 3615
		f 4 -6529 6531 6532 -6530
		mu 0 4 3607 3609 3610 3608
		mu 1 4 3621 3623 3624 3622
		f 4 -6522 6533 6534 6535
		mu 0 4 3602 3601 3611 3612
		mu 1 4 3616 3615 3625 3626
		f 4 -6535 6536 6537 6538
		mu 0 4 3612 3611 3613 3614
		mu 1 4 3626 3625 3627 3628
		f 4 -6531 6539 6540 -6534
		mu 0 4 3601 3608 3615 3611
		mu 1 4 3615 3622 3629 3625
		f 4 -6533 -6542 6542 -6540
		mu 0 4 3608 3610 3616 3615
		mu 1 4 3622 3624 3630 3629
		f 4 -6541 6543 6544 -6537
		mu 0 4 3611 3615 3617 3613
		mu 1 4 3625 3629 3631 3627
		f 4 -6543 -6546 6546 -6544
		mu 0 4 3615 3616 3582 3617
		mu 1 4 3629 3630 3596 3631
		f 4 -6548 6548 6549 -6517
		mu 0 4 3595 3618 3619 3596
		mu 1 4 3609 3632 3633 3610
		f 4 -6551 6551 6552 -6549
		mu 0 4 3618 3620 3621 3619
		mu 1 4 3632 3634 3635 3633
		f 4 -6554 6554 6555 -6552
		mu 0 4 3620 3622 3623 3621
		mu 1 4 3634 3636 3637 3635
		f 4 -6557 -6538 6557 -6555
		mu 0 4 3624 3614 3613 3625
		mu 1 4 3638 3628 3627 3639
		f 4 -6550 6558 6559 -6524
		mu 0 4 3596 3619 3626 3603
		mu 1 4 3610 3633 3640 3617
		f 4 -6553 6560 6561 -6559
		mu 0 4 3619 3621 3627 3626
		mu 1 4 3633 3635 3641 3640
		f 4 -6560 6562 -6564 -6527
		mu 0 4 3603 3626 3628 3605
		mu 1 4 3617 3640 3642 3619
		f 4 -6562 6564 -6566 -6563
		mu 0 4 3626 3627 3629 3628
		mu 1 4 3640 3641 3643 3642
		f 4 -6556 6566 6567 -6561
		mu 0 4 3621 3623 3630 3627
		mu 1 4 3635 3637 3644 3641
		f 4 -6558 -6545 6568 -6567
		mu 0 4 3625 3613 3617 3631
		mu 1 4 3639 3627 3631 3645
		f 4 -6568 6569 6570 -6565
		mu 0 4 3627 3630 3632 3629
		mu 1 4 3641 3644 3646 3643
		f 4 -6569 -6547 6571 -6570
		mu 0 4 3631 3617 3582 3633
		mu 1 4 3645 3631 3596 3647
		f 4 6572 6573 6574 6575
		mu 0 4 3634 3635 3636 3637
		mu 1 4 3648 3649 3650 3651
		f 4 6576 6577 6578 -6574
		mu 0 4 3635 3638 3639 3636
		mu 1 4 3649 3652 3653 3650
		f 4 6579 6580 6581 -6578
		mu 0 4 3638 3640 3641 3639
		mu 1 4 3654 3655 3656 3657
		f 4 6582 6583 6584 -6581
		mu 0 4 3642 3643 3644 3645
		mu 1 4 3655 3658 3659 3656
		f 4 -6575 6585 -6587 6587
		mu 0 4 3637 3636 3646 3594
		mu 1 4 3651 3650 3660 3608
		f 4 -6579 6588 -6590 -6586
		mu 0 4 3636 3639 3647 3646
		mu 1 4 3650 3653 3661 3660
		f 4 -6582 6590 6591 -6589
		mu 0 4 3639 3641 3648 3647
		mu 1 4 3657 3656 3662 3663
		f 4 -6585 6592 6593 -6591
		mu 0 4 3645 3644 3649 3650
		mu 1 4 3656 3659 3664 3662
		f 4 -6576 6594 6595 -6597
		mu 0 4 3634 3637 3651 3652
		mu 1 4 3648 3651 3665 3666
		f 4 -6596 6597 6598 -6600
		mu 0 4 3653 3654 3655 3656
		mu 1 4 3667 3668 3669 3670
		f 4 -6588 -6515 6600 -6595
		mu 0 4 3637 3594 3593 3651
		mu 1 4 3651 3608 3607 3665
		f 4 -6601 -6511 6601 -6598
		mu 0 4 3654 3590 3585 3655
		mu 1 4 3668 3604 3599 3669
		f 4 -6599 6602 6603 -6605
		mu 0 4 3656 3655 3657 3658
		mu 1 4 3670 3669 3671 3672
		f 4 -6604 6605 -6584 -6607
		mu 0 4 3658 3657 3644 3643
		mu 1 4 3672 3671 3659 3658
		f 4 -6602 -6608 6608 -6603
		mu 0 4 3655 3585 3659 3657
		mu 1 4 3669 3599 3673 3671
		f 4 -6609 -6610 -6593 -6606
		mu 0 4 3657 3659 3649 3644
		mu 1 4 3671 3673 3664 3659
		f 4 6610 6611 6612 6613
		mu 0 4 3660 3661 3662 3663
		mu 1 4 3674 3675 3676 3677
		f 4 6614 6615 6616 -6612
		mu 0 4 3661 3664 3665 3662
		mu 1 4 3675 3678 3679 3676
		f 4 6617 -6619 6619 -6616
		mu 0 4 3664 3666 3610 3665
		mu 1 4 3678 3680 3624 3679
		f 4 -6613 6620 6621 6622
		mu 0 4 3663 3662 3667 3668
		mu 1 4 3677 3676 3681 3682
		f 4 -6622 6623 6624 6625
		mu 0 4 3669 3670 3671 3672
		mu 1 4 3683 3684 3685 3686
		f 4 -6617 6626 6627 -6621
		mu 0 4 3662 3665 3673 3667
		mu 1 4 3676 3679 3687 3681
		f 4 -6620 -6532 6628 -6627
		mu 0 4 3665 3610 3609 3673
		mu 1 4 3679 3624 3623 3687
		f 4 -6628 6629 6630 -6624
		mu 0 4 3670 3674 3675 3671
		mu 1 4 3684 3688 3689 3685
		f 4 -6629 -6528 6631 -6630
		mu 0 4 3674 3606 3605 3675
		mu 1 4 3688 3620 3619 3689
		f 4 -6633 6633 6634 6635
		mu 0 4 3676 3677 3678 3679
		mu 1 4 3690 3691 3692 3693
		f 4 -6637 6637 6638 -6634
		mu 0 4 3677 3680 3681 3678
		mu 1 4 3691 3694 3695 3692
		f 4 -6640 6640 6641 -6638
		mu 0 4 3680 3682 3683 3681
		mu 1 4 3696 3697 3698 3699
		f 4 -6643 6643 6644 -6641
		mu 0 4 3684 3685 3686 3687
		mu 1 4 3697 3700 3701 3698
		f 4 -6635 6645 -6573 6646
		mu 0 4 3679 3678 3635 3634
		mu 1 4 3693 3692 3649 3648
		f 4 -6639 6647 -6577 -6646
		mu 0 4 3678 3681 3638 3635
		mu 1 4 3692 3695 3652 3649
		f 4 -6642 6648 -6580 -6648
		mu 0 4 3681 3683 3640 3638
		mu 1 4 3699 3698 3655 3654
		f 4 -6645 6649 -6583 -6649
		mu 0 4 3687 3686 3643 3642
		mu 1 4 3698 3701 3658 3655
		f 4 -6636 6650 6651 6652
		mu 0 4 3676 3679 3688 3689
		mu 1 4 3690 3693 3702 3703
		f 4 -6652 6653 6654 6655
		mu 0 4 3690 3691 3692 3693
		mu 1 4 3704 3705 3706 3707
		f 4 -6647 6596 6656 -6651
		mu 0 4 3679 3634 3652 3688
		mu 1 4 3693 3648 3666 3702
		f 4 -6657 6599 6657 -6654
		mu 0 4 3691 3653 3656 3692
		mu 1 4 3705 3667 3670 3706
		f 4 -6655 6658 6659 6660
		mu 0 4 3693 3692 3694 3695
		mu 1 4 3707 3706 3708 3709
		f 4 -6660 6661 -6644 6662
		mu 0 4 3695 3694 3686 3685
		mu 1 4 3709 3708 3701 3700
		f 4 -6658 6604 6663 -6659
		mu 0 4 3692 3656 3658 3694
		mu 1 4 3706 3670 3672 3708
		f 4 -6664 6606 -6650 -6662
		mu 0 4 3694 3658 3643 3686
		mu 1 4 3708 3672 3658 3701
		f 4 6664 -6614 6665 -6667
		mu 0 4 3696 3660 3663 3697
		mu 1 4 3710 3674 3677 3711
		f 4 -6666 -6623 6667 -6669
		mu 0 4 3697 3663 3668 3698
		mu 1 4 3711 3677 3682 3712
		f 4 -6668 -6626 6669 -6671
		mu 0 4 3699 3669 3672 3700
		mu 1 4 3713 3683 3686 3714
		f 4 6671 6672 6673 6674
		mu 0 4 3701 3702 3703 3704
		mu 1 4 3715 3716 3717 3718
		f 4 -6674 6675 6676 6677
		mu 0 4 3705 3706 3707 3708
		mu 1 4 3719 3720 3721 3722
		f 4 6678 -6520 6679 -6673
		mu 0 4 3702 3595 3598 3703
		mu 1 4 3716 3609 3612 3717
		f 4 -6680 -6523 6680 -6676
		mu 0 4 3706 3599 3602 3707
		mu 1 4 3720 3613 3616 3721
		f 4 -6677 6681 6682 6683
		mu 0 4 3708 3707 3709 3710
		mu 1 4 3722 3721 3723 3724
		f 4 -6683 6684 6685 6686
		mu 0 4 3710 3709 3711 3712
		mu 1 4 3724 3723 3725 3726
		f 4 -6681 -6536 6687 -6682
		mu 0 4 3707 3602 3612 3709
		mu 1 4 3721 3616 3626 3723
		f 4 -6688 -6539 6688 -6685
		mu 0 4 3709 3612 3614 3711
		mu 1 4 3723 3626 3628 3725
		f 4 -6690 6690 6691 -6672
		mu 0 4 3701 3713 3714 3702
		mu 1 4 3715 3727 3728 3716
		f 4 -6693 6693 6694 -6691
		mu 0 4 3713 3715 3716 3714
		mu 1 4 3727 3729 3730 3728
		f 4 -6696 6696 6697 -6694
		mu 0 4 3715 3717 3718 3716
		mu 1 4 3729 3731 3732 3730
		f 4 -6699 -6686 6699 -6697
		mu 0 4 3719 3712 3711 3720
		mu 1 4 3733 3726 3725 3734
		f 4 -6692 6700 6547 -6679
		mu 0 4 3702 3714 3618 3595
		mu 1 4 3716 3728 3632 3609
		f 4 -6695 6701 6550 -6701
		mu 0 4 3714 3716 3620 3618
		mu 1 4 3728 3730 3634 3632
		f 4 -6698 6702 6553 -6702
		mu 0 4 3716 3718 3622 3620
		mu 1 4 3730 3732 3636 3634
		f 4 -6700 -6689 6556 -6703
		mu 0 4 3720 3711 3614 3624
		mu 1 4 3734 3725 3628 3638
		f 4 6703 6704 6705 6706
		mu 0 4 3721 3722 3723 3724
		mu 1 4 3735 3736 3737 3738
		f 4 6707 6708 6709 -6705
		mu 0 4 3722 3725 3726 3723
		mu 1 4 3736 3739 3740 3737
		f 4 6710 6711 6712 -6709
		mu 0 4 3725 3727 3728 3726
		mu 1 4 3741 3742 3743 3744
		f 4 6713 6714 6715 -6712
		mu 0 4 3729 3730 3731 3732
		mu 1 4 3742 3745 3746 3743
		f 4 -6706 6716 6632 6717
		mu 0 4 3724 3723 3677 3676
		mu 1 4 3738 3737 3691 3690
		f 4 -6710 6718 6636 -6717
		mu 0 4 3723 3726 3680 3677
		mu 1 4 3737 3740 3694 3691
		f 4 -6713 6719 6639 -6719
		mu 0 4 3726 3728 3682 3680
		mu 1 4 3744 3743 3697 3696
		f 4 -6716 6720 6642 -6720
		mu 0 4 3732 3731 3685 3684
		mu 1 4 3743 3746 3700 3697
		f 4 -6707 6721 6722 6723
		mu 0 4 3721 3724 3733 3734
		mu 1 4 3735 3738 3747 3748
		f 4 -6723 6724 6725 6726
		mu 0 4 3735 3736 3737 3738
		mu 1 4 3749 3750 3751 3752
		f 4 -6718 -6653 6727 -6722
		mu 0 4 3724 3676 3689 3733
		mu 1 4 3738 3690 3703 3747
		f 4 -6728 -6656 6728 -6725
		mu 0 4 3736 3690 3693 3737
		mu 1 4 3750 3704 3707 3751
		f 4 -6726 6729 6730 6731
		mu 0 4 3738 3737 3739 3740
		mu 1 4 3752 3751 3753 3754
		f 4 -6731 6732 -6715 6733
		mu 0 4 3740 3739 3731 3730
		mu 1 4 3754 3753 3746 3745
		f 4 -6729 -6661 6734 -6730
		mu 0 4 3737 3693 3695 3739
		mu 1 4 3751 3707 3709 3753
		f 4 -6735 -6663 -6721 -6733
		mu 0 4 3739 3695 3685 3731
		mu 1 4 3753 3709 3700 3746
		f 4 6735 6736 6737 6738
		mu 0 4 3741 3742 3743 3744
		mu 1 4 3755 3756 3757 3758
		f 4 6739 6666 6740 -6737
		mu 0 4 3742 3696 3697 3743
		mu 1 4 3756 3710 3711 3757
		f 4 -6738 6741 6742 6743
		mu 0 4 3744 3743 3745 3746
		mu 1 4 3758 3757 3759 3760
		f 4 -6743 6744 6745 6746
		mu 0 4 3747 3748 3749 3750
		mu 1 4 3761 3762 3763 3764
		f 4 -6741 6668 6747 -6742
		mu 0 4 3743 3697 3698 3745
		mu 1 4 3757 3711 3712 3759
		f 4 -6748 6670 6748 -6745
		mu 0 4 3748 3699 3700 3749
		mu 1 4 3762 3713 3714 3763
		f 4 6749 6750 6751 6752
		mu 0 4 3751 3752 3753 3754
		mu 1 4 3765 3766 3767 3768
		f 4 -6752 6753 6754 6755
		mu 0 4 3755 3756 3757 3758
		mu 1 4 3769 3770 3771 3772
		f 4 6756 -6675 6757 -6751
		mu 0 4 3752 3701 3704 3753
		mu 1 4 3766 3715 3718 3767
		f 4 -6758 -6678 6758 -6754
		mu 0 4 3756 3705 3708 3757
		mu 1 4 3770 3719 3722 3771
		f 4 -6755 6759 6760 6761
		mu 0 4 3758 3757 3759 3760
		mu 1 4 3772 3771 3773 3774
		f 4 -6761 6762 6763 6764
		mu 0 4 3760 3759 3761 3762
		mu 1 4 3774 3773 3775 3776
		f 4 -6759 -6684 6765 -6760
		mu 0 4 3757 3708 3710 3759
		mu 1 4 3771 3722 3724 3773
		f 4 -6766 -6687 6766 -6763
		mu 0 4 3759 3710 3712 3761
		mu 1 4 3773 3724 3726 3775
		f 4 6767 6768 6769 -6750
		mu 0 4 3751 3763 3764 3752
		mu 1 4 3765 3777 3778 3766
		f 4 6770 6771 6772 -6769
		mu 0 4 3763 3765 3766 3764
		mu 1 4 3777 3779 3780 3778
		f 4 6773 6774 6775 -6772
		mu 0 4 3765 3767 3768 3766
		mu 1 4 3779 3781 3782 3780
		f 4 6776 -6764 6777 -6775
		mu 0 4 3769 3762 3761 3770
		mu 1 4 3783 3776 3775 3784
		f 4 -6770 6778 6689 -6757
		mu 0 4 3752 3764 3713 3701
		mu 1 4 3766 3778 3727 3715
		f 4 -6773 6779 6692 -6779
		mu 0 4 3764 3766 3715 3713
		mu 1 4 3778 3780 3729 3727
		f 4 -6776 6780 6695 -6780
		mu 0 4 3766 3768 3717 3715
		mu 1 4 3780 3782 3731 3729
		f 4 -6778 -6767 6698 -6781
		mu 0 4 3770 3761 3712 3719
		mu 1 4 3784 3775 3726 3733
		f 4 6276 6781 6782 6783
		mu 0 4 3425 3430 3771 3772
		mu 1 4 3434 3439 3785 3786
		f 4 -6783 6784 6785 6786
		mu 0 4 3772 3771 3773 3774
		mu 1 4 3786 3785 3787 3788
		f 4 -6307 6787 6788 -6782
		mu 0 4 3430 3450 3775 3771
		mu 1 4 3439 3459 3789 3785
		f 4 -6304 -6790 6790 -6788
		mu 0 4 3448 3445 3776 3777
		mu 1 4 3457 3454 3790 3791
		f 4 -6789 6791 6792 -6785
		mu 0 4 3771 3775 3778 3773
		mu 1 4 3785 3789 3792 3787
		f 4 -6791 -6794 6794 -6792
		mu 0 4 3777 3776 3779 3780
		mu 1 4 3791 3790 3793 3794
		f 4 -6786 6795 6796 6797
		mu 0 4 3774 3773 3781 3782
		mu 1 4 3788 3787 3795 3796
		f 4 -6797 6798 6799 6800
		mu 0 4 3782 3781 3783 3784
		mu 1 4 3796 3795 3797 3798
		f 4 -6793 6801 6802 -6796
		mu 0 4 3773 3778 3785 3781
		mu 1 4 3787 3792 3799 3795
		f 4 -6795 6803 6804 -6802
		mu 0 4 3780 3779 3786 3787
		mu 1 4 3794 3793 3800 3801
		f 4 -6803 6805 6806 -6799
		mu 0 4 3781 3785 3788 3783
		mu 1 4 3795 3799 3802 3797
		f 4 -6805 6807 6808 -6806
		mu 0 4 3787 3786 3789 3790
		mu 1 4 3801 3800 3803 3804
		f 4 6809 6810 6811 -6801
		mu 0 4 3784 3791 3792 3782
		mu 1 4 3798 3805 3806 3796
		f 4 6812 6813 6814 -6811
		mu 0 4 3791 3793 3794 3792
		mu 1 4 3805 3807 3808 3806
		f 4 -6812 6815 6816 -6798
		mu 0 4 3782 3792 3795 3774
		mu 1 4 3796 3806 3809 3788
		f 4 -6815 6817 6818 -6816
		mu 0 4 3792 3794 3796 3795
		mu 1 4 3806 3808 3810 3809
		f 4 6819 6820 6821 -6814
		mu 0 4 3793 3797 3798 3794
		mu 1 4 3807 3811 3812 3808
		f 4 6822 6823 6824 -6821
		mu 0 4 3797 3799 3800 3798
		mu 1 4 3811 3813 3814 3812
		f 4 -6822 6825 6826 -6818
		mu 0 4 3794 3798 3801 3796
		mu 1 4 3808 3812 3815 3810
		f 4 -6825 6827 6828 -6826
		mu 0 4 3798 3800 3802 3801
		mu 1 4 3812 3814 3816 3815
		f 4 -6817 6829 6830 6831
		mu 0 4 3774 3795 3803 3804
		mu 1 4 3788 3809 3817 3818
		f 4 -6819 6832 6833 -6830
		mu 0 4 3795 3796 3805 3803
		mu 1 4 3809 3810 3819 3817
		f 4 -6831 6834 -6286 6835
		mu 0 4 3804 3803 3436 3434
		mu 1 4 3818 3817 3445 3443
		f 4 -6834 6836 -6289 -6835
		mu 0 4 3803 3805 3438 3436
		mu 1 4 3817 3819 3447 3445
		f 4 -6827 6837 6838 -6833
		mu 0 4 3796 3801 3806 3805
		mu 1 4 3810 3815 3820 3819
		f 4 -6829 6839 6840 -6838
		mu 0 4 3801 3802 3807 3806
		mu 1 4 3815 3816 3821 3820
		f 4 -6839 6841 6842 -6837
		mu 0 4 3805 3806 3808 3438
		mu 1 4 3819 3820 3822 3447
		f 4 -6841 6843 6844 -6842
		mu 0 4 3806 3807 3809 3808
		mu 1 4 3820 3821 3823 3822
		f 4 -6846 6846 6436 -6440
		mu 0 4 3540 3810 3533 3538
		mu 1 4 3554 3824 3547 3552
		f 4 -6325 6847 6848 6849
		mu 0 4 3464 3463 3811 3779
		mu 1 4 3473 3472 3825 3793
		f 4 -6323 6850 6851 -6848
		mu 0 4 3463 3462 3812 3811
		mu 1 4 3472 3471 3486 3825
		f 4 -6334 6852 6789 -6300
		mu 0 4 3444 3467 3776 3445
		mu 1 4 3453 3476 3790 3454
		f 4 -6332 -6850 6793 -6853
		mu 0 4 3467 3464 3779 3776
		mu 1 4 3476 3473 3793 3790
		f 4 -6344 6853 6854 6855
		mu 0 4 3813 3814 3815 3496
		mu 1 4 3481 3484 3826 3510
		f 4 -6347 -6851 6856 -6854
		mu 0 4 3814 3812 3462 3815
		mu 1 4 3484 3486 3471 3826
		f 4 -6444 6857 6858 6859
		mu 0 4 3541 3544 3816 3817
		mu 1 4 3555 3558 3827 3828
		f 4 -6450 -6455 6860 -6858
		mu 0 4 3544 3548 3551 3816
		mu 1 4 3558 3562 3565 3827
		f 4 -6859 6861 6862 6863
		mu 0 4 3818 3819 3820 3821
		mu 1 4 3829 3830 3831 3832
		f 4 -6861 -6460 6864 -6862
		mu 0 4 3819 3553 3556 3820
		mu 1 4 3830 3567 3570 3831
		f 4 -6724 6865 6866 -6704
		mu 0 4 3721 3734 3822 3722
		mu 1 4 3735 3748 3833 3736
		f 4 -6727 -6732 6867 -6866
		mu 0 4 3735 3738 3740 3823
		mu 1 4 3749 3752 3754 3834
		f 4 -6867 6868 -6711 -6708
		mu 0 4 3722 3822 3727 3725
		mu 1 4 3736 3833 3835 3739
		f 4 -6868 -6734 -6714 -6869
		mu 0 4 3823 3740 3730 3729
		mu 1 4 3834 3754 3745 3742
		f 4 -6744 6869 6870 -6739
		mu 0 4 3744 3746 3824 3741
		mu 1 4 3758 3760 3836 3755
		f 4 -6747 6871 6872 -6870
		mu 0 4 3747 3750 3825 3826
		mu 1 4 3761 3764 3837 3838
		f 4 -6777 6873 6874 -6765
		mu 0 4 3762 3769 3827 3760
		mu 1 4 3776 3783 3839 3774
		f 4 -6774 -6771 6875 -6874
		mu 0 4 3767 3765 3763 3828
		mu 1 4 3781 3779 3777 3840
		f 4 -6875 6876 -6756 -6762
		mu 0 4 3760 3827 3755 3758
		mu 1 4 3774 3839 3769 3772
		f 4 -6876 -6768 -6753 -6877
		mu 0 4 3828 3763 3751 3754
		mu 1 4 3840 3777 3765 3768
		f 4 -6849 6877 6878 -6804
		mu 0 4 3779 3811 3829 3786
		mu 1 4 3793 3825 3841 3800
		f 4 -6852 -6355 6879 -6878
		mu 0 4 3811 3812 3830 3829
		mu 1 4 3825 3486 3494 3841
		f 4 -6879 6880 6881 -6808
		mu 0 4 3786 3829 3831 3789
		mu 1 4 3800 3841 3842 3803
		f 4 -6880 -6358 6882 -6881
		mu 0 4 3829 3830 3832 3831
		mu 1 4 3841 3494 3496 3842
		f 4 -6884 6884 6885 -6516
		mu 0 4 3594 3833 3834 3592
		mu 1 4 3608 3843 3844 3606
		f 4 -6887 6887 6888 -6885
		mu 0 4 3833 3629 3835 3834
		mu 1 4 3843 3643 3845 3844
		f 4 -6886 6889 6890 -6514
		mu 0 4 3592 3834 3836 3588
		mu 1 4 3606 3844 3846 3602
		f 4 -6889 6891 6892 -6890
		mu 0 4 3834 3835 3837 3836
		mu 1 4 3844 3845 3847 3846
		f 4 -6571 6893 6894 -6888
		mu 0 4 3629 3632 3838 3835
		mu 1 4 3643 3646 3848 3845
		f 4 -6572 -6498 6895 -6894
		mu 0 4 3633 3582 3580 3839
		mu 1 4 3647 3596 3594 3849
		f 4 -6895 6896 6897 -6892
		mu 0 4 3835 3838 3840 3837
		mu 1 4 3845 3848 3850 3847
		f 4 -6896 -6495 6898 -6897
		mu 0 4 3839 3580 3577 3841
		mu 1 4 3849 3594 3591 3851
		f 4 -6900 6900 6901 -6632
		mu 0 4 3605 3842 3843 3675
		mu 1 4 3619 3852 3853 3689
		f 4 -6902 6902 6903 -6631
		mu 0 4 3675 3843 3844 3671
		mu 1 4 3689 3853 3854 3685
		f 4 -6905 6905 6906 -6901
		mu 0 4 3842 3845 3846 3843
		mu 1 4 3852 3855 3856 3853
		f 4 -6908 -6618 6908 -6906
		mu 0 4 3847 3666 3664 3848
		mu 1 4 3857 3680 3678 3858
		f 4 -6907 6909 6910 -6903
		mu 0 4 3843 3846 3849 3844
		mu 1 4 3853 3856 3859 3854
		f 4 -6909 -6615 6911 -6910
		mu 0 4 3848 3664 3661 3850
		mu 1 4 3858 3678 3675 3860
		f 4 -6913 6913 6914 -6489
		mu 0 4 3576 3851 3852 3574
		mu 1 4 3590 3861 3862 3588
		f 4 -6916 6916 6917 -6914
		mu 0 4 3851 3853 3854 3852
		mu 1 4 3861 3863 3864 3862
		f 4 -6915 6918 6919 -6487
		mu 0 4 3574 3852 3855 3570
		mu 1 4 3588 3862 3865 3584
		f 4 -6918 6920 6921 -6919
		mu 0 4 3852 3854 3856 3855
		mu 1 4 3862 3864 3866 3865
		f 4 -6923 6923 6924 -6917
		mu 0 4 3853 3857 3858 3854
		mu 1 4 3863 3867 3868 3864
		f 4 -6926 -6471 6926 -6924
		mu 0 4 3859 3564 3562 3860
		mu 1 4 3869 3578 3576 3870
		f 4 -6925 6927 6928 -6921
		mu 0 4 3854 3858 3861 3856
		mu 1 4 3864 3868 3871 3866
		f 4 -6927 -6468 6929 -6928
		mu 0 4 3860 3562 3559 3862
		mu 1 4 3870 3576 3573 3872
		f 4 6930 6931 6932 -6670
		mu 0 4 3672 3863 3864 3700
		mu 1 4 3686 3873 3874 3714
		f 4 6933 6934 6935 -6932
		mu 0 4 3863 3865 3866 3864
		mu 1 4 3873 3875 3876 3874
		f 4 6936 -6665 6937 -6935
		mu 0 4 3867 3660 3696 3868
		mu 1 4 3877 3674 3710 3878
		f 4 -6933 6938 6939 -6749
		mu 0 4 3700 3864 3869 3749
		mu 1 4 3714 3874 3879 3763
		f 4 -6936 6940 6941 -6939
		mu 0 4 3864 3866 3870 3869
		mu 1 4 3874 3876 3880 3879
		f 4 -6938 -6740 6942 -6941
		mu 0 4 3868 3696 3742 3871
		mu 1 4 3878 3710 3756 3881
		f 4 -6828 6943 6358 6944
		mu 0 4 3802 3800 3485 3480
		mu 1 4 3816 3814 3497 3491
		f 4 -6824 6945 6360 -6944
		mu 0 4 3800 3799 3486 3485
		mu 1 4 3814 3813 3499 3497
		f 4 -6273 6946 6541 6947
		mu 0 4 3428 3427 3616 3610
		mu 1 4 3437 3436 3630 3624
		f 4 -6271 6948 6545 -6947
		mu 0 4 3427 3426 3582 3616
		mu 1 4 3436 3435 3596 3630
		f 4 -6278 -6948 6618 -6950
		mu 0 4 3431 3428 3610 3666
		mu 1 4 3440 3437 3624 3680
		f 4 -6313 6950 6904 6951
		mu 0 4 3452 3454 3845 3842
		mu 1 4 3461 3463 3855 3852
		f 4 -6314 6949 6907 -6951
		mu 0 4 3455 3431 3666 3847
		mu 1 4 3464 3440 3680 3857
		f 4 -6310 -6952 6899 6952
		mu 0 4 3453 3452 3842 3605
		mu 1 4 3462 3461 3852 3619
		f 4 -6329 6953 6565 6954
		mu 0 4 3461 3466 3628 3629
		mu 1 4 3470 3475 3642 3643
		f 4 -6331 -6953 6563 -6954
		mu 0 4 3466 3453 3605 3628
		mu 1 4 3475 3462 3619 3642
		f 4 -6318 6955 6883 6956
		mu 0 4 3456 3459 3833 3594
		mu 1 4 3465 3468 3843 3608
		f 4 -6321 -6955 6886 -6956
		mu 0 4 3459 3461 3629 3833
		mu 1 4 3468 3470 3643 3843
		f 4 6957 6958 6589 6959
		mu 0 4 3872 3873 3646 3647
		mu 1 4 3882 3883 3660 3661
		f 4 6960 -6957 6586 -6959
		mu 0 4 3873 3456 3594 3646
		mu 1 4 3883 3465 3608 3660
		f 4 -6592 6961 -6340 -6960
		mu 0 4 3647 3648 3874 3872
		mu 1 4 3663 3662 3478 3480
		f 4 -6594 6962 -6337 -6962
		mu 0 4 3650 3649 3443 3469
		mu 1 4 3662 3664 3452 3478
		f 4 -6297 6963 6607 6964
		mu 0 4 3441 3442 3659 3585
		mu 1 4 3450 3451 3673 3599
		f 4 -6299 -6963 6609 -6964
		mu 0 4 3442 3443 3649 3659
		mu 1 4 3451 3452 3664 3673
		f 4 -6293 6965 6498 -6949
		mu 0 4 3426 3440 3583 3582
		mu 1 4 3435 3449 3597 3596
		f 4 -6295 -6965 6502 -6966
		mu 0 4 3440 3441 3585 3583
		mu 1 4 3449 3450 3599 3597
		f 4 -6426 6966 6845 -6422
		mu 0 4 3530 3521 3875 3527
		mu 1 4 3544 3535 3884 3541
		f 4 6967 6968 6969 6970
		mu 0 4 3876 3877 3878 3879
		mu 1 4 3885 3886 3887 3888
		f 4 6971 -6445 6972 -6969
		mu 0 4 3880 3545 3542 3881
		mu 1 4 3889 3559 3556 3890
		f 4 -6970 6973 -6864 6974
		mu 0 4 3879 3878 3818 3821
		mu 1 4 3888 3887 3829 3832
		f 4 -6973 -6441 -6860 -6974
		mu 0 4 3881 3542 3541 3817
		mu 1 4 3890 3556 3555 3828
		f 4 6975 6976 6977 -6462
		mu 0 4 3558 3882 3883 3555
		mu 1 4 3572 3891 3892 3569
		f 4 6978 -6971 6979 -6977
		mu 0 4 3882 3876 3879 3883
		mu 1 4 3891 3885 3888 3892
		f 4 -6978 6980 -6865 -6459
		mu 0 4 3555 3883 3820 3556
		mu 1 4 3569 3892 3831 3570
		f 4 -6980 -6975 -6863 -6981
		mu 0 4 3883 3879 3821 3820
		mu 1 4 3892 3888 3832 3831
		f 4 -6929 6981 -6968 6982
		mu 0 4 3856 3861 3877 3876
		mu 1 4 3866 3871 3886 3885
		f 4 -6930 -6463 -6972 -6982
		mu 0 4 3862 3559 3545 3880
		mu 1 4 3872 3573 3559 3889
		f 4 -6920 6983 -6976 -6481
		mu 0 4 3570 3855 3882 3558
		mu 1 4 3584 3865 3891 3572
		f 4 -6922 -6983 -6979 -6984
		mu 0 4 3855 3856 3876 3882
		mu 1 4 3865 3866 3885 3891
		f 4 -6898 6984 6922 6985
		mu 0 4 3837 3840 3857 3853
		mu 1 4 3847 3850 3867 3863
		f 4 -6899 -6490 6925 -6985
		mu 0 4 3841 3577 3564 3859
		mu 1 4 3851 3591 3578 3869
		f 4 -6891 6986 6912 -6508
		mu 0 4 3588 3836 3851 3576
		mu 1 4 3602 3846 3861 3590
		f 4 -6893 -6986 6915 -6987
		mu 0 4 3836 3837 3853 3851
		mu 1 4 3846 3847 3863 3861
		f 4 -6942 6987 -6873 6988
		mu 0 4 3869 3870 3826 3825
		mu 1 4 3879 3880 3838 3837
		f 4 -6943 -6736 -6871 -6988
		mu 0 4 3871 3742 3741 3824
		mu 1 4 3881 3756 3755 3836
		f 4 -6940 -6989 -6872 -6746
		mu 0 4 3749 3869 3825 3750
		mu 1 4 3763 3879 3837 3764
		f 4 -6911 6989 -6934 6990
		mu 0 4 3844 3849 3865 3863
		mu 1 4 3854 3859 3875 3873
		f 4 -6912 -6611 -6937 -6990
		mu 0 4 3850 3661 3660 3867
		mu 1 4 3860 3675 3674 3877
		f 4 -6904 -6991 -6931 -6625
		mu 0 4 3671 3844 3863 3672
		mu 1 4 3685 3854 3873 3686
		f 4 -6967 -6412 -6417 -6992
		mu 0 4 3875 3521 3524 3526
		mu 1 4 3884 3535 3538 3540
		f 4 -6847 6991 -6434 -6431
		mu 0 4 3533 3810 3536 3534
		mu 1 4 3547 3824 3550 3548
		f 4 -6844 6992 6348 6993
		mu 0 4 3809 3807 3479 3478
		mu 1 4 3823 3821 3489 3488
		f 4 -6840 -6945 6350 -6993
		mu 0 4 3807 3802 3480 3479
		mu 1 4 3821 3816 3491 3489
		f 4 6994 -6357 6995 -6997
		mu 0 4 3884 3484 3483 3885
		mu 1 4 3893 3496 3495 3894
		f 4 -6996 -6362 6997 -6999
		mu 0 4 3885 3483 3486 3886
		mu 1 4 3895 3500 3499 3896
		f 4 6999 -6800 7000 -7002
		mu 0 4 3887 3784 3783 3888
		mu 1 4 3897 3798 3797 3898
		f 4 7002 -6882 7003 -7005
		mu 0 4 3889 3789 3831 3890
		mu 1 4 3899 3803 3842 3900
		f 4 -7004 -6883 -6995 -7006
		mu 0 4 3890 3831 3832 3891
		mu 1 4 3900 3842 3496 3893
		f 4 6265 7006 7007 -6280
		mu 0 4 3420 3423 3892 3432
		mu 1 4 3429 3432 3901 3441
		f 4 6268 -6784 7008 -7007
		mu 0 4 3423 3425 3772 3892
		mu 1 4 3432 3434 3786 3901
		f 4 -7008 7009 -6836 -6283
		mu 0 4 3432 3892 3804 3434
		mu 1 4 3441 3901 3818 3443
		f 4 -7009 -6787 -6832 -7010
		mu 0 4 3892 3772 3774 3804
		mu 1 4 3901 3786 3788 3818
		f 4 7010 -6813 7011 -7013
		mu 0 4 3893 3793 3791 3894
		mu 1 4 3902 3807 3805 3903
		f 4 -7012 -6810 -7000 -7014
		mu 0 4 3894 3791 3784 3887
		mu 1 4 3903 3805 3798 3897
		f 4 -7001 -6807 7014 -7016
		mu 0 4 3888 3783 3788 3895
		mu 1 4 3898 3797 3802 3904
		f 4 -7015 -6809 -7003 -7017
		mu 0 4 3896 3790 3789 3889
		mu 1 4 3905 3804 3803 3899
		f 4 -6998 -6946 7017 -7019
		mu 0 4 3886 3486 3799 3897
		mu 1 4 3896 3499 3813 3906
		f 4 -7018 -6823 7019 -7021
		mu 0 4 3897 3799 3797 3898
		mu 1 4 3906 3813 3811 3907
		f 4 -7020 -6820 -7011 -7022
		mu 0 4 3898 3797 3793 3893
		mu 1 4 3907 3811 3807 3902
		f 4 -6855 7022 7023 -6375
		mu 0 4 3496 3815 3899 3497
		mu 1 4 3510 3826 3908 3511
		f 4 -6857 -6322 7024 -7023
		mu 0 4 3815 3462 3457 3899
		mu 1 4 3826 3471 3466 3908
		f 4 -6368 -6379 7025 7026
		mu 0 4 3492 3491 3498 3900
		mu 1 4 3506 3505 3512 3909
		f 4 -7026 -6376 7027 7028
		mu 0 4 3900 3498 3497 3872
		mu 1 4 3909 3512 3511 3882
		f 4 -6387 7029 7030 6380
		mu 0 4 3500 3505 3901 3499
		mu 1 4 3514 3519 3910 3513
		f 4 -7031 7031 -6856 6377
		mu 0 4 3499 3901 3813 3496
		mu 1 4 3513 3910 3481 3510
		f 4 -6408 7032 7033 -7030
		mu 0 4 3520 3517 3902 3903
		mu 1 4 3519 3911 3912 3910
		f 4 -7034 7034 -6341 -7032
		mu 0 4 3903 3902 3473 3472
		mu 1 4 3910 3912 3482 3481
		f 4 -6404 7035 7036 -7033
		mu 0 4 3517 3506 3904 3902
		mu 1 4 3531 3520 3913 3914
		f 4 -7037 7037 -6348 -7035
		mu 0 4 3902 3904 3478 3473
		mu 1 4 3914 3913 3488 3487
		f 4 -6994 -7038 7038 7039
		mu 0 4 3809 3478 3904 3905
		mu 1 4 3823 3488 3913 3915
		f 4 -7039 -7036 -6394 7040
		mu 0 4 3905 3904 3506 3509
		mu 1 4 3915 3913 3520 3523
		f 4 -7028 -7024 7041 -6958
		mu 0 4 3872 3497 3899 3873
		mu 1 4 3882 3511 3908 3883
		f 4 -7042 -7025 -6315 -6961
		mu 0 4 3873 3899 3457 3456
		mu 1 4 3883 3908 3466 3465
		f 4 7042 7043 -7029 -6339
		mu 0 4 3470 3906 3907 3471
		mu 1 4 3479 3916 3917 3480
		f 4 7044 -6373 -7027 -7044
		mu 0 4 3906 3513 3908 3907
		mu 1 4 3916 3527 3918 3917
		f 4 -6290 -6843 7045 -6335
		mu 0 4 3439 3438 3808 3468
		mu 1 4 3448 3447 3822 3477
		f 4 -7046 -6845 7046 -6338
		mu 0 4 3468 3808 3809 3470
		mu 1 4 3477 3822 3823 3479
		f 4 -7047 -7040 7047 -7043
		mu 0 4 3470 3809 3905 3906
		mu 1 4 3479 3823 3915 3916
		f 4 -7048 -7041 -6399 -7045
		mu 0 4 3906 3905 3509 3513
		mu 1 4 3916 3915 3523 3527
		f 4 -7049 -7050 -7051 -7052
		mu 0 4 3909 3910 3911 3912
		mu 1 4 3919 3920 3921 3922
		f 4 -7053 -7054 7048 -7055
		mu 0 4 3913 3914 3910 3909
		mu 1 4 3923 3924 3920 3919
		f 4 -7056 7052 -7057 -7058
		mu 0 4 3915 3914 3913 3916
		mu 1 4 3925 3924 3923 3926
		f 4 -7059 7057 -7060 -7061
		mu 0 4 3917 3915 3916 3918
		mu 1 4 3927 3925 3926 3928
		f 4 7051 -7062 -7063 -7064
		mu 0 4 3909 3912 3919 3920
		mu 1 4 3919 3922 3929 3930
		f 4 7054 7063 -7065 -7066
		mu 0 4 3913 3909 3920 3921
		mu 1 4 3923 3919 3930 3931
		f 4 7065 -7067 -7068 7056
		mu 0 4 3913 3921 3922 3916
		mu 1 4 3923 3931 3932 3926
		f 4 7067 -7069 -7070 7059
		mu 0 4 3916 3922 3923 3918
		mu 1 4 3926 3932 3933 3928
		f 4 -7071 -7072 -7073 -7074
		mu 0 4 3924 3925 3926 3927
		mu 1 4 3934 3935 3936 3937
		f 4 -7075 -7076 7070 -7077
		mu 0 4 3928 3929 3925 3924
		mu 1 4 3938 3939 3935 3934
		f 4 -7078 7074 -7079 -7080
		mu 0 4 3930 3929 3928 3931
		mu 1 4 3940 3939 3938 3941
		f 4 7080 7079 -7082 -7083
		mu 0 4 3932 3930 3931 3933
		mu 1 4 3942 3940 3941 3943;
	setAttr ".fc[3500:3999]"
		f 4 -7084 -7085 -7086 -7087
		mu 0 4 3934 3935 3936 3937
		mu 1 4 3944 3945 3946 3947
		f 4 -7088 -7089 -7090 -7091
		mu 0 4 3938 3939 3940 3941
		mu 1 4 3948 3949 3950 3951
		f 4 -7092 -7093 -7094 -7095
		mu 0 4 3942 3943 3944 3945
		mu 1 4 3952 3953 3954 3955
		f 4 -7096 7094 -7097 -7098
		mu 0 4 3946 3942 3945 3947
		mu 1 4 3956 3952 3955 3957
		f 4 7098 -7100 -7101 -7102
		mu 0 4 3948 3949 3950 3947
		mu 1 4 3958 3959 3960 3957
		f 4 -7103 -7104 7099 -7105
		mu 0 4 3951 3952 3950 3949
		mu 1 4 3961 3962 3960 3959
		f 4 7077 -7106 -7107 -7108
		mu 0 4 3929 3930 3953 3954
		mu 1 4 3939 3940 3963 3964
		f 4 7075 7107 -7109 -7110
		mu 0 4 3925 3929 3954 3955
		mu 1 4 3935 3939 3964 3965
		f 4 7071 7109 -7111 -7112
		mu 0 4 3926 3925 3955 3956
		mu 1 4 3936 3935 3965 3966
		f 4 -7113 7060 -7114 -7115
		mu 0 4 3957 3917 3918 3958
		mu 1 4 3967 3927 3928 3968
		f 4 7050 -7116 -7117 -7118
		mu 0 4 3912 3911 3959 3960
		mu 1 4 3922 3921 3969 3970
		f 4 -7119 -7120 -7121 -7122
		mu 0 4 3943 3919 3961 3962
		mu 1 4 3953 3929 3971 3972
		f 4 -7123 7082 -7124 -7125
		mu 0 4 3963 3932 3933 3964
		mu 1 4 3973 3942 3943 3974
		f 4 7123 -7126 7126 -7128
		mu 0 4 3964 3933 3965 3966
		mu 1 4 3974 3943 3975 3976
		f 4 -7129 -7130 -7131 -7127
		mu 0 4 3965 3944 3967 3966
		mu 1 4 3975 3954 3977 3976
		f 4 -7132 -7133 -7134 -7135
		mu 0 4 3968 3969 3970 3971
		mu 1 4 3978 3979 3980 3981
		f 4 -7136 -7137 -7138 -7139
		mu 0 4 3972 3973 3974 3975
		mu 1 4 3982 3983 3984 3985
		f 4 -7140 7140 -7142 7138
		mu 0 4 3976 3977 3978 3972
		mu 1 4 3986 3963 3973 3987
		f 4 -7143 7106 7139 7137
		mu 0 4 3979 3980 3977 3976
		mu 1 4 3988 3964 3963 3986
		f 4 -7144 7108 7142 -7145
		mu 0 4 3981 3982 3983 3984
		mu 1 4 3989 3965 3964 3988
		f 4 -7146 7110 7143 -7147
		mu 0 4 3985 3986 3982 3981
		mu 1 4 3990 3966 3965 3989
		f 4 -7148 7148 7145 -7150
		mu 0 4 3987 3988 3986 3985
		mu 1 4 3991 3992 3966 3990
		f 4 7147 7150 -7152 -7153
		mu 0 4 3988 3987 3989 3990
		mu 1 4 3992 3991 3993 3994
		f 4 7151 7153 -7155 -7156
		mu 0 4 3990 3989 3991 3992
		mu 1 4 3994 3993 3995 3996
		f 4 -7157 -7158 -7159 -7160
		mu 0 4 3993 3994 3995 3996
		mu 1 4 3997 3998 3999 4000
		f 4 -7161 7161 -7163 7114
		mu 0 4 3997 3998 3999 4000
		mu 1 4 3968 4001 4002 3967
		f 4 7163 -7165 -7166 -7167
		mu 0 4 4001 4002 4003 4004
		mu 1 4 3980 4003 4004 4005
		f 4 -7168 7168 -7170 7170
		mu 0 4 4005 4006 4007 4008
		mu 1 4 4006 4007 3981 4008
		f 4 -7172 -7173 7167 7173
		mu 0 4 4009 4010 4006 4005
		mu 1 4 4009 4010 4007 4006
		f 4 -7175 7084 7171 7175
		mu 0 4 4011 4012 4013 4014
		mu 1 4 4011 3946 3945 4012
		f 4 -7177 -7178 7174 7178
		mu 0 4 4015 4016 4012 4011
		mu 1 4 4013 3949 3946 4011
		f 4 7176 -7180 -7181 7088
		mu 0 4 4016 4015 4017 4018
		mu 1 4 3949 4013 4014 3950
		f 4 7180 -7182 -7183 -7184
		mu 0 4 4018 4017 4019 4020
		mu 1 4 3950 4014 4015 4016
		f 4 7116 -7185 -7186 -7187
		mu 0 4 4021 4022 4023 4024
		mu 1 4 3970 3969 4017 4018
		f 4 -7188 7186 -7189 -7190
		mu 0 4 4025 4021 4024 4026
		mu 1 4 3971 3970 4018 4019
		f 4 -7191 7191 -7193 -7194
		mu 0 4 4027 4028 4029 4030
		mu 1 4 3972 4020 4021 3977
		f 4 7141 7124 -7195 7195
		mu 0 4 3972 3978 4031 4032
		mu 1 4 3987 3973 3974 4022
		f 4 7196 -7198 -7199 -7200
		mu 0 4 4033 4034 4035 4036
		mu 1 4 4023 4024 4025 4026
		f 4 -7201 -7197 -7202 -7203
		mu 0 4 4037 4034 4033 4038
		mu 1 4 4027 4024 4023 4028
		f 4 -7204 7204 7205 7202
		mu 0 4 4038 4039 4040 4037
		mu 1 4 4028 4029 4030 4027
		f 4 -7207 7207 7208 7203
		mu 0 4 4038 4041 4042 4039
		mu 1 4 4028 4031 4032 4029
		f 4 7206 7201 -7210 -7211
		mu 0 4 4041 4038 4033 4043
		mu 1 4 4031 4028 4023 4033
		f 4 7199 -7212 7212 7209
		mu 0 4 4033 4036 4044 4043
		mu 1 4 4023 4026 4034 4033
		f 4 -7214 -7215 7185 -7216
		mu 0 4 4045 4046 4024 4023
		mu 1 4 4035 4036 4037 4038
		f 4 7188 7214 -7217 -7218
		mu 0 4 4026 4024 4046 4047
		mu 1 4 4039 4037 4036 4040
		f 4 -7219 -7220 -7192 -7221
		mu 0 4 4048 4049 4029 4028
		mu 1 4 4041 4042 4043 4044
		f 4 -7196 -7222 -7223 7135
		mu 0 4 3972 4032 4050 3973
		mu 1 4 3982 4045 4046 3983
		f 4 7146 7144 7136 -7224
		mu 0 4 3985 4051 3974 3973
		mu 1 4 4047 4048 3984 3983
		f 4 -7225 7149 7223 7222
		mu 0 4 4050 3987 3985 3973
		mu 1 4 4046 4049 4047 3983
		f 4 -7151 7224 -7226 -7227
		mu 0 4 3989 3987 4050 4052
		mu 1 4 4050 4049 4046 4051
		f 4 -7228 -7229 -7154 7226
		mu 0 4 4052 4049 3991 3989
		mu 1 4 4051 4042 4052 4050
		f 4 -7230 -7231 7158 -7232
		mu 0 4 4048 4047 3996 3995
		mu 1 4 4041 4040 4053 4054
		f 4 7213 -7233 -7162 -7234
		mu 0 4 4046 4045 3999 3998
		mu 1 4 4036 4035 4055 4056
		f 4 -7235 7232 -7236 -7237
		mu 0 4 4053 3999 4045 4054
		mu 1 4 4057 4055 4035 4058
		f 4 7237 7165 -7239 7197
		mu 0 4 4034 4004 4003 4035
		mu 1 4 4059 4005 4004 4060
		f 4 7239 -7238 7200 -7241
		mu 0 4 4008 4004 4034 4037
		mu 1 4 4008 4005 4059 4061
		f 4 -7242 -7171 7240 -7206
		mu 0 4 4055 4005 4008 4037
		mu 1 4 4062 4006 4008 4061
		f 4 -7243 -7174 7241 -7205
		mu 0 4 4056 4009 4005 4055
		mu 1 4 4063 4009 4006 4062
		f 4 -7244 -7176 7242 -7209
		mu 0 4 4057 4011 4014 4058
		mu 1 4 4064 4011 4012 4065
		f 4 -7245 -7179 7243 -7208
		mu 0 4 4041 4015 4011 4057
		mu 1 4 4066 4013 4011 4064
		f 4 -7246 -7247 -7248 -7249
		mu 0 4 4059 4023 4019 4044
		mu 1 4 4067 4017 4015 4068
		f 4 7235 7215 7245 -7250
		mu 0 4 4054 4045 4023 4059
		mu 1 4 4058 4035 4038 4069
		f 4 -7251 7053 -7252 7252
		mu 0 4 4060 3910 3914 4061
		mu 1 4 4070 3920 3924 4071
		f 4 7251 7055 -7254 7254
		mu 0 4 4061 3914 3915 4062
		mu 1 4 4071 3924 3925 4072
		f 4 7253 7058 -7256 7256
		mu 0 4 4062 3915 3917 4063
		mu 1 4 4072 3925 3927 4073
		f 4 -7258 -7259 -7260 -7261
		mu 0 4 4064 3941 4065 4066
		mu 1 4 4074 3951 4075 4076
		f 4 7131 -7262 -7263 -7264
		mu 0 4 3969 3968 4067 4068
		mu 1 4 3979 3978 4077 4078
		f 4 -7265 7265 -7267 7267
		mu 0 4 4069 4070 4071 4072
		mu 1 4 4079 4080 4081 4082
		f 4 -7269 7269 -7271 7271
		mu 0 4 4073 3937 3938 4074
		mu 1 4 4083 3947 3948 4084
		f 4 -7273 -7274 7274 7255
		mu 0 4 3917 4075 4076 4063
		mu 1 4 3927 4085 4086 4073
		f 4 7261 7275 7264 7276
		mu 0 4 4067 3968 4070 4069
		mu 1 4 4077 3978 4080 4079
		f 4 7266 7086 7268 7277
		mu 0 4 4077 3934 3937 4073
		mu 1 4 4087 3944 3947 4083
		f 4 -7279 7049 7250 7279
		mu 0 4 4078 3911 3910 4060
		mu 1 4 4088 3921 3920 4070
		f 4 -7281 7125 7081 -7282
		mu 0 4 4079 3965 3933 3931
		mu 1 4 4089 3975 3943 3941
		f 4 -7283 7281 7078 -7284
		mu 0 4 3948 4079 3931 3928
		mu 1 4 3958 4089 3941 3938
		f 4 -7099 7283 7076 -7285
		mu 0 4 3949 3948 3928 3924
		mu 1 4 3959 3958 3938 3934
		f 4 7285 7104 7284 7073
		mu 0 4 3927 3951 3949 3924
		mu 1 4 3937 3961 3959 3934
		f 4 7093 7128 7280 -7287
		mu 0 4 3945 3944 3965 4079
		mu 1 4 3955 3954 3975 4089
		f 4 7096 7286 7282 7101
		mu 0 4 3947 3945 4079 3948
		mu 1 4 3957 3955 4089 3958
		f 4 7097 7100 -7288 -7289
		mu 0 4 3946 3947 3950 4080
		mu 1 4 3956 3957 3960 4090
		f 4 7287 7103 -7290 -7291
		mu 0 4 4080 3950 3952 4081
		mu 1 4 4090 3960 3962 4091
		f 4 7154 -7292 7157 -7293
		mu 0 4 3992 3991 3995 3994
		mu 1 4 3996 3995 3999 3998
		f 4 7130 7192 -7294 7294
		mu 0 4 4082 4030 4029 4083
		mu 1 4 3976 3977 4021 4092
		f 4 -7295 7295 7194 7127
		mu 0 4 4082 4083 4032 4031
		mu 1 4 3976 4092 4022 3974
		f 4 7293 7219 7227 -7297
		mu 0 4 4083 4029 4049 4052
		mu 1 4 4093 4043 4042 4051
		f 4 -7296 7296 7225 7221
		mu 0 4 4032 4083 4052 4050
		mu 1 4 4045 4093 4051 4046
		f 4 7291 7228 7218 7231
		mu 0 4 3995 3991 4049 4048
		mu 1 4 4054 4052 4042 4041
		f 4 7062 7118 7091 -7298
		mu 0 4 3920 3919 3943 3942
		mu 1 4 3930 3929 3953 3952
		f 4 7064 7297 7095 -7299
		mu 0 4 3921 3920 3942 3946
		mu 1 4 3931 3930 3952 3956
		f 4 -7300 7066 7298 7288
		mu 0 4 4080 3922 3921 3946
		mu 1 4 4090 3932 3931 3956
		f 4 -7301 7068 7299 7290
		mu 0 4 4081 3923 3922 4080
		mu 1 4 4091 3933 3932 4090
		f 4 -7302 7159 7302 7160
		mu 0 4 3997 3993 3996 3998
		mu 1 4 3968 3997 4000 4001
		f 4 7120 7189 -7304 7190
		mu 0 4 4027 4025 4026 4028
		mu 1 4 3972 3971 4019 4020
		f 4 7303 7217 7229 7220
		mu 0 4 4028 4026 4047 4048
		mu 1 4 4044 4039 4040 4041
		f 4 -7303 7230 7216 7233
		mu 0 4 3998 3996 4047 4046
		mu 1 4 4056 4053 4040 4036
		f 4 -7305 -7306 -7164 7132
		mu 0 4 3969 4075 4084 3970
		mu 1 4 3979 4085 4003 3980
		f 4 -7307 7164 7307 7162
		mu 0 4 3999 4003 4002 4000
		mu 1 4 4002 4004 4003 3967
		f 4 7182 7246 7184 -7309
		mu 0 4 4020 4019 4023 4022
		mu 1 4 4016 4015 4017 3969
		f 4 7198 -7310 7236 -7311
		mu 0 4 4036 4035 4053 4054
		mu 1 4 4026 4025 4057 4058
		f 4 7248 7211 7310 7249
		mu 0 4 4059 4044 4036 4054
		mu 1 4 4069 4034 4026 4058
		f 4 7238 7306 7234 7309
		mu 0 4 4035 4003 3999 4053
		mu 1 4 4060 4004 4002 4094
		f 4 -7213 7247 7181 7311
		mu 0 4 4043 4044 4019 4017
		mu 1 4 4095 4068 4015 4014
		f 4 7259 -7313 7278 7313
		mu 0 4 4066 4065 3911 4078
		mu 1 4 4076 4075 3921 4088
		f 4 7314 7273 7304 7263
		mu 0 4 4068 4076 4075 3969
		mu 1 4 4078 4086 4085 3979
		f 4 7133 7166 -7240 7169
		mu 0 4 4007 4001 4004 4008
		mu 1 4 3981 3980 4005 4008
		f 4 7210 -7312 7179 7244
		mu 0 4 4041 4043 4017 4015
		mu 1 4 4066 4095 4014 4013
		f 4 7257 7315 7270 7090
		mu 0 4 3941 4064 4074 3938
		mu 1 4 3951 4074 4084 3948
		f 4 -7149 -7317 7072 7111
		mu 0 4 3956 4085 3927 3926
		mu 1 4 3966 3992 3937 3936
		f 4 -7308 7305 7272 7112
		mu 0 4 3957 4084 4075 3917
		mu 1 4 3967 4003 4085 3927
		f 4 -7169 -7318 -7276 7134
		mu 0 4 3971 4086 4070 3968
		mu 1 4 3981 4007 4080 3978
		f 4 7122 -7141 7105 -7081
		mu 0 4 3932 3963 3953 3930
		mu 1 4 3942 3973 3963 3940
		f 4 -7319 7292 -7320 7289
		mu 0 4 3952 4087 4088 4081
		mu 1 4 3962 3996 3998 4091
		f 4 -7321 7308 7115 7312
		mu 0 4 4065 4089 3959 3911
		mu 1 4 4075 4016 3969 3921
		f 4 -7322 7301 7113 7069
		mu 0 4 3923 4090 3958 3918
		mu 1 4 3933 3997 3968 3928
		f 4 7317 7172 7083 -7266
		mu 0 4 4070 4086 4091 4071
		mu 1 4 4080 4007 4010 4081
		f 4 7085 7177 7087 -7270
		mu 0 4 3937 3936 3939 3938
		mu 1 4 3947 3946 3949 3948
		f 4 -7323 7155 7318 7102
		mu 0 4 3951 4092 4087 3952
		mu 1 4 3961 3994 3996 3962
		f 4 7152 7322 -7286 7316
		mu 0 4 4085 4092 3951 3927
		mu 1 4 3992 3994 3961 3937
		f 4 7193 7129 7092 7121
		mu 0 4 3962 3967 3944 3943
		mu 1 4 3972 3977 3954 3953
		f 4 7187 7119 7061 7117
		mu 0 4 3960 3961 3919 3912
		mu 1 4 3970 3971 3929 3922
		f 4 7319 7156 7321 7300
		mu 0 4 4081 4088 4090 3923
		mu 1 4 4091 3998 3997 3933
		f 4 7089 7183 7320 7258
		mu 0 4 3941 3940 4089 4065
		mu 1 4 3951 3950 4016 4075
		f 4 7323 7324 7325 7326
		mu 0 4 4093 4094 4095 4096
		mu 1 4 4096 4097 4098 4099
		f 4 7327 7328 -7324 7329
		mu 0 4 4097 4098 4094 4093
		mu 1 4 4100 4101 4097 4096
		f 4 7330 7331 -7328 7332
		mu 0 4 4099 4100 4101 4102
		mu 1 4 4102 4103 4104 4105
		f 4 7333 7334 7335 -7327
		mu 0 4 4096 4103 4104 4093
		mu 1 4 4099 4106 4107 4096
		f 4 7336 7337 -7330 7338
		mu 0 4 4105 4106 4097 4093
		mu 1 4 4108 4109 4100 4096
		f 4 7339 -7339 -7336 7340
		mu 0 4 4107 4105 4093 4104
		mu 1 4 4110 4108 4096 4107
		f 4 7341 7342 -7340 7343
		mu 0 4 4108 4109 4105 4107
		mu 1 4 4111 4112 4108 4110
		f 4 7344 -7341 7345 7346
		mu 0 4 4110 4107 4104 4111
		mu 1 4 4113 4110 4107 4114
		f 4 7347 -7347 7348 7349
		mu 0 4 4112 4110 4111 4113
		mu 1 4 4115 4113 4114 4116
		f 4 7350 -7348 7351 7352
		mu 0 4 4114 4110 4112 4115
		mu 1 4 4117 4113 4115 4118
		f 4 7353 -7353 7354 7355
		mu 0 4 4116 4117 4118 4119
		mu 1 4 4119 4120 4121 4122
		f 4 7356 -7344 -7345 -7351
		mu 0 4 4114 4108 4107 4110
		mu 1 4 4117 4111 4110 4113
		f 4 -7354 7357 7358 -7357
		mu 0 4 4117 4116 4120 4121
		mu 1 4 4120 4119 4123 4124
		f 4 -7359 7359 7360 -7342
		mu 0 4 4121 4120 4122 4123
		mu 1 4 4124 4123 4125 4126
		f 4 -7355 7361 7362 7363
		mu 0 4 4124 4125 4126 4127
		mu 1 4 4127 4128 4129 4130
		f 4 7364 -7363 7365 7366
		mu 0 4 4128 4127 4126 4129
		mu 1 4 4131 4130 4129 4132
		f 4 7367 -7337 -7343 7368
		mu 0 4 4130 4106 4105 4109
		mu 1 4 4133 4109 4108 4112
		f 4 7369 7370 -7338 7371
		mu 0 4 4131 4132 4102 4133
		mu 1 4 4134 4135 4105 4136
		f 4 7372 -7333 -7371 7373
		mu 0 4 4134 4099 4102 4132
		mu 1 4 4137 4102 4105 4135
		f 4 -7368 7374 7375 -7372
		mu 0 4 4133 4135 4136 4131
		mu 1 4 4136 4138 4139 4134
		f 4 -7361 7376 7377 -7369
		mu 0 4 4123 4122 4137 4138
		mu 1 4 4126 4125 4140 4141
		f 4 -7378 7378 7379 -7375
		mu 0 4 4138 4137 4139 4140
		mu 1 4 4141 4140 4142 4143
		f 4 -7335 7380 7381 -7346
		mu 0 4 4104 4103 4141 4111
		mu 1 4 4107 4106 4144 4114
		f 4 7382 -7381 7383 7384
		mu 0 4 4142 4141 4103 4143
		mu 1 4 4145 4144 4106 4146
		f 4 -7382 7385 7386 -7349
		mu 0 4 4111 4141 4144 4113
		mu 1 4 4114 4144 4147 4116
		f 4 7387 7388 -7386 -7383
		mu 0 4 4142 4145 4144 4141
		mu 1 4 4145 4148 4147 4144
		f 4 7389 -7356 7390 7391
		mu 0 4 4146 4116 4119 4147
		mu 1 4 4149 4119 4122 4150
		f 4 -7390 7392 7393 -7358
		mu 0 4 4116 4146 4148 4120
		mu 1 4 4119 4149 4151 4123
		f 4 -7394 7394 7395 -7360
		mu 0 4 4120 4148 4149 4122
		mu 1 4 4123 4151 4152 4125
		f 4 -7396 7396 7397 -7377
		mu 0 4 4122 4149 4150 4137
		mu 1 4 4125 4152 4153 4140
		f 4 -7398 7398 7399 -7379
		mu 0 4 4137 4150 4151 4139
		mu 1 4 4140 4153 4154 4142
		f 4 7400 -7391 -7364 7401
		mu 0 4 4152 4153 4124 4127
		mu 1 4 4155 4156 4127 4130
		f 4 7402 -7402 -7365 7403
		mu 0 4 4154 4152 4127 4128
		mu 1 4 4157 4155 4130 4131
		f 4 7404 -7400 7405 -7404
		mu 0 4 4128 4139 4151 4154
		mu 1 4 4131 4142 4154 4157
		f 4 -7405 -7367 7406 -7380
		mu 0 4 4139 4128 4129 4140
		mu 1 4 4142 4131 4132 4143
		f 4 7407 -7376 -7407 7408
		mu 0 4 4155 4131 4136 4156
		mu 1 4 4158 4134 4139 4159
		f 4 -7408 7409 7410 -7370
		mu 0 4 4131 4155 4157 4132
		mu 1 4 4134 4158 4160 4135
		f 4 7411 -7374 -7411 7412
		mu 0 4 4158 4134 4132 4157
		mu 1 4 4161 4137 4135 4160
		f 4 7413 7414 7415 -7392
		mu 0 4 4147 4159 4160 4146
		mu 1 4 4150 4162 4163 4149
		f 4 -7416 7416 7417 -7393
		mu 0 4 4146 4160 4161 4148
		mu 1 4 4149 4163 4164 4151
		f 4 -7418 7418 7419 -7395
		mu 0 4 4148 4161 4162 4149
		mu 1 4 4151 4164 4165 4152
		f 4 -7397 -7420 7420 7421
		mu 0 4 4150 4149 4162 4163
		mu 1 4 4153 4152 4165 4166
		f 4 -7399 -7422 7422 7423
		mu 0 4 4151 4150 4163 4164
		mu 1 4 4154 4153 4166 4167
		f 4 7424 7425 -7414 -7401
		mu 0 4 4152 4165 4166 4153
		mu 1 4 4155 4168 4169 4156
		f 4 -7403 7426 7427 -7425
		mu 0 4 4152 4154 4167 4165
		mu 1 4 4155 4157 4170 4168
		f 4 -7406 -7424 7428 -7427
		mu 0 4 4154 4151 4164 4167
		mu 1 4 4157 4154 4167 4170
		f 4 7429 7430 7431 7432
		mu 0 4 4168 4169 4170 4171
		mu 1 4 4171 4172 4173 4174
		f 4 -7432 7433 7434 7435
		mu 0 4 4171 4170 4172 4173
		mu 1 4 4174 4173 4175 4176
		f 4 -7435 7436 7437 7438
		mu 0 4 4173 4172 4174 4175
		mu 1 4 4176 4175 4177 4178
		f 4 7439 -7438 7440 7441
		mu 0 4 4176 4175 4174 4177
		mu 1 4 4179 4178 4177 4180
		f 4 7442 -7442 7443 7444
		mu 0 4 4178 4176 4177 4179
		mu 1 4 4181 4179 4180 4182
		f 4 7445 7446 -7430 7447
		mu 0 4 4180 4181 4182 4183
		mu 1 4 4183 4184 4185 4186
		f 4 7448 7449 7450 -7446
		mu 0 4 4180 4184 4185 4181
		mu 1 4 4183 4187 4188 4184
		f 4 7451 -7445 7452 -7450
		mu 0 4 4184 4178 4179 4185
		mu 1 4 4187 4181 4182 4188
		f 4 7453 7454 7455 7456
		mu 0 4 4186 4187 4188 4189
		mu 1 4 4189 4190 4191 4192
		f 4 -7456 7457 7458 7459
		mu 0 4 4189 4188 4190 4191
		mu 1 4 4192 4191 4193 4194
		f 4 -7459 7460 7461 7462
		mu 0 4 4191 4190 4192 4193
		mu 1 4 4194 4193 4195 4196
		f 4 -7462 7463 7464 7465
		mu 0 4 4193 4192 4194 4195
		mu 1 4 4196 4195 4197 4198
		f 4 -7465 7466 7467 7468
		mu 0 4 4195 4194 4196 4197
		mu 1 4 4198 4197 4199 4200
		f 4 7469 7470 7471 -7454
		mu 0 4 4198 4199 4200 4201
		mu 1 4 4201 4202 4203 4204
		f 4 7472 7473 7474 -7471
		mu 0 4 4199 4202 4203 4200
		mu 1 4 4202 4205 4206 4203
		f 4 7475 -7468 7476 -7474
		mu 0 4 4202 4197 4196 4203
		mu 1 4 4205 4200 4199 4206
		f 4 7477 7478 7479 7480
		mu 0 4 4204 4205 4206 4207
		mu 1 4 4207 4208 4209 4210
		f 4 7481 -7481 7482 7483
		mu 0 4 4208 4204 4207 4209
		mu 1 4 4211 4207 4210 4212
		f 4 7484 -7484 7485 7486
		mu 0 4 4210 4208 4209 4211
		mu 1 4 4213 4211 4212 4214
		f 4 7487 -7487 7488 7489
		mu 0 4 4212 4210 4211 4213
		mu 1 4 4215 4213 4214 4216
		f 4 7490 -7490 7491 7492
		mu 0 4 4214 4212 4213 4215
		mu 1 4 4217 4215 4216 4218
		f 4 7493 7494 7495 -7479
		mu 0 4 4216 4217 4218 4219
		mu 1 4 4219 4220 4221 4222
		f 4 7496 7497 7498 -7495
		mu 0 4 4217 4220 4221 4218
		mu 1 4 4220 4223 4224 4221
		f 4 7499 -7493 7500 -7498
		mu 0 4 4220 4214 4215 4221
		mu 1 4 4223 4217 4218 4224
		f 4 -7480 7501 7502 7503
		mu 0 4 4207 4206 4222 4223
		mu 1 4 4210 4209 4225 4226
		f 4 -7483 -7504 7504 7505
		mu 0 4 4209 4207 4223 4224
		mu 1 4 4212 4210 4226 4227
		f 4 -7486 -7506 7506 7507
		mu 0 4 4211 4209 4224 4225
		mu 1 4 4214 4212 4227 4228
		f 4 -7489 -7508 7508 7509
		mu 0 4 4213 4211 4225 4226
		mu 1 4 4216 4214 4228 4229
		f 4 -7492 -7510 7510 7511
		mu 0 4 4215 4213 4226 4227
		mu 1 4 4218 4216 4229 4230
		f 4 -7496 7512 7513 -7502
		mu 0 4 4219 4218 4228 4229
		mu 1 4 4222 4221 4231 4232
		f 4 -7499 7514 7515 -7513
		mu 0 4 4218 4221 4230 4228
		mu 1 4 4221 4224 4233 4231
		f 4 -7501 -7512 7516 -7515
		mu 0 4 4221 4215 4227 4230
		mu 1 4 4224 4218 4230 4233
		f 4 -7478 7517 7518 7519
		mu 0 4 4205 4204 4231 4232
		mu 1 4 4208 4207 4234 4235
		f 4 -7518 -7482 7520 7521
		mu 0 4 4231 4204 4208 4233
		mu 1 4 4234 4207 4211 4236
		f 4 -7521 -7485 7522 7523
		mu 0 4 4233 4208 4210 4234
		mu 1 4 4236 4211 4213 4237
		f 4 -7523 -7488 7524 7525
		mu 0 4 4234 4210 4212 4235
		mu 1 4 4237 4213 4215 4238
		f 4 -7525 -7491 7526 7527
		mu 0 4 4235 4212 4214 4236
		mu 1 4 4238 4215 4217 4239
		f 4 -7494 -7520 7528 7529
		mu 0 4 4217 4216 4237 4238
		mu 1 4 4220 4219 4240 4241
		f 4 -7497 -7530 7530 7531
		mu 0 4 4220 4217 4238 4239
		mu 1 4 4223 4220 4241 4242
		f 4 -7527 -7500 -7532 7532
		mu 0 4 4236 4214 4220 4239
		mu 1 4 4239 4217 4223 4242
		f 4 7533 7534 7535 7536
		mu 0 4 4240 4241 4242 4243
		mu 1 4 4243 4244 4245 4246
		f 4 7537 7538 -7534 7539
		mu 0 4 4244 4245 4241 4240
		mu 1 4 4247 4248 4244 4243
		f 4 7540 7541 -7538 7542
		mu 0 4 4246 4247 4245 4244
		mu 1 4 4249 4250 4248 4247
		f 4 7543 -7541 7544 7545
		mu 0 4 4248 4249 4250 4251
		mu 1 4 4251 4250 4249 4252
		f 4 7546 -7409 -7366 7547
		mu 0 4 4252 4155 4156 4253
		mu 1 4 4253 4158 4159 4254
		f 4 -7547 7548 7549 -7410
		mu 0 4 4155 4252 4254 4157
		mu 1 4 4158 4253 4255 4160
		f 4 7550 7551 7552 -7548
		mu 0 4 4253 4248 4255 4252
		mu 1 4 4254 4251 4256 4253
		f 4 7553 7554 7555 7556
		mu 0 4 4256 4255 4257 4258
		mu 1 4 4257 4256 4258 4259
		f 4 7557 7558 7559 7560
		mu 0 4 4259 4260 4261 4262
		mu 1 4 4260 4261 4262 4263
		f 4 -7560 7561 7562 7563
		mu 0 4 4262 4261 4263 4264
		mu 1 4 4263 4262 4264 4265
		f 4 -7563 7564 7565 7566
		mu 0 4 4264 4263 4265 4266
		mu 1 4 4265 4264 4266 4267
		f 4 -7566 7567 7568 7569
		mu 0 4 4267 4268 4269 4270
		mu 1 4 4267 4266 4268 4269
		f 4 -7569 7570 7571 7572
		mu 0 4 4270 4269 4271 4272
		mu 1 4 4269 4268 4270 4271
		f 4 -7572 7573 7574 7575
		mu 0 4 4272 4271 4273 4274
		mu 1 4 4271 4270 4272 4273
		f 4 7576 -7413 -7550 7577
		mu 0 4 4275 4158 4157 4254
		mu 1 4 4274 4161 4160 4255
		f 4 -7578 7578 7579 7580
		mu 0 4 4275 4254 4256 4276
		mu 1 4 4274 4255 4257 4275
		f 4 7581 7582 -7575 7583
		mu 0 4 4277 4278 4274 4273
		mu 1 4 4276 4277 4273 4272
		f 4 7584 -7326 7585 7586
		mu 0 4 4279 4096 4095 4280
		mu 1 4 4278 4099 4098 4279
		f 4 -7331 7587 7588 7589
		mu 0 4 4100 4099 4281 4282
		mu 1 4 4103 4102 4280 4281
		f 4 7590 -7384 -7334 -7585
		mu 0 4 4279 4143 4103 4096
		mu 1 4 4278 4146 4106 4099
		f 4 -7373 7591 7592 -7588
		mu 0 4 4099 4134 4283 4281
		mu 1 4 4102 4137 4282 4280
		f 4 -7592 -7412 7593 7594
		mu 0 4 4283 4134 4158 4284
		mu 1 4 4282 4137 4161 4283
		f 4 7595 7596 -7536 7597
		mu 0 4 4285 4286 4243 4242
		mu 1 4 4284 4285 4246 4245
		f 4 7598 7599 -7558 7600
		mu 0 4 4287 4288 4260 4259
		mu 1 4 4286 4287 4261 4260
		f 4 -7594 -7577 7601 7602
		mu 0 4 4284 4158 4275 4289
		mu 1 4 4283 4161 4274 4288
		f 4 -7602 -7581 7603 7604
		mu 0 4 4289 4275 4276 4290
		mu 1 4 4288 4274 4275 4289
		f 4 7605 -7387 7606 -7535
		mu 0 4 4241 4113 4144 4242
		mu 1 4 4244 4116 4147 4245
		f 4 7607 -7350 -7606 -7539
		mu 0 4 4245 4112 4113 4241
		mu 1 4 4248 4115 4116 4244
		f 4 7608 -7352 -7608 -7542
		mu 0 4 4247 4115 4112 4245
		mu 1 4 4250 4118 4115 4248
		f 4 -7362 -7609 -7544 -7551
		mu 0 4 4253 4291 4249 4248
		mu 1 4 4254 4118 4250 4251
		f 4 -7546 7609 -7555 -7552
		mu 0 4 4248 4251 4257 4255
		mu 1 4 4251 4252 4258 4256
		f 4 -7549 -7553 -7554 -7579
		mu 0 4 4254 4252 4255 4256
		mu 1 4 4255 4253 4256 4257
		f 4 7610 7611 -7580 -7557
		mu 0 4 4258 4292 4276 4256
		mu 1 4 4259 4290 4275 4257
		f 4 7612 -7598 -7607 -7389
		mu 0 4 4145 4285 4242 4144
		mu 1 4 4148 4284 4245 4147
		f 4 7613 7614 -7604 -7612
		mu 0 4 4292 4293 4290 4276
		mu 1 4 4290 4291 4289 4275
		f 4 -7559 7615 7616 7617
		mu 0 4 4261 4260 4294 4295
		mu 1 4 4262 4261 4292 4293
		f 4 -7562 -7618 7618 7619
		mu 0 4 4263 4261 4295 4296
		mu 1 4 4264 4262 4293 4294
		f 4 -7565 -7620 7620 7621
		mu 0 4 4265 4263 4296 4297
		mu 1 4 4266 4264 4294 4295
		f 4 -7568 -7622 7622 7623
		mu 0 4 4269 4268 4298 4299
		mu 1 4 4268 4266 4295 4296
		f 4 -7624 7624 7625 -7571
		mu 0 4 4269 4299 4300 4271
		mu 1 4 4268 4296 4297 4270
		f 4 -7626 7626 7627 -7574
		mu 0 4 4271 4300 4301 4273
		mu 1 4 4270 4297 4298 4272
		f 4 -7628 7628 7629 -7584
		mu 0 4 4273 4301 4302 4277
		mu 1 4 4272 4298 4299 4276
		f 4 7630 -7616 -7600 7631
		mu 0 4 4303 4294 4260 4288
		mu 1 4 4300 4292 4261 4287
		f 4 7632 7633 7634 7635
		mu 0 4 4304 4305 4306 4307
		mu 1 4 4301 4302 4303 4304
		f 4 7636 -7636 7637 7638
		mu 0 4 4308 4304 4307 4309
		mu 1 4 4305 4301 4304 4306
		f 4 7639 -7639 7640 7641
		mu 0 4 4310 4308 4309 4311
		mu 1 4 4307 4305 4306 4308
		f 4 7642 -7642 7643 7644
		mu 0 4 4312 4313 4314 4315
		mu 1 4 4309 4307 4308 4310
		f 4 7645 -7645 7646 7647
		mu 0 4 4316 4312 4315 4317
		mu 1 4 4311 4309 4310 4312
		f 4 7648 -7648 7649 7650
		mu 0 4 4318 4316 4317 4319
		mu 1 4 4313 4311 4312 4314
		f 4 7651 -7651 7652 7653
		mu 0 4 4320 4318 4319 4321
		mu 1 4 4315 4313 4314 4316
		f 4 -7634 7654 7655 7656
		mu 0 4 4306 4305 4322 4323
		mu 1 4 4303 4302 4317 4318
		f 4 -7635 7657 7658 7659
		mu 0 4 4307 4306 4324 4325
		mu 1 4 4304 4303 4319 4320
		f 4 -7638 -7660 7660 7661
		mu 0 4 4309 4307 4325 4326
		mu 1 4 4306 4304 4320 4321
		f 4 -7641 -7662 7662 7663
		mu 0 4 4311 4309 4326 4327
		mu 1 4 4308 4306 4321 4322
		f 4 -7644 -7664 7664 7665
		mu 0 4 4315 4314 4328 4329
		mu 1 4 4310 4308 4322 4323
		f 4 -7647 -7666 7666 7667
		mu 0 4 4317 4315 4329 4330
		mu 1 4 4312 4310 4323 4324
		f 4 -7650 -7668 7668 7669
		mu 0 4 4319 4317 4330 4331
		mu 1 4 4314 4312 4324 4325
		f 4 -7653 -7670 7670 7671
		mu 0 4 4321 4319 4331 4332
		mu 1 4 4316 4314 4325 4326
		f 4 -7658 -7657 7672 7673
		mu 0 4 4324 4306 4323 4333
		mu 1 4 4319 4303 4318 4327
		f 4 7674 7675 7676 7677
		mu 0 4 4334 4335 4336 4337
		mu 1 4 4328 4329 4330 4331
		f 4 7678 7679 7680 -7676
		mu 0 4 4335 4338 4339 4336
		mu 1 4 4329 4332 4333 4330
		f 4 7681 7682 7683 -7680
		mu 0 4 4338 4340 4341 4339
		mu 1 4 4332 4334 4335 4333
		f 4 7684 7685 7686 -7683
		mu 0 4 4340 4342 4343 4341
		mu 1 4 4334 4336 4337 4335
		f 4 7687 7688 7689 -7686
		mu 0 4 4342 4344 4345 4343
		mu 1 4 4336 4338 4339 4337
		f 4 7690 -7678 7691 7692
		mu 0 4 4346 4347 4348 4349
		mu 1 4 4340 4341 4342 4343
		f 4 7693 -7693 7694 7695
		mu 0 4 4350 4346 4349 4351
		mu 1 4 4344 4340 4343 4345
		f 4 7696 -7696 7697 -7689
		mu 0 4 4344 4350 4351 4345
		mu 1 4 4338 4344 4345 4339
		f 4 -7633 7698 -7617 7699
		mu 0 4 4305 4304 4295 4294
		mu 1 4 4302 4301 4293 4292
		f 4 -7637 7700 -7619 -7699
		mu 0 4 4304 4308 4296 4295
		mu 1 4 4301 4305 4294 4293
		f 4 -7701 -7640 7701 -7621
		mu 0 4 4296 4308 4310 4297
		mu 1 4 4294 4305 4307 4295
		f 4 -7702 -7643 7702 -7623
		mu 0 4 4298 4313 4312 4299
		mu 1 4 4295 4307 4309 4296
		f 4 -7703 -7646 7703 -7625
		mu 0 4 4299 4312 4316 4300
		mu 1 4 4296 4309 4311 4297
		f 4 -7704 -7649 7704 -7627
		mu 0 4 4300 4316 4318 4301
		mu 1 4 4297 4311 4313 4298
		f 4 -7652 7705 -7629 -7705
		mu 0 4 4318 4320 4302 4301
		mu 1 4 4313 4315 4299 4298
		f 4 7706 7707 7708 -7706
		mu 0 4 4320 4352 4353 4302
		mu 1 4 4315 4346 4347 4299
		f 4 7709 7710 7711 7712
		mu 0 4 4354 4355 4356 4357
		mu 1 4 4348 4349 4350 4351
		f 4 7713 -7433 7714 -7415
		mu 0 4 4159 4168 4171 4160
		mu 1 4 4162 4171 4174 4163
		f 4 -7715 -7436 7715 -7417
		mu 0 4 4160 4171 4173 4161
		mu 1 4 4163 4174 4176 4164
		f 4 -7716 -7439 7716 -7419
		mu 0 4 4161 4173 4175 4162
		mu 1 4 4164 4176 4178 4165
		f 4 -7440 7717 -7421 -7717
		mu 0 4 4175 4176 4163 4162
		mu 1 4 4178 4179 4166 4165
		f 4 -7443 7718 -7423 -7718
		mu 0 4 4176 4178 4164 4163
		mu 1 4 4179 4181 4167 4166
		f 4 7719 -7448 -7714 -7426
		mu 0 4 4165 4180 4183 4166
		mu 1 4 4168 4183 4186 4169
		f 4 -7449 -7720 -7428 7720
		mu 0 4 4184 4180 4165 4167
		mu 1 4 4187 4183 4168 4170
		f 4 -7452 -7721 -7429 -7719
		mu 0 4 4178 4184 4167 4164
		mu 1 4 4181 4187 4170 4167
		f 4 7721 -7582 7722 7723
		mu 0 4 4358 4278 4277 4359
		mu 1 4 4352 4277 4276 4353
		f 4 -7630 -7709 7724 -7723
		mu 0 4 4277 4302 4353 4359
		mu 1 4 4276 4299 4347 4353
		f 4 -7707 -7654 7725 7726
		mu 0 4 4352 4320 4321 4360
		mu 1 4 4346 4315 4316 4354
		f 4 -7726 -7672 7727 7728
		mu 0 4 4360 4321 4332 4361
		mu 1 4 4354 4316 4326 4355
		f 4 7729 -7561 7730 -7537
		mu 0 4 4243 4259 4262 4240
		mu 1 4 4246 4260 4263 4243
		f 4 -7731 -7564 7731 -7540
		mu 0 4 4240 4262 4264 4244
		mu 1 4 4243 4263 4265 4247
		f 4 -7732 -7567 7732 -7543
		mu 0 4 4244 4264 4266 4246
		mu 1 4 4247 4265 4267 4249
		f 4 -7733 -7570 7733 -7545
		mu 0 4 4250 4267 4270 4251
		mu 1 4 4249 4267 4269 4252
		f 4 -7734 -7573 7734 -7610
		mu 0 4 4251 4270 4272 4257
		mu 1 4 4252 4269 4271 4258
		f 4 -7735 -7576 7735 -7556
		mu 0 4 4257 4272 4274 4258
		mu 1 4 4258 4271 4273 4259
		f 4 -7736 -7583 7736 -7611
		mu 0 4 4258 4274 4278 4292
		mu 1 4 4259 4273 4277 4290
		f 4 -7737 -7722 7737 -7614
		mu 0 4 4292 4278 4358 4293
		mu 1 4 4290 4277 4352 4291
		f 4 7738 7739 7740 7741
		mu 0 4 4362 4363 4364 4365
		mu 1 4 4356 4357 4358 4359
		f 4 7742 -7457 7743 -7431
		mu 0 4 4169 4186 4189 4170
		mu 1 4 4172 4189 4192 4173
		f 4 -7744 -7460 7744 -7434
		mu 0 4 4170 4189 4191 4172
		mu 1 4 4173 4192 4194 4175
		f 4 -7745 -7463 7745 -7437
		mu 0 4 4172 4191 4193 4174
		mu 1 4 4175 4194 4196 4177
		f 4 -7466 7746 -7441 -7746
		mu 0 4 4193 4195 4177 4174
		mu 1 4 4196 4198 4180 4177
		f 4 -7469 7747 -7444 -7747
		mu 0 4 4195 4197 4179 4177
		mu 1 4 4198 4200 4182 4180
		f 4 7748 -7470 -7743 -7447
		mu 0 4 4181 4199 4198 4182
		mu 1 4 4184 4202 4201 4185
		f 4 -7473 -7749 -7451 7749
		mu 0 4 4202 4199 4181 4185
		mu 1 4 4205 4202 4184 4188
		f 4 -7476 -7750 -7453 -7748
		mu 0 4 4197 4202 4185 4179
		mu 1 4 4200 4205 4188 4182
		f 4 7750 -7677 7751 -7455
		mu 0 4 4187 4337 4336 4188
		mu 1 4 4190 4331 4330 4191
		f 4 -7752 -7681 7752 -7458
		mu 0 4 4188 4336 4339 4190
		mu 1 4 4191 4330 4333 4193
		f 4 -7753 -7684 7753 -7461
		mu 0 4 4190 4339 4341 4192
		mu 1 4 4193 4333 4335 4195
		f 4 -7754 -7687 7754 -7464
		mu 0 4 4192 4341 4343 4194
		mu 1 4 4195 4335 4337 4197
		f 4 -7755 -7690 7755 -7467
		mu 0 4 4194 4343 4345 4196
		mu 1 4 4197 4337 4339 4199
		f 4 -7692 -7751 -7472 7756
		mu 0 4 4349 4348 4201 4200
		mu 1 4 4343 4342 4204 4203
		f 4 -7695 -7757 -7475 7757
		mu 0 4 4351 4349 4200 4203
		mu 1 4 4345 4343 4203 4206
		f 4 -7698 -7758 -7477 -7756
		mu 0 4 4345 4351 4203 4196
		mu 1 4 4339 4345 4206 4199
		f 4 -7519 7758 -7675 7759
		mu 0 4 4232 4231 4335 4334
		mu 1 4 4235 4234 4329 4328
		f 4 -7522 7760 -7679 -7759
		mu 0 4 4231 4233 4338 4335
		mu 1 4 4234 4236 4332 4329
		f 4 -7524 7761 -7682 -7761
		mu 0 4 4233 4234 4340 4338
		mu 1 4 4236 4237 4334 4332
		f 4 -7526 7762 -7685 -7762
		mu 0 4 4234 4235 4342 4340
		mu 1 4 4237 4238 4336 4334
		f 4 -7528 7763 -7688 -7763
		mu 0 4 4235 4236 4344 4342
		mu 1 4 4238 4239 4338 4336
		f 4 7764 -7529 -7760 -7691
		mu 0 4 4346 4238 4237 4347
		mu 1 4 4340 4241 4240 4341
		f 4 7765 -7531 -7765 -7694
		mu 0 4 4350 4239 4238 4346
		mu 1 4 4344 4242 4241 4340
		f 4 -7764 -7533 -7766 -7697
		mu 0 4 4344 4236 4239 4350
		mu 1 4 4338 4239 4242 4344
		f 4 7766 7767 -7586 7768
		mu 0 4 4366 4367 4368 4369
		mu 1 4 4360 4361 4362 4363
		f 4 7769 7770 -7769 -7325
		mu 0 4 4370 4371 4366 4369
		mu 1 4 4364 4365 4360 4363
		f 4 7771 7772 -7770 -7329
		mu 0 4 4372 4373 4371 4370
		mu 1 4 4366 4367 4365 4364
		f 4 7773 -7772 -7332 7774
		mu 0 4 4374 4373 4372 4375
		mu 1 4 4368 4367 4366 4369
		f 4 7775 -7775 -7590 7776
		mu 0 4 4376 4374 4375 4377
		mu 1 4 4370 4368 4369 4371
		f 4 7777 7778 7779 7780
		mu 0 4 4378 4379 4380 4381
		mu 1 4 4372 4373 4374 4375
		f 4 7781 -7781 7782 7783
		mu 0 4 4382 4378 4381 4383
		mu 1 4 4376 4372 4375 4377
		f 4 7784 7785 7786 7787
		mu 0 4 4384 4385 4386 4387
		mu 1 4 4378 4379 4380 4381
		f 4 7788 -7788 7789 -7779
		mu 0 4 4379 4384 4387 4380
		mu 1 4 4373 4378 4381 4374
		f 4 7790 7791 7792 -7740
		mu 0 4 4363 4388 4389 4364
		mu 1 4 4357 4382 4383 4358
		f 4 7793 -7742 7794 7795
		mu 0 4 4390 4362 4365 4391
		mu 1 4 4384 4356 4359 4385
		f 4 7796 -7784 7797 -7792
		mu 0 4 4388 4382 4383 4389
		mu 1 4 4382 4376 4377 4383
		f 4 7798 -7796 7799 -7710
		mu 0 4 4354 4390 4391 4355
		mu 1 4 4348 4384 4385 4349
		f 4 7800 7801 -7712 7802
		mu 0 4 4392 4393 4357 4356
		mu 1 4 4386 4387 4351 4350
		f 4 7803 -7801 7804 7805
		mu 0 4 4394 4393 4392 4395
		mu 1 4 4388 4387 4386 4389
		f 4 -7713 7806 7807 7808
		mu 0 4 4354 4357 4322 4303
		mu 1 4 4348 4351 4317 4300
		f 4 -7739 7809 7810 7811
		mu 0 4 4363 4362 4287 4286
		mu 1 4 4357 4356 4286 4285
		f 4 7812 7813 7814 -7786
		mu 0 4 4396 4397 4398 4399
		mu 1 4 4390 4391 4392 4393
		f 4 -7385 7815 -7778 7816
		mu 0 4 4142 4143 4379 4378
		mu 1 4 4145 4146 4373 4372
		f 4 -7388 -7817 -7782 7817
		mu 0 4 4145 4142 4378 4382
		mu 1 4 4148 4145 4372 4376
		f 4 -7587 7818 -7785 7819
		mu 0 4 4279 4280 4385 4384
		mu 1 4 4278 4279 4379 4378
		f 4 -7591 -7820 -7789 -7816
		mu 0 4 4143 4279 4384 4379
		mu 1 4 4146 4278 4378 4373
		f 4 -7596 7820 -7791 -7812
		mu 0 4 4286 4285 4388 4363
		mu 1 4 4285 4284 4382 4357
		f 4 -7599 -7810 -7794 7821
		mu 0 4 4288 4287 4362 4390
		mu 1 4 4287 4286 4356 4384
		f 4 -7613 -7818 -7797 -7821
		mu 0 4 4285 4145 4382 4388
		mu 1 4 4284 4148 4376 4382
		f 4 -7632 -7822 -7799 -7809
		mu 0 4 4303 4288 4390 4354
		mu 1 4 4300 4287 4384 4348
		f 4 7822 -7656 -7807 -7802
		mu 0 4 4393 4323 4322 4357
		mu 1 4 4387 4318 4317 4351
		f 4 -7673 -7823 -7804 7823
		mu 0 4 4333 4323 4393 4394
		mu 1 4 4327 4318 4387 4388
		f 4 -7768 7824 -7813 -7819
		mu 0 4 4368 4367 4397 4396
		mu 1 4 4362 4361 4391 4390
		f 4 -7808 -7655 -7700 -7631
		mu 0 4 4303 4322 4305 4294
		mu 1 4 4300 4317 4302 4292
		f 4 -7811 -7601 -7730 -7597
		mu 0 4 4286 4287 4259 4243
		mu 1 4 4285 4286 4260 4246
		f 4 7825 -7827 7827 7828
		mu 0 4 4400 4401 4402 4403
		mu 1 4 4394 4395 4396 4397
		f 4 -7828 -7830 7830 7831
		mu 0 4 4403 4402 4404 4405
		mu 1 4 4397 4396 4398 4399
		f 4 -7831 -7833 7833 7834
		mu 0 4 4405 4404 4406 4407
		mu 1 4 4399 4398 4400 4401
		f 4 -7834 -7836 7836 7837
		mu 0 4 4407 4406 4408 4409
		mu 1 4 4401 4400 4402 4403
		f 4 -7837 -7839 7839 7840
		mu 0 4 4409 4408 4410 4411
		mu 1 4 4403 4402 4404 4405
		f 4 7841 -7843 -7826 7843
		mu 0 4 4412 4413 4414 4415
		mu 1 4 4406 4407 4408 4409
		f 4 7844 -7846 -7842 7846
		mu 0 4 4416 4417 4413 4412
		mu 1 4 4410 4411 4407 4406
		f 4 -7840 -7848 -7845 7848
		mu 0 4 4411 4410 4417 4416
		mu 1 4 4405 4404 4411 4410
		f 4 -7850 7850 7851 7852
		mu 0 4 4418 4419 4420 4421
		mu 1 4 4412 4413 4414 4415
		f 4 7853 7854 -7856 -7853
		mu 0 4 4421 4422 4423 4418
		mu 1 4 4415 4416 4417 4412
		f 4 7856 7857 -7859 -7855
		mu 0 4 4422 4424 4425 4423
		mu 1 4 4416 4418 4419 4417
		f 4 -7858 7859 7860 -7862
		mu 0 4 4425 4424 4426 4427
		mu 1 4 4419 4418 4420 4421
		f 4 -7861 7862 7863 -7865
		mu 0 4 4427 4426 4428 4429
		mu 1 4 4421 4420 4422 4423
		f 4 7865 7866 -7868 7868
		mu 0 4 4430 4431 4432 4433
		mu 1 4 4424 4425 4426 4427
		f 4 7869 -7851 -7871 -7867
		mu 0 4 4431 4420 4419 4432
		mu 1 4 4425 4414 4413 4426
		f 4 -7503 7871 -7829 7872
		mu 0 4 4223 4222 4400 4403
		mu 1 4 4226 4225 4394 4397
		f 4 -7505 -7873 -7832 7873
		mu 0 4 4224 4223 4403 4405
		mu 1 4 4227 4226 4397 4399
		f 4 -7507 -7874 -7835 7874
		mu 0 4 4225 4224 4405 4407
		mu 1 4 4228 4227 4399 4401
		f 4 -7509 -7875 -7838 7875
		mu 0 4 4226 4225 4407 4409
		mu 1 4 4229 4228 4401 4403
		f 4 -7511 -7876 -7841 7876
		mu 0 4 4227 4226 4409 4411
		mu 1 4 4230 4229 4403 4405
		f 4 -7514 7877 -7844 -7872
		mu 0 4 4229 4228 4412 4415
		mu 1 4 4232 4231 4406 4409
		f 4 -7516 7878 -7847 -7878
		mu 0 4 4228 4230 4416 4412
		mu 1 4 4231 4233 4410 4406
		f 4 -7517 -7877 -7849 -7879
		mu 0 4 4230 4227 4411 4416
		mu 1 4 4233 4230 4405 4410
		f 4 -7659 7879 -7881 7881
		mu 0 4 4325 4324 4434 4435
		mu 1 4 4320 4319 4428 4429
		f 4 -7661 -7882 -7883 7883
		mu 0 4 4326 4325 4435 4436
		mu 1 4 4321 4320 4429 4430
		f 4 -7663 -7884 -7885 7885
		mu 0 4 4327 4326 4436 4437
		mu 1 4 4322 4321 4430 4431
		f 4 -7665 -7886 -7887 7887
		mu 0 4 4329 4328 4438 4439
		mu 1 4 4323 4322 4431 4432
		f 4 -7667 -7888 -7889 7889
		mu 0 4 4330 4329 4439 4440
		mu 1 4 4324 4323 4432 4433
		f 4 -7669 -7890 -7891 7891
		mu 0 4 4331 4330 4440 4441
		mu 1 4 4325 4324 4433 4434
		f 4 -7671 -7892 -7893 7893
		mu 0 4 4332 4331 4441 4442
		mu 1 4 4326 4325 4434 4435
		f 4 -7674 7894 -7896 -7880
		mu 0 4 4324 4333 4443 4434
		mu 1 4 4319 4327 4436 4428
		f 4 -7711 7896 -7898 7898
		mu 0 4 4356 4355 4444 4445
		mu 1 4 4350 4349 4437 4438
		f 4 -7728 -7894 -7900 7900
		mu 0 4 4361 4332 4442 4446
		mu 1 4 4355 4326 4435 4439
		f 4 -7741 7901 -7903 7903
		mu 0 4 4365 4364 4447 4448
		mu 1 4 4359 4358 4440 4441
		f 4 -7905 7905 -7907 7907
		mu 0 4 4449 4450 4451 4452
		mu 1 4 4442 4443 4444 4445
		f 4 -7909 7909 -7911 -7906
		mu 0 4 4450 4453 4454 4451
		mu 1 4 4443 4446 4447 4444
		f 4 -7912 7912 -7914 -7910
		mu 0 4 4453 4455 4456 4454
		mu 1 4 4446 4448 4449 4447
		f 4 -7915 7915 -7917 -7913
		mu 0 4 4455 4457 4458 4456
		mu 1 4 4448 4450 4451 4449
		f 4 -7918 7918 -7920 -7916
		mu 0 4 4457 4459 4460 4458
		mu 1 4 4450 4452 4453 4451
		f 4 -7780 7920 -7922 7922
		mu 0 4 4381 4380 4461 4462
		mu 1 4 4375 4374 4454 4455
		f 4 -7783 -7923 -7924 7924
		mu 0 4 4383 4381 4462 4463
		mu 1 4 4377 4375 4455 4456
		f 4 -7787 7925 -7927 7927
		mu 0 4 4387 4386 4464 4465
		mu 1 4 4381 4380 4457 4458
		f 4 -7790 -7928 -7929 -7921
		mu 0 4 4380 4387 4465 4461
		mu 1 4 4374 4381 4458 4454
		f 4 -7793 7929 -7931 -7902
		mu 0 4 4364 4389 4466 4447
		mu 1 4 4358 4383 4459 4440
		f 4 -7795 -7904 -7932 7932
		mu 0 4 4391 4365 4448 4467
		mu 1 4 4385 4359 4441 4460
		f 4 -7798 -7925 -7934 -7930
		mu 0 4 4389 4383 4463 4466
		mu 1 4 4383 4377 4456 4459
		f 4 -7800 -7933 -7935 -7897
		mu 0 4 4355 4391 4467 4444
		mu 1 4 4349 4385 4460 4437
		f 4 -7803 -7899 -7936 7936
		mu 0 4 4392 4356 4445 4468
		mu 1 4 4386 4350 4438 4461
		f 4 -7805 -7937 -7938 7938
		mu 0 4 4395 4392 4468 4469
		mu 1 4 4389 4386 4461 4462
		f 4 -7806 -7939 -7940 7940
		mu 0 4 4394 4395 4470 4471
		mu 1 4 4388 4389 4462 4463
		f 4 -7942 7942 -7944 7944
		mu 0 4 4472 4473 4474 4475
		mu 1 4 4464 4465 4466 4467
		f 4 -7815 7945 -7869 -7926
		mu 0 4 4399 4398 4476 4477
		mu 1 4 4393 4392 4468 4469
		f 4 -7824 -7941 -7947 -7895
		mu 0 4 4333 4394 4471 4443
		mu 1 4 4327 4388 4463 4436
		f 4 -7948 -7908 -7949 -7943
		mu 0 4 4473 4449 4452 4474
		mu 1 4 4465 4442 4445 4466
		f 4 7949 7950 7951 7952
		mu 0 4 4478 4479 4480 4481
		mu 1 4 4470 4471 4472 4473
		f 4 7953 -7953 7954 7955
		mu 0 4 4482 4478 4481 4483
		mu 1 4 4474 4470 4473 4475
		f 4 7956 -7956 7957 7958
		mu 0 4 4484 4485 4486 4487
		mu 1 4 4476 4477 4478 4479
		f 4 -7950 7959 7960 7961
		mu 0 4 4479 4478 4488 4489
		mu 1 4 4471 4470 4480 4481
		f 4 7962 -7954 7963 7964
		mu 0 4 4490 4478 4482 4491
		mu 1 4 4482 4470 4474 4483
		f 4 7965 -7960 -7963 7966
		mu 0 4 4492 4488 4478 4490
		mu 1 4 4484 4480 4470 4482
		f 4 7967 -7967 7968 7969
		mu 0 4 4493 4492 4490 4494
		mu 1 4 4485 4484 4482 4486
		f 4 7970 7971 -7966 7972
		mu 0 4 4495 4496 4488 4492
		mu 1 4 4487 4488 4480 4484
		f 4 7973 7974 -7971 7975
		mu 0 4 4497 4498 4496 4495
		mu 1 4 4489 4490 4488 4487
		f 4 7976 7977 -7976 7978
		mu 0 4 4499 4500 4497 4495
		mu 1 4 4491 4492 4489 4487
		f 4 7979 7980 -7977 7981
		mu 0 4 4501 4502 4503 4504
		mu 1 4 4493 4494 4495 4496
		f 4 -7979 -7973 -7968 7982
		mu 0 4 4499 4495 4492 4493
		mu 1 4 4491 4487 4484 4485
		f 4 -7983 7983 7984 -7982
		mu 0 4 4504 4505 4506 4501
		mu 1 4 4496 4497 4498 4493
		f 4 -7970 7985 7986 -7984
		mu 0 4 4505 4507 4508 4506
		mu 1 4 4497 4499 4500 4498
		f 4 7987 7988 7989 -7981
		mu 0 4 4509 4510 4511 4512
		mu 1 4 4501 4502 4503 4504
		f 4 7990 7991 -7989 7992
		mu 0 4 4513 4514 4511 4510
		mu 1 4 4505 4506 4503 4502
		f 4 7993 -7969 -7965 7994
		mu 0 4 4515 4494 4490 4491
		mu 1 4 4507 4486 4482 4483
		f 4 7995 -7964 7996 7997
		mu 0 4 4516 4517 4485 4518
		mu 1 4 4508 4509 4477 4510
		f 4 7998 -7997 -7957 7999
		mu 0 4 4519 4518 4485 4484
		mu 1 4 4511 4510 4477 4476
		f 4 -7996 8000 8001 -7995
		mu 0 4 4517 4516 4520 4521
		mu 1 4 4509 4508 4512 4513
		f 4 -7994 8002 8003 -7986
		mu 0 4 4507 4522 4523 4508
		mu 1 4 4499 4514 4515 4500
		f 4 -8002 8004 8005 -8003
		mu 0 4 4522 4524 4525 4523
		mu 1 4 4514 4516 4517 4515
		f 4 -7972 8006 8007 -7961
		mu 0 4 4488 4496 4526 4489
		mu 1 4 4480 4488 4518 4481
		f 4 8008 8009 -8008 8010
		mu 0 4 4527 4528 4489 4526
		mu 1 4 4519 4520 4481 4518
		f 4 -7975 8011 8012 -8007
		mu 0 4 4496 4498 4529 4526
		mu 1 4 4488 4490 4521 4518
		f 4 -8011 -8013 8013 8014
		mu 0 4 4527 4526 4529 4530
		mu 1 4 4519 4518 4521 4522
		f 4 8015 8016 -7980 8017
		mu 0 4 4531 4532 4502 4501
		mu 1 4 4523 4524 4494 4493
		f 4 -7985 8018 8019 -8018
		mu 0 4 4501 4506 4533 4531
		mu 1 4 4493 4498 4525 4523
		f 4 -7987 8020 8021 -8019
		mu 0 4 4506 4508 4534 4533
		mu 1 4 4498 4500 4526 4525
		f 4 -8004 8022 8023 -8021
		mu 0 4 4508 4523 4535 4534
		mu 1 4 4500 4515 4527 4526
		f 4 -8006 8024 8025 -8023
		mu 0 4 4523 4525 4536 4535
		mu 1 4 4515 4517 4528 4527
		f 4 8026 -7988 -8017 8027
		mu 0 4 4537 4510 4509 4538
		mu 1 4 4529 4502 4501 4530
		f 4 8028 -7993 -8027 8029
		mu 0 4 4539 4513 4510 4537
		mu 1 4 4531 4505 4502 4529
		f 4 -8029 8030 -8025 8031
		mu 0 4 4513 4539 4536 4525
		mu 1 4 4505 4531 4528 4517
		f 4 -8005 8032 -7991 -8032
		mu 0 4 4525 4524 4514 4513
		mu 1 4 4517 4516 4506 4505
		f 4 8033 -8033 -8001 8034
		mu 0 4 4540 4541 4520 4516
		mu 1 4 4532 4533 4512 4508
		f 4 -7998 8035 8036 -8035
		mu 0 4 4516 4518 4542 4540
		mu 1 4 4508 4510 4534 4532
		f 4 8037 -8036 -7999 8038
		mu 0 4 4543 4542 4518 4519
		mu 1 4 4535 4534 4510 4511
		f 4 -8016 8039 8040 8041
		mu 0 4 4532 4531 4544 4545
		mu 1 4 4524 4523 4536 4537
		f 4 -8020 8042 8043 -8040
		mu 0 4 4531 4533 4546 4544
		mu 1 4 4523 4525 4538 4536
		f 4 -8022 8044 8045 -8043
		mu 0 4 4533 4534 4547 4546
		mu 1 4 4525 4526 4539 4538
		f 4 8046 8047 -8045 -8024
		mu 0 4 4535 4548 4547 4534
		mu 1 4 4527 4540 4539 4526
		f 4 8048 8049 -8047 -8026
		mu 0 4 4536 4549 4548 4535
		mu 1 4 4528 4541 4540 4527
		f 4 -8028 -8042 8050 8051
		mu 0 4 4537 4538 4550 4551
		mu 1 4 4529 4530 4542 4543
		f 4 -8052 8052 8053 -8030
		mu 0 4 4537 4551 4552 4539
		mu 1 4 4529 4543 4544 4531
		f 4 -8054 8054 -8049 -8031
		mu 0 4 4539 4552 4549 4536
		mu 1 4 4531 4544 4541 4528
		f 4 8055 8056 8057 8058
		mu 0 4 4553 4554 4555 4556
		mu 1 4 4545 4546 4547 4548
		f 4 8059 8060 8061 -8057
		mu 0 4 4554 4557 4558 4555
		mu 1 4 4546 4549 4550 4547
		f 4 8062 8063 8064 -8061
		mu 0 4 4557 4559 4560 4558
		mu 1 4 4549 4551 4552 4550
		f 4 8065 8066 -8064 8067
		mu 0 4 4561 4562 4560 4559
		mu 1 4 4553 4554 4552 4551
		f 4 8068 8069 -8066 8070
		mu 0 4 4563 4564 4562 4561
		mu 1 4 4555 4556 4554 4553
		f 4 8071 -8059 8072 8073
		mu 0 4 4565 4566 4567 4568
		mu 1 4 4557 4558 4559 4560
		f 4 -8074 8074 8075 8076
		mu 0 4 4565 4568 4569 4570
		mu 1 4 4557 4560 4561 4562
		f 4 -8076 8077 -8069 8078
		mu 0 4 4570 4569 4564 4563
		mu 1 4 4562 4561 4556 4555
		f 4 8079 8080 8081 8082
		mu 0 4 4571 4572 4573 4574
		mu 1 4 4563 4564 4565 4566
		f 4 8083 8084 8085 -8081
		mu 0 4 4572 4575 4576 4573
		mu 1 4 4564 4567 4568 4565
		f 4 8086 8087 8088 -8085
		mu 0 4 4575 4577 4578 4576
		mu 1 4 4567 4569 4570 4568
		f 4 8089 8090 8091 -8088
		mu 0 4 4577 4579 4580 4578
		mu 1 4 4569 4571 4572 4570
		f 4 8092 8093 8094 -8091
		mu 0 4 4579 4581 4582 4580
		mu 1 4 4571 4573 4574 4572
		f 4 -8083 8095 8096 8097
		mu 0 4 4583 4584 4585 4586
		mu 1 4 4575 4576 4577 4578
		f 4 -8097 8098 8099 8100
		mu 0 4 4586 4585 4587 4588
		mu 1 4 4578 4577 4579 4580
		f 4 -8100 8101 -8094 8102
		mu 0 4 4588 4587 4582 4581
		mu 1 4 4580 4579 4574 4573
		f 4 8103 8104 8105 8106
		mu 0 4 4589 4590 4591 4592
		mu 1 4 4581 4582 4583 4584
		f 4 8107 8108 -8104 8109
		mu 0 4 4593 4594 4590 4589
		mu 1 4 4585 4586 4582 4581
		f 4 8110 8111 -8108 8112
		mu 0 4 4595 4596 4594 4593
		mu 1 4 4587 4588 4586 4585
		f 4 8113 8114 -8111 8115
		mu 0 4 4597 4598 4596 4595
		mu 1 4 4589 4590 4588 4587
		f 4 8116 8117 -8114 8118
		mu 0 4 4599 4600 4598 4597
		mu 1 4 4591 4592 4590 4589
		f 4 -8106 8119 8120 8121
		mu 0 4 4601 4602 4603 4604
		mu 1 4 4593 4594 4595 4596
		f 4 -8121 8122 8123 8124
		mu 0 4 4604 4603 4605 4606
		mu 1 4 4596 4595 4597 4598
		f 4 -8124 8125 -8117 8126
		mu 0 4 4606 4605 4600 4599
		mu 1 4 4598 4597 4592 4591
		f 4 8127 8128 8129 -8105
		mu 0 4 4590 4607 4608 4591
		mu 1 4 4582 4599 4600 4583
		f 4 8130 8131 -8128 -8109
		mu 0 4 4594 4609 4607 4590
		mu 1 4 4586 4601 4599 4582
		f 4 8132 8133 -8131 -8112
		mu 0 4 4596 4610 4609 4594
		mu 1 4 4588 4602 4601 4586
		f 4 8134 8135 -8133 -8115
		mu 0 4 4598 4611 4610 4596
		mu 1 4 4590 4603 4602 4588
		f 4 8136 8137 -8135 -8118
		mu 0 4 4600 4612 4611 4598
		mu 1 4 4592 4604 4603 4590
		f 4 -8130 8138 8139 -8120
		mu 0 4 4602 4613 4614 4603
		mu 1 4 4594 4605 4606 4595
		f 4 -8140 8140 8141 -8123
		mu 0 4 4603 4614 4615 4605
		mu 1 4 4595 4606 4607 4597
		f 4 -8142 8142 -8137 -8126
		mu 0 4 4605 4615 4612 4600
		mu 1 4 4597 4607 4604 4592
		f 4 8143 8144 8145 -8107
		mu 0 4 4592 4616 4617 4589
		mu 1 4 4584 4608 4609 4581
		f 4 8146 8147 -8110 -8146
		mu 0 4 4617 4618 4593 4589
		mu 1 4 4609 4610 4585 4581
		f 4 8148 8149 -8113 -8148
		mu 0 4 4618 4619 4595 4593
		mu 1 4 4610 4611 4587 4585
		f 4 8150 8151 -8116 -8150
		mu 0 4 4619 4620 4597 4595
		mu 1 4 4611 4612 4589 4587
		f 4 8152 8153 -8119 -8152
		mu 0 4 4620 4621 4599 4597
		mu 1 4 4612 4613 4591 4589
		f 4 8154 8155 -8144 -8122
		mu 0 4 4604 4622 4623 4601
		mu 1 4 4596 4614 4615 4593
		f 4 8156 8157 -8155 -8125
		mu 0 4 4606 4624 4622 4604
		mu 1 4 4598 4616 4614 4596
		f 4 8158 -8157 -8127 -8154
		mu 0 4 4621 4624 4606 4599
		mu 1 4 4613 4616 4598 4591;
	setAttr ".fc[4000:4247]"
		f 4 8159 8160 8161 8162
		mu 0 4 4625 4626 4627 4628
		mu 1 4 4617 4618 4619 4620
		f 4 8163 -8163 8164 8165
		mu 0 4 4629 4625 4628 4630
		mu 1 4 4621 4617 4620 4622
		f 4 8166 -8166 8167 8168
		mu 0 4 4631 4629 4630 4632
		mu 1 4 4623 4621 4622 4624
		f 4 8169 8170 -8169 8171
		mu 0 4 4633 4634 4635 4636
		mu 1 4 4625 4626 4623 4624
		f 4 8172 -7992 -8034 8173
		mu 0 4 4637 4638 4541 4540
		mu 1 4 4627 4628 4533 4532
		f 4 -8037 8174 8175 -8174
		mu 0 4 4540 4542 4639 4637
		mu 1 4 4532 4534 4629 4627
		f 4 -8173 8176 8177 8178
		mu 0 4 4638 4637 4640 4633
		mu 1 4 4628 4627 4630 4625
		f 4 8179 8180 8181 8182
		mu 0 4 4641 4642 4643 4640
		mu 1 4 4631 4632 4633 4630
		f 4 8183 8184 8185 8186
		mu 0 4 4644 4645 4646 4647
		mu 1 4 4634 4635 4636 4637
		f 4 8187 8188 8189 -8185
		mu 0 4 4645 4648 4649 4646
		mu 1 4 4635 4638 4639 4636
		f 4 8190 8191 8192 -8189
		mu 0 4 4648 4650 4651 4649
		mu 1 4 4638 4640 4641 4639
		f 4 8193 8194 8195 -8192
		mu 0 4 4652 4653 4654 4655
		mu 1 4 4640 4642 4643 4641
		f 4 8196 8197 8198 -8195
		mu 0 4 4653 4656 4657 4654
		mu 1 4 4642 4644 4645 4643
		f 4 8199 8200 8201 -8198
		mu 0 4 4656 4658 4659 4657
		mu 1 4 4644 4646 4647 4645
		f 4 8202 -8175 -8038 8203
		mu 0 4 4660 4639 4542 4543
		mu 1 4 4648 4629 4534 4535
		f 4 8204 8205 8206 -8203
		mu 0 4 4660 4661 4641 4639
		mu 1 4 4648 4649 4631 4629
		f 4 8207 -8201 8208 8209
		mu 0 4 4662 4659 4658 4663
		mu 1 4 4650 4647 4646 4651
		f 4 8210 8211 -7951 8212
		mu 0 4 4664 4665 4480 4479
		mu 1 4 4652 4653 4472 4471
		f 4 8213 -7589 8214 -7959
		mu 0 4 4487 4282 4281 4484
		mu 1 4 4479 4281 4280 4476
		f 4 -8213 -7962 -8010 8215
		mu 0 4 4664 4479 4489 4528
		mu 1 4 4652 4471 4481 4520
		f 4 -8215 -7593 8216 -8000
		mu 0 4 4484 4281 4283 4519
		mu 1 4 4476 4280 4282 4511
		f 4 -7595 8217 -8039 -8217
		mu 0 4 4283 4284 4543 4519
		mu 1 4 4282 4283 4535 4511
		f 4 8218 -8161 8219 8220
		mu 0 4 4666 4627 4626 4667
		mu 1 4 4654 4619 4618 4655
		f 4 8221 -8187 8222 8223
		mu 0 4 4668 4644 4647 4669
		mu 1 4 4656 4634 4637 4657
		f 4 -7603 8224 -8204 -8218
		mu 0 4 4284 4289 4660 4543
		mu 1 4 4283 4288 4648 4535
		f 4 -7605 8225 -8205 -8225
		mu 0 4 4289 4290 4661 4660
		mu 1 4 4288 4289 4649 4648
		f 4 -8162 8226 -8012 8227
		mu 0 4 4628 4627 4529 4498
		mu 1 4 4620 4619 4521 4490
		f 4 -8165 -8228 -7974 8228
		mu 0 4 4630 4628 4498 4497
		mu 1 4 4622 4620 4490 4489
		f 4 -8168 -8229 -7978 8229
		mu 0 4 4632 4630 4497 4500
		mu 1 4 4624 4622 4489 4492
		f 4 -8179 -8172 -8230 -7990
		mu 0 4 4638 4633 4636 4670
		mu 1 4 4628 4625 4624 4492
		f 4 -8178 -8182 8230 -8170
		mu 0 4 4633 4640 4643 4634
		mu 1 4 4625 4630 4633 4626
		f 4 -8207 -8183 -8177 -8176
		mu 0 4 4639 4641 4640 4637
		mu 1 4 4629 4631 4630 4627
		f 4 -8180 -8206 8231 8232
		mu 0 4 4642 4641 4661 4671
		mu 1 4 4632 4631 4649 4658
		f 4 -8014 -8227 -8219 8233
		mu 0 4 4530 4529 4627 4666
		mu 1 4 4522 4521 4619 4654
		f 4 -8232 -8226 -7615 8234
		mu 0 4 4671 4661 4290 4293
		mu 1 4 4658 4649 4289 4291
		f 4 8235 8236 8237 -8186
		mu 0 4 4646 4672 4673 4647
		mu 1 4 4636 4659 4660 4637
		f 4 8238 8239 -8236 -8190
		mu 0 4 4649 4674 4672 4646
		mu 1 4 4639 4661 4659 4636
		f 4 8240 8241 -8239 -8193
		mu 0 4 4651 4675 4674 4649
		mu 1 4 4641 4662 4661 4639
		f 4 8242 8243 -8241 -8196
		mu 0 4 4654 4676 4677 4655
		mu 1 4 4643 4663 4662 4641
		f 4 -8199 8244 8245 -8243
		mu 0 4 4654 4657 4678 4676
		mu 1 4 4643 4645 4664 4663
		f 4 -8202 8246 8247 -8245
		mu 0 4 4657 4659 4679 4678
		mu 1 4 4645 4647 4665 4664
		f 4 -8208 8248 8249 -8247
		mu 0 4 4659 4662 4680 4679
		mu 1 4 4647 4650 4666 4665
		f 4 8250 -8223 -8238 8251
		mu 0 4 4681 4669 4647 4673
		mu 1 4 4667 4657 4637 4660
		f 4 8252 8253 8254 8255
		mu 0 4 4682 4683 4684 4685
		mu 1 4 4668 4669 4670 4671
		f 4 8256 8257 -8253 8258
		mu 0 4 4686 4687 4683 4682
		mu 1 4 4672 4673 4669 4668
		f 4 8259 8260 -8257 8261
		mu 0 4 4688 4689 4687 4686
		mu 1 4 4674 4675 4673 4672
		f 4 8262 8263 -8260 8264
		mu 0 4 4690 4691 4692 4693
		mu 1 4 4676 4677 4675 4674
		f 4 8265 8266 -8263 8267
		mu 0 4 4694 4695 4691 4690
		mu 1 4 4678 4679 4677 4676
		f 4 8268 8269 -8266 8270
		mu 0 4 4696 4697 4695 4694
		mu 1 4 4680 4681 4679 4678
		f 4 8271 8272 -8269 8273
		mu 0 4 4698 4699 4697 4696
		mu 1 4 4682 4683 4681 4680
		f 4 8274 8275 8276 -8255
		mu 0 4 4684 4700 4701 4685
		mu 1 4 4670 4684 4685 4671
		f 4 8277 8278 8279 -8254
		mu 0 4 4683 4702 4703 4684
		mu 1 4 4669 4686 4687 4670
		f 4 8280 8281 -8278 -8258
		mu 0 4 4687 4704 4702 4683
		mu 1 4 4673 4688 4686 4669
		f 4 8282 8283 -8281 -8261
		mu 0 4 4689 4705 4704 4687
		mu 1 4 4675 4689 4688 4673
		f 4 8284 8285 -8283 -8264
		mu 0 4 4691 4706 4707 4692
		mu 1 4 4677 4690 4689 4675
		f 4 8286 8287 -8285 -8267
		mu 0 4 4695 4708 4706 4691
		mu 1 4 4679 4691 4690 4677
		f 4 8288 8289 -8287 -8270
		mu 0 4 4697 4709 4708 4695
		mu 1 4 4681 4692 4691 4679
		f 4 8290 8291 -8289 -8273
		mu 0 4 4699 4710 4709 4697
		mu 1 4 4683 4693 4692 4681
		f 4 8292 8293 -8275 -8280
		mu 0 4 4703 4711 4700 4684
		mu 1 4 4687 4694 4684 4670
		f 4 8294 8295 8296 8297
		mu 0 4 4712 4713 4714 4715
		mu 1 4 4695 4696 4697 4698
		f 4 -8297 8298 8299 8300
		mu 0 4 4715 4714 4716 4717
		mu 1 4 4698 4697 4699 4700
		f 4 -8300 8301 8302 8303
		mu 0 4 4717 4716 4718 4719
		mu 1 4 4700 4699 4701 4702
		f 4 -8303 8304 8305 8306
		mu 0 4 4719 4718 4720 4721
		mu 1 4 4702 4701 4703 4704
		f 4 -8306 8307 8308 8309
		mu 0 4 4721 4720 4722 4723
		mu 1 4 4704 4703 4705 4706
		f 4 8310 8311 -8295 8312
		mu 0 4 4724 4725 4726 4727
		mu 1 4 4707 4708 4709 4710
		f 4 8313 8314 -8311 8315
		mu 0 4 4728 4729 4725 4724
		mu 1 4 4711 4712 4708 4707
		f 4 -8309 8316 -8314 8317
		mu 0 4 4723 4722 4729 4728
		mu 1 4 4706 4705 4712 4711
		f 4 8318 -8237 8319 -8256
		mu 0 4 4685 4673 4672 4682
		mu 1 4 4671 4660 4659 4668
		f 4 -8320 -8240 8320 -8259
		mu 0 4 4682 4672 4674 4686
		mu 1 4 4668 4659 4661 4672
		f 4 -8242 8321 -8262 -8321
		mu 0 4 4674 4675 4688 4686
		mu 1 4 4661 4662 4674 4672
		f 4 -8244 8322 -8265 -8322
		mu 0 4 4677 4676 4690 4693
		mu 1 4 4662 4663 4676 4674
		f 4 -8246 8323 -8268 -8323
		mu 0 4 4676 4678 4694 4690
		mu 1 4 4663 4664 4678 4676
		f 4 -8248 8324 -8271 -8324
		mu 0 4 4678 4679 4696 4694
		mu 1 4 4664 4665 4680 4678
		f 4 -8325 -8250 8325 -8274
		mu 0 4 4696 4679 4680 4698
		mu 1 4 4680 4665 4666 4682
		f 4 -8326 8326 -7708 8327
		mu 0 4 4698 4680 4353 4352
		mu 1 4 4682 4666 4347 4346
		f 4 8328 8329 8330 8331
		mu 0 4 4730 4731 4732 4733
		mu 1 4 4713 4714 4715 4716
		f 4 -8041 8332 -8056 8333
		mu 0 4 4545 4544 4554 4553
		mu 1 4 4537 4536 4546 4545
		f 4 -8044 8334 -8060 -8333
		mu 0 4 4544 4546 4557 4554
		mu 1 4 4536 4538 4549 4546
		f 4 -8046 8335 -8063 -8335
		mu 0 4 4546 4547 4559 4557
		mu 1 4 4538 4539 4551 4549
		f 4 -8336 -8048 8336 -8068
		mu 0 4 4559 4547 4548 4561
		mu 1 4 4551 4539 4540 4553
		f 4 -8337 -8050 8337 -8071
		mu 0 4 4561 4548 4549 4563
		mu 1 4 4553 4540 4541 4555
		f 4 -8051 -8334 -8072 8338
		mu 0 4 4551 4550 4566 4565
		mu 1 4 4543 4542 4558 4557
		f 4 8339 -8053 -8339 -8077
		mu 0 4 4570 4552 4551 4565
		mu 1 4 4562 4544 4543 4557
		f 4 -8338 -8055 -8340 -8079
		mu 0 4 4563 4549 4552 4570
		mu 1 4 4555 4541 4544 4562
		f 4 -7724 8340 -8210 8341
		mu 0 4 4358 4359 4662 4663
		mu 1 4 4352 4353 4650 4651
		f 4 -8341 -7725 -8327 -8249
		mu 0 4 4662 4359 4353 4680
		mu 1 4 4650 4353 4347 4666
		f 4 -7727 8342 -8272 -8328
		mu 0 4 4352 4360 4699 4698
		mu 1 4 4346 4354 4683 4682
		f 4 -7729 8343 -8291 -8343
		mu 0 4 4360 4361 4710 4699
		mu 1 4 4354 4355 4693 4683
		f 4 -8160 8344 -8184 8345
		mu 0 4 4626 4625 4645 4644
		mu 1 4 4618 4617 4635 4634
		f 4 -8164 8346 -8188 -8345
		mu 0 4 4625 4629 4648 4645
		mu 1 4 4617 4621 4638 4635
		f 4 -8167 8347 -8191 -8347
		mu 0 4 4629 4631 4650 4648
		mu 1 4 4621 4623 4640 4638
		f 4 -8171 8348 -8194 -8348
		mu 0 4 4635 4634 4653 4652
		mu 1 4 4623 4626 4642 4640
		f 4 -8231 8349 -8197 -8349
		mu 0 4 4634 4643 4656 4653
		mu 1 4 4626 4633 4644 4642
		f 4 -8181 8350 -8200 -8350
		mu 0 4 4643 4642 4658 4656
		mu 1 4 4633 4632 4646 4644
		f 4 -8233 8351 -8209 -8351
		mu 0 4 4642 4671 4663 4658
		mu 1 4 4632 4658 4651 4646
		f 4 -8235 -7738 -8342 -8352
		mu 0 4 4671 4293 4358 4663
		mu 1 4 4658 4291 4352 4651
		f 4 8352 8353 8354 8355
		mu 0 4 4734 4735 4736 4737
		mu 1 4 4717 4718 4719 4720
		f 4 -8058 8356 -8080 8357
		mu 0 4 4556 4555 4572 4571
		mu 1 4 4548 4547 4564 4563
		f 4 -8062 8358 -8084 -8357
		mu 0 4 4555 4558 4575 4572
		mu 1 4 4547 4550 4567 4564
		f 4 -8065 8359 -8087 -8359
		mu 0 4 4558 4560 4577 4575
		mu 1 4 4550 4552 4569 4567
		f 4 -8360 -8067 8360 -8090
		mu 0 4 4577 4560 4562 4579
		mu 1 4 4569 4552 4554 4571
		f 4 -8361 -8070 8361 -8093
		mu 0 4 4579 4562 4564 4581
		mu 1 4 4571 4554 4556 4573
		f 4 -8073 -8358 -8098 8362
		mu 0 4 4568 4567 4583 4586
		mu 1 4 4560 4559 4575 4578
		f 4 8363 -8075 -8363 -8101
		mu 0 4 4588 4569 4568 4586
		mu 1 4 4580 4561 4560 4578
		f 4 -8362 -8078 -8364 -8103
		mu 0 4 4581 4564 4569 4588
		mu 1 4 4573 4556 4561 4580
		f 4 -8082 8364 -8296 8365
		mu 0 4 4574 4573 4714 4713
		mu 1 4 4566 4565 4697 4696
		f 4 -8086 8366 -8299 -8365
		mu 0 4 4573 4576 4716 4714
		mu 1 4 4565 4568 4699 4697
		f 4 -8089 8367 -8302 -8367
		mu 0 4 4576 4578 4718 4716
		mu 1 4 4568 4570 4701 4699
		f 4 -8092 8368 -8305 -8368
		mu 0 4 4578 4580 4720 4718
		mu 1 4 4570 4572 4703 4701
		f 4 -8095 8369 -8308 -8369
		mu 0 4 4580 4582 4722 4720
		mu 1 4 4572 4574 4705 4703
		f 4 8370 -8096 -8366 -8312
		mu 0 4 4725 4585 4584 4726
		mu 1 4 4708 4577 4576 4709
		f 4 8371 -8099 -8371 -8315
		mu 0 4 4729 4587 4585 4725
		mu 1 4 4712 4579 4577 4708
		f 4 -8370 -8102 -8372 -8317
		mu 0 4 4722 4582 4587 4729
		mu 1 4 4705 4574 4579 4712
		f 4 8372 -8298 8373 -8145
		mu 0 4 4616 4712 4715 4617
		mu 1 4 4608 4695 4698 4609
		f 4 -8374 -8301 8374 -8147
		mu 0 4 4617 4715 4717 4618
		mu 1 4 4609 4698 4700 4610
		f 4 -8375 -8304 8375 -8149
		mu 0 4 4618 4717 4719 4619
		mu 1 4 4610 4700 4702 4611
		f 4 -8376 -8307 8376 -8151
		mu 0 4 4619 4719 4721 4620
		mu 1 4 4611 4702 4704 4612
		f 4 -8377 -8310 8377 -8153
		mu 0 4 4620 4721 4723 4621
		mu 1 4 4612 4704 4706 4613
		f 4 -8313 -8373 -8156 8378
		mu 0 4 4724 4727 4623 4622
		mu 1 4 4707 4710 4615 4614
		f 4 -8316 -8379 -8158 8379
		mu 0 4 4728 4724 4622 4624
		mu 1 4 4711 4707 4614 4616
		f 4 -8318 -8380 -8159 -8378
		mu 0 4 4723 4728 4624 4621
		mu 1 4 4706 4711 4616 4613
		f 4 8380 8381 -8212 8382
		mu 0 4 4738 4739 4740 4741
		mu 1 4 4721 4722 4723 4724
		f 4 -7952 -8382 8383 8384
		mu 0 4 4742 4740 4739 4743
		mu 1 4 4725 4723 4722 4726
		f 4 -7955 -8385 8385 8386
		mu 0 4 4744 4742 4743 4745
		mu 1 4 4727 4725 4726 4728
		f 4 8387 8388 -7958 -8387
		mu 0 4 4745 4746 4747 4744
		mu 1 4 4728 4729 4730 4727
		f 4 8389 -7777 -8214 -8389
		mu 0 4 4746 4376 4377 4747
		mu 1 4 4729 4370 4371 4730
		f 4 8390 8391 8392 8393
		mu 0 4 4748 4749 4750 4751
		mu 1 4 4731 4732 4733 4734
		f 4 8394 8395 -8391 8396
		mu 0 4 4752 4753 4749 4748
		mu 1 4 4735 4736 4732 4731
		f 4 8397 8398 8399 8400
		mu 0 4 4754 4755 4756 4757
		mu 1 4 4737 4738 4739 4740
		f 4 -8393 8401 -8398 8402
		mu 0 4 4751 4750 4755 4754
		mu 1 4 4734 4733 4738 4737
		f 4 -8355 8403 8404 8405
		mu 0 4 4737 4736 4758 4759
		mu 1 4 4720 4719 4741 4742
		f 4 8406 8407 -8353 8408
		mu 0 4 4760 4761 4735 4734
		mu 1 4 4743 4744 4718 4717
		f 4 -8405 8409 -8395 8410
		mu 0 4 4759 4758 4753 4752
		mu 1 4 4742 4741 4736 4735
		f 4 -8332 8411 -8407 8412
		mu 0 4 4730 4733 4761 4760
		mu 1 4 4713 4716 4744 4743
		f 4 8413 -8330 8414 8415
		mu 0 4 4762 4732 4731 4763
		mu 1 4 4745 4715 4714 4746
		f 4 8416 8417 -8416 8418
		mu 0 4 4764 4765 4762 4763
		mu 1 4 4747 4748 4745 4746
		f 4 8419 8420 8421 -8329
		mu 0 4 4730 4681 4701 4731
		mu 1 4 4713 4667 4685 4714
		f 4 8422 8423 8424 -8356
		mu 0 4 4737 4667 4668 4734
		mu 1 4 4720 4655 4656 4717
		f 4 -8400 8425 8426 8427
		mu 0 4 4766 4767 4768 4769
		mu 1 4 4749 4750 4751 4752
		f 4 8428 -8394 8429 -8009
		mu 0 4 4527 4748 4751 4528
		mu 1 4 4519 4731 4734 4520
		f 4 8430 -8397 -8429 -8015
		mu 0 4 4530 4752 4748 4527
		mu 1 4 4522 4735 4731 4519
		f 4 8431 -8401 8432 -8211
		mu 0 4 4664 4754 4757 4665
		mu 1 4 4652 4737 4740 4653
		f 4 -8430 -8403 -8432 -8216
		mu 0 4 4528 4751 4754 4664
		mu 1 4 4520 4734 4737 4652
		f 4 -8423 -8406 8433 -8221
		mu 0 4 4667 4737 4759 4666
		mu 1 4 4655 4720 4742 4654
		f 4 8434 -8409 -8425 -8224
		mu 0 4 4669 4760 4734 4668
		mu 1 4 4657 4743 4717 4656
		f 4 -8434 -8411 -8431 -8234
		mu 0 4 4666 4759 4752 4530
		mu 1 4 4654 4742 4735 4522
		f 4 -8420 -8413 -8435 -8251
		mu 0 4 4681 4730 4760 4669
		mu 1 4 4667 4713 4743 4657
		f 4 -8415 -8422 -8276 8435
		mu 0 4 4763 4731 4701 4700
		mu 1 4 4746 4714 4685 4684
		f 4 8436 -8419 -8436 -8294
		mu 0 4 4711 4764 4763 4700
		mu 1 4 4694 4747 4746 4684
		f 4 -8433 -8428 8437 -8383
		mu 0 4 4741 4766 4769 4738
		mu 1 4 4724 4749 4752 4721
		f 4 -8252 -8319 -8277 -8421
		mu 0 4 4681 4673 4685 4701
		mu 1 4 4667 4660 4671 4685
		f 4 -8220 -8346 -8222 -8424
		mu 0 4 4667 4626 4644 4668
		mu 1 4 4655 4618 4634 4656
		f 4 8438 8439 -8441 8441
		mu 0 4 4770 4771 4772 4773
		mu 1 4 4753 4754 4755 4756
		f 4 8442 8443 -8445 -8440
		mu 0 4 4771 4774 4775 4772
		mu 1 4 4754 4757 4758 4755
		f 4 8445 8446 -8448 -8444
		mu 0 4 4774 4776 4777 4775
		mu 1 4 4757 4759 4760 4758
		f 4 8448 8449 -8451 -8447
		mu 0 4 4776 4778 4779 4777
		mu 1 4 4759 4761 4762 4760
		f 4 8451 8452 -8454 -8450
		mu 0 4 4778 4780 4781 4779
		mu 1 4 4761 4763 4764 4762
		f 4 8454 -8442 -8456 8456
		mu 0 4 4782 4783 4784 4785
		mu 1 4 4765 4766 4767 4768
		f 4 8457 -8457 -8459 8459
		mu 0 4 4786 4782 4785 4787
		mu 1 4 4769 4765 4768 4770
		f 4 8460 -8460 -8462 -8453
		mu 0 4 4780 4786 4787 4781
		mu 1 4 4763 4769 4770 4764
		f 4 8462 8463 8464 -8466
		mu 0 4 4788 4789 4790 4791
		mu 1 4 4771 4772 4773 4774
		f 4 8466 -8463 -8468 8468
		mu 0 4 4792 4789 4788 4793
		mu 1 4 4775 4772 4771 4776
		f 4 8469 -8469 -8471 8471
		mu 0 4 4794 4792 4793 4795
		mu 1 4 4777 4775 4776 4778
		f 4 -8473 8473 8474 -8472
		mu 0 4 4795 4796 4797 4794
		mu 1 4 4778 4779 4780 4777
		f 4 -8476 -7864 8476 -8474
		mu 0 4 4796 4429 4428 4797
		mu 1 4 4779 4423 4422 4780
		f 4 8477 8478 -8480 8480
		mu 0 4 4798 4799 4800 4801
		mu 1 4 4781 4782 4783 4784
		f 4 8481 -8481 -8483 -8465
		mu 0 4 4790 4798 4801 4791
		mu 1 4 4773 4781 4784 4774
		f 4 8483 -8439 8484 -8129
		mu 0 4 4607 4771 4770 4608
		mu 1 4 4599 4754 4753 4600
		f 4 8485 -8443 -8484 -8132
		mu 0 4 4609 4774 4771 4607
		mu 1 4 4601 4757 4754 4599
		f 4 8486 -8446 -8486 -8134
		mu 0 4 4610 4776 4774 4609
		mu 1 4 4602 4759 4757 4601
		f 4 8487 -8449 -8487 -8136
		mu 0 4 4611 4778 4776 4610
		mu 1 4 4603 4761 4759 4602
		f 4 8488 -8452 -8488 -8138
		mu 0 4 4612 4780 4778 4611
		mu 1 4 4604 4763 4761 4603
		f 4 -8485 -8455 8489 -8139
		mu 0 4 4613 4783 4782 4614
		mu 1 4 4605 4766 4765 4606
		f 4 -8490 -8458 8490 -8141
		mu 0 4 4614 4782 4786 4615
		mu 1 4 4606 4765 4769 4607
		f 4 -8491 -8461 -8489 -8143
		mu 0 4 4615 4786 4780 4612
		mu 1 4 4607 4769 4763 4604
		f 4 8491 -8493 8493 -8279
		mu 0 4 4702 4802 4803 4703
		mu 1 4 4686 4785 4786 4687
		f 4 8494 -8496 -8492 -8282
		mu 0 4 4704 4804 4802 4702
		mu 1 4 4688 4787 4785 4686
		f 4 8496 -8498 -8495 -8284
		mu 0 4 4705 4805 4804 4704
		mu 1 4 4689 4788 4787 4688
		f 4 8498 -8500 -8497 -8286
		mu 0 4 4706 4806 4807 4707
		mu 1 4 4690 4789 4788 4689
		f 4 8500 -8502 -8499 -8288
		mu 0 4 4708 4808 4806 4706
		mu 1 4 4691 4790 4789 4690
		f 4 8502 -8504 -8501 -8290
		mu 0 4 4709 4809 4808 4708
		mu 1 4 4692 4791 4790 4691
		f 4 8504 -8506 -8503 -8292
		mu 0 4 4710 4810 4809 4709
		mu 1 4 4693 4792 4791 4692
		f 4 -8494 -8507 8507 -8293
		mu 0 4 4703 4803 4811 4711
		mu 1 4 4687 4786 4793 4694
		f 4 8508 -8510 8510 -8331
		mu 0 4 4732 4812 4813 4733
		mu 1 4 4715 4794 4795 4716
		f 4 -7901 -8512 -8505 -8344
		mu 0 4 4361 4446 4810 4710
		mu 1 4 4355 4439 4792 4693
		f 4 8512 -8514 8514 -8354
		mu 0 4 4735 4814 4815 4736
		mu 1 4 4718 4796 4797 4719
		f 4 8515 -8517 8517 -8519
		mu 0 4 4816 4817 4818 4819
		mu 1 4 4798 4799 4800 4801
		f 4 -8518 -8520 8520 -8522
		mu 0 4 4819 4818 4820 4821
		mu 1 4 4801 4800 4802 4803
		f 4 -8521 -8523 8523 -8525
		mu 0 4 4821 4820 4822 4823
		mu 1 4 4803 4802 4804 4805
		f 4 -8524 -8526 8526 -8528
		mu 0 4 4823 4822 4824 4825
		mu 1 4 4805 4804 4806 4807
		f 4 -8527 -8529 -7919 -8530
		mu 0 4 4825 4824 4460 4459
		mu 1 4 4807 4806 4453 4452
		f 4 8530 -8532 8532 -8392
		mu 0 4 4749 4826 4827 4750
		mu 1 4 4732 4808 4809 4733
		f 4 8533 -8535 -8531 -8396
		mu 0 4 4753 4828 4826 4749
		mu 1 4 4736 4810 4808 4732
		f 4 8535 -8537 8537 -8399
		mu 0 4 4755 4829 4830 4756
		mu 1 4 4738 4811 4812 4739
		f 4 -8533 -8539 -8536 -8402
		mu 0 4 4750 4827 4829 4755
		mu 1 4 4733 4809 4811 4738
		f 4 -8515 -8540 8540 -8404
		mu 0 4 4736 4815 4831 4758
		mu 1 4 4719 4797 4813 4741
		f 4 8541 -8543 -8513 -8408
		mu 0 4 4761 4832 4814 4735
		mu 1 4 4744 4814 4796 4718
		f 4 -8541 -8544 -8534 -8410
		mu 0 4 4758 4831 4828 4753
		mu 1 4 4741 4813 4810 4736
		f 4 -8511 -8545 -8542 -8412
		mu 0 4 4733 4813 4832 4761
		mu 1 4 4716 4795 4814 4744
		f 4 8545 -8547 -8509 -8414
		mu 0 4 4762 4833 4812 4732
		mu 1 4 4745 4815 4794 4715
		f 4 8547 -8549 -8546 -8418
		mu 0 4 4765 4834 4833 4762
		mu 1 4 4748 4816 4815 4745
		f 4 8549 -8551 -8548 -8417
		mu 0 4 4764 4835 4836 4765
		mu 1 4 4747 4817 4816 4748
		f 4 8551 -8553 8553 -8555
		mu 0 4 4837 4838 4839 4840
		mu 1 4 4818 4819 4820 4821
		f 4 -8538 -8479 8555 -8426
		mu 0 4 4767 4841 4842 4768
		mu 1 4 4750 4822 4823 4751
		f 4 -8508 -8557 -8550 -8437
		mu 0 4 4711 4811 4835 4764
		mu 1 4 4694 4793 4817 4747
		f 4 -8554 -8558 -8516 -8559
		mu 0 4 4840 4839 4817 4816
		mu 1 4 4821 4820 4799 4798
		f 4 -7825 -8560 7947 -8561
		mu 0 4 4397 4367 4449 4473
		mu 1 4 4391 4361 4442 4465
		f 4 -7814 8560 7941 8561
		mu 0 4 4398 4397 4473 4472
		mu 1 4 4392 4391 4465 4464
		f 4 -7946 -8562 -7945 -8563
		mu 0 4 4476 4398 4472 4843
		mu 1 4 4468 4392 4464 4467
		f 4 7943 8563 -7866 8562
		mu 0 4 4475 4474 4431 4430
		mu 1 4 4467 4466 4425 4424
		f 4 7948 -8565 -7870 -8564
		mu 0 4 4474 4452 4420 4431
		mu 1 4 4466 4445 4414 4425
		f 4 -7852 8564 7906 8565
		mu 0 4 4421 4420 4452 4451
		mu 1 4 4415 4414 4445 4444
		f 4 7910 8566 -7854 -8566
		mu 0 4 4451 4454 4422 4421
		mu 1 4 4444 4447 4416 4415
		f 4 7913 8567 -7857 -8567
		mu 0 4 4454 4456 4424 4422
		mu 1 4 4447 4449 4418 4416
		f 4 -7860 -8568 7916 8568
		mu 0 4 4426 4424 4456 4458
		mu 1 4 4420 4418 4449 4451
		f 4 -7863 -8569 7919 8569
		mu 0 4 4428 4426 4458 4460
		mu 1 4 4422 4420 4451 4453
		f 4 -8477 -8570 8528 -8571
		mu 0 4 4797 4428 4460 4824
		mu 1 4 4780 4422 4453 4806
		f 4 -8475 8570 8525 -8572
		mu 0 4 4794 4797 4824 4822
		mu 1 4 4777 4780 4806 4804
		f 4 -8573 -8470 8571 8522
		mu 0 4 4820 4792 4794 4822
		mu 1 4 4802 4775 4777 4804
		f 4 -8574 -8467 8572 8519
		mu 0 4 4818 4789 4792 4820
		mu 1 4 4800 4772 4775 4802
		f 4 -8464 8573 8516 8574
		mu 0 4 4790 4789 4818 4817
		mu 1 4 4773 4772 4800 4799
		f 4 -8576 -8482 -8575 8557
		mu 0 4 4839 4798 4790 4817
		mu 1 4 4820 4781 4773 4799
		f 4 8576 -8478 8575 8552
		mu 0 4 4838 4799 4798 4839
		mu 1 4 4819 4782 4781 4820
		f 4 -8556 -8577 -8552 -8578
		mu 0 4 4768 4842 4844 4837
		mu 1 4 4751 4823 4819 4818
		f 4 -8427 8577 8554 8578
		mu 0 4 4769 4768 4837 4840
		mu 1 4 4752 4751 4818 4821
		f 4 -8438 -8579 8558 -8580
		mu 0 4 4738 4769 4840 4816
		mu 1 4 4721 4752 4821 4798
		f 4 8518 8580 -8381 8579
		mu 0 4 4816 4819 4739 4738
		mu 1 4 4798 4801 4722 4721
		f 4 -8384 -8581 8521 8581
		mu 0 4 4743 4739 4819 4821
		mu 1 4 4726 4722 4801 4803
		f 4 -8386 -8582 8524 8582
		mu 0 4 4745 4743 4821 4823
		mu 1 4 4728 4726 4803 4805
		f 4 8583 -8388 -8583 8527
		mu 0 4 4825 4746 4745 4823
		mu 1 4 4807 4729 4728 4805
		f 4 -8585 -8390 -8584 8529
		mu 0 4 4459 4376 4746 4825
		mu 1 4 4452 4370 4729 4807
		f 4 7917 -8586 -7776 8584
		mu 0 4 4459 4457 4374 4376
		mu 1 4 4452 4450 4368 4370
		f 4 7914 -8587 -7774 8585
		mu 0 4 4457 4455 4373 4374
		mu 1 4 4450 4448 4367 4368
		f 4 -7773 8586 7911 -8588
		mu 0 4 4371 4373 4455 4453
		mu 1 4 4365 4367 4448 4446
		f 4 -7771 8587 7908 -8589
		mu 0 4 4366 4371 4453 4450
		mu 1 4 4360 4365 4446 4443
		f 4 8559 -7767 8588 7904
		mu 0 4 4449 4367 4366 4450
		mu 1 4 4442 4361 4360 4443
		f 4 7937 8589 8548 -8591
		mu 0 4 4469 4468 4833 4834
		mu 1 4 4462 4461 4824 4825
		f 4 7935 8591 8546 -8590
		mu 0 4 4468 4445 4812 4833
		mu 1 4 4461 4438 4826 4824
		f 4 7897 8592 8509 -8592
		mu 0 4 4445 4444 4813 4812
		mu 1 4 4438 4437 4827 4826
		f 4 7934 8593 8544 -8593
		mu 0 4 4444 4467 4832 4813
		mu 1 4 4437 4460 4828 4827
		f 4 7931 8594 8542 -8594
		mu 0 4 4467 4448 4814 4832
		mu 1 4 4460 4441 4829 4828
		f 4 7902 8595 8513 -8595
		mu 0 4 4448 4447 4815 4814
		mu 1 4 4441 4440 4830 4829
		f 4 7930 8596 8539 -8596
		mu 0 4 4447 4466 4831 4815
		mu 1 4 4440 4459 4831 4830
		f 4 7933 8597 8543 -8597
		mu 0 4 4466 4463 4828 4831
		mu 1 4 4459 4456 4832 4831
		f 4 7923 8598 8534 -8598
		mu 0 4 4463 4462 4826 4828
		mu 1 4 4456 4455 4833 4832
		f 4 7921 8599 8531 -8599
		mu 0 4 4462 4461 4827 4826
		mu 1 4 4455 4454 4834 4833
		f 4 7928 8600 8538 -8600
		mu 0 4 4461 4465 4829 4827
		mu 1 4 4454 4458 4835 4834
		f 4 7926 8601 8536 -8601
		mu 0 4 4465 4464 4830 4829
		mu 1 4 4458 4457 4836 4835;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr -s 2 ".pd";
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".pd[1]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "776CC668-40EC-E3F5-9CB5-2D81DF949890";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "72ACAC75-42AD-1EA0-2682-5D97B1361671";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "38B11924-4883-0FF4-59CE-11AF33C32669";
createNode displayLayerManager -n "layerManager";
	rename -uid "2D60E532-4544-D37A-29E9-E5B64FFBC1DC";
createNode displayLayer -n "defaultLayer";
	rename -uid "3D0E55B1-4378-1E52-E24F-FDBE854775CA";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9B209C22-4AA4-0C06-996F-D496083D10B8";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3396B7B0-47D4-079F-FD41-45A9FE6E7B04";
	setAttr ".g" yes;
createNode phong -n "M_UE4Man_Body";
	rename -uid "10DC9DE8-4301-734E-90C8-9285C741938A";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.2158605 0.2158605 0.2158605 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 1;
createNode shadingEngine -n "SK_MannequinSG";
	rename -uid "FB0BAA52-4003-E0C4-CB3D-B6A9F02F88ED";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "64242306-4110-9472-E433-4AA1E9904C24";
createNode phong -n "M_UE4Man_ChestLogo";
	rename -uid "C99531A9-4602-260F-2BAD-799EC8C2974F";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.2158605 0.2158605 0.2158605 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 1;
createNode shadingEngine -n "SK_MannequinSG1";
	rename -uid "E45D6F61-4995-2D67-C818-5E9DAAA25F3F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "D7904235-43C3-AC5C-C509-17BE072C7A89";
createNode renderLayerManager -n "ShooterPlayerModel:renderLayerManager";
	rename -uid "5EBA38D1-4235-7166-D299-AF913B2269B9";
createNode renderLayer -n "ShooterPlayerModel:defaultRenderLayer";
	rename -uid "CE9C01BB-4B96-DA3B-9258-26BCEA83063A";
	setAttr ".g" yes;
createNode HIKCharacterNode -n "ShooterPlayerModel:QuickRigCharacter";
	rename -uid "267C7D3C-4525-8085-878C-D2A7ECD86411";
	addAttr -r false -ci true -sn "quickRigInfo" -ln "quickRigInfo" -at "compound" 
		-nc 3;
	addAttr -r false -s false -ci true -m -im false -sn "meshes" -ln "meshes" -at "message" 
		-p "quickRigInfo";
	addAttr -r false -s false -ci true -sn "guides" -ln "guides" -at "message" -p "quickRigInfo";
	addAttr -r false -s false -ci true -sn "skeleton" -ln "skeleton" -at "message" -p "quickRigInfo";
createNode HIKProperty2State -n "ShooterPlayerModel:HIKproperties1";
	rename -uid "BF632C53-41F1-7348-83B0-62ABDFCF0A36";
	setAttr ".ParamLeafLeftUpLegRoll1" 0;
	setAttr ".ParamLeafLeftLegRoll1" 0.2;
	setAttr ".ParamLeafRightUpLegRoll1" 0;
	setAttr ".ParamLeafRightLegRoll1" 0.2;
	setAttr ".ParamLeafLeftArmRoll1" 0;
	setAttr ".ParamLeafLeftForeArmRoll1" 0.2;
	setAttr ".ParamLeafRightArmRoll1" 0;
	setAttr ".ParamLeafRightForeArmRoll1" 0.2;
	setAttr ".ParamLeafLeftUpLegRoll2" 0.22;
	setAttr ".ParamLeafLeftLegRoll2" 0.4;
	setAttr ".ParamLeafRightUpLegRoll2" 0.22;
	setAttr ".ParamLeafRightLegRoll2" 0.4;
	setAttr ".ParamLeafLeftArmRoll2" 0.22;
	setAttr ".ParamLeafLeftForeArmRoll2" 0.4;
	setAttr ".ParamLeafRightArmRoll2" 0.22;
	setAttr ".ParamLeafRightForeArmRoll2" 0.4;
	setAttr ".ParamLeafLeftUpLegRoll3" 0.44;
	setAttr ".ParamLeafLeftLegRoll3" 0.6;
	setAttr ".ParamLeafRightUpLegRoll3" 0.44;
	setAttr ".ParamLeafRightLegRoll3" 0.6;
	setAttr ".ParamLeafLeftArmRoll3" 0.44;
	setAttr ".ParamLeafLeftForeArmRoll3" 0.6;
	setAttr ".ParamLeafRightArmRoll3" 0.44;
	setAttr ".ParamLeafRightForeArmRoll3" 0.6;
	setAttr ".ParamLeafLeftUpLegRoll4" 0.66;
	setAttr ".ParamLeafLeftLegRoll4" 0.8;
	setAttr ".ParamLeafRightUpLegRoll4" 0.66;
	setAttr ".ParamLeafRightLegRoll4" 0.8;
	setAttr ".ParamLeafLeftArmRoll4" 0.66;
	setAttr ".ParamLeafLeftForeArmRoll4" 0.8;
	setAttr ".ParamLeafRightArmRoll4" 0.66;
	setAttr ".ParamLeafRightForeArmRoll4" 0.8;
	setAttr ".ParamLeafLeftUpLegRoll5" 0.9;
	setAttr ".ParamLeafLeftLegRoll5" 1;
	setAttr ".ParamLeafRightUpLegRoll5" 0.9;
	setAttr ".ParamLeafRightLegRoll5" 1;
	setAttr ".ParamLeafLeftArmRoll5" 0.9;
	setAttr ".ParamLeafLeftForeArmRoll5" 1;
	setAttr ".ParamLeafRightArmRoll5" 0.9;
	setAttr ".ParamLeafRightForeArmRoll5" 1;
createNode HIKCharacterNode -n "ShooterPlayerModel:Character1";
	rename -uid "2546A8C9-4150-3056-93EE-D2987BB5B31F";
createNode HIKProperty2State -n "ShooterPlayerModel:HIKproperties2";
	rename -uid "FC6B4B53-4EC1-D4D9-BC57-CC866FA20DF5";
	setAttr ".ParamLeafLeftUpLegRoll1" 0;
	setAttr ".ParamLeafLeftLegRoll1" 0.2;
	setAttr ".ParamLeafRightUpLegRoll1" 0;
	setAttr ".ParamLeafRightLegRoll1" 0.2;
	setAttr ".ParamLeafLeftArmRoll1" 0;
	setAttr ".ParamLeafLeftForeArmRoll1" 0.2;
	setAttr ".ParamLeafRightArmRoll1" 0;
	setAttr ".ParamLeafRightForeArmRoll1" 0.2;
	setAttr ".ParamLeafLeftUpLegRoll2" 0.22;
	setAttr ".ParamLeafLeftLegRoll2" 0.4;
	setAttr ".ParamLeafRightUpLegRoll2" 0.22;
	setAttr ".ParamLeafRightLegRoll2" 0.4;
	setAttr ".ParamLeafLeftArmRoll2" 0.22;
	setAttr ".ParamLeafLeftForeArmRoll2" 0.4;
	setAttr ".ParamLeafRightArmRoll2" 0.22;
	setAttr ".ParamLeafRightForeArmRoll2" 0.4;
	setAttr ".ParamLeafLeftUpLegRoll3" 0.44;
	setAttr ".ParamLeafLeftLegRoll3" 0.6;
	setAttr ".ParamLeafRightUpLegRoll3" 0.44;
	setAttr ".ParamLeafRightLegRoll3" 0.6;
	setAttr ".ParamLeafLeftArmRoll3" 0.44;
	setAttr ".ParamLeafLeftForeArmRoll3" 0.6;
	setAttr ".ParamLeafRightArmRoll3" 0.44;
	setAttr ".ParamLeafRightForeArmRoll3" 0.6;
	setAttr ".ParamLeafLeftUpLegRoll4" 0.66;
	setAttr ".ParamLeafLeftLegRoll4" 0.8;
	setAttr ".ParamLeafRightUpLegRoll4" 0.66;
	setAttr ".ParamLeafRightLegRoll4" 0.8;
	setAttr ".ParamLeafLeftArmRoll4" 0.66;
	setAttr ".ParamLeafLeftForeArmRoll4" 0.8;
	setAttr ".ParamLeafRightArmRoll4" 0.66;
	setAttr ".ParamLeafRightForeArmRoll4" 0.8;
	setAttr ".ParamLeafLeftUpLegRoll5" 0.9;
	setAttr ".ParamLeafLeftLegRoll5" 1;
	setAttr ".ParamLeafRightUpLegRoll5" 0.9;
	setAttr ".ParamLeafRightLegRoll5" 1;
	setAttr ".ParamLeafLeftArmRoll5" 0.9;
	setAttr ".ParamLeafLeftForeArmRoll5" 1;
	setAttr ".ParamLeafRightArmRoll5" 0.9;
	setAttr ".ParamLeafRightForeArmRoll5" 1;
createNode renderLayerManager -n "ShooterPlayerModel:CargoPants:renderLayerManager";
	rename -uid "DF502612-4796-DC4D-6FE4-82B8AF089CF6";
createNode renderLayer -n "ShooterPlayerModel:CargoPants:defaultRenderLayer";
	rename -uid "058A95E2-45EB-E5D1-831C-81B3EBA88B29";
	setAttr ".g" yes;
createNode script -n "ShooterPlayerModel:CargoPants:uiConfigurationScriptNode";
	rename -uid "53ADF215-4F22-CC4F-ABEA-088A031ED78F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 566\n            -height 349\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 566\n            -height 348\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 566\n            -height 348\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1139\n            -height 741\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1139\\n    -height 741\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1139\\n    -height 741\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "ShooterPlayerModel:CargoPants:sceneConfigurationScriptNode";
	rename -uid "CF6A6BED-4E5E-2C37-2060-7ABA277F8FD8";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 120 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode renderLayerManager -n "ShooterPlayerModel:HumanBody:renderLayerManager";
	rename -uid "71544F62-45DB-A0C4-3B64-F49C696B6296";
createNode renderLayer -n "ShooterPlayerModel:HumanBody:defaultRenderLayer";
	rename -uid "9DC78369-47ED-3C83-1B87-BDB2BF56B2E0";
	setAttr ".g" yes;
createNode renderLayerManager -n "ShooterPlayerModel:MensBusinessShoes:renderLayerManager";
	rename -uid "25F534FE-4BCE-28DF-9679-679912FF6918";
createNode renderLayer -n "ShooterPlayerModel:MensBusinessShoes:defaultRenderLayer";
	rename -uid "3F047565-43C0-AB7B-7CFE-4EB2402E44FB";
	setAttr ".g" yes;
createNode renderLayerManager -n "ShooterPlayerModel:SportsJacket:renderLayerManager";
	rename -uid "424B272C-4668-5BCE-BACB-71956A80E493";
createNode renderLayer -n "ShooterPlayerModel:SportsJacket:defaultRenderLayer";
	rename -uid "E8DC5F66-409A-9152-5831-C2ACDF1E772F";
	setAttr ".g" yes;
createNode renderLayerManager -n "ShooterPlayerModel:BaseballCap:renderLayerManager";
	rename -uid "4ED9DDA1-405E-948F-1E08-B09652DAAFE6";
createNode renderLayer -n "ShooterPlayerModel:BaseballCap:defaultRenderLayer";
	rename -uid "3843A929-4972-81BC-8783-F9BA609207AE";
	setAttr ".g" yes;
createNode renderLayerManager -n "ShooterPlayerModel:AssaultRifle:renderLayerManager";
	rename -uid "F84C6198-4266-F043-7C2D-7AA9119AAC73";
createNode renderLayer -n "ShooterPlayerModel:AssaultRifle:defaultRenderLayer";
	rename -uid "F4DD99B2-4BEE-B105-0D5F-E7BCE5052C07";
	setAttr ".g" yes;
createNode renderLayerManager -n "ShooterPlayerModel:SpaceMarineRifle:renderLayerManager";
	rename -uid "24A48B1D-4F83-A995-7994-0D946E366AD1";
createNode renderLayer -n "ShooterPlayerModel:SpaceMarineRifle:defaultRenderLayer";
	rename -uid "829D0144-4281-BF2E-1E3B-3AABFD52DCC0";
	setAttr ".g" yes;
createNode renderLayerManager -n "ShooterPlayerModel:LongPants_Business:renderLayerManager";
	rename -uid "ED45A5E2-43CD-5944-BA34-72959B65A753";
createNode renderLayer -n "ShooterPlayerModel:LongPants_Business:defaultRenderLayer";
	rename -uid "0511D7C9-4E4E-B528-0A01-4DAC89E2AD23";
	setAttr ".g" yes;
createNode renderLayerManager -n "ShooterPlayerModel:LongsleeveThickSweater:renderLayerManager";
	rename -uid "47D42757-4D83-DD72-4937-8A9A0BB650B7";
createNode renderLayer -n "ShooterPlayerModel:LongsleeveThickSweater:defaultRenderLayer";
	rename -uid "E69A0F12-40E0-B521-B26D-EF828788FA4F";
	setAttr ".g" yes;
createNode renderLayerManager -n "ShooterPlayerModel:AnatomyHandHumanMale:renderLayerManager";
	rename -uid "00A06A98-4928-344A-D9FA-B88A210F3AC7";
createNode renderLayer -n "ShooterPlayerModel:AnatomyHandHumanMale:defaultRenderLayer";
	rename -uid "80FB2EDB-4274-40F5-38A2-66829F0F219E";
	setAttr ".g" yes;
createNode nodeGraphEditorInfo -n "ShooterPlayerModel:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "4952814D-4120-97FD-1341-4598727CDC88";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -373.35182078610586 -324.99998708566085 ;
	setAttr ".tgi[0].vh" -type "double2" 360.2565832112258 338.09522466054091 ;
createNode lambert -n "ShooterPlayerModel:lambert2";
	rename -uid "38602A0F-4790-C67D-1EC4-1ABA0EF8E441";
createNode shadingEngine -n "ShooterPlayerModel:lambert2SG";
	rename -uid "D6CC27BC-4084-4EE7-C30E-5FA4B43C99A1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "ShooterPlayerModel:materialInfo1";
	rename -uid "9DF688A0-43B1-818E-4AB0-BDB3D6281C42";
createNode lambert -n "ShooterPlayerModel:lambert3";
	rename -uid "3B9BB5A6-45E7-6B7E-0242-43AA2D7CA584";
createNode shadingEngine -n "ShooterPlayerModel:lambert3SG";
	rename -uid "64C0682C-474D-74DC-8B7F-FB888B773CA7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "ShooterPlayerModel:materialInfo2";
	rename -uid "F260F83C-4E8F-7721-35C8-4E8BFEDB6E07";
createNode file -n "ShooterPlayerModel:file1";
	rename -uid "135917C0-4555-44EE-4D7C-44A3430B525C";
	setAttr ".ftn" -type "string" "D:/Unreal/OperationSTP/Maya//sourceimages/PlayerTexture.psd";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "ShooterPlayerModel:place2dTexture1";
	rename -uid "41185774-4355-3C8A-556C-8F912C38520C";
createNode phong -n "M_UE4Man_Body1";
	rename -uid "1FDE0948-40D1-2CB3-82A3-27A26713B8E7";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.2158605 0.2158605 0.2158605 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 1;
createNode shadingEngine -n "SK_MannequinSG2";
	rename -uid "0D05E7F9-4AF1-92C7-A113-94A47058F012";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "B3239E30-44F3-C23D-20A1-85A21F992421";
createNode phong -n "M_UE4Man_ChestLogo1";
	rename -uid "D6E1957F-4733-DBCB-11B2-55BFBD152E81";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.2158605 0.2158605 0.2158605 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 1;
createNode shadingEngine -n "SK_MannequinSG3";
	rename -uid "4CB0E7EF-4C07-39C0-C36D-CA95E99FDAFD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "16C05B10-44D2-8CC4-3173-A19F9344C3ED";
createNode dagPose -n "bindPose2";
	rename -uid "2386A267-4375-01F2-FB65-28B978235EFB";
	setAttr -s 69 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 69 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 1.5707634367554342 -1.5671422034631988
		 -1.5707634367554342 0 1.3536841578012896e-28 1.0561532974243164 96.750602722167969 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 1.2325947684707383e-32 0 -0.12485832961148678 0 10.808877944946289
		 -0.85141515731811523 -6.0910938836158945e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -1.2325947684707383e-32 0 0.24545531851798094 0 18.875349044799805
		 3.8011586666107178 5.966093397091754e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -1.2325950967306865e-32 0 0.048509974437308506 0 13.407328605651855
		 0.42047739028930664 -5.5752391635646714e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 1.8975073366875284 1.0795485668544442
		 1.7722235837366582 0 11.883687973022461 -2.7320878505706787 -3.7819831371307373 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0.13393484865966759 0.70337699630172468
		 -0.29707255696308543 0 15.784872055053711 1.4317954599718519e-09 6.3591301113774534e-09 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -0.063063642129508754 -0.18146776338848566
		 -0.52989705170779533 0 30.339929580688477 8.4074702755287944e-09 3.197527576048742e-09 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -1.3326667152902079 0.043629881542549626
		 -0.007200721534383496 0 26.975143432617188 1.5729675340026006e-09 -9.6207486421917565e-09 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0.25947757738179111 -0.065690513488546459
		 0.44570324450527143 0 12.068114280700684 1.7634615898132324 -2.1093976497650146 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0.02334935224224299 -0.0082954165012038197
		 0.20919776179136759 0 4.2874979972839355 -2.9850326654923265e-08 5.0484132430028694e-09 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0.019850799130097928 0.017405628178214682
		 -0.16574226320475852 0 3.3937902450561523 1.1695448165482958e-08 -2.3492283673931524e-09 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0.03347282025217739 -0.12288104901540063
		 0.39838632878561558 0 12.244280815124512 1.293643593788147 0.57116198539733887 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 -0.035342090940709406 0.019841550887093707
		 0.21433887776246788 0 4.6403741836547852 -3.648182200777228e-09 1.8308625726604077e-09 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0.013638832326460591 -0.076619144561579686
		 -0.26877645373623671 0 3.64884352684021 -1.9989442989754025e-08 1.6076349140803359e-09 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 -0.32680588500646585 -0.33046004162767717
		 0.35230981363317782 0 10.140665054321289 2.2631511688232422 4.6431479454040527 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0.018567396833653521 -0.022963046161964783
		 0.19561753773424018 0 3.5709807872772217 1.8669879864319228e-08 3.9181813349387085e-10 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0.0077789151331343655 0.067538376939222364
		 0.018133954882675517 0 2.9856307506561279 -3.0058785682740563e-08 -4.0375418564053689e-09 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 -0.2357987796291377 -0.19179868124436422
		 0.40652358420683909 0 11.497884750366211 1.7535265684127808 2.8469123840332031 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0.0052596547276359262 -0.029142497433167932
		 0.23239850548359497 0 4.4301772117614746 4.6665036279591732e-09 -9.4033403286175599e-10 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 -0.0062965237286933019 0.052144644209481048
		 -0.22514179098729256 0 3.4766523838043213 -1.6786358969511639e-08 2.7686510861713032e-09 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 1.6592694676845279 0.64435761812004255
		 0.47221930750426799 0 4.7620363235473633 2.3749806880950928 -2.5378196239471436 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0.028154612390965252 0.17162238973359897
		 0.26444046129693782 0 3.8696718215942383 5.0118700301027275e-09 9.9849728485423839e-09 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0.042145585353750771 0.0083636038280828547
		 -0.21617045015741307 0 4.062171459197998 1.0721912246935972e-09 -5.1272763812448829e-10 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 5.5511133399836397e-17 0 -5.5511133399836397e-17 0 14
		 3.5527136788005009e-15 1.4210854715202004e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 3.4694458374897748e-18 0 0 0 0.5
		 -3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 1.8975073366875284 1.0795485668544442
		 -1.369368537220917 0 11.8837890625 -2.7321023941040039 3.7820026874542236 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0.13393484865966759 0.70337699630172468
		 -0.29707255696308543 0 -15.784797668457031 -7.0139599301910494e-06 -1.1171471669513267e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 -0.063063642129508754 -0.18146776338848566
		 -0.52989705170779533 0 -30.340049743652344 -4.0850213736121077e-06 1.7513536931801355e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 -1.3326667152902079 0.043629881542549626
		 -0.007200721534383496 0 -26.975244522094727 2.5634119083406404e-05 -1.1905384553756448e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0.25947757738179111 -0.065690513488546459
		 0.44570324450527143 0 -12.067941665649414 -1.7637253999710083 2.1094281673431396 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0.02334935224224299 -0.0082954165012038197
		 0.20919776179136759 0 -4.2876882553100586 9.2459835286717862e-05 -7.4262097768951207e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0.019850799130097928 0.017405628178214682
		 -0.16574226320475852 0 -3.3937981128692627 0.00012069699005223811 -1.2407956091919914e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0.03347282025217739 -0.12288104901540063
		 0.39838632878561558 0 -12.244112968444824 -1.2937241792678833 -0.57113021612167358 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 -0.035342090940709406 0.019841550887093707
		 0.21433887776246788 0 -4.640568733215332 -0.00014491056208498776 7.6369551607058384e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0.013638832326460591 -0.076619144561579686
		 -0.26877645373623671 0 -3.6489090919494629 3.2996809750329703e-05 -2.2666431505058426e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 -0.32680588500646585 -0.33046004162767717
		 0.35230981363317782 0 -10.140592575073242 -2.2633547782897949 -4.643094539642334 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0.018567396833653521 -0.022963046161964783
		 0.19561753773424018 0 -3.5710570812225342 -7.8019678767304868e-05 -8.1079842857434414e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0.0077789406204182348 0.067538376939222364
		 0.018133956963270116 0 -2.9854192733764648 0.00031727668829262257 -3.5056928027188405e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 -0.2357987796291377 -0.19179868124436422
		 0.40652358420683909 0 -11.497973442077637 -1.7537660598754883 -2.8469147682189941 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0.0052596547276359262 -0.029142497433167932
		 0.23239850548359497 0 -4.4298644065856934 8.4479885117616504e-05 -1.837869785958901e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 -0.0062965237286933019 0.052144644209481048
		 -0.22514179098729256 0 -3.476658821105957 7.1941642090678215e-05 -2.8431277314666659e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 1.6592694676845279 0.64435761812004255
		 0.47221930750426799 0 -4.7621245384216309 -2.3751199245452881 2.5378017425537109 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0.02815464776107348 0.17162238973359897
		 0.26444049458645147 0 -3.8695690631866455 0.00011357050243532285 5.5954889830900356e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0.042145552064237146 0.0083634847140419133
		 -0.21617045015741307 0 -4.0621762275695801 2.0121733541600406e-06 3.2049592846306041e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 -0.23580044410481898 0 -2.7755568547857425e-17 0 -14
		 2.4331944587174803e-05 -6.578326974704396e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 -0.34822638873375933 0 3.4694456064973719e-18 0 -0.5
		 -3.700793968164362e-06 -1.1559803851923789e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 0 -0.4102928559661691 0 16.558782577514648
		 -0.35531756281852722 -5.9659740259121463e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0.2678844778633851 0 9.2836132049560547
		 0.36415687203407288 2.9273693708751483e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0.14946067834066604 -0.12273668903956153
		 -0.026449945863746147 0 -1.4488286972045898 -0.53142350912094116 -9.0058097839355469 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 -0.10011162922884682 0.03119385135826111
		 -0.13288210940313766 0 -42.572036743164063 1.7074197611322006e-10 -4.6678749754391902e-10 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0.0056472003221480493 -0.0038238761844266804
		 -0.015236412730128686 0 -20.476776123046875 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 -0.0072498610176846617 0.064663286483021651
		 0.14066617140716781 0 -40.196689605712891 -3.9338505786190581e-09 1.8994583683706878e-10 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 6.8835098877213452e-05 0.0001562833758616574
		 -1.6036710530811071 0 -10.453837394714355 -16.577854156494141 0.080155946314334869 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 -0.094922826029477311 -3.6954877731689336e-06
		 -0.00098314921877789706 0 -22.09423828125 3.3306690738754696e-16 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 0.14946067834066604 -0.12273668903956153
		 3.1151426702753442 0 -1.4486445188522339 -0.53142756223678589 9.005803108215332 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[57]" -type "matrix" "xform" 1 1 1 -0.10011162922884682 0.03119385135826111
		 -0.13288210940313766 0 42.572250366210938 -1.6233628912232234e-06 -5.8367555766380974e-07 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[58]" -type "matrix" "xform" 1 1 1 0.0056438770924206044 -0.0038245913888209889
		 -0.015236093358857337 0 20.476907730102539 0 -3.5527136788005009e-15 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[59]" -type "matrix" "xform" 1 1 1 -0.0072498610176846617 0.064663286483021651
		 0.14066617140716781 0 40.196819305419922 1.6769354260759428e-06 -1.0918018233496696e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[60]" -type "matrix" "xform" 1 1 1 6.8835098877213452e-05 0.0001562833758616574
		 -1.6036710530811071 0 10.453816413879395 16.577796936035156 -0.080158449709415436 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[61]" -type "matrix" "xform" 1 1 1 -0.094926163303218319 -2.8610227921307873e-06
		 -0.00098332958032242533 0 22.094240188598633 2.2204460492503131e-16 -3.5527136788005009e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[62]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[63]" -type "matrix" "xform" 1 1 1 2.4752433835571761 -1.5512097090837453
		 -2.4296234340841187 0 17.076271057128906 8.0721273422241211 13.465730667114258 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[64]" -type "matrix" "xform" 1 1 1 -0.66634720608277231 1.5512097090837453
		 2.4296234340841187 0 -17.076288223266602 8.072148323059082 13.465573310852051 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[65]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[66]" -type "matrix" "xform" 1 1 1 1.2927307505317067 -0.61387793918116751
		 0.57161377241869171 0 -56.646099090576172 0.33541175723075867 111.67965698242188 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[67]" -type "matrix" "xform" 1 1 1 -2.5446956953092434 -0.56145055048770409
		 -1.6355308486758886 0 77.885429382324219 -69.601913452148438 43.869503021240234 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[68]" -type "matrix" "xform" 1 1 1 -4.7184464129036625e-16 0 -5.5511133399836397e-17 0 -3.5527136788005009e-14
		 0 3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr -s 69 ".m";
	setAttr -s 69 ".p";
	setAttr -s 69 ".g[0:68]" yes no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no;
	setAttr ".bp" yes;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 8 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
	setAttr -s 12 ".r";
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "SK_Mannequin.s" "root.is";
connectAttr "root.s" "pelvis.is";
connectAttr "pelvis.s" "spine_01.is";
connectAttr "spine_01.s" "spine_02.is";
connectAttr "spine_02.s" "spine_03.is";
connectAttr "spine_03.s" "clavicle_l.is";
connectAttr "clavicle_l.s" "upperarm_l.is";
connectAttr "upperarm_l.s" "lowerarm_l.is";
connectAttr "lowerarm_l.s" "hand_l.is";
connectAttr "hand_l.s" "index_01_l.is";
connectAttr "index_01_l.s" "index_02_l.is";
connectAttr "index_02_l.s" "index_03_l.is";
connectAttr "hand_l.s" "middle_01_l.is";
connectAttr "middle_01_l.s" "middle_02_l.is";
connectAttr "middle_02_l.s" "middle_03_l.is";
connectAttr "hand_l.s" "pinky_01_l.is";
connectAttr "pinky_01_l.s" "pinky_02_l.is";
connectAttr "pinky_02_l.s" "pinky_03_l.is";
connectAttr "hand_l.s" "ring_01_l.is";
connectAttr "ring_01_l.s" "ring_02_l.is";
connectAttr "ring_02_l.s" "ring_03_l.is";
connectAttr "hand_l.s" "thumb_01_l.is";
connectAttr "thumb_01_l.s" "thumb_02_l.is";
connectAttr "thumb_02_l.s" "thumb_03_l.is";
connectAttr "lowerarm_l.s" "lowerarm_twist_01_l.is";
connectAttr "upperarm_l.s" "upperarm_twist_01_l.is";
connectAttr "spine_03.s" "clavicle_r.is";
connectAttr "clavicle_r.s" "upperarm_r.is";
connectAttr "upperarm_r.s" "lowerarm_r.is";
connectAttr "lowerarm_r.s" "hand_r.is";
connectAttr "hand_r.s" "index_01_r.is";
connectAttr "index_01_r.s" "index_02_r.is";
connectAttr "index_02_r.s" "index_03_r.is";
connectAttr "hand_r.s" "middle_01_r.is";
connectAttr "middle_01_r.s" "middle_02_r.is";
connectAttr "middle_02_r.s" "middle_03_r.is";
connectAttr "hand_r.s" "pinky_01_r.is";
connectAttr "pinky_01_r.s" "pinky_02_r.is";
connectAttr "pinky_02_r.s" "pinky_03_r.is";
connectAttr "hand_r.s" "ring_01_r.is";
connectAttr "ring_01_r.s" "ring_02_r.is";
connectAttr "ring_02_r.s" "ring_03_r.is";
connectAttr "hand_r.s" "thumb_01_r.is";
connectAttr "thumb_01_r.s" "thumb_02_r.is";
connectAttr "thumb_02_r.s" "thumb_03_r.is";
connectAttr "lowerarm_r.s" "lowerarm_twist_01_r.is";
connectAttr "upperarm_r.s" "upperarm_twist_01_r.is";
connectAttr "spine_03.s" "neck_01.is";
connectAttr "neck_01.s" "head.is";
connectAttr "pelvis.s" "thigh_l.is";
connectAttr "thigh_l.s" "calf_l.is";
connectAttr "calf_l.s" "calf_twist_01_l.is";
connectAttr "calf_l.s" "foot_l.is";
connectAttr "foot_l.s" "ball_l.is";
connectAttr "thigh_l.s" "thigh_twist_01_l.is";
connectAttr "pelvis.s" "thigh_r.is";
connectAttr "thigh_r.s" "calf_r.is";
connectAttr "calf_r.s" "calf_twist_01_r.is";
connectAttr "calf_r.s" "foot_r.is";
connectAttr "foot_r.s" "ball_r.is";
connectAttr "thigh_r.s" "thigh_twist_01_r.is";
connectAttr "root.s" "ik_foot_root.is";
connectAttr "ik_foot_root.s" "ik_foot_l.is";
connectAttr "ik_foot_root.s" "ik_foot_r.is";
connectAttr "root.s" "ik_hand_root.is";
connectAttr "ik_hand_root.s" "ik_hand_gun.is";
connectAttr "ik_hand_gun.s" "ik_hand_l.is";
connectAttr "ik_hand_gun.s" "ik_hand_r.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SK_MannequinSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SK_MannequinSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ShooterPlayerModel:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ShooterPlayerModel:lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SK_MannequinSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SK_MannequinSG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SK_MannequinSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SK_MannequinSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ShooterPlayerModel:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ShooterPlayerModel:lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SK_MannequinSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SK_MannequinSG3.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "M_UE4Man_Body.oc" "SK_MannequinSG.ss";
connectAttr "SK_MannequinSG.msg" "materialInfo1.sg";
connectAttr "M_UE4Man_Body.msg" "materialInfo1.m";
connectAttr "M_UE4Man_ChestLogo.oc" "SK_MannequinSG1.ss";
connectAttr "SK_MannequinSG1.msg" "materialInfo2.sg";
connectAttr "M_UE4Man_ChestLogo.msg" "materialInfo2.m";
connectAttr "ShooterPlayerModel:renderLayerManager.rlmi[0]" "ShooterPlayerModel:defaultRenderLayer.rlid"
		;
connectAttr "ShooterPlayerModel:HIKproperties1.msg" "ShooterPlayerModel:QuickRigCharacter.propertyState"
		;
connectAttr "ShooterPlayerModel:HIKproperties2.msg" "ShooterPlayerModel:Character1.propertyState"
		;
connectAttr "ShooterPlayerModel:CargoPants:renderLayerManager.rlmi[0]" "ShooterPlayerModel:CargoPants:defaultRenderLayer.rlid"
		;
connectAttr "ShooterPlayerModel:HumanBody:renderLayerManager.rlmi[0]" "ShooterPlayerModel:HumanBody:defaultRenderLayer.rlid"
		;
connectAttr "ShooterPlayerModel:MensBusinessShoes:renderLayerManager.rlmi[0]" "ShooterPlayerModel:MensBusinessShoes:defaultRenderLayer.rlid"
		;
connectAttr "ShooterPlayerModel:SportsJacket:renderLayerManager.rlmi[0]" "ShooterPlayerModel:SportsJacket:defaultRenderLayer.rlid"
		;
connectAttr "ShooterPlayerModel:BaseballCap:renderLayerManager.rlmi[0]" "ShooterPlayerModel:BaseballCap:defaultRenderLayer.rlid"
		;
connectAttr "ShooterPlayerModel:AssaultRifle:renderLayerManager.rlmi[0]" "ShooterPlayerModel:AssaultRifle:defaultRenderLayer.rlid"
		;
connectAttr "ShooterPlayerModel:SpaceMarineRifle:renderLayerManager.rlmi[0]" "ShooterPlayerModel:SpaceMarineRifle:defaultRenderLayer.rlid"
		;
connectAttr "ShooterPlayerModel:LongPants_Business:renderLayerManager.rlmi[0]" "ShooterPlayerModel:LongPants_Business:defaultRenderLayer.rlid"
		;
connectAttr "ShooterPlayerModel:LongsleeveThickSweater:renderLayerManager.rlmi[0]" "ShooterPlayerModel:LongsleeveThickSweater:defaultRenderLayer.rlid"
		;
connectAttr "ShooterPlayerModel:AnatomyHandHumanMale:renderLayerManager.rlmi[0]" "ShooterPlayerModel:AnatomyHandHumanMale:defaultRenderLayer.rlid"
		;
connectAttr "ShooterPlayerModel:lambert2.oc" "ShooterPlayerModel:lambert2SG.ss";
connectAttr "ShooterPlayerModel:lambert2SG.msg" "ShooterPlayerModel:materialInfo1.sg"
		;
connectAttr "ShooterPlayerModel:lambert2.msg" "ShooterPlayerModel:materialInfo1.m"
		;
connectAttr "ShooterPlayerModel:file1.oc" "ShooterPlayerModel:lambert3.c";
connectAttr "ShooterPlayerModel:lambert3.oc" "ShooterPlayerModel:lambert3SG.ss";
connectAttr "ShooterPlayerModel:PlayerShape.iog" "ShooterPlayerModel:lambert3SG.dsm"
		 -na;
connectAttr "ShooterPlayerModel:lambert3SG.msg" "ShooterPlayerModel:materialInfo2.sg"
		;
connectAttr "ShooterPlayerModel:lambert3.msg" "ShooterPlayerModel:materialInfo2.m"
		;
connectAttr "ShooterPlayerModel:file1.msg" "ShooterPlayerModel:materialInfo2.t" 
		-na;
connectAttr ":defaultColorMgtGlobals.cme" "ShooterPlayerModel:file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "ShooterPlayerModel:file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "ShooterPlayerModel:file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "ShooterPlayerModel:file1.ws";
connectAttr "ShooterPlayerModel:place2dTexture1.c" "ShooterPlayerModel:file1.c";
connectAttr "ShooterPlayerModel:place2dTexture1.tf" "ShooterPlayerModel:file1.tf"
		;
connectAttr "ShooterPlayerModel:place2dTexture1.rf" "ShooterPlayerModel:file1.rf"
		;
connectAttr "ShooterPlayerModel:place2dTexture1.mu" "ShooterPlayerModel:file1.mu"
		;
connectAttr "ShooterPlayerModel:place2dTexture1.mv" "ShooterPlayerModel:file1.mv"
		;
connectAttr "ShooterPlayerModel:place2dTexture1.s" "ShooterPlayerModel:file1.s";
connectAttr "ShooterPlayerModel:place2dTexture1.wu" "ShooterPlayerModel:file1.wu"
		;
connectAttr "ShooterPlayerModel:place2dTexture1.wv" "ShooterPlayerModel:file1.wv"
		;
connectAttr "ShooterPlayerModel:place2dTexture1.re" "ShooterPlayerModel:file1.re"
		;
connectAttr "ShooterPlayerModel:place2dTexture1.of" "ShooterPlayerModel:file1.of"
		;
connectAttr "ShooterPlayerModel:place2dTexture1.r" "ShooterPlayerModel:file1.ro"
		;
connectAttr "ShooterPlayerModel:place2dTexture1.n" "ShooterPlayerModel:file1.n";
connectAttr "ShooterPlayerModel:place2dTexture1.vt1" "ShooterPlayerModel:file1.vt1"
		;
connectAttr "ShooterPlayerModel:place2dTexture1.vt2" "ShooterPlayerModel:file1.vt2"
		;
connectAttr "ShooterPlayerModel:place2dTexture1.vt3" "ShooterPlayerModel:file1.vt3"
		;
connectAttr "ShooterPlayerModel:place2dTexture1.vc1" "ShooterPlayerModel:file1.vc1"
		;
connectAttr "ShooterPlayerModel:place2dTexture1.o" "ShooterPlayerModel:file1.uv"
		;
connectAttr "ShooterPlayerModel:place2dTexture1.ofs" "ShooterPlayerModel:file1.fs"
		;
connectAttr "M_UE4Man_Body1.oc" "SK_MannequinSG2.ss";
connectAttr "SK_MannequinSG2.msg" "materialInfo3.sg";
connectAttr "M_UE4Man_Body1.msg" "materialInfo3.m";
connectAttr "M_UE4Man_ChestLogo1.oc" "SK_MannequinSG3.ss";
connectAttr "SK_MannequinSG3.msg" "materialInfo4.sg";
connectAttr "M_UE4Man_ChestLogo1.msg" "materialInfo4.m";
connectAttr "SK_Mannequin.msg" "bindPose2.m[0]";
connectAttr "root.msg" "bindPose2.m[1]";
connectAttr "pelvis.msg" "bindPose2.m[2]";
connectAttr "spine_01.msg" "bindPose2.m[3]";
connectAttr "spine_02.msg" "bindPose2.m[4]";
connectAttr "spine_03.msg" "bindPose2.m[5]";
connectAttr "clavicle_l.msg" "bindPose2.m[6]";
connectAttr "upperarm_l.msg" "bindPose2.m[7]";
connectAttr "lowerarm_l.msg" "bindPose2.m[8]";
connectAttr "hand_l.msg" "bindPose2.m[9]";
connectAttr "index_01_l.msg" "bindPose2.m[10]";
connectAttr "index_02_l.msg" "bindPose2.m[11]";
connectAttr "index_03_l.msg" "bindPose2.m[12]";
connectAttr "middle_01_l.msg" "bindPose2.m[13]";
connectAttr "middle_02_l.msg" "bindPose2.m[14]";
connectAttr "middle_03_l.msg" "bindPose2.m[15]";
connectAttr "pinky_01_l.msg" "bindPose2.m[16]";
connectAttr "pinky_02_l.msg" "bindPose2.m[17]";
connectAttr "pinky_03_l.msg" "bindPose2.m[18]";
connectAttr "ring_01_l.msg" "bindPose2.m[19]";
connectAttr "ring_02_l.msg" "bindPose2.m[20]";
connectAttr "ring_03_l.msg" "bindPose2.m[21]";
connectAttr "thumb_01_l.msg" "bindPose2.m[22]";
connectAttr "thumb_02_l.msg" "bindPose2.m[23]";
connectAttr "thumb_03_l.msg" "bindPose2.m[24]";
connectAttr "lowerarm_twist_01_l.msg" "bindPose2.m[25]";
connectAttr "upperarm_twist_01_l.msg" "bindPose2.m[26]";
connectAttr "clavicle_r.msg" "bindPose2.m[27]";
connectAttr "upperarm_r.msg" "bindPose2.m[28]";
connectAttr "lowerarm_r.msg" "bindPose2.m[29]";
connectAttr "hand_r.msg" "bindPose2.m[30]";
connectAttr "index_01_r.msg" "bindPose2.m[31]";
connectAttr "index_02_r.msg" "bindPose2.m[32]";
connectAttr "index_03_r.msg" "bindPose2.m[33]";
connectAttr "middle_01_r.msg" "bindPose2.m[34]";
connectAttr "middle_02_r.msg" "bindPose2.m[35]";
connectAttr "middle_03_r.msg" "bindPose2.m[36]";
connectAttr "pinky_01_r.msg" "bindPose2.m[37]";
connectAttr "pinky_02_r.msg" "bindPose2.m[38]";
connectAttr "pinky_03_r.msg" "bindPose2.m[39]";
connectAttr "ring_01_r.msg" "bindPose2.m[40]";
connectAttr "ring_02_r.msg" "bindPose2.m[41]";
connectAttr "ring_03_r.msg" "bindPose2.m[42]";
connectAttr "thumb_01_r.msg" "bindPose2.m[43]";
connectAttr "thumb_02_r.msg" "bindPose2.m[44]";
connectAttr "thumb_03_r.msg" "bindPose2.m[45]";
connectAttr "lowerarm_twist_01_r.msg" "bindPose2.m[46]";
connectAttr "upperarm_twist_01_r.msg" "bindPose2.m[47]";
connectAttr "neck_01.msg" "bindPose2.m[48]";
connectAttr "head.msg" "bindPose2.m[49]";
connectAttr "thigh_l.msg" "bindPose2.m[50]";
connectAttr "calf_l.msg" "bindPose2.m[51]";
connectAttr "calf_twist_01_l.msg" "bindPose2.m[52]";
connectAttr "foot_l.msg" "bindPose2.m[53]";
connectAttr "ball_l.msg" "bindPose2.m[54]";
connectAttr "thigh_twist_01_l.msg" "bindPose2.m[55]";
connectAttr "thigh_r.msg" "bindPose2.m[56]";
connectAttr "calf_r.msg" "bindPose2.m[57]";
connectAttr "calf_twist_01_r.msg" "bindPose2.m[58]";
connectAttr "foot_r.msg" "bindPose2.m[59]";
connectAttr "ball_r.msg" "bindPose2.m[60]";
connectAttr "thigh_twist_01_r.msg" "bindPose2.m[61]";
connectAttr "ik_foot_root.msg" "bindPose2.m[62]";
connectAttr "ik_foot_l.msg" "bindPose2.m[63]";
connectAttr "ik_foot_r.msg" "bindPose2.m[64]";
connectAttr "ik_hand_root.msg" "bindPose2.m[65]";
connectAttr "ik_hand_gun.msg" "bindPose2.m[66]";
connectAttr "ik_hand_l.msg" "bindPose2.m[67]";
connectAttr "ik_hand_r.msg" "bindPose2.m[68]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "bindPose2.m[4]" "bindPose2.p[5]";
connectAttr "bindPose2.m[5]" "bindPose2.p[6]";
connectAttr "bindPose2.m[6]" "bindPose2.p[7]";
connectAttr "bindPose2.m[7]" "bindPose2.p[8]";
connectAttr "bindPose2.m[8]" "bindPose2.p[9]";
connectAttr "bindPose2.m[9]" "bindPose2.p[10]";
connectAttr "bindPose2.m[10]" "bindPose2.p[11]";
connectAttr "bindPose2.m[11]" "bindPose2.p[12]";
connectAttr "bindPose2.m[9]" "bindPose2.p[13]";
connectAttr "bindPose2.m[13]" "bindPose2.p[14]";
connectAttr "bindPose2.m[14]" "bindPose2.p[15]";
connectAttr "bindPose2.m[9]" "bindPose2.p[16]";
connectAttr "bindPose2.m[16]" "bindPose2.p[17]";
connectAttr "bindPose2.m[17]" "bindPose2.p[18]";
connectAttr "bindPose2.m[9]" "bindPose2.p[19]";
connectAttr "bindPose2.m[19]" "bindPose2.p[20]";
connectAttr "bindPose2.m[20]" "bindPose2.p[21]";
connectAttr "bindPose2.m[9]" "bindPose2.p[22]";
connectAttr "bindPose2.m[22]" "bindPose2.p[23]";
connectAttr "bindPose2.m[23]" "bindPose2.p[24]";
connectAttr "bindPose2.m[8]" "bindPose2.p[25]";
connectAttr "bindPose2.m[7]" "bindPose2.p[26]";
connectAttr "bindPose2.m[5]" "bindPose2.p[27]";
connectAttr "bindPose2.m[27]" "bindPose2.p[28]";
connectAttr "bindPose2.m[28]" "bindPose2.p[29]";
connectAttr "bindPose2.m[29]" "bindPose2.p[30]";
connectAttr "bindPose2.m[30]" "bindPose2.p[31]";
connectAttr "bindPose2.m[31]" "bindPose2.p[32]";
connectAttr "bindPose2.m[32]" "bindPose2.p[33]";
connectAttr "bindPose2.m[30]" "bindPose2.p[34]";
connectAttr "bindPose2.m[34]" "bindPose2.p[35]";
connectAttr "bindPose2.m[35]" "bindPose2.p[36]";
connectAttr "bindPose2.m[30]" "bindPose2.p[37]";
connectAttr "bindPose2.m[37]" "bindPose2.p[38]";
connectAttr "bindPose2.m[38]" "bindPose2.p[39]";
connectAttr "bindPose2.m[30]" "bindPose2.p[40]";
connectAttr "bindPose2.m[40]" "bindPose2.p[41]";
connectAttr "bindPose2.m[41]" "bindPose2.p[42]";
connectAttr "bindPose2.m[30]" "bindPose2.p[43]";
connectAttr "bindPose2.m[43]" "bindPose2.p[44]";
connectAttr "bindPose2.m[44]" "bindPose2.p[45]";
connectAttr "bindPose2.m[29]" "bindPose2.p[46]";
connectAttr "bindPose2.m[28]" "bindPose2.p[47]";
connectAttr "bindPose2.m[5]" "bindPose2.p[48]";
connectAttr "bindPose2.m[48]" "bindPose2.p[49]";
connectAttr "bindPose2.m[2]" "bindPose2.p[50]";
connectAttr "bindPose2.m[50]" "bindPose2.p[51]";
connectAttr "bindPose2.m[51]" "bindPose2.p[52]";
connectAttr "bindPose2.m[51]" "bindPose2.p[53]";
connectAttr "bindPose2.m[53]" "bindPose2.p[54]";
connectAttr "bindPose2.m[50]" "bindPose2.p[55]";
connectAttr "bindPose2.m[2]" "bindPose2.p[56]";
connectAttr "bindPose2.m[56]" "bindPose2.p[57]";
connectAttr "bindPose2.m[57]" "bindPose2.p[58]";
connectAttr "bindPose2.m[57]" "bindPose2.p[59]";
connectAttr "bindPose2.m[59]" "bindPose2.p[60]";
connectAttr "bindPose2.m[56]" "bindPose2.p[61]";
connectAttr "bindPose2.m[1]" "bindPose2.p[62]";
connectAttr "bindPose2.m[62]" "bindPose2.p[63]";
connectAttr "bindPose2.m[62]" "bindPose2.p[64]";
connectAttr "bindPose2.m[1]" "bindPose2.p[65]";
connectAttr "bindPose2.m[65]" "bindPose2.p[66]";
connectAttr "bindPose2.m[66]" "bindPose2.p[67]";
connectAttr "bindPose2.m[66]" "bindPose2.p[68]";
connectAttr "root.bps" "bindPose2.wm[1]";
connectAttr "pelvis.bps" "bindPose2.wm[2]";
connectAttr "spine_01.bps" "bindPose2.wm[3]";
connectAttr "spine_02.bps" "bindPose2.wm[4]";
connectAttr "spine_03.bps" "bindPose2.wm[5]";
connectAttr "clavicle_l.bps" "bindPose2.wm[6]";
connectAttr "upperarm_l.bps" "bindPose2.wm[7]";
connectAttr "lowerarm_l.bps" "bindPose2.wm[8]";
connectAttr "hand_l.bps" "bindPose2.wm[9]";
connectAttr "index_01_l.bps" "bindPose2.wm[10]";
connectAttr "index_02_l.bps" "bindPose2.wm[11]";
connectAttr "index_03_l.bps" "bindPose2.wm[12]";
connectAttr "middle_01_l.bps" "bindPose2.wm[13]";
connectAttr "middle_02_l.bps" "bindPose2.wm[14]";
connectAttr "middle_03_l.bps" "bindPose2.wm[15]";
connectAttr "pinky_01_l.bps" "bindPose2.wm[16]";
connectAttr "pinky_02_l.bps" "bindPose2.wm[17]";
connectAttr "pinky_03_l.bps" "bindPose2.wm[18]";
connectAttr "ring_01_l.bps" "bindPose2.wm[19]";
connectAttr "ring_02_l.bps" "bindPose2.wm[20]";
connectAttr "ring_03_l.bps" "bindPose2.wm[21]";
connectAttr "thumb_01_l.bps" "bindPose2.wm[22]";
connectAttr "thumb_02_l.bps" "bindPose2.wm[23]";
connectAttr "thumb_03_l.bps" "bindPose2.wm[24]";
connectAttr "lowerarm_twist_01_l.bps" "bindPose2.wm[25]";
connectAttr "upperarm_twist_01_l.bps" "bindPose2.wm[26]";
connectAttr "clavicle_r.bps" "bindPose2.wm[27]";
connectAttr "upperarm_r.bps" "bindPose2.wm[28]";
connectAttr "lowerarm_r.bps" "bindPose2.wm[29]";
connectAttr "hand_r.bps" "bindPose2.wm[30]";
connectAttr "index_01_r.bps" "bindPose2.wm[31]";
connectAttr "index_02_r.bps" "bindPose2.wm[32]";
connectAttr "index_03_r.bps" "bindPose2.wm[33]";
connectAttr "middle_01_r.bps" "bindPose2.wm[34]";
connectAttr "middle_02_r.bps" "bindPose2.wm[35]";
connectAttr "middle_03_r.bps" "bindPose2.wm[36]";
connectAttr "pinky_01_r.bps" "bindPose2.wm[37]";
connectAttr "pinky_02_r.bps" "bindPose2.wm[38]";
connectAttr "pinky_03_r.bps" "bindPose2.wm[39]";
connectAttr "ring_01_r.bps" "bindPose2.wm[40]";
connectAttr "ring_02_r.bps" "bindPose2.wm[41]";
connectAttr "ring_03_r.bps" "bindPose2.wm[42]";
connectAttr "thumb_01_r.bps" "bindPose2.wm[43]";
connectAttr "thumb_02_r.bps" "bindPose2.wm[44]";
connectAttr "thumb_03_r.bps" "bindPose2.wm[45]";
connectAttr "lowerarm_twist_01_r.bps" "bindPose2.wm[46]";
connectAttr "upperarm_twist_01_r.bps" "bindPose2.wm[47]";
connectAttr "neck_01.bps" "bindPose2.wm[48]";
connectAttr "head.bps" "bindPose2.wm[49]";
connectAttr "thigh_l.bps" "bindPose2.wm[50]";
connectAttr "calf_l.bps" "bindPose2.wm[51]";
connectAttr "calf_twist_01_l.bps" "bindPose2.wm[52]";
connectAttr "foot_l.bps" "bindPose2.wm[53]";
connectAttr "ball_l.bps" "bindPose2.wm[54]";
connectAttr "thigh_twist_01_l.bps" "bindPose2.wm[55]";
connectAttr "thigh_r.bps" "bindPose2.wm[56]";
connectAttr "calf_r.bps" "bindPose2.wm[57]";
connectAttr "calf_twist_01_r.bps" "bindPose2.wm[58]";
connectAttr "foot_r.bps" "bindPose2.wm[59]";
connectAttr "ball_r.bps" "bindPose2.wm[60]";
connectAttr "thigh_twist_01_r.bps" "bindPose2.wm[61]";
connectAttr "ik_foot_root.bps" "bindPose2.wm[62]";
connectAttr "ik_foot_l.bps" "bindPose2.wm[63]";
connectAttr "ik_foot_r.bps" "bindPose2.wm[64]";
connectAttr "ik_hand_root.bps" "bindPose2.wm[65]";
connectAttr "ik_hand_gun.bps" "bindPose2.wm[66]";
connectAttr "ik_hand_l.bps" "bindPose2.wm[67]";
connectAttr "ik_hand_r.bps" "bindPose2.wm[68]";
connectAttr "SK_MannequinSG.pa" ":renderPartition.st" -na;
connectAttr "SK_MannequinSG1.pa" ":renderPartition.st" -na;
connectAttr "ShooterPlayerModel:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "ShooterPlayerModel:lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "SK_MannequinSG2.pa" ":renderPartition.st" -na;
connectAttr "SK_MannequinSG3.pa" ":renderPartition.st" -na;
connectAttr "M_UE4Man_Body.msg" ":defaultShaderList1.s" -na;
connectAttr "M_UE4Man_ChestLogo.msg" ":defaultShaderList1.s" -na;
connectAttr "ShooterPlayerModel:lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "ShooterPlayerModel:lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "M_UE4Man_Body1.msg" ":defaultShaderList1.s" -na;
connectAttr "M_UE4Man_ChestLogo1.msg" ":defaultShaderList1.s" -na;
connectAttr "ShooterPlayerModel:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ShooterPlayerModel:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "ShooterPlayerModel:CargoPants:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "ShooterPlayerModel:HumanBody:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "ShooterPlayerModel:MensBusinessShoes:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "ShooterPlayerModel:SportsJacket:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "ShooterPlayerModel:BaseballCap:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "ShooterPlayerModel:AssaultRifle:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "ShooterPlayerModel:SpaceMarineRifle:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "ShooterPlayerModel:LongPants_Business:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "ShooterPlayerModel:LongsleeveThickSweater:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "ShooterPlayerModel:AnatomyHandHumanMale:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "ShooterPlayerModel:file1.msg" ":defaultTextureList1.tx" -na;
// End of TestRig12.ma
