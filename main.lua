-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------
--
-- DISPLAY GROUNPS
--
-----------------------------------------------------------------------------------------
-- Start with display groups
local characters = display.newGroup()
local charactersDial = display.newGroup()

local midlayer1 = display.newGroup()
midlayer1.anchorX = 0 midlayer1.anchorY = 0 
local midlayer2 = display.newGroup()
midlayer2.anchorX = 0 midlayer2.anchorY = 0
local midlayer3 = display.newGroup()
midlayer3.anchorX = 0 midlayer3.anchorY = 0 
local foregoundGr = display.newGroup()
foregoundGr.anchorX = 0 foregoundGr.anchorY = 0 
local textLayers = display.newGroup()

-----------------------------------------------------------------------------------------
--
-- CHARACTERS
--
-----------------------------------------------------------------------------------------
-- Small characters for stage, initial
local AlenaS = display.newImage( characters, "images/alena_f_small.png") AlenaS.x = 200 AlenaS.y = -400 
local IvanS = display.newImage( characters, "images/ivan_s_small.png") IvanS.x = 130 IvanS.y = -400
local MotherS = display.newImage( characters, "images/mother_s_small.png") MotherS.x = 540 MotherS.y = -400 
local WolfS = display.newImage( characters, "images/wolf_s_small.png") WolfS.x = -200 WolfS.y = -400
local WolfSit = display.newImage( characters, "images/wolf_f_small.png") WolfSit.x = -200 WolfS.y = -400  
local VasilisaS = display.newImage( characters, "images/vasilisa_f_small.png") VasilisaS.x = 1200 VasilisaS.y = -400  
local BearS = display.newImage( characters, "images/bear_s_small.png") BearS.x = 200 BearS.y = -400 
local YagaS = display.newImage( characters, "images/yaga_f_small.png") YagaS.x = 350 YagaS.y = -400 
local MouseS = display.newImage( characters, "images/mouse_small.png") MouseS.x = -100 MouseS.y=200 


-- Small characters  changed images
local AlenaCryS = display.newImage( characters, "images/alena_cry_small.png") AlenaCryS.x = 400 AlenaCryS.y =-400 
local AlenaCrySNR = display.newImage( characters, "images/alena_cry_smallNR.png") AlenaCrySNR.x = 400 AlenaCrySNR.y =-400 
local AlenaNoRibbon = display.newImage( characters, "images/alena_noRib_small.png") AlenaNoRibbon.x = 400 AlenaNoRibbon.y =-400 
local MotherWarS = display.newImage( characters, "images/mother_f_small.png") MotherWarS.x = 600 MotherWarS.y = -400  
local AlenaOnWolf = display.newImage( characters, "images/alena_on_wolf.png") AlenaOnWolf.x = 1200 AlenaOnWolf.y = 270
local AlenaOnWolfNoRibbon = display.newImage( characters, "images/alena_on_wolf_noR.png") AlenaOnWolfNoRibbon.x = 1200 AlenaOnWolfNoRibbon.y = 270
local VasilisaPlea = display.newImage( characters, "images/vasilisa_s_small.png") VasilisaPlea.x = 400 VasilisaPlea.y = -400 

-- Background for dialogue stage
local dialBack = display.newImage(charactersDial, "images/dialBack.png", true )
dialBack.anchorX = 0 dialBack.anchorY = 0 
dialBack.y=-800

-- Big characters for dialogue stage
local Alena = display.newImage( charactersDial, "images/alena_f_dialogue.png") Alena.x = 400 Alena.y = 800
local AlenaNR = display.newImage( charactersDial, "images/alena_f_dialogueNR.png") AlenaNR.x = 400 AlenaNR.y = 800
local AlenaCryD_NR = display.newImage( charactersDial, "images/alena_cry_dialogueNR.png") AlenaCryD_NR.x = 400 AlenaCryD_NR.y = 800  
local Ivan = display.newImage( charactersDial, "images/ivan_s_dialogue.png") Ivan.x = 300 Ivan.y = 800
local Mother = display.newImage( charactersDial, "images/mother_s_dialogue.png", false) Mother.x = 400 Mother.y = 800 
local MotherWar = display.newImage( charactersDial, "images/mother_f_dialogue.png", false) MotherWar.x = 400 MotherWar.y = 900
local Koschei = display.newImage( charactersDial, "images/koschei_f_big.png", false) Koschei.x = 300 Koschei.y = 800
local KoscheiPlea = display.newImage( charactersDial, "images/kosh_plea_dialogue.png", false) KoscheiPlea.x = 900 KoscheiPlea.y = 800
local KoscheiPleaNCD = display.newImage( charactersDial, "images/kosh_plea_dialogue_NC.png", false) KoscheiPlea.x = 900 KoscheiPlea.y = 800
local Wolf  = display.newImage( charactersDial, "images/wolf_dialogue.png", false) Wolf.x = 700 Wolf.y = 800 
local Bear  = display.newImage( charactersDial, "images/bear_dialogue.png", false) Bear.x = 100 Bear.y = 800 
local VasilisaD = display.newImage( charactersDial, "images/vasilisa_f_dialogue.png") VasilisaD.x = 400 VasilisaD.y = 800
local VasilisaCry = display.newImage( charactersDial, "images/vasilisa_s_dialogue.png") VasilisaCry.x = 400 VasilisaCry.y = 800 
local CrowD = display.newImage( charactersDial, "images/crow_f_dialogue.png") CrowD.x = 200 CrowD.y = 800 
local YagaD = display.newImage( charactersDial, "images/yaga_dialogue.png") YagaD.x = 300 YagaD.y = 800
local MouseD = display.newImage( charactersDial, "images/mouseDial.png") MouseD.x = 300 MouseD.y = 800

-- Charcters for brother's scenes
local BrotherD = display.newImage(foregoundGr, "images/transparent.png")
local BrotherS = display.newImage(foregoundGr, "images/transparent.png")


-- Set main screen
local background = display.newImage( "images/startScreen.png") background.x = display.contentWidth / 2 background.y = display.contentHeight / 2

-- Variables for stage content
local foreground = display.newImage(foregoundGr, "images/transparent.png")
local settings

-- Variables for selections
local select1Container = display.newImage(textLayers, "images/selection_back.png")
select1Container.x = 840 select1Container.y = 120
select1Container.isVisible = false

local select2Container = display.newImage(textLayers, "images/selection_back.png")
select2Container.x = 840 select2Container.y = 200
select2Container.isVisible = false

local select3Container = display.newImage(textLayers, "images/selection_back.png")
select3Container.x = 820 select3Container.y = 280
select3Container.isVisible = false

local select1Text = display.newText(textLayers, '', 720, 100, 250, display.contentHeight * 0.5, 'PTSans-Regular', 18) 
local select2Text = display.newText(textLayers, '', 720, 180, 250, display.contentHeight * 0.5, 'PTSans-Regular', 18)
local select3Text = display.newText(textLayers, '', 720, 260, 250, display.contentHeight * 0.5, 'PTSans-Regular', 18)

-- Variables for text
local textContainerNA = display.newImage(textLayers, "images/text_back_colour.png")
textContainerNA.x = 10 textContainerNA.y = 560 

local textContainer = display.newImage(textLayers, "images/text_back.png")
textContainer.x = 10 textContainer.y = 560 
textContainer.isVisible = false

local sceneText = display.newText(textLayers, '', 50, 610, 900, display.contentHeight * 0.5, 'PTSans-Regular', 18)

-----------------------------------------------------------------------------------------
--
-- SOUND LIBRARY
--
-----------------------------------------------------------------------------------------

local S_MusicCh
local S_BgSfxCh





-----------------------------------------------------------------------------------------
--
-- SEPARATED ANIMATIONS
--
-----------------------------------------------------------------------------------------
local function loadHomeSet()
    foreground.y=0
    transition.to(landscape3, {x=0, time=1000, delay=1000})
    transition.to(landscape2, {x=-15, time=1000, delay=1000})
    transition.to(landscape1, {y=630, time=500, delay=2000})
    transition.to(landscape1, {rotation=0, y=630, time=1000, delay=2500})
    transition.to(shadowLayer1, {alpha=1, time=1000, delay=3500})
    transition.to(houseOutside, {y=0, time=1000, delay=3700})
end 

local function animateBucket()
    transition.to(bucketTread, {y=-100, time=700, delay=500})
    transition.to(bucket2, {rotation=-80, y=415, time=700, delay=500})
    transition.to(bucketTread, {y=-300, x=580, time=700, delay=1200})
    transition.to(bucket2, {rotation=-80, y=215, x=675, time=700, delay=1200})
    transition.to(bucketTread, {y=-100, x=680, time=1000, delay=2200})
    transition.to(bucket2, {rotation=-80, y=415, x=775, time=1000, delay=2200})

end

local function setStageHome()
    transition.to(bed, {y=0, time=1000, delay=500})
    transition.to(tableCloth, {y=5, time=1000, delay=1000})
    transition.to(shadowLayer2, {alpha=1, time=1000, delay=2500})
end

local function setStageHomeFast()
    foreground:removeSelf()
    foreground = nil
    foreground = display.newImage(foregoundGr, "images/foreground2.png", true ) setAnchor(foreground)
    foreground.x=0 foreground.y=0

    background:removeSelf()
    background = nil
    background = display.newImage( "images/background2.png", true ) setAnchor(background)
    background.x=0 background.y=0

    bed.y=0
    tableCloth.y=5
    shadowLayer2.alpha=0.5
    broom.y=-30 broom.x=200
    dishes.y=-180 dishes.x=150 
    ovenFire.alpha=1
end

local function setBasementStage()
    transition.to(basementStage, {alpha=1, time=3000, delay=1000})
    transition.to(icyCurtain, {alpha=0, time=3000, delay=1000})
    transition.to(lights3, {y=0, time=1000, delay=2000})
    transition.to(bucket1, {y=-50, time=1000, delay=2000})
    transition.to(bucket2, {y=470, time=1000, delay=2000})
    transition.to(bucketTread, {y=-50, time=1000, delay=2000})
    transition.to(waterFount, {alpha=1, time=1000, delay=3000})
    transition.to(koshPrisoner, {alpha=1, time=2000, delay=1000})
end  

local function setBasementFast()
    AlenaS.y=-400
    basementStage.alpha=1
    icyCurtain.alpha=0
    lights3.y=0
    bucket1.y=-50
    bucket2.y=470
    bucketTread.y=-50
    waterFount.alpha=1
    koshPrisoner.alpha=1

    background:removeSelf()
    background = nil
    background = display.newImage( "images/background3.png", true ) setAnchor(background)
    background.x=0 background.y=0

    foreground:removeSelf()
    foreground = nil
    foreground = display.newImage(foregoundGr, "images/foreground3.png", true ) setAnchor(foreground)
    foreground.x=0 foreground.y=0
end

local function loadBrothers(name) 
    BrotherD:removeSelf() BrotherD = nil
    BrotherS:removeSelf() BrotherS = nil
    BrotherD = display.newImage( charactersDial, "images/"..name.."_dialogue.png")
    BrotherS = display.newImage( characters, "images/"..name.."_f_small.png")
    BrotherD.x = 400 BrotherD.y = 800
    BrotherS.x = 500 BrotherS.y = -400
end

local function setStronghold1()
    StrongholdB1.x=700
    transition.to(landscape2, {x=-1700, time=1700})
    transition.to(landscape1, {x=-2100, time=1700})
    transition.to(StrongholdB1, {x=-120, time=1700})
    transition.to(AppleGarden, {x=400, time=1700})
    transition.to(AlenaOnWolfNoRibbon, {x=500, delay=1000, time=500})
    transition.to(AlenaOnWolfNoRibbon, {y=0, delay=1000, time=500})
    transition.to(AlenaOnWolfNoRibbon, {x=600, delay=1500, time=500})
    transition.to(AlenaOnWolfNoRibbon, {y=300, delay=1500, time=500})
end  

local function setStronghold2()
    StrongholdB2.x=700
    transition.to(landscape2, {x=-1700, time=1700})
    transition.to(landscape1, {x=-2100, time=1700})
    transition.to(StrongholdB2, {x=-120, time=1700})
    transition.to(stableImg, {x=400, time=1700})
    transition.to(AlenaOnWolfNoRibbon, {x=500, delay=1000, time=500})
    transition.to(AlenaOnWolfNoRibbon, {y=0, delay=1000, time=500})
    transition.to(AlenaOnWolfNoRibbon, {x=600, delay=1500, time=500})
    transition.to(AlenaOnWolfNoRibbon, {y=300, delay=1500, time=500})

end 

function openingAnimation(backg, foregr)
    clearStage()
    hideDialogue()
    removeCharacters()
    background:removeSelf()
    background = nil
    foreground:removeSelf()
    foreground = nil
    background = display.newImage( "images/"..backg, true ) setAnchor(background) 
    background.isVisible = true

    foreground = display.newImage(foregoundGr, "images/"..foregr, true ) setAnchor(foreground)
    foreground.y = -700
    transition.to(foreground, {y=0, time=1000})
end

function ridingWolftoRight(AlenaRibbon)
    AlenaRibbon.xScale=1 AlenaRibbon.x=1000
    landscape2.x=0
    landscape1.x=0
    transition.to(landscape2, {x=-800, time=3000 })
    transition.to(landscape1, {x=-1500, time=3000 })
    transition.to(starsAndMoon, {y=0, time=1000})
    transition.to(AlenaRibbon, {x=500, time=3000})
end

function ridingWolftWithVasilisa(coord)
    AlenaVasilisaRiding.xScale=1 AlenaVasilisaRiding.isVisible = true
    AlenaVasilisaRiding.y=30 AlenaVasilisaRiding.x=coord
    landscape2.x=0
    landscape1.x=0
    transition.to(landscape2, {x=-800, time=3000 })
    transition.to(landscape1, {x=-1500, time=3000 })
    transition.to(AlenaVasilisaRiding, {x=coord-500, time=3000})
end

function ridingWolftoLeft(AlenaRibbon)
    AlenaRibbon.xScale=-1 AlenaRibbon.x=0
    transition.to(AlenaRibbon, {x=400, time=3000})
    transition.to(landscape2, {x=-1300, time=3000 })
    transition.to(landscape1, {x=-1500, time=3000 })
end

function wolfAlenaInGarden()
    transition.to(landscape2, {x=-1700, time=1000})
    transition.to(landscape1, {x=-2000, time=1000})
    transition.to(AlenaOnWolfNoRibbon, {y=-400, time=500})
    AlenaNoRibbon.x=350 AlenaNoRibbon.y=-400
    WolfSit.xScale = -1
    WolfSit.x=200
    transition.to(AlenaNoRibbon, {y=270, time=1000})
    transition.to(WolfSit, {y=270, time=1000})
end

function loadUncleCastle()
    WolfSit.x=900
    AlenaS.x=740
    transition.to(landscape3, {x=0, time=1000, delay=1000})
    transition.to(landscape2, {y=0, time=1000, delay=2000})
    transition.to(shadowLayer6, {alpha=1, time=1000, delay=3000})
    transition.to(WolfSit,{y=270, time=1000, delay=3000})
    transition.to(AlenaS,{y=280, time=1000, delay=3000})
    transition.to(throne, {y=-30, time=500, delay=4000})
    transition.to(birdSymbol, {y=320, time=500, delay=4000})
    transition.to(BrotherS, {y=300, delay=4000, time=1000})
end

function loadBushToHide()
    bushToHide = display.newImage(midlayer3, "images/hideBush.png") bushToHide.anchorX=1 bushToHide.anchorY=1 
    bushToHide.x=300 bushToHide.y=500 bushToHide.rotation=-90
    transition.to(bushToHide, {rotation=0, time=1000, delay=500})
end

function alarmBellsRing()
    bellAlarm = display.newImage(midlayer2, "images/bellAlarm.png") bellAlarm.anchorX=0.5 bellAlarm.anchorY=0 
    bellAlarm.x=500 bellAlarm.y=-400
    transition.to(bellAlarm, {y=-100, time=500, delay=1000})
    transition.to(bellAlarm, {y=-100, rotation=60, time=300, delay=1500})
    transition.to(bellAlarm, {y=-100, rotation=-60, time=300, delay=1800})
    transition.to(bellAlarm, {y=-100, rotation=50, time=300, delay=2100})
    transition.to(bellAlarm, {y=-100, rotation=-50, time=300, delay=2400})
    transition.to(bellAlarm, {y=-100, rotation=0, time=200, delay=2700})
end

function moveTreeBack()
    local mins = 2500
    for i=1,3 +1
        do
            transition.to(treeBack, {rotation=8, y=150, time=200, delay=mins})
            mins = mins+150
            transition.to(treeBack, {rotation=0, y=140, time=200, delay=mins})
            mins = mins+150
            transition.to(treeBack, {rotation=-3, y=150, time=200, delay=mins})
            mins = mins+150
            transition.to(treeBack, {rotation=0, y=140, time=200, delay=mins})
            mins = mins+150
        end
end

function loadCrows()
    transition.to(crowSmall, {y = -170, time=1000, delay=500})
    transition.to(crowBig, {y = 0, time=1000, delay=500})
end

function removeCrows()
    crowSmall:removeSelf()
    crowSmall = nil 

    crowBig:removeSelf()
    crowBig = nil 
end

function crowBlackMagic(number)
    crowBig.x=-100 crowBig.y=0
    BlackWater.x=400 BlackWater.y=200
    --BlackMagic = display.newImage(midlayer3, "images/act10_magicBlack.png", true) setAnchor(BlackMagic)
    --BlackMagic.x=number BlackMagic.y = -800
    --BlackMagic:toFront()
    transition.to(crowBig, {x=480, y=-80, time=1000, delay=500})
    transition.to(BlackWater, {alpha=1, time=500, delay=1500})
    transition.to(BlackWater, {alpha=0, time=500, delay=2500})
    --transition.to(BlackMagic, {y=-220, time=1000, delay=2500})
    transition.to(crowBig, {y=-200, x=1200, time=1000, delay=3000})
    --transition.to(BlackMagic, {y=-800, time=1000, delay=4000})
end

function crowWhiteMagic(number)
    crowBig.x=-100 crowBig.y=0
    BlueWater.x=400 BlueWater.y=200
    WhiteMagic:toFront()
    WhiteMagic.x=number
    transition.to(crowBig, {x=480, y=-80, time=1000, delay=500})
    transition.to(BlueWater, {alpha=1, time=500, delay=1500})
    transition.to(BlueWater, {alpha=0, time=500, delay=2500})
    transition.to(WhiteMagic, {y=-220, time=1000, delay=2500})
    transition.to(crowBig, {y=-200, x=1200, time=1000, delay=3000})
    transition.to(WhiteMagic, {y=-800, time=1000, delay=4000})
end

function loadYagaForest() 
    --set147
    AlenaOnWolfNoRibbon.x=200 AlenaOnWolfNoRibbon.y=-400 AlenaOnWolfNoRibbon.xScale=-1
    transition.to(landscape1, {x=0, time=2000, delay=500})
    transition.to(landscape2, {x=0, time=1000, delay=1500})
    transition.to(landscape3, {y=0, time=1000, delay=2500})
    transition.to(shadowLayer12, {alpha=1, time=1000, delay=3000})
    transition.to(AlenaOnWolfNoRibbon, {y=270, time=1000, delay=4000})
end

function roadToYaga()
    landscape1.x=0
    landscape2.x=0
    landscape3.y=0
    transition.to(landscape1, {x=-680, time=2000})
    transition.to(landscape2, {x=-1100, time=2000})
    transition.to(landscape3, {x=-1100, time=2000})
    transition.to(hutFence, {x=480, time=1000, delay=1000})
    transition.to(hutWindow, {y=0, time=1000, delay=2000})
end


function yagaFlight()
    yagaShadow:scale(0.2, 0.2)
    transition.to(yagaShadow, {x=800, y=150, time=2000, delay=2500})
    transition.to(yagaShadow, {xScale = -0.5, yScale= 0.5, time=10, delay=4500})
    transition.to(yagaShadow, {x=0, y=200, delay=4600, time=1500})
    transition.to(yagaShadow, {xScale=0.8, yScale=0.8, time=10, delay=6000})
    transition.to(yagaShadow, {x=800, y=400, delay=6200, time=1500})
end

function loadYagaHut()
    ---set154
    transition.to(landscape1, {y=0, time=1000})
    transition.to(ovenBack, {y=-50, time=1000, delay=500})
    transition.to(ovenFront, {y=-50, time=1000, delay=500})
    transition.to(ovenFire, {y=-50, time=1000, delay=500})
    transition.to(ovenCover, {y=140, time=1000, delay=500})

    transition.to(hutShelf, {y=5, time=1000, delay=500})
    transition.to(hutTable, {y=30, time=1000, delay=500})
    transition.to(hutSpin, {y=30, time=1000, delay=500})

    transition.to(shadowLayer13, {alpha=1, time=1000, delay=1500})

    yagaFlight()
end


function AlenaIntoTheOven()    
    transition.to(AlenaNoRibbon, {alpha=0, time=100, delay=700})
    transition.to(paddle, {x=700, y=500, time=1000})
    transition.to(alenaSit, {y=350, time=1000})
    transition.to(paddle, {x=790, y=250, time=1000, delay=1500})
    transition.to(alenaSit, {x=700, y=100, time=1000, delay=1500})
    transition.to(alenaSit, {x=750, y=150, time=1000, delay=2500})
    transition.to(ovenCover, {x=700, time=500, delay=2700})
    transition.to(paddle, {rotation=-10, time=1000, delay=1500})
end

function babaInOven()
    ovenCover.x=870
    transition.to(YagaS, {alpha=0, time=100})
    transition.to(yagaSit, {y=300, time=100})
    transition.to(paddle, {x=790, y=280, time=1000, delay=1000})
    transition.to(yagaSit, {y=110, x=700, time=1000, delay=1000})
    transition.to(yagaSit, {alpha=0, time=500, delay=2000})
    transition.to(ovenCover, {x=700, time=500, delay=2000})
    transition.to(paddle, {rotation=-16, time=1000, delay=1000})

end

function yagaOutOfOven() 
    paddle.x=700 paddle.y=500
    YagaS.xScale = -1 YagaS.alpha=1 YagaS.x=600
    ovenCover.y=140 ovenCover.x = 870
end

function setOakLevel() 
    ---set185
    AlenaOnWolfNoRibbon.xScale=-1 AlenaOnWolfNoRibbon.x=300 AlenaOnWolfNoRibbon.y=-500
    transition.to(landscape1, {x=0, time=1000})
    transition.to(landscape2, {x=0, time=1500, delay=500})
    transition.to(landscape3, {x=0, time=1000, delay=1000})
    transition.to(groundLevel, {x=0, time=1500, delay=1500})
    transition.to(grass, {x=0, time=1500, delay=2000})
    transition.to(shadowLayer14, {alpha=1, time=1000, delay=3500})
    transition.to(AlenaOnWolfNoRibbon, {y=290, time=1000, delay=3500})
end

function moveToOak()
    mountain:scale(0.5, 0.5) mountain.x=1050 mountain.y=520
    oldOak:scale(0.5, 0.5)
    chestClosed:scale(0.5, 0.5)
    mountain.x=1500 mountain.y=520
    oldOak.x = 1500 oldOak.y = 400
    chestClosed.x=1235 chestClosed.y=220
    AlenaNoRibbon.x=270
    WolfSit.xScale=-1 WolfSit.x=350
    transition.to(background, {x=-1074, time=1500})
    transition.to(landscape1, {x=-1074, time=1500})
    transition.to(landscape2, {x=-1074, time=1500})
    transition.to(landscape3, {x=-1074, time=1500})
    transition.to(groundLevel, {x=-1074, time=1500})
    transition.to(grass, {x=-1074, time=1500})
    transition.to(shadowLayer14, {x=-1074, time=1500})
    transition.to(mountain, {x=1050, time=1000, delay=1500})
    transition.to(oldOak, {x=1050, time=1000, delay=1500})
    transition.to(chestClosed, {x=790, time=1000, delay=1500})
    

    transition.to(mountain, {xScale = 1, yScale=1, y = 600, x = 1200, time=1000, delay=3000})
    transition.to(oldOak, {xScale = 1, yScale=1, y = 400, x = 1150, time=1000, delay=3000})
    transition.to(chestClosed, {xScale = 1, yScale=1, x=670, y=85, time=1000, delay=3000})

    transition.to(AlenaOnWolfNoRibbon, {y=-500, time=1000, delay=3500})
    transition.to(AlenaNoRibbon, {y=270, time=1000, delay=3500})
    transition.to(WolfSit, {y=270, time=1000, delay=3500})

end

function bearPushTree()
    transition.to(BearS, {x=700, y=240, time=500})
    transition.to(oldOak, {rotation=90 , x=800, y=600, time=700, delay=500})
    transition.to(chestClosed, {y=200, time=500, delay=1000})
    transition.to(chestClosed, {alpha=0, time=10, delay=1500})
    transition.to(chestOpen, {alpha=1, time=10, delay=1500})
    transition.to(BearS, {x=1200, time=1000, delay=2000})
    hareRun.xScale = -1
    transition.to(hareRun, {alpha=1, time=500, delay=2500})
end

function wolfPushTree()
    transition.to(BearS, {x=700, y=240, time=500})
    transition.to(oldOak, {rotation=90 , x=800, y=600, time=700, delay=500})
    transition.to(chestClosed, {y=200, time=500, delay=1000})
    transition.to(chestClosed, {alpha=0, time=10, delay=1500})
    transition.to(chestOpen, {alpha=1, time=10, delay=1500})
    transition.to(MagicWolf, {y=0, time=700, delay=1800})
    transition.to(WolfSit, {alpha=1, time=700, delay=2000})
    transition.to(BearS, {alpha=0, time=700, delay=2000})
    transition.to(MagicWolf, {y=-800, time=700, delay=2700})
    hareRun.xScale = -1
    transition.to(hareRun, {alpha=1, time=500, delay=2500})
end

function bearAndTree()
    BearS.x=-200 BearS.y=270 BearS.xScale = -1
    transition.to(BearS, {x=530, time=1000, delay=500})
end

function wolfAndTree()
    BearS.xScale = -1
    BearS.x=530 BearS.y=270 BearS.alpha=0
    transition.to(MagicWolf, {y=0, time=700})
    transition.to(WolfSit, {alpha=0, time=700, delay=700})
    transition.to(BearS, {alpha=1, time=700, delay=800})
    transition.to(MagicWolf, {y=-800, time=700, delay=1500})
    transition.to(BearS, {x=530, time=1000, delay=500})
end

function catchADuck(num)
    if num==0 then
        transition.to(MagicWolf, {y=0, time=700})
        transition.to(WolfS, {alpha=0, time=700, delay=700})
        transition.to(drake, {alpha=1, time=700, delay=700})
        transition.to(MagicWolf, {y=-800, time=700, delay=1500})
        transition.to(drake, {x=400, y=0, time=500, delay=2000})
    else
        transition.to(brotherShape, {alpha=1, time=500, delay=500})
        transition.to(brotherShape, {x=350, time=500, delay=1000})
    end
end

function loadMotherFinal()
    MotherS.x=595 MotherS.y=270 MotherS.alpha=0
    transition.to(MotherWarS, {y=270, time=700})
    transition.to(MotherWarS, {alpha=0, time=1000, delay=700})
    transition.to(MotherS, {alpha=1, time=1000, delay=1500})
end

function showEnding() end

-----------------------------------------------------------------------------------------
--
-- ORGANISING
--
-----------------------------------------------------------------------------------------

-- Move layers in the right order
local function organizeStage()
    background:toFront()
    midlayer1:toFront()
    midlayer2:toFront()
    characters:toFront()
    midlayer3:toFront()
    charactersDial:toFront()
    foregoundGr:toFront()
    textLayers:toFront()
end

-----------------------------------------------------------------------------------------
--
-- CONTENT TABLES
--
-----------------------------------------------------------------------------------------


choices = {
    bless = false,
    basement = false,
    bucket = 0,
    brother = 'NoInfo',
    brother1 = 'NoInfo',
    advice = true,
    notListen = 0,
    vasilisa = 'NoInfo',
    vasilisaGo = false,
    bear = false,
    berries = true,
    wolfPenalty = 0,
}

local scenes = {} 

-------- Act 1 Scenes 1 - 38

    scenes[1] = {
        sName = 1,
        openingAnimation = {
            [1] = 'background1.png', 
            [2] = 'foreground1.png'
        },
        setStage = 'set1',
        text = "In a small house on the edge of the dark forest, there lived a brother and sister, Ivan and Alena.",
        follows = 2,
        animations = function()
            loadHomeSet() 
            transition.to(AlenaS, {y=270, time=1000, delay=4500})
            transition.to(IvanS, {y=290, time=1000, delay=4500}) 
        end,
        animationComplete = function()
            landscape3.x= 0
            landscape2.x= -15
            landscape1.rotation= 0 landscape1.y=630
            shadowLayer1.alpha=1
            houseOutside.y = 0
            IvanS.y=290
            AlenaS.y=270
            foreground.y = 0
        end
    }
    scenes[2] = {
        sName = 2,
        text = 'Their mother goes into the city every morning, leaving before the golden eye of the sun peeps over the horizon, returning only as the dying light turns the trees of the forest orange and red, as if kindling a fire deep in their depths.',
        follows = 3,
        animations = function()
            --Effect: orangeLight
            sun.alpha=1
            transition.to(sun, {y=-200, x=400, time=1000})
            transition.to(sun, {y=50, x=650, time=1000, delay=1000})
            transition.to(background, {y=-250, time=2000})
            transition.to(orangeLight, {alpha=1, time=1000, delay=1000})
        end,
        animationComplete = function()
            background.y = -250
            sun.y = 50 sun.x = 650
            orangeLight.alpha=1
        end,
    }
    scenes[3] = {
        sName = 3,
        text = "Alena, as the oldest, has to watch over her little brother, and every morning before going to the city, her mother gives her a set of three instructions to follow throughout the day.",
        follows = 4,
        animations = function()
            --Sound: Birds singing
            transition.to(orangeLight, {alpha=0, time=1000})
            transition.to(MotherS, {y=270, time=1000})
        end,
        animationComplete = function()
            MotherS.y = 270
        end,
        soundEffect = 'birdsSinging.mp3',
    }
    scenes[4] = {
        sName = 4,
        text = '"Alena, I\'m going to Tsar-gorod, so keep an eye on your brother. I\'ll be back before the sun goes down. Do you remember the rules?"',
        selection = {
            [1] = {'"Yes, I do."', 5},
            [2] = {'"Remind me, please, just in case."', 7}
        },
        animations = function()
            showDialogue(Mother)
        end,
        animationComplete = function()
            hideDialogue()
        end 
    }
    scenes[5] = {
        sName = 5,
        text = 'Alena doesn\'t really care about the rules. They have something to do with not playing near the basement, but nothing ever happens in the house, so Alena isn\'t worried.',
        follows = 6,
        clearSelection = true,
        animations = function()
            hideDialogue()
        end,
        animationComplete = function()
            choices.bless = false
            hideDialogue()
        end 
    }
    scenes[6] = {
        sName = 6,
        text = 'Mom: Promise me you\'ll follow the rules.',
        follows = 8,
        animations = function()
            showDialogue(Mother)
        end,
        animationComplete = function()
            choices.bless = true
        end
    }
    scenes[7] = {
        sName = 7,
        text = 'Mom: Don\'t go into the forest.\nDon\'t let your brother run around in the house.\nDon\'t go into the basement, no matter what you hear from there.\nPromise me.',
        follows = 8,
        clearSelection = true,
        animations = function()
            showDialogue(Mother)
        end,
        animationComplete = function()
        end
    }
    scenes[8] = {
        sName = 8,
        text = 'Alena: I\'ll follow your rules, I promise.',
        follows = 9,
        animations = function()
            hideDialogue()
            showDialogue(Alena)
        end,
        animationComplete = function()
            hideDialogue()
        end
        
    }
    scenes[9] = {
        sName = 9,
        setStage = 'set9',
        openingAnimation = {
            [1] = 'background2.png', 
            [2] = 'foreground2.png'
        },
        text = 'After hearing that reassurance, her mother leaves, and Alena is alone with her brother. She is soon bored, but being an obedient daughter, she refrains from running around the house and dutifully keeps an eye on her brother. ',
        follows = 10,
        animations = function()
            setStageHome()
        end,
        animationComplete = function()
            bed.y=0
            tableCloth.y=5
            shadowLayer2.alpha=1
            foreground.y = 0
        end
    }
    scenes[10] = {
        sName =  10,
        text = 'Alena does all her chores - cleaning the dishes, sweeping the floors, and dusting all the knick-knacks. Then she sits down near the window overlooking the forest, while her brother plays on the floor. There\'s nothing going on outside.',
        follows = 11,
        animations = function() 
            --Sound: cleaning
            transition.to(broom, {y=-30, time=700, delay=300})
            transition.to(dishes, {y=-25, time=500, delay=1000})
            transition.to(dishes, {x=150, y=-180, time=500, delay=2000})
            transition.to(broom, {x=500, time=500, delay=2500})
            transition.to(broom, {x=200, time=500, delay=3000})
        end,
        animationComplete = function()
            broom.y=-30 broom.x=200
            dishes.y=-180 dishes.x=150
        end
    }
    scenes[11] = {
        sName = 11,
        text = 'Once the sun climbs higher in the sky, the sweltering heat beats upon the house, which grows further and further from the shortening reach of the forest shade. Ivan grows tired of playing with his toys under his sister\'s watchful gaze.',
        follows = 12,
        animations = function()
            --Effect: light in the room
            transition.to(shadowLayer2, {alpha=0.5, time=1000, delay=100})
            AlenaS.x = 450 
            IvanS.x = 350
            transition.to(AlenaS, {y=270, time=1000, delay=1000})
            transition.to(IvanS, {y=290, time=1000, delay=1500}) 
        end,
        animationComplete = function()
            AlenaS.x = 450  AlenaS.y = 270 
            IvanS.x = 350 IvanS.y = 290
            shadowLayer2.alpha=0.5
        end
    }
    scenes[12] = {
        sName = 12,
        text = 'Ivan: "Alena, can I go and play near the basement door? It is cooler there than in the rest of the house."',
        selection = {
            [1] = {'"Sure, but promise me you won\'t open the basement door."', 13},
            [2] = {'"No, stay here in the greatroom."', 15}
        },
        animations = function()
            showDialogue(Ivan)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }
    scenes[13] = {
        sName = 13,
        text = 'Ivan runs happily to the door and plays with his toys for a while. He likes it here. Despite the sunny day outside, there is frost in the air that comes creeping out from under the basement\'s thick wooden door.',
        follows = 14,
        clearSelection = true,
        animations = function() 
            hideDialogue()
            IvanS.xScale = -1 
            transition.to(IvanS, {x=-50, time=1000, delay=500}) 
        end,
        animationComplete = function() 
            choices.basement = true 
            IvanS.xScale = 1 IvanS.x = -50
        end
    }
    scenes[14] = {
        sName = 14,
        text = 'When it is time for lunch, Alena calls to her brother, but he doesn\'t answer. "He is probably too busy with his toys!" thinks Alena. Then, she goes looking for him.',
        follows = 18,
        clearSelection = true,
        animations = function()
            --Sound: cooking 
            transition.to(ovenFire, {alpha=1, time=1000, delay=500}) 
        end,
        animationComplete = function()
            ovenFire.alpha=1 
        end
    }
    scenes[15] = {
        sName = 15,
        text = 'Ivan is not happy but stays in chamber dutifully obeying his big sister.',
        follows = 16,
        clearSelection = true,
        animations = function()
            hideDialogue()
            IvanS.xScale = -1 
        end,
        animationComplete = function()
            choices.basement = false 
            IvanS.xScale = 1 IvanS.x = -50
        end
    }
    scenes[16] = {
        sName = 16,
        text = 'Around noon, Alena cooks lunch, and when she finishes, she calls for her brother, but gets no reply. "Foolish boy!" she thinks.',
        follows = 17,
        clearSelection = true,
        animations = function()
            --Sound: cooking 
            hideDialogue()
            transition.to(ovenFire, {alpha=1, time=1000, delay=500})  
        end,
        animationComplete = function()
            ovenFire.alpha=1 
        end
    }
    scenes[17] = {
        sName = 17,
        text = '"He probably went to play near the basement door anyway. The midday heat doesn\'t reach there, so it stays nice and cool." So she heads for the basement door.',
        follows = 18,
        clearSelection = true,
        animations = function()
        end,
        animationComplete = function()
        end
    }
    scenes[18] = {
        sName = 18,
        setStage = 'set18',
        openingAnimation = {
            [1] = 'background3.png', 
            [2] = 'foreground3.png'
        },
        text = 'Suddenly, Alena sees that the heavy wooden door to the basement is ajar, and she hears a faint whispering "Water, please, give me some water..."',
        follows = 19,
        clearSelection = true,
        animations = function()
            --Sound: creepy basement
            setBasementStage()
        end,
        animationComplete = function()
            foreground.y = 0
            basementStage.alpha=1
            icyCurtain.isVisible=false
            lights3.y=0
            waterFount.alpha=1
            koshPrisoner.alpha=1
            bucket1.y=-50
            bucket2.y=470
            bucketTread.y=-50
        end
    }
    scenes[19] = {
        sName = 19, 
        text = 'Ivan is within, standing in front of an old man, all skin and bones, and bound to the wall with twelve iron chains. "Water, please, give me some water.." pleads the old man.',
        selection = {
            [1] = {'"Who are you? What are you doing here?"', 20},
            [2] = {'"Ivan, step back, don\'t get closer!"', 21}
        },
        clearSelection = true,
        animations = function() 
            IvanS.x=560
            AlenaS.x=240
            transition.to(IvanS, {y=270, time=1000})
            transition.to(AlenaS, {y=60, time=1000})
        end,
        animationComplete = function()
            IvanS.x=560
            IvanS.y=270
            AlenaS.y=60
        end
    }
    scenes[20] = {
        sName = 20,
        text = 'Prisoner: "I am just an old man… Your mother imprisoned me long ago for my evil deeds. I haven\'t seen the sunlight in years. Be a good girl, give me some water..."',
        clearSelection = true,
        selection = {
            [1] = {'Give the old man some water', 22},
            [2] = {'Don\'t give him anything', 26}
        },
        animations = function()
            --Sound: waterRunning 
            icyCurtain.isVisible = false 
            showDialogue(KoscheiPlea)
        end,
        animationComplete = function()
            hideDialogue()
            icyCurtain.isVisible = true
        end
    }
    scenes[21] = {
        sName = 21,
        text = 'Prisoner: "Have no fear of me, children. I am old and famished. I mean you no harm. All I ask is a bucket of water to wet my throat. Have mercy, help me please."',
        clearSelection = true,
        selection = {
            [1] = {'Give the old man some water', 22},
            [2] = {'Don\'t give him anything', 26}
        },
        animations = function() 
            icyCurtain.isVisible = false 
            showDialogue(KoscheiPlea)
        end,
        animationComplete = function() 
            hideDialogue()
            icyCurtain.isVisible = true
        end
    }
    scenes[22] = {
        sName = 22,
        changeFlow = function()
            choices.bucket=1
        end,
        text = 'Prisoner: "Thank you child. (He drinks the bucket in one gulp.) Neither food nor drink has passed my lips for ages. Please, will you fetch me another bucket?"',
        clearSelection = true,
        selection = {
            [1] = {'Give the old man more water', 23},
            [2] = {'Don\'t give him anything', 26}
        },
        animations = function()
        --Sound: splash
            hideDialogue() 
            animateBucket()
        end,
        animationComplete = function()
            hideDialogue() 
            bucket2.y=470
            bucketTread.y=-50
            bucket2.x=275
            bucketTread.x=180
            bucket2.rotation=0
        end
    } 
    scenes[23] = {
        sName = 23,
        changeFlow = function()
            choices.bucket = 2
        end,
        text = 'Prisoner: "Thank you child. (He drinks the bucket in one gulp.) Neither food nor drink has passed my lips for ages. Please, will you fetch me another bucket?"',
        clearSelection = true,
        selection = {
            [1] = {'Give the old man more water', 24},
            [2] = {'Don\'t give him anything', 26}
        },
        animations = function()
            --Sound: splash
            hideDialogue()
            animateBucket() 
        end,
        animationComplete = function()
        hideDialogue()
            bucket2.y=470
            bucketTread.y=-50
            bucket2.x=275
            bucketTread.x=180
            bucket2.rotation=0 
        end
    }
    scenes[24] = {
        sName = 24,
        text = 'Prisoner: "Thank you, girl, for your kindness. For that I won\'t eat you. But you are a disobedient daughter, so I don\'t need you. I\'ll take your brother instead!"',
        follows = 25,
        clearSelection = true,
        animations = function()
            --Sound: cold wind
            icyCurtain.isVisible = false 
            showDialogue(Koschei)
        end,
        animationComplete = function()
            hideDialogue()
            bucket2.isVisible=false
            bucketTread.isVisible=false
        end
    }
    scenes[25] = {
        sName = 25,
        text = 'With these words, he tears off all twelve chains, grabs Ivan, swirls on the spot, and in the next second, they are both gone.',
        follows = 31,
        clearSelection = true,
        animations = function() 
            icyCurtain.alpha=1
            icyCurtain.isVisible = true
            hideDialogue()

            transition.to(icyCurtain, {y=-1000, time=1500})
            transition.to(chains, {alpha=1, time=1000, delay=500})
            transition.to(koshPrisoner, {alpha = 0, time=500, delay=500})
            transition.to(IvanS, {y = -600, time=500, delay=500})
        end,
        animationComplete = function()
            icyCurtain.y=-1000
            chains.alpha=1
            koshPrisoner.alpha=0
            IvanS.y=-600
            hideDialogue()
        end
    }
    scenes[26] = {
        sName = 26,
        text = 'Prisoner: "Aren\'t you tired of always listening to your mother? Don\'t you want to think for yourself and make decisions like a grown up?" he tries to persuade Alena.',
        clearSelection = true,
        selection = {
            [1] = {'Give the old man some water', 23},
            [2] = {'Don\'t give him anything', 27}
        },
        changeFlow = function()
            print(choices.bucket..' buckets given')
            if choices.bucket == 0 then scenes[26].selection[1][2] = 22
            elseif choices.bucket == 1 then scenes[26].selection[1][2] = 23
            elseif choices.bucket == 2 then scenes[26].selection[1][2] = 24
            end
        end,
        animations = function()
            icyCurtain.isVisible = false 
            showDialogue(KoscheiPlea)
        end,
        animationComplete = function()
            hideDialogue()
            icyCurtain.isVisible = false 
        end
    }
    scenes[27] = {
        sName = 27,
        setStage = 'set9',
        text = 'Alena takes her brother and closes the door to the basement. When they go up, Ivan reproaches her for being so harsh on the prisoner. "Aren\'t we supposed to respect our elders?" asks Ivan.',
        follows = 28,
        clearSelection = true,
        animations = function()
        --Sound: steps
            hideDialogue()
            setStageHomeFast()
            AlenaS.x = 450 
            IvanS.x = 350
            transition.to(AlenaS, {y=270, time=1000, delay=500})
            transition.to(IvanS, {y=290, time=1000, delay=1000}) 
        end,
        animationComplete = function()
            AlenaS.x = 450  AlenaS.y = 270 
            IvanS.x = 350 IvanS.y = 290
        end
    }
    scenes[28] = {
        sName = 28,
        text = 'Alena says that they should follow mother\'s orders first and foremost. Back in the greatroom, she puts Ivan to bed and nestles near him. In a second, her eyes close and she falls fast asleep.',
        follows = 29,
        animations = function()
            IvanS.xScale = -1
            transition.to(IvanS, {x=-200, time=1000, delay=1500})  
        end,
        animationComplete = function()
            IvanS.xScale = -1
            IvanS.x=-200
        end
    }
    scenes[29] = {
        sName = 29,
        setStage = 'set18',
        text = 'When she wakes up, her brother is nowhere to be found. Panic-stricken, she runs to the basement and sees the open door and an empty buсket on the floor near the prisoner.',
        follows = 30,
        clearSelection = true,
        animations = function() 
            --Sound: lazy day
            setBasementFast()
            IvanS.xScale = 1
            IvanS.x=560
            AlenaS.x=240
            transition.to(AlenaS, {y=60, time=1000, delay=1000})
            transition.to(IvanS, {y=290, time=1000, delay=1500})
        end,
        animationComplete = function()
            foreground.y = 0
            basementStage.alpha=1
            icyCurtain.isVisible=true
            lights3.y=0
            waterFount.alpha=1
            koshPrisoner.alpha=1
            bucket1.y=-50
            bucket2.y=470
            bucketTread.y=-50
            IvanS.x=560
            IvanS.y=270
            AlenaS.y=60
        end
    }
    scenes[30] = {
        sName = 30,
        text = '"Thank you, Ivan, for your kindness. For that I\'ll take you with me!" says the bony prisoner and tears off all twelve of his chains, grabs Ivan, swirls on the spot, and in the next second, both are gone.',
        follows = 31,
        clearSelection = true,
        animations = function() 
            --Sound: icy wind
            icyCurtain.isVisible = true

            transition.to(icyCurtain, {y=-1000, time=1500})
            transition.to(chains, {alpha=1, time=1000, delay=500})
            transition.to(koshPrisoner, {alpha = 0, time=500, delay=500})
            transition.to(IvanS, {y = -600, time=500, delay=500})
        end,
        animationComplete = function()
            icyCurtain.y=-1000
            chains.alpha=1
            koshPrisoner.alpha=0
            IvanS.y=-600
            hideDialogue()
        end
    }
    scenes[31] = {
        sName = 31,
        text = "Alena runs outside, screaming her brother\'s name, but gets only the moaning of the wind and the whispering of the forest in reply.",
        follows = 32,
        openingAnimation = {
            [1] = 'background5.png', 
            [2] = 'foreground1.png'
            },
        setStage = 'set1',
        animations = function()
            --Effect: leaves fly
            --Sound: wind in the trees
            transition.to(AlenaCryS, {y=270, time=1000, delay=500})
            leaves.alpha = 1
            transition.to(leaves, {y=550, x=500, time=3000, delay=1000})
        end,
        animationComplete = function()
            AlenaCryS.y=270
            leaves.alpha=1 leaves.x=500 leaves.y=550
        end
    }
    scenes[32] = {
        sName = 32,
        text = 'Alena\'s mother returns home early, with the strange feeling that something might have happened. Alena can\'t look her in the eyes. She stumbles and mumbles but eventually tells the whole truth.',
        follows = 33,
        animations = function()
        --Effect: leaves fly
            MotherS.x=600
            transition.to(MotherS, {y=270, time=700})
        end,
        animationComplete = function()
            MotherS.y=270
            MotherS.x=600
        end
    }
    scenes[33] = {
        sName = 33,
        text = 'Mom: "Now Koschei will summon his armies and storm the Tsar-gorod. He\'s had dozen of years to plan his revenge for his imprisonment. The Tsar will need my help, so you have to find your brother on your own."',
        follows = 34,
        animations = function()
        --Sound: armor clash
            showDialogue(Mother)
            transition.to(MotherS, {y=-400, time=700, delay=1000})
            transition.to(MotherWarS, {y=270, time=700, delay=2700})
        end,
        animationComplete = function()
            hideDialogue()
            MotherS.y=-400
            MotherWarS.y=270
        end
    }
    scenes[34] = {
        sName = 34,
        text = 'Alena\'s mother, no other than Marya Morevna, the famous warrior princess, whistles and a second later, the depths of the forest open, and a huge Gray wolf appears before Alena\'s eyes.',
        follows = 35,
        animations = function()
        --Sound: bushes
        --Effect: leaves fly
            hideDialogue()
            WolfS.xScale = -1 
            WolfS.y=290
            transition.to(WolfS, {x=200, time=1000, delay=1000})
        end,
        animationComplete = function()
            hideDialogue()
            WolfS.xScale = -1 
            WolfS.y=290 WolfS.x=200
        end
    }
    scenes[35] = {
        sName = 35,
        text='Mom: "That\'s my old friend and loyal companion, Gray Wolf. He helped me to imprison the Koschei last time. He will serve you as good as he served me."" says Alena\'s mother. ',
        follows = 36,
        animations = function()
            showDialogue(MotherWar)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }
    scenes[36] = {
        sName = 36,
        changeFlow = function()
            if choices.bless==true then scenes[36].follows=37 else scenes[36].follows=38 end
        end,
        text='Mom: "Koschei lives in an icy stronghold to the north. He is Deathless, so there\'s no killing him, but you can get into his castle to save your brother, while he is busy fighting me and the Tsar."',
        follows = 37,
        animations = function()
            showDialogue(MotherWar)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }
    scenes[37] = {
        sName = 37,
        text='Alena promises that she\'ll find her brother, though the road to Koschei\'s stronghold is unknown and untrodden. Her mother kisses her on forehead and gives her a motherly blessing.',
        follows = 39,
        animations = function()
        --Sound: wind
        --Effect: leaves fly
            hideDialogue()
        end,
        animationComplete = function()
            hideDialogue()
        end
    }
    scenes[38] = {
        sName = 38,
        text='Alena promises that she\'ll find her brother, though the road to Koschei\'s stronghold is unknown and untrodden. Her mother opens a big trunk, takes out her sword and armor. Mother and daughter say their goodbyes.',
        follows = 39,
        animations = function()
         --Sound: wind
         --Effect: leaves fly
            hideDialogue()
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

-------- Act 2 Scenes 39 - 61

    scenes[39] = {
        sName = 39,
        openingAnimation = {
            [1] = 'background6.png', 
            [2] = 'foreground6.png'
            },
        setStage = 'set39',
        text='Alena sits on Gray Wolf\'s back, hugs his massive neck, and he starts to run - so fast that before the sun touches down on the treetops to the west, they have already reached the crossroads on the other side of the forest.',
        follows = 40,
        animations = function()
            transition.to(landscape3, {x=0, time=1000, delay=500})
            transition.to(landscape2, {x=0, time=1000, delay=1000})
            transition.to(landscape1, {x=0, time=1000, delay=1500})
            transition.to(shadowLayer5, {alpha=1, time=1000, delay=2500})
        end,
        animationComplete = function()
            landscape3.x=0
            landscape2.x=0
            landscape1.x=0
            shadowLayer5.alpha=1
            foreground.y=0
        end
    }

    scenes[40] = {
        sName = 40,
        text='The road splits into three directions with big engraved stone pointing the way. Alena dismounts from Gray Wolf to read the tattered letters.',
        follows = 41,
        animations = function()
            transition.to(stone,{y=0, time=1000})
            WolfS.x=700 AlenaS.x=500
            transition.to(WolfS,{y=255, time=1000, delay=1000})
            transition.to(AlenaS,{y=230, time=1000, delay=1000})
        end,
        animationComplete = function()
            stone.y=0
            WolfS.x=700 WolfS.y=255 
            AlenaS.x=500 AlenaS.y=230
        end
    }

    scenes[41] = {
        sName = 41,
        text = '"If you ride to the left, you will lose your horse. If you ride to the right, you will lose your head. If you ride straight ahead, you will lose both."',
        selection = {
            [1] = {'Choose to go left', 42}, --WolfDies
            [2] = {'Choose to go straight', 43}, --Both die
            [3] = {'Choose to go right', 44} --Alena dies
        },
        changeFlow = function()
        end,
        animations = function()
        end,
        animationComplete = function()
            stone.isVisible = false
            landscape2.x=-1700
            landscape1.x=-2500
            WolfS.y=-400 
            AlenaS.y=-400
        end
    }

    scenes[42] = {
        sName = 42,
        follows = 45,
        clearSelection = true,
        text = 'After the crossroads, they ride for a while, as the sky blackens and the starry space above stares down on Alena and Gray Wolf. They are approaching a wooden fortress.', 
        changeFlow = function()
            choices.brother = 'Eagle'
            choices.brother1 = 'an eagle'
            loadBrothers('Eagle')
        end,
        animations = function()
            ridingWolftoRight(AlenaOnWolf)
            transition.to(fortress, {x=-300, time=1000, delay=2500})
            transition.to(fortress2, {x=185, time=1000, delay=2500})
        end, 
        animationComplete = function()
        end 
    }

    scenes[43] = {
        sName = 43,
        clearSelection = true,
        follows = 45,
        text = 'After the crossroads, they ride for a while, as the sky blackens and the starry space above stares down on Alena and Gray Wolf. They are approaching a wooden fortress.', 
        changeFlow = function()
            choices.brother = 'Raven'
            choices.brother1 = 'a raven'
            loadBrothers('Raven')
        end,
        animations = function()
            ridingWolftoRight(AlenaOnWolf)
            transition.to(fortress2, {x=185, time=1000, delay=2500})
            transition.to(fortress, {x=-300, time=1000, delay=2500})
        end, 
        animationComplete = function()
        end   
    }

    scenes[44] = {
        sName = 44,
        follows = 45,
        clearSelection = true,
        text = 'After the crossroads, they ride for a while, as the sky blackens and the starry space above stares down on Alena and Gray Wolf. They are approaching a wooden fortress.', 
        changeFlow = function()
            choices.brother = 'Falcon'
            choices.brother1 = 'a falcon'
            loadBrothers('Falcon')
        end,
        animations = function()
            ridingWolftoRight(AlenaOnWolf)
            transition.to(fortress, {x=-300, time=1000, delay=2500})
            transition.to(fortress2, {x=185, time=1000, delay=2500})
        end, 
        animationComplete = function()
        end   
    }

    scenes[45] = {
        sName = 45,
        follows = 46,
        text = '"Is that a Koschei stronghold?"" wonders Alena. The night is cold, so Alena shivers, but the walls in front of her don\'t look like they are made from ice.',
        animations = function() 
            transition.to(fortress, {x=0, time=1000})
            transition.to(fortress2, {x=485, time=1000})
        end,
        animationComplete = function()
            fortress.x=0
            fortress2.x=485
        end

    }

    scenes[46] = {
        sName = 46,
        text = function() 
            return '"Don\'t get scared, daughter of Marya, it is not Koschei\'s lair. It is the domain of your mother\'s brother, the shape-shifting wizard who can turn into '..choices.brother1..'," says the Gray Wolf suddenly.'
        end,
        selection = {
            [1] = {'You can talk?', 47},
        },
        animations = function()
            showDialogue(Wolf)
        end,
        animationComplete =  function()
            hideDialogue() 
        end
    }

    scenes[47] = {
        sName = 47,
        text = 'Alena: "You can talk?"',
        follows = 48,
        clearSelection = true,
        animations = function()
            showDialogue(Alena)
        end,
        animationComplete =  function()
            hideDialogue()
        end
    }

    scenes[48] = {
        sName = 48,
        text = 'Gray Wolf: "I can do many things and before the sun rises, you will see that, daughter of Marya. Before you have to deal with consequences of your choices."',
        selection = {
            [1] = {'My mother has a brother?', 49}
        },
        animations = function()
            showDialogue(Wolf)
        end,
        animationComplete =  function()
            hideDialogue()
        end
    }

    scenes[49] = {
        sName = 49,
        follows = 50,
        text = 'Alena: "My mother has a brother?"',
        clearSelection = true,
        animations = function()
            showDialogue(Alena)
        end,
        animationComplete =  function()
            hideDialogue()
        end
    }


    scenes[50] = {
        sName = 50,
        clearSelection = true,
        text = 'Gray Wolf: "Yes, she has three brothers, all wizards who can turn into birds of prey - Eagle, Raven or Falcon. They were inseparable a long time ago, but after traveling to Koschei\'s stronghold, they had a falling out."',
        follows = 51,
        animations = function()
            showDialogue(Wolf)
        end,
        animationComplete =  function()
            hideDialogue()
        end
    }

    scenes[51] = {
        sName = 51,
        text = 'It\'s getting colder and night is almost upon them, so Alena and Wolf decide to ask her uncle for shelter. His servants open the gate and escort her into the main hall.',
        follows = 52,
        clearSelection = true,
        animations = function()
            hideDialogue()
            bridge.alpha=1
            transition.to(bridge, {rotation=90, time=1000})
        end,
        animationComplete = function() 
            hideDialogue()
            bridge.alpha=1
            bridge.rotation=90
        end
    }

    scenes[52] = {
        sName = 52,
        setStage = 'set52',
        openingAnimation = {
            [1] = 'background7.png', 
            [2] = 'foreground3.png'
        },
        text = 'Her uncle is standing in a great hall wearing a gloomy look. Alena tells him her sad story, but he doesn\'t seem to be affected by it, because he is lost in his own thoughts. "Looks like I won\'t get any help from him," sighs Alena.',
        follows = 53,
        animations = function() 
            loadUncleCastle()
        end,
        animationComplete =  function()
            foreground.y=0
            landscape3.x=0
            landscape2.y=0
            WolfSit.x=900 WolfSit.y=270
            AlenaS.x=740 AlenaS.y=280
            birdSymbol.y=320
            BrotherS.y=300
            shadowLayer6.alpha=1
            throne.y=-30
        end

    }

    scenes[53] = {
        sName = 53,
        text = 'Uncle: "That\'s a very sad story indeed. I remember my own journey to Koschei\'s stronghold... It is not a place for a young girl. And if what you told me is true, I need to concentrate on protecting my kingdom, not on helping you."',
        selection = {
            [1] = {'"That\'s the reception I get from my own uncle?"', 54},
            [2] = {' Ask for Gray Wolf\'s advice', 56},
        },
        animations = function() 
            showDialogue(BrotherD)
        end,
        animationComplete =  function()
            hideDialogue()
        end
    }

    scenes[54] = {
        sName = 54,
        text = 'Alena: "That\'s the reception I get from my own uncle?"',
        follows = 55,
        clearSelection = true,
        animations = function() 
            showDialogue(Alena)
        end,
        animationComplete = function()
            hideDialogue()
            choices.advice = false
        end
    }

    scenes[55] = {
        sName = 55,
        text = 'Uncle: "If blood was really thicker than water, I wouldn\'t be in such a predicament. You can stay for one night, and continue your journey in the morning, but that is it."',
        follows = 57,
        animations = function()
            showDialogue(BrotherD) 
        end,
        animationComplete =  function()
            hideDialogue()
        end
    }

    scenes[56] = {
        sName = 56,
        text = 'Alena turns to Gray Wolf for advice, and he tells her to offer help instead of demanding help. Though not sure how it might work, Alena offers to help her uncle deal with his predicament.',
        follows = 57,
        clearSelection = true,
        animations = function() 
            hideDialogue()
        end,
        animationComplete =  function()
            choices.advice = true
        end
    }

    scenes[57] = {
        sName = 57,
        text = 'Uncle: "There\'s bad blood between me and my brothers. Years ago, we stole a seed from a tree with golden apples and a horse with a golden mane from Koshei. But my brothers took them and left me with nothing."',
        follows = 58,
        animations = function() 
            showDialogue(BrotherD)
        end,
        animationComplete =  function()
        end
    }

    scenes[58] = {
        sName = 58,
        text = 'Uncle: "So if you want to help me - steal at least one golden apple and the horse for me. Then I\'ll think about telling you how to get into Koschei\'s castle."',
        follows = 59,
        changeFlow = function()
            if choices.brother == 'Falcon' then scenes[58].follows = 59
            elseif choices.brother == 'Raven' then scenes[58].follows = 60
            else scenes[58].follows = 61
            end
        end,
        animations = function() 
        end,
        animationComplete =  function()
            hideDialogue()
        end
    }

    scenes[59] = {
        sName = 59,
        text = 'Alena reluctantly agrees, though she has no idea how she is going to steal the horse or apples from her uncles Raven and Eagle. But Gray Wolf tells her not to grieve and before the moon comes up, they are racing to the Raven domain.',
        follows = 62,
        animations = function()
            hideDialogue() 
        end,
        animationComplete =  function()
        end
    }

    scenes[60] = {
        sName = 60,
        text = 'Alena reluctantly agrees, though she has no idea how she is going to steal the horse or apples from her uncles Falcon and Eagle. But Gray Wolf tells her not to grieve and before the moon comes up, they are racing to the Falcon domain.',
        follows = 62,
        animations = function() 
            hideDialogue()
        end,
        animationComplete =  function()
        end
    }

    scenes[61] = {
        sName = 61,
        text = 'Alena reluctantly agrees, though she has no idea how she is going to steal the horse or apples from her uncles Raven and Falcon. But Gray Wolf tells her not to grieve and before the moon comes up, they are racing to the Raven domain.',
        follows = 62,
        animations = function() 
            hideDialogue()
        end,
        animationComplete =  function()
        end
    }

-------- Act 3 Scenes 62 - 104

    scenes[62] = {
        setStage = 'set62',
        sName = 62,
        text = 'They rush at full speed, so the lights of the stars in the sky flow together into a river of spilled milk. On the way, the north wind tears away a ribbon from Alena\'s braid.',
        selection = {
            [1] = {'Tell the Gray Wolf about the ribbon', 63},
            [2] = {'Forget about the ribbon', 64},
        },
        animations = function()
            transition.to(ribbon, {x=550, time=3000})
            transition.to(ribbon, {x=50, time=1000, delay=2000})
            transition.to(ribbon, {y=400, time=1000, delay=2000})
            transition.to(ribbon, {alpha=0, time=1, delay=3000})
            ridingWolftoLeft(AlenaOnWolfNoRibbon)
        end,
        animationComplete = function()
            ribbon.alpha=0
            AlenaOnWolfNoRibbon.xScale=-1
            AlenaOnWolfNoRibbon.x=400
            landscape2.x=-1300
            landscape1.x=-1500
        end
    }

    scenes[63] = {
        sName = 63,
        text = 'Gray Wolf grins while Alena tells him how the wind stole her ribbon. "Your ribbon is now five miles behind us, because even wind can\'t keep pace with me."',
        follows = 64,
        clearSelection = true,
        animations = function() 
        end,
        animationComplete =  function()
        end
    }

    scenes[64] = {
        sName = 64,
        text = 'Soon they get to the castle. With one jump, Gray Wolf leaps over the castle walls into a garden.',
        follows = 65,
        clearSelection = true,
        animations = function()
            setStronghold1()
        end,
        animationComplete =  function()
            landscape2.x=-1300
            landscape1.x=-1200
            StrongholdB1.x=-120
            AlenaOnWolfNoRibbon.x=600
            AlenaOnWolfNoRibbon.y=270
        end
    }

    scenes[65] = {
        sName = 65,
        text = '"There\'s a golden tree in the middle of the garden. Go to it and pick one apple, just don\'t touch anything else," orders Gray Wolf.',
        follows = 66,
        animations = function() 
            wolfAlenaInGarden()
            transition.to(StrongholdB1, {x=-400, time=1000})
            transition.to(AppleGarden, {x=120, time=1000})
            transition.to(GoldenApples, {y=-50, time=1000, delay=1000})
            transition.to(GoldenApple, {y=-30, time=1000, delay=1000})
            transition.to(TreeRibbon, {y=300, time=1000, delay=1000})
        end,
        animationComplete = function() 
            landscape2.x = -1700
            landscape1.x = -2300
            StrongholdB1.x = -400
            AppleGarden.x=120
            AlenaOnWolfNoRibbon.y=-400
            AlenaNoRibbon.y=270 AlenaNoRibbon.x=350
            WolfSit.xScale = -1 WolfSit.x=200 WolfSit.y=270
            GoldenApples.y=-50
            GoldenApple.y=-30
            TreeRibbon.y=300
        end
    }

    scenes[66] = {
        sName = 66,
        text = 'Doing as she is told, Alena goes to the tree and plucks a golden apple but then, she sees a beautiful ribbon tying up the branches. "That would look so pretty in my hair!" thinks Alena.',
        selection = {
            [1] = {'Leave without the ribbon', 67},
            [2] = {'Untie the ribbon', 68}
        },
        animations = function() 
            transition.to(AlenaNoRibbon, {x=450, time=1000})
            transition.to(GoldenApple, {y=10, x=420, time=1000, delay=1000})
        end,
        animationComplete = function()
            AlenaNoRibbon.x=450
            GoldenApple.x=420 GoldenApple.y=10
        end,
    }

    scenes[67] = {
        sName = 67,
        clearSelection = true,
        text = 'She leaves the ribbon on the branch and gets back to Gray Wolf. "You are a  good girl, daughter of Marya, your mother raised you well," says Gray Wolf and they rush back.',
        follows = 73,
        animations = function()
            showDialogue(Wolf)
        end,
        animationComplete = function()
        end,
    }

    scenes[68] = {
        sName = 68,
        changeFlow = function()
            choices.wolfPenalty =  choices.wolfPenalty+1 
            if choices.brother=='Raven' then
                -- If we got the quest from Raven we go to Falcon. Othervise we go ro Raven
                scenes[68].follows = 69
            else
                scenes[68].follows = 70
            end
        end,
        clearSelection = true,
        text = 'The moment Alena touches the ribbon an alarm sounds.',
        follows = 69,
        animations = function()
            transition.to(TreeRibbon, {rotation=50, x=540, y=350, time=500})
            transition.to(TreeRibbon, {rotation=-30, x=570, y=450, time=500, delay=500})
            transition.to(TreeRibbon, {rotation=10, x=550, y=500, time=500, delay=900})
            alarmBellsRing()
            choices.notListen = choices.notListen+1
        end,
        animationComplete = function()
            AlenaNoRibbon.y=-400
            WolfSit.y=-400
            TreeRibbon.y=500
        end,
    }

    scenes[69] = {
        sName = 69,
        setStage = 'set62',
        clearSelection = true,
        text = 'Gray Wolf grabs Alena and leaps over the wall. "You should have listened to me," he says. "Now Falcon\'s hounds will follow us to his brother\'s stronghold!"',
        follows = 71,
        animations = function()
            ridingWolftoRight(AlenaOnWolfNoRibbon)
        end,
        animationComplete = function()
        end,
    }

    scenes[70] = {
        sName = 70,
        setStage = 'set62',
        clearSelection = true,
        text = 'Gray Wolf grabs Alena and leaps over the wall. "You should have listened to me," he says. "Now Raven\'s hounds will follow us to his brother\'s stronghold!"',
        follows = 71,
        animations = function() 
            ridingWolftoRight(AlenaOnWolfNoRibbon)
        end,
        animationComplete = function() 
        end,
    }

    scenes[71] = {
        sName = 71,
        follows = 72,
        text = "But seeing that Alena is scared, Gray Wolf softens. \"Climb off my back and hide under this tree,\" he orders. \"Don\'t make any sound. Just wait for my return.\" This time Alena listens.",
        animations = function()
            loadBushToHide()
            WolfSit.xScale = -1
            WolfSit.x=400
            AlenaNoRibbon.x=600
            transition.to(AlenaOnWolfNoRibbon, {y=-400, time=500})
            transition.to(AlenaNoRibbon, {y=210, time=500, delay=400}) 
            transition.to(WolfSit, {y=220, time=500, delay=400})
            transition.to(AlenaNoRibbon, {y=210, x=250, time=1000, delay=1500}) 
        end,
        animationComplete = function()
            WolfSit.xScale = -1 WolfSit.x=400 WolfSit.y=220
            AlenaOnWolfNoRibbon.y=-400
            AlenaNoRibbon.y=210 AlenaNoRibbon.x=250
            bushToHide.x=300 bushToHide.y=500 bushToHide.rotation=0
        end
    }

    scenes[72] = {
        sName = 72,
        follows = 73,
        text = function()
            return "In the twinkling of an eye, Gray Wolf turns himself into a golden apple. Hounds approach, and the servants decide that the thief must have run away, leaving what he had tried to steal behind. They pick up the apple and turn back.  Soon after Gray Wolf returns, and Alena and her companion run to "..choices.brother.."\'s domain in silence. "
        end,
            animations = function()
                GoldenApple.x=400
                transition.to(WolfSit, {y=-220, time=500, delay=1000})
                transition.to(MagicWolf, {y=-100, time=500, delay=300})
                transition.to(GoldenApple, {y=40, time=500, delay=1300})
                transition.to(MagicWolf, {y=-600, time=500, delay=2000})
                transition.to(UncleServants, {x=300, time=1000, delay=2300})
                transition.to(UncleServants, {x=-1000, time=1000, delay=4000})
                transition.to(GoldenApple, {x=-500, time=1000, delay=4000})
        end,
        animationComplete = function()
            WolfSit.y=-220
            UncleServants.x=300
            UncleServants.x=-1000
            GoldenApple.x=-500
            MagicWolf.y=-600
        end
    }

    scenes[73] = {
        sName = 73,
        follows = 74,
        setStage = 'set73',
        text='Seeing the golden apple, her uncle\'s face flourishes a smile. \"You are a very handy girl,\" says he.',
        animations = function()
            hideDialogue()
            AlenaNoRibbon.x=700 AlenaNoRibbon.y=280
            GoldenApple.x=560 GoldenApple.y=-30 
        end,
        animationComplete = function()
            AlenaNoRibbon.x=700 AlenaNoRibbon.y=280
            GoldenApple.x=560 GoldenApple.y=-30 
        end
    }

    scenes[74] = {
        sName = 74,
        changeFlow = function() 
            if choices.brother=='Eagle' then
                scenes[74].follows = 76
            else
                scenes[74].follows = 75
            end
        end,
        text='Uncle: \"Maybe you really can save Ivan. But for now, go and fetch me the horse with the golden mane from my other brother.\"',
        animations = function()
            showDialogue(BrotherD)
        end,
        animationComplete = function() 
            AlenaNoRibbon.x=-400 
            hideDialogue()
        end
    }

    scenes[75] = {
        sName = 75,
        setStage = 'set75',
        follows = 77,
        text='As the moon climbs high in the sky, Alena and her loyal companion dash to the Eagle\'s castle.',
        animations = function()
            hideDialogue()
            ridingWolftoLeft(AlenaOnWolfNoRibbon)
        end,
        animationComplete =  function()
        end
    }

    scenes[76] = {
        sName = 76,
        setStage = 'set75',
        follows = 77,
        text='As the moon climbs high in the sky, Alena and her loyal companion dash to the Falcon\'s castle.',
        animations = function()
            hideDialogue()
            ridingWolftoLeft(AlenaOnWolfNoRibbon)
        end,
        animationComplete = function() end
    }

    scenes[77] = {
        sName = 77,
        follows = 78,
        text='There with one jump, Gray Wolf leaps over the castle walls near the stables. ',
        animations = function() 
            setStronghold2()
        end,
        animationComplete = function()
            landscape2.x=-1300
            landscape1.x=-1200
            StrongholdB2.x=-120
            AlenaOnWolfNoRibbon.x=600
            AlenaOnWolfNoRibbon.y=270
        end
    }

    scenes[78] = {
        sName = 78,
        follows = 79,
        text='"There\'s the horse in that stall. Sneak in and get him, but don\'t touch the bridle," orders Gray Wolf.',
        animations = function()
            wolfAlenaInGarden()
            transition.to(StrongholdB2, {x=-400, time=1000})
            transition.to(stableImg, {x=0, time=1000})
            transition.to(stableRibbon, {y=300, time=1000, delay=1000})
            transition.to(GoldenHorse, {y=10, time=1000, delay=1000})
        end,
        animationComplete = function()
            landscape2.x = -1700
            landscape1.x = -2300
            StrongholdB2.x = -400
            stableImg.x=0
            GoldenHorse.y=10
            AlenaOnWolfNoRibbon.y=-400
            AlenaNoRibbon.y=270 AlenaNoRibbon.x=350
            WolfSit.xScale = -1 WolfSit.x=200 WolfSit.y=270
            stableRibbon.y=300
        end
    }

    scenes[79] = {
        sName = 79,
        selection = {
            [1] = {'Leave without the ribbon', 80},
            [2] = {'Untie the ribbon', 81}
        },
        text='Doing as she was told, Alena sneaks into the stall and sees the most beautiful horse inside. Its bridle is decorated with red ribbons. "One of those would look so pretty in my hair!" thinks Alena.',
        animations = function()
            transition.to(AlenaNoRibbon, {x=650, time=1000})
        end,
        animationComplete = function() end
    }

    scenes[80] = {
        sName = 80,
        follows = 85,
        clearSelection = true,
        text='She leaves the ribbon behind and leads the horse out to Gray Wolf. "You are a good girl, daughter of Marya, your mother raised you well." says Gray Wolf, and they rush back.',
        animations = function()
            showDialogue(Wolf) 
        end,
        animationComplete = function() end
    }

    scenes[81] = {
        sName = 81,
        follows = 82,
        changeFlow = function() choices.wolfPenalty =  choices.wolfPenalty+1 end,
        text='The moment Alena touches the ribbon, an alarm rings out. Alena catches the horse and runs to Gray Wolf.',
        animations = function()
            transition.to(stableRibbon, {rotation=50, x=690, y=350, time=500})
            transition.to(stableRibbon, {rotation=-30, x=660, y=450, time=500, delay=500})
            transition.to(stableRibbon, {rotation=10, x=700, y=500, time=500, delay=900})
            alarmBellsRing()
            transition.to(AlenaNoRibbon, {x=400, time=1000, delay=1500})
            transition.to(GoldenHorse, {x=400, time=1000, delay=1500})
            choices.notListen = choices.notListen+1
        end,
        animationComplete = function()
            AlenaNoRibbon.x=400
            stableRibbon.y=500
            GoldenHorse.y=10 GoldenHorse.x=400
        end
    }

    scenes[82] = {
        sName = 82,
        follows = 83,
        clearSelection = true,
        text='"You should have listened to me," says he. "This horse is not as fast as I am. It may run fast through the courtyard, but outside the wall, they can catch us!"',
        animations = function()
            showDialogue(Wolf)
        end,
        animationComplete = function()
            bellAlarm.isVisible = false
            stableRibbon.isVisible = false
            stableImg.x=-1200
            StrongholdB2.x=-1200
            GoldenHorse.y=0
        end
    }

    scenes[83] = {
        sName = 83,
        follows = 84,
        text='But seeing that Alena is scared, Gray Wolf softens. "There is still enough witchcraft left  in me, so the moment we are outside the castle, rush the horse into the woods, hide there, and wait for my return."',
        animations = function()
            WolfSit.x=400 WolfSit.y=270
            hideDialogue()
            loadBushToHide()
            transition.to(GoldenHorse, {x=-300, time=1500, delay=500}) 
            transition.to(AlenaNoRibbon, {y=210, x=250, time=1000, delay=1500}) 
        end,
        animationComplete = function()
            bushToHide.x=300 bushToHide.y=500 bushToHide.rotation=0
            GoldenHorse.x=-300
            AlenaNoRibbon.y=210 AlenaNoRibbon.x=250
        end
    }

    scenes[84] = {
        sName = 84,
        follows = 85,
        text= function()
            return 'In a twinkling of an eye, Gray Wolf turns himself into a horse with a golden mane. The servants, who see him decide that the thief must have run away leaving what he had been trying to steal. They take the horse and turn back. Soon after, Gray Wolf returns to himself, and he and Alena rush  to '..choices.brother1..' in silence. '
        end,
        animations = function()
            WolfSit.x=400
            GoldenHorse.x=300 GoldenHorse.y=-500
            transition.to(WolfSit, {y=-220, time=500, delay=1000})
            transition.to(MagicWolf, {y=-100, time=500, delay=300})
            transition.to(MagicWolf, {y=-600, time=500, delay=2000})
            transition.to(GoldenHorse, {y=-50, time=500, delay=1300})
            transition.to(UncleServants, {x=300, time=1000, delay=2300})
            transition.to(UncleServants, {x=-1000, time=1000, delay=4000})
            transition.to(GoldenHorse, {x=-500, time=1000, delay=4000})
        end,
        animationComplete = function()
            WolfSit.y=-220
            UncleServants.x=300
            UncleServants.x=-1000
            GoldenHorse.x=-500
            MagicWolf.y=-600
        end
    }
    scenes[85] = {
        sName = 85,
        follows = 86,
        setStage = 'set73',
        text='Seeing the horse with the golden mane, her uncle gets lost in his thoughts for a second. ',
        animations = function()
            AlenaNoRibbon.x=700 AlenaNoRibbon.y=280
            GoldenHorse.x=700 GoldenHorse.y=0  
        end,
        animationComplete = function()
            AlenaNoRibbon.x=700 AlenaNoRibbon.y=280
            GoldenHorse.x=700 GoldenHorse.y=0  
        end
    }
    scenes[86] = {
        sName = 86,
        follows = 87,
        text='Uncle: "You are a very handy girl indeed. So help me with one last task, and I won\'t just tell you where you need to go, but help you anyway I can." ',
        animations = function()
            showDialogue(BrotherD)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

    scenes[87] = {
        sName = 87,
        follows = 88,
        text='It is obvious to Alena that there\'s no point in arguing.  Her uncle won\'t help her unless she completes this last task, so she accepts it without objections. She only hopes that it won\'t be more difficult than the two previous ones. ',
        animations = function() hideDialogue() end,
        animationComplete = function()end
    }

    scenes[88] = {
        sName = 88,
        follows = 89,
        text='Uncle: “A nearby King, Berendei, has a daughter that is as beautiful as the dawn. If I marry her, my brothers will die from envy. So bring her to me, and I give you my word, I\'ll help you any way I can.” ',
        animations = function() showDialogue(BrotherD) end,
        animationComplete = function() hideDialogue() end
    }

    scenes[89] = {
        sName = 89,
        follows = 90,
        text='Having no choice, Alena and Gray Wolf  return to the forest.',
        animations = function() hideDialogue() end,
        animationComplete = function()
            AlenaNoRibbon.x = 400 AlenaNoRibbon.y =-400 
        end
    }

    scenes[90] = {
        sName = 90,
        setStage = 'set90',
        follows = 91,
        text='The western edge of the sky grows lighter as Alena, seated on Gray Wolf\'s back rushes to Berendei\'s kingdom. Near the castle wall, they stop. ',
        animations = function() 
            ridingWolftoLeft(AlenaOnWolfNoRibbon)
            transition.to(StrongholdBer, {x=600, time=1000, delay=2000})

        end,
        animationComplete = function()end
    }

    scenes[91] = {
        sName = 91,
        follows = 92,
        text='"I\'ll jump into the garden as fast as I can. Then, you have to grab Vasilisa the Beautiful, and don\'t let go of her until we get back in the forest".',
        animations = function() 
            showDialogue(Wolf)
        end,
        animationComplete = function()
            AlenaOnWolfNoRibbon.x=0 AlenaOnWolfNoRibbon.y=300
            VasilisaS.x=1200 VasilisaS.y=250
            StrongholdBer.x=200
            GardenBer.x=800
            hideDialogue()
        end
    }

    scenes[92] = {
        sName = 92,
        follows = 93,
        text='Alena does as she\'s told.The moment she sees the golden hair of Vasilisa  the beautiful, she snatches her and holds on fast until the castle walls are far behind. ',
        animations = function() 
            hideDialogue()
            AlenaOnWolfNoRibbon:toFront()
            AlenaVasilisaRiding.xScale=-1
            transition.to(AlenaOnWolfNoRibbon, {y=0, x=100, time=500, delay=500})
            transition.to(AlenaOnWolfNoRibbon, {y=250, x=200, time=500, delay=1000})
            transition.to(VasilisaS, {x=500, time=500, delay=1000})
            transition.to(StrongholdBer, {x=-500, time=500, delay=1000})
            transition.to(GardenBer, {x=100, time=500, delay=1000})
            transition.to(AlenaOnWolfNoRibbon, {y=250, x=500, time=500, delay=2000})
            transition.to(AlenaOnWolfNoRibbon, {x=500, y=-400, time=500, delay=2700})
            transition.to(VasilisaS, {x=500, y=-400, time=500, delay=2700})
            transition.to(AlenaVasilisaRiding, {y=30, time=500, delay=3200})
            transition.to(AlenaVasilisaRiding, {y=30, x=1240, time=500, delay=3800})
        end,
        animationComplete = function()
            VasilisaS.x=300 VasilisaS.y=-500
            StrongholdBer.x=-1400
            GardenBer.x=-1400
            AlenaOnWolfNoRibbon.y=-400 AlenaOnWolfNoRibbon.x=500
            AlenaVasilisaRiding.x=1240 AlenaVasilisaRiding.y=30
            AlenaVasilisaRiding.xScale=1
        end
    }

    scenes[93] = {
        sName = 93,
        follows = 94,
        text='In the forest, the moment Alena lets go of the king\'s daughter, Vasilisa starts crying.',
        animations = function()
            WolfSit.xScale= -1
            WolfSit.x=240 
            VasilisaPlea.x=480 
            transition.to(WolfSit, {y=270, time=1000})
            transition.to(AlenaNoRibbon, {y=260, time=1000})
            transition.to(VasilisaPlea, {y=280, time=1000})
        end,
        animationComplete = function()
            WolfSit.xScale= -1
            WolfSit.x=240 WolfSit.y=270
            AlenaNoRibbon.y=260
            VasilisaPlea.x=480 VasilisaPlea.y=280
        end
    }

    scenes[94] = {
        sName = 94,
        follows = 95,
        text = function()
            return '"I know you are an envoy of '..choices.brother..'. My father refused to give me to him, but he swore that he would get me anyway. Please, let me go, don\'t give me to him!"'
        end,
        animations = function()
            showDialogue(VasilisaD)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

    scenes[95] = {
        sName = 95,
        selection = {
            [1] = {'Refuse Vasilisa\'s plea', 96},
            [2] = {'Let Vasilisa go', 98}
        },
        text='Alena is confused. Her uncle\'s help is the only way to get her brother back!',
        animations = function()
            hideDialogue()
        end,
        animationComplete = function()end
    }

    scenes[96] = {
        sName = 96,
        follows = 97,
        clearSelection=true,
        changeFlow = function() choices.vasilisa = 'Vasilisa the Beautiful' end,
        text='"I have to save my brother. Maybe my uncle is not that bad and with time, Vasilisa  can learn to love him," says Alena to herself, staying deaf to Vasilisa\'s pleading. She instructs Gray Wolf to get to her uncle as fast as possible.',
        animations = function() 
            hideDialogue()
            AlenaVasilisaRiding.x=500 AlenaVasilisaRiding.y=-500
            AlenaVasilisaRiding.xScale=-1
            transition.to(WolfSit, {y=-400, time=1000})
            transition.to(AlenaNoRibbon, {y=-400, time=1000})
            transition.to(VasilisaPlea, {y=-400, time=1000})
            transition.to(AlenaVasilisaRiding, {y=30, time=1000, delay=1000})
            transition.to(AlenaVasilisaRiding, {y=30, x=1250, time=1000, delay=2000})
        end,
        animationComplete = function()
            choices.vasilisaGo = false
            AlenaVasilisaRiding.xScale=-1
            WolfSit.y=-400
            AlenaNoRibbon.y=-400
            VasilisaPlea.y=-400
            AlenaVasilisaRiding.y=30 AlenaVasilisaRiding.x=1250
        end
    }

    scenes[97] = {
        sName = 97,
        setStage = 'set100',
        follows = 102,
        text='The sun is slowly coming up, dispersing the morning gloom. The first cockcrows are waking up. Alena is worried. "Can my brother see this dawn from Koschei\'s castle?" she wonders and hopes that with her uncle\'s help she can save him.',
        animations = function()
            hideDialogue()
            ridingWolftWithVasilisa(1000)
        end,
        animationComplete = function()end
    }

    scenes[98] = {
        sName = 98,
        clearSelection = true,
        follows = 99,
        changeFlow = function() choices.vasilisa = 'Gray Wolf in a form of Vasilisa the Beautiful' end,
        text='Touched by the young woman\'s plea, Alena asks Gray Wolf to stop, so she can set Vasilisa free. Then she sit on the ground downcast.',
        animations = function()
            hideDialogue()
            transition.to(VasilisaPlea, {y=-400, time=700})
            transition.to(AlenaNoRibbon, {y=-400, time=700, delay=500})
            transition.to(AlenaCrySNR, {y=250, time=1000, delay=1500})
        end,
        animationComplete = function()
            hideDialogue()
            choices.vasilisaGo = true
            VasilisaPlea.y=-400
        end
    }
    scenes[99] = {
        sName = 99,
        follows = 100,
        text= function()
            return '"Don\'t grieve, daughter of Marya, I\'ll help you," says Gray Wolf. "When we get to '..choices.brother..', if he asks about me, say I decided to wait for you outside."'
        end,
        animations = function()
            showDialogue(Wolf)
        end,
        animationComplete = function()
            hideDialogue()
            WolfSit.y=-400
            AlenaCrySNR.y=-400
        end
    }
    scenes[100] = {
        sName = 100,
        setStage = 'set100',
        follows = 101,
        text='The sun is slowly coming up, dispersing the morning gloom. The first cockcrows are waking up. As soon as the gates of uncle\'s castle are visible, Gray Wolf stops and turns himself into Vasilisa the Beautiful.',
        animations = function()
            hideDialogue()
            VasilisaS.x=600
            AlenaNoRibbon.x=1000 AlenaNoRibbon.y=230
            WolfS.x=1100 WolfS.y=250
            transition.to(AlenaNoRibbon, {x=450, time=1000})
            transition.to(WolfS, {x=600, time=1000})
            transition.to(MagicWolf, {y=-100, time=500, delay=1000})
            transition.to(MagicWolf, {y=-600, time=500, delay=2500})
            transition.to(WolfS, {x=600, y=-400, time=700, delay=1500})
            transition.to(VasilisaS, {y=260, time=700, delay=2300})
        end,
        animationComplete = function()
            AlenaNoRibbon.x=550  AlenaNoRibbon.y=230
            WolfS.y=-400
            VasilisaS.y=260 VasilisaS.x=650
            MagicWolf.y=-600
        end
    }
    scenes[101] = {
        sName = 101,
        follows = 102,
        text='"Don\'t linger after he tells you where to go, I\'ll catch up with you later," says Gray Wolf in Vasilisa The Beautiful form.',
        animations = function()
            showDialogue(VasilisaD)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }
    scenes[102] = {
        sName = 102,
        changeFlow = function() 
            if choices.vasilisa=='Vasilisa the Beautiful' 
                then scenes[102].follows = 103
                else scenes[102].follows = 104
            end
        end,
        text = function()
            return 'The servants lead Alena and '..choices.vasilisa..'  to the '..choices.brother..'. The uncle is so happy to see his invaluable prize, that he doesn\'t ask any questions, just shows Alena the road to the Koschei\'s castle. '
            end,
        
        animations = function()
            hideDialogue()
            AlenaVasilisaRiding.isVisible = false
            transition.to(fortress, {x=-100, time=1000})
            transition.to(fortress2, {x=385, time=1000})
            transition.to(bridge, {alpha=1, delay=1200})
            transition.to(bridge, {rotation=90, time=1000, delay=1200})
        end,
        animationComplete = function()
            AlenaVasilisaRiding.isVisible = false
            VasilisaS.isVisible = false
            fortress.isVisible = false
            fortress2.isVisible = false
            bridge.isVisible = false
        end
    }
    scenes[103] = {
        sName = 103,
        follows = 105,
        text='Alena and Gray Wolf continue their journey. Alena tries not to think about Vasilisa\'s fate, as her only goal is to find her lost brother and return him home. "At least this way, I secured my uncle\'s help in case I need it."',
        animations = function()
            AlenaOnWolfNoRibbon.isVisible = true
            AlenaOnWolfNoRibbon.y=270
            ridingWolftoRight(AlenaOnWolfNoRibbon)
        end,
        animationComplete = function()end
    }
    scenes[104] = {
        sName = 104,
        follows = 105,
        text='Alena follows the road on foot. Before midday, her loyal companion catches up with her and tells her the story of how her uncle tried to kiss his newly-wed bride, who suddenly turned into a wolf. "There\'s little reason to hope for his help in the future."',
        animations = function()
            AlenaNoRibbon.x=1100 AlenaNoRibbon.y=260
            WolfS.x=1100 WolfS.y=270
            transition.to(AlenaNoRibbon, {x=300, time=1500, delay=500})
            transition.to(WolfS, {x=450, time=1000, delay=1300})
        end,
        animationComplete = function()end
    }

-------- Act 4 Scenes 105 - 146
    scenes[105] = {
        sName = 105,
        openingAnimation = {
            [1] = 'background11.png', 
            [2] = 'foreground7.png'
        },
        setStage = 'set105',
        follows = 106,
        text='It is getting colder. The sun is powerless to blow away the snowy gloom. The chilly wind swipes the Gray earth and sways the bony trees barren of all leaves. Slowly even Gray Wolf grows tired of ceaselessly galloping against the snowstorm.',
        animations = function()
            AlenaOnWolfNoRibbon.xScale =-1 AlenaOnWolfNoRibbon.x=-250 AlenaOnWolfNoRibbon.y=270
            transition.to(shadowLayer9, {alpha=1, time=1000, delay=2000})
            transition.to(landscape3, {x=0, time=1000, delay=1000})
            transition.to(AlenaOnWolfNoRibbon, {x=300, time=1000, delay=3000})
        end,
        animationComplete = function()
            foreground.y=0
            AlenaOnWolfNoRibbon.xScale =-1 AlenaOnWolfNoRibbon.x=300 AlenaOnWolfNoRibbon.y=270
            landscape3.x=0
        end
    }
    scenes[106] = {
        sName = 106,
        follows = 107,
        text='They decided to halt their journey for a short time. They find shelter between the huge roots of a massive ancient tree and build themselves a fairly solid windbreak out of fresh pine branches laid from root to root. ',
        animations = function()
            transition.to(landscape3, {x=-400, time=1000})
            transition.to(treeBack, {x=550, time=1000})
            transition.to(treeFront, {x=500, time=1000})
        end,
        animationComplete = function()
            landscape3.x=-400
            treeBack.x=550
            treeFront.x=500
        end
    }
    scenes[107] = {
        sName = 107,
        follows = 108,
        text='Gray Wolf gathers some berries and firewood bringing into their now cosy little shelter. Alena lights the fire. But the moment their hideout warms up, the branches begin to jostle.',
        animations = function()
            AlenaNoRibbon.x=800
            WolfSit.xScale = -1 WolfSit.x=650
            transition.to(AlenaOnWolfNoRibbon, {y=-400, time=1000})
            transition.to(landscape3, {x=-700, time=1000, delay=500})
            transition.to(treeBack, { x=230, time=1000, delay=500})
            transition.to(treeFront, {x=180, time=1000, delay=500})
            transition.to(AlenaNoRibbon, {y=300, time=1000, delay=1500})
            transition.to(WolfSit, {y=310, time=1000, delay=1500})
            moveTreeBack()
        end,
        animationComplete = function()
            landscape3.x=-700
            AlenaOnWolfNoRibbon.y=-400
            WolfSit.xScale=-1 WolfSit.x=650 WolfSit.y=310
            AlenaNoRibbon.x=800 AlenaNoRibbon.y=300
            treeBack.rotation=0 treeBack.y=140 treeBack.x=230
            treeFront.x=180
        end
    }
    scenes[108] = {
        sName = 108,
        text='Alena can spot a huge brown bear trying to get in their shelter. But before the Gray Wolf gets on his feet, the bear says: “I mean you no harm. I just want to warm myself near your fire and wait until the storm clears.”',
        selection = {
            [1] = {'"Another talking animal!?!"', 109},
        },
        animations = function()
            BearS.xScale=-1 BearS.x=-200 BearS.y=300
            transition.to(BearS, {x=300, time=1000})
        end,
        animationComplete = function()
            BearS.xScale=-1 BearS.x=300 BearS.y=300
        end
    }

    scenes[109] = {
        sName = 109,
        follows = 110,
        clearSelection = true,
        text='Alena: "Another talking animal!?!"',
        animations = function()
            showDialogue(AlenaNR)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

    scenes[110] = {
        sName = 110,
        text='"You are far from home, little one. I am not the biggest wonder here in Koschei\'s domain." says Bear. ',
        selection = {
            [1] = {'"What are these other wonders?"', 111}
        },
        animations = function()
            hideDialogue()
            showDialogue(Bear)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

    scenes[111] = {
        sName = 111,
        follows = 112,
        clearSelection = true,
        text='“The biggest wonders here are the spring with the water of death and the spring with the water of life. They say the water of death cleanses the body and treats any wounds, while the water of life can revive the dead. But only crows know where those springs are,” explains Bear.',
        animations = function()
            hideDialogue()
            showDialogue(Bear)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

    scenes[112] = {
        sName = 112,
        text='Bear: "So, little one, can I stay?"',
        selection = {
            [1] = {'"Go away, you are huge and scary!"', 115},
            [2] = {'"Of course, you can stay."', 113}
        },
        animations = function()
            showDialogue(Bear)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

    scenes[113] = {
        sName = 113,
        clearSelection = true,
        follows = 114,
        changeFlow = function() choices.wolfPenalty = choices.wolfPenalty-1 end,
        text='Alena: "Of course, you can stay."',
        animations = function()
            hideDialogue()
            showDialogue(AlenaNR)
            choices.bear = true
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

    scenes[114] = {
        sName = 114,
        follows = 119,
        text='“Thank you, little one. Kindness is the rarest thing in this kingdom,” says Bear.',
        animations = function()
            hideDialogue()
            showDialogue(Bear)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

    scenes[115] = {
        sName = 115,
        follows = 116,        
        text='Alena: "Go away, you are huge and scary!"',
        clearSelection = true,
        changeFlow = function() choices.wolfPenalty =  choices.wolfPenalty+1 end,
        animations = function()
            hideDialogue()
            showDialogue(AlenaNR)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

    scenes[116] = {
        sName = 116,
        follows = 117,
        text='With a sad sigh, Bear struggles out of the shelter. Alena breathes with relief. “He was so scary!” she says to Gray Wolf.',
        animations = function()
            hideDialogue()
            BearS.xScale = 1
            transition.to(BearS, {x=-300, time=1000, delay=1000})
        end,
        animationComplete = function()
            BearS.xScale=1 BearS.x=-300
        end
    }

    scenes[117] = {
        sName = 117,
        follows = 118,
        text='“Maybe so, but he is not the scariest thing we will see.” he promises.',
        animations = function()
            showDialogue(Wolf)
        end,
        animationComplete = function()
            curtanBack()
        end
    }

    scenes[118] = {
        sName = 118,
        follows = 120,
        text='Alena, soothed by the heat of fire and the warmth of Gray Wolf\'s fur barely notices when the blizzard has finally passed. But she has to continue her journey in search for Ivan, so they leave their cosy shelter behind.',
        animations = function()
            hideDialogue()
        end,
        animationComplete = function()
            hideDialogue()
            curtanBack()
        end
    }


    scenes[119] = {
        sName = 119,
        follows = 120,
        text='Soon the blizzard passes and it is time to carry on. Alena says her goodbyes to Bear, and he tells her that if she ever needs his help, she should call for him, and he will come. Alena is happy to  have enlisted the help of another ally.',
        animations = function()
            hideDialogue()
            curtanBack()
            BearS.xScale = 1
            transition.to(BearS, {x=-300, time=1000, delay=1000})
        end,
        animationComplete = function()
            hideDialogue()
            curtanBack()
            BearS.xScale=1 BearS.x=-300
        end
    }

    scenes[120] = {
        sName = 120,
        follows = 121,
        setStage='set120',
        text='After a while they get to Koschei\'s stronghold, an impregnable ice castle stands opposite them. There is no way of knowing if its ruthless overlord is inside. Gray Wolf sniffs the air. ',
        animations = function()
            AlenaNoRibbon.y=-400
            WolfSit.y=-400
            AlenaOnWolfNoRibbon.xScale = -1
            AlenaOnWolfNoRibbon.x=-100 AlenaOnWolfNoRibbon.y=270
            transition.to(AlenaOnWolfNoRibbon, {x=300, time=1000, delay=500})
        end,
        animationComplete = function()
            AlenaNoRibbon.y=-400
            WolfSit.y=-400
            AlenaOnWolfNoRibbon.x=300 AlenaOnWolfNoRibbon.y=270
        end
    }

    scenes[121] = {
        sName = 121,
        follows = 122,
        text='"I can sense your brother in the highest tower. You get on my back, and I will jump as high as I can. You reach out and grab your brother. Then we will all run as fast as we can to escape Koschei before he notices that Ivan is gone," recommends Gray Wolf.',
        animations = function()
            showDialogue(Wolf)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

    scenes[122] = {
        sName = 122,
        follows = 123,
        text='And so they do. Alena is happy when she spots her brother standing near the tower window. She grabs him, and Gray Wolf leaps away from the tower.',
        animations = function()
            hideDialogue()
            transition.to(AlenaOnWolfNoRibbon, {x=650, time=1000})
            transition.to(AlenaOnWolfNoRibbon, {x=650,y=-400, time=1000, delay=1000})
            transition.to(WindowWithIvan, {alpha=0, time=100, delay=1000})
            transition.to(AlenaIvanRiding, {y=10, time=1000, delay=2000})
        end,
        animationComplete = function()
            hideDialogue()
            AlenaOnWolfNoRibbon.x=650 AlenaOnWolfNoRibbon.y=-400
            WindowWithIvan.alpha=0
            AlenaIvanRiding.y=30
        end
    }

    scenes[123] = {
        sName = 123,
        follows = 124,
        text='But before Woolf\'s paws touch the ground, a peal of thunder shatters the air and before them stands Koschei the Deathless in person, blocking their next step.',
        animations = function()
            transition.to(AlenaIvanRiding, {y=30, time=200})
            transition.to(koshAttack, {y=0, time=1000, delay=200})
        end,
        animationComplete = function()
            AlenaIvanRiding.y=30
            koshAttack.y=0
        end
    }

    scenes[124] = {
        sName = 124,
        follows=128,
        --[[changeFlow = function() 
            if choices.brother=='Eagle' then scenes[124].follows = 125
            elseif  choices.brother=='Falcon' then scenes[124].follows = 126
            else
                if vasilisaGo==true then scenes[124].follows = 127
                else scenes[124].follows = 128 end  
            end
        end,--]]

        text='Gray Wolf attacks Koschei, as Alena tries to run away holding Ivan, but all their efforts are in vain. Gray Wolf\'s bites have no effect on Koschei.  The warlock summons his underlings, and a cloud of ice shrouds everything in sight.',
        animations = function()
            icyCurtain.isVisible=true
            transition.to(koshAttack, {x=300, time=500, delay=500})
            transition.to(AlenaIvanRiding, {x=250, time=500, delay=500})
            transition.to(icyCurtain, {alpha=1, y=-500, time=1000, delay=800})
        end,
        animationComplete = function()
            icyCurtain.isVisible=true icyCurtain.y=-500
            koshAttack.y=-500
            AlenaIvanRiding.y=-500
        end
    }

    scenes[125] = {
        sName = 125,
        selection = {
            [1] = {'"What can I do to save my friend?"', 129}
        },
        text='When the snow settles, there\'s nothing left except Gray Wolf\'s cold remains and Ivan\'s cries, as he is carried by Koschei back into the tower. Alena is devastated. She has lost her brother and her loyal ally who had become her friend.',
        animations = function()
            transition.to(wolfDown, {y=0, time=1000})
            AlenaCrySNR.x=400
            transition.to(AlenaCrySNR, {y=230, time=1000})
            transition.to(icyCurtain, {y=-1000, time=1000, delay=1000})
        end,
        animationComplete = function()
            wolfDown.y=0
            AlenaCrySNR.x=400 AlenaCrySNR.y=230
            icyCurtain.y=-1000
        end
    }

    scenes[126] = {
        sName = 126,
        selection = {
            [1] = {'"What can I do to save my friend?"', 130}
        },
        text='When the snow settles there\'s nothing left except the mortally wounded Alena, who couldn\'t defend herself from Koschei, and the echo of Ivan\'s cries, as he is carried back into the tower. Gray Wolf is devastated. He couldn\'t help his companion, so he howls and wails.',
        animations = function()
            transition.to(alenaDown, {y=-20, time=1000})
            WolfSit.xScale=-1 WolfSit.x=300
            transition.to(WolfSit, {y=230, time=1000})
            transition.to(icyCurtain, {y=-1000, time=1000, delay=1000})
        end,
        animationComplete = function()
            alenaDown.y=-20
            WolfSit.xScale=-1 WolfSit.x=300 WolfSit.y=230
            icyCurtain.y=-1000
        end
    }

    scenes[127] = {
        sName = 127,
        selection = {
            [1] = {'"What can I do to save them?"', 131}
        },
        text='Fast runs the horse of Vasilisa the Beautiful. She didn’t forget Alena’s kindness and now hurries her aid. But she is too late. When the snow settles, there’s nothing left except the mortally wounded Alena and Gray Wolf’s cold remains. ',
        animations = function()
            alenaDown.x=500
            wolfDown.x=300
            VasilisaS.x=400
            transition.to(alenaDown, {y=0, time=1000})
            transition.to(wolfDown, {y=0, time=1000})
            transition.to(icyCurtain, {y=-1000, time=1000, delay=1000})
            transition.to(VasilisaS, {y=200, time=1000, delay=1500})
        end,
        animationComplete = function()
            alenaDown.y=0 alenaDown.x=500
            wolfDown.y=0 wolfDown.x=300
            VasilisaS.x=400 VasilisaS.y=200
            icyCurtain.y=-1000
        end
    }

    scenes[128] = {
        sName = 128,
        selection = {
            [1] = {'"What can I do to save them?"', 132}
        },
        text='Fast flies the bird of prey. And Alena\'s uncle, the shape-shifting wizard, flies even faster, but he is too late. When the snow settles, there\'s nothing left except the mortally wounded Alena and Gray Wolf\'s cold remains.',
        animations = function()
            alenaDown.x=500
            wolfDown.x=300
            loadBrothers('Raven')
            BrotherS.x=400
            transition.to(alenaDown, {y=0, time=1000})
            transition.to(wolfDown, {y=0, time=1000})
            transition.to(icyCurtain, {y=-1000, time=1000, delay=1000})
            transition.to(BrotherS, {y=200, time=1000, delay=1500})
        end,
        animationComplete = function()
            alenaDown.y=0 alenaDown.x=500
            wolfDown.y=0 wolfDown.x=300
            icyCurtain.y=-1000
            BrotherS.x=400 BrotherS.y=200
        end
    }

    scenes[129] = {
        sName = 129,
        follows = 135,
        clearSelection = true,
        text='"The springs!" remembers Alena. "The springs that Bear talked about! But only Crows know where they are." \nAlena looks around and soon notices two crows sitting on a tree branch. "I need to catch them and make them bring me some of those waters!"',
        animations = function() loadCrows() end,
        animationComplete = function()
            crowSmall.y = -170
            crowBig.y = 0
        end
    }

    scenes[130] = {
        sName = 130,
        follows = 133,
        clearSelection = true,
        text='"The springs!" remembers Gray Wolf. "The springs that Bear talked about! But only Crows know where they are." \nGray Wolf looks around and soon notices two crows sitting on a tree branch. "I need to catch them and make them bring me some of those waters!"',
        animations = function() loadCrows() end,
        animationComplete = function()
            crowSmall.y = -170
            crowBig.y = 0 
        end
    }

    scenes[131] = {
        sName = 131,
        follows = 136,
        clearSelection = true,
        text='Vasilisa looks around and soon notices two crows sitting on a tree branch. \n"Сaw! Caw!" - says the older crow. "Poor creatures, dying so young and yet so full of life. If Vasilisa only had some water of death and some water of life, Vasilisa could revive them both."',
        animations = function() loadCrows() end,
        animationComplete = function()
            crowSmall.y = -170
            crowBig.y = 0
        end
    }

    scenes[132] = {
        sName = 132,
        follows = 134,
        clearSelection = true,
        text='Shape-shifting wisard looks around and soon notices two crows sitting on a tree branch. \n"Сaw! Caw!" - says the older crow. "Poor creatures, dying so young and yet so full of life. If Alena\'s uncle only had some water of death and some water of life, he could revive them both."',
        animations = function() loadCrows() end,
        animationComplete = function()
            crowSmall.y = -170
            crowBig.y = 0
        end
    }

    scenes[133] = {
        sName = 133,
        follows = 137,
        text='In the twinkling of an eye Gray Wolf turns himself into a crow and flies up to the tree branch. He catches the young crow and doesn’t let go until the old one promises to bring him some water of death. ',
        animations = function()
            transition.to(MagicWolf, {y=-50, time=700, delay=500})
            transition.to(WolfSit, {y=-400, time=500, delay=1000})
            transition.to(ShiftRaven, {y=0, time=500, delay=1500})
            transition.to(MagicWolf, {y=-600, time=700, delay=2000})
            transition.to(ShiftRaven, {y=-130, x=150, time=500, delay=2700})
            transition.to(crowSmall, {y=-190, x=250, time=500, delay=3000})
            transition.to(crowBig, {y=-200, x=1200, time=1500, delay=3500})
        end,
        animationComplete = function()
            WolfSit.y=-400
            MagicWolf.y=-600
            ShiftRaven.y=-130 ShiftRaven.x=150
            crowSmall.y=-190 crowSmall.x=250
            crowBig.y=-200 crowBig.x=1200
        end
    }

    scenes[134] = {
        sName = 134,
        follows = 143,
        text='In the twinkling of an eye a shape-shifting wisard turns himself into a raven and flies up to the tree branch. He catches the young crow and doesn’t let go until the old one promises to bring him some water of death. ',
        animations = function()
            transition.to(MagicBrother,{y=600, time=2000, delay=500})
            transition.to(BrotherS, {y=-400, time=700, delay=1000})
            transition.to(ShiftRaven, {y=0, time=700, delay=1000})
            transition.to(ShiftRaven, {y=-130, x=150, time=500, delay=2700})
            transition.to(crowSmall, {y=-190, x=250, time=500, delay=3500})
            transition.to(crowBig, {y=-200, x=1200, time=1500, delay=4000})
        end,
        animationComplete = function()
            MagicBrother.y=600
            BrotherS.y=-400
            ShiftRaven.y=-130 ShiftRaven.x=150
            crowSmall.y=-190 crowSmall.x=250
            crowBig.y=-200 crowBig.x=1200
        end
    }
    scenes[135] = {
        sName = 135,
        changeFlow = function() 
            if choices.brother=='Eagle' then loadBrothers('Eagle')
            else loadBrothers('Falcon') end
        end,
        follows = 139,
        text='“Uncle, you promised me your help!” cries Alena and soon the big'..choices.brother..' appears in front of her. She tells him her misfortunes. Then her uncle catches the young crow and doesn’t let go until the old one promises to bring him some water of death. ',
        animations = function()
            transition.to(BrotherS, {y=200, time=1000, delay=500})
            transition.to(crowSmall, {x=430, time=1000, delay=1500})
            transition.to(crowBig, {y=-200, x=1200, time=1500, delay=2000})
        end,
        animationComplete = function()
            BrotherS.y=200
            crowSmall.x=430
            crowBig.y=-200 crowBig.x=1200
        end
    }

    scenes[136] = {
        sName = 136,
        follows = 141,
        text='“I need to catch this little crow!” thinks Vasilisa and starts singing. The young crow listens spellbound to her song and flies closer. She catches him and doesn’t let go until the older one promises to bring her some water of death. ',
        animations = function()
            VasilisaS.x=400 VasilisaPlea.x=400
            transition.to(VasilisaS, {y=-400, time=1000, delay=500})
            transition.to(VasilisaPlea, {y=200, time=1000, delay=1000})
            transition.to(crowSmall, {x=350, time=1000, delay=1500})
            transition.to(crowBig, {y=-200, x=1200, time=1500, delay=3000})
        end,
        animationComplete = function()
            VasilisaS.x=400 VasilisaS.y=-400 
            VasilisaPlea.x=400 VasilisaPlea.y=200
            crowSmall.x=350
            crowBig.y=-200 crowBig.x=1200
        end
    }

    scenes[137] = {
        sName = 137,
        follows = 138,
        text='After a while the crow returns and with one splash of the water of death, Alena’s wounds start to disappear. “Now go and bring me some water of life. Then I’ll release your little crow,” says Gray Wolf and the old crow flies away.',
        animations = function()
            crowBlackMagic(400)
        end,
        animationComplete = function()
            BlackWater.alpha=0
            crowBig.y=0 crowBig.x=-100
        end
    }

    scenes[138] = {
        sName = 138,
        follows = 145,
        text='Time passes and finally, the old crow returns. With one splash of the water of life,  Alena opens her eyes. Gray Wolf frees the little crow, as promised. But Ivan is still in Koschei’s clutches, and there’s no winning in any fight with him.',
        animations = function() 
            AlenaNoRibbon.x=500 AlenaNoRibbon.y=-400 
            crowWhiteMagic(400)

            transition.to(crowSmall, {x=200, y=-170, time=500, delay=4000})
            transition.to(alenaDown, {alpha=0, time=500, delay=3500})
            transition.to(AlenaNoRibbon, {y=230, time=500, delay=3500})
        end,
        animationComplete = function()
            BlueWater.alpha=0
            WhiteMagic.y=-800
            crowSmall.x=200 crowSmall.y=-170
            alenaDown.alpha=0
            AlenaNoRibbon.x=500 AlenaNoRibbon.y=230 
        end
    }

    scenes[139] = {
        sName = 139,
        follows = 140,
        text='After a while the crow returns and with one splash of the water of death, Wolf’s wounds start to disappear. “Now go and bring me some water of life. Then I’ll release your little crow,” says Alena and the old crow flies away.',
        animations = function() crowBlackMagic(350) end,
        animationComplete = function()
            BlackWater.alpha=0
            crowBig.y=0 crowBig.x=-100
        end
    }

    scenes[140] = {
        sName = 140,
        follows = 145,
        text='Time passes and finally, the old crow returns. With one splash of the water of life, Gray Wolf opens his eyes. Alena frees the little crow, as promised. But Ivan is still in Koschei’s clutches, and there’s no winning in any fight with him.',
        animations = function()
            WolfSit:toFront() WolfSit.x=570
            AlenaNoRibbon.x=400 
            crowWhiteMagic(350)
            transition.to(wolfDown, {alpha=0, time=500, delay=3000})
            transition.to(WolfSit, {y=230, time=500, delay=3000})
            transition.to(crowSmall, {x=200, y=-170, time=500, delay=4000})
            transition.to(AlenaCrySNR, {alpha=0, time=500, delay=3500})
            transition.to(AlenaNoRibbon, {y=230, time=500, delay=3000})
        end,
        animationComplete = function()
            BlueWater.alpha=0
            WhiteMagic.y=-800
            crowBig.y=0 crowBig.x=200
            wolfDown.alpha = 0
            WolfSit:toFront() WolfSit.x=570 WolfSit.y=230
            AlenaCrySNR.alpha = 0
            AlenaNoRibbon.x=400 AlenaNoRibbon.y=230
            crowSmall.x=200 crowSmall.y=-170
        end
    }

    scenes[141] = {
        sName = 141,
        follows = 142,
        text='After a while the crow returns and with one splash of the water of death, Alena\'s and Wolf\'s wounds start to disappear. “Now go and bring me some water of life. Then I’ll release your little crow,” says Vasilisa and the old crow flies away.',
        animations = function() 
            crowBlackMagic(330)
        end,
        animationComplete = function()
            BlackWater.alpha=0
            crowBig.y=0 crowBig.x=-100
        end
    }

    scenes[142] = {
        sName = 142,
        follows = 145,
        text='Time passes and finally, the old crow returns. With one splash of the water of life, Alena and Wolf open their eyes. Vasilisa frees the little crow, as promised. But Ivan is still in Koschei’s clutches, and there’s no winning in any fight with him.',
        animations = function()
            crowWhiteMagic(330)
            AlenaNoRibbon.x=600
            crowSmall.xScale = -1
            crowSmall.x=390
            WolfSit:toFront() WolfSit.x=500
            transition.to(wolfDown, {alpha=0, time=500, delay=3500})
            transition.to(alenaDown, {alpha=0, time=500, delay=3500})
            transition.to(AlenaNoRibbon, {y=230, time=500, delay=3000})
            transition.to(WolfSit, {y=250, time=500, delay=3000})
            transition.to(VasilisaPlea, {y=-400, time=500, delay=3500})
            transition.to(crowSmall, {x=200, y=-170, time=500, delay=4000})
            transition.to(VasilisaS, {y=230, time=500, delay=4000})
        end,
        animationComplete = function()
            BlueWater.alpha=0
            WhiteMagic.y=-800
            crowBig.y=0 crowBig.x=200
            AlenaNoRibbon.x=600 AlenaNoRibbon.y=230
            crowSmall.xScale = -1 crowSmall.x=200
            WolfSit:toFront() WolfSit.x=500 WolfSit.y=250
            wolfDown.alpha=0
            alenaDown.alpha=0
            VasilisaS.y=230
            VasilisaPlea.y=-400
        end
    }

    scenes[143] = {
        sName = 143,
        follows = 144,
        text='After a while the crow returns and with one splash of the water of death, Alena\'s and Wolf\'s wounds start to disappear. “Now go and bring me some water of life. Then I’ll release your little crow,” says Alena\'s uncle and the old crow flies away.',
        animations = function() crowBlackMagic(330) end,
        animationComplete = function()
            BlackWater.alpha=0
            crowBig.y=0 crowBig.x=-100
        end
    }

    scenes[144] = {
        sName = 144,
        follows = 145,
        text='Time passes and finally, the old crow returns. With one splash of the water of life, Alena and Wolf open their eyes. Uncle frees the little crow, as promised. But Ivan is still in Koschei’s clutches, and there’s no winning in any fight with him.',
        animations = function() 
            crowWhiteMagic(330)
            AlenaNoRibbon.x=600
            WolfSit:toFront() WolfSit.x=500
            transition.to(wolfDown, {alpha=0, time=500, delay=3500})
            transition.to(alenaDown, {alpha=0, time=500, delay=3500})
            transition.to(AlenaNoRibbon, {y=230, time=500, delay=3000})
            transition.to(WolfSit, {y=250, time=500, delay=3000})
            transition.to(crowSmall, {x=200, y=-170, time=500, delay=4000})
        end,
        animationComplete = function()
            BlueWater.alpha=0
            WhiteMagic.y=-800
        end
    }

    scenes[145] = {
        sName = 145,
        follows = 146,
        text='“Сaw! You kept your word, so I’ll help you once more,” says the old crow. “I don’t know how to kill Koschei, but they say Baba Yaga knows how. That’s why Koschei hates her so much. Сaw! But remember, she is as dangerous as he is.”',
        animations = function()
            removeCrows()
            showDialogue(CrowD)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

    scenes[146] = {
        sName = 146,
        follows = 147,
        text='Alena and Grey Wolf thank their helper and continue on their journey.',
        animations = function()
            hideDialogue()
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

-------- Act 5 Scenes 147 - 153
    scenes[147] = {
        sName = 147,
        setStage = 'set147',
        openingAnimation = {
            [1] = 'background12.png', 
            [2] = 'foreground8.png'
        },
        follows = 148,
        text='The old witch, called Baba Yaga, lives in a hut set high atop a set of chicken legs standing in the thick of the forest. They say she eats uninvited guests and uses their bones for her fence.',
        animations = function()
            foreground.y=0 
            loadYagaForest()
        end,
        animationComplete = function()
            AlenaOnWolfNoRibbon.x=200 AlenaOnWolfNoRibbon.y=270
            shadowLayer12.alpha=1
            foreground.y=0 
            landscape1.x=0
            landscape2.x=0
            landscape3.y=0
        end
    }

    scenes[148] = {
        sName = 148,
        follows = 149,
        text='The road to Baba Yaga’s hut is long and dangerous, but nothing prepared Alena for the picture she sees upon arrival.',
        animations = function() roadToYaga() end,
        animationComplete = function()
            landscape1.x=-680
            landscape2.x=-1100
            landscape3.x=-1100
            hutFence.x=480
            hutWindow.y=0
        end
    }

    scenes[149] = {
        sName = 149,
        follows = 150,
        text='It is sunset, and all the trees are red and orange, exactly the same as the wooden fence crowned with human skulls surrounding the entire hut.',
        animations = function()
            WolfSit.x=400
            AlenaNoRibbon.x=180
            transition.to(AlenaOnWolfNoRibbon, {y=-400, time=1000})
            transition.to(WolfSit, {y=250, time=1000, delay=1000})
            transition.to(AlenaNoRibbon, {y=270, time=1000, delay=1000})
        end,
        animationComplete = function()
            AlenaOnWolfNoRibbon.y=-400
            WolfSit.x=400 WolfSit.y=250
            AlenaNoRibbon.x=180 AlenaNoRibbon.y=270
        end
    }

    scenes[150] = {
        sName = 150,
        follows = 151,
        text='The posts are spaced so tightly that only a thin girl can squeeze through.',
        animations = function() end,
        animationComplete = function()end
    }

    scenes[151] = {
        sName = 151,
        follows = 152,
        text='"I can\'t go any further," says Grey Wolf. "You\'ll have to face Baba Yaga on your own."',
        animations = function()
            showDialogue(Wolf)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

    scenes[152] = {
        sName = 152,
        follows = 153,
        text='Alena shudders at this thought, but there’s no other option, so she slips in and walks toward the hut. “Little hut, O little hut! Turn your back to the trees, your face to me!” pleads Alena.',
        animations = function() 
            hideDialogue()
            transition.to(AlenaNoRibbon, {x=600, time=1000, delay=1000})
        end,
        animationComplete = function()
            AlenaNoRibbon.x=600
        end
    } 

    scenes[153] = {
        sName = 153,
        follows = 154,
        text='Slowly the hut turns and bows down so Alena can enter.',
        animations = function()
            transition.to(hutWindow, {alpha=0, time=1000, delay=1000})
            transition.to(hutDoor, {y=0, time=1000, delay=500})
        end,
        animationComplete = function()
            hutWindow.alpha=0
            hutDoor.y=0
        end
    }

-------- Act 6 Scenes 154 - 184

    scenes[154] = {
        sName = 154,
        setStage='set154',
        openingAnimation = {
            [1] = 'background13.png', 
            [2] = 'foreground9.png'
        },
        follows = 155,
        text='The moment she steps over the threshold, Baba Yaga riding in a mortar, wielding a pestle, flies into the doorway.',
        animations = function()
            loadYagaHut()
        end,
        animationComplete = function()
            foreground.y=0
            yagaShadow.x=800
            landscape1.y=0
            ovenBack.y=-50
            ovenFront.y=-50
            ovenCover.y=140
            ovenFire.y=-50
            hutShelf.y=5
            hutTable.y=30
            hutSpin.y=30
            shadowLayer13.alpha=1
        end
    }

    scenes[155] = {
        sName = 155,
        follows = 156,
        text='"Fie-Fie-Fie, I can sense a human stench! Who is here? Show yourself, uninvited guest!" screams Baba Yaga.',
        animations = function()
            showDialogue(YagaD)
        end,
        animationComplete = function()
            hideDialogue()
            AlenaNoRibbon.y=270
            AlenaNoRibbon.x=800
            hutMortar.y=150
        end
    }

    scenes[156] = {
        sName = 156,
        selection = {
            [1] = {'"My name is Alena..."', 157},
        },
        text='The last sunlight is fading away. The hollow eye sockets of the skulls start to glow yellow. Alena, hungry and tired, steps closer to Baba Yaga.',
        animations = function()
            hideDialogue()
            transition.to(YagaS, {y=270, time=1000})
            transition.to(AlenaNoRibbon, {x=700, time=1000, delay=1000})
        end,
        animationComplete = function()
            YagaS.y=270
            AlenaNoRibbon.x=700
        end
    }

    scenes[157] = {
        sName = 157,
        clearSelection = true,
        follows = 158,
        changeFlow = function() 
            if choices.bless then scenes[157].follows = 158
            else scenes[157].follows = 162 end
        end,
        text='"My name is Alena, Nana. Koschei the Deathless took my brother. Koshei is immortal, so he keeps his death hidden far away. I need to find it. Can you help me?"',
        animations = function()
            hideDialogue()
            showDialogue(AlenaNR)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

    scenes[158] = {
        sName = 158,
        follows = 159,
        text='"I can help you. Or I can eat you and make a necklace from your bones. Let me look at you a bit closer." Baba Yaga looks at Alena closely and in the next second, screams as if set on fire.',
        animations = function()
            hideDialogue()
            transition.to(AlenaNoRibbon, {x=500, time=1000, delay=1000})
        end,
        animationComplete = function()
            AlenaNoRibbon.x=500
        end
    }

    scenes[159] = {
        sName = 159,
        follows = 160,
        text='"Fie-Fie-Fie, I can sense your mother\'s blessing on you. There\'s no place for a blessed child in my hut!" Baba Yaga tries to push Alena away, but then takes pity on her. ',
        animations = function() 
            showDialogue(YagaD)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

    scenes[160] = {
        sName = 160,
        follows = 161,
        text='"Behind the dark forest, there\'s a black mountain. On this mountain, there\'s an old oak. On the oak, there\'s a golden chain with a coffer on it."',
        animations = function() 
            hideDialogue()
        end,
        animationComplete = function()end
    }

    scenes[161] = {
        sName = 161,
        follows = 185,
        text='"Inside the coffer there\'s a hare, inside that - a duck. Inside the duck, there\'s an egg enclosing a needle. Koschei\'s death is on the point of it."',
        animations = function() end,
        animationComplete = function()end
    }

    scenes[162] = {
        sName = 162,
        selection = {
            [1] = {'"Are you always that inhospitable?"', 163},
        },
        text='"I can help you. Or I can eat you and make a necklace from your bones. Let me look at you a bit close. Nice young girl, so clean, so tasty. But I won\'t eat you yet. First you\'ll serve me!"',
        animations = function()
            hideDialogue() 
            transition.to(AlenaNoRibbon, {x=500, time=1000, delay=1000}) 
        end,
        animationComplete = function()
            hideDialogue() 
            AlenaNoRibbon.x=500 
        end
    }

    scenes[163] = {
        sName = 163,
        clearSelection = true,
        follows = 164,
        text='Alena: "Are you always that inhospitable, Nana? No one carries lodging with him, so wash me, feed me, and give me a bed. Then, you can ask all of your questions!"',
        animations = function() 
            hideDialogue()
            showDialogue(AlenaNR)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

    scenes[164] = {
        sName = 164,
        follows = 165,
        text='Baba Yaga: "You are a brave girl, so I won\'t eat you. Stay here, I\'ll make a bath, cook you a dinner, and tuck you into bed and then, we\'ll talk."',
        animations = function() 
            showDialogue(YagaD) 
        end,
        animationComplete = function() 
            hideDialogue()
            YagaS.xScale = -1 
        end
    }

    scenes[165] = {
        sName = 165,
        follows = 166,
        text='When Baba Yaga walks away, Alena hears squeaking. There\'s a mouse hole near the window. Alena gets on all fours and spots the little mouse. And just like other animals in this forest, the mouse begins to speak.',
        animations = function()
            hideDialogue()
            transition.to(YagaS, {x=-100, time=1000, delay=1000})
            transition.to(MouseS, {x=370, time=1500, delay=2300})
        end,
        animationComplete = function()
            hideDialogue()
            YagaS.x=-100
            MouseS.x=370
        end
    }

    scenes[166] = {
        sName = 166,
        selection = {
            [1] = {'Give berries', 167},
            [2] = {'Refuse', 168},
        },
        text='Mouse: "Do not grieve, Alena. I can help you, if you give me one of those berries you have in your pocket!" ',
        animations = function()
            showDialogue(MouseD)
        end,
        animationComplete = function()
            MouseS.xScale = -1
        end
    }

    scenes[167] = {
        sName = 167,
        changeFlow = function() choices.berries=true end,
        clearSelection = true,
        follows = 169,
        text='Mouse: "Thank you. You are a good girl, and I\'ll help you. Do not believe Baba Yaga! She\'ll light the oven, not to cook for you, but to cook you! I know a way to outsmart her!"',
        animations = function() end,
        animationComplete = function() end
    }

    scenes[168] = {
        sName = 168,
        follows = 169,
        clearSelection = true,
        text='Mouse: "I thought you were a kind girl, but you are not. But I don\'t want your death on my conscious, so I\'ll help you anyway. Do not believe Baba Yaga! She\'ll light the oven, not to cook for you, but to cook you!"',
        animations = function() end,
        animationComplete = function() end
    }

    scenes[169] = {
        sName = 169,
        follows = 170,
        text='Mouse: "When she puts you on the oven paddle and shoves you into the stove -  brace your feet against the wall and don\'t let her push you in any further. Hold as firmly as you can. And say that it is not piping hot."',
        animations = function() end,
        animationComplete = function() hideDialogue() end
    }
    
    scenes[170] = {
        sName = 170,
        follows = 171,
        text='Scared but determined, Alena awaits Baba Yaga’s return. The oven is getting warmer.',
        animations = function() 
            hideDialogue()
            transition.to(MouseS, {x=-100, time=1000, delay=500})
            transition.to(ovenFire, {alpha=0.5, time=1000, delay=1000}) 
        end,
        animationComplete = function()
            hideDialogue()
            MouseS.x=-100
            ovenFire.alpha=0.5
        end
    }

    scenes[171] = {
        sName = 171,
        selection = {
            [1] = {'"Why don\'t you do it yourself?"', 172},
            [2] = {'Get on the paddle', 174},
        },
        text='Soon Baba Yaga appears with a huge wooden paddle. "Dear child, please have a seat on this nice, wooden paddle while you tell me your story. I need to measure whether it is long enough for my oven."',
        animations = function()
            transition.to(ovenFire, {alpha=1, time=1000})
            YagaS.xScale = 1 
            transition.to(YagaS, {x=350, time=1000, delay=500})
            transition.to(AlenaNoRibbon, {x=650, time=1000, delay=500})
            transition.to(paddle, {x=550, time=1000, delay=500})
        end,
        animationComplete = function()
            ovenFire.alpha=1
            YagaS.xScale = 1 YagaS.x=350
            AlenaNoRibbon.x=650
            paddle.x=550
        end
    }

    scenes[172] = {
        sName = 172,
        clearSelection = true,
        follows = 173,
        text='Alena: "Why don\'t you do it yourself?"',
        animations = function()
            showDialogue(AlenaNR)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

    scenes[173] = {
        sName = 173,
        follows = 174,
        text='Baba Yaga: "My bones are too old to get on it. But you are young and flexible, it will be easy for you!"',
        animations = function() 
            hideDialogue() 
            showDialogue(YagaD)
        end,
        animationComplete = function() hideDialogue() end
    }

    scenes[174] = {
        sName = 174,
        follows = 175,
        clearSelection = true,
        text='The moment Alena gets on the wooden paddle, Baba Yaga pushes it into the oven. Alena places her feet wide apart and braces herself as firmly as she can.',
        animations = function() 
            hideDialogue()
            AlenaIntoTheOven()
        end,
        animationComplete = function()
            AlenaNoRibbon.alpha=0
            alenaSit.x=750 alenaSit.y=150
            ovenCover.x=700
            paddle.x=790 paddle.y=250 paddle.rotation=-10
        end
    }

    scenes[175] = {
        sName = 175,
        follows = 176,
        text='"How are you, my dear child. Are you in the fire yet, is it piping hot?" asks Baba Yaga.',
        animations = function()
            showDialogue(YagaD)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

    scenes[176] = {
        sName = 176,
        follows = 177,
        text='"Not really, this paddle is too short and too far from the coals, so I am simply warm and comfortable!"',
        animations = function()
            hideDialogue()
            showDialogue(AlenaNR)
        end,
        animationComplete = function()
            hideDialogue()
        end
    }

    scenes[177] = {
        sName = 177,
        follows = 178,
        text='"Fie-Fie-Fie, it can’t be! You should be in the fire, piping hot!"',
        animations = function()
            hideDialogue()
            showDialogue(YagaD)
        end,
        animationComplete = function() hideDialogue() end
    }

    scenes[178] = {
        sName = 178,
        follows = 179,
        text='"Maybe you measured it wrong, Nana? I am really far from the fire. You should try it yourself, you\'ll see."',
        animations = function()
            hideDialogue()
            showDialogue(AlenaNR)
        end,
        animationComplete = function() 
            hideDialogue() 
            AlenaNoRibbon.x=300  AlenaNoRibbon.alpha=1
            alenaSit.alpha=0
            YagaS.x=600
            paddle.x=700 paddle.y=500 paddle.rotation=0
        end
    }

    scenes[179] = {
        sName = 179,
        follows = 180,
        text='Baba Yaga gets tired of pushing the paddle and pulls it out along with Alena. Perplexed by what happened, Baba Yaga gets on the paddle and orders Alena to push it in. So she does.',
        animations = function()
            hideDialogue()
            babaInOven()
        end,
        animationComplete = function()
            YagaS.alpha=0
            ovenCover.x=700
            paddle.rotation=-16 paddle.x=790 paddle.y=280
            yagaSit.alpha=0
        end
    }

    scenes[180] = {
        sName = 180,
        follows = 181,
        text='"Fie-Fie-Fie, I am on fire! I am piping hot! Pull me back, child, pull me back out!" screams Baba Yaga.',
        animations = function() showDialogue(YagaD) yagaSit.alpha=0 end,
        animationComplete = function() hideDialogue()  end
    }

    scenes[181] = {
        sName = 181,
        follows = 182,
        text='"No, I won\'t do that, until you tell me where to find Koschei\'s death!" answers Alena.',
        animations = function()
            hideDialogue()
            showDialogue(AlenaNR)
        end,
        animationComplete = function() hideDialogue() end
    }

    scenes[182] = {
        sName = 182,
        follows = 183,
        text='"Behind the dark forest, there\'s a black mountain. On this mountain, there\'s an old oak. On the oak, there\'s a gold chain with a locket on it."',
        animations = function() hideDialogue() end,
        animationComplete = function() hideDialogue() end
    }

    scenes[183] = {
        sName = 183,
        follows = 184,
        text='"Inside a locket there\'s a hare, inside that - a duck. Inside the duck, there\'s an egg enclosing a needle. Koschei\'s death is on the point of that needle."',
        animations = function() end,
        animationComplete = function()end
    }

    scenes[184] = {
        sName = 184,
        follows = 185,
        text='Satisfied with the answer, Alena, in a whisper, thanks the mouse and pulls Baba Yaga out of the oven. Baba Yaga is not happy to be outsmarted, but she wishes Alena luck and sends her on her way.',
        animations = function() yagaOutOfOven() end,
        animationComplete = function()end
    }

-------- Act 7 Scenes 185 - 112

    scenes[185] = {
        sName = 185,
        follows = 186,
        setStage = 'set185',
        openingAnimation = {
            [1] = 'background14.png', 
            [2] = 'foreground14.png'
        },
        text='So Alena\'s journey continues. Gray Wolf awaits her on the other side of the fence, and they race along to the end of the forest. It takes them the better part of the night, and they arrive at the mountain in an early morning mist.',
        animations = function() 
            setOakLevel()
        end,
        animationComplete = function()
            foreground.y=0
            landscape1.x=0
            landscape2.x=0
            landscape3.x=0
            groundLevel.x=0
            grass.x=0
            shadowLayer14.alpha=1
            AlenaOnWolfNoRibbon.xScale=-1 AlenaOnWolfNoRibbon.x=300 AlenaOnWolfNoRibbon.y=290
        end
    }

    scenes[186] = {
        sName = 186,
        changeFlow = function()
            if choices.bear then scenes[186].follows = 188 
            else scenes[186].follows = 187  end
        end,
        text='The ancient oak is so big, that clouds are tangled in its branches. The oak grouches as the wind rocks the locket hanging from a gold chain dangling from the massive bough. "How can I get to the locket?" wonders Alena.',
        animations = function() 
            moveToOak() 
        end,
        animationComplete = function()
            mountain.xScale = 1.0 mountain.yScale = 1.0 mountain.y = 600 mountain.x = 1200
            oldOak.xScale = 1.0 oldOak.yScale = 1.0 oldOak.y = 400 oldOak.x = 1150
            chestClosed.xScale = 1 chestClosed.yScale=1 chestClosed.x=670 chestClosed.y=85
            background.x=-1074
            landscape1.x=-1074
            landscape2.x=-1074
            landscape3.x=-1074
            grass.x=-1074
            shadowLayer14.x=-1074
            AlenaOnWolfNoRibbon.y=-500
            AlenaNoRibbon.x=270 AlenaNoRibbon.y=270
            WolfSit.xScale=-1 WolfSit.x=350 WolfSit.y=270
        end
    }

    scenes[187] = {
        sName = 187,
        follows = 190,
        text='"What would you do without me." says Gray Wolf, turning himself into a huge bear.',
        animations = function() wolfAndTree() end,
        animationComplete = function()
            BearS.x=530 BearS.y=270 BearS.alpha=1
            WolfSit.alpha=0
            MagicWolf.y=-800
        end
    }

    scenes[188] = {
        sName = 188,
        follows = 189,
        text='But just as if hearing her doubts, a big bear appears near the oak.',
        animations = function() bearAndTree() end,
        animationComplete = function()
            BearS.x=530 BearS.y=270 BearS.xScale = -1
        end
    }

    scenes[189] = {
        sName = 189,
        follows = 191,
        text='"You were kind to me, little one, so let me be of service!" says the bear.',
        animations = function() showDialogue(Bear) end,
        animationComplete = function() hideDialogue() end
    }

    scenes[190] = {
        sName = 190,
        follows = 192,
        text='The bear clasps the ancient oak and with a loud roar knocks it down. When the locket touches the ground, it opens, and a brown hare escapes from it.',
        animations = function() 
            wolfPushTree() 
        end,
        animationComplete = function()
            oldOak.rotation=90 oldOak.x=800 oldOak.y=600
            chestClosed.alpha=0
            chestOpen.alpha=1
            WolfSit.alpha=1
            BearS.alpha=0
            MagicWolf.y=-800
            hareRun.alpha=1
            hareRun.xScale=-1
        end
    }

    scenes[191] = {
        sName = 191,
        follows = 192,
        text='The bear clasps the ancient oak and with a loud roar knocks it down. When the locket touches the ground, it opens, and a brown hare escapes from it.',
        animations = function() 
            hideDialogue() 
            bearPushTree() 
        end,
        animationComplete = function()
            oldOak.rotation=90 oldOak.x=800 oldOak.y=600
            chestClosed.alpha=0
            chestOpen.alpha=1
            WolfSit.alpha=1
            BearS.alpha=0
            MagicWolf.y=-800
            hareRun.alpha=1
            hareRun.xScale=-1
        end
    }

    scenes[192] = {
        sName = 192,
        follows = 193,
        text='"How can I get this hare, he is so fast!" wonders Alena and looks at Gray Wolf.',
        animations = function()
            WolfS.xScale=-1 WolfS.x=350 WolfS.y=270 WolfS.alpha=0
            hareRun.xScale=-1
            transition.to(WolfSit, {alpha=0, time=500, delay=500})
            transition.to(WolfS, {alpha=1, time=500, delay=1000})
            transition.to(hareRun, {x=1200, y=0, time=500, delay=1000})
        end,
        animationComplete = function()
            WolfS.xScale=-1 WolfS.x=350 WolfS.y=270 WolfS.alpha=1
            WolfSit.alpha=0
            hareRun.x=1100 hareRun.y=0
        end
    }

    scenes[193] = {
        sName = 193,
        changeFlow = function() 
            if choices.vasilisaGo then scenes[193].follows = 194 
            else scenes[193].follows = 195  end
        end,
        text='"What would you do without me." says Gray Wolf and immediately goes after his prey. He catches up with brown hare, but the moment his paws touch the rabbit, a white duck flies out of him.',
        animations = function()
            hareRun.xScale = 1 hareRun.y=-100
            transition.to(WolfS, {x=500, time=500, delay=500})
            transition.to(hareRun, {x=550, time=500, delay=500})
            transition.to(hareRun, {alpha=0, time=1, delay=1000})
            transition.to(duckFly, {alpha=1, time=1, delay=1000})
            transition.to(duckFly, {y=-300, x=300, time=500, delay=1010})
        end,
        animationComplete = function()
            hareRun.alpha=0
            WolfS.x=500
            duckFly.alpha=1 duckFly.y=-300 duckFly.x=300
        end
    }

    scenes[194] = {
        sName = 194,
        follows = 196,
        text='"How can I catch a flying duck?" wonders Alena. But her loyal companion doesn’t let her down. Gray Wolf turns himself into a big drake and follows the duck. ',
        animations = function() catchADuck(0) end,
        animationComplete = function()
            WolfS.alpha=0
            MagicWolf.y=-800
            drake.alpha=1 drake.x=400 drake.y=0
        end
    }

    scenes[195] = {
        sName = 195,
        follows = 196,
        text= '"How can I catch a flying duck?" wonders Alena. And the moment she thinks that, her uncle - '..choices.brother..' appears in the sky. He dives toward the duck.',
        animations = function() catchADuck(1)  end,
        animationComplete = function()
            brotherShape.alpha=1 brotherShape.x=350
        end
    }

    scenes[196] = {
        sName = 196, 
        changeFlow = function() 
            if choices.berries then scenes[196].follows = 197 
            else scenes[196].follows = 198  end
        end,
        text='The duck, unable to evade him, lets out an egg. It falls down into a field of tall grass. "How can I find the egg in all this green?" thinks Alena. ',
        animations = function()
            transition.to(brotherShape, {x=200, y=-200, time=1000})
            transition.to(duckFly, {x=200, y=-500, time=1000})
            transition.to(drake, {x=200, y=-300, time=1000})
            transition.to(eggWhole, {alpha=1, time=10, delay=500})
            transition.to(eggWhole, {y=600, time=1000, delay=500})
            transition.to(AlenaNoRibbon, {x=350, time=1000, delay=1500})
        end,
        animationComplete = function()
            AlenaNoRibbon.x=370 
            eggWhole.alpha=1 eggWhole.y=600
            drake.x=200 drake.y=-300
            duckFly.x=200 duckFly.y=-500
            brotherShape.x=200 brotherShape.y=-200
        end
    }

    scenes[197] = {
        sName = 197,
        follows = 198,
        text='Then she hears squeaking.',
        animations = function()
            MouseS.y=200 MouseS.x=-200
            transition.to(MouseS, {x=250, time=1000}) 
        end,
        animationComplete = function()
            MouseS.y=200 MouseS.x=250
        end
    }

    scenes[198] = {
        sName = 198,
        follows = 201,
        text='"You helped me and now, I’ll help you!" says the mouse she met at Baba Yaga’s hut jumping into the grass.',
        animations = function() 
            showDialogue(MouseD) 
        end,
        animationComplete = function() 
            hideDialogue() 
            eggWhole.y=350 eggWhole.x=250 
        end
    }

    scenes[199] = {
        sName = 199,
        follows = 200,
        text='“What would you do without me.” says Gray Wolf and turns himself into a mouse and jumps into the grass. For a moment, all Alena can hear is the moaning of the wind.',
        animations = function() 
            MouseS.xScale = -1
            transition.to(MagicWolf, {y=0, time=700, delay=1800})
            transition.to(WolfS, {alpha=0, time=700, delay=2000})
            transition.to(MouseS, {x=500, time=700, delay=2000})
            transition.to(MagicWolf, {y=-800, time=700, delay=2500})
        end,
        animationComplete = function()
            MouseS.xScale = -1
            WolfS.alpha=0
            MagicWolf.y=-800
            MouseS.x=500
            eggWhole.y=350 eggWhole.x=550

        end
    }

    scenes[200] = {
        sName = 200,
        follows = 202,
        text='"Here you go!" says Gray Wolf in the form of the mouse offering Alena the precious egg. ',
        animations = function()
            transition.to(MagicWolf, {y=0, time=700, delay=1800})
            transition.to(WolfS, {alpha= 1, time=700, delay=2000})
            transition.to(MouseS, {alpha=0, time=700, delay=2000})
            transition.to(MagicWolf, {y=-800, time=700, delay=2500})
        end,
        animationComplete = function()
            WolfS.alpha= 1
            MouseS.alpha=0
            MagicWolf.y=-800
        end
    }

    scenes[201] = {
        sName = 201,
        follows = 202,
        text='"Here you go!" says the mouse offering Alena the precious egg. ',
        animations = function() 
            hideDialogue() 
            eggBroken.x = 300 eggBroken.y = 350
            transition.to(eggWhole, {x=300, time=700, delay=500})
        end,
        animationComplete = function()
            hideDialogue()
            MouseS.alpha=0
            eggBroken.x = 300 eggBroken.y = 350
        end
    }

    scenes[202] = {
        sName = 202,
        follows = 203,
        text='A thunderstorm is forming on the horizon, as Alena breaks the egg and pulls out a shining needle. Koschei, the Deathless, appears in front of her and with him, the sky blackens, and the ground shakes. ',
        animations = function()
            transition.to(eggWhole, {alpha=0, time=700, delay=500})
            transition.to(eggBroken, {alpha=1, time=700, delay=500})
            transition.to(lightningLayer, {alpha=1, time=10, delay=1500})
            transition.to(lightningLayer, {alpha=0, time=1000, delay=2500})
            transition.to(oldOak, {alpha=0, time=10, delay=1500})
            transition.to(chestOpen, {alpha=0, time=10, delay=1500})
            transition.to(mountain, {alpha=0, time=10, delay=1500})
            transition.to(koshAttack, {y=0, time=1000, delay=1500})
        end,
        animationComplete = function()
            eggWhole.alpha=0
            eggBroken.alpha=1
            lightningLayer.alpha=0
            oldOak.alpha=0
            chestOpen.alpha=0
            mountain.alpha=0
            koshAttack.y=0
        end
    }

    scenes[203] = {
        sName = 203,
        follows = 204,
        text='Birds in the forest stop singing. Hoarfrost begins to spread across the green grass starting from his feet. The leaves on the trees freeze when he breathes on them.',
        animations = function() 
            transition.to(iceLayer, {alpha=0.8, time=2000, delay=500}) 
            transition.to(foregroundNew, {alpha=0.8, time=2000, delay=1000})
            transition.to(eggBroken, {alpha=0, time=1000, delay=1000})  
        end,
        animationComplete = function()
            iceLayer.alpha=1
            foregroundNew.alpha=1
            eggBroken.alpha=0
        end
    }
    
    scenes[204] = {
        sName = 204,
        follows = 205,
        text='But the moment Koschei sees the needle in Alena’s hand, the storm disappears.',
        animations = function() 
            transition.to(iceLayer, {alpha=0, time=2000, delay=500}) 
            transition.to(foregroundNew, {alpha=0, time=2000, delay=1000})
            transition.to(needle, {alpha=1, time=1000, delay=1000})
            transition.to(koshPleaNC, {alpha = 1, time=700, delay=1000})
            transition.to(koshAttack, {alpha = 0, time=700, delay=1000})
        end,
        animationComplete = function()
            iceLayer.alpha=0
            foregroundNew.alpha=0
            needle.alpha=1
            koshPleaNC.alpha = 1
            koshAttack.alpha = 0 
        end
    }

    scenes[205] = {
        sName = 205,
        follows = 206,
        text='Koschei: “Spare me, Alena. Don’t kill me. I’ll free your brother, and you can imprison me in your dungeon again. Just don’t break the tip of that needle!”',
        animations = function() 
            showDialogue(KoscheiPleaNCD)
        end,
        animationComplete = function() 
            hideDialogue()
            WolfS.alpha=0
            WolfSit.alpha=1
            AlenaNoRibbon.x=400
            WolfSit.x=250
        end
    }

    scenes[206] = {
        sName = 206,
        selection = {
            [1] = {'Break the needle', 211},
            [2] = {'Spear Koschei', 207},
        },
        text='Alena sees her brother standing behind Koschei and feels the stare of her companion. The sky is clear, and the air is full of chirping birds and rustling leaves.',
        animations = function() hideDialogue() 
            IvanS.xScale=-1 IvanS.x=1200 IvanS.y=250
            transition.to(IvanS, {x=800, time=1000, delay=500})
        end,
        animationComplete = function()
            hideDialogue() 
            IvanS.xScale=-1 IvanS.x=800 IvanS.y=250
        end
    }

    scenes[207] = {
        sName = 207,
        clearSelection = true,
        follows = 208,
        changeFlow = function() choices.wolfPenalty =  choices.wolfPenalty-1 end,
        text='“I am not as ruthless as you are!” says Alena, and she orders Koschei to return to his prison, mend the chains, and put them on.',
        animations = function() 
            sunRise.alpha = 1
            transition.to(koshPleaNC, {x=-200, time=1000, delay=500})
            transition.to(sunRise, {y=-250, time=1000})
            transition.to(lightLayer, {alpha=1, time=1000, delay=500})
            needle.alpha=0
        end,
        animationComplete = function()
            sunRise.alpha = 1
            koshPleaNC.x=-200
            sunRise.y=-250
            lightLayer.alpha=1
            needle.alpha=0
        end
    }

    scenes[208] = {
        sName = 208,
        changeFlow = function() 
            if choices.wolfPenalty < 2 then scenes[208].follows = 209
            else scenes[208].follows = 213 end
        end,
        text='Ivan runs to his sister, and they finally embrace each other.',
        animations = function()
            transition.to(IvanAlenaHug, {alpha=1, time=1000, delay=1000})
            transition.to(AlenaNoRibbon, {x=550, time=700, delay=200})
            transition.to(IvanS, {x=600, time=700, delay=200})
            transition.to(AlenaNoRibbon, {alpha=0, time=200, delay=900})
            transition.to(IvanS, {alpha=0, time=200, delay=900})
        end,
        animationComplete = function()
            IvanAlenaHug.alpha=1
            AlenaNoRibbon.alpha=0
            IvanS.alpha=0
        end
    }

    scenes[209] = {
        sName = 209,
        follows = 210,
        text='"You are a brave girl, Alena. I started to help you as a debt to your mother, but now I see you are someone worthy not just of my service, but of my friendship as well." says Gray Wolf. ',
        animations = function() showDialogue(Wolf) end,
        animationComplete = function() hideDialogue() end
    }

    scenes[210] = {
        sName = 210,
        follows = 215,
        text='“Jump on my back with Ivan, and I’ll carry you both home!”',
        animations = function() 
            hideDialogue()
            AlenaIvanRiding.y=10
            transition.to(WolfSit, {alpha=0, time=700, delay=200})
            transition.to(IvanAlenaHug, {alpha=0, time=700, delay=200})
            transition.to(AlenaIvanRiding, {alpha=1, time=700, delay=700})
        end,
        animationComplete = function()
            AlenaIvanRiding.y=10 AlenaIvanRiding.alpha=1
            WolfSit.alpha=0
            IvanAlenaHug.alpha=0
        end
    }

    scenes[211] = {
        sName = 211,
        clearSelection = true,
        follows = 212,
        changeFlow = function() choices.wolfPenalty = choices.wolfPenalty+1 end,
        text='"You’ve caused too much suffering, and you have to pay for that!" says Alena breaking the needle. A bright ray of sunlight pierces the warlock like a knife. ',
        animations = function()
            transition.to(needle, {alpha=0, time=500})
            transition.to(needleBroken, {alpha=1, time=500})
            transition.to(sunRise, {y=-250, time=1000, delay=500})
            transition.to(lightLayer, {alpha=0.5, time=1000, delay=500})
        end,
        animationComplete = function()
            needle.alpha=0
            sunRise.y=-250
            lightLayer.alpha=0.5
        end
    }

    scenes[212] = {
        sName = 212,
        follows = 208,
        text='Koschei screams, but soon his screaming weakens. His bones scatter as he falls to the ground, a handful of gray dust.',
        animations = function() 
            --dust flies
            transition.to(koshPleaNC, {alpha=0, time=1000})
            transition.to(lightLayer, {alpha=1, time=1000})
        end,
        animationComplete = function()
            koshPleaNC.alpha=0
            lightLayer.alpha=1
            needleBroken.alpha=0
        end
    }

    scenes[213] = {
        sName = 213,
        follows = 214,
        text='“I am not disputing your decisions, Alena, but with this, my debt to your mother is paid in full,” says Grey Wolf. “You can return home and tell her that.”',
        animations = function() 
            showDialogue(Wolf)
        end,
        animationComplete = function() 
            hideDialogue() 
            WolfSit.alpha=0
            WolfS.alpha=1
            IvanAlenaHug.alpha=0
            IvanS.alpha=1 IvanS.x=330
            AlenaNoRibbon.alpha=1 AlenaNoRibbon.x=270
        end
    }

    scenes[214] = {
        sName = 214,
        follows = 218,
        text='So Alena says her goodbye and with sadness in her heart, she watches Gray Wolf disappear into the forest.',
        animations = function() 
            hideDialogue() 
            transition.to(WolfS, {x=1200, time=1000, delay=500}) 
            transition.to(lightLayer, {alpha=0.3, time=1000})
        end,
        animationComplete = function() hideDialogue() WolfS.x=1200 end
    }

-------- Act 8 (Ending) Scenes 215 - 220

    scenes[215] = {
        sName = 215,
        follows = 216,
        openingAnimation = {
            [1] = 'background1.png', 
            [2] = 'foreground1.png'
        },
        setStage = 'set1',
        text='So they return home together. ',
        animations = function() 
            loadHomeSet()
            sun.x=300
            AlenaIvanRiding.xScale = -1 
            transition.to(sun, {y=-100, time=1000, delay=1000})
            transition.to(background, {y=-250, time=1000, delay=1000})
            transition.to(AlenaIvanRiding, {y=35, time=1000, delay=4500})
        end,
        animationComplete = function()
            sun.y=-100 sun.x=300
            foreground.y=0
            background.y=-250
            landscape3.x= 0
            landscape2.x= -15
            landscape1.rotation=0 landscape1.y=630
            shadowLayer1.alpha=1
            houseOutside.y = 0
            AlenaIvanRiding.xScale = -1 
            AlenaIvanRiding.y=35
            foreground.y = 0
        end
    }
    scenes[216] = {
        sName = 216,
        follows = 217,
        text='Without Koschei’s witchcraft, Alena’s mother, Marya Morevna, easily overpowers his minions, and peace and prosperity falls across the land.',
        animations = function()
            loadMotherFinal()
        end,
        animationComplete = function()
            MotherS.x=595 MotherS.y=270 MotherS.alpha=1
            MotherWarS.alpha=0
        end
    }

    scenes[217] = {
        sName = 217,
        follows = 1000,
        text='Their mother is happy to see them home again. Gray Wolf settles nearby, and they live in health and good cheer for many long years. ',
        animations = function() end,
        animationComplete = function()end
    }

    scenes[218] = {
        sName = 218,
        openingAnimation = {
            [1] = 'background1_a.png', 
            [2] = 'foreground1.png'
        },
        setStage = 'set1',
        follows = 219,
        text='It is a long way home for for Alena and her brother.',
        animations = function() 
            loadHomeSet() 
            transition.to(AlenaS, {y=270, time=1000, delay=4500})
            transition.to(IvanS, {y=290, time=1000, delay=4500}) 
            transition.to(starsAndMoon, {y=0, time=1000, delay=2000})
        end,
        animationComplete = function()
            foreground.x=0
            starsAndMoon.y=0
            landscape3.x= 0
            landscape2.x= -15
            landscape1.rotation= 0 landscape1.y=630
            shadowLayer1.alpha=1
            houseOutside.y = 0
            IvanS.y=290
            AlenaS.y=270
            foreground.y = 0
        end
    }

    scenes[219] = {
        sName = 219,
        follows = 220,
        text='Without Koschei’s witchcraft, Alena’s mother, Marya Morevna, easily overpowers his minions, and peace and prosperity falls across the land. ',
        animations = function() loadMotherFinal() 
        end,
        animationComplete = function()
            MotherS.x=595 MotherS.y=270 MotherS.alpha=1
            MotherWarS.alpha=0
        end
    }

    scenes[220] = {
        sName = 220,
        follows = 1000,
        text='After a long journey, they return home together and live in health and in good cheer for many long years. ',
        animations = function() end,
        animationComplete = function()end
    }

    scenes[1000] = {
        sName = 1000,
        follows = 1001,
        text='The end',
        animations = function() end,
        animationComplete = function()end
    }

    scenes[1001] = {
        sName = 1001,
        animations = function() end,
        animationComplete = function()end
    }

-----------------------------------------------------------------------------------
--
-- FUNCTIONS
--
-----------------------------------------------------------------------------------------

-- Set Images the right way
function setCenter(img)
    img.x = display.contentWidth / 2 img.y = display.contentHeight / 2
end

function setAnchor(img)
    img.anchorX = 0 img.anchorY = 0
end 



-- Display charDialogur
function showDialogue(name)
    dialBack:toBack()
    transition.to(dialBack, {y=0, time=500})
    --Re-center the object
    name.x = 400 name.y = 800
    --Change position based on the onject
    if name==Mother or name==MotherWar then transition.to(name, {y=400, time=500}) end
    if name==Alena then transition.to(name, {y=400, time=500}) end
    if name==AlenaNR then transition.to(name, {y=400, time=500}) end
    if name==Ivan then transition.to(name, {y=400, time=500}) end
    if name==KoscheiPlea then KoscheiPlea.x=200 transition.to(name, {y=400, time=500}) end
    if name==KoscheiPleaNCD then KoscheiPleaNCD.x=400 transition.to(name, {y=400, time=500}) end
    if name==Koschei then transition.to(name, {y=400, time=500}) end
    if name==Wolf then Wolf.x=700 transition.to(name, {y=430, time=500}) end
    if name==Bear then Bear.x=300 transition.to(name, {y=400, time=500}) end
    if name==BrotherD then BrotherD.x=300 transition.to(name, {y=400, time=500}) end
    if name==VasilisaD then VasilisaD.x=300 transition.to(name, {y=400, time=500}) end
    if name==CrowD then CrowD.x=200 transition.to(name, {y=400, time=500}) end
    if name==YagaD then YagaD.x=300 transition.to(name, {y=400, time=500}) end
    if name==MouseD then MouseD.x=300 transition.to(name, {y=400, time=500}) end
end

function hideDialogue()
    local characters = {Mother, Alena, AlenaNR, AlenaCryD_NR, Ivan, KoscheiPlea, Koschei, MotherWar, Wolf, BrotherD, VasilisaD, VasilisaCry, Bear, CrowD, YagaD, MouseD, KoscheiPleaNCD}
    for i=1, table.getn(characters) do characters[i].y = -700 end
    transition.to(dialBack, {y = -800, time=500})
    --dialBack.y = -800
end

function curtanBack()
    dialBack.y=-800 
end


--
-- Set stage functions
--
function clearStage()
    if(midlayer1) then
        print("This midlayer1 groop has children: "..midlayer1.numChildren)
        for i=1, midlayer1.numChildren  do
            midlayer1[1]:removeSelf()
            midlayer1[1] = nil
        end
    end

    if(midlayer2) then
        print("This midlayer2 groop has children: "..midlayer2.numChildren)
        for i=1, midlayer2.numChildren  do
            midlayer2[1]:removeSelf()
            midlayer2[1] = nil
        end
    end

    if(midlayer3) then
        print("This midlayer3 groop has children: "..midlayer3.numChildren)
        for i=1, midlayer3.numChildren  do
            midlayer3[1]:removeSelf()
            midlayer3[1] = nil
        end
    end
end

function removeCharacters()
    AlenaS.x = 200 AlenaS.y = -400
    AlenaNoRibbon.x = 200 AlenaNoRibbon.y = -400
    IvanS.x = 130 IvanS.y = -400
    MotherS.x = 540 MotherS.y = -400 
    AlenaCryS.x = 400 AlenaCryS.y = -400
    MotherWarS.x = 600 MotherWarS.y = -400
    WolfS.x=-300 WolfS.y=-400
    WolfSit.x=600 WolfSit.y=-400
    AlenaOnWolf.x=1200 AlenaOnWolf.y=270
    AlenaOnWolfNoRibbon.x=1200 AlenaOnWolfNoRibbon.y=270
    BrotherS.x = 500 BrotherS.y=-400
    YagaS.x=350 YagaS.y=-400
    MouseS.x = -100 MouseS.y=200
end

-- Move layers in the right order
local function organizeStage()
    background:toFront()
    midlayer1:toFront()
    midlayer2:toFront()
    characters:toFront()
    midlayer3:toFront()
    charactersDial:toFront()
    foregoundGr:toFront()
    textLayers:toFront()
end

-- Fill up the stage
local function setStageObjects(stage)
    local stages = {
        set1 = function()
            clearStage()
            removeCharacters()

            sun = display.newImage(midlayer1, "images/sun.png", true) setAnchor(sun)
            sun.x = -100 sun.y = 50 sun.alpha=0

            starsAndMoon = display.newImage(midlayer1, "images/act5_stars.png", true) setAnchor(starsAndMoon)
            starsAndMoon.x = 100 starsAndMoon.y = -500

            landscape3 = display.newImage(midlayer1, "images/act1_landscape3.png", true) setAnchor(landscape3)
            landscape3.x = 1000 landscape3.y = 285

            houseOutside = display.newImage(midlayer1, "images/house_light.png") setAnchor(houseOutside) houseOutside.x = 200
            houseOutside.x = 200 houseOutside.y = -500

            landscape2 = display.newImage(midlayer1, "images/act1_landscape2.png", true) setAnchor(landscape2)
            landscape2.x = -1000 landscape2.y = 375
            
            landscape1 = display.newImage(midlayer1, "images/act1_landscape1.png", true) 
            landscape1.anchorX = 1 landscape1.anchorY=1
            landscape1.x = 1020 landscape1.y = 1300
            landscape1.rotation=-90

            shadowLayer1 = display.newImage(midlayer2, "images/act1_shadowLayer.png", true) setAnchor(shadowLayer1)
            shadowLayer1.x=0 shadowLayer1.y=0 shadowLayer1.alpha = 0

            orangeLight = display.newImage(midlayer3, "images/act1_orangeLight.png", true) setAnchor(orangeLight)
            orangeLight.x=0 orangeLight.y=0 orangeLight.alpha = 0

            AlenaIvanRiding = display.newImage(midlayer3, "images/AlenaIvanRiding.png", true) setAnchor(AlenaIvanRiding)
            AlenaIvanRiding.x = 400 AlenaIvanRiding.y = -450

            leaves = display.newImage(midlayer3,"images/act3_leavesFall.png", true) setAnchor(leaves) leaves.alpha = 0
            leaves.x=700 leaves.y=-550

            organizeStage()
        end,
        set9 = function()
            clearStage()
            removeCharacters()

            bed = display.newImage(midlayer1, "images/act2_bed.png", true) setAnchor(bed)
            bed.x=280 bed.y = -500

            tableCloth = display.newImage(midlayer1, "images/act2_table.png", true) setAnchor(tableCloth)
            tableCloth.x = 520 tableCloth.y=-500

            ovenFire = display.newImage(midlayer2, "images/act2_ovenFire.png", true) setAnchor(ovenFire)
            ovenFire.x=42 ovenFire.y = 260 ovenFire.alpha = 0

            shadowLayer2 = display.newImage(midlayer2, "images/act2_shadowLayer.png", true) setAnchor(shadowLayer2) 
            shadowLayer2.alpha = 0


            broom = display.newImage(midlayer2, "images/act2_broom.png", true) setAnchor(broom)
            broom.x=200 broom.y = -600

            dishes = display.newImage(midlayer2, "images/act2_dishes.png", true) setAnchor(dishes)
            dishes.x=580 dishes.y = -500

            organizeStage()
        end,
        set18 = function()
            clearStage()
            basementStage = display.newImage(midlayer1, "images/background4.png", true) setAnchor(basementStage)
            basementStage.x=0 basementStage.y = 0 basementStage.alpha=0
            
            waterFount = display.newImage(midlayer1, "images/act3_water.png", true) setAnchor(waterFount)
            waterFount.x=630 waterFount.y = 200 waterFount.alpha = 0

            lights3 = display.newImage(midlayer1, "images/act3_lights.png", true) setAnchor(lights3)
            lights3.x=280 lights3.y = -500

            bucket1 = display.newImage(midlayer2, "images/act2_bucket1.png", true) setAnchor(bucket1)
            bucket1.x=130 bucket1.y = -550

            koshPrisoner = display.newImage(midlayer2, "images/kosh_chained.png", true) setAnchor(koshPrisoner)
            koshPrisoner.x=680 koshPrisoner.y = 0 koshPrisoner.alpha=0

            chains = display.newImage(midlayer2, "images/act2_chains.png", true) setAnchor(chains)
            chains.x=680 chains.y = 0 chains.alpha=0

            bucket2 = display.newImage(midlayer2, "images/act2_bucket2.png", true) bucket2.anchorY = 0.5 bucket2.anchorX = 1
            bucket2.x=275 bucket2.y = -55

            bucketTread = display.newImage(midlayer2, "images/act2_bucketTread.png", true) setAnchor(bucketTread)
            bucketTread.x=180 bucketTread.y = -600

            icyCurtain = display.newImage(midlayer3, "images/icyCurtain.png", true) setAnchor(icyCurtain)
            icyCurtain.x=350 icyCurtain.y = 50 icyCurtain.isVisible=false

            organizeStage()
        end,
        set39 = function()
            clearStage()

            starsAndMoon = display.newImage(midlayer1, "images/act5_stars.png", true) setAnchor(starsAndMoon )
            starsAndMoon.x = 100 starsAndMoon.y = -500

            landscape3 = display.newImage(midlayer1, "images/act5_landscape3.png", true) setAnchor(landscape3)
            landscape3.x = -1000 landscape3.y = 230

            landscape2 = display.newImage(midlayer1, "images/act5_landscape2.png", true) setAnchor(landscape2)
            landscape2.x = 1000 landscape2.y = 0


            landscape1 = display.newImage(midlayer1, "images/act5_landscape1.png", true) setAnchor(landscape1)
            landscape1.x = 1000 landscape1.y = 400

            fortress2 = display.newImage(midlayer2, "images/act5_fortress2.png", true) setAnchor(fortress2)
            fortress2.x = -115 fortress2.y = 190

            bridge = display.newImage(midlayer2, "images/act5_bridge.png", true) setAnchor(bridge)
            bridge.alpha = 0
            bridge.x = 480 bridge.y = 480
            bridge.anchorX = 1 bridge.anchorY = 1

            fortress = display.newImage(midlayer2, "images/act5_fortress.png", true) setAnchor(fortress)
            fortress.x = -600 fortress.y = 100

            shadowLayer5 = display.newImage(midlayer2, "images/act5_shadowLayer.png", true) setAnchor(shadowLayer5) shadowLayer5.alpha=0

            stone = display.newImage(midlayer2, "images/act5_stone.png", true) setAnchor(stone)
            stone.x = 120 stone.y = -500 

            organizeStage()
        end,
        set52 = function()
            clearStage()

            landscape3 = display.newImage(midlayer1, "images/act6_landscape3.png", true) setAnchor(landscape3)
            landscape3.x = -1000 landscape3.y = 130

            if choices.brother=='Falcon' then
                landscape2 = display.newImage(midlayer1, "images/act6_landscape2y.png", true)
                throne = display.newImage(midlayer2, "images/act6_chairRed.png", true)
                birdSymbol = display.newImage(midlayer2, "images/act6_Falcon_stand.png", true)
                setAnchor(birdSymbol) birdSymbol.x = 210 birdSymbol.y = -200
                loadBrothers('Falcon')

            elseif choices.brother=='Raven' then
                landscape2 = display.newImage(midlayer1, "images/act6_landscape2b.png", true)
                throne = display.newImage(midlayer2, "images/act6_chairBlue.png", true)
                birdSymbol = display.newImage(midlayer2, "images/act6_Raven_stand.png", true)
                setAnchor(birdSymbol) birdSymbol.x = 215 birdSymbol.y = -200
                loadBrothers('Falcon')
            else
                landscape2 = display.newImage(midlayer1, "images/act6_landscape2r.png", true)
                throne = display.newImage(midlayer2, "images/act6_chairGold.png", true)
                birdSymbol = display.newImage(midlayer2, "images/act6_Eagle_stand.png", true)
                setAnchor(birdSymbol) birdSymbol.x = 200 birdSymbol.y = -200
                loadBrothers('Eagle')
            end

            setAnchor(landscape2) landscape2.x = 0 landscape2.y = -1000
            setAnchor(throne) throne.x = 250 throne.y = -600

            shadowLayer6 = display.newImage(midlayer1, "images/act6_shadowLayer.png", true) setAnchor(shadowLayer6) shadowLayer6.alpha=0

            organizeStage() 
        end,
        set62 = function()
            removeCharacters()
            clearStage() 

            landscape3 = display.newImage(midlayer1, "images/background7.png", true) setAnchor(landscape3)
            landscape3.x = 0 landscape3.y = 0

            landscape2 = display.newImage(midlayer1, "images/act5_landscape2.png", true) setAnchor(landscape2)
            landscape2.x = -400 landscape2.y = 0


            landscape1 = display.newImage(midlayer1, "images/act5_landscape1.png", true) setAnchor(landscape1)
            landscape1.x = 0 landscape1.y = 400

            ribbon = display.newImage(midlayer3, "images/ribbon_single.png") setAnchor(ribbon)
            ribbon.xScale = -1 
            ribbon.x = 150 ribbon.y=45 

            if choices.brother=="Raven" then
                StrongholdB1 = display.newImage("images/act7_Falcon_stronghold.png", false)
            else
                StrongholdB1 = display.newImage("images/act7_Raven_stronghold.png", false)
            end

            setAnchor(StrongholdB1) StrongholdB1.x=1200 StrongholdB1.y=150
            midlayer2:insert(StrongholdB1)
            StrongholdB1:toFront()

            shadowLayer5 = display.newImage(midlayer2, "images/act5_shadowLayer.png", true) setAnchor(shadowLayer5) shadowLayer5.alpha=1

            AppleGarden = display.newImage(midlayer2, "images/act7_Garden.png", true) setAnchor(AppleGarden)
            AppleGarden.x=1200 AppleGarden.y=-65

            GoldenApples = display.newImage(midlayer2, "images/act7_goldenApples.png", true) setAnchor(GoldenApples)
            GoldenApples.x=470 GoldenApples.y=-500
            GoldenApple = display.newImage(midlayer3, "images/act7_goldenApple.png", true) setAnchor(GoldenApple)
            GoldenApple.x=500  GoldenApple.y=-500
            TreeRibbon = display.newImage(midlayer2, "images/act7_treeRibbon.png", true) setAnchor(TreeRibbon)
            TreeRibbon.x=560  TreeRibbon.y=-500

            MagicWolf = display.newImage( midlayer3, "images/magicWolf.png", true) setAnchor(MagicWolf)
            MagicWolf.x=290 MagicWolf.y=-600
            MagicWolf:toFront()

            UncleServants = display.newImage(midlayer3, "images/uncles_servants.png", true) setAnchor(UncleServants)
            UncleServants.x=1200 UncleServants.y=100

            foreground:removeSelf()
            foreground=nil
            foreground = display.newImage(foregoundGr, "images/foreground6.png", true ) setAnchor(foreground)

            organizeStage() 
        end,
        set73 = function()
            clearStage()

            landscape1 = display.newImage(midlayer1, "images/background7.png", true) setAnchor(landscape1)
            landscape1.x = 0 landscape1.y = 0

            landscape3 = display.newImage(midlayer1, "images/act6_landscape3.png", true) setAnchor(landscape3)
            landscape3.x = 0 landscape3.y = 130

            if choices.brother=='Falcon' then
                landscape2 = display.newImage(midlayer1, "images/act6_landscape2y.png", true)
                throne = display.newImage(midlayer2, "images/act6_chairRed.png", true)
                birdSymbol = display.newImage(midlayer2, "images/act6_Falcon_stand.png", true)
                setAnchor(birdSymbol) birdSymbol.x = 210 birdSymbol.y = 320
                loadBrothers('Falcon')


            elseif choices.brother=='Raven' then
                landscape2 = display.newImage(midlayer1, "images/act6_landscape2b.png", true)
                throne = display.newImage(midlayer2, "images/act6_chairBlue.png", true)
                birdSymbol = display.newImage(midlayer2, "images/act6_Raven_stand.png", true)
                setAnchor(birdSymbol) birdSymbol.x = 215 birdSymbol.y = 320
                loadBrothers('Raven')

            else
                landscape2 = display.newImage(midlayer1, "images/act6_landscape2r.png", true)
                throne = display.newImage(midlayer2, "images/act6_chairGold.png", true)
                birdSymbol = display.newImage(midlayer2, "images/act6_Eagle_stand.png", true)
                setAnchor(birdSymbol) birdSymbol.x = 200 birdSymbol.y = 320
                loadBrothers('Eagle')

            end

            setAnchor(landscape2) landscape2.x = 0 landscape2.y = 0
            setAnchor(throne) throne.x = 250 throne.y = -30

            shadowLayer6 = display.newImage(midlayer1, "images/act6_shadowLayer.png", true) setAnchor(shadowLayer6) shadowLayer6.alpha=0

            GoldenApple = display.newImage(midlayer3, "images/act7_goldenApple.png", true) setAnchor(GoldenApple)
            GoldenApple.x=500  GoldenApple.y=-500

            GoldenHorse = display.newImage(midlayer2, "images/act7_goldenHorse.png", true) setAnchor(GoldenHorse)
            GoldenHorse.x=750  GoldenHorse.y=-500
            
            foreground:removeSelf()
            foreground = nil
            foreground = display.newImage(foregoundGr, "images/foreground3.png", true ) setAnchor(foreground)
            foreground.y=0

            BrotherS.y=300
            shadowLayer6.alpha=1

            organizeStage()  
        end,
        set75 = function()
            removeCharacters()
            clearStage() 

            landscape3 = display.newImage(midlayer1, "images/background8.png", true) setAnchor(landscape3)
            landscape3.x = 0 landscape3.y = 0

            landscape2 = display.newImage(midlayer1, "images/act5_landscape2.png", true) setAnchor(landscape2)
            landscape2.x = -400 landscape2.y = 0


            landscape1 = display.newImage(midlayer1, "images/act5_landscape1.png", true) setAnchor(landscape1)
            landscape1.x = 0 landscape1.y = 400

            if choices.brother=="Eagle" then
                StrongholdB2 = display.newImage("images/act7_Falcon_stronghold.png", false) 
            else
                StrongholdB2 =  display.newImage("images/act7_Eagle_stronghold.png", false) 
            end

            setAnchor(StrongholdB2) StrongholdB2.x=1200 StrongholdB2.y=150
            midlayer2:insert(StrongholdB2)
            StrongholdB2:toFront()

            stableImg = display.newImage(midlayer2, "images/act7_Stable.png", true) setAnchor(stableImg)
            stableImg.x=1200 stableImg.y=-100

            stableRibbon = display.newImage(midlayer3, "images/act7_treeRibbon.png", true) setAnchor(stableRibbon)
            stableRibbon.x=690  stableRibbon.y=-500

            GoldenHorse = display.newImage(midlayer3, "images/act7_goldenHorse.png", true) setAnchor(GoldenHorse)
            GoldenHorse.x=750  GoldenHorse.y=-500

            MagicWolf = display.newImage( midlayer3, "images/magicWolf.png", true) setAnchor(MagicWolf)
            MagicWolf.x=290 MagicWolf.y=-600
            MagicWolf:toFront()

            UncleServants = display.newImage(midlayer3, "images/uncles_servants.png", true) setAnchor(UncleServants)
            UncleServants.x=1200 UncleServants.y=130

            foreground:removeSelf()
            foreground = nil
            foreground = display.newImage(foregoundGr, "images/foreground6.png", true ) setAnchor(foreground)

            organizeStage() 
        end,
        set90 = function() 
            removeCharacters()
            clearStage() 

            landscape3 = display.newImage(midlayer1, "images/background9.png", true) setAnchor(landscape3)
            landscape3.x = 0 landscape3.y = 0

            landscape2 = display.newImage(midlayer1, "images/act5_landscape2.png", true) setAnchor(landscape2)
            landscape2.x = -400 landscape2.y = 0


            landscape1 = display.newImage(midlayer1, "images/act5_landscape1.png", true) setAnchor(landscape1)
            landscape1.x = 0 landscape1.y = 400

            StrongholdBer = display.newImage(midlayer2, "images/act8_wall.png", true) setAnchor(StrongholdBer) 
            StrongholdBer.x=1200 StrongholdBer.y=-10
            StrongholdBer:toFront()

            GardenBer = display.newImage(midlayer2, "images/act8_courtyard.png", true) setAnchor(GardenBer) 
            GardenBer.x=1200 GardenBer.y=-200
            GardenBer:toFront()

            AlenaVasilisaRiding = display.newImage(midlayer3, "images/AlenaVasilisaRiding.png", true) setAnchor(AlenaVasilisaRiding) 
            AlenaVasilisaRiding.x=600 AlenaVasilisaRiding.y=-500


            foreground:removeSelf()
            foreground = nil
            foreground = display.newImage(foregoundGr, "images/foreground6.png", true ) setAnchor(foreground)

            organizeStage() 
        end,
        set100 = function() 
            clearStage()

            landscape3 = display.newImage(midlayer1, "images/background10.png", true) setAnchor(landscape3)
            landscape3.x = 0 landscape3.y = 0

            landscape2 = display.newImage(midlayer1, "images/act5_landscape2.png", true) setAnchor(landscape2)
            landscape2.x = -200 landscape2.y = 0

            landscape1 = display.newImage(midlayer1, "images/act5_landscape1.png", true) setAnchor(landscape1)

            fortress2 = display.newImage(midlayer1, "images/act5_fortress2.png", true) setAnchor(fortress2)
            fortress2.x = -115 fortress2.y = 190

            bridge = display.newImage(midlayer1, "images/act5_bridge.png", true) setAnchor(bridge)
            bridge.alpha = 0
            bridge.x = 380 bridge.y = 480
            bridge.anchorX = 1 bridge.anchorY = 1

            MagicWolf = display.newImage( midlayer3, "images/magicWolf.png", true) setAnchor(MagicWolf)
            MagicWolf.x=450 MagicWolf.y=-600
            MagicWolf:toFront()

            fortress = display.newImage(midlayer1, "images/act5_fortress.png", true) setAnchor(fortress)
            fortress.x = -600 fortress.y = 100

            landscape1.x = 0 landscape1.y = 400

            shadowLayer5 = display.newImage(midlayer2, "images/act5_shadowLayer.png", true) setAnchor(shadowLayer5) shadowLayer5.alpha=0

            AlenaVasilisaRiding = display.newImage(midlayer3, "images/AlenaVasilisaRiding.png", true) setAnchor(AlenaVasilisaRiding) 
            AlenaVasilisaRiding.x=600 AlenaVasilisaRiding.y=-500

            foreground:removeSelf()
            foreground = nil
            foreground = display.newImage(foregoundGr, "images/foreground6.png", true ) setAnchor(foreground)

            organizeStage()  
        end,
        set105 = function()
            clearStage()
            landscape3 = display.newImage(midlayer1, "images/act9_snow.png", true) setAnchor(landscape3)
            landscape3.x = 1024 landscape3.y = 0 


            treeBack = display.newImage(midlayer2, "images/act9_treeBack.png", true) setAnchor(treeBack)
            treeBack.x=1300 treeBack.y=140
            treeFront = display.newImage(midlayer3, "images/act9_treeFront.png", true) setAnchor(treeFront)
            treeFront.x=1300 treeFront.y=30

            shadowLayer9 = display.newImage(midlayer3, "images/act9_shadowLayer.png", true) setAnchor(shadowLayer9) 
            shadowLayer9.alpha=0

            organizeStage() 
        end,
        set120 = function() 
            clearStage()
            removeCharacters()

            landscapeBack = display.newImage(midlayer1, "images/background11.png", true) setAnchor(landscapeBack)
            landscapeBack.x = 0 landscapeBack.y = 0

            landscape3 = display.newImage(midlayer1, "images/act9_snow.png", true) setAnchor(landscape3)
            landscape3.x = 0 landscape3.y = 0

            landscape2 = display.newImage(midlayer2, "images/act10_castle.png", true) setAnchor(landscape2)
            landscape2.x = 630 landscape2.y = 0

            WindowNoIvan =  display.newImage(midlayer1, "images/act10_EmptyWindow.png", true) setAnchor(WindowNoIvan)
            WindowNoIvan.x = 700 WindowNoIvan.y = 200

            WindowWithIvan = display.newImage(midlayer1, "images/act10_IvanInWindow.png", true) setAnchor(WindowWithIvan)
            WindowWithIvan.x = 700 WindowWithIvan.y = 200

            AlenaIvanRiding = display.newImage(midlayer3, "images/AlenaIvanRiding.png", true) setAnchor(AlenaIvanRiding)
            AlenaIvanRiding.x = 500 AlenaIvanRiding.y = -450

            koshAttack = display.newImage(midlayer3, "images/kosh_attack.png", true) setAnchor(koshAttack)
            koshAttack.x=200 koshAttack.y = -500 

            wolfDown = display.newImage(midlayer3, "images/wolf_down.png", true) setAnchor(wolfDown)
            wolfDown.x=430 wolfDown.y = -500 

            alenaDown = display.newImage(midlayer3, "images/alena_down.png", true) setAnchor(alenaDown)
            alenaDown.x=400 alenaDown.y = -500 

            icyCurtain = display.newImage(midlayer3, "images/icyCurtain2.png", true) setAnchor(icyCurtain)
            icyCurtain.x=0 icyCurtain.y = 30 icyCurtain.alpha=0 

            ShiftRaven = display.newImage( midlayer3, "images/act10_Raven.png", true) setAnchor(ShiftRaven)
            ShiftRaven.x=250 ShiftRaven.y=-400

            MagicWolf = display.newImage( midlayer3, "images/magicWolf.png", true) setAnchor(MagicWolf)
            MagicWolf.x=250 MagicWolf.y=-600
            MagicWolf:toFront()

            MagicBrother = display.newImage( midlayer3, "images/act10_raven_feather.png", true) setAnchor(MagicBrother)
            MagicBrother.x=270 MagicBrother.y=-600
            MagicBrother:toFront()

            BlackWater = display.newImage( midlayer3, "images/act10_blackWater.png", true) setAnchor(BlackWater)
            BlackWater.x=270 BlackWater.y=-600 BlackWater.alpha=0
            BlackWater:toFront()

            BlueWater = display.newImage( midlayer3, "images/act10_blueWater.png", true) setAnchor(BlueWater)
            BlueWater.x=270 BlueWater.y=-600 BlueWater.alpha=0
            BlueWater:toFront()

            WhiteMagic = display.newImage(midlayer3, "images/act10_magicWhite.png", true) setAnchor(WhiteMagic)
            WhiteMagic.x=0 WhiteMagic.y = -800

            shadowLayer9 = display.newImage(midlayer3, "images/act9_shadowLayer.png", true) setAnchor(shadowLayer9) 
            shadowLayer9.alpha=0 

            foreground:removeSelf()
            foreground = nil
            foreground = display.newImage(foregoundGr, "images/foreground7.png", true ) setAnchor(foreground)

            crowBig = display.newImage(foregoundGr, "images/crow_big.png", true) setAnchor(crowBig)
            crowBig.x=200 crowBig.y = -400

            crowSmall = display.newImage(foregoundGr, "images/crow_small.png", true) setAnchor(crowSmall)
            crowSmall.x=200 crowSmall.y = -400

            organizeStage() 
        end,
        set147 = function()
            clearStage()
            removeCharacters()

            landscape1 = display.newImage(midlayer1, "images/act12_trees.png", true) setAnchor(landscape1)
            landscape1.x = -1710 landscape1.y = 0

            landscape2 = display.newImage(midlayer1, "images/act12_ground.png", true) setAnchor(landscape2)
            landscape2.x = 1024 landscape2.y = 0

            landscape3 = display.newImage(midlayer1, "images/act12_road.png", true) setAnchor(landscape3)
            landscape3.x = 0 landscape3.y = 500

            hutWindow = display.newImage(midlayer2, "images/act12_hutFront.png", true) setAnchor(hutWindow)
            hutWindow.x = 560 hutWindow.y = -500

            hutDoor = display.newImage(midlayer2, "images/act12_hutBack.png", true) setAnchor(hutDoor)
            hutDoor.x = 560 hutDoor.y = -500

            hutFence = display.newImage(midlayer2, "images/act12_hutFence.png", true) setAnchor(hutFence)
            hutFence.x = 1024 hutFence.y = 270

            shadowLayer12 = display.newImage(midlayer2, "images/act12_shadowLayer.png", true) setAnchor(shadowLayer12)
            shadowLayer12.x=0 shadowLayer12.y=0 
            shadowLayer12.alpha=0

            organizeStage() 
        end,
        set154 = function() 
            clearStage()
            removeCharacters()

            yagaShadow = display.newImage(midlayer1, "images/act13_yagaFly.png", true) setAnchor(yagaShadow)
            yagaShadow.x = 200 yagaShadow.y = 100

            landscape1 = display.newImage(midlayer2, "images/act13_walls.png", true) setAnchor(landscape1)
            landscape1.x = 0 landscape1.y = -800

            hutTable = display.newImage(midlayer2, "images/act13_table.png", true) setAnchor(hutTable)
            hutTable.x = 355 hutTable.y = -800

            ovenBack = display.newImage(midlayer2, "images/act13_ovanback.png", true) setAnchor(ovenBack)
            ovenBack.x = 600 ovenBack.y = -800
            ovenFront = display.newImage(midlayer2, "images/act13_ovenfront.png", true) setAnchor(ovenFront)
            ovenFront.x = 600 ovenFront.y = -800

            ovenFire = display.newImage(midlayer2, "images/act13_ovenhaze.png", true) setAnchor(ovenFire)
            ovenFire.x = 600 ovenFire.y = -800 ovenFire.alpha=0

            hutShelf = display.newImage(midlayer2, "images/act13_shelf.png", true) setAnchor(hutShelf)
            hutShelf.x = 90 hutShelf.y = -800

            hutSpin = display.newImage(midlayer2, "images/act13_spin.png", true) setAnchor(hutSpin)
            hutSpin.x = 240 hutSpin.y = -800


            paddle = display.newImage(midlayer3, "images/act13_paddle.png", true)
            paddle.anchorX=1 paddle.x = -10 paddle.y = 320

            alenaSit = display.newImage(midlayer3, "images/act13_alenaSitting.png", true) setAnchor(alenaSit)
            alenaSit.x = 600 alenaSit.y = 900

            yagaSit = display.newImage(midlayer3, "images/act13_yagaSitting.png", true) setAnchor(yagaSit)
            yagaSit.x = 600 yagaSit.y = 900

            ovenCover = display.newImage(midlayer3, "images/act13_ovenCover.png", true) setAnchor(ovenCover)
            ovenCover.x = 870 ovenCover.y = -800

            hutMortar = display.newImage(midlayer3, "images/act13_stupaStand.png", true) setAnchor(hutMortar)
            hutMortar.x = 50 hutMortar.y = -800

            shadowLayer13 = display.newImage(midlayer2, "images/act13_shadowLayer.png", true) setAnchor(shadowLayer13) 
            shadowLayer13.x=0 shadowLayer13.y=0
            shadowLayer13.alpha=0

            organizeStage()
        end,
        set185 = function()
            clearStage()
            removeCharacters()

            sunRise = display.newImage(midlayer1, "images/sun.png", true) setAnchor(sunRise)
            sunRise.x = 800 sunRise.y = 0 sunRise.alpha = 0

            landscape1 = display.newImage(midlayer1, "images/act14_forestBack.png", true) setAnchor(landscape1)
            landscape1.x = 1024 landscape1.y = 0

            landscape2 = display.newImage(midlayer1, "images/act14_forestMid.png", true) setAnchor(landscape2)
            landscape2.x = -2100 landscape2.y = 0

            landscape3 = display.newImage(midlayer1, "images/act14_forestFront.png", true) setAnchor(landscape3)
            landscape3.x = 1024 landscape3.y = 0

            groundLevel = display.newImage(midlayer1, "images/act14_ground.png", true) setAnchor(groundLevel)
            groundLevel.x = -2100 groundLevel.y = 0

            
            grass = display.newImage(midlayer2, "images/act14_grass.png", true) setAnchor(grass)
            grass.x = -2100 grass.y = 0

            shadowLayer14 = display.newImage(midlayer2, "images/act14_shadowLayer.png", true) setAnchor(shadowLayer14) 
            shadowLayer14.x=0 shadowLayer14.y=0
            shadowLayer14.alpha=0

            oldOak = display.newImage(midlayer2, "images/act14_oak.png", true) oldOak.anchorX=1 oldOak.anchorY=1
            oldOak.x = 1700 oldOak.y = 400

            mountain = display.newImage(midlayer2, "images/act14_mountain.png", true) mountain.anchorX=1 mountain.anchorY=1
            mountain.x = 1700 mountain.y = 600

            chestClosed = display.newImage(midlayer2, "images/act14_chest.png", true) setAnchor(chestClosed)
            chestClosed.x = 0 chestClosed.y = 800

            chestOpen = display.newImage(midlayer2, "images/act14_chestOpen.png", true) setAnchor(chestOpen)
            chestOpen.x = 670 chestOpen.y = 300 chestOpen.alpha=0

            koshAttack = display.newImage(midlayer3, "images/kosh_attack.png", true) setAnchor(koshAttack)
            koshAttack.x=600 koshAttack.y = -500 

            koshPleaNC = display.newImage(midlayer3, "images/kosh_pleaNC.png", true) setAnchor(koshPleaNC)
            koshPleaNC.x = 600 koshPleaNC.y = 0 koshPleaNC.alpha = 0 

            eggWhole = display.newImage(midlayer3, "images/act14_egg.png", true) setAnchor(eggWhole)
            eggWhole.x = 300 eggWhole.y = 50 eggWhole.alpha=0

            eggBroken = display.newImage(midlayer3, "images/act14_eggBroken.png", true) setAnchor(eggBroken)
            eggBroken.x = 670 eggBroken.y = 300 eggBroken.alpha=0

            hareRun = display.newImage(midlayer2, "images/act14_hare.png", true) setAnchor(hareRun)
            hareRun.x = 830 hareRun.y = -220 hareRun.alpha=0
            duckFly = display.newImage(midlayer3, "images/act14_duck.png", true) setAnchor(duckFly)
            duckFly.x = 500 duckFly.y = -100 duckFly.alpha = 0

            foregroundNew = display.newImage(foregoundGr, "images/foreground14_a.png", true) setAnchor(foregroundNew) 
            foregroundNew.x=0 foregroundNew.y=0
            foregroundNew.alpha=0

            MagicWolf = display.newImage(midlayer3, "images/magicWolf.png", true) setAnchor(MagicWolf)
            MagicWolf.x=330 MagicWolf.y=-600

            IvanAlenaHug = display.newImage(midlayer3, "images/act14_alenaIvan.png", true) setAnchor(IvanAlenaHug)
            IvanAlenaHug.x=400 IvanAlenaHug.y=-100 IvanAlenaHug.alpha=0

            drake = display.newImage(midlayer2, "images/act14_drake.png") 
            drake.x = 500 drake.y = 300 drake.alpha=0

            if choices.brother == 'Eagle' then
                brotherShape = display.newImage(midlayer2, "images/act10_Eagle.png") 
            elseif choices.brother == 'Falcon' then
                brotherShape = display.newImage(midlayer2, "images/act10_Falcon.png") 
            else
                brotherShape = display.newImage(midlayer2, "images/act10_Raven.png") 
            end
            brotherShape.x=1000 brotherShape.y=0 brotherShape.alpha=0

            iceLayer = display.newImage(midlayer2, "images/act14_iceLayer.png", true) setAnchor(iceLayer)
            iceLayer.x = 0 iceLayer.y = 0 iceLayer.alpha=0

            AlenaIvanRiding = display.newImage(midlayer3, "images/AlenaIvanRiding.png", true) setAnchor(AlenaIvanRiding)
            AlenaIvanRiding.x = 400 AlenaIvanRiding.y = 0 AlenaIvanRiding.alpha = 0

            lightLayer = display.newImage(midlayer3, "images/act14_sunlight.png", true) setAnchor(lightLayer)
            lightLayer.x = 420 lightLayer.y = 0 lightLayer.alpha=0



            needle = display.newImage(midlayer3, "images/act14_needle.png", true) setAnchor(needle)
            needle.x = 400 needle.y = 300 needle.alpha=0 needle.rotation = 30

            needleBroken = display.newImage(midlayer3, "images/act14_needleBroken.png", true) setAnchor(needleBroken)
            needleBroken.x = 420 needleBroken.y = 300 needleBroken.alpha=0 needleBroken.rotation = 30

            lightningLayer = display.newImage(foregoundGr, "images/act14_lighningLayer.png", true) setAnchor(lightningLayer) 
            lightningLayer.x=0 lightningLayer.y=0
            lightningLayer.alpha=0

            organizeStage()
        end,

    }
    stages[stage]()
end


-- Main text listener
function sceneTextTouch(event)
    print('scene text touch' .. event.target.text)
    if event.phase == "began" and event.target.follows then
        -- Stats display
        print('Let us add listener!')
        print('Adding to scene:') print(event.target.index)
        print('Scene that should follow:') print(event.target.follows)

        print(scenes[event.target.index])
        -- effects on clicked block go here

        -- move everything into the place it is supposed to be at the end of the scene
        scenes[event.target.index].animationComplete()
        transition.cancel()

        -- load relevant scene we attached earlier
        loadScene(scenes[event.target.follows])
    end

    return true
end


function loadScene(s)
    print('Start displaying scene '..s.sName)
    if s.name == 1000 then showEnding()
    else
        if s.openingAnimation then openingAnimation(s.openingAnimation[1], s.openingAnimation[2]) end
        if s.changeFlow then s.changeFlow() end
        
        --Play the sound if there's one
        if S_BgSfxCh then
            audio.stop(S_BgSfxCh)
        end

        if(s.soundEffect) then 
            local S_soundEffect = audio.loadStream( "sounds/"..s.soundEffect)
            S_BgSfxCh = audio.play( S_soundEffect, {loops=0, fadein=500} )
        end

        -- Set the text or call it depending on the type
        print('printing scene type')
        print(type(s.text))
        if type(s.text)=='function' then sceneText.text = s.text() else sceneText.text = s.text end
        setAnchor(sceneText)
        sceneText.alpha = 0
        transition.to(sceneText, {alpha=1, time=2000}) 
        sceneText:setFillColor( 0, 0, 0 )
        textContainer.isVisible = true

        if not s.follows then
            print('This sceene has Selection')
            if(s.selection[1]) then
                print('This sceene has 1 selection')
                textContainer.isVisible = false
                select1Container.isVisible = true
                select1Text.isVisible = true
                -- Show text of selection from the scene
                select1Text.text = s.selection[1][1]
                setAnchor(select1Text)
                select1Text.alpha = 0
                transition.to(select1Text, {alpha=1, time=2000}) 
                select1Text:setFillColor( 0, 0, 0 )
                -- Attach the number of the scene to follow
                select1Text.follows = s.selection[1][2]
                print(s.selection[1][2])
                -- Attach the name of the scene we are working in
                select1Text.index = s.sName
            end

            if(s.selection[2]) then
                print('This sceene has 2 selections')
                select2Container.isVisible = true
                select2Text.isVisible = true
                -- Show text of selection from the scene
                select2Text.text = s.selection[2][1]
                setAnchor(select2Text)
                select2Text.alpha = 0
                transition.to(select2Text, {alpha=1, time=2000}) 
                select2Text:setFillColor( 0, 0, 0 )
                -- Attach the number of the scene to follow
                select2Text.follows = s.selection[2][2]
                print(s.selection[2][2])
                -- Attach the name of the scene we are working in
                select2Text.index = s.sName
            end

            if(s.selection[3]) then
                print('This sceene has 3 selections')
                select3Container.isVisible = true
                select3Text.isVisible = true
                -- Show text of selection from the scene
                select3Text.text = s.selection[3][1]
                setAnchor(select3Text)
                select3Text.alpha = 0
                transition.to(select3Text, {alpha=1, time=2000}) 
                select3Text:setFillColor( 0, 0, 0 )
                -- Attach the number of the scene to follow
                select3Text.follows = s.selection[3][2]
                print(s.selection[3][2])
                -- Attach the name of the scene we are working in
                select3Text.index = s.sName
            end

            -- Nullify the link from the main text in the scene
            sceneText.follows = nil
            sceneText.index = nil


        else
            if s.clearSelection then
                -- Clearing leftovers from the right blocks 
                print('This sceene needs clearSelection')
                select1Container.isVisible = false
                select1Text.isVisible = false
                select2Container.isVisible = false
                select2Text.isVisible = false
                select3Container.isVisible = false
                select3Text.isVisible = false
            end 

            -- Set Main Text
            print('Scene has no selection')

            -- Attaching following scene number and name of the scene we are working in
            sceneText.follows = s.follows
            sceneText.index = s.sName
        end
        if(s.setStage) then
            setStageObjects(s.setStage)
        end
        if(s.backgr) then
            background:removeSelf()
            background = nil
            background = display.newImage( "images/"..s.backgr, true ) setCenter(background) setAnchor(background)
        end
        if(s.foregr) then
            foreground:removeSelf()
            foreground = nil
            foreground = display.newImage(foregoundGr, "images/"..s.foregr, true ) setCenter(foreground) setAnchor(foreground)
        end
        if(s.animations) then
            s.animations()
        end
        print('Going to organize stage of '..s.sName)
        organizeStage()
    end
end 



-- Loading game for a first time
local myListener
myListener = function( event )
    print("myListener called")
    background:removeEventListener("touch", myListener)
    setAnchor(textContainer)
    setAnchor(textContainerNA)

    setAnchor(select1Text)
    setAnchor(select2Text)
    setAnchor(select3Text)

    print('Now adding Listeners in main')
    -- listeners for the right blocks
    select1Text:addEventListener( "touch", sceneTextTouch)
    select2Text:addEventListener( "touch", sceneTextTouch)
    select3Text:addEventListener( "touch", sceneTextTouch)
    
    -- listener for the main text
    sceneText:addEventListener( "touch", sceneTextTouch)

    loadScene(scenes[1])
    return true
end

background:addEventListener( "touch", myListener )