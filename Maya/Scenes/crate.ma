//Maya ASCII 2018 scene
//Name: crate.ma
//Last modified: Fri, Dec 07, 2018 04:47:00 PM
//Codeset: 1252
requires maya "2018";
requires -nodeType "HIKCharacterNode" -nodeType "HIKProperty2State" -dataType "HIKCharacter"
		 -dataType "HIKCharacterState" -dataType "HIKEffectorState" -dataType "HIKPropertySetState"
		 "mayaHIK" "1.0_HIK_2016.5";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 , 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "A9DE7E50-4B83-BFAE-8E79-3DBAC34BFA5D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -294.2866095635581 -304.28989680060533 134.39770043641187 ;
	setAttr ".r" -type "double3" 75.082924915371336 -3.1805546814635183e-15 -402.00508600523227 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "5979747E-4E49-7B3C-456E-ADBD6B6A669C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 420.77040528711927;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "D34364D6-4321-01DF-FB89-8FA18851A21C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.6818336953858193 144.8293013001165 1010.5033401420275 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "669B0F86-41B6-01C6-482A-08B406502F54";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 891.31243539028594;
	setAttr ".ow" 93.060245770770265;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 81.326811927446016 145.44227499982043 119.19090475174156 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "93ECB68E-4AFD-89EB-BFA8-C38ED36477F2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.7739466269739133 -1007.6296162140284 89.081203662470074 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1C0D1EF8-44CE-BA71-9F69-9192EC4CA979";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1153.0718912138489;
	setAttr ".ow" 294.89271569891275;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 81.326811927446016 145.44227499982043 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "A2C2847A-4E5B-2652-C102-E9AEF79D7B50";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 90 1.2722218725854067e-14 89.999999999999986 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6FCA2E3F-4522-976E-3932-6391DA4A0654";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Crate";
	rename -uid "7A6F94E2-47C6-D49F-84E8-E58E8BB23E7D";
	setAttr ".rp" -type "double3" 0 0 51.914046054422172 ;
	setAttr ".sp" -type "double3" 0 0 51.914046054422172 ;
createNode mesh -n "CrateShape" -p "Crate";
	rename -uid "B1285DBD-43A1-0D12-4E11-6CA6C1738547";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50003847626449249 0.49950182911765073 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D6634A51-4E82-19D3-EE95-EABA0112A00B";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "70839041-492A-6FDF-3219-B9AB1E4D9A72";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "FEDE9E66-4D96-A1CA-FC49-63BE970640FE";
createNode displayLayerManager -n "layerManager";
	rename -uid "B42ABFAB-4AF4-4865-F599-ECBFF6AA8945";
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "D0A606D8-4B43-7E79-D3E5-01ACEB7BC5C4";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "21ECC2D7-41E2-B975-62D4-18937A6F6E73";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "984C5F86-4951-B4BD-28DE-BB83251B1615";
	setAttr ".g" yes;
createNode renderLayerManager -n "Enemy:renderLayerManager";
	rename -uid "1FF6B670-4CF3-7C5F-3DE2-F985530BF2BC";
createNode renderLayer -n "Enemy:defaultRenderLayer";
	rename -uid "07845960-40B8-B274-6E06-85A55B8093FB";
	setAttr ".g" yes;
createNode script -n "Enemy:uiConfigurationScriptNode";
	rename -uid "4A300C38-4E61-9474-FAB8-00AC1749E976";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 349\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 555\n            -height 348\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 348\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1118\n            -height 741\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n"
		+ "                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n"
		+ "                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1118\\n    -height 741\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1118\\n    -height 741\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "Enemy:sceneConfigurationScriptNode";
	rename -uid "12D7E2DF-4618-9F52-A64B-36BCAC711F99";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 120 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode renderLayerManager -n "Enemy:ShooterPlayerModel:renderLayerManager";
	rename -uid "C8930B1F-4331-327E-8A2A-1DBB9695C818";
createNode renderLayer -n "Enemy:ShooterPlayerModel:defaultRenderLayer";
	rename -uid "DBC91715-4FE9-C305-A4D7-A1A60436811E";
	setAttr ".g" yes;
createNode HIKCharacterNode -n "Enemy:ShooterPlayerModel:QuickRigCharacter";
	rename -uid "1723E042-4D59-D35C-FD1F-1C81222637BA";
	addAttr -r false -ci true -sn "quickRigInfo" -ln "quickRigInfo" -at "compound" 
		-nc 3;
	addAttr -r false -s false -ci true -m -im false -sn "meshes" -ln "meshes" -at "message" 
		-p "quickRigInfo";
	addAttr -r false -s false -ci true -sn "guides" -ln "guides" -at "message" -p "quickRigInfo";
	addAttr -r false -s false -ci true -sn "skeleton" -ln "skeleton" -at "message" -p "quickRigInfo";
createNode HIKProperty2State -n "Enemy:ShooterPlayerModel:HIKproperties1";
	rename -uid "602A6B54-48F9-41AF-51D9-E6A1D9779930";
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
createNode HIKCharacterNode -n "Enemy:ShooterPlayerModel:Character1";
	rename -uid "9C2F5E11-435E-398B-5BBF-78A9943B50ED";
createNode HIKProperty2State -n "Enemy:ShooterPlayerModel:HIKproperties2";
	rename -uid "3B6263D9-4EFC-FA55-75ED-DF90A9E4D37E";
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
createNode renderLayerManager -n "Enemy:ShooterPlayerModel:CargoPants:renderLayerManager";
	rename -uid "4C6DA143-4E54-3D22-7948-01B7C2D2DA87";
createNode renderLayer -n "Enemy:ShooterPlayerModel:CargoPants:defaultRenderLayer";
	rename -uid "5B98F0B8-4D40-4024-C43B-4B8001A2BC86";
	setAttr ".g" yes;
createNode renderLayerManager -n "Enemy:ShooterPlayerModel:HumanBody:renderLayerManager";
	rename -uid "6A18A9F3-4FF3-9B62-8909-9DA266B7FD37";
createNode renderLayer -n "Enemy:ShooterPlayerModel:HumanBody:defaultRenderLayer";
	rename -uid "25D1904B-42A8-0345-E8EA-A0B874F08820";
	setAttr ".g" yes;
createNode renderLayerManager -n "Enemy:ShooterPlayerModel:MensBusinessShoes:renderLayerManager";
	rename -uid "F0F56CBB-4410-5482-D64A-4290ECCB28FB";
createNode renderLayer -n "Enemy:ShooterPlayerModel:MensBusinessShoes:defaultRenderLayer";
	rename -uid "7DA344E5-4BB6-345B-DE22-C8BC0206E5DD";
	setAttr ".g" yes;
createNode renderLayerManager -n "Enemy:ShooterPlayerModel:SportsJacket:renderLayerManager";
	rename -uid "C90463C5-4635-1329-0619-1FA889C2227D";
createNode renderLayer -n "Enemy:ShooterPlayerModel:SportsJacket:defaultRenderLayer";
	rename -uid "7477825E-4E97-423A-6DD5-E4B5EAB08D13";
	setAttr ".g" yes;
createNode renderLayerManager -n "Enemy:ShooterPlayerModel:BaseballCap:renderLayerManager";
	rename -uid "AD57605D-4EFD-6D87-26EF-9A8C3BECB627";
createNode renderLayer -n "Enemy:ShooterPlayerModel:BaseballCap:defaultRenderLayer";
	rename -uid "1958201C-4DB4-1B32-3E06-75B938F383E1";
	setAttr ".g" yes;
createNode renderLayerManager -n "Enemy:ShooterPlayerModel:AssaultRifle:renderLayerManager";
	rename -uid "78FA6F97-4E08-7A79-CB23-48BB6ED79AEA";
createNode renderLayer -n "Enemy:ShooterPlayerModel:AssaultRifle:defaultRenderLayer";
	rename -uid "2A943A8A-4DF1-4C47-68A1-B09A3E9C6410";
	setAttr ".g" yes;
createNode renderLayerManager -n "Enemy:ShooterPlayerModel:SpaceMarineRifle:renderLayerManager";
	rename -uid "153DE894-4C80-7B71-C97E-A58BE230DACD";
createNode renderLayer -n "Enemy:ShooterPlayerModel:SpaceMarineRifle:defaultRenderLayer";
	rename -uid "618C5AD6-4F2D-F664-A022-A68DAB268B5D";
	setAttr ".g" yes;
createNode renderLayerManager -n "Enemy:ShooterPlayerModel:LongPants_Business:renderLayerManager";
	rename -uid "7DC861C6-4C96-6245-0780-59A98310E86F";
createNode renderLayer -n "Enemy:ShooterPlayerModel:LongPants_Business:defaultRenderLayer";
	rename -uid "E82F2A6A-4BB8-3A8D-B84A-2FB72120BD10";
	setAttr ".g" yes;
createNode renderLayerManager -n "Enemy:ShooterPlayerModel:LongsleeveThickSweater:renderLayerManager";
	rename -uid "7B421741-4990-B4FB-BE86-F6B63CC07412";
createNode renderLayer -n "Enemy:ShooterPlayerModel:LongsleeveThickSweater:defaultRenderLayer";
	rename -uid "2AC71216-455F-D96B-70F5-4EB129930B28";
	setAttr ".g" yes;
createNode renderLayerManager -n "Enemy:ShooterPlayerModel:AnatomyHandHumanMale:renderLayerManager";
	rename -uid "09FD8574-4ACC-971A-8F4B-8283F64DEE9E";
createNode renderLayer -n "Enemy:ShooterPlayerModel:AnatomyHandHumanMale:defaultRenderLayer";
	rename -uid "C20DA7D8-49F7-8483-4C3A-F597C61D2D07";
	setAttr ".g" yes;
createNode nodeGraphEditorInfo -n "Enemy:ShooterPlayerModel:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "0BBA517C-448E-6B15-4579-968E312AEBC1";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -330.95236780151544 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 317.85713022663526 338.09522466054096 ;
createNode lambert -n "Enemy:EnemyShd";
	rename -uid "96272850-44F5-215E-36EE-B68AF77D8A97";
createNode shadingEngine -n "Enemy:lambert2SG";
	rename -uid "04F51F70-40CB-6391-8C17-AB84B8CAACAD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Enemy:materialInfo1";
	rename -uid "50A72F6E-4626-426D-96F3-CCBF7395BBA9";
createNode file -n "Enemy:file1";
	rename -uid "AF98B928-4258-6AF9-C0FE-0C920374A799";
	setAttr ".ftn" -type "string" "D:/Unreal/OperationSTP/Maya//sourceimages/Villan.psd";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Enemy:place2dTexture1";
	rename -uid "997A1A0C-41D8-DB26-4928-E6B53829A058";
createNode renderLayerManager -n "Enemy:ShooterPlayerRig_renderLayerManager";
	rename -uid "68A8BF7C-4BEA-2F5A-FE72-7F865AD195A8";
createNode renderLayer -n "Enemy:ShooterPlayerRig_defaultRenderLayer";
	rename -uid "AB935906-41A1-A6B2-257D-57BD39DD1F67";
	setAttr ".g" yes;
createNode phong -n "Enemy:ShooterPlayerRig_M_UE4Man_Body";
	rename -uid "EC6B9426-4F67-C3C9-E1C2-4CA242905633";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.2158605 0.2158605 0.2158605 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 1;
createNode shadingEngine -n "Enemy:ShooterPlayerRig_SK_MannequinSG";
	rename -uid "20961676-415F-F433-7FA7-15AA7CF55EF7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Enemy:ShooterPlayerRig_materialInfo1";
	rename -uid "9D22FC9F-4129-A7FA-A40A-A29293B76A7E";
createNode phong -n "Enemy:ShooterPlayerRig_M_UE4Man_ChestLogo";
	rename -uid "3B3B1316-4B5D-7DE1-E54C-3CB4111CE079";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.2158605 0.2158605 0.2158605 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 1;
createNode shadingEngine -n "Enemy:ShooterPlayerRig_SK_MannequinSG1";
	rename -uid "98F1A172-4553-8B57-5CC7-3289CE577BEE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Enemy:ShooterPlayerRig_materialInfo2";
	rename -uid "08186904-475C-E687-CA24-8F9DC13F6EDD";
createNode renderLayerManager -n "Enemy:ShooterPlayerModel1:renderLayerManager";
	rename -uid "354E7878-4B72-E175-F51A-5F9B77FE4B39";
createNode renderLayer -n "Enemy:ShooterPlayerModel1:defaultRenderLayer";
	rename -uid "78242766-4083-25F1-F003-209DCC1A9EEF";
	setAttr ".g" yes;
createNode HIKCharacterNode -n "Enemy:ShooterPlayerModel1:QuickRigCharacter";
	rename -uid "24CEC8B2-4A6D-994E-E8D1-D99AAF474324";
	addAttr -r false -ci true -sn "quickRigInfo" -ln "quickRigInfo" -at "compound" 
		-nc 3;
	addAttr -r false -s false -ci true -m -im false -sn "meshes" -ln "meshes" -at "message" 
		-p "quickRigInfo";
	addAttr -r false -s false -ci true -sn "guides" -ln "guides" -at "message" -p "quickRigInfo";
	addAttr -r false -s false -ci true -sn "skeleton" -ln "skeleton" -at "message" -p "quickRigInfo";
createNode HIKProperty2State -n "Enemy:ShooterPlayerModel1:HIKproperties1";
	rename -uid "B6538814-4F77-9F9C-0FCD-0888F40365CE";
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
createNode HIKCharacterNode -n "Enemy:ShooterPlayerModel1:Character1";
	rename -uid "B4533BFF-40A2-FD07-3457-389A34184CBD";
createNode HIKProperty2State -n "Enemy:ShooterPlayerModel1:HIKproperties2";
	rename -uid "DBC3D0DC-4864-AAB1-1FAA-94A4B9CF4D12";
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
createNode renderLayerManager -n "Enemy:ShooterPlayerModel1:CargoPants:renderLayerManager";
	rename -uid "64997F0F-43F0-6CEC-56F7-2898733D9974";
createNode renderLayer -n "Enemy:ShooterPlayerModel1:CargoPants:defaultRenderLayer";
	rename -uid "2C4C305F-42D4-BAEA-7258-6D9D8F443F35";
	setAttr ".g" yes;
createNode renderLayerManager -n "Enemy:ShooterPlayerModel1:HumanBody:renderLayerManager";
	rename -uid "543887E9-43F6-4781-1FFB-588D94F1D86D";
createNode renderLayer -n "Enemy:ShooterPlayerModel1:HumanBody:defaultRenderLayer";
	rename -uid "46E7BD83-41F7-1ADE-C6DE-EC986DCE6083";
	setAttr ".g" yes;
createNode renderLayerManager -n "Enemy:ShooterPlayerModel1:MensBusinessShoes:renderLayerManager";
	rename -uid "6B768CB9-48E2-FF78-A101-7699915CF5D5";
createNode renderLayer -n "Enemy:ShooterPlayerModel1:MensBusinessShoes:defaultRenderLayer";
	rename -uid "42713743-41AA-07F8-F5EE-B28A9282EC77";
	setAttr ".g" yes;
createNode renderLayerManager -n "Enemy:ShooterPlayerModel1:SportsJacket:renderLayerManager";
	rename -uid "A15EB860-46A6-F5C2-10C0-539DAF0E58DC";
createNode renderLayer -n "Enemy:ShooterPlayerModel1:SportsJacket:defaultRenderLayer";
	rename -uid "457F7569-41DA-FA48-FE58-0D84F32DE34F";
	setAttr ".g" yes;
createNode renderLayerManager -n "Enemy:ShooterPlayerModel1:BaseballCap:renderLayerManager";
	rename -uid "E532FCED-4257-D6A4-A320-CBB4C4E47BC7";
createNode renderLayer -n "Enemy:ShooterPlayerModel1:BaseballCap:defaultRenderLayer";
	rename -uid "7C616F1A-425F-2ECB-70AC-2F9E207222D1";
	setAttr ".g" yes;
createNode renderLayerManager -n "Enemy:ShooterPlayerModel1:AssaultRifle:renderLayerManager";
	rename -uid "94961ACA-478D-D849-4463-B8981CFFA5E8";
createNode renderLayer -n "Enemy:ShooterPlayerModel1:AssaultRifle:defaultRenderLayer";
	rename -uid "E7DB5AA6-451F-DC98-C0AD-7D9288E5E29C";
	setAttr ".g" yes;
createNode renderLayerManager -n "Enemy:ShooterPlayerModel1:SpaceMarineRifle:renderLayerManager";
	rename -uid "15A5F78C-400C-66B5-546C-8985180A8648";
createNode renderLayer -n "Enemy:ShooterPlayerModel1:SpaceMarineRifle:defaultRenderLayer";
	rename -uid "DAC92087-4E06-9EAF-2EAC-BEA29F1C51F3";
	setAttr ".g" yes;
createNode renderLayerManager -n "Enemy:ShooterPlayerModel1:LongPants_Business:renderLayerManager";
	rename -uid "CDE011FE-43B7-9021-FB4A-BE81C62A0AC3";
createNode renderLayer -n "Enemy:ShooterPlayerModel1:LongPants_Business:defaultRenderLayer";
	rename -uid "4E538986-4879-2975-89D5-4CB3C5C30D81";
	setAttr ".g" yes;
createNode renderLayerManager -n "Enemy:ShooterPlayerModel1:LongsleeveThickSweater:renderLayerManager";
	rename -uid "94022235-4EA5-AEE0-BE61-D186F987A0C0";
createNode renderLayer -n "Enemy:ShooterPlayerModel1:LongsleeveThickSweater:defaultRenderLayer";
	rename -uid "1BA9F88D-47B3-B021-3C9F-62AB5E9C6A11";
	setAttr ".g" yes;
createNode renderLayerManager -n "Enemy:ShooterPlayerModel1:AnatomyHandHumanMale:renderLayerManager";
	rename -uid "1318F92F-40B0-C4CD-B8A2-888C5F95B3D1";
createNode renderLayer -n "Enemy:ShooterPlayerModel1:AnatomyHandHumanMale:defaultRenderLayer";
	rename -uid "D70BD4D2-491F-70A3-54C3-7CA28DA69CDE";
	setAttr ".g" yes;
createNode nodeGraphEditorInfo -n "Enemy:ShooterPlayerModel1:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "F7813523-46F7-068D-5652-A1A16CC64CA5";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -373.35182078610586 -324.99998708566085 ;
	setAttr ".tgi[0].vh" -type "double2" 360.2565832112258 338.09522466054091 ;
createNode lambert -n "Enemy:ShooterPlayerModel1:lambert2";
	rename -uid "325CBEDD-4250-7544-59D9-C18CFFA1E8D0";
createNode shadingEngine -n "Enemy:ShooterPlayerModel1:lambert2SG";
	rename -uid "019BA5C1-4293-1DA0-20FC-F2B26EF83CC8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Enemy:ShooterPlayerModel1:materialInfo1";
	rename -uid "307FEA9A-44D4-05D2-6581-7FBE3049CC66";
createNode lambert -n "Enemy:ShooterPlayerModel1:lambert3";
	rename -uid "15FA730C-4B7C-07FB-1844-E5B18314D3D2";
createNode shadingEngine -n "Enemy:ShooterPlayerModel1:lambert3SG";
	rename -uid "BBE5A2CA-4D92-3F95-DC72-A9BC1C2B3585";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Enemy:ShooterPlayerModel1:materialInfo2";
	rename -uid "979B84A5-4E94-62E0-9B62-3882714F2BE1";
createNode file -n "Enemy:ShooterPlayerModel1:file1";
	rename -uid "490C0614-4482-36BA-767A-6FA3E1ABEB23";
	setAttr ".ftn" -type "string" "D:/Unreal/OperationSTP/Maya//sourceimages/PlayerTexture.psd";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Enemy:ShooterPlayerModel1:place2dTexture1";
	rename -uid "08A6CC9C-429B-C4B4-CAA7-0A9CAF97059D";
createNode phong -n "Enemy:ShooterPlayerRig_M_UE4Man_Body1";
	rename -uid "ACFE3A87-40B7-4F94-C9CF-7A8779185FC5";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.2158605 0.2158605 0.2158605 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 1;
createNode shadingEngine -n "Enemy:ShooterPlayerRig_SK_MannequinSG2";
	rename -uid "6422D84D-49A0-3FC6-7B74-D093F2BC02DE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Enemy:ShooterPlayerRig_materialInfo3";
	rename -uid "2429736D-4A88-4AF3-905F-0A82E24CFE23";
createNode phong -n "Enemy:ShooterPlayerRig_M_UE4Man_ChestLogo1";
	rename -uid "B5F9B65F-49B9-63D8-1BBC-379BC78A0867";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.2158605 0.2158605 0.2158605 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 1;
createNode shadingEngine -n "Enemy:ShooterPlayerRig_SK_MannequinSG3";
	rename -uid "5D156725-464F-E4DE-05B8-C3924C696B22";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Enemy:ShooterPlayerRig_materialInfo4";
	rename -uid "9C05E9C4-43C8-6D72-5891-DEAFD512E782";
createNode displayLayer -n "Enemy:ShooterPlayerRig_jacket";
	rename -uid "09874BF6-4ACC-8E01-3961-DB8CE2A42329";
	setAttr ".do" 1;
createNode polyCube -n "polyCube1";
	rename -uid "7019FE67-43C2-63EA-915D-0EAE175ABA77";
	setAttr ".cuv" 4;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "CFF04B26-4F4B-35ED-08FD-DB9F637C3DFB";
	setAttr ".txf" -type "matrix" 104.32948630928333 0 0 0 0 104.32948630928333 0 0
		 0 0 104.32948630928333 0 0 0 51.914046054422172 1;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "B2DA1E71-4009-59BF-8341-00AEA908B643";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:11]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "C1CF602A-4261-58B7-4D6C-B2A39EFF7B40";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" 0.28289643 0.3386918 -0.61622363
		 0.0065077543 -0.036171384 0.079240635 -0.61622369 0.40890321 0.29388064 -0.17036954
		 0.036171749 -0.49310252 0.28780603 -0.41227123 0.36622369 -0.74271274 0.28780603
		 -0.33992809 0.36014917 -0.33992809 -0.5438807 0.33656004 -0.5438807 0.40890321 0.21055329
		 0.3386918 0.21055329 0.41103488 0.36014917 -0.41227123 -0.61622369 0.33656004 0.61622369
		 -0.42036954 -0.36622366 0.3288509 0.043880653 -0.49271268 0.28617173 -0.17075936
		 -0.29388052 -0.24349228 -0.28617138 -0.24310252 -0.04388053 0.078850895 0.28289643
		 0.41103488;
createNode lambert -n "lambert2";
	rename -uid "BDE23DCD-4273-DA0A-60B6-16BCD7D61447";
createNode shadingEngine -n "lambert2SG";
	rename -uid "E341E4B2-4E8F-3F53-E970-BF87989A6AB7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "0245ECB0-4FD1-BCE8-257F-B5BC806C73C9";
createNode file -n "file1";
	rename -uid "1DFD6BB0-43B0-4E2C-7844-42A66344F8F4";
	setAttr ".ftn" -type "string" "D:/Unreal/OperationSTP/Maya//sourceimages/woodplankTexture.psd";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "0D90107A-4E9A-2E04-190D-2B898C8C3A5E";
createNode polyLayoutUV -n "polyLayoutUV1";
	rename -uid "137C5D41-49A2-C9A2-A36F-91B4733F175A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "63D34E92-4958-4BE1-7174-B6A0409B995D";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" -0.49813858 0.66666669 1.5409206e-08
		 0.33333331 0.16852805 0.16666663 -0.66666669 0.83333325 0.0018613935 0.49999997 0.33519462
		 0 -0.49999997 0 0.16852793 0.33333331 -0.49999997 0.16666663 -0.33333331 0.16666663
		 -0.50000012 0.66666663 -0.50000012 0.83333325 -0.49813858 0.83333325 -0.33147204
		 0.83333325 -0.33333331 0 -0.66666669 0.66666663 0.16852793 0.49999997 0 0.49999994
		 0.0018613935 0.33333334 0.33519462 0.16666663 0.16666663 0.33333331 0.16852805 0
		 0.16666663 0.49999994 -0.33147204 0.66666669;
createNode polyLayoutUV -n "polyLayoutUV2";
	rename -uid "B000D0CB-4A6F-1D39-6B4A-3CA9302ACE5F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".se" 2;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV3";
	rename -uid "035C6893-46F7-BC0E-DA5E-96BCB2709B39";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".se" 2;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 2;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV4";
	rename -uid "0DB73D9D-4392-9900-868F-FC8E4D37FD8C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".se" 2;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 2;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
createNode polyLayoutUV -n "polyLayoutUV5";
	rename -uid "91A3E108-4812-FD13-8823-229CC5C6A794";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".se" 2;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
createNode polyLayoutUV -n "polyLayoutUV6";
	rename -uid "9AAE3ED4-4C1D-56A4-29BE-298AE1C7ABB5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".se" 2;
	setAttr ".l" 4;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
createNode polyLayoutUV -n "polyLayoutUV7";
	rename -uid "721242CD-41FE-9C28-3FA2-67985EE219A0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".se" 2;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "2899BF55-452A-4012-40A2-71898082A4C3";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" 0.57109177 -2.0256266e-08
		 0.60658556 0.0018918251 -0.0030145003 0.50189179 -0.3384349 -0.5 -0.3097055 0.0018918251
		 -0.004151585 0.49999997 -0.64365059 -2.165325e-08 -0.31084263 0 -0.64365059 -0.0018919029
		 -0.64478767 -0.0018919029 -0.33957204 -0.50189191 -0.3384349 -0.50189191 0.57222885
		 -2.0256266e-08 0.57222885 -0.0018918731 -0.64478767 -2.165325e-08 -0.33957204 -0.5
		 -0.3097055 0 0.60658556 0 -0.31084263 0.0018918251 -0.0030145003 0.49999997 0.60544842
		 0.0018918251 -0.004151585 0.50189179 0.60544842 0 0.57109177 -0.0018918731;
createNode polyLayoutUV -n "polyLayoutUV8";
	rename -uid "07010AA8-4E34-BDD5-5898-9298D3841E40";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".se" 2;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV9";
	rename -uid "1DB65D3D-4CDC-7592-05DC-EABDE369531A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".se" 2;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV10";
	rename -uid "DFC5F94D-4FC2-440D-7BB0-B2A32E581B98";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".se" 2;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 2;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV11";
	rename -uid "1C156684-467D-E31C-8FE0-50BDA2ABFE1A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".se" 2;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV12";
	rename -uid "6149CFD6-42B7-85EF-6CB9-39B6B579A0F3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".se" 2;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
createNode polyLayoutUV -n "polyLayoutUV13";
	rename -uid "83F236D0-4C66-5556-7F35-BF96DA9F841A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".se" 2;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyLayoutUV -n "polyLayoutUV14";
	rename -uid "3EC1C31A-41A6-1560-6FBB-FB8071B48E34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".se" 2;
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyLayoutUV -n "polyLayoutUV15";
	rename -uid "E86DB7CE-420F-DF8A-EA2F-70889B0DC8C9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".se" 2;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyLayoutUV -n "polyLayoutUV16";
	rename -uid "33D987D0-4EB3-558C-F615-FB8B27C15390";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".se" 2;
	setAttr ".l" 3;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "F9E105F1-40A3-DA25-28F2-D29DB3580EED";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" -0.091073513 0.095748559
		 0.6963535 0.54792649 0.39212197 0.54792672 0.2994054 0.09574832 0.088085361 0.54792649
		 -0.30095834 -0.00071124686 -0.0031962222 0.09574832 -0.60499483 -0.00071124686 -0.0031962222
		 -0.45288956 -0.69627661 -0.45288956 -0.39367497 -0.45288956 0.2994054 -0.45288956
		 0.60200703 0.095748559 0.60200703 -0.45288956 -0.69627661 0.09574832 -0.39367497
		 0.09574832 0.088085361 -0.00071124686 0.6963535 -0.00071124686 -0.60499483 0.54792649
		 0.39212197 -0.00071124686 0.0032730848 0.54792649 -0.30095834 0.54792672 0.0032730848
		 -0.00071124686 -0.091073513 -0.45288956;
select -ne :time1;
	setAttr ".o" 1.25;
	setAttr ".unw" 1.25;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 10 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 12 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 25 ".r";
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyTweakUV4.out" "CrateShape.i";
connectAttr "polyTweakUV4.uvtk[0]" "CrateShape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Enemy:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Enemy:ShooterPlayerRig_SK_MannequinSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Enemy:ShooterPlayerRig_SK_MannequinSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Enemy:ShooterPlayerModel1:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Enemy:ShooterPlayerModel1:lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Enemy:ShooterPlayerRig_SK_MannequinSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Enemy:ShooterPlayerRig_SK_MannequinSG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Enemy:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Enemy:ShooterPlayerRig_SK_MannequinSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Enemy:ShooterPlayerRig_SK_MannequinSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Enemy:ShooterPlayerModel1:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Enemy:ShooterPlayerModel1:lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Enemy:ShooterPlayerRig_SK_MannequinSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Enemy:ShooterPlayerRig_SK_MannequinSG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Enemy:renderLayerManager.rlmi[0]" "Enemy:defaultRenderLayer.rlid";
connectAttr "Enemy:ShooterPlayerModel:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel:HIKproperties1.msg" "Enemy:ShooterPlayerModel:QuickRigCharacter.propertyState"
		;
connectAttr "Enemy:ShooterPlayerModel:HIKproperties2.msg" "Enemy:ShooterPlayerModel:Character1.propertyState"
		;
connectAttr "Enemy:ShooterPlayerModel:CargoPants:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel:CargoPants:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel:HumanBody:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel:HumanBody:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel:MensBusinessShoes:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel:MensBusinessShoes:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel:SportsJacket:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel:SportsJacket:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel:BaseballCap:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel:BaseballCap:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel:AssaultRifle:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel:AssaultRifle:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel:SpaceMarineRifle:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel:SpaceMarineRifle:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel:LongPants_Business:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel:LongPants_Business:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel:LongsleeveThickSweater:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel:LongsleeveThickSweater:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel:AnatomyHandHumanMale:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel:AnatomyHandHumanMale:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:file1.oc" "Enemy:EnemyShd.c";
connectAttr "Enemy:EnemyShd.oc" "Enemy:lambert2SG.ss";
connectAttr "Enemy:lambert2SG.msg" "Enemy:materialInfo1.sg";
connectAttr "Enemy:EnemyShd.msg" "Enemy:materialInfo1.m";
connectAttr "Enemy:file1.msg" "Enemy:materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "Enemy:file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Enemy:file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Enemy:file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Enemy:file1.ws";
connectAttr "Enemy:place2dTexture1.c" "Enemy:file1.c";
connectAttr "Enemy:place2dTexture1.tf" "Enemy:file1.tf";
connectAttr "Enemy:place2dTexture1.rf" "Enemy:file1.rf";
connectAttr "Enemy:place2dTexture1.mu" "Enemy:file1.mu";
connectAttr "Enemy:place2dTexture1.mv" "Enemy:file1.mv";
connectAttr "Enemy:place2dTexture1.s" "Enemy:file1.s";
connectAttr "Enemy:place2dTexture1.wu" "Enemy:file1.wu";
connectAttr "Enemy:place2dTexture1.wv" "Enemy:file1.wv";
connectAttr "Enemy:place2dTexture1.re" "Enemy:file1.re";
connectAttr "Enemy:place2dTexture1.of" "Enemy:file1.of";
connectAttr "Enemy:place2dTexture1.r" "Enemy:file1.ro";
connectAttr "Enemy:place2dTexture1.n" "Enemy:file1.n";
connectAttr "Enemy:place2dTexture1.vt1" "Enemy:file1.vt1";
connectAttr "Enemy:place2dTexture1.vt2" "Enemy:file1.vt2";
connectAttr "Enemy:place2dTexture1.vt3" "Enemy:file1.vt3";
connectAttr "Enemy:place2dTexture1.vc1" "Enemy:file1.vc1";
connectAttr "Enemy:place2dTexture1.o" "Enemy:file1.uv";
connectAttr "Enemy:place2dTexture1.ofs" "Enemy:file1.fs";
connectAttr "Enemy:ShooterPlayerRig_renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerRig_defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerRig_M_UE4Man_Body.oc" "Enemy:ShooterPlayerRig_SK_MannequinSG.ss"
		;
connectAttr "Enemy:ShooterPlayerRig_SK_MannequinSG.msg" "Enemy:ShooterPlayerRig_materialInfo1.sg"
		;
connectAttr "Enemy:ShooterPlayerRig_M_UE4Man_Body.msg" "Enemy:ShooterPlayerRig_materialInfo1.m"
		;
connectAttr "Enemy:ShooterPlayerRig_M_UE4Man_ChestLogo.oc" "Enemy:ShooterPlayerRig_SK_MannequinSG1.ss"
		;
connectAttr "Enemy:ShooterPlayerRig_SK_MannequinSG1.msg" "Enemy:ShooterPlayerRig_materialInfo2.sg"
		;
connectAttr "Enemy:ShooterPlayerRig_M_UE4Man_ChestLogo.msg" "Enemy:ShooterPlayerRig_materialInfo2.m"
		;
connectAttr "Enemy:ShooterPlayerModel1:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel1:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel1:HIKproperties1.msg" "Enemy:ShooterPlayerModel1:QuickRigCharacter.propertyState"
		;
connectAttr "Enemy:ShooterPlayerModel1:HIKproperties2.msg" "Enemy:ShooterPlayerModel1:Character1.propertyState"
		;
connectAttr "Enemy:ShooterPlayerModel1:CargoPants:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel1:CargoPants:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel1:HumanBody:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel1:HumanBody:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel1:MensBusinessShoes:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel1:MensBusinessShoes:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel1:SportsJacket:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel1:SportsJacket:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel1:BaseballCap:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel1:BaseballCap:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel1:AssaultRifle:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel1:AssaultRifle:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel1:SpaceMarineRifle:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel1:SpaceMarineRifle:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel1:LongPants_Business:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel1:LongPants_Business:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel1:LongsleeveThickSweater:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel1:LongsleeveThickSweater:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel1:AnatomyHandHumanMale:renderLayerManager.rlmi[0]" "Enemy:ShooterPlayerModel1:AnatomyHandHumanMale:defaultRenderLayer.rlid"
		;
connectAttr "Enemy:ShooterPlayerModel1:lambert2.oc" "Enemy:ShooterPlayerModel1:lambert2SG.ss"
		;
connectAttr "Enemy:ShooterPlayerModel1:lambert2SG.msg" "Enemy:ShooterPlayerModel1:materialInfo1.sg"
		;
connectAttr "Enemy:ShooterPlayerModel1:lambert2.msg" "Enemy:ShooterPlayerModel1:materialInfo1.m"
		;
connectAttr "Enemy:ShooterPlayerModel1:file1.oc" "Enemy:ShooterPlayerModel1:lambert3.c"
		;
connectAttr "Enemy:ShooterPlayerModel1:lambert3.oc" "Enemy:ShooterPlayerModel1:lambert3SG.ss"
		;
connectAttr "Enemy:ShooterPlayerModel1:lambert3SG.msg" "Enemy:ShooterPlayerModel1:materialInfo2.sg"
		;
connectAttr "Enemy:ShooterPlayerModel1:lambert3.msg" "Enemy:ShooterPlayerModel1:materialInfo2.m"
		;
connectAttr "Enemy:ShooterPlayerModel1:file1.msg" "Enemy:ShooterPlayerModel1:materialInfo2.t"
		 -na;
connectAttr ":defaultColorMgtGlobals.cme" "Enemy:ShooterPlayerModel1:file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Enemy:ShooterPlayerModel1:file1.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "Enemy:ShooterPlayerModel1:file1.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "Enemy:ShooterPlayerModel1:file1.ws";
connectAttr "Enemy:ShooterPlayerModel1:place2dTexture1.c" "Enemy:ShooterPlayerModel1:file1.c"
		;
connectAttr "Enemy:ShooterPlayerModel1:place2dTexture1.tf" "Enemy:ShooterPlayerModel1:file1.tf"
		;
connectAttr "Enemy:ShooterPlayerModel1:place2dTexture1.rf" "Enemy:ShooterPlayerModel1:file1.rf"
		;
connectAttr "Enemy:ShooterPlayerModel1:place2dTexture1.mu" "Enemy:ShooterPlayerModel1:file1.mu"
		;
connectAttr "Enemy:ShooterPlayerModel1:place2dTexture1.mv" "Enemy:ShooterPlayerModel1:file1.mv"
		;
connectAttr "Enemy:ShooterPlayerModel1:place2dTexture1.s" "Enemy:ShooterPlayerModel1:file1.s"
		;
connectAttr "Enemy:ShooterPlayerModel1:place2dTexture1.wu" "Enemy:ShooterPlayerModel1:file1.wu"
		;
connectAttr "Enemy:ShooterPlayerModel1:place2dTexture1.wv" "Enemy:ShooterPlayerModel1:file1.wv"
		;
connectAttr "Enemy:ShooterPlayerModel1:place2dTexture1.re" "Enemy:ShooterPlayerModel1:file1.re"
		;
connectAttr "Enemy:ShooterPlayerModel1:place2dTexture1.of" "Enemy:ShooterPlayerModel1:file1.of"
		;
connectAttr "Enemy:ShooterPlayerModel1:place2dTexture1.r" "Enemy:ShooterPlayerModel1:file1.ro"
		;
connectAttr "Enemy:ShooterPlayerModel1:place2dTexture1.n" "Enemy:ShooterPlayerModel1:file1.n"
		;
connectAttr "Enemy:ShooterPlayerModel1:place2dTexture1.vt1" "Enemy:ShooterPlayerModel1:file1.vt1"
		;
connectAttr "Enemy:ShooterPlayerModel1:place2dTexture1.vt2" "Enemy:ShooterPlayerModel1:file1.vt2"
		;
connectAttr "Enemy:ShooterPlayerModel1:place2dTexture1.vt3" "Enemy:ShooterPlayerModel1:file1.vt3"
		;
connectAttr "Enemy:ShooterPlayerModel1:place2dTexture1.vc1" "Enemy:ShooterPlayerModel1:file1.vc1"
		;
connectAttr "Enemy:ShooterPlayerModel1:place2dTexture1.o" "Enemy:ShooterPlayerModel1:file1.uv"
		;
connectAttr "Enemy:ShooterPlayerModel1:place2dTexture1.ofs" "Enemy:ShooterPlayerModel1:file1.fs"
		;
connectAttr "Enemy:ShooterPlayerRig_M_UE4Man_Body1.oc" "Enemy:ShooterPlayerRig_SK_MannequinSG2.ss"
		;
connectAttr "Enemy:ShooterPlayerRig_SK_MannequinSG2.msg" "Enemy:ShooterPlayerRig_materialInfo3.sg"
		;
connectAttr "Enemy:ShooterPlayerRig_M_UE4Man_Body1.msg" "Enemy:ShooterPlayerRig_materialInfo3.m"
		;
connectAttr "Enemy:ShooterPlayerRig_M_UE4Man_ChestLogo1.oc" "Enemy:ShooterPlayerRig_SK_MannequinSG3.ss"
		;
connectAttr "Enemy:ShooterPlayerRig_SK_MannequinSG3.msg" "Enemy:ShooterPlayerRig_materialInfo4.sg"
		;
connectAttr "Enemy:ShooterPlayerRig_M_UE4Man_ChestLogo1.msg" "Enemy:ShooterPlayerRig_materialInfo4.m"
		;
connectAttr "layerManager.dli[1]" "Enemy:ShooterPlayerRig_jacket.id";
connectAttr "polyCube1.out" "transformGeometry1.ig";
connectAttr "transformGeometry1.og" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV1.ip";
connectAttr "file1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "CrateShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "polyTweakUV1.out" "polyLayoutUV1.ip";
connectAttr "polyLayoutUV1.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyLayoutUV2.ip";
connectAttr "polyLayoutUV2.out" "polyLayoutUV3.ip";
connectAttr "polyLayoutUV3.out" "polyLayoutUV4.ip";
connectAttr "polyLayoutUV4.out" "polyLayoutUV5.ip";
connectAttr "polyLayoutUV5.out" "polyLayoutUV6.ip";
connectAttr "polyLayoutUV6.out" "polyLayoutUV7.ip";
connectAttr "polyLayoutUV7.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyLayoutUV8.ip";
connectAttr "polyLayoutUV8.out" "polyLayoutUV9.ip";
connectAttr "polyLayoutUV9.out" "polyLayoutUV10.ip";
connectAttr "polyLayoutUV10.out" "polyLayoutUV11.ip";
connectAttr "polyLayoutUV11.out" "polyLayoutUV12.ip";
connectAttr "polyLayoutUV12.out" "polyLayoutUV13.ip";
connectAttr "polyLayoutUV13.out" "polyLayoutUV14.ip";
connectAttr "polyLayoutUV14.out" "polyLayoutUV15.ip";
connectAttr "polyLayoutUV15.out" "polyLayoutUV16.ip";
connectAttr "polyLayoutUV16.out" "polyTweakUV4.ip";
connectAttr "Enemy:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "Enemy:ShooterPlayerRig_SK_MannequinSG.pa" ":renderPartition.st" -na
		;
connectAttr "Enemy:ShooterPlayerRig_SK_MannequinSG1.pa" ":renderPartition.st" -na
		;
connectAttr "Enemy:ShooterPlayerModel1:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "Enemy:ShooterPlayerModel1:lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "Enemy:ShooterPlayerRig_SK_MannequinSG2.pa" ":renderPartition.st" -na
		;
connectAttr "Enemy:ShooterPlayerRig_SK_MannequinSG3.pa" ":renderPartition.st" -na
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "Enemy:EnemyShd.msg" ":defaultShaderList1.s" -na;
connectAttr "Enemy:ShooterPlayerRig_M_UE4Man_Body.msg" ":defaultShaderList1.s" -na
		;
connectAttr "Enemy:ShooterPlayerRig_M_UE4Man_ChestLogo.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Enemy:ShooterPlayerModel1:lambert2.msg" ":defaultShaderList1.s" -na
		;
connectAttr "Enemy:ShooterPlayerModel1:lambert3.msg" ":defaultShaderList1.s" -na
		;
connectAttr "Enemy:ShooterPlayerRig_M_UE4Man_Body1.msg" ":defaultShaderList1.s" 
		-na;
connectAttr "Enemy:ShooterPlayerRig_M_UE4Man_ChestLogo1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "Enemy:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Enemy:ShooterPlayerModel1:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Enemy:defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Enemy:ShooterPlayerModel:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel:CargoPants:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel:HumanBody:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel:MensBusinessShoes:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel:SportsJacket:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel:BaseballCap:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel:AssaultRifle:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel:SpaceMarineRifle:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel:LongPants_Business:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel:LongsleeveThickSweater:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel:AnatomyHandHumanMale:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerRig_defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel1:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel1:CargoPants:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel1:HumanBody:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel1:MensBusinessShoes:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel1:SportsJacket:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel1:BaseballCap:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel1:AssaultRifle:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel1:SpaceMarineRifle:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel1:LongPants_Business:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel1:LongsleeveThickSweater:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:ShooterPlayerModel1:AnatomyHandHumanMale:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Enemy:file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Enemy:ShooterPlayerModel1:file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
// End of crate.ma
