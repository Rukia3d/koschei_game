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
-- CHANGE CENTER FOR IMAGE
--
-----------------------------------------------------------------------------------------
function setAnchor(imgTC)
    imgTC.anchorX = 0 
    imgTC.anchorY = 0
end 

-----------------------------------------------------------------------------------------
--
-- CHARACTERS
--
-----------------------------------------------------------------------------------------

-- Background for dialogue stage
local dialBack = display.newImage(charactersDial, "images/effects/dialBack.png", true ) setAnchor(dialBack)
dialBack.y=-800 dialBack.x=0

local endingBack = display.newImage(textLayers, "images/effects/endingBack.png", true ) setAnchor(endingBack)
    endingBack.y=-800 endingBack.x=0

-- Small characters for stage, act1
local AlenaS = display.newImage( characters, "images/chars/alena_f_small.png", true)
    setAnchor(AlenaS) AlenaS.isVisible = false
local IvanS = display.newImage( characters, "images/chars/ivan_s_small.png", true) 
    setAnchor(IvanS) IvanS.isVisible = false
local MotherS = display.newImage( characters, "images/chars/mother_s_small.png", true) 
    setAnchor(MotherS) MotherS.isVisible = false
local WolfS = display.newImage( characters, "images/chars/wolf_s_small.png", true) 
    setAnchor(WolfS) WolfS.isVisible = false
local AlenaCryS = display.newImage( characters, "images/chars/alena_cry_small.png", true) 
    setAnchor(AlenaCryS) AlenaCryS.isVisible = false
local MotherWarS = display.newImage( characters, "images/chars/mother_f_small.png", true)  
    setAnchor(MotherWarS) MotherWarS.isVisible = false

-- Small characters for stage, act2
local AlenaOnWolf = display.newImage( characters, "images/chars/alena_on_wolf.png", true)
    setAnchor(AlenaOnWolf) AlenaOnWolf.isVisible = false
local WolfSit = display.newImage( characters, "images/chars/wolf_f_small.png", true) 
    setAnchor(WolfSit) WolfSit.isVisible = false

-- Small characters for stage, act3
local AlenaNoRibbon = display.newImage( characters, "images/chars/alena_noRib_small.png", true)
    setAnchor(AlenaNoRibbon) AlenaNoRibbon.isVisible = false
local AlenaOnWolfNoRibbon = display.newImage( characters, "images/chars/alena_on_wolf_noR.png", true)
    setAnchor(AlenaOnWolfNoRibbon) AlenaOnWolfNoRibbon.isVisible = false
local AlenaHolding = display.newImage( characters, "images/chars/alena_noRib_holding.png", true)
    setAnchor(AlenaHolding) AlenaHolding.isVisible = false

-- Small characters for stage, act5
local VasilisaS = display.newImage( characters, "images/chars/vasilisa_f_small.png", true)
    setAnchor(VasilisaS) VasilisaS.isVisible = false
local VasilisaPlea = display.newImage( characters, "images/chars/vasilisa_s_small.png", true)
    setAnchor(VasilisaPlea) VasilisaPlea.isVisible = false
local AlenaCrySNR = display.newImage( characters, "images/chars/alena_cry_smallNR.png", true)
    setAnchor(AlenaCrySNR) AlenaCrySNR.isVisible = false

-- Small characters for stage, act6
local BearS = display.newImage( characters, "images/chars/bear_s_small.png", true)
    setAnchor(BearS) BearS.isVisible = false

-- Small characters for stage, act7
local AlenaIvanRiding = display.newImage(characters, "images/chars/AlenaIvanRiding.png", true)
    setAnchor(AlenaIvanRiding) AlenaIvanRiding.isVisible = false
local koshAttack = display.newImage(characters, "images/chars/kosh_attack.png", true) 
    setAnchor(koshAttack) koshAttack.isVisible = false

-- Small characters for stage, act8
local YagaS = display.newImage( characters, "images/chars/yaga_f_small.png", true) 
    setAnchor(YagaS) YagaS.isVisible = false
local MouseS = display.newImage( characters, "images/chars/mouse_small.png", true) 
    setAnchor(MouseS) MouseS.isVisible = false

-- Big characters for dialogue stage
local Alena = display.newImage( charactersDial, "images/chars/alena_f_dialogue.png", true) Alena.isVisible = false
local Ivan = display.newImage( charactersDial, "images/chars/ivan_s_dialogue.png", true)  Ivan.isVisible = false
local Mother = display.newImage( charactersDial, "images/chars/mother_s_dialogue.png", true) Mother.isVisible = false
local MotherWar = display.newImage( charactersDial, "images/chars/mother_f_dialogue.png", true) MotherWar.isVisible = false
local KoscheiPlea = display.newImage( charactersDial, "images/chars/kosh_plea_dialogue.png", true) KoscheiPlea.isVisible = false
local Koschei = display.newImage( charactersDial, "images/chars/koschei_f_big.png", true) Koschei.isVisible = false
local Wolf = display.newImage( charactersDial, "images/chars/wolf_dialogue.png", false) Wolf.isVisible = false 
local AlenaNR = display.newImage( charactersDial, "images/chars/alena_f_dialogueNR.png", false) AlenaNR.isVisible = false 
local VasilisaD = display.newImage( charactersDial, "images/chars/vasilisa_f_dialogue.png", false) VasilisaD.isVisible = false
local VasilisaCry = display.newImage( charactersDial, "images/chars/vasilisa_s_dialogue.png", false) VasilisaCry.isVisible = false
local Bear  = display.newImage( charactersDial, "images/chars/bear_dialogue.png", false) Bear.isVisible = false
local CrowD = display.newImage( charactersDial, "images/chars/crow_f_dialogue.png", false) CrowD.isVisible = false
local YagaD = display.newImage( charactersDial, "images/chars/yaga_dialogue.png", false) YagaD.isVisible = false
local MouseD = display.newImage( charactersDial, "images/chars/mouseDial.png", false) MouseD.isVisible = false
local KoscheiPleaNCD = display.newImage( charactersDial, "images/chars/kosh_plea_dialogue_NC.png", false) KoscheiPleaNCD.isVisible = false

-- Charcters for brother's scenes
local BrotherD = display.newImage(foregoundGr, "images/transparent.png")
local BrotherS = display.newImage(foregoundGr, "images/transparent.png")

--[[









local AlenaCryD_NR = display.newImage( charactersDial, "images/chars/alena_cry_dialogueNR.png") AlenaCryD_NR.x = 400 AlenaCryD_NR.y = 800  


 
local Koschei = display.newImage( charactersDial, "images/chars/koschei_f_big.png", false) Koschei.x = 300 Koschei.y = 800


]]--


-- Set main screen
local background = display.newImage( "images/startScreen.png") background.x = display.contentWidth / 2 background.y = display.contentHeight / 2

-- Variables for stage content
local foreground = display.newImage(foregoundGr, "images/transparent.png")
local settings

-- Arrays for character groups
local charactersBig = {Mother, Alena, Ivan, Wolf, MotherWar, KoscheiPlea, Koschei, VasilisaD, VasilisaCry, Bear, AlenaNR, CrowD, YagaD, MouseD, KoscheiPleaNCD}
local charactersSmall = {AlenaS, IvanS, MotherS, WolfS, WolfSit, AlenaCryS, MotherWarS, AlenaHolding, AlenaOnWolf, AlenaNoRibbon, AlenaOnWolfNoRibbon, VasilisaS, VasilisaPlea, AlenaCrySNR, BearS, AlenaIvanRiding, koshAttack, YagaS, MouseS}

-- Variables for text
local textContainerNA = display.newImage(textLayers, "images/text_back_colour.png")
textContainerNA.x = 10 textContainerNA.y = 560 

local textContainer = display.newImage(textLayers, "images/text_back.png")
textContainer.x = 10 textContainer.y = 560 
textContainer.isVisible = false

local sceneText = display.newText(textLayers, '', 50, 610, 900, display.contentHeight * 0.5, 'PTSans-Regular', 18)

-- Variables for selections
local select1Container = display.newImage(textLayers, "images/selection_back.png")
select1Container.x = 0 select1Container.y = 700
select1Container.isVisible = false

local select2Container = display.newImage(textLayers, "images/selection_back.png")
select2Container.x = 0 select2Container.y = 700
select2Container.isVisible = false

local select3Container = display.newImage(textLayers, "images/selection_back.png")
select3Container.x = 0 select3Container.y = 700
select3Container.isVisible = false

local select1Text = display.newText(textLayers, '', 110, 685, 150, display.contentHeight * 0.5, 'PTSans-Regular', 18) 
local select2Text = display.newText(textLayers, '', 335, 685, 150, display.contentHeight * 0.5, 'PTSans-Regular', 18)
local select3Text = display.newText(textLayers, '', 560, 685, 150, display.contentHeight * 0.5, 'PTSans-Regular', 18)



textContainer.linkedText = sceneText
select1Container.linkedText = select1Text
select2Container.linkedText = select2Text
select3Container.linkedText = select3Text

function checkAlighn(num)
    print('Content width: '..display.contentWidth)
    if num==2 then
        select1Container.x= (display.contentWidth-200-200-30)/2
        select2Container.x= ((display.contentWidth-200-200-30)/2)+200+30
    elseif num==3 then
        select1Container.x= (display.contentWidth-200-200-200-40)/2
        select2Container.x= ((display.contentWidth-200-200-200-40)/2)+200+20
        select3Container.x= ((display.contentWidth-200-200-200-40)/2)+200+200+40
    else
        select1Container.x= (display.contentWidth-200)/2
    end
end



-----------------------------------------------------------------------------------------
--
-- SOUND LIBRARY
--
-----------------------------------------------------------------------------------------

local S_MusicCh
local S_BgSfxCh
local S_ClickSfxCh





-----------------------------------------------------------------------------------------
--
-- SEPARATED ANIMATIONS
--
-----------------------------------------------------------------------------------------
function openingAnimation(backg, foregr)
    cleanUpLevel()

    background:removeSelf()
    background = nil
    foreground:removeSelf()
    foreground = nil

    background = display.newImage( "images/backg/"..backg, true ) setAnchor(background) 
    background.isVisible = true

    foreground = display.newImage(foregoundGr, "images/backg/"..foregr, true ) setAnchor(foreground)
    foreground.y = -700
    transition.to(foreground, {y=0, time=1000})
end

--- Location 1 (Edge of the forest) animations
local function loadHomeSet()
    foreground.y=0
    transition.to(landscape3, {x=0, time=1000, delay=1000})
    transition.to(landscape2, {x=-15, time=1000, delay=1000})
    transition.to(landscape1, {y=630, time=500, delay=2000})
    transition.to(landscape1, {rotation=0, y=630, time=1000, delay=2500})
    transition.to(shadowLayer1, {alpha=1, time=1000, delay=3500})
    transition.to(houseOutside, {y=0, time=1000, delay=3700})
end 

local function sunSet() 
    sun.alpha=1
    transition.to(sun, {y=-200, x=400, time=1000})
    transition.to(sun, {y=50, x=650, time=1000, delay=1000})
    transition.to(background, {y=-500, time=2000})
    transition.to(orangeLight, {alpha=1, time=1000, delay=1000})
end

local function setHouseAnEvening()
    background:removeSelf()
    background = nil
    background = display.newImage( "images/backg/background5.png", true ) setAnchor(background)
    background.x=0 background.y=0

    foreground:removeSelf()
    foreground = nil
    foreground = display.newImage(foregoundGr, "images/backg/foreground1.png", true ) setAnchor(foreground)
    foreground.x=0 foreground.y=0
end

local function leavesFalling(delTime)
        leaves.x=700 leaves.y=-550
        transition.to(leaves, {y=550, x=-200, time=4000, delay=delTime})
end

--- Location 2 (Alena's home inside) animations
local function setStageHome()
    transition.to(bed, {y=0, time=1000, delay=500})
    transition.to(tableCloth, {y=5, time=1000, delay=1000})
    transition.to(shadowLayer2, {alpha=1, time=1000, delay=2500})
end

local function cleaningTheRoom() 
    transition.to(broom, {y=-30, time=700, delay=300})
    transition.to(dishes, {y=-25, time=500, delay=1000})
    transition.to(dishes, {x=150, y=-180, time=500, delay=2000})
    transition.to(broom, {x=500, time=500, delay=2500})
    transition.to(broom, {x=200, time=500, delay=3000})
end

local function setStageHomeFast()
    foreground:removeSelf()
    foreground = nil
    foreground = display.newImage(foregoundGr, "images/backg/foreground2.png", true ) setAnchor(foreground)
    foreground.x=0 foreground.y=0
    background:removeSelf()
    background = nil
    background = display.newImage( "images/backg/background2.png", true ) setAnchor(background)
    background.x=0 background.y=0
    bed.y=0
    tableCloth.y=5
    shadowLayer2.alpha=0.5
    broom.y=-30 broom.x=200
    dishes.y=-180 dishes.x=150 
    ovenFire.alpha=1
end

--- Location 3 (Basement stage) animations
local function setBasementStage()
    transition.to(basementStage, {alpha=1, time=3000, delay=1000})
    transition.to(lights3, {y=0, time=1000, delay=2000})
    transition.to(bucket1, {y=-50, time=1000, delay=2000})
    transition.to(bucket2, {y=470, time=1000, delay=2000})
    transition.to(bucketTread, {y=-50, time=1000, delay=2000})
    transition.to(waterFount, {alpha=1, time=1000, delay=3000})
    transition.to(koshPrisoner, {alpha=1, time=2000, delay=1000})
end

local function icyCurtainMoving()
    transition.to(icyCurtain, {alpha=1, time=500})
    transition.to(icyCurtain, {y=-1000, time=1500, delay=500})
    transition.to(chains, {alpha=1, time=1000, delay=500})
    transition.to(koshPrisoner, {alpha = 0, time=1000, delay=500})
    transition.to(IvanS, {alpha=0, time=1000, delay=500})
end

local function animateBucket()
    transition.to(bucketTread, {y=-100, time=700, delay=500})
    transition.to(bucket2, {rotation=-80, y=415, time=700, delay=500})
    transition.to(bucketTread, {y=-300, x=580, time=700, delay=1200})
    transition.to(bucket2, {rotation=-80, y=215, x=675, time=700, delay=1200})
    transition.to(bucketTread, {y=-100, x=680, time=1000, delay=2200})
    transition.to(bucket2, {rotation=-80, y=415, x=775, time=1000, delay=2200})

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
    background = display.newImage( "images/backg/background3.png", true ) setAnchor(background)
    background.x=0 background.y=0
    foreground:removeSelf()
    foreground = nil
    foreground = display.newImage(foregoundGr, "images/backg/foreground3.png", true ) setAnchor(foreground)
    foreground.x=0 foreground.y=0
end

-- Location 4 forest 1

function loadForest1()
    transition.to(landscape3, {x=0, time=1000, delay=500})
    transition.to(landscape2, {x=0, time=1000, delay=1000})
    transition.to(landscape1, {x=0, time=1000, delay=1500})
    transition.to(shadowLayer5, {alpha=1, time=1000, delay=2500})
end

function ridingWolftoRight(AlenaRibbon)
    AlenaRibbon.isVisible = true AlenaRibbon.xScale=1 AlenaRibbon.x=1000 AlenaRibbon.y=0
    landscape2.x=0
    landscape1.x=0
    transition.to(landscape2, {x=-800, time=3000 })
    transition.to(landscape1, {x=-1500, time=3000 })
    transition.to(AlenaRibbon, {x=500, time=3000})
end


function ridingWolftoLeft(AlenaRibbon)
    AlenaRibbon.isVisible = true AlenaRibbon.xScale=-1 AlenaRibbon.x=0 AlenaRibbon.y=0
    transition.to(AlenaRibbon, {x=400, time=3000})
    transition.to(landscape2, {x=-1300, time=3000 })
    transition.to(landscape1, {x=-1500, time=3000 })
end

function loosingRibbon()
    AlenaOnWolfNoRibbon.isVisible = true AlenaOnWolfNoRibbon.xScale=-1 AlenaOnWolfNoRibbon.alpha = 1
    AlenaOnWolfNoRibbon.x=0 AlenaOnWolfNoRibbon.y=0
    ribbon.isVisible = true ribbon.xScale = -1 
    ribbon.x = 0 ribbon.y = 55
    transition.to(landscape2, {x=-1300, time=4000 })
    transition.to(landscape1, {x=-1500, time=4000 })
    transition.to(AlenaOnWolfNoRibbon, {x=500, time=3000})
    transition.to(ribbon, {x=500, time=3000})
    transition.to(ribbon, {x=200, time=1000, delay=2500})
    transition.to(ribbon, {y=400, time=1000, delay=2500})
    transition.to(ribbon, {alpha=0, time=1, delay=3500})
end

-- Location 5 Uncle castle
local function loadBrothers(name) 
    BrotherD:removeSelf() BrotherD = nil
    BrotherS:removeSelf() BrotherS = nil
    BrotherD = display.newImage( charactersDial, "images/chars/"..name.."_dialogue.png")
    BrotherS = display.newImage( characters, "images/chars/"..name.."_f_small.png")
    BrotherD.x = 400 BrotherD.y = 800
    BrotherS.x = 450 BrotherS.y = -400
    table.insert(charactersBig, BrotherD)
    table.insert(charactersSmall, BrotherS)
end

local function setStronghold1()
    StrongholdB1.x=700
    transition.to(landscape2, {x=-1700, time=1700})
    transition.to(landscape1, {x=-2100, time=1700})
    transition.to(StrongholdB1, {x=-120, time=1700})
    transition.to(AppleGarden, {x=400, time=1700})
end  

local function wolfJumpStronghold1()
    transition.to(AlenaOnWolfNoRibbon, {x=500, delay=1000, time=500})
    transition.to(AlenaOnWolfNoRibbon, {y=-00, delay=1000, time=500})
    transition.to(AlenaOnWolfNoRibbon, {x=600, delay=1500, time=500})
    transition.to(AlenaOnWolfNoRibbon, {y=10, delay=1500, time=500})
end

local function wolfInTheYard()
    transition.to(AlenaOnWolfNoRibbon, {x=400, time=500})
    transition.to(AlenaOnWolfNoRibbon, {y=-300, time=500})
    transition.to(AlenaOnWolfNoRibbon, {x=500, time=1000, delay=500})
    transition.to(AlenaOnWolfNoRibbon, {y=10, time=1000, delay=500})
    transition.to(landscape2, {x=-1900, time=1000})
    transition.to(landscape1, {x=-1700, time=1000})
    transition.to(StrongholdBer, {x=-520, time=1000})
    transition.to(GardenBer, {x=100, time=1000})
end

local function setStronghold2()
    StrongholdB2.x=700
    landscape2.x=-1300
    landscape1.x=-1200
    transition.to(landscape2, {x=-1700, time=1700})
    transition.to(landscape1, {x=-2100, time=1700})
    transition.to(StrongholdB2, {x=-120, time=1700})
    transition.to(stableImg, {x=400, time=1700})
end 

local function setStronghold3()
    StrongholdBer.x=600
    landscape2.x=-1300
    landscape1.x=-1200
    transition.to(landscape2, {x=-1700, time=1700})
    transition.to(landscape1, {x=-2100, time=1700})
    transition.to(StrongholdBer, {x=-150, time=1700})
    transition.to(GardenBer, {x=400, time=1000, delay=1000})
end 

function AlenaSnatchVasilisa() 
    transition.to(VasilisaS, {x=600, time=1000})
    transition.to(AlenaOnWolfNoRibbon, {x=800, delay=1500, time=500})
    transition.to(VasilisaS, {alpha=0, time=500, delay=2000})
    transition.to(AlenaOnWolfNoRibbon, {alpha=0, time=500, delay=2000})
    AlenaVasilisaRiding.xScale=-1 AlenaVasilisaRiding.isVisible = true AlenaVasilisaRiding.alpha=0
    AlenaVasilisaRiding.x=800 AlenaVasilisaRiding.y=-20
    transition.to(AlenaVasilisaRiding, {alpha=1, time=700, delay=2000})
    transition.to(AlenaVasilisaRiding, {x=1300, time=500, delay=2800})
end

function ridingWolftWithVasilisa(coord)
    AlenaVasilisaRiding.xScale=1 AlenaVasilisaRiding.isVisible = true
    AlenaVasilisaRiding.y=0 AlenaVasilisaRiding.x=coord
    landscape2.x=0
    landscape1.x=0
    transition.to(landscape2, {x=-800, time=3000 })
    transition.to(landscape1, {x=-1500, time=3000 })
    transition.to(AlenaVasilisaRiding, {x=coord-500, time=3000})
end

function loadGarden()
    transition.to(StrongholdB1, {x=-400, time=1000})
    transition.to(AppleGarden, {x=120, time=1000})
    transition.to(GoldenApples, {y=-50, time=1000, delay=1000})
    transition.to(GoldenApple, {y=-30, time=1000, delay=1000})
    transition.to(TreeRibbon, {y=300, time=1000, delay=1000})
end


function wolfAlenaInGarden()
    transition.to(landscape2, {x=-1700, time=1000})
    transition.to(landscape1, {x=-2000, time=1000})
    transition.to(AlenaOnWolfNoRibbon, {alpha=0, time=1000, delay=1000})
    AlenaNoRibbon.isVisible = true AlenaNoRibbon.alpha=0
    AlenaNoRibbon.x=350 AlenaNoRibbon.y=0
    WolfSit.isVisible = true WolfSit.xScale = -1 WolfSit.alpha=0
    WolfSit.x=350 WolfSit.y=0
    transition.to(AlenaNoRibbon, {alpha=1, time=1000, delay=1500})
    transition.to(WolfSit, {alpha=1, time=1000, delay=1500})
end

function wolfAlenaInStables()
    transition.to(landscape2, {x=-1700, time=1000})
    transition.to(landscape1, {x=-2000, time=1000})
    transition.to(AlenaOnWolfNoRibbon, {alpha=0, time=1000, delay=1000})
    AlenaNoRibbon.isVisible = true AlenaNoRibbon.alpha=0
    AlenaNoRibbon.x=350 AlenaNoRibbon.y=0
    WolfSit.isVisible = true WolfSit.xScale = -1 WolfSit.alpha=0
    WolfSit.x=250 WolfSit.y=0
    transition.to(AlenaNoRibbon, {alpha=1, time=1000, delay=1500})
    transition.to(WolfSit, {alpha=1, time=1000, delay=1500})
end

function loadUncleCastle()
    print('Loading castle and brother same is '..choices.brother)
    transition.to(landscape3, {x=0, time=1000, delay=1000})
    transition.to(landscape2, {y=0, time=1000, delay=2000})
    transition.to(shadowLayer6, {alpha=1, time=1000, delay=3000})
    transition.to(throne, {y=-30, time=500, delay=4000})
    transition.to(birdSymbol, {y=320, time=500, delay=4000})
end

function loadUncleCastleFast(night)
    background:removeSelf()
    background = nil
    if night=='Evening' then
        background = display.newImage( "images/backg/background7.png", true ) setAnchor(background)
    end

    if night=='Night' then
        background = display.newImage( "images/backg/background8.png", true ) setAnchor(background)
    end

    if night=='Dawn' then
        background = display.newImage( "images/backg/background9.png", true ) setAnchor(background)
    end

    background.x=0 background.y=0

    foreground:removeSelf()
    foreground = nil
    foreground = display.newImage(foregoundGr, "images/backg/foreground3.png", true ) setAnchor(foreground)
    foreground.x=0 foreground.y=0

    landscape3.x=0
    landscape2.y=0
    shadowLayer6.alpha=1
    throne.y=-30
    birdSymbol.y=320
    BrotherS.y=300
end

function wolfAtUncleCastle(Obj)
    WolfSit.y = 10 WolfSit.x=700 WolfSit.xScale = 1
    if Obj=='Apple' then
        if choices.appleTaken==true then WolfSit.isVisible = false
        else WolfSit.isVisible = true end
    elseif Obj=='Horse' then
        if choices.horseTaken==true then WolfSit.isVisible = false
        else WolfSit.isVisible = true end
    elseif Obj=='Vasilisa' then
        if choices.vasilisaGo==true then 
            VasilisaS.isVisible = true
            AlenaNoRibbon.isVisible = true
            AlenaVasilisaRiding.isVisible = false
        else 
            VasilisaS.isVisible = false
            AlenaNoRibbon.isVisible = false
            AlenaVasilisaRiding.isVisible = true
        end
    end
end

function loadBushToHide()
    bushToHide.isVisible = true
    transition.to(bushToHide, {y=500, time=500})
    transition.to(bushToHide, {rotation=0, time=1000, delay=500})
end

function alarmBellsRing()
    bellAlarm = display.newImage(midlayer2, "images/scenes/bellAlarm.png") bellAlarm.anchorX=0.5 bellAlarm.anchorY=0 
    bellAlarm.x=500 bellAlarm.y=-400
    transition.to(bellAlarm, {y=-100, time=500, delay=1000})
    transition.to(bellAlarm, {y=-100, rotation=60, time=300, delay=1500})
    transition.to(bellAlarm, {y=-100, rotation=-60, time=300, delay=1800})
    transition.to(bellAlarm, {y=-100, rotation=50, time=300, delay=2100})
    transition.to(bellAlarm, {y=-100, rotation=-50, time=300, delay=2400})
    transition.to(bellAlarm, {y=-100, rotation=0, time=200, delay=2700})
end

function wolfTurningInto(Obj)
    if Obj=='Apple' then
        x=0
        GoldenApple.x=400 GoldenApple.isVisible = true GoldenApple.alpha=0
        transition.to(GoldenApple, {alpha=1, time=500, delay=1300})
    end
    if Obj=='Horse' then
        x=0
        GoldenHorse.x=250 GoldenHorse.isVisible = true GoldenHorse.alpha=0
        transition.to(GoldenHorse, {alpha=1, time=500, delay=1300})
    end
    if Obj=='Vasilisa' then
        x=700
        MagicWolf.x=350
        VasilisaS.x=440 VasilisaS.y=-10 VasilisaS.isVisible = true VasilisaS.alpha=0
        transition.to(VasilisaS, {alpha=1, time=500, delay=1300+x})
    end
    transition.to(WolfS, {alpha=0, time=500, delay=1000+x})
    transition.to(MagicWolf, {y=-100, time=500, delay=300+x})
    transition.to(MagicWolf, {y=-600, time=500, delay=2000+x})
end

function uncleServentsPickUp(Obj)
    if Obj=='Apple' then
        transition.to(GoldenApple, {x=-500, time=1000, delay=4000})
    end
    if Obj=='Horse' then
        transition.to(GoldenHorse, {x=-500, time=1000, delay=4000})
    end
    transition.to(UncleServants, {x=300, time=1000, delay=2300})
    transition.to(UncleServants, {x=-1000, time=1000, delay=4000})
end

function setForestFast()
    background:removeSelf()
    background = nil
    background = display.newImage( "images/backg/background7.png", true ) setAnchor(background)
    background.x=0 background.y=0

    foreground:removeSelf()
    foreground = nil
    foreground = display.newImage(foregoundGr, "images/backg/foreground6.png", true ) setAnchor(foreground)
    foreground.x=0 foreground.y=0
end

function setForest3Fast()
    background:removeSelf()
    background = nil
    background = display.newImage( "images/backg/background8.png", true ) setAnchor(background)
    background.x=0 background.y=0

    foreground:removeSelf()
    foreground = nil
    foreground = display.newImage(foregoundGr, "images/backg/foreground6.png", true ) setAnchor(foreground)
    foreground.x=0 foreground.y=0
end

local function snowFalling(amount, delTime)
    snowFall.isVisible = true snowFall.alpha=0.7
    snowFall.x=1200 snowFall.y=-760
    transition.to(snowFall, {x=-800, y=800, time=4000, delay=delTime})

    if amount>0 then
        snowFall2.isVisible = true snowFall2.alpha=0.5
        snowFall2.x=700 snowFall2.y=-800
        transition.to(snowFall2, {x=0, y=800, time=3500, delay=500+delTime})
    end
end

local function moveTreeBack()
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

local  function loadCrows()
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

function glowEyesFlicker(x, elem)
    elem.alpha=0
    transition.to(elem, {alpha=1, time=500, delay=x})
    transition.to(elem, {alpha=0, time=400, delay=x+500})
    transition.to(elem, {alpha=1, time=520, delay=x+500+300})
    transition.to(elem, {alpha=0, time=300, delay=x+500*2})
    transition.to(elem, {alpha=1, time=430, delay=x+500*2+300})
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
    transition.to(AlenaNoRibbon, {alpha=0, time=500, delay=500})
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
    AlenaOnWolfNoRibbon.xScale=-1 AlenaOnWolfNoRibbon.x=500 AlenaOnWolfNoRibbon.y=-500 AlenaOnWolfNoRibbon.isVisible = true
    transition.to(landscape1, {x=0, time=1000})
    transition.to(landscape2, {x=0, time=1500, delay=500})
    transition.to(landscape3, {x=0, time=1000, delay=1000})
    transition.to(groundLevel, {x=0, time=1500, delay=1500})
    transition.to(grass, {x=0, time=1500, delay=2000})
    transition.to(shadowLayer14, {alpha=1, time=1000, delay=3500})
    transition.to(AlenaOnWolfNoRibbon, {y=0, time=1000, delay=3500})
end

function moveToOak()
    mountain:scale(0.5, 0.5) mountain.x=1050 mountain.y=520
    oldOak:scale(0.5, 0.5)
    chestClosed:scale(0.5, 0.5)
    mountain.x=1500 mountain.y=520
    oldOak.x = 1500 oldOak.y = 400
    chestClosed.x=1235 chestClosed.y=220
    AlenaNoRibbon.isVisible=true AlenaNoRibbon.x=330 AlenaNoRibbon.y=0 AlenaNoRibbon.alpha=0
    WolfS.isVisible=true WolfS.xScale=-1 WolfS.x=330 WolfS.y=0 WolfS.alpha=0
    transition.to(landscape1, {x=-500, time=2500})
    transition.to(landscape2, {x=-600, time=2500})
    transition.to(landscape3, {x=-700, time=2500})
    transition.to(groundLevel, {x=-900, time=2500})
    transition.to(grass, {x=-1076, time=2500})
    transition.to(mountain, {x=1050, time=1000, delay=1200})
    transition.to(oldOak, {x=1050, time=1000, delay=1200})
    transition.to(chestClosed, {x=790, time=1000, delay=1200})
    

    transition.to(mountain, {xScale = 1, yScale=1, y = 600, x = 1200, time=1000, delay=4000})
    transition.to(oldOak, {xScale = 1, yScale=1, y = 400, x = 1150, time=1000, delay=4000})
    transition.to(chestClosed, {xScale = 1, yScale=1, x=670, y=85, time=1000, delay=4000})

    transition.to(AlenaOnWolfNoRibbon, {alpha=0, time=500, delay=4500})
    transition.to(AlenaNoRibbon, {alpha=1, time=700, delay=4500})
    transition.to(WolfS, {alpha=1, time=700, delay=4500})

end

function bearPushTree()
    transition.to(BearS, {x=700, time=500})
    transition.to(oldOak, {rotation=90 , x=800, y=600, time=700, delay=500})
    transition.to(chestClosed, {y=200, time=500, delay=1000})
    transition.to(chestClosed, {alpha=0, time=10, delay=1500})
    transition.to(chestOpen, {alpha=1, time=10, delay=1500})
    transition.to(BearS, {x=1500, time=1000, delay=2000})
    hareRun.xScale = -1
    transition.to(hareRun, {alpha=1, time=500, delay=2500})
end

function wolfPushTree()
    transition.to(BearS, {x=800, time=500})
    transition.to(oldOak, {rotation=90 , x=800, y=600, time=700, delay=500})
    transition.to(chestClosed, {y=200, time=500, delay=1000})
    transition.to(chestClosed, {alpha=0, time=10, delay=1500})
    transition.to(chestOpen, {alpha=1, time=10, delay=1500})
    transition.to(MagicWolf, {y=0, time=700, delay=1800})
    transition.to(WolfS, {alpha=1, time=700, delay=2000})
    transition.to(BearS, {alpha=0, time=700, delay=2000})
    transition.to(MagicWolf, {y=-800, time=700, delay=2700})
    hareRun.xScale = -1
    transition.to(hareRun, {alpha=1, time=500, delay=2500})
end

function bearAndTree()
    AlenaNoRibbon:toFront()
    BearS.alpha=1 BearS.isVisible=true
    BearS.x=0 BearS.y=0 BearS.xScale = -1
    transition.to(BearS, {x=530, time=1000, delay=500})
end

function wolfAndTree()
    BearS.xScale = -1
    BearS.x=700 BearS.y=0 BearS.alpha=0 BearS.isVisible=true
    AlenaNoRibbon:toFront()
    transition.to(MagicWolf, {y=0, time=700})
    transition.to(WolfS, {alpha=0, time=700, delay=700})
    transition.to(BearS, {alpha=1, time=700, delay=800})
    transition.to(MagicWolf, {y=-800, time=700, delay=1500})
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
    MotherS.isVisible=true  MotherWarS.isVisible=true
    MotherS.x=430 MotherS.y=0 MotherS.alpha=0
    transition.to(MotherWarS, {y=0, time=700})
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
    vasilisa = 'NoInfo',
    vasilisaGo = false,
    bear = false,
    berries = false,
    wolfPenalty = 0,
    appleTaken = false,
    horseTaken = false
}

local dialogBackground;

local scenes = {} 

-------- Act 1 Scenes 1 - 43

    scenes[1] = {
        sName = 1,
        openingAnimation = {
            [1] = 'background1.png', 
            [2] = 'foreground1.png'
        },
        setStage = 'setMotherHouse',
        text = "In a small house on the edge of the dark forest, there lived a brother and sister, Ivan and Alena.",
        follows = 2,
        animations = function()
        -- Animation: Home on the edge of the forest set, Alena and Ivan down
            AlenaS.isVisible = true AlenaS.x = 200 
            IvanS.isVisible = true IvanS.x = 130

            loadHomeSet() 

            transition.to(AlenaS, {y=0, time=1000, delay=4500})
            transition.to(IvanS, {y=0, time=1000, delay=4500}) 
        end,
        animationComplete = function()
            landscape3.x= 0
            landscape2.x= -15
            landscape1.rotation= 0 landscape1.y=630

            AlenaS.isVisible = true AlenaS.x = 200  IvanS.y=0
            IvanS.isVisible = true IvanS.x = 130 AlenaS.y=0
    
            houseOutside.y = 0
            shadowLayer1.alpha=1

            foreground.y = 0
        end,
        -- Sound: Opening
        soundEffect = 'opening.mp3',
    }
    scenes[2] = {
        sName = 2,
        text = 'scene 2: Their mother goes into the city every morning, leaving before the golden eye of the sun peeps over the horizon, returning only as the dying light turns the trees of the forest orange and red, as if kindling a fire deep in their depths.',
        follows = 3,
        animations = function()
        -- Animation: sunset and evening light
            sunSet()
        end,
        animationComplete = function()
            background.y = -200
            sun.y = -70 sun.x = 50
            orangeLight.alpha=1
        end,
    }
    scenes[3] = {
        sName = 3,
        text = "scene 3: Alena, as the oldest, has to watch over her little brother, and every morning before going to the city, her mother gives her a set of three instructions to follow throughout the day.",
        follows = 4,
        animations = function()
        -- Animation: showing Mother figure
            MotherS.isVisible = true MotherS.x=500
            transition.to(MotherS, {y=0, time=1000})

            transition.to(orangeLight, {alpha=0, time=1000})

        end,
        animationComplete = function()
            MotherS.isVisible = true MotherS.x=500 MotherS.y = 0

            orangeLight.alpha = 0
        end,
        -- Sound: Birds singing
        soundEffect = 'birdsSinging.mp3',
    }
    scenes[4] = {
        sName = 4,
        text = 'scene 4: "Alena, I\'m going to Tsar-gorod, so keep an eye on your brother. I\'ll be back before the sun goes down. Do you remember the rules?"',
        selection = {
            [1] = {'I don\'t care', 5},
            [2] = {'Remind me, please', 7},
            [3] = {'Remind me, please', 7}
        },
        animations = function()
            showDialogueBack()
            showDialogueChar(Mother, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end 
    }
    scenes[5] = {
        sName = 5,
        text = 'scene 5: Alena doesn\'t really care about the rules. They have something to do with not playing near the basement, but nothing ever happens in the house, so Alena isn\'t worried.',
        follows = 6,
        clearSelection = true,
        changeFlow = function() choices.bless = false end,
        animations = function()
            transDialogueBack()
        end,
        animationComplete = function()
            removeCurtain()
            hideBigCharacters()
        end 
    }
    scenes[6] = {
        sName = 6,
        text = 'scene 6: Mom: Promise me you\'ll follow the rules.',
        follows = 9,
        changeFlow = function() choices.bless = true end,
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(Mother, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }
    scenes[7] = {
        sName = 7,
        text = 'scene 7: Alena: "Remind me, please, just in case."',
        follows = 8,
        clearSelection = true,
        animations = function()
            hideBigCharacters()
            showDialogueChar(Alena, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }
    scenes[8] = {
        sName = 8,
        text = 'scene 8: Mom: Don\'t go into the forest. Don\'t let your brother run around in the house.\nDon\'t go into the basement, no matter what you hear from there. Promise me.',
        follows = 9,
        clearSelection = true,
        curtain = true,
        animations = function()
            showDialogueChar(Mother, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }
    scenes[9] = {
        sName = 9,
        text = 'scene 9: Alena: I\'ll follow your rules, I promise.',
        follows = 10,
        curtain = true,
        animations = function()
            showDialogueChar(Alena, 400, 400)
        end,
        animationComplete = function()
            removeCurtain()
            hideBigCharacters()
        end     
    }

    scenes[10] = {
        sName = 10,
        setStage = 'setHouseInside',
        openingAnimation = {
            [1] = 'background2.png', 
            [2] = 'foreground2.png'
        },
        text = 'scene 10: After hearing that reassurance, her mother leaves, and Alena is alone with her brother. She is soon bored, but being an obedient daughter, she refrains from running around the house and dutifully keeps an eye on her brother. ',
        follows = 11,
        animations = function()
        -- Animation: setting insides of the house
            setStageHome()
        end,
        animationComplete = function()
            bed.y=0
            tableCloth.y=5
            shadowLayer2.alpha=1
            foreground.y = 0
        end,
        -- Sound: Opening
        soundEffect = 'opening.mp3',
    }
    scenes[11] = {
        sName =  11,
        text = 'scene 11: Alena does all her chores - cleaning the dishes, sweeping the floors, and dusting all the knick-knacks. Then she sits down near the window overlooking the forest, while her brother plays on the floor. There\'s nothing going on outside.',
        follows = 12,
        animations = function()
        -- Animation: Cleaning up 
            cleaningTheRoom()
        end,
        animationComplete = function()
            broom.y=-30 broom.x=200
            dishes.y=-180 dishes.x=150
        end,
        --Sound: cleaning
        soundEffect = 'houseCleaning.mp3'
    }
    scenes[12] = {
        sName = 12,
        text = 'scene 12: Once the sun climbs higher in the sky, the sweltering heat beats upon the house, which grows further and further from the shortening reach of the forest shade. Ivan grows tired of playing with his toys under his sister\'s watchful gaze.',
        follows = 13,
        animations = function()
            -- Animation: midday, Alena and Ivan in
            AlenaS.isVisible = true AlenaS.x = 450 
            IvanS.isVisible = true IvanS.x = 350
            transition.to(AlenaS, {y=0, time=1000, delay=1000})
            transition.to(IvanS, {y=0, time=1000, delay=1500}) 

            transition.to(shadowLayer2, {alpha=0.5, time=1000, delay=100})
            transition.to(windowLight, {alpha=1, time=1000, delay=100})
            
        end,
        animationComplete = function()
            AlenaS.isVisible = true AlenaS.x = 450  AlenaS.y = 0 
            IvanS.isVisible = true IvanS.x = 350 IvanS.y = 0
            shadowLayer2.alpha = 0.5
            windowLight.alpha = 1
        end,
        --Sound: summer Forest
        soundEffect = 'summerForest.mp3'
    }
    scenes[13] = {
        sName = 13,
        text = 'scene 13: Ivan: "Alena, can I go and play near the basement door? It is cooler there than in the rest of the house."',
        selection = {
            [1] = {'Go for it', 14},
            [2] = {'No', 15}
        },
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(Ivan, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }

    scenes[14] = {
        sName = 14,
        text = 'scene 14: Alena: "Sure, but promise me you won\'t open the basement door."',
        follows = 16,
        changeFlow = function() choices.basement = true  end,
        clearSelection = true,
        animations = function() 
            showDialogueBack()
            showDialogueChar(Alena, 400, 400)
        end,
        animationComplete = function() 
           hideBigCharacters() 
        end
    }

    scenes[15] = {
        sName = 15,
        text = 'scene 15: Alena: "No, stay here in the greatroom."', 
        follows = 18,
        clearSelection = true,
        changeFlow = function() choices.basement = false  end,
        animations = function() 
            showDialogueBack()
            showDialogueChar(Alena, 400, 400)
        end,
        animationComplete = function() 
            hideBigCharacters() 
        end
    }

    scenes[16] = {
        sName = 16,
        text = 'scene 16: Ivan runs happily to the door and plays with his toys for a while. He likes it here. Despite the sunny day outside, there is frost in the air that comes creeping out from under the basement\'s thick wooden door.',
        follows = 17,
        animations = function() 
        -- Animation: Ivan turns and walks away
            transDialogueBack()
            IvanS.xScale = -1 
            transition.to(IvanS, {x=-50, time=1000, delay=500}) 
        end,
        animationComplete = function() 
            removeCurtain()
            IvanS.xScale = 1 IvanS.x = -50
        end
    }

    scenes[17] = {
        sName = 17,
        text = 'scene 17: When it is time for lunch, Alena calls to her brother, but he doesn\'t answer. "He is probably too busy with his toys!" thinks Alena. Then, she goes looking for him.',
        follows = 21,
        clearSelection = true,
        animations = function()
        -- Animation: Fire in the oven
            transition.to(ovenFire, {alpha=1, time=1000, delay=500})
            transition.to(AlenaS, {x=270, time=1000, delay=1500}) 
        end,
        animationComplete = function()
            ovenFire.alpha=1 
        end,
        --Sound: fire in the oven
        soundEffect = 'fireInOven.mp3'
    }

    scenes[18] = {
        sName = 18,
        text = 'scene 18: Ivan is not happy but stays in chamber dutifully obeying his big sister.',
        follows = 19,
        clearSelection = true,
        changeFlow = function() choices.basement = false  end,
        animations = function()
            transDialogueBack()
            IvanS.xScale = -1 
        end,
        animationComplete = function()
            removeCurtain()
            IvanS.xScale = 1 IvanS.x = -50
        end
    }
    scenes[19] = {
        sName = 19,
        text = 'scene 19: Around noon, Alena cooks lunch, and when she finishes, she calls for her brother, but gets no reply. "Foolish boy!" she thinks.',
        follows = 20,
        clearSelection = true,
        animations = function()
            transition.to(ovenFire, {alpha=1, time=1000, delay=500})  
        end,
        animationComplete = function()
            ovenFire.alpha=1 
        end,
         --Sound: fire in the oven
        soundEffect = 'fireInOven.mp3'
    }
    scenes[20] = {
        sName = 20,
        text = 'scene 20: "He probably went to play near the basement door anyway. The midday heat doesn\'t reach there, so it stays nice and cool." So she heads for the basement door.',
        follows = 21,
        clearSelection = true,
        animations = function()
        end,
        animationComplete = function()
        end
    }

    scenes[21] = {
        sName = 21,
        setStage = 'setBasement',
        openingAnimation = {
            [1] = 'background3.png', 
            [2] = 'foreground3.png'
        },
        text = 'scene 21: Suddenly, Alena sees that the heavy wooden door to the basement is ajar, and she hears a faint whispering "Water, please, give me some water..."',
        follows = 22,
        clearSelection = true,
        animations = function()
        -- Animation: Basement shows
            setBasementStage()
        end,
        animationComplete = function()
            foreground.y = 0
            basementStage.alpha=1
            icyCurtain.alpha=0
            lights3.y=0
            waterFount.alpha=1
            koshPrisoner.alpha=1
            bucket1.y=-50
            bucket2.y=470
            bucketTread.y=-50
        end,
        --Sound: creepy basement
        soundEffect = 'basementSounds.mp3'
    }
    scenes[22] = {
        sName = 22, 
        text = 'scene 22: Ivan is within, standing in front of an old man, all skin and bones, and bound to the wall with twelve iron chains. "Water, please, give me some water.." pleads the old man.',
        selection = {
            [1] = {'Who are you?', 23},
            [2] = {'Step back!', 25}
        },
        clearSelection = true,
        animations = function()
        -- Animation: Alena and Ivan appearing 
            IvanS.isVisible = true IvanS.x=560
            AlenaS.isVisible = true AlenaS.x=190
            transition.to(IvanS, {y=0, time=1000})
            transition.to(AlenaS, {y=-200, time=1000})
        end,
        animationComplete = function()
            IvanS.x=560 IvanS.y=0 IvanS.isVisible = true 
            AlenaS.x=190 AlenaS.y=-200  AlenaS.isVisible = true 
        end
    }
    scenes[23] = {
        sName = 23, 
        text = 'scene 23: Alena: "Who are you? What are you doing here?"',
        clearSelection = true,
        follows = 24,
        curtain = true,
        animations = function() 
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(Alena, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }
    scenes[24] = {
        sName = 24,
        text = 'scene 24: Prisoner: "I am just an old man… Your mother imprisoned me long ago for my evil deeds. I haven\'t seen the sunlight in years. Be a good girl, give me some water..."',
        clearSelection = true,
        selection = {
            [1] = {'Give water', 27},
            [2] = {'Refuse', 31}
        },
        curtain = true,
        animations = function()
            showDialogueChar(KoscheiPlea, 200, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
            transDialogueBack()
        end
    }
    scenes[25] = {
        sName = 25, 
        text = 'scene 25: Alena: "Ivan, step back, don\'t get closer!"',
        clearSelection = true,
        follows = 26,
        curtain = true,
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(Alena, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }
    scenes[26] = {
        sName = 26,
        text = 'scene 26: Prisoner: "Have no fear of me, children. I am old and famished. I mean you no harm. All I ask is a bucket of water to wet my throat. Have mercy, help me please."',
        clearSelection = true,
        selection = {
            [1] = {'Give water', 27},
            [2] = {'Refuse', 31}
        },
        curtain = true,
        animations = function() 
            showDialogueChar(KoscheiPlea, 200, 400)
        end,
        animationComplete = function() 
            hideBigCharacters()
            transDialogueBack()
        end
    }
    scenes[27] = {
        sName = 27,
        changeFlow = function() choices.bucket=1 end,
        text = 'scene 27: Prisoner: "Thank you child. (He drinks the bucket in one gulp.) Neither food nor drink has passed my lips for ages. Please, will you fetch me another bucket?"',
        clearSelection = true,
        curtain = true,
        selection = {
            [1] = {'Give water', 28},
            [2] = {'Refuse', 31}
        },
        animations = function()
        -- Animation: Bucket
            removeCurtain() 
            animateBucket()
        end,
        animationComplete = function()
            removeCurtain()  
            bucket2.y=470
            bucketTread.y=-50
            bucket2.x=275
            bucketTread.x=180
            bucket2.rotation=0
        end,
        --Sound: waterSplash
        soundEffect = 'waterSplash.mp3'
    } 
    scenes[28] = {
        sName = 28,
        changeFlow = function() choices.bucket = 2 end,
        text = 'scene 28: Prisoner: "Thank you child. (He drinks the bucket in one gulp.) Neither food nor drink has passed my lips for ages. Please, will you fetch me another bucket?"',
        clearSelection = true,
        curtain = true,
        selection = {
            [1] = {'Give water', 29},
            [2] = {'Refuse', 31}
        },
        animations = function()
        -- Animation: Bucket
            removeCurtain() 
            animateBucket() 
        end,
        animationComplete = function()
            removeCurtain()
            bucket2.y=470
            bucketTread.y=-50
            bucket2.x=275
            bucketTread.x=180
            bucket2.rotation=0 
        end,
        --Sound: waterSplash
        soundEffect = 'waterSplash.mp3'
    }
    scenes[29] = {
        sName = 29,
        text = 'scene 29: Prisoner: "Thank you, girl, for your kindness. For that I won\'t eat you. But you are a disobedient daughter, so I don\'t need you. I\'ll take your brother instead!"',
        follows = 30,
        clearSelection = true,
        curtain = true,
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(Koschei, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
            bucketTread.isVisible=false
        end
    }
    scenes[30] = {
        sName = 30,
        text = 'scene 30: With these words, he tears off all twelve chains, grabs Ivan, swirls on the spot, and in the next second, they are both gone.',
        follows = 36,
        clearSelection = true,
        curtain = true,
        animations = function()
        -- Animation: Ivans kidnepping
            transDialogueBack()
            icyCurtainMoving()
        end,
        animationComplete = function()
            removeCurtain()
            icyCurtain.y=-1000
            chains.alpha=1
            koshPrisoner.alpha=0
            IvanS.y=-600
            removeCurtain()
        end,
        --Sound: Wind gust
        soundEffect = 'windKoschei.mp3'
    }
    scenes[31] = {
        sName = 31,
        text = 'scene 31: Prisoner: "Aren\'t you tired of always listening to your mother? Don\'t you want to think for yourself and make decisions like a grown up?" he tries to persuade Alena.',
        clearSelection = true,
        selection = {
            [1] = {'Give water', 28},
            [2] = {'Refuse', 32}
        },
        curtain = true,
        changeFlow = function()
            if choices.bucket == 0 then scenes[28].selection[1][2] = 27
            elseif choices.bucket == 1 then scenes[28].selection[1][2] = 28
            elseif choices.bucket == 2 then scenes[28].selection[1][2] = 29
            end
        end,
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(KoscheiPlea, 200, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
            transDialogueBack()
        end
    }
    scenes[32] = {
        sName = 32,
        setStage = 'setHouseInside',
        text = 'scene 32: Alena takes her brother and closes the door to the basement. When they go up, Ivan reproaches her for being so harsh on the prisoner. "Aren\'t we supposed to respect our elders?" asks Ivan.',
        follows = 33,
        curtain = true,
        clearSelection = true,
        animations = function()
            removeCurtain()
            setStageHomeFast()
            AlenaS.isVisible = true AlenaS.x = 450 
            IvanS.isVisible = true IvanS.x = 350
            transition.to(AlenaS, {y=0, time=1000, delay=500})
            transition.to(IvanS, {y=0, time=1000, delay=1000}) 
        end,
        animationComplete = function()
            removeCurtain()
            AlenaS.x = 450  AlenaS.y = 0 
            IvanS.x = 350 IvanS.y = 0
        end,
        -- Sound: Steps two people on wood
        soundEffect = 'stepsTwoWood.mp3'
    }
    scenes[33] = {
        sName = 33,
        text = 'scene 33: Alena says that they should follow mother\'s orders first and foremost. Back in the greatroom, she puts Ivan to bed and nestles near him. In a second, her eyes close and she falls fast asleep.',
        follows = 34,
        animations = function()
            IvanS.xScale = -1
            transition.to(IvanS, {x=-200, time=1000, delay=1500})  
        end,
        animationComplete = function()
            IvanS.xScale = -1
            IvanS.x=-200
        end,
        --Sound: summer Forest
        soundEffect = 'summerForest.mp3'

    }
    scenes[34] = {
        sName = 34,
        setStage = 'setBasement',
        text = 'scene 34: When she wakes up, her brother is nowhere to be found. Panic-stricken, she runs to the basement and sees the open door and an empty buсket on the floor near the prisoner.',
        follows = 35,
        clearSelection = true,
        animations = function() 
            setBasementFast()
            AlenaS.isVisible = true AlenaS.x = 140 
            IvanS.isVisible = true IvanS.x = 560
            IvanS.xScale = 1
            transition.to(AlenaS, {y=-200, time=500, delay=1000})
            transition.to(IvanS, {y=0, time=1000, delay=1500})
        end,
        animationComplete = function()
            foreground.y = 0
            basementStage.alpha=1
            lights3.y=0
            waterFount.alpha=1
            koshPrisoner.alpha=1
            bucket1.y=-50
            bucket2.y=470
            bucketTread.y=-50
            IvanS.isVisible = true IvanS.x=560 IvanS.y=0  IvanS.xScale = 1
            AlenaS.isVisible = true AlenaS.x = 140  AlenaS.y=-200
        end
    }
    scenes[35] = {
        sName = 35,
        text = 'scene 35: "Thank you, Ivan, for your kindness. For that I\'ll take you with me!" says the bony prisoner and tears off all twelve of his chains, grabs Ivan, swirls on the spot, and in the next second, both are gone.',
        follows = 36,
        clearSelection = true,
        animations = function()            
            transition.to(icyCurtain, {alpha=1, time=500})
            transition.to(icyCurtain, {y=-1000, time=1500, delay=500})
            transition.to(chains, {alpha=1, time=1000, delay=500})
            transition.to(koshPrisoner, {alpha = 0, time=1000, delay=500})
            transition.to(IvanS, {alpha = 0, time=1000, delay=500})
        end,
        animationComplete = function()
            icyCurtain.y=-1000
            chains.alpha=1
            koshPrisoner.alpha=0
            IvanS.y=-600
            removeCurtain()
        end,
        --Sound: Wind gust
        soundEffect = 'windKoschei.mp3'
    }
    scenes[36] = {
        sName = 36,
        text = "scene 36: Alena runs outside, screaming her brother\'s name, but gets only the moaning of the wind and the whispering of the forest in reply.",
        follows = 37,
        setStage = 'setMotherHouse',
        animations = function()
            --Effect: leaves fly
            --Sound: wind in the trees
            setHouseAnEvening()
            AlenaCryS.isVisible = true
            transition.to(AlenaCryS, {y=0, time=1000, delay=500})
            leaves.alpha = 1
            leavesFalling(1000)
        end,
        animationComplete = function()
            AlenaCryS.isVisible = true AlenaCryS.y=0
            leaves.alpha=1 leaves.x=500 leaves.y=550
        end,
        --Sound: Leaves falling
        soundEffect = 'leavesFalling.mp3'
    }
    scenes[37] = {
        sName = 37,
        text = 'scene 37: Alena\'s mother returns home early, with the strange feeling that something might have happened. Alena can\'t look her in the eyes. She stumbles and mumbles but eventually tells the whole truth.',
        follows = 38,
        animations = function()
            MotherS.isVisible = true
            MotherS.x=500
            transition.to(MotherS, {y=0, time=700})
        end,
        animationComplete = function()
            MotherS.isVisible = true MotherS.y=0 MotherS.x=500
        end,
        --Sound: Alena Cry
        soundEffect = 'girlCry.mp3'
    }
    scenes[38] = {
        sName = 38,
        text = 'scene 38: Mom: "Now Koschei will summon his armies and storm the Tsar-gorod. He\'s had dozen of years to plan his revenge for his imprisonment. The Tsar will need my help, so you have to find your brother on your own."',
        follows = 39,
        curtain = true,
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(Mother, 400, 400)
            MotherWarS.isVisible = true MotherWarS.x=500 MotherWarS.y=-600 
            transition.to(MotherS, {alpha=0, time=700, delay=1000})
            transition.to(MotherWarS, {y=0, time=700, delay=2700})
        end,
        animationComplete = function()
            hideBigCharacters()
            MotherS.isVisible = false MotherS.alpha=1 MotherS.y=-600
            MotherWarS.isVisible = true MotherWarS.y=0 MotherWarS.x=500
        end
    }
    scenes[39] = {
        sName = 39,
        text = 'scene 39: Alena\'s mother, no other than Marya Morevna, the famous warrior princess, whistles and a second later, the depths of the forest open, and a huge Gray wolf appears before Alena\'s eyes.',
        follows = 40,
        animations = function()
            transDialogueBack()
            WolfS.xScale = -1 
            WolfS.y=0 WolfS.x = -200 WolfS.isVisible = true
            transition.to(WolfS, {x=250, time=1000, delay=1000})
        end,
        animationComplete = function()
            removeCurtain()
            WolfS.xScale = -1 
            WolfS.isVisible = true WolfS.y=0 WolfS.x=250
        end,
        --Sound: Bush shake
        soundEffect = 'bushShake.mp3'

    }
    scenes[40] = {
        sName = 40,
        text='scene 40: Mom: "That\'s my old friend and loyal companion, Gray Wolf. He helped me to imprison the Koschei last time. He will serve you as good as he served me." says Alena\'s mother. ',
        follows = 41,
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(MotherWar, 400, 400)
        end,
        animationComplete = function()
        end
    }
    scenes[41] = {
        sName = 41,
        changeFlow = function()
            if choices.bless==true then scenes[41].follows=42 else scenes[41].follows=43 end
        end,
        text='scene 41: Mom: "Koschei lives in an icy stronghold to the north. He is Deathless, so there\'s no killing him, but you can get into his castle to save your brother, while he is busy fighting me and the Tsar."',
        animations = function()

        end,
        animationComplete = function()
            hideBigCharacters()
            transDialogueBack()
        end
    }
    scenes[42] = {
        sName = 42,
        text='scene 42: Alena promises that she\'ll find her brother, though the road to Koschei\'s stronghold is unknown and untrodden. Her mother kisses her on forehead and gives her a motherly blessing.',
        follows = 44,
        animations = function()
            removeCurtain()
            leavesFalling(0)
        end,
        animationComplete = function()
            removeCurtain()
        end,
        --Sound: Leaves falling
        soundEffect = 'leavesFalling.mp3'
    }
    scenes[43] = {
        sName = 43,
        text='scene 43: Alena promises that she\'ll find her brother, though the road to Koschei\'s stronghold is unknown and untrodden. Her mother opens a big trunk, takes out her sword and armor. Mother and daughter say their goodbyes.',
        follows = 44,
        animations = function()
         --Effect: leaves fly
            removeCurtain()
            leavesFalling(0)
        end,
        animationComplete = function()
            removeCurtain()
        end,
        --Sound: Leaves falling
        soundEffect = 'leavesFalling.mp3'
    }


-------- Act 2 Scenes 44 - 61

    scenes[44] = {
        sName = 44,
        openingAnimation = {
            [1] = 'background6.png', 
            [2] = 'foreground6.png'
            },
        setStage = 'setForest1',
        text='scene 44: Alena sits on Gray Wolf\'s back, hugs his massive neck, and he starts to run - so fast that before the sun touches down on the treetops to the west, they have already reached the crossroads on the other side of the forest.',
        follows = 45,
        animations = function()
            loadForest1()
            AlenaOnWolf.x=600 AlenaOnWolf.y=-600 AlenaOnWolf.isVisible=true
            transition.to(AlenaOnWolf, {y=0, time=1000, delay=3000})
        end,
        animationComplete = function()
            landscape3.x=0
            landscape2.x=0
            landscape1.x=0
            shadowLayer5.alpha=1
            foreground.y=0
            AlenaOnWolf.x=600 AlenaOnWolf.y=0 AlenaOnWolf.isVisible=true
        end,
        -- Sound: Opening
        soundEffect = 'opening.mp3',
    }

    scenes[45] = {
        sName = 45,
        text='scene 45: The road splits into three directions with big engraved stone pointing the way. Alena dismounts from Gray Wolf to read the tattered letters.',
        follows = 46,
        animations = function()
            WolfS.isVisible = true  WolfS.xScale = 1 WolfS.x=650 WolfS.y=0 WolfS.alpha=0
            AlenaS.isVisible = true AlenaS.x=500  AlenaS.y=0 AlenaS.alpha=0

            transition.to(stone,{y=0, time=1000})
            transition.to(AlenaOnWolf, {alpha=0, time=1000, delay=1000})
            transition.to(WolfS, {alpha=1, time=1000, delay=1000})
            transition.to(AlenaS, {alpha=1, time=1000, delay=1000})
        end,
        animationComplete = function()
            stone.y=0
            WolfS.isVisible = true  WolfS.xScale = 1 WolfS.x=650 WolfS.y=0 WolfS.alpha=1
            AlenaS.isVisible = true AlenaS.x=500  AlenaS.y=0 AlenaS.alpha=1
            AlenaOnWolf.isVisible = false AlenaOnWolf.alpha=1
        end,
        --Sound: Walk In Forest
        soundEffect = 'walkInForest.mp3'
    }

    scenes[46] = {
        sName = 46,
        text = 'scene 46: "If you ride to the left, you will lose your horse. If you ride to the right, you will lose your head. If you ride straight ahead, you will lose both."',
        selection = {
            [1] = {'Go left', 47}, --WolfDies
            [2] = {'Go straight', 48}, --Both die
            [3] = {'Go right', 49} --Alena dies
        },
        changeFlow = function()
        end,
        animations = function()
        end,
        animationComplete = function()
            stone.isVisible = false
            landscape2.x=-1700
            landscape1.x=-2500
            WolfS.y=-600 
            AlenaS.y=-600
        end
    }

    scenes[47] = {
        sName = 47,
        follows = 50,
        clearSelection = true,
        text = 'scene 47: After the crossroads, they ride for a while, as the sky blackens and the starry space above stares down on Alena and Gray Wolf. They are approaching a wooden fortress.', 
        changeFlow = function()
            choices.brother = 'Eagle'
            choices.brother1 = 'an eagle'
            loadBrothers('Eagle')
        end,
        animations = function()
            WolfS.isVisible = false  WolfS.xScale = 1 WolfS.x=700 WolfS.y=-600 WolfS.alpha=0
            AlenaS.isVisible = false AlenaS.x=500  AlenaS.y=-600 AlenaS.alpha=0

            ridingWolftoRight(AlenaOnWolf)
            transition.to(starsAndMoon, {y=0, time=1000})
            transition.to(eveningDarker, {alpha=0.5, time=3000})
            transition.to(fortress, {x=-220, time=1000, delay=2500})
            transition.to(fortress2, {x=105, time=1000, delay=2500})
        end, 
        animationComplete = function()
            WolfS.isVisible = false  WolfS.xScale = 1 WolfS.x=700 WolfS.y=-600 WolfS.alpha=0
            AlenaS.isVisible = false AlenaS.x=500  AlenaS.y=-600 AlenaS.alpha=0

            eveningDarker.alpha = 0.5

            background.x=0 background.y=0
            foreground.x=0 foreground.y=0
            landscape3.x=0
            landscape2.x=0
            landscape1.x=0
        end 
    }

    scenes[48] = {
        sName = 48,
        clearSelection = true,
        follows = 50,
        text = 'scene 48: After the crossroads, they ride for a while, as the sky blackens and the starry space above stares down on Alena and Gray Wolf. They are approaching a wooden fortress.', 
        changeFlow = function()
            choices.brother = 'Raven'
            choices.brother1 = 'a raven'
            loadBrothers('Raven')
        end,
        animations = function()
            WolfS.isVisible = false  WolfS.xScale = 1 WolfS.x=700 WolfS.y=-600 WolfS.alpha=0
            AlenaS.isVisible = false AlenaS.x=500  AlenaS.y=-600 AlenaS.alpha=0

            ridingWolftoRight(AlenaOnWolf)
            transition.to(starsAndMoon, {y=0, time=1000})
            transition.to(eveningDarker, {alpha=0.5, time=3000})
            transition.to(fortress, {x=-220, time=1000, delay=2500})
            transition.to(fortress2, {x=105, time=1000, delay=2500})
        end, 
        animationComplete = function()
            WolfS.isVisible = false  WolfS.xScale = 1 WolfS.x=700 WolfS.y=-600 WolfS.alpha=0
            AlenaS.isVisible = false AlenaS.x=500  AlenaS.y=-600 AlenaS.alpha=0

            eveningDarker.alpha = 0.5

            background.x=0 background.y=0
            foreground.x=0 foreground.y=0
            landscape3.x=0
            landscape2.x=0
            landscape1.x=0
        end   
    }

    scenes[49] = {
        sName = 49,
        follows = 50,
        clearSelection = true,
        text = 'scene 49: After the crossroads, they ride for a while, as the sky blackens and the starry space above stares down on Alena and Gray Wolf. They are approaching a wooden fortress.', 
        changeFlow = function()
            choices.brother = 'Falcon'
            choices.brother1 = 'a falcon'
            loadBrothers('Falcon')
        end,
        animations = function()
            WolfS.isVisible = false  WolfS.xScale = 1 WolfS.x=700 WolfS.y=-600 WolfS.alpha=0
            AlenaS.isVisible = false AlenaS.x=500  AlenaS.y=-600 AlenaS.alpha=0
            ridingWolftoRight(AlenaOnWolf)
            transition.to(starsAndMoon, {y=0, time=1000})
            transition.to(eveningDarker, {alpha=0.5, time=3000})
            transition.to(fortress, {x=-220, time=1000, delay=2500})
            transition.to(fortress2, {x=105, time=1000, delay=2500})
        end, 
        animationComplete = function()
            WolfS.isVisible = false  WolfS.xScale = 1 WolfS.x=700 WolfS.y=-600 WolfS.alpha=0
            AlenaS.isVisible = false AlenaS.x=500  AlenaS.y=-600 AlenaS.alpha=0
            
            eveningDarker.alpha = 0.5

            background.x=0 background.y=0
            foreground.x=0 foreground.y=0
            landscape3.x=0
            landscape2.x=0
            landscape1.x=0
        end   
    }

    scenes[50] = {
        sName = 50,
        follows = 51,
        text = 'scene 50: "Is that Koschei\'s stronghold?" wonders Alena. The night is cold, so Alena shivers, but the walls in front of her don\'t look like they are made of ice.',
        animations = function() 
            transition.to(fortress, {x=-80, time=1000})
            transition.to(fortress2, {x=405, time=1000})
        end,
        animationComplete = function()
            fortress.x=-80
            fortress2.x=405
        end

    }

    scenes[51] = {
        sName = 51,
        text = function() 
            return 'scene 51: "Don\'t get scared, daughter of Marya, it is not Koschei\'s lair. It is the domain of your mother\'s brother, the shape-shifting wizard who can turn into '..choices.brother1..'," says Gray Wolf suddenly.'
        end,
        selection = {
            [1] = {'What?', 52},
        },
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(Wolf, 500, 400)
        end,
        animationComplete =  function()
            hideBigCharacters() 
        end
    }

    scenes[52] = {
        sName = 52,
        text = 'scene 52: Alena: "You can talk?"',
        follows = 53,
        clearSelection = true,
        animations = function()
            showDialogueChar(Alena, 400, 400)
        end,
        animationComplete =  function()
            hideBigCharacters()
        end
    }

    scenes[53] = {
        sName = 53,
        text = 'scene 53: Gray Wolf: "I can do many things and before the sun rises, you will see that, daughter of Marya. That will happen before you have to deal with consequences of your choices."',
        selection = {
            [1] = {'A brother?', 54}
        },
        animations = function()
            showDialogueChar(Wolf, 500, 400)
        end,
        animationComplete =  function()
            hideBigCharacters()
        end
    }

    scenes[54] = {
        sName = 54,
        follows = 55,
        text = 'scene 54: Alena: "My mother has a brother?"',
        clearSelection = true,
        animations = function()
           showDialogueChar(Alena, 400, 400)
        end,
        animationComplete =  function()
            hideBigCharacters()
        end
    }


    scenes[55] = {
        sName = 55,
        clearSelection = true,
        text = 'scene 55: Gray Wolf: "Yes, she has three brothers, all wizards who can turn into birds of prey - Eagle, Raven or Falcon. They were inseparable a long time ago, but after traveling to Koschei\'s stronghold, they had a falling out."',
        follows = 56,
        animations = function()
            showDialogueChar(Wolf, 500, 400)
        end,
        animationComplete =  function()
            hideBigCharacters()
        end
    }

    scenes[56] = {
        sName = 56,
        text = 'scene 56: It\'s getting colder and night is almost upon them, so Alena and Wolf decide to ask her uncle for shelter. His servants open the gate and escort her into the main hall.',
        follows = 57,
        clearSelection = true,
        animations = function()
            transDialogueBack()
            bridge.alpha=1
            transition.to(bridge, {rotation=90, time=1000})
        end,
        animationComplete = function() 
            removeCurtain()
            bridge.alpha=1
            bridge.rotation=90
        end,
        --Sound: bridge down
        soundEffect = 'chainMail.mp3'
    }

    scenes[57] = {
        sName = 57,
        setStage = 'setUncleCastle',
        openingAnimation = {
            [1] = 'background7.png', 
            [2] = 'foreground3.png'
        },
        text = 'scene 57: Her uncle is standing in a great hall wearing a gloomy look. Alena tells him her sad story, but he doesn\'t seem to be affected by it, because he is lost in his own thoughts. "Looks like I won\'t get any help from him," sighs Alena.',
        follows = 58,
        animations = function() 
            hideSmallCharacters()
            loadUncleCastle()

            AlenaS.isVisible = true AlenaS.y = -600 AlenaS.x=610 AlenaS.alpha = 1 
            WolfSit.isVisible = true WolfSit.y = -600 WolfSit.x=700
            BrotherS.isVisible = true BrotherS.alpha = 1
            transition.to(BrotherS, {y=300, delay=4000, time=1000})
            transition.to(WolfSit, {y=10, time=1000, delay=3000})
            transition.to(AlenaS, {y=20, time=1000, delay=3000})
        end,
        animationComplete =  function()
            hideSmallCharacters()
            foreground.y=0
            landscape3.x=0
            landscape2.y=0
            birdSymbol.y=320
            BrotherS.y=300 BrotherS.isVisible=true
            shadowLayer6.alpha=1
            throne.y=-30

            AlenaS.isVisible = true AlenaS.y = 20 AlenaS.x=610
            WolfSit.isVisible = true WolfSit.y = 10 WolfSit.x=700
        end,
        --Sound: door Open Close
        soundEffect = 'opening.mp3'

    }

    scenes[58] = {
        sName = 58,
        text = 'scene 58: Uncle: "That\'s a very sad story indeed. I remember my own journey to Koschei\'s stronghold... It is not a place for a young girl. And if what you told me is true, I need to concentrate on protecting my kingdom, not on helping you."',
        selection = {
            [1] = {'It\'s not polite', 59},
            [2] = {'What should I do?', 61},
        },
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(BrotherD, 400, 400)
        end,
        animationComplete =  function()
            hideBigCharacters()
        end
    }

    scenes[59] = {
        sName = 59,
        text = 'scene 59: Alena: "That\'s the reception I get from my own uncle?"',
        follows = 60,
        clearSelection = true,
        changeFlow = function() choices.wolfPenalty = choices.wolfPenalty+1 end,
        animations = function() 
            showDialogueChar(Alena, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }

    scenes[60] = {
        sName = 60,
        text = 'scene 60: Uncle: "If blood was really thicker than water, I wouldn\'t be in such a predicament. You can stay for one night, and continue your journey in the morning, but that is it."',
        follows = 62,
        animations = function()
            showDialogueChar(BrotherD, 400, 400) 
        end,
        animationComplete =  function()
        end
    }

    scenes[61] = {
        sName = 61,
        text = 'scene 61: Alena turns to Gray Wolf for advice, and he tells her to offer help instead of demanding help. Though not sure how it might work, Alena offers to help her uncle deal with his predicament.',
        follows = 63,
        clearSelection = true,
        changeFlow = function() choices.wolfPenalty = choices.wolfPenalty-1 end,
        animations = function() 
            transDialogueBack()
            hideBigCharacters()
        end,
        animationComplete =  function()
            removeCurtain()
        end
    }

    scenes[62] = {
        sName = 62,
        text = 'scene 62: Uncle: "There\'s bad blood between me and my brothers. Years ago, we stole a seed from a tree with golden apples and a horse with a golden mane from Koshei. But my brothers took them and left me with nothing."',
        follows = 64,
        animations = function()
        end,
        animationComplete =  function()
        end
    }

    scenes[63] = {
        sName = 63,
        text = 'scene 63: Uncle: "There\'s bad blood between me and my brothers. Years ago, we stole a seed from a tree with golden apples and a horse with a golden mane from Koshei. But my brothers took them and left me with nothing."',
        follows = 64,
        animations = function() 
            showDialogueBack()
            showDialogueChar(BrotherD, 400, 400)
        end,
        animationComplete =  function()
        end
    }

    scenes[64] = {
        sName = 64,
        text = 'scene 64: Uncle: "So if you want to help me - steal at least one golden apple and the horse for me. Then I\'ll think about telling you how to get into Koschei\'s castle."',
        changeFlow = function()
            if choices.brother == 'Falcon' then scenes[64].follows = 65
            elseif choices.brother == 'Raven' then scenes[64].follows = 66
            else scenes[64].follows = 67
            end
        end,
        animations = function() 
        end,
        animationComplete =  function()
            hideBigCharacters()
        end
    }

    scenes[65] = {
        sName = 65,
        text = 'scene 65: Alena reluctantly agrees, though she has no idea how she is going to steal the horse or apples from her uncles Raven and Eagle. But Gray Wolf tells her not to grieve and before the moon comes up, they are racing to the Raven domain.',
        follows = 68,
        animations = function()
            transDialogueBack() 
        end,
        animationComplete =  function()
            removeCurtain()
        end
    }

    scenes[66] = {
        sName = 66,
        text = 'scene 66: Alena reluctantly agrees, though she has no idea how she is going to steal the horse or apples from her uncles Falcon and Eagle. But Gray Wolf tells her not to grieve and before the moon comes up, they are racing to Falcon\'s domain.',
        follows = 68,
        animations = function() 
            transDialogueBack() 
        end,
        animationComplete =  function()
            removeCurtain()
        end
    }

    scenes[67] = {
        sName = 67,
        text = 'scene 67: Alena reluctantly agrees, though she has no idea how she is going to steal the horse or apples from her uncles Raven and Falcon. But Gray Wolf tells her not to grieve and before the moon comes up, they are racing to Raven\'s domain.',
        follows = 68,
        animations = function() 
            transDialogueBack()
        end,
        animationComplete =  function()
            removeCurtain()
        end
    }

-------- Act 3 Scenes 68 - 104
    scenes[68] = {
        setStage = 'setAppleGarden',
        sName = 68,
        text = 'scene 68: They rush at full speed, so the lights of the stars in the sky flow together into a river of spilled milk. On the way, the north wind tears away a ribbon from Alena\'s braid.',
        selection = {
            [1] = {'My ribbon...', 69},
            [2] = {'Forget it', 70},
        },
        animations = function()
            hideSmallCharacters()
            loosingRibbon()
            transition.to(starsWay, {alpha=0.5, time=2000})
        end,
        animationComplete = function()
            hideSmallCharacters()
            AlenaOnWolfNoRibbon.isVisible = true AlenaOnWolfNoRibbon.xScale=-1 AlenaOnWolfNoRibbon.alpha = 1
            AlenaOnWolfNoRibbon.x=500 AlenaOnWolfNoRibbon.y=0
            ribbon.isVisible = false 
            landscape2.x=-1300
            landscape1.x=-1500
            starsWay.alpha = 0.5
        end
    }

    scenes[69] = {
        sName = 69,
        text = 'scene 69: Gray Wolf grins while Alena tells him how the wind stole her ribbon. "Your ribbon is now five miles behind us, because even wind can\'t keep pace with me."',
        follows = 70,
        clearSelection = true,
        animations = function() 
        end,
        animationComplete =  function()
        end
    }

    scenes[70] = {
        sName = 70,
        text = 'scene 70: Soon they get to the castle. With one jump, Gray Wolf leaps over the castle walls into a garden.',
        follows = 71,
        clearSelection = true,
        animations = function()
            setStronghold1()
            wolfJumpStronghold1()
            starsWay.alpha = 0
        end,
        animationComplete =  function()
            landscape2.x=-1300
            landscape1.x=-1200
            StrongholdB1.x=-120
            AlenaOnWolfNoRibbon.x=600
            AlenaOnWolfNoRibbon.y=10
            starsWay.alpha = 0
        end,
        --Sound: night Birds
        soundEffect = 'birdsForest1.mp3'
    }

    scenes[71] = {
        sName = 71,
        text = 'scene 71: "There\'s a golden tree in the middle of the garden. Go to it and pick one apple, just don\'t touch anything else," orders Gray Wolf.',
        follows = 72,
        animations = function() 
            wolfAlenaInGarden()
            loadGarden()

        end,
        animationComplete = function() 
            landscape2.x = -1700
            landscape1.x = -2300
            StrongholdB1.x = -400
            AppleGarden.x=120

            AlenaOnWolfNoRibbon.isVisible=false AlenaOnWolfNoRibbon.y=-600 AlenaOnWolfNoRibbon.alpha=1
            AlenaNoRibbon.isVisible = true AlenaNoRibbon.y=0 AlenaNoRibbon.x=350 AlenaNoRibbon.alpha=1
            WolfSit.isVisible = true WolfSit.xScale = -1 WolfSit.x=350 WolfSit.y=0 WolfSit.alpha=1
            
            GoldenApples.y=-50
            GoldenApple.y=-30
            TreeRibbon.y=300
        end
    }

    scenes[72] = {
        sName = 72,
        text = 'scene 72: Doing as she is told, Alena goes to the tree and plucks a golden apple - but then she sees a beautiful ribbon tying up the branches. "It would look so pretty in my hair!" thinks Alena.',
        selection = {
            [1] = {'Leave', 73},
            [2] = {'Untie', 74}
        },
        animations = function() 
            AlenaHolding.isVisible = true AlenaHolding.alpha = 0 AlenaHolding.x = 400 AlenaHolding.y=0

            transition.to(AlenaNoRibbon, {x=400, time=1000})
            transition.to(AlenaNoRibbon, {alpha=0, time=1000, delay=1000})
            transition.to(AlenaHolding, {alpha=1, time=1000, delay=1500})
            transition.to(GoldenApple, {y=-42, x=450, time=1000, delay=2000})
        end,
        animationComplete = function()
            AlenaHolding.isVisible = true AlenaHolding.alpha = 1 AlenaHolding.x = 400 AlenaHolding.y=0
            AlenaNoRibbon.isVisible = false AlenaNoRibbon.alpha = 1 AlenaNoRibbon.x = 400 AlenaNoRibbon.y=0
            GoldenApple.y=-42 GoldenApple.x=450

        end,
        --Sound: night birds
        soundEffect = 'birdsForest2.mp3'
    }

    scenes[73] = {
        sName = 73,
        clearSelection = true,
        text = 'scene 73: She leaves the ribbon on the branch and gets back to Gray Wolf. "You are a  good girl, daughter of Marya, your mother raised you well," says Gray Wolf and they rush back.',
        follows = 80,
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(Wolf, 500, 400)
        end,
        animationComplete = function()
            removeCurtain()
            hideBigCharacters()
        end,
    }

    scenes[74] = {
        sName = 74,
        changeFlow = function()
            choices.wolfPenalty =  choices.wolfPenalty+1 
            choices.appleTaken = true
            if choices.brother=='Raven' then
                -- If we got the quest from Raven we go to Falcon. Othervise we go ro Raven
                scenes[74].follows = 75
            else
                scenes[74].follows = 76
            end
        end,
        clearSelection = true,
        text = 'scene 74: The moment Alena touches the ribbon an alarm sounds.',
        animations = function()
            transDialogueBack()
            transition.to(TreeRibbon, {rotation=50, x=540, y=350, time=500})
            transition.to(TreeRibbon, {rotation=-30, x=570, y=450, time=500, delay=500})
            transition.to(TreeRibbon, {rotation=10, x=550, y=500, time=500, delay=900})
            alarmBellsRing()
        end,
        animationComplete = function()
            removeCurtain()
            AlenaNoRibbon.y=-400
            WolfSit.y=-400
            TreeRibbon.y=500
        end,
        --Sound: bell alarm
        soundEffect = 'bellRing.mp3'
    }

    scenes[75] = {
        sName = 75,
        setStage = 'setForest2',
        clearSelection = true,
        text = 'scene 75: Gray Wolf grabs Alena and leaps over the wall. "You should have listened to me," he says. "Now Falcon\'s hounds will follow us to his brother\'s stronghold!"',
        follows = 77,
        animations = function()
            setForestFast()
            hideSmallCharacters()
            ridingWolftoRight(AlenaOnWolfNoRibbon)
        end,
        animationComplete = function()
            background.x=0 background.y=0
            foreground.x=0 foreground.y=0
            landscape3.x=0
            landscape2.x=0
            landscape1.x=0
        end,
    }

    scenes[76] = {
        sName = 76,
        setStage = 'setForest2',
        clearSelection = true,
        text = 'scene 76: Gray Wolf grabs Alena and leaps over the wall. "You should have listened to me," he says. "Now Raven\'s hounds will follow us to his brother\'s stronghold!"',
        follows = 77,
        animations = function() 
            setForestFast()
            hideSmallCharacters()
            ridingWolftoRight(AlenaOnWolfNoRibbon)
        end,
        animationComplete = function()
            background.x=0 background.y=0
            foreground.x=0 foreground.y=0
            landscape3.x=0
            landscape2.x=0
            landscape1.x=0
        end,
    }

    scenes[77] = {
        sName = 77,
        follows = 78,
        text = "scene 77: But seeing that Alena is scared, Gray Wolf softens. \"Climb off my back and hide under this tree,\" he orders. \"Don\'t make a sound. Just wait for my return.\" This time Alena listens.",
        animations = function()
            loadBushToHide()
            AlenaOnWolfNoRibbon.x=500
            WolfS.xScale = 1 WolfS.x=500 WolfS.isVisible = true WolfS.y=10 WolfS.alpha=0
            AlenaNoRibbon.x=400 AlenaNoRibbon.alpha = 0 AlenaNoRibbon.isVisible = true AlenaNoRibbon.y=-10
            transition.to(AlenaOnWolfNoRibbon, {alpha=0, time=500})
            transition.to(AlenaNoRibbon, {alpha=1, time=500, delay=400}) 
            transition.to(WolfS, {alpha=1, time=500, delay=400})
            transition.to(AlenaNoRibbon, {x=200, time=1000, delay=1500}) 
            transition.to(WolfS, {x=350, time=1000, delay=1500})
        end,
        animationComplete = function()
            AlenaOnWolfNoRibbon.alpha=0
            bushToHide.isVisible=true bushToHide.x=300 bushToHide.y=500 bushToHide.rotation=0
            WolfS.xScale = 1 WolfS.x=350 WolfS.isVisible = true WolfS.y=10 WolfS.alpha=1
            AlenaNoRibbon.x=200 AlenaNoRibbon.alpha =1 AlenaNoRibbon.isVisible = true AlenaNoRibbon.y=-10
        end,
        --Sound: Bush shake
        soundEffect = 'bushShake.mp3'
    }

    scenes[78] = {
        sName = 78,
        follows = 79,
        text = "scene 78: In the twinkling of an eye, Gray Wolf turns himself into a golden apple. Hounds approach, and the servants decide that the thief must have run away, leaving what he had tried to steal behind. They pick up the apple and turn back. ",
        animations = function()
            wolfTurningInto('Apple')
            uncleServentsPickUp('Apple')
        end,
        animationComplete = function()
            removeCurtain()
            hideBigCharacters()
            hideSmallCharacters()

            WolfSit.y=-220
            UncleServants.x=300
            UncleServants.x=-1000
            GoldenApple.isVisible = false
            bushToHide.isVisible = false
            MagicWolf.isVisible = false
        end,
        --Sound: wolf Magic
        soundEffect = 'wolfMagic.mp3'
    }

    scenes[79] = {
        sName = 79,
        follows = 80,
        text = function()
            return "scene 79: Soon after Gray Wolf returns, and Alena and her companion run to "..choices.brother.."\'s domain in silence. "
        end,
        animations = function()
            AlenaOnWolfNoRibbon.isVisible = true AlenaOnWolfNoRibbon.alpha=1
            AlenaOnWolfNoRibbon.x=400 AlenaOnWolfNoRibbon.y=-600
            transition.to(AlenaOnWolfNoRibbon, {y=0, time=1000})
        end,
        animationComplete = function()

        end
    }

    scenes[80] = {
        sName = 80,
        follows = 81,
        setStage = 'setUncleCastle',
        text='scene 80: Seeing the golden apple, her uncle\'s face flourishes a smile. \"You are a very handy girl,\" says he.',
        animations = function()
            loadUncleCastleFast('Evening')
            wolfAtUncleCastle('Apple')
            AlenaOnWolfNoRibbon.isVisible = false

            GoldenApple.isVisible = true GoldenApple.x=550 GoldenApple.y=0
            AlenaS.isVisible = true AlenaS.y = 20 AlenaS.x=610
        end,
        animationComplete = function()
            landscape3.x=0
            landscape2.y=0
            shadowLayer6.alpha=1
            throne.y=-30
            birdSymbol.y=320
            BrotherS.y=300

            AlenaOnWolfNoRibbon.isVisible = false

            GoldenApple.isVisible = true GoldenApple.x=550 GoldenApple.y=0
            AlenaS.isVisible = true AlenaS.y = 20 AlenaS.x=610
        end,
        --Sound: door Open Close
        soundEffect = 'doorOpenClose.mp3'
    }

    scenes[81] = {
        sName = 81,
        changeFlow = function() 
            if choices.brother=='Eagle' then
                scenes[81].follows = 83
            else
                scenes[81].follows = 82
            end
        end,
        text='scene 81: Uncle: \"Maybe you really can save Ivan. But for now, go and fetch me the horse with the golden mane from my other brother.\"',
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(BrotherD, 400, 400)
        end,
        animationComplete = function() 
            hideBigCharacters()
            removeCurtain()
        end
    }

    scenes[82] = {
        sName = 82,
        setStage = 'setStables',
        follows = 84,
        text='scene 82: As the moon climbs high in the sky, Alena and her loyal companion dash to Eagle\'s castle.',
        animations = function()
            setForestFast()
            hideSmallCharacters()
            ridingWolftoLeft(AlenaOnWolfNoRibbon)
        end,
        animationComplete =  function()
            background.x=0 background.y=0
            foreground.x=0 foreground.y=0
            landscape3.x=0
            landscape2.x=0
            landscape1.x=0
        end
    }

    scenes[83] = {
        sName = 83,
        setStage = 'setStables',
        follows = 84,
        text='scene 83: As the moon climbs high in the sky, Alena and her loyal companion dash to Falcon\'s castle.',
        animations = function()
            setForestFast()
            hideSmallCharacters()
            ridingWolftoLeft(AlenaOnWolfNoRibbon)
        end,
        animationComplete = function()
            background.x=0 background.y=0
            foreground.x=0 foreground.y=0

            landscape2.x=-1700
            landscape1.x=-2100
        end
    }

    scenes[84] = {
        sName = 84,
        follows = 85,
        text='scene 84: There with one jump, Gray Wolf leaps over the castle walls near the stables. ',
        animations = function() 
            setStronghold2()
            wolfJumpStronghold1()
        end,
        animationComplete = function()
            landscape2.x=-1300
            landscape1.x=-1200
            StrongholdB2.x=-120
            AlenaOnWolfNoRibbon.y=10

        end,
        --Sound: stables 1
        soundEffect = 'stableSounds1.mp3'
    }

    scenes[85] = {
        sName = 85,
        follows = 86,
        text='scene 85: "There\'s the horse in that stall. Sneak in and get him, but don\'t touch the bridle," orders Gray Wolf.',
        animations = function()
            wolfAlenaInStables()
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
            stableRibbon.y=300

            AlenaOnWolfNoRibbon.isVisible=false AlenaOnWolfNoRibbon.y=-600 AlenaOnWolfNoRibbon.alpha=1 
            AlenaNoRibbon.isVisible = true AlenaNoRibbon.y=0 AlenaNoRibbon.x=350 AlenaNoRibbon.alpha=1
            WolfSit.isVisible = true WolfSit.xScale = -1 WolfSit.x=250 WolfSit.y=0 WolfSit.alpha=1
        end
    }

    scenes[86] = {
        sName = 86,
        selection = {
            [1] = {'Leave', 87},
            [2] = {'Untie', 88}
        },
        text='scene 86: Doing as she was told, Alena sneaks into the stall and sees the most beautiful horse inside. Its bridle is decorated with red ribbons. "One of those would look so pretty in my hair!" thinks Alena.',
        animations = function()
            transition.to(AlenaNoRibbon, {x=645, time=1000})
        end,
        animationComplete = function() AlenaNoRibbon.x=645 end,
        --Sound: stables 2
        soundEffect = 'stableSounds2.mp3'
    }

    scenes[87] = {
        sName = 87,
        follows = 93,
        clearSelection = true,
        text='scene 87: She leaves the ribbon behind and leads the horse out to Gray Wolf. "You are a good girl, daughter of Marya, your mother raised you well." says Gray Wolf, and they rush back.',
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(Wolf, 500, 400)
        end,
        animationComplete =  function()
            hideBigCharacters() 
        end
    }

    scenes[88] = {
        sName = 88,
        follows = 89,
        clearSelection = true,
        changeFlow = function() choices.wolfPenalty =  choices.wolfPenalty+1 end,
        text='scene 88: The moment Alena touches the ribbon, an alarm rings out. Alena catches the horse and runs to Gray Wolf.',
        animations = function()
            transition.to(stableRibbon, {rotation=50, x=690, y=350, time=500})
            transition.to(stableRibbon, {rotation=-30, x=660, y=450, time=500, delay=500})
            transition.to(stableRibbon, {rotation=10, x=700, y=500, time=500, delay=900})
            alarmBellsRing()
            transition.to(AlenaNoRibbon, {x=300, time=1000, delay=1500})
            transition.to(GoldenHorse, {x=400, time=1000, delay=1500})
        end,
        animationComplete = function()
            AlenaNoRibbon.x=300
            stableRibbon.y=500
            GoldenHorse.y=10 GoldenHorse.x=400
        end,
        --Sound: bell alarm
        soundEffect = 'bellRing.mp3'
    }

    scenes[89] = {
        sName = 89,
        follows = 90,
        setStage = 'setForest3',
        text='scene 89: "You should have listened to me," says he. "This horse is not as fast as I am. It may run fast through the courtyard, but outside the wall, they can catch us!"',
        animations = function()
            setForest3Fast()
            hideSmallCharacters()
            GoldenHorse.isVisible=true  GoldenHorse.y=-35 GoldenHorse.x=1200
            ridingWolftoRight(AlenaOnWolfNoRibbon)
            transition.to(GoldenHorse, {x=550, time=3000})
        end,
        animationComplete = function()
            background.x=0 background.y=0
            foreground.x=0 foreground.y=0
            landscape3.x=0
            landscape2.x=0
            landscape1.x=0
            GoldenHorse.x=550 GoldenHorse.y=-35
        end
    }

    scenes[90] = {
        sName = 90,
        follows = 91,
        text='scene 90: But seeing that Alena is scared, Gray Wolf softens. "There is still enough witchcraft left  in me, so the moment we are outside the castle, rush the horse into the woods, hide there, and wait for my return."',
        animations = function()
            loadBushToHide()
            AlenaOnWolfNoRibbon.x=500
            WolfS.xScale = 1 WolfS.x=500 WolfS.isVisible = true WolfS.y=10 WolfS.alpha=0
            AlenaNoRibbon.x=400 AlenaNoRibbon.alpha = 0 AlenaNoRibbon.isVisible = true AlenaNoRibbon.y=-10
            GoldenHorse.x=500 GoldenHorse.y=-35
            transition.to(AlenaOnWolfNoRibbon, {alpha=0, time=500})
            transition.to(AlenaNoRibbon, {alpha=1, time=500, delay=400}) 
            transition.to(WolfS, {alpha=1, time=500, delay=400})
            transition.to(AlenaNoRibbon, {x=200, time=1000, delay=1500}) 
            transition.to(WolfS, {x=350, time=1000, delay=1500})
            transition.to(GoldenHorse, {x=-200, time=1000, delay=2000})
        end,
        animationComplete = function()
            AlenaOnWolfNoRibbon.alpha=0
            bushToHide.isVisible=true bushToHide.x=300 bushToHide.y=500 bushToHide.rotation=0
            WolfS.xScale = 1 WolfS.x=350 WolfS.isVisible = true WolfS.y=10 WolfS.alpha=1
            AlenaNoRibbon.x=200 AlenaNoRibbon.alpha =1 AlenaNoRibbon.isVisible = true AlenaNoRibbon.y=-10
        end,
        --Sound: Bush shake
        soundEffect = 'bushShake.mp3'
    }

    scenes[91] = {
        sName = 91,
        follows = 92,
        text= 'scene 91: In a twinkling of an eye, Gray Wolf turns himself into a horse with a golden mane. The servants, who see him decide that the thief must have run away leaving what he had been trying to steal. They take the horse and turn back.',
        animations = function()
            wolfTurningInto('Horse')
            uncleServentsPickUp('Horse')
        end,
        animationComplete = function()
            removeCurtain()
            hideBigCharacters()
            hideSmallCharacters()

            WolfSit.y=-220
            UncleServants.x=300
            UncleServants.x=-1000
            GoldenHorse.isVisible = false
            bushToHide.isVisible = false
            MagicWolf.isVisible = false
        end,
        --Sound: wolf Magic
        soundEffect = 'wolfMagic.mp3'
    }

    scenes[92] = {
        sName = 92,
        follows = 93,
        text= function()
            return 'scene 92: Soon after, Gray Wolf returns to himself, and he and Alena rush  to '..choices.brother1..' in silence. '
        end,
        animations = function()
            AlenaOnWolfNoRibbon.isVisible = true AlenaOnWolfNoRibbon.alpha=1
            AlenaOnWolfNoRibbon.x=400 AlenaOnWolfNoRibbon.y=-600
            transition.to(AlenaOnWolfNoRibbon, {y=0, time=1000})
        end,
        animationComplete = function()

        end
    }

    scenes[93] = {
        sName = 93,
        follows = 94,
        setStage = 'setUncleCastle',
        text='scene 93: Seeing the horse with the golden mane, her uncle gets lost in his thoughts for a second. ',
        animations = function()
            loadUncleCastleFast('Night')
            wolfAtUncleCastle('Horse')
            AlenaOnWolfNoRibbon.isVisible = false

            GoldenHorse.isVisible = true GoldenHorse.x=700 GoldenHorse.y=0
            AlenaS.isVisible = true AlenaS.y = 20 AlenaS.x=610
        end,
        animationComplete = function()
            landscape3.x=0
            landscape2.y=0
            shadowLayer6.alpha=1
            throne.y=-30
            birdSymbol.y=320
            BrotherS.y=300

            AlenaOnWolfNoRibbon.isVisible = false

            GoldenHorse.isVisible = true GoldenHorse.x=700 GoldenHorse.y=0
            AlenaS.isVisible = true AlenaS.y = 20 AlenaS.x=610
        end,
        --Sound: door Open Close
        soundEffect = 'doorOpenClose.mp3'
    }
    scenes[94] = {
        sName = 94,
        follows = 95,
        text='scene 94: Uncle: "You are a very handy girl indeed. So help me with one last task, and I\'ll tell you where you need to go, and even help you anyway I can." ',
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(BrotherD, 400, 400)
        end,
        animationComplete = function() 
            hideBigCharacters()
        end
    }

    scenes[95] = {
        sName = 95,
        follows = 96,
        text='scene 95: It is obvious to Alena that there\'s no point in arguing.  Her uncle won\'t help her unless she completes this last task, so she accepts it without objections. She only hopes that it won\'t be more difficult than the two previous ones. ',
        animations = function()
            hideBigCharacters() 
            transDialogueBack()
        end,
        animationComplete = function()
            removeCurtain()
        end
    }

    scenes[96] = {
        sName = 96,
        follows = 97,
        text='scene 96: Uncle: “A nearby King, Berendei, has a daughter that is as beautiful as the dawn. If I marry her, my brothers will die from envy. So bring her to me, and I give you my word, I\'ll help you any way I can.” ',
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(BrotherD, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }

    scenes[97] = {
        sName = 97,
        follows = 98,
        text='scene 97: Having no choice, Alena and Gray Wolf  return to the forest.',
        animations = function() 
            hideBigCharacters() 
            transDialogueBack()
        end,
        animationComplete = function()
            removeCurtain()
        end
    }

    scenes[98] = {
        sName = 98,
        setStage = 'setBerendei',
        follows = 99,
        text='scene 98: The western edge of the sky grows lighter as Alena, seated on Gray Wolf\'s back rushes to Berendei\'s kingdom. Near the castle wall, they stop. ',
        animations = function()
            hideSmallCharacters() 
            ridingWolftoLeft(AlenaOnWolfNoRibbon)
            transition.to(StrongholdBer, {x=600, time=1000, delay=2000})

        end,
        animationComplete = function()
            StrongholdBer.x=600
            AlenaOnWolfNoRibbon.x=400
        end
    }
    scenes[99] = {
        sName = 99,
        follows = 100,
        text='scene 99: "I\'ll jump into the garden as fast as I can. Then, you have to grab Vasilisa the Beautiful, and don\'t let go of her until we get back in the forest".',
        animations = function() 
            --wolfJumpStronghold1()
            setStronghold3()
        end,
        animationComplete = function()
            landscape2.x=-1700
            landscape1.x=-2100
            StrongholdBer.x=-150
            GardenBer.x=400
        end,
        --Sound: yard at night
        soundEffect = 'yardNight1.mp3'
    }
    scenes[100] = {
        sName = 100,
        follows = 101,
        text='scene 100: Alena does as she\'s told.The moment she sees the golden hair of Vasilisa  the beautiful, she snatches her and holds on fast until the castle walls are far behind. ',
        animations = function() 
            wolfInTheYard()
            VasilisaS.isVisible = true VasilisaS.x=1200 VasilisaS.y=0
            AlenaSnatchVasilisa()
        end,
        animationComplete = function()
            hideSmallCharacters()
            AlenaVasilisaRiding.xScale=1 AlenaVasilisaRiding.isVisible = true AlenaVasilisaRiding.alpha=1
            AlenaVasilisaRiding.x=800 AlenaVasilisaRiding.y=-20
            AlenaNoRibbon.alpha=0 WolfS.alpha=0 VasilisaS.alpha = 0 
            StrongholdBer.isVisible = false
            GardenBer.isVisible = false
            landscape1.x=0
            landscape2.x=0
        end,
        --Sound: yard at night
        soundEffect = 'yardNight1.mp3'
    }
    scenes[101] = {
        sName = 101,
        follows = 102,
        text='scene 101: In the forest, the moment Alena lets go of the king\'s daughter, Vasilisa starts crying.',
        animations = function()
            AlenaNoRibbon.isVisible = true AlenaNoRibbon.y=0 AlenaNoRibbon.x=400
            WolfS.xScale = -1 WolfS.isVisible = true WolfS.y=0 WolfS.x=400
            VasilisaPlea.isVisible = true VasilisaPlea.y=-10 VasilisaPlea.x=500 VasilisaPlea.alpha=0

            transition.to(AlenaVasilisaRiding, {x=400, time=1000, delay=500})
            transition.to(AlenaVasilisaRiding, {alpha=0, time=500, delay=1500})

            transition.to(AlenaNoRibbon, {alpha=1, time=700, delay=1500})
            transition.to(WolfS, {alpha=1, time=700, delay=1500})
            transition.to(VasilisaPlea, {alpha=1, time=700, delay=1500})
        end,
        animationComplete = function()
            AlenaVasilisaRiding.alpha=1 AlenaVasilisaRiding.isVisible=false
            AlenaNoRibbon.isVisible = true AlenaNoRibbon.y=0 AlenaNoRibbon.x=400 AlenaNoRibbon.alpha = 1
            WolfS.xScale = -1 WolfS.isVisible = true WolfS.y=0 WolfS.x=400 WolfS.alpha = 1
            VasilisaPlea.isVisible = true VasilisaPlea.y=-10 VasilisaPlea.x=500 VasilisaPlea.alpha = 1
        end,
        --Sound: Alena Cry
        soundEffect = 'girlCry.mp3'
    }

    scenes[102] = {
        sName = 102,
        follows = 103,
        text = function()
            return 'scene 102: Vasilisa: "I know you are an envoy of '..choices.brother..'. My father refused to give me to him, but he swore that he would get me anyway. Please, let me go, don\'t give me to him!"'
        end,
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(VasilisaCry, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }

    scenes[103] = {
        sName = 103,
        selection = {
            [1] = {'Refuse', 104},
            [2] = {'Let her go', 106}
        },
        text='scene 103: Alena is confused. Her uncle\'s help is the only way to get her brother back!',
        animations = function()
            transDialogueBack()
        end,
        animationComplete = function()
            removeCurtain()
        end
    }

    scenes[104] = {
        sName = 104,
        follows = 105,
        clearSelection=true,
        changeFlow = function() 
            choices.vasilisa = 'Vasilisa the Beautiful' 
            choices.vasilisaGo = false 
            end,
        text='scene 104: "I have to save my brother. Maybe my uncle is not that bad and with time, Vasilisa  can learn to love him," says Alena to herself, staying deaf to Vasilisa\'s pleading. She instructs Gray Wolf to get to her uncle as fast as possible.',
        animations = function() 
            AlenaVasilisaRiding.x=400  AlenaVasilisaRiding.isVisible=true

            transition.to(AlenaNoRibbon, {alpha=0, time=500})
            transition.to(WolfS, {alpha=0, time=500})
            transition.to(VasilisaPlea, {alpha=0, time=500})
            transition.to(AlenaVasilisaRiding, {alpha=1, time=700})
            
        end,
        animationComplete = function()
            AlenaVasilisaRiding.x=400 AlenaVasilisaRiding.alpha=1
            AlenaNoRibbon.isVisible = false AlenaNoRibbon.y=0 AlenaNoRibbon.x=400 AlenaNoRibbon.alpha = 1
            WolfS.xScale = -1 WolfS.isVisible = false WolfS.y=0 WolfS.x=400 WolfS.alpha = 1
        end
    }

    scenes[105] = {
        sName = 105,
        follows = 111,
        setStage = 'setForest4',
        text='scene 105: The sun is slowly coming up, dispersing the morning gloom. The first cockcrows are waking up. Alena is worried. "Can my brother see this dawn from Koschei\'s castle?" she wonders and hopes that with her uncle\'s help she can save him.',
        animations = function()
            transition.to(forrestDawn, {alpha=0.5, time=1000})
            ridingWolftWithVasilisa(1000)
        end,
        animationComplete = function()
            forrestDawn.alpha=0.5
            AlenaVasilisaRiding.x=500
        end,
        --Sound: Alena Cry
        soundEffect = 'roosterDawn.mp3'
    }

    scenes[106] = {
        sName = 106,
        clearSelection = true,
        follows = 107,
        changeFlow = function() 
            choices.vasilisa = 'Gray Wolf in a form of Vasilisa the Beautiful' 
            choices.vasilisaGo = true
        end,
        text='scene 106: Touched by the young woman\'s plea, Alena asks Gray Wolf to stop, so she can set Vasilisa free. Then she sit on the ground downcast.',
        animations = function()
            VasilisaPlea.y=-10 VasilisaPlea.x=500 VasilisaPlea.isVisible=true VasilisaPlea.alpha=1
            VasilisaS.y=0 VasilisaS.x=500 VasilisaS.isVisible=true VasilisaS.alpha=0
            AlenaCrySNR.y=-10 AlenaCrySNR.x=370 AlenaCrySNR.isVisible=true AlenaCrySNR.alpha=0
            transition.to(VasilisaPlea, {alpha=0, time=500})
            transition.to(VasilisaS, {alpha=1, time=700})

            transition.to(VasilisaS, {x=1200, time=1000, delay=700})

            transition.to(AlenaNoRibbon, {alpha=0, time=700, delay=1000})
            transition.to(AlenaCrySNR, {alpha=1, time=700, delay=1500})
        end,
        animationComplete = function()
            VasilisaPlea.isVisible=false VasilisaPlea.alpha=1
            VasilisaS.isVisible=false VasilisaS.alpha=1
            AlenaCrySNR.y=-10 AlenaCrySNR.x=370 AlenaCrySNR.isVisible=true AlenaCrySNR.alpha=1
            AlenaNoRibbon.alpha=1 AlenaNoRibbon.isVisible=false
            AlenaVasilisaRiding.isVisible=false
        end
    }
    scenes[107] = {
        sName = 107,
        follows = 108,
        text= function()
            return 'scene 107: "Don\'t grieve, daughter of Marya, I\'ll help you," says Gray Wolf. "When we get to '..choices.brother..', if he asks about me, say I decided to wait for you outside."'
        end,
        animations = function()
            AlenaVasilisaRiding.isVisible = false
            hideBigCharacters()

            showDialogueBack()
            showDialogueChar(Wolf, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
            hideSmallCharacters()
        end
    }
    scenes[108] = {
        sName = 108,
        setStage = 'setForest4',
        follows = 109,
        text='scene 108: The sun is slowly coming up, dispersing the morning gloom. The first cockcrows are waking up.',
        animations = function()
            transDialogueBack()

            AlenaOnWolfNoRibbon.alpha=1 AlenaOnWolfNoRibbon.isVisible = true AlenaOnWolfNoRibbon.x=1200 AlenaOnWolfNoRibbon.y=0 AlenaOnWolfNoRibbon.xScale=1
            transition.to(forrestDawn, {alpha=0.5, time=1000})
            transition.to(AlenaOnWolfNoRibbon, {x=500, time=1000})

        end,
        animationComplete = function()
            removeCurtain()
            AlenaOnWolfNoRibbon.alpha=1 AlenaOnWolfNoRibbon.isVisible = true AlenaOnWolfNoRibbon.x=500 
            AlenaOnWolfNoRibbon.y=0 AlenaOnWolfNoRibbon.xScale=1
            forrestDawn.alpha=0.5
        end,
        --Sound: Alena Cry
        soundEffect = 'roosterDawn.mp3'
    }

    scenes[109] = {
        sName = 109,
        follows = 110,
        text='scene 109: As soon as the gates of uncle\'s castle are visible, Gray Wolf stops and turns himself into Vasilisa the Beautiful.',
        animations = function()
            WolfS.isVisible=true WolfS.x=550 WolfS.alpha=0 WolfS.y=0
            AlenaNoRibbon.isVisible=true AlenaNoRibbon.x=650 AlenaNoRibbon.alpha=0 AlenaNoRibbon.y=0

            transition.to(AlenaOnWolfNoRibbon, {alpha=0, time=500, delay=300})
            transition.to(WolfS, {alpha=1, time=700, delay=500})
            transition.to(AlenaNoRibbon, {alpha=1, time=700, delay=500})
            
            wolfTurningInto('Vasilisa')
        end,
        animationComplete = function()
            WolfS.isVisible=false
            AlenaNoRibbon.isVisible=true AlenaNoRibbon.x=650 AlenaNoRibbon.alpha=1 AlenaNoRibbon.y=0
            
            MagicWolf.x=350 MagicWolf.y=-600
            VasilisaS.x=440 VasilisaS.y=-10 VasilisaS.isVisible = true VasilisaS.alpha=1
        end,
        --Sound: wolf Magic
        soundEffect = 'wolfMagic.mp3'
    }
    scenes[110] = {
        sName = 110,
        follows = 111,
        text='scene 110: "Don\'t linger after he tells you where to go, I\'ll catch up with you later," says Gray Wolf in Vasilisa The Beautiful form.',
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(VasilisaD, 400, 400)
        end,
        animationComplete = function()
            transDialogueBack()
            hideBigCharacters()
        end
    }

    scenes[111] = {
        sName = 111,
        changeFlow = function() 
           if choices.vasilisa =='Vasilisa the Beautiful' 
                then scenes[111].follows = 112
                else scenes[111].follows = 113
            end
        end,
        text = function()
            return 'scene 111: The servants lead Alena and '..choices.vasilisa..'  to the '..choices.brother..'. The uncle is so happy to see his invaluable prize, that he doesn\'t ask any questions, just shows Alena the road to the Koschei\'s castle. '
            end,
        
        animations = function()
            transition.to(forrestDawn, {alpha=1, time=1000})
            VasilisaS.x=550
            wolfAtUncleCastle('Vasilisa')

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
    scenes[112] = {
        sName = 112,
        follows = 114,
        text='scene 112: Alena and Gray Wolf continue their journey. Alena tries not to think about Vasilisa\'s fate, as her only goal is to find her lost brother and return him home. "At least this way, I secured my uncle\'s help in case I need it."',
        animations = function()
            forrestSunny.alpha=1
            AlenaOnWolfNoRibbon.isVisible = true
            AlenaOnWolfNoRibbon.y=0
            ridingWolftoRight(AlenaOnWolfNoRibbon)
        end,
        animationComplete = function()end
    }
    scenes[113] = {
        sName = 113,
        follows = 114,
        text='scene 113: Alena follows the road on foot. Before midday, her loyal companion catches up with her and tells her the story of how her uncle tried to kiss his newly-wed bride, who suddenly turned into a wolf. "There\'s little reason to hope for his help in the future."',
        animations = function()
            forrestSunny.alpha=1
            AlenaNoRibbon.x=1100 AlenaNoRibbon.y=0
            WolfS.isVisible = true WolfS.alpha=1 WolfS.xScale =1
            WolfS.x=1100 WolfS.y=0
            transition.to(AlenaNoRibbon, {x=300, time=1500, delay=500})
            transition.to(WolfS, {x=450, time=1000, delay=1300})
        end,
        animationComplete = function()end
    }

-------- Act 4 Scenes 105 - 146
    scenes[114] = {
        sName = 114,
        openingAnimation = {
            [1] = 'background11.png', 
            [2] = 'foreground7.png'
        },
        setStage = 'setWinterForest',
        follows = 115,
        text='scene 114: It is getting colder. The sun is powerless to blow away the snowy gloom. The chilly wind swipes the Gray earth and sways the bony trees barren of all leaves. Slowly even Gray Wolf grows tired of ceaselessly galloping against the snowstorm.',
        animations = function()
            AlenaOnWolfNoRibbon.isVisible = true
            AlenaOnWolfNoRibbon.xScale =-1 AlenaOnWolfNoRibbon.x=-250 AlenaOnWolfNoRibbon.y=0
            transition.to(shadowLayer9, {alpha=1, time=1000, delay=2000})
            transition.to(landscape3, {x=0, time=1000, delay=1000})
            transition.to(AlenaOnWolfNoRibbon, {x=300, time=1000, delay=3000})
            snowFalling(0, 3000)
        end,
        animationComplete = function()
            foreground.y=0
            AlenaOnWolfNoRibbon.isVisible = true AlenaOnWolfNoRibbon.xScale =-1 AlenaOnWolfNoRibbon.x=300 AlenaOnWolfNoRibbon.y=0
            landscape3.x=0
            snowFall.isVisible = false snowFall2.isVisible = false
        end,
        -- Sound: Opening
        soundEffect = 'opening.mp3',
    }
    scenes[115] = {
        sName = 115,
        follows = 116,
        text='scene 115: They decided to halt their journey for a short time. They find shelter between the huge roots of a massive ancient tree and build themselves a fairly solid windbreak out of fresh pine branches laid from root to root. ',
        animations = function()
            transition.to(landscape3, {x=-400, time=1000})
            transition.to(treeBack, {x=550, time=1000})
            transition.to(treeFront, {x=500, time=1000})
            transition.to(treeIce, {x=500, time=1000})
            transition.to(treeIce, {alpha=1, time=1000, delay=1000})
            snowFalling(1, 0)
            transition.to(foregroundIce, {alpha=1, time=1000, delay=2000})
        end,
        animationComplete = function()
            landscape3.x=-400
            treeBack.x=550
            treeFront.x=500
            treeIce.x=500 treeIce.alpha=1
            foregroundIce.alpha=1
            snowFall.isVisible = false snowFall2.isVisible = false
        end,
        -- Sound: WinterWind
        soundEffect = 'winterWind.mp3',
    }
    scenes[116] = {
        sName = 116,
        follows = 117,
        text='scene 116: Gray Wolf gathers some berries and firewood bringing into their now cosy little shelter. Alena lights the fire. But the moment their hideout warms up, the branches begin to jostle.',
        animations = function()
            AlenaNoRibbon.isVisible=true AlenaNoRibbon.x=750 AlenaNoRibbon.y=20 AlenaNoRibbon.alpha=0
            WolfSit.xScale = -1 WolfSit.x=760 WolfSit.isVisible=true  WolfSit.y=20 WolfSit.alpha=0

            transition.to(landscape3, {x=-700, time=1000, delay=500})
            transition.to(treeBack, { x=230, time=1000, delay=500})
            transition.to(treeFront, {x=180, time=1000, delay=500})
            transition.to(treeIce, {x=180, time=1000, delay=500})

            transition.to(AlenaOnWolfNoRibbon, {alpha=0, time=500, delay=500})
            transition.to(AlenaNoRibbon, {alpha=1, time=700, delay=500})
            transition.to(WolfSit, {alpha=1, time=700, delay=500})

            transition.to(forestFire, {alpha=1, time=1000, delay=1000})
            moveTreeBack()
        end,
        animationComplete = function()
            landscape3.x=-700
            treeBack.rotation=0 treeBack.y=140 treeBack.x=230
            treeFront.x=180
            treeIce.x=180 treeIce.alpha=1
            AlenaOnWolfNoRibbon.alpha = 1  AlenaOnWolfNoRibbon.isVisible = false
            AlenaNoRibbon.isVisible = true AlenaNoRibbon.alpha=1 AlenaNoRibbon.x=750 AlenaNoRibbon.y=20
            WolfSit.isVisible = true WolfSit.alpha=1 WolfSit.x=760 WolfSit.y=20

            forestFire.alpha=1
        end,
        -- Sound: Wood cracking
        soundEffect = 'woodCrack.mp3',
    }
    scenes[117] = {
        sName = 117,
        text='scene 117: Alena can spot a huge brown bear trying to get into their shelter. But before Gray Wolf gets on his feet, the bear says: “I mean you no harm. I just want to warm myself near your fire and wait until the storm clears.”',
        selection = {
            [1] = {'What?', 118},
        },
        animations = function()
            BearS.isVisible = true BearS.xScale=-1 BearS.x=-200 BearS.y=0
            transition.to(BearS, {x=500, time=1000})
        end,
        animationComplete = function()
            BearS.isVisible = true BearS.xScale=-1 BearS.x=500 BearS.y=0
        end
    }

    scenes[118] = {
        sName = 118,
        follows = 119,
        clearSelection = true,
        text='scene 118: Alena: "Another talking animal!?!"',
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(AlenaNR, 500, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }

    scenes[119] = {
        sName = 119,
        text='scene 119: Bear: "You are far from home, little one. I am not the biggest wonder here in Koschei\'s domain." says Bear. ',
        selection = {
            [1] = {'Wonders?', 120}
        },
        animations = function()
            showDialogueChar(Bear, 400, 400)
        end,
        animationComplete = function()
        end
    }

    scenes[120] = {
        sName = 120,
        follows = 121,
        clearSelection = true,
        text='scene 120: "The biggest wonders here are the spring with the water of death and the spring with the water of life. They say the water of death cleanses the body and treats any wounds, while the water of life can revive the dead. But only crows know where those springs are," explains Bear.',
        animations = function()

        end,
        animationComplete = function()
        end
    }
    scenes[121] = {
        sName = 121,
        text='scene 121: Bear: "So, little one, can I stay?"',
        selection = {
            [1] = {'Go away', 124},
            [2] = {'Yes you can', 122}
        },
        animations = function()
        end,
        animationComplete = function()
    
        end
    }

    scenes[122] = {
        sName = 122,
        clearSelection = true,
        changeFlow = function() choices.bear = true end,
        follows = 123,
        changeFlow = function() choices.wolfPenalty = choices.wolfPenalty-1 end,
        text='scene 122: Alena: "Of course, you can stay."',
        animations = function()
            hideBigCharacters()
            showDialogueChar(AlenaNR, 500, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }

    scenes[123] = {
        sName = 123,
        follows = 128,
        text='scene 123: “Thank you, little one. Kindness is the rarest thing in this kingdom,” says Bear.',
        animations = function()
            transDialogueBack()
            transition.to(BearS, {x=750, y=30, time=1000, delay=500})
            snowFalling(1, 0)
        end,
        animationComplete = function()
            removeCurtain()
            snowFall.isVisible = false snowFall2.isVisible = false
            BearS.x=750 BearS.y=30
        end,
        --Sound: fire in the oven
        soundEffect = 'fireInOven.mp3'
    }

    scenes[124] = {
        sName = 124,
        follows = 125,        
        text='scene 124: Alena: "Go away, you are huge and scary!"',
        clearSelection = true,
        changeFlow = function() choices.wolfPenalty =  choices.wolfPenalty+1 end,
        animations = function()
            hideBigCharacters()
            showDialogueChar(AlenaNR, 500, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }

    scenes[125] = {
        sName = 125,
        follows = 126,
        text='scene 125: With a sad sigh, Bear struggles out of the shelter. Alena breathes with relief. “He was so scary!” she says to Gray Wolf.',
        animations = function()
            transDialogueBack()
            BearS.xScale = 1 BearS.x=100
            transition.to(BearS, {x=-500, time=1000, delay=1000})
        end,
        animationComplete = function()
            removeCurtain()
            BearS.xScale=1 BearS.x=-500
        end,
        --Sound: fire in the oven
        soundEffect = 'fireInOven.mp3'
    }

    scenes[126] = {
        sName = 126,
        follows = 127,
        text='scene 126: “Maybe so, but he is not the scariest thing we will see.” he promises.',
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(Wolf, 600, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }

    scenes[127] = {
        sName = 127,
        follows = 129,
        text='scene 127: Alena, soothed by the heat of fire and the warmth of Gray Wolf\'s fur barely notices when the blizzard has finally passed. But she has to continue her journey in search for Ivan, so they leave their cosy shelter behind.',
        animations = function()
            transDialogueBack()
            transition.to(treeIce, {alpha=0, time=1000})
            transition.to(forestFire, {alpha=0, time=2000})
            transition.to(foregroundIce, {alpha=0, time=1500})
        end,
        animationComplete = function()
            removeCurtain()
            treeIce.alpha = 0
            foregroundIce.alpha = 0
            forestFire.alpha=0
        end
    }


    scenes[128] = {
        sName = 128,
        follows = 129,
        text='scene 128: Soon the blizzard passes and it is time to carry on. Alena says her goodbyes to Bear, and he tells her that if she ever needs his help, she should call for him, and he will come. Alena is happy to  have enlisted the help of another ally.',
        animations = function()
            transDialogueBack()
            transition.to(treeIce, {alpha=0, time=1000})
            transition.to(foregroundIce, {alpha=0, time=1500})
            transition.to(forestFire, {alpha=0, time=2000})
            BearS:toBack() BearS.xScale = 1 BearS.x=400
            transition.to(BearS, {x=-500, time=1000, delay=1000})
        end,
        animationComplete = function()
            removeCurtain()
            BearS.xScale=1 BearS.x=-500
            treeIce.alpha = 0
            foregroundIce.alpha = 0
            forestFire.alpha=0
            hideSmallCharacters()
        end
    }

    scenes[129] = {
        sName = 129,
        follows = 130,
        setStage='setKoshCastle',
        text='scene 129: After a while they get to Koschei\'s stronghold, an impregnable ice castle stands opposite them. There is no way of knowing if its ruthless overlord is inside. Gray Wolf sniffs the air. ',
        animations = function()

            AlenaOnWolfNoRibbon.isVisible=true AlenaOnWolfNoRibbon.xScale = -1
            AlenaOnWolfNoRibbon.x=-100 AlenaOnWolfNoRibbon.y=0
            transition.to(AlenaOnWolfNoRibbon, {x=650, time=1500, delay=500})
        end,
        animationComplete = function()
            AlenaOnWolfNoRibbon.isVisible=true AlenaOnWolfNoRibbon.x=650 AlenaOnWolfNoRibbon.y=0
        end
    }

    scenes[130] = {
        sName = 130,
        follows = 131,
        text='scene 130: "I can sense your brother in the highest tower. You get on my back, and I will jump as high as I can. You reach out and grab your brother. Then we will all run as fast as we can to escape Koschei before he notices that Ivan is gone," says Gray Wolf.',
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(Wolf, 600, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }

    scenes[131] = {
        sName = 131,
        follows = 132,
        text='scene 131: And so they do. Alena is happy when she spots her brother standing near the tower window. She grabs him, and Gray Wolf leaps away from the tower.',
        animations = function()
            transDialogueBack()
            AlenaIvanRiding.isVisible=true
            AlenaIvanRiding.y=-700 AlenaIvanRiding.xScale=1 AlenaIvanRiding.x=600  
            transition.to(AlenaOnWolfNoRibbon, {x=800, time=500})
            transition.to(AlenaOnWolfNoRibbon, {x=800, y=-700, time=700, delay=500})
            transition.to(WindowWithIvan, {alpha=0, time=100, delay=700})
            transition.to(AlenaIvanRiding, {y=0, time=1000, delay=1000})
        end,
        animationComplete = function()
            removeCurtain()
            AlenaOnWolfNoRibbon.isVisible=false
            WindowWithIvan.alpha=0
            AlenaIvanRiding.isVisible=true AlenaIvanRiding.y=0 AlenaIvanRiding.x=600
        end
    }

    scenes[132] = {
        sName = 132,
        follows = 133,
        text='scene 132: But before Woolf\'s paws touch the ground, a peal of thunder shatters the air and before them stands Koschei the Deathless in person, blocking their next step.',
        animations = function()
            transition.to(AlenaIvanRiding, {x=550, time=500})
            koshAttack.isVisible = true koshAttack.x=380 koshAttack.y=-700
            transition.to(koshAttack, {y=0, time=1000, delay=200})
        end,
        animationComplete = function()
            AlenaIvanRiding.x=550
            koshAttack.y=0
        end,
        --Sound: Wind gust
        soundEffect = 'windKoschei.mp3'
    }

    scenes[133] = {
        sName = 133,
        changeFlow = function() 
            if choices.brother == 'Raven' then
                if choices.vasilisaGo==true then scenes[133].follows = 136
                else scenes[133].follows = 137 end
            else
                if choices.brother == 'Falcon' then scenes[133].follows = 135
                else scenes[133].follows = 134 end
            end
        end,
        text='scene 133: Gray Wolf attacks Koschei, as Alena tries to run away holding Ivan, but all their efforts are in vain. Gray Wolf\'s bites have no effect on Koschei.  The warlock summons his underlings, and a cloud of ice shrouds everything in sight.',
        animations = function()
            icyCurtain.isVisible=true
            transition.to(AlenaIvanRiding, {x=250, time=500, delay=500})
            transition.to(icyCurtain, {alpha=1, y=-500, time=1000, delay=800})
            transition.to(foregroundIce, {alpha=1, time=1000})
        end,
        animationComplete = function()
            icyCurtain.isVisible=true icyCurtain.y=-500
            koshAttack.isVisible = false
            foregroundIce.alpha=1
            AlenaIvanRiding.isVisible = false
        end,
        --Sound: Wind gust
        soundEffect = 'windKoschei.mp3'
    }

    scenes[134] = {
        sName = 134,
        selection = {
            [1] = {'What to do...', 138}
        },
        text='scene 134: When the snow settles, there\'s nothing left except Gray Wolf\'s cold remains and Ivan\'s cries, as he is carried by Koschei back into the tower. Alena is devastated. She has lost her brother and her loyal ally who had become her friend.',
        animations = function()
            transition.to(wolfDown, {y=0, time=1000})
            AlenaCrySNR.isVisible = true AlenaCrySNR.x=280
            transition.to(AlenaCrySNR, {y=0, time=1000})
            transition.to(icyCurtain, {y=-1000, time=1000, delay=500})
            snowFalling(1,1000)
        end,
        animationComplete = function()
            snowFall.isVisible = false snowFall2.isVisible = false
            wolfDown.y=0
            AlenaCrySNR.x=280 AlenaCrySNR.y=0
            icyCurtain.y=-1000
        end,
        --Sound: Alena Cry
        soundEffect = 'girlCry.mp3'
    }

    scenes[135] = {
        sName = 135,
        selection = {
            [1] = {'What to do...', 139}
        },
        text='scene 135: When the snow settles there\'s nothing left except the mortally wounded Alena, who couldn\'t defend herself from Koschei, and the echo of Ivan\'s cries, as he is carried back into the tower. Gray Wolf is devastated. He couldn\'t help his companion, so he howls and wails.',
        animations = function()
            transition.to(alenaDown, {y=-20, time=1000})
            WolfSit.xScale=-1 WolfSit.x=450 WolfSit.isVisible = true WolfSit.y=0
            transition.to(icyCurtain, {y=-1000, time=1000, delay=1000})
            snowFalling(1,1000)
        end,
        animationComplete = function()
            snowFall.isVisible = false snowFall2.isVisible = false
            alenaDown.y=-20
            WolfSit.xScale=-1 WolfSit.x=450 WolfSit.y=0
            icyCurtain.y=-1000
        end,
        --Sound: Wolf Cry
        soundEffect = 'dogHowl.mp3'
    }

    scenes[136] = {
        sName = 136,
        selection = {
            [1] = {'What to do...', 140}
        },
        text='scene 136: Fast runs the horse of Vasilisa the Beautiful. She didn’t forget Alena’s kindness and now hurries her aid. But she is too late. When the snow settles, there’s nothing left except the mortally wounded Alena and Gray Wolf’s cold remains. ',
        animations = function()
            alenaDown.x=500
            wolfDown.x=300
            VasilisaS.isVisible = true VasilisaS.y=-50 VasilisaS.x=370
            transition.to(alenaDown, {y=0, time=1000})
            transition.to(wolfDown, {y=0, time=1000})
            transition.to(icyCurtain, {y=-1000, time=1000, delay=1000})
            snowFalling(1,1000)
        end,
        animationComplete = function()
            snowFall.isVisible = false snowFall2.isVisible = false

            alenaDown.y=0 alenaDown.x=500
            wolfDown.y=0 wolfDown.x=300
            VasilisaS.x=370 VasilisaS.y=-50
            icyCurtain.y=-1000
        end
    }

    scenes[137] = {
        sName = 137,
        selection = {
            [1] = {'What to do...', 141}
        },
        text='scene 137: Fast flies the bird of prey. And Alena\'s uncle, the shape-shifting wizard, flies even faster, but he is too late. When the snow settles, there\'s nothing left except the mortally wounded Alena and Gray Wolf\'s cold remains.',
        animations = function()
            alenaDown.x=500
            wolfDown.x=300
            loadBrothers('Raven')
            BrotherS.y=200 BrotherS.x=400
            transition.to(alenaDown, {y=0, time=1000})
            transition.to(wolfDown, {y=0, time=1000})
            transition.to(icyCurtain, {y=-1000, time=1000, delay=1000})

            snowFalling(1,1000)
        end,
        animationComplete = function()
            snowFall.isVisible = false snowFall2.isVisible = false
            alenaDown.y=0 alenaDown.x=500
            wolfDown.y=0 wolfDown.x=300
            icyCurtain.y=-1000
            BrotherS.x=400 BrotherS.y=200
        end
    }

    scenes[138] = {
        sName = 138,
        follows = 144,
        clearSelection = true,
        text='scene 138: "The springs!" remembers Alena. "The springs that Bear talked about! But only Crows know where they are." \nAlena looks around and soon notices two crows sitting on a tree branch. "I need to catch them and make them bring me some of those waters!"',
        animations = function() loadCrows() end,
        animationComplete = function()
            crowSmall.y = -170
            crowBig.y = 0
        end,
        --Sound: Crows flying in
        soundEffect = 'wingsFlap1.mp3'
    }

    scenes[139] = {
        sName = 139,
        follows = 142,
        clearSelection = true,
        text='scene 139: "The springs!" remembers Gray Wolf. "The springs that Bear talked about! But only Crows know where they are." \nGray Wolf looks around and soon notices two crows sitting on a tree branch. "I need to catch them and make them bring me some of those waters!"',
        animations = function() loadCrows() end,
        animationComplete = function()
            crowSmall.y = -170
            crowBig.y = 0 
        end,
        --Sound: Crows flying in
        soundEffect = 'wingsFlap1.mp3'
    }

    scenes[140] = {
        sName = 140,
        follows = 145,
        clearSelection = true,
        text='scene 140: Vasilisa looks around and soon notices two crows sitting on a tree branch. \n"Сaw! Caw!" - says the older crow. "Poor creatures, dying so young and yet so full of life. If Vasilisa only had some water of death and some water of life, Vasilisa could revive them both."',
        animations = function() loadCrows() end,
        animationComplete = function()
            crowSmall.y = -170
            crowBig.y = 0
        end,
        --Sound: Crows flying in
        soundEffect = 'wingsFlap1.mp3'
    }

    scenes[141] = {
        sName = 141,
        follows = 143,
        clearSelection = true,
        text='scene 141: Shape-shifting wisard looks around and soon notices two crows sitting on a tree branch. \n"Сaw! Caw!" - says the older crow. "Poor creatures, dying so young and yet so full of life. If Alena\'s uncle only had some water of death and some water of life, he could revive them both."',
        animations = function() loadCrows() end,
        animationComplete = function()
            crowSmall.y = -170
            crowBig.y = 0
        end,
        --Sound: Crows flying in
        soundEffect = 'wingsFlap1.mp3'
    }

    scenes[142] = {
        sName = 142,
        follows = 146,
        text='scene 142: In the twinkling of an eye Gray Wolf turns himself into a crow and flies up to the tree branch. He catches the young crow and doesn’t let go until the old one promises to bring him some water of death. ',
        animations = function()
            transition.to(MagicWolf, {y=-50, time=700, delay=500})
            transition.to(WolfSit, {alpha=0, time=500, delay=1000})
            transition.to(ShiftRaven, {alpha=1, time=500, delay=1000})
            transition.to(MagicWolf, {y=-600, time=700, delay=2000})
            transition.to(ShiftRaven, {y=-130, x=150, time=500, delay=2700})
            transition.to(crowSmall, {y=-190, x=250, time=500, delay=3000})
            transition.to(crowBig, {y=-200, x=1200, time=1500, delay=3500})
        end,
        animationComplete = function()
            WolfSit.alpha=0
            MagicWolf.y=-600
            ShiftRaven.y=-130 ShiftRaven.x=150 ShiftRaven.alpha=1
            crowSmall.y=-190 crowSmall.x=250
            crowBig.y=-200 crowBig.x=1200
        end,
        --Sound: wolf Magic
        soundEffect = 'wolfMagic.mp3'
    }

    scenes[143] = {
        sName = 143,
        follows = 152,
        text='scene 143: In the twinkling of an eye a shape-shifting wisard turns himself into a raven and flies up to the tree branch. He catches the young crow and doesn’t let go until the old one promises to bring him some water of death. ',
        animations = function()
            transition.to(MagicBrother,{y=600, time=2000, delay=500})
            transition.to(BrotherS, {alpha=0, time=700, delay=1000})
            transition.to(ShiftRaven, {alpha=1, time=700, delay=1500})
            transition.to(ShiftRaven, {y=-130, x=150, time=500, delay=2700})
            transition.to(crowSmall, {y=-190, x=250, time=500, delay=3500})
            transition.to(crowBig, {y=-200, x=1200, time=1500, delay=4000})
        end,
        animationComplete = function()
            MagicBrother.y=600
            BrotherS.alpha=0
            ShiftRaven.alpha=1 ShiftRaven.y=-130 ShiftRaven.x=150
            crowSmall.y=-190 crowSmall.x=250
            crowBig.y=-200 crowBig.x=1200
        end
    }
    scenes[144] = {
        sName = 144,
        changeFlow = function() 
            if choices.brother=='Eagle' then loadBrothers('Eagle')
            else loadBrothers('Falcon') end
        end,
        follows = 148,
        text='scene 144: “Uncle, you promised me your help!” cries Alena and soon the big'..choices.brother..' appears in front of her. She tells him her misfortunes. Then her uncle catches the young crow and doesn’t let go until the old one promises to bring him some water of death. ',
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

    scenes[145] = {
        sName = 145,
        follows = 150,
        text='scene 145: “I need to catch this little crow!” thinks Vasilisa and starts singing. The young crow listens spellbound to her song and flies closer. She catches him and doesn’t let go until the older one promises to bring her some water of death. ',
        animations = function()
            VasilisaS.x=370 
            VasilisaPlea.x=350 VasilisaPlea.isVisible = true VasilisaPlea.alpha=0 VasilisaPlea.y=-100
            transition.to(VasilisaS, {alpha=0, time=500, delay=500})
            transition.to(VasilisaPlea, {alpha=1, time=700, delay=700})
            transition.to(crowSmall, {x=350, time=1000, delay=1500})
            transition.to(crowBig, {y=-200, x=1200, time=1500, delay=3000})
        end,
        animationComplete = function()
            VasilisaS.alpha=0 VasilisaS.isVisible = false VasilisaS.x=370 VasilisaS.y=-50
            VasilisaPlea.x=350 VasilisaPlea.y=-100 VasilisaPlea.isVisible = true VasilisaPlea.alpha=1
            crowSmall.x=350
            crowBig.y=-200 crowBig.x=1200
        end,
        --Sound: Vasilisa sings
        soundEffect = 'girlSings.mp3'
    }

    scenes[146] = {
        sName = 146,
        follows = 147,
        text='scene 146: After a while the crow returns and with one splash of the water of death, Alena’s wounds start to disappear. “Now go and bring me some water of life. Then I’ll release your little crow,” says Gray Wolf and the old crow flies away.',
        animations = function()
            crowBlackMagic(400)
        end,
        animationComplete = function()
            BlackWater.alpha=0
            crowBig.y=0 crowBig.x=-100
        end,
        --Sound: Water magic
        soundEffect = 'splashMagic.mp3'
    }

    scenes[147] = {
        sName = 147,
        follows = 154,
        text='scene 147: Time passes and finally, the old crow returns. With one splash of the water of life,  Alena opens her eyes. Gray Wolf frees the little crow, as promised. But Ivan is still in Koschei’s clutches, and there’s no winning in any fight with him.',
        animations = function() 
            AlenaNoRibbon.x=500 AlenaNoRibbon.y=0 AlenaNoRibbon.isVisible = true AlenaNoRibbon.alpha=0 
            crowWhiteMagic(400)

            transition.to(crowSmall, {x=200, y=-170, time=500, delay=4000})
            transition.to(alenaDown, {alpha=0, time=500, delay=3500})
            transition.to(AlenaNoRibbon, {alpha=1, time=500, delay=3500})

            transition.to(foregroundIce, {alpha=0, time=1000, delay=2000})
        end,
        animationComplete = function()
            BlueWater.alpha=0
            WhiteMagic.y=-800
            crowSmall.x=200 crowSmall.y=-170
            alenaDown.alpha=0
            AlenaNoRibbon.x=500 AlenaNoRibbon.y=230 
            foregroundIce.alpha=0
        end,
        --Sound: Water magic
        soundEffect = 'splashMagic2.mp3'
    }

    scenes[148] = {
        sName = 148,
        follows = 149,
        text='scene 148: After a while the crow returns and with one splash of the water of death, Wolf’s wounds start to disappear. “Now go and bring me some water of life. Then I’ll release your little crow,” says Alena and the old crow flies away.',
        animations = function() crowBlackMagic(350) end,
        animationComplete = function()
            BlackWater.alpha=0
            crowBig.y=0 crowBig.x=-100
        end,
        --Sound: Water magic
        soundEffect = 'splashMagic.mp3'
    }

    scenes[149] = {
        sName = 149,
        follows = 154,
        text='scene 149: Time passes and finally, the old crow returns. With one splash of the water of life, Gray Wolf opens his eyes. Alena frees the little crow, as promised. But Ivan is still in Koschei’s clutches, and there’s no winning in any fight with him.',
        animations = function()
            WolfSit:toFront() WolfSit.x=400 WolfSit.isVisible=true WolfSit.alpha=0 WolfSit.y=20
            AlenaNoRibbon:toFront() AlenaNoRibbon.x=340  AlenaNoRibbon.y=30 AlenaNoRibbon.isVisible=true AlenaNoRibbon.alpha=0
            crowWhiteMagic(350)
            transition.to(wolfDown, {alpha=0, time=500, delay=3000})
            transition.to(WolfSit, {alpha=1, time=500, delay=3200})
            transition.to(crowSmall, {x=200, y=-170, time=500, delay=3000})
            transition.to(AlenaCrySNR, {alpha=0, time=500, delay=3200})
            transition.to(AlenaNoRibbon, {alpha=1, time=500, delay=3200})
            transition.to(foregroundIce, {alpha=0, time=1000, delay=2000})
        end,
        animationComplete = function()
            BlueWater.alpha=0
            WhiteMagic.y=-800
            crowBig.y=0 crowBig.x=200
            wolfDown.alpha = 0
            WolfSit:toFront() WolfSit.y=20 WolfSit.x=400 WolfSit.isVisible=true WolfSit.alpha=1
            AlenaCrySNR.alpha = 1 AlenaCrySNR.isVisible=false
            AlenaNoRibbon:toFront() AlenaNoRibbon.x=340  AlenaNoRibbon.y=30 AlenaNoRibbon.isVisible=true AlenaNoRibbon.alpha=1
            crowSmall.x=200 crowSmall.y=-170
            foregroundIce.alpha=0
        end,
        --Sound: Water magic
        soundEffect = 'splashMagic2.mp3'
    }

    scenes[150] = {
        sName = 150,
        follows = 151,
        text='scene 150: After a while the crow returns and with one splash of the water of death, Alena\'s and Wolf\'s wounds start to disappear. “Now go and bring me some water of life. Then I’ll release your little crow,” says Vasilisa and the old crow flies away.',
        animations = function() 
            crowBlackMagic(330)
        end,
        animationComplete = function()
            BlackWater.alpha=0
            crowBig.y=0 crowBig.x=-100
        end,
        --Sound: Water magic
        soundEffect = 'splashMagic.mp3'
    }

    scenes[151] = {
        sName = 151,
        follows = 154,
        text='scene 151: Time passes and finally, the old crow returns. With one splash of the water of life, Alena and Wolf open their eyes. Vasilisa frees the little crow, as promised. But Ivan is still in Koschei’s clutches, and there’s no winning in any fight with him.',
        animations = function()
            crowWhiteMagic(330)

            WolfSit:toFront() WolfSit.x=400 WolfSit.isVisible=true WolfSit.alpha=0 WolfSit.y=20
            AlenaNoRibbon:toFront() AlenaNoRibbon.x=340  AlenaNoRibbon.y=30 AlenaNoRibbon.isVisible=true AlenaNoRibbon.alpha=0
            transition.to(AlenaNoRibbon, {alpha=1, time=500, delay=3000})
            transition.to(WolfSit, {alpha=1, time=500, delay=3000})

            VasilisaS.isVisible=true
            
            crowSmall.xScale = -1
            crowSmall.x=390
           
            transition.to(wolfDown, {alpha=0, time=500, delay=3500})
            transition.to(alenaDown, {alpha=0, time=500, delay=3500})

            transition.to(crowSmall, {x=200, y=-170, time=500, delay=4000})
            transition.to(foregroundIce, {alpha=0, time=1000, delay=1000})

            transition.to(VasilisaPlea, {alpha=0, time=700, delay=3000})
            transition.to(VasilisaS, {alpha=1, time=700, delay=3000})
        end,
        animationComplete = function()
            BlueWater.alpha=0
            WhiteMagic.y=-800
            crowBig.y=0 crowBig.x=200
            AlenaNoRibbon:toFront() AlenaNoRibbon.x=340  AlenaNoRibbon.y=30 AlenaNoRibbon.isVisible=true AlenaNoRibbon.alpha=1
            crowSmall.xScale = -1 crowSmall.x=200
            WolfSit:toFront() WolfSit.x=400 WolfSit.isVisible=true WolfSit.alpha=1 WolfSit.y=20
            wolfDown.alpha=0 
            alenaDown.alpha=0
            VasilisaS.alpha=1 VasilisaS.isVisible = false
            VasilisaPlea.isVisible = false
            foregroundIce.alpha=0
        end,
        --Sound: Water magic
        soundEffect = 'splashMagic2.mp3'
    }

    scenes[152] = {
        sName = 152,
        follows = 153,
        text='scene 152: After a while the crow returns and with one splash of the water of death, Alena\'s and Wolf\'s wounds start to disappear. “Now go and bring me some water of life. Then I’ll release your little crow,” says Alena\'s uncle and the old crow flies away.',
        animations = function() crowBlackMagic(330) end,
        animationComplete = function()
            BlackWater.alpha=0
            crowBig.y=0 crowBig.x=-100
        end,
        --Sound: Water magic
        soundEffect = 'splashMagic.mp3'
    }

    scenes[153] = {
        sName = 153,
        follows = 154,
        text='scene 153: Time passes and finally, the old crow returns. With one splash of the water of life, Alena and Wolf open their eyes. Uncle frees the little crow, as promised. But Ivan is still in Koschei’s clutches, and there’s no winning in any fight with him.',
        animations = function() 
            crowWhiteMagic(330)
            AlenaNoRibbon.x=600
            WolfSit:toFront() WolfSit.x=400 WolfSit.isVisible=true WolfSit.alpha=0 WolfSit.y=20
            AlenaNoRibbon:toFront() AlenaNoRibbon.x=340  AlenaNoRibbon.y=30 AlenaNoRibbon.isVisible=true AlenaNoRibbon.alpha=0
            transition.to(AlenaNoRibbon, {alpha=1, time=500, delay=3200})
            transition.to(WolfSit, {alpha=1, time=500, delay=3200})

            transition.to(wolfDown, {alpha=0, time=500, delay=3500})
            transition.to(alenaDown, {alpha=0, time=500, delay=3500})
            transition.to(crowSmall, {x=200, y=-170, time=500, delay=4000})
        end,
        animationComplete = function()
            BlueWater.alpha=0
            WhiteMagic.y=-800
            WolfSit:toFront() WolfSit.x=400 WolfSit.isVisible=true WolfSit.alpha=1 WolfSit.y=20
            AlenaNoRibbon:toFront() AlenaNoRibbon.x=340  AlenaNoRibbon.y=30 AlenaNoRibbon.isVisible=true AlenaNoRibbon.alpha=1
            wolfDown.alpha=0
            alenaDown.alpha=0
        end,
        --Sound: Water magic
        soundEffect = 'splashMagic2.mp3'
    }

    scenes[154] = {
        sName = 154,
        follows = 155,
        text='scene 154: “Сaw! You kept your word, so I’ll help you once more,” says the old crow. “I don’t know how to kill Koschei, but they say Baba Yaga knows how. That’s why Koschei hates her so much. Сaw! But remember, she is as dangerous as he is.”',
        animations = function()
            WolfSit:toFront() WolfSit.x=400 WolfSit.isVisible=true WolfSit.alpha=1 WolfSit.y=20
            AlenaNoRibbon:toFront() AlenaNoRibbon.x=340  AlenaNoRibbon.y=30 AlenaNoRibbon.isVisible=true AlenaNoRibbon.alpha=1
            wolfDown.alpha=0
            alenaDown.alpha=0
            crowSmall.x=200 crowSmall.y=-170
            crowBig.y=0 crowBig.x=-100

            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(CrowD, 200, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }

    scenes[155] = {
        sName = 155,
        follows = 156,
        text='scene 155: Alena and Grey Wolf thank their helper and continue on their journey.',
        animations = function()
            transDialogueBack()
        end,
        animationComplete = function()
            removeCurtain()
            removeCrows()
        end
    }

-------- Act 5 Scenes 156 - 163
    scenes[156] = {
        sName = 156,
        setStage = 'setYagaYard',
        openingAnimation = {
            [1] = 'background12.png', 
            [2] = 'foreground8.png'
        },
        follows = 157,
        text='scene 156: The old witch, called Baba Yaga, lives in a hut set high on fowl\'s legs standing in the thick of the forest. They say she eats uninvited guests and uses their bones for her fence.',
        animations = function()
            foreground.y=0 
            loadYagaForest()
            AlenaOnWolfNoRibbon.x=500 AlenaOnWolfNoRibbon.y=-600 AlenaOnWolfNoRibbon.isVisible = true AlenaOnWolfNoRibbon.alpha=1
            transition.to(AlenaOnWolfNoRibbon, {y=0, time=1000, delay=4000})
        end,
        animationComplete = function()
            shadowLayer12.alpha=1
            foreground.y=0 
            landscape1.x=0
            landscape2.x=0
            landscape3.y=0
            AlenaOnWolfNoRibbon.isVisible = true AlenaOnWolfNoRibbon.alpha=1 AlenaOnWolfNoRibbon.x=500 AlenaOnWolfNoRibbon.y=0
        end,
        -- Sound: Opening
        soundEffect = 'opening.mp3',
    }

    scenes[157] = {
        sName = 157,
        follows = 158,
        text='scene 157: The road to Baba Yaga’s hut is long and dangerous, but nothing prepared Alena for the picture she sees upon arrival.',
        animations = function() 
            roadToYaga() 
        end,
        animationComplete = function()
            landscape1.x=-680
            landscape2.x=-1100
            landscape3.x=-1100
            hutFence.x=480
            hutWindow.y=0
        end,
        --Sound: night Owls
        soundEffect = 'nighrOwls1.mp3'
    }

    scenes[158] = {
        sName = 158,
        follows = 159,
        text='scene 158: It is sunset, and all the trees are red and orange, exactly the same as the wooden fence crowned with human skulls surrounding the entire hut.',
        animations = function()
            glowEyesFlicker(500, glowEyes)
            transition.to(redSky, {alpha=1, time=1000})
        end,
        animationComplete = function()
            redSky.alpha=1
            glowEyes.alpha=1
        end,
        --Sound: night Owls
        soundEffect = 'nighrOwls2.mp3'
    }

    scenes[159] = {
        sName = 159,
        follows = 160,
        text='scene 159: The posts are spaced so tightly that only a thin girl can squeeze through.',
        animations = function()
            WolfSit.xScale=-1 WolfSit.y=0 WolfSit.x=300 WolfSit.alpha=0 WolfSit.isVisible = true
            AlenaNoRibbon.y=0 AlenaNoRibbon.x=320 AlenaNoRibbon.alpha=0  AlenaNoRibbon.isVisible = true
            transition.to(AlenaOnWolfNoRibbon, {alpha=0, time=1000})
            transition.to(WolfSit, {alpha=1, time=1000, delay=1000})
            transition.to(AlenaNoRibbon, {alpha=1, time=1000, delay=1000})
        end,
        animationComplete = function()
            AlenaOnWolfNoRibbon.isVisible = false AlenaOnWolfNoRibbon.alpha=0
            WolfSit.x=300 WolfSit.alpha=1 WolfSit.isVisible = true
            AlenaNoRibbon.x=320 AlenaNoRibbon.alpha=1  AlenaNoRibbon.isVisible = true
        end,
        --Sound: night Owls
        soundEffect = 'nighrOwls3.mp3'
    }

    scenes[160] = {
        sName = 160,
        follows = 161,
        text='scene 160: "I can\'t go any further," says Grey Wolf. "You\'ll have to face Baba Yaga on your own."',
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(Wolf, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }

    scenes[161] = {
        sName = 161,
        follows = 162,
        text='scene 161: Alena shudders at this thought, but there’s no other option, so she slips in and walks toward the hut on fowl\'s legs. “Little hut, O little hut! Turn your back to the trees, your face to me!” pleads Alena.',
        animations = function() 
            transDialogueBack()
            transition.to(AlenaNoRibbon, {x=600, time=1000, delay=1000})
        end,
        animationComplete = function()
            removeCurtain()
            AlenaNoRibbon.x=600
        end
    } 

    scenes[162] = {
        sName = 162,
        follows = 163,
        text='scene 162: Slowly the hut turns and bows down so Alena can enter.',
        animations = function()
            transition.to(hutWindow, {alpha=0, time=1000, delay=1000})
            transition.to(hutDoor, {y=0, time=1000, delay=500})
        end,
        animationComplete = function()
            hutWindow.alpha=0
            hutDoor.y=0
        end,
        --Sound: night birds
        soundEffect = 'hutSqueak.mp3'
    }

-------- Act 6 Scenes 163 - 194

    scenes[163] = {
        sName = 163,
        setStage='setYagaHut',
        openingAnimation = {
            [1] = 'background13.png', 
            [2] = 'foreground9.png'
        },
        follows = 164,
        text='scene 163: The moment she steps over the threshold, Baba Yaga riding in a mortar, wielding a pestle, flies into the doorway.',
        animations = function()
            loadYagaHut()
            glowEyesFlicker(500, glowEyes2)
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
        end,
        --Sound: yaga flies
        soundEffect = 'yagaFlight.mp3'
    }

    scenes[164] = {
        sName = 164,
        follows = 165,
        text='scene 164: "Fie-Fie-Fie, I can sense a human stench! Who is here? Show yourself, uninvited guest!" screams Baba Yaga.',
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(YagaD, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
            AlenaNoRibbon.y=20 AlenaNoRibbon.x=800 AlenaNoRibbon.isVisible = true
            YagaS.y=0 YagaS.x=200 YagaS.isVisible = true
            hutMortar.y=150
        end
    }

    scenes[165] = {
        sName = 165,
        selection = {
            [1] = {'I am Alena...', 166},
        },
        text='scene 165: The last sunlight is fading away. The hollow eye sockets of the skulls start to glow yellow. Alena, hungry and tired, steps closer to Baba Yaga.',
        animations = function()
            transDialogueBack()
            transition.to(AlenaNoRibbon, {x=700, time=1000, delay=1000})
            glowEyesFlicker(700, glowEyes2)
            glowEyesFlicker(900, glowEyes3)
            transition.to(getsDarker, {alpha=0.6, time=2000})
        end,
        animationComplete = function()
            removeCurtain()
            AlenaNoRibbon.x=700
            getsDarker.alpha=0.6
            glowEyes3.alpha=0.6
            glowEyes2.alpha=0.6
        end
    }

    scenes[166] = {
        sName = 166,
        clearSelection = true,
        follows = 167,
        changeFlow = function() 
            if choices.bless==true then scenes[166].follows = 167
            else scenes[166].follows = 171 end
        end,
        text='scene 166: "My name is Alena, Nana. Koschei the Deathless took my brother. Koshei is immortal, so he keeps his death hidden far away. I need to find it. Can you help me?"',
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(AlenaNR, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }

    scenes[167] = {
        sName = 167,
        follows = 168,
        text='scene 167: "I can help you. Or I can eat you and make a necklace from your bones. Let me look at you a bit closer." Baba Yaga looks at Alena closely and in the next second, screams as if set on fire.',
        animations = function()
            transDialogueBack()
            transition.to(AlenaNoRibbon, {x=500, time=1000, delay=1000})
        end,
        animationComplete = function()
            removeCurtain()
            AlenaNoRibbon.x=500
        end
    }

    scenes[168] = {
        sName = 168,
        follows = 169,
        text='scene 168: "Fie-Fie-Fie, I can sense your mother\'s blessing on you. There\'s no place for a blessed child in my hut!" Baba Yaga tries to push Alena away, but then takes pity on her. ',
        animations = function() 
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(YagaD, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }

    scenes[169] = {
        sName = 169,
        follows = 170,
        text='scene 169: "Behind the dark forest, there\'s a black mountain. On this mountain, there\'s an old oak. On the oak, there\'s a golden chain with a coffer on it."',
        animations = function() 
            transDialogueBack()
            glowEyesFlicker(700, glowEyes2)
            glowEyesFlicker(900, glowEyes3)
            transition.to(getsDarker, {alpha=0.6, time=2000})
        end,
        animationComplete = function()
            removeCurtain()
            getsDarker.alpha=0.6
            glowEyes3.alpha=0.6
            glowEyes2.alpha=0.6
        end
    }

    scenes[170] = {
        sName = 170,
        follows = 194,
        text='scene 170: "Inside the coffer there\'s a hare, inside that - a duck. Inside the duck, there\'s an egg enclosing a needle. Koschei\'s death is on the point of it."',
        animations = function()
            glowEyesFlicker(700, glowEyes2)
            glowEyesFlicker(900, glowEyes3)
            transition.to(getsDarker, {alpha=1, time=2000})
        end,
        animationComplete = function()
            getsDarker.alpha=1
            glowEyes3.alpha=1
            glowEyes2.alpha=1
        end
    }

    scenes[171] = {
        sName = 171,
        selection = {
            [1] = {'That\'s rude', 172},
        },
        text='scene 171: "I can help you. Or I can eat you and make a necklace from your bones. Let me look at you a bit close. Nice young girl, so clean, so tasty. But I won\'t eat you yet. First you\'ll serve me!"',
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(YagaD, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }

    scenes[172] = {
        sName = 172,
        clearSelection = true,
        follows = 173,
        text='scene 172: Alena: "Are you always that inhospitable, Nana? No one carries lodging with him, so wash me, feed me, and give me a bed. Then, you can ask all of your questions!"',
        animations = function() 
            hideBigCharacters()
            showDialogueChar(AlenaNR, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }

    scenes[173] = {
        sName = 173,
        follows = 174,
        text='scene 173: Baba Yaga: "You are a brave girl, so I won\'t eat you. Stay here, I\'ll make a bath, cook you a dinner, and tuck you into bed and then, we\'ll talk."',
        animations = function() 
            showDialogueChar(YagaD, 400, 400)
        end,
        animationComplete = function() 
            hideBigCharacters()
            YagaS.xScale = -1  YagaS.x=300
        end
    }

    scenes[174] = {
        sName = 174,
        follows = 175,
        text='scene 174: When Baba Yaga walks away, Alena hears squeaking. There\'s a mouse hole near the window. Alena gets on all fours and spots the little mouse. And just like other animals in this forest, the mouse begins to speak.',
        animations = function()
            transDialogueBack()
            MouseS.isVisible = true MouseS.x=220 MouseS.y=-90 MouseS.alpha=0
            transition.to(YagaS, {x=-100, time=1000, delay=1000})
            transition.to(MouseS, {alpha=1, time=700, delay=2000})
        end,
        animationComplete = function()
            removeCurtain()
            YagaS.x=-100
            MouseS.isVisible = true MouseS.x=220 MouseS.y=-90 MouseS.alpha=1
        end,
        --Sound: mouse
        soundEffect = 'mouseSqueak.mp3'
    }

    scenes[175] = {
        sName = 175,
        selection = {
            [1] = {'Give berries', 176},
            [2] = {'Refuse', 177},
        },
        text='scene 175: Mouse: "Do not grieve, Alena. I can help you, if you give me one of those berries you have in your pocket!" ',
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(MouseD, 400, 400)
        end,
        animationComplete = function()
            MouseS.xScale = -1 MouseS.x=400 AlenaNoRibbon.x=500
        end
    }

    scenes[176] = {
        sName = 176,
        changeFlow = function() choices.berries=true end,
        clearSelection = true,
        follows = 178,
        text='scene 176: Mouse: "Thank you. You are a good girl, and I\'ll help you. Do not believe Baba Yaga! She\'ll light the oven, not to cook for you, but to cook you! I know a way to outsmart her!"',
        animations = function() end,
        animationComplete = function()
        end
    }

    scenes[177] = {
        sName = 177,
        follows = 178,
        clearSelection = true,
        text='scene 177: Mouse: "I thought you were a kind girl, but you are not. But I don\'t want your death on my conscious, so I\'ll help you anyway. Do not believe Baba Yaga! She\'ll light the oven, not to cook for you, but to cook you!"',
        animations = function() end,
        animationComplete = function()
        end
    }

    scenes[178] = {
        sName = 178,
        follows = 179,
        text='scene 178: Mouse: "When she puts you on the oven paddle and shoves you into the stove -  brace your feet against the wall and don\'t let her push you in any further. Hold as firmly as you can. And say that it is not piping hot."',
        animations = function() end,
        animationComplete = function() hideBigCharacters() end
    }
    
    scenes[179] = {
        sName = 179,
        follows = 180,
        text='scene 179: Scared but determined, Alena awaits Baba Yaga’s return. The oven is getting warmer.',
        animations = function() 
            transDialogueBack()
            transition.to(MouseS, {x=-100, time=1000, delay=500})
            transition.to(ovenFire, {alpha=0.5, time=1000, delay=1000}) 
        end,
        animationComplete = function()
            removeCurtain()

            MouseS.x=-100
            ovenFire.alpha=0.5
        end,
        --Sound: fire in the oven
        soundEffect = 'fireInOven.mp3'
    }

    scenes[180] = {
        sName = 180,
        selection = {
            [1] = {'What about you?', 181},
            [2] = {'I\'ll do it', 183},
        },
        text='scene 180: Soon Baba Yaga appears with a huge wooden paddle. "Dear child, please have a seat on this nice, wooden paddle while you tell me your story. I need to measure whether it is long enough for my oven."',
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
        end,
        --Sound: fire in the oven
        soundEffect = 'fireInOven.mp3'
    }

    scenes[181] = {
        sName = 181,
        clearSelection = true,
        follows = 182,
        text='scene 181: Alena: "Why don\'t you do it yourself?"',
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(AlenaNR, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end,
        --Sound: fire in the oven
        soundEffect = 'fireInOven.mp3'
    }

    scenes[182] = {
        sName = 182,
        follows = 183,
        text='scene 182: Baba Yaga: "My bones are too old to get on it. But you are young and flexible, it will be easy for you!"',
        animations = function() 
            showDialogueChar(YagaD, 400, 400)
        end,
        animationComplete = function()
            removeCurtain()
            hideBigCharacters() 
        end,
        --Sound: fire in the oven
        soundEffect = 'fireInOven.mp3'
    }

    scenes[183] = {
        sName = 183,
        follows = 184,
        clearSelection = true,
        text='scene 183: The moment Alena gets on the wooden paddle, Baba Yaga pushes it into the oven. Alena places her feet wide apart and braces herself as firmly as she can.',
        animations = function() 
            AlenaIntoTheOven()
        end,
        animationComplete = function()
            AlenaNoRibbon.alpha=0
            alenaSit.x=750 alenaSit.y=150
            ovenCover.x=700
            paddle.x=790 paddle.y=250 paddle.rotation=-10
        end
    }

    scenes[184] = {
        sName = 184,
        follows = 185,
        text='scene 184: "How are you, my dear child. Are you in the fire yet, is it piping hot?" asks Baba Yaga.',
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(YagaD, 400, 400)
        end,
        animationComplete = function()
            hideBigCharacters()
        end
    }

    scenes[185] = {
        sName = 185,
        follows = 186,
        text='scene 185: "Not really, this paddle is too short and too far from the coals, so I am simply warm and comfortable!"',
        animations = function()
            showDialogueChar(AlenaNR, 400, 400)
        end,
        animationComplete = function()
           hideBigCharacters()
        end
    }

    scenes[186] = {
        sName = 186,
        follows = 187,
        text='scene 186: "Fie-Fie-Fie, it can’t be! You should be in the fire, piping hot!"',
        animations = function()
            showDialogueChar(YagaD, 400, 400)
        end,
        animationComplete = function() hideBigCharacters() end
    }

    scenes[187] = {
        sName = 187,
        follows = 188,
        text='scene 187: "Maybe you measured it wrong, Nana? I am really far from the fire. You should try it yourself, you\'ll see."',
        animations = function()
            showDialogueChar(AlenaNR, 400, 400)
        end,
        animationComplete = function() 
            AlenaNoRibbon.x=300  AlenaNoRibbon.alpha=1
            alenaSit.alpha=0
            YagaS.x=600
            paddle.x=700 paddle.y=500 paddle.rotation=0
        end
    }

    scenes[188] = {
        sName = 188,
        follows = 189,
        text='scene 188: Baba Yaga gets tired of pushing the paddle and pulls it out along with Alena. Perplexed by what happened, Baba Yaga gets on the paddle and orders Alena to push it in. So she does.',
        animations = function()
            transDialogueBack()
            babaInOven()
        end,
        animationComplete = function()
            removeCurtain()
            YagaS.alpha=0
            ovenCover.x=700
            paddle.rotation=-16 paddle.x=790 paddle.y=280
            yagaSit.alpha=0
        end
    }

    scenes[189] = {
        sName = 189,
        follows = 190,
        text='scene 189: "Fie-Fie-Fie, I am on fire! I am piping hot! Pull me back, child, pull me back out!" screams Baba Yaga.',
        animations = function() 
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(YagaD, 400, 400) 
        end,
        animationComplete = function() 
            yagaSit.alpha=0 
            hideBigCharacters()
        end
    }

    scenes[190] = {
        sName = 190,
        follows = 191,
        text='scene 190: "No, I won\'t do that, until you tell me where to find Koschei\'s death!" answers Alena.',
        animations = function()
            showDialogueChar(AlenaNR, 400, 400) 
        end,
        animationComplete = function() 
            hideBigCharacters()
        end
    }

    scenes[191] = {
        sName = 191,
        follows = 192,
        text='scene 191: "Behind the dark forest, there\'s a black mountain. On this mountain, there\'s an old oak. On the oak, there\'s a gold chain with a locket on it."',
        animations = function()
            transDialogueBack()
        end,
        animationComplete = function() removeCurtain() end
    }

    scenes[192] = {
        sName = 192,
        follows = 193,
        text='scene 192: "Inside a locket there\'s a hare, inside that - a duck. Inside the duck, there\'s an egg enclosing a needle. Koschei\'s death is on the point of that needle."',
        animations = function()
            glowEyesFlicker(700, glowEyes2)
            glowEyesFlicker(900, glowEyes3)
            transition.to(getsDarker, {alpha=1, time=2000})
        end,
        animationComplete = function()
            getsDarker.alpha=1
            glowEyes3.alpha=1
            glowEyes2.alpha=1
        end
    }

    scenes[193] = {
        sName = 193,
        follows = 195,
        text='scene 193: Satisfied with the answer, Alena, in a whisper, thanks the mouse and pulls Baba Yaga out of the oven. Baba Yaga is not happy to be outsmarted, but she wishes Alena luck and sends her on her way.',
        animations = function() 
            yagaOutOfOven() 
        end,
        animationComplete = function()end
    }

     scenes[194] = {
        sName = 194,
        follows = 195,
        text='scene 194: Satisfied with the answer, Alena thanks Baba Yaga and leaves the hut on fowl\'s legs.',
        animations = function() 
            transition.to(AlenaNoRibbon, {x=800, delay=500, time=1500})
        end,
        animationComplete = function()end
    }

-------- Act 7 Scenes 195 - 202

    scenes[195] = {
        sName = 195,
        follows = 196,
        setStage = 'setOakMountain',
        openingAnimation = {
            [1] = 'background14.png', 
            [2] = 'foreground14.png'
        },
        text='So Alena\'s journey continues. Gray Wolf awaits her on the other side of the fence, and they race along to the end of the forest. It takes them the better part of the night, and they arrive at the mountain in an early morning mist.',
        animations = function() 
            setOakLevel()
            transition.to(mistLayer, {alpha=1, time=1000, delay=1000})
        end,
        animationComplete = function()
            foreground.y=0
            landscape1.x=0
            landscape2.x=0
            landscape3.x=0
            groundLevel.x=0
            grass.x=0
            shadowLayer14.alpha=1
            AlenaOnWolfNoRibbon.xScale=-1 AlenaOnWolfNoRibbon.x=500 AlenaOnWolfNoRibbon.y=0 AlenaOnWolfNoRibbon.isVisible=true
            mistLayer.alpha=1
        end,
        -- Sound: Opening
        soundEffect = 'opening.mp3',
    }

    scenes[196] = {
        sName = 196,
        changeFlow = function()
            if choices.bear==true then scenes[196].follows = 198 
            else scenes[196].follows = 197  end
        end,
        text='The ancient oak is so big, that clouds are tangled in its branches. The oak grouches as the wind rocks the locket hanging from a gold chain dangling from the massive bough. "How can I get to the locket?" wonders Alena.',
        animations = function() 
            moveToOak() 
            transition.to(mistLayer, {alpha=0.5, time=5000})
            transition.to(WolfS, {x=600, time=1000, delay=5000})
        end,
        animationComplete = function()
            mountain.xScale = 1.0 mountain.yScale = 1.0 mountain.y = 600 mountain.x = 1200
            oldOak.xScale = 1.0 oldOak.yScale = 1.0 oldOak.y = 400 oldOak.x = 1150
            chestClosed.xScale = 1 chestClosed.yScale=1 chestClosed.x=670 chestClosed.y=85
            landscape1.x=-500
            landscape2.x=-600
            landscape3.x=-700
            groundLevel.x=-900
            grass.x=-1076
            AlenaOnWolfNoRibbon.isVisible=false AlenaOnWolfNoRibbon.alpha=0
            AlenaNoRibbon.x=330 AlenaNoRibbon.y=0 AlenaNoRibbon.alpha=1 AlenaNoRibbon.isVisible=true
            WolfS.xScale=-1 WolfS.x=600 WolfS.y=0 WolfS.alpha=1 WolfS.isVisible=true
            mistLayer.alpha=0.5
        end
    }

    scenes[197] = {
        sName = 197,
        follows = 200,
        text='"What would you do without me." says Gray Wolf, turning himself into a huge bear.',
        animations = function() 
            wolfAndTree() 
            transition.to(mistLayer, {alpha=0, time=2000})
        end,
        animationComplete = function()
            BearS.x=700 BearS.y=0 BearS.alpha=1
            WolfS.alpha=0
            MagicWolf.y=-800
            mistLayer.alpha=0
        end,
        --Sound: wolf Magic
        soundEffect = 'wolfMagic.mp3'
    }

    scenes[198] = {
        sName = 198,
        follows = 199,
        text='But just as if hearing her doubts, a big bear appears near the oak.',
        animations = function() bearAndTree() end,
        animationComplete = function()
            BearS.alpha=1 BearS.isVisible=true BearS.x=530 BearS.y=0 BearS.xScale = -1
        end,
        --Sound: Bush shake
        soundEffect = 'bushShake.mp3'
    }

    scenes[199] = {
        sName = 199,
        follows = 201,
        text='"You were kind to me, little one, so let me be of service!" says the bear.',
        animations = function() 
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(Bear, 400, 400)
        end,
        animationComplete = function() hideBigCharacters() end
    }

    scenes[200] = {
        sName = 200,
        follows = 202,
        text='The bear clasps the ancient oak and with a loud roar knocks it down. When the locket touches the ground, it opens, and a brown hare escapes from it.',
        animations = function() 
            wolfPushTree() 
        end,
        animationComplete = function()
            oldOak.rotation=90 oldOak.x=800 oldOak.y=600
            chestClosed.alpha=0
            chestOpen.alpha=1
            WolfS.alpha=1
            BearS.alpha=0
            MagicWolf.y=-800
            hareRun.alpha=1
            hareRun.xScale=-1
        end,
        --Sound: wolf Magic
        soundEffect = 'wolfMagic2.mp3'
    }

    scenes[201] = {
        sName = 201,
        follows = 202,
        text='The bear clasps the ancient oak and with a loud roar knocks it down. When the locket touches the ground, it opens, and a brown hare escapes from it.',
        animations = function() 
            transDialogueBack() 
            bearPushTree() 
        end,
        animationComplete = function()
            removeCurtain()
            oldOak.rotation=90 oldOak.x=800 oldOak.y=600
            chestClosed.alpha=0
            chestOpen.alpha=1
            WolfS.alpha=1
            BearS.alpha=0
            MagicWolf.y=-800
            hareRun.alpha=1
            hareRun.xScale=-1
        end,
        --Sound: oak falls
        soundEffect = 'oakFalls.mp3'
    }

    scenes[202] = {
        sName = 202,
        follows = 203,
        text='"How can I get this hare, he is so fast!" wonders Alena and looks at Gray Wolf.',
        animations = function()
            hareRun.xScale=-1
            transition.to(hareRun, {x=1200, y=0, time=500, delay=1000})
        end,
        animationComplete = function()
            hareRun.x=1100 hareRun.y=0
        end,

    }

    scenes[203] = {
        sName = 203,
        changeFlow = function() 
            if choices.vasilisaGo==true then scenes[203].follows = 204 
            else scenes[203].follows = 205  end
        end,
        text='"What would you do without me." says Gray Wolf and immediately goes after his prey. He catches up with brown hare, but the moment his paws touch the rabbit, a white duck flies out of him.',
        animations = function()
            hareRun.xScale = 1 hareRun.y=-100
            transition.to(WolfS, {x=500, time=500, delay=500})
            transition.to(WolfS, {x=550, time=500, delay=1000})
            transition.to(hareRun, {x=550, time=500, delay=500})
            transition.to(hareRun, {alpha=0, time=1, delay=1000})
            transition.to(duckFly, {alpha=1, time=1, delay=1000})
            transition.to(duckFly, {y=-300, x=300, time=500, delay=1010})
        end,
        animationComplete = function()
            hareRun.alpha=0
            WolfS.x=550
            duckFly.alpha=1 duckFly.y=-300 duckFly.x=300
        end,
        --Sound: Magic of the egg
        soundEffect = 'eggMagic.mp3'
    }

    scenes[204] = {
        sName = 204,
        follows = 206,
        text='"How can I catch a flying duck?" wonders Alena. But her loyal companion doesn’t let her down. Gray Wolf turns himself into a big drake and follows the duck. ',
        animations = function() 
            catchADuck(0) 
            transition.to(AlenaNoRibbon, {x=200, time=1000})
        end,
        animationComplete = function()
            WolfS.alpha=0
            MagicWolf.y=-800
            drake.alpha=1 drake.x=400 drake.y=0
            AlenaNoRibbon.x=200
        end,
        --Sound: wolf Magic
        soundEffect = 'wolfMagic.mp3'
    }

    scenes[205] = {
        sName = 205,
        follows = 206,
        text= '"How can I catch a flying duck?" wonders Alena. And the moment she thinks that, her uncle - '..choices.brother..' appears in the sky. He dives toward the duck.',
        animations = function() catchADuck(1)  end,
        animationComplete = function()
            brotherShape.alpha=1 brotherShape.x=350
        end,
        --Sound: Bird flying in
        soundEffect = 'wingsFlap1.mp3'
    }

    scenes[206] = {
        sName = 206, 
        changeFlow = function() 
            if choices.berries==true then scenes[206].follows = 207 
            else scenes[206].follows = 209  end
        end,
        text='The duck, unable to evade him, lets out an egg. It falls down into a field of tall grass. "How can I find the egg in all this green?" thinks Alena. ',
        animations = function()
            transition.to(brotherShape, {x=200, y=-200, time=1000})
            transition.to(duckFly, {x=200, y=-500, time=1000})
            transition.to(drake, {x=200, y=-300, time=1000})
            transition.to(eggWhole, {alpha=1, time=10, delay=500})
            transition.to(eggWhole, {y=600, time=1000, delay=500})
        end,
        animationComplete = function()
            eggWhole.alpha=1 eggWhole.y=600
            drake.x=200 drake.y=-300
            duckFly.x=200 duckFly.y=-500
            brotherShape.x=200 brotherShape.y=-200
        end,
        --Sound: Magic of the egg
        soundEffect = 'eggMagic.mp3'
    }

    scenes[207] = {
        sName = 207,
        follows = 208,
        text='Then she hears squeaking.',
        animations = function()
            WolfS.alpha=1 WolfS.isVisible = true WolfS.x=650
            MouseS.y=-130 MouseS.x=600 MouseS.alpha=1 MouseS.isVisible=true MouseS.xScale=-1
            transition.to(MouseS, {x=500, time=1000}) 
        end,
        animationComplete = function()
            MouseS.y=-130 MouseS.x=500 MouseS.alpha=1 MouseS.isVisible=true
        end,
        --Sound: mouse
        soundEffect = 'mouseSqueak.mp3'
    }

    scenes[208] = {
        sName = 208,
        follows = 211,
        text='"You helped me and now, I’ll help you!" says the mouse she met at Baba Yaga’s hut jumping into the grass.',
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(MouseD, 400, 400) 
        end,
        animationComplete = function() 
            MouseS.xScale=-1 MouseS.x=670
            eggWhole.alpha=1 eggWhole.y=350 eggWhole.x=470
            AlenaNoRibbon.x=300
        end
    }

    scenes[209] = {
        sName = 209,
        follows = 210,
        text='“What would you do without me.” says Gray Wolf and turns himself into a mouse and jumps into the grass. For a moment, all Alena can hear is the moaning of the wind.',
        animations = function() 
            MouseS.xScale = -1 MouseS.isVisible = true MouseS.alpha=0 MouseS.x=600 MouseS.y=-100 MouseS:toFront()
            WolfS.alpha=1 WolfS.isVisible = true WolfS.x=650
            transition.to(MagicWolf, {y=0, time=700, delay=500})
            transition.to(WolfS, {alpha=0, time=700, delay=1000})
            transition.to(MouseS, {alpha=1, time=700, delay=1500})
            transition.to(MouseS, {x=0, time=700, delay=3500})
            transition.to(MagicWolf, {y=-800, time=700, delay=1500})
        end,
        animationComplete = function()
            MouseS.xScale = -1
            WolfS.alpha=0 WolfS.x=550
            MagicWolf.y=-800
            MouseS.x=670 MouseS.alpha=1 
            eggWhole.y=350 eggWhole.x=470

        end,
        --Sound: wolf Magic
        soundEffect = 'wolfMagic.mp3'
    }

    scenes[210] = {
        sName = 210,
        follows = 212,
        text='"Here you go!" says Gray Wolf in the form of the mouse offering Alena the precious egg. ',
        animations = function()
            AlenaHolding.x=300 AlenaHolding.y=0 AlenaHolding.alpha=0 AlenaHolding.isVisible=true
            transition.to(MouseS, {x=600, time=700, delay=500})
            transition.to(AlenaNoRibbon, {x=300, time=700, delay=500})
            transition.to(eggWhole, {x=400, time=700, delay=500})
            transition.to(eggWhole, {x=340, y=260, time=700, delay=1500})
            transition.to(AlenaNoRibbon, {alpha=0, time=500, delay=2000})
            transition.to(AlenaHolding, {alpha=1, time=700, delay=2000})

        end,
        animationComplete = function()
            WolfS.alpha=1 WolfS.x=550 WolfS.y=0
            MouseS.alpha=0
            MagicWolf.y=-800
            eggWhole.x=340 eggWhole.y=260
            AlenaNoRibbon.alpha=0
            AlenaHolding.x=300 AlenaHolding.y=0 AlenaHolding.alpha=1 AlenaHolding.isVisible=true
        end
    }

    scenes[211] = {
        sName = 211,
        follows = 212,
        text='"Here you go!" says the mouse offering Alena the precious egg. ',
        animations = function() 
            transDialogueBack()
            AlenaHolding.x=300 AlenaHolding.y=0 AlenaHolding.alpha=0 AlenaHolding.isVisible=true
            transition.to(MouseS, {x=600, time=700, delay=500})
            transition.to(AlenaNoRibbon, {x=300, time=700, delay=500})
            transition.to(eggWhole, {x=400, time=700, delay=500})
            transition.to(eggWhole, {x=340, y=260, time=700, delay=1500})
            transition.to(AlenaNoRibbon, {alpha=0, time=500, delay=2000})
            transition.to(AlenaHolding, {alpha=1, time=700, delay=2000})
        end,
        animationComplete = function()
            WolfS.alpha=1 WolfS.x=550 WolfS.y=0
            MouseS.alpha=1 MouseS.isVisible=false
            MagicWolf.y=-800
            eggWhole.x=340 eggWhole.y=260
            AlenaNoRibbon.alpha=0
            AlenaHolding.x=300 AlenaHolding.y=0 AlenaHolding.alpha=1 AlenaHolding.isVisible=true
        end
    }

    scenes[212] = {
        sName = 212,
        follows = 213,
        text='A thunderstorm is forming on the horizon, as Alena breaks the egg and pulls out a shining needle. Koschei the Deathless appears in front of her and with him, the sky blackens, and the ground shakes. ',
        animations = function()
            transition.to(eggWhole, {alpha=0, time=700, delay=500})
            transition.to(eggBroken, {alpha=1, time=700, delay=500})
            transition.to(lightningLayer, {alpha=1, time=10, delay=1000})
            transition.to(lightningLayer, {alpha=0, time=1000, delay=2500})
            transition.to(oldOak, {alpha=0, time=10, delay=1500})
            transition.to(chestOpen, {alpha=0, time=10, delay=1500})
            transition.to(mountain, {alpha=0, time=10, delay=1500})
            transition.to(koshAttack, {y=0, time=1000, delay=1500})
            transition.to(iceLayer, {alpha=0.5, time=2000, delay=1500}) 
        end,
        animationComplete = function()
            eggWhole.alpha=0
            eggBroken.alpha=1
            lightningLayer.alpha=0
            oldOak.alpha=0
            chestOpen.alpha=0
            mountain.alpha=0
            koshAttack.y=0
            iceLayer.alpha=0.5
        end,
        --Sound: thunder 
        soundEffect = 'thunderBolt.mp3'
    }

    scenes[213] = {
        sName = 213,
        follows = 214,
        text='Birds in the forest stop singing. Hoarfrost begins to spread across the green grass starting from his feet. The leaves on the trees freeze when he breathes on them.',
        animations = function() 
            transition.to(iceLayer, {alpha=1, time=2000, delay=500}) 
            transition.to(foregroundNew, {alpha=0.8, time=2000, delay=1000})  
        end,
        animationComplete = function()
            iceLayer.alpha=1
            foregroundNew.alpha=1
            eggBroken.alpha=0
        end,
        --Sound: Koschei wind 
        soundEffect = 'windKoschei.mp3'
    }
    
    scenes[214] = {
        sName = 214,
        follows = 215,
        text='But the moment Koschei sees the needle in Alena’s hand, the storm disappears.',
        animations = function() 
            transition.to(iceLayer, {alpha=0, time=2000, delay=500}) 
            transition.to(foregroundNew, {alpha=0, time=2000, delay=1000})
            transition.to(needle, {alpha=1, time=1000, delay=1000})
            transition.to(koshPleaNC, {alpha = 1, time=700, delay=1000})
            transition.to(koshAttack, {alpha = 0, time=700, delay=1000})
            transition.to(skyBright, {alpha=0.5, time=1000, delay=1000})
            transition.to(landscape1Light, {alpha=0.5, time=1000, delay=1000})
            transition.to(landscape2Light, {alpha=0.5, time=1000, delay=1000})
            transition.to(landscape3Light, {alpha=0.5, time=1000, delay=1000})
        end,
        animationComplete = function()
            iceLayer.alpha=0
            foregroundNew.alpha=0
            needle.alpha=1
            koshPleaNC.alpha = 1
            koshAttack.alpha = 0 
            skyBright.alpha=0.5
            landscape1Light.alpha=0.5
            landscape2Light.alpha=0.5
            landscape3Light.alpha=0.5
        end,
        --Sound: thunder 
        soundEffect = 'windKoschei.mp3'
    }

    scenes[215] = {
        sName = 215,
        follows = 216,
        text='Koschei: “Spare me, Alena. Don’t kill me. I’ll free your brother, and you can imprison me in your dungeon again. Just don’t break the tip of that needle!”',
        animations = function()
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(KoscheiPleaNCD, 400, 400)
        end,
        animationComplete = function() 
            hideBigCharacters()
            AlenaHolding.x=300
        end
    }

    scenes[216] = {
        sName = 216,
        selection = {
            [1] = {'Break the needle', 221},
            [2] = {'Spare Koschei', 217},
        },
        text='Alena sees her brother standing behind Koschei and feels the stare of her companion. The sky is clear, and the air is full of chirping birds and rustling leaves.',
        animations = function()
            transDialogueBack()
            IvanS.xScale=-1 IvanS.x=1200 IvanS.y=0 IvanS.isVisible=true
            transition.to(IvanS, {x=900, time=1000, delay=500})
            transition.to(skyBright, {alpha=1, time=1000, delay=500})
        end,
        animationComplete = function()
            removeCurtain()
            IvanS.xScale=-1 IvanS.x=900 IvanS.y=0 IvanS.isVisible=true
            skyBright.alpha=1
        end,
        --Sound: oak forest 
        soundEffect = 'oakForest1.mp3'
    }

    scenes[217] = {
        sName = 217,
        clearSelection = true,
        follows = 218,
        changeFlow = function() choices.wolfPenalty =  choices.wolfPenalty-1 end,
        text='“I am not as ruthless as you are!” says Alena, and she orders Koschei to return to his prison, mend the chains, and put them on.',
        animations = function()
            sunRise.alpha = 1
            transition.to(koshPleaNC, {alpha=0, time=1200, delay=1500})
            transition.to(sunRise, {y=-250, time=1000})
            transition.to(lightLayer, {alpha=1, time=1000, delay=500})
            needle.alpha=0
            transition.to(landscape1Light, {alpha=1, time=1000, delay=1000})
            transition.to(landscape2Light, {alpha=1, time=1000, delay=1000})
            transition.to(landscape3Light, {alpha=1, time=1000, delay=1000})
        end,
        animationComplete = function()
            sunRise.alpha = 1
            koshPleaNC.x=-200
            sunRise.y=-250
            lightLayer.alpha=1
            needle.alpha=0
            AlenaNoRibbon.isVisible=true AlenaNoRibbon.alpha=1 AlenaNoRibbon.x=300 AlenaNoRibbon.y=0
            AlenaHolding.alpha=0
            landscape1Light.alpha=1
            landscape2Light.alpha=1
            landscape3Light.alpha=1
        end,
        --Sound: oak forest 
        soundEffect = 'oakForest2.mp3'
    }

    scenes[218] = {
        sName = 218,
        changeFlow = function() 
            if choices.wolfPenalty < 2 then scenes[218].follows =  219
            else scenes[218].follows = 223 end
        end,
        text='Ivan runs to his sister, and they finally embrace each other.',
        animations = function()
            transition.to(IvanAlenaHug, {alpha=1, time=1000, delay=1000})
            transition.to(AlenaNoRibbon, {x=560, time=700, delay=200})
            transition.to(IvanS, {x=680, time=700, delay=200})
            transition.to(AlenaNoRibbon, {alpha=0, time=200, delay=900})
            transition.to(IvanS, {alpha=0, time=200, delay=900})
        end,
        animationComplete = function()
            IvanAlenaHug.alpha=1
            AlenaNoRibbon.alpha=0
            IvanS.alpha=0
        end,
        --Sound: oak forest 
        soundEffect = 'oakForest1.mp3'
    }

    scenes[219] = {
        sName = 219,
        follows = 220,
        text='"You are a brave girl, Alena. I started to help you as a debt to your mother, but now I see you are someone worthy not just of my service, but of my friendship as well." says Gray Wolf. ',
        animations = function() 
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(Wolf, 500, 400)
        end,
        animationComplete = function() hideBigCharacters() end
    }

    scenes[220] = {
        sName = 220,
        follows = 225,
        text='“Jump on my back with Ivan, and I’ll carry you both home!”',
        animations = function() 
            transDialogueBack()
            AlenaIvanRiding.y=10 AlenaIvanRiding.alpha=0 AlenaIvanRiding.isVisible=true
            transition.to(WolfS, {alpha=0, time=700, delay=200})
            transition.to(IvanAlenaHug, {alpha=0, time=700, delay=200})
            transition.to(AlenaIvanRiding, {alpha=1, time=700, delay=1000})
        end,
        animationComplete = function()
            removeCurtain()
            AlenaIvanRiding.y=10 AlenaIvanRiding.alpha=1 AlenaIvanRiding.isVisible=true
            WolfS.alpha=0
            IvanAlenaHug.alpha=0
        end
    }

    scenes[221] = {
        sName = 221,
        clearSelection = true,
        follows = 222,
        changeFlow = function() choices.wolfPenalty = choices.wolfPenalty+1 end,
        text='"You’ve caused too much suffering, and you have to pay for that!" says Alena breaking the needle. A bright ray of sunlight pierces the warlock like a knife. ',
        animations = function()
            sunRise.alpha = 1
            transition.to(needle, {alpha=0, time=500})
            transition.to(needleBroken, {alpha=1, time=500})
            transition.to(sunRise, {y=-250, time=1000, delay=500})
            transition.to(lightLayer, {alpha=0.5, time=1000, delay=500})
            transition.to(effectDust, {alpha=0.5, time=1000, delay=1000})
            transition.to(landscape1Light, {alpha=1, time=1000, delay=1000})
            transition.to(landscape2Light, {alpha=1, time=1000, delay=1000})
            transition.to(landscape3Light, {alpha=1, time=1000, delay=1000})
        end,
        animationComplete = function()
            needle.alpha=0
            sunRise.y=-250 sunRise.alpha = 1
            lightLayer.alpha=0.5
            effectDust.alpha=0.5
            landscape1Light.alpha=1
            landscape2Light.alpha=1
            landscape3Light.alpha=1

        end,
        --Sound: needle break 
        soundEffect = 'needleBreak.mp3'
    }

    scenes[222] = {
        sName = 222,
        follows = 218,
        text='Koschei screams, but soon his screaming weakens. His bones scatter as he falls to the ground, a handful of gray dust.',
        animations = function() 
            --dust flies
            transition.to(effectDust, {alpha=1, time=1000, delay=500})
            transition.to(effectDust, {x=-500, y=600, time=1500, delay=1500})
            transition.to(lightLayer, {alpha=1, time=1000, delay=500})
            transition.to(koshPleaNC, {alpha=0, time=1000})
            transition.to(lightLayer, {alpha=1, time=1000})
        end,
        animationComplete = function()
            koshPleaNC.alpha=0
            lightLayer.alpha=1
            needleBroken.alpha=0
            effectDust.alpha=0
            AlenaNoRibbon.isVisible=true AlenaNoRibbon.alpha=1 AlenaNoRibbon.x=370 AlenaNoRibbon.y=0
            AlenaHolding.alpha=0
        end,
        --Sound: oak forest 
        soundEffect = 'oakForest2.mp3'
    }

    scenes[223] = {
        sName = 223,
        follows = 224,
        text='“I am not disputing your decisions, Alena, but with this, my debt to your mother is paid in full,” says Grey Wolf. “You can return home and tell her that.”',
        animations = function() 
            hideBigCharacters()
            showDialogueBack()
            showDialogueChar(Wolf, 500, 400)
        end,
        animationComplete = function() 
            hideBigCharacters() 
            IvanAlenaHug.alpha=0
            IvanS.alpha=1 IvanS.x=300 IvanS.xScale=1 IvanS:toFront( )
            AlenaNoRibbon.alpha=1 AlenaNoRibbon.x=370
        end
    }

    scenes[224] = {
        sName = 224,
        follows = 228,
        text='So Alena says her goodbye and with sadness in her heart, she watches Gray Wolf disappear into the forest.',
        animations = function() 
            transDialogueBack()
            transition.to(WolfS, {x=1300, time=1000, delay=1000}) 
            transition.to(lightLayer, {alpha=0.3, time=1000})
        end,
        animationComplete = function() removeCurtain() WolfS.x=1300 end
    }

-------- Act 8 (Ending) Scenes 215 - 220

    scenes[225] = {
        sName = 225,
        follows = 226,
        openingAnimation = {
            [1] = 'background1.png', 
            [2] = 'foreground1.png'
        },
        setStage = 'setMotherHouse',
        text='So they return home together. ',
        animations = function() 
            loadHomeSet()
            sun.x=300
            AlenaIvanRiding.xScale = -1  AlenaIvanRiding.isVisible=true AlenaIvanRiding.y=-600 
            AlenaIvanRiding.alpha=1 AlenaIvanRiding.x=400
            transition.to(sun, {y=-100, time=1000, delay=1000})
            transition.to(background, {y=-250, time=1000, delay=1000})
            transition.to(sun, {alpha=1, delay=4000})
            transition.to(AlenaIvanRiding, {y=0, time=1000, delay=4500})
        end,
        animationComplete = function()
            sun.y=-100 sun.x=300 sun.alpha=1
            foreground.y=0
            background.y=-250
            landscape3.x= 0
            landscape2.x= -15
            landscape1.rotation=0 landscape1.y=630
            shadowLayer1.alpha=1
            houseOutside.y = 0
            AlenaIvanRiding.xScale = -1  AlenaIvanRiding.isVisible=true AlenaIvanRiding.y=0 
            AlenaIvanRiding.alpha=1 AlenaIvanRiding.x=400
            foreground.y = 0
        end,
        -- Sound: Opening
        soundEffect = 'opening.mp3',

    }
    scenes[226] = {
        sName = 226,
        follows = 227,
        text='Without Koschei’s witchcraft, Alena’s mother, Marya Morevna, easily overpowers his minions, and peace and prosperity falls across the land.',
        animations = function()
            loadMotherFinal()
        end,
        animationComplete = function()
            MotherS.x=400 MotherS.y=0 MotherS.alpha=1 MotherS.isVisible=true
            MotherWarS.alpha=0 MotherWarS.isVisible=false
        end,
        -- Sound: Birds singing
        soundEffect = 'birdsSinging.mp3',
    }

    scenes[227] = {
        sName = 227,
        follows = 1000,
        text='Their mother is happy to see them home again. Gray Wolf settles nearby, and they live in health and good cheer for many long years. ',
        animations = function()
            AlenaS.isVisible = true AlenaS.x = 200  AlenaS.alpha=0 AlenaS.y=0
            IvanS.isVisible = true IvanS.x = 130 IvanS.alpha=0 IvanS.y=0
            WolfSit.isVisible = true WolfSit.x = 500 WolfSit.alpha=0 WolfSit.y=0
            transition.to(AlenaIvanRiding, {alpha=0, time=500})
            transition.to(AlenaS, {alpha=1, time=700, delay=300})
            transition.to(IvanS, {alpha=1, time=700, delay=300})
            transition.to(WolfSit, {alpha=1, time=700, delay=300})
        end,
        animationComplete = function()
            AlenaS.isVisible = true AlenaS.x = 200  AlenaS.alpha=1 AlenaS.y=0
            IvanS.isVisible = true IvanS.x = 130 IvanS.alpha=1 IvanS.y=0
            WolfSit.isVisible = true WolfSit.x = 500 WolfSit.alpha=1 WolfSit.y=0
        end,
        -- Sound: Birds singing
        soundEffect = 'birdsSinging.mp3',
    }

    scenes[228] = {
        sName = 228,
        openingAnimation = {
            [1] = 'background1_a.png', 
            [2] = 'foreground1.png'
        },
        setStage = 'setMotherHouse',
        follows = 229,
        text='It is a long way home for for Alena and her brother.',
        animations = function() 
            loadHomeSet() 
            AlenaS.isVisible = true AlenaS.alpha=1  AlenaS.x = 200 
            IvanS.isVisible = true IvanS.alpha=1 IvanS.x = 130
            transition.to(AlenaS, {y=0, time=1000, delay=4500})
            transition.to(IvanS, {y=0, time=1000, delay=4500}) 
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
            AlenaS.isVisible = true AlenaS.alpha=1 AlenaS.x = 200 AlenaS.y = 0 
            IvanS.isVisible = true IvanS.alpha=1 IvanS.x = 130 IvanS.y = 0
            foreground.y = 0
        end,
        -- Sound: Opening
        soundEffect = 'opening.mp3',
    }

    scenes[229] = {
        sName = 229,
        follows = 230,
        text='Without Koschei’s witchcraft, Alena’s mother, Marya Morevna, easily overpowers his minions, and peace and prosperity falls across the land. ',
        animations = function() loadMotherFinal() 
        end,
        animationComplete = function()
            MotherS.x=430 MotherS.y=0 MotherS.alpha=1 MotherS.isVisible=true
            MotherWarS.alpha=0 MotherWarS.isVisible=false
        end,
        -- Sound: Birds singing
        soundEffect = 'birdsSinging.mp3',
    }

    scenes[230] = {
        sName = 230,
        follows = 1000,
        text='They live in health and in good cheer for many long years. ',
        animations = function() end,
        animationComplete = function()end,
        -- Sound: Birds singing
        soundEffect = 'birdsSinging.mp3',
    }

    scenes[1000] = {
        sName = 1000,
        follows = 1001,
        text='The end',
        animations = function() loadEndingBack() end,
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

function  loadEndingBack()
    endingBack:toFront()
    transition.to(endingBack, {y=0, time=1000})
end


-- Display Dialogues functions
function showDialogueBack()
    transition.to(dialBack, {y=0, time=500})
end

function showDialogueChar(name, x, y)
    name.isVisible = true
    name.x = x
    transition.to(name, {y=y, time=500, delay=50}) 
end

function hideBigCharacters()
    for i=1, table.getn(charactersBig) do charactersBig[i].y = 900 charactersBig[i].x = 400 charactersBig[i].isVisible = false end
end

function transDialogueBack()
    hideBigCharacters()
    transition.to(dialBack, {y = -800, time=500})
end

function removeCurtain()
    dialBack.y=-800 
end


--
-- Set stage functions
--

function cleanUpLevel()
    clearStage()
    hideSmallCharacters()
    hideBigCharacters()
    removeCurtain()
end

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

function hideSmallCharacters()
    for i=1, table.getn(charactersSmall) do charactersSmall[i].y = -700 charactersSmall[i].x = 400 charactersSmall[i].isVisible = false end
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
        setMotherHouse = function()
            cleanUpLevel()

            sun = display.newImage(midlayer1, "images/scenes/sun.png", true) setAnchor(sun)
            sun.x = -100 sun.y = 50 sun.alpha=0

            starsAndMoon = display.newImage(midlayer1, "images/scenes/stars.png", true) setAnchor(starsAndMoon)
            starsAndMoon.x = 100 starsAndMoon.y = -500

            landscape3 = display.newImage(midlayer1, "images/scenes/act1_landscape3.png", true) setAnchor(landscape3)
            landscape3.x = 1000 landscape3.y = 285

            houseOutside = display.newImage(midlayer1, "images/scenes/houseLight.png") setAnchor(houseOutside) houseOutside.x = 200
            houseOutside.x = 200 houseOutside.y = -500

            landscape2 = display.newImage(midlayer1, "images/scenes/act1_landscape2.png", true) setAnchor(landscape2)
            landscape2.x = -1000 landscape2.y = 375
            
            landscape1 = display.newImage(midlayer1, "images/scenes/act1_landscape1.png", true) 
            landscape1.anchorX = 1 landscape1.anchorY=1
            landscape1.x = 1020 landscape1.y = 1300
            landscape1.rotation=-90

            shadowLayer1 = display.newImage(midlayer2, "images/scenes/act1_shadowLayer.png", true) setAnchor(shadowLayer1)
            shadowLayer1.x=0 shadowLayer1.y=0 shadowLayer1.alpha = 0

            orangeLight = display.newImage(midlayer3, "images/effects/effect_orangeLight.png", true) setAnchor(orangeLight)
            orangeLight.x=0 orangeLight.y=0 orangeLight.alpha = 0


            leaves = display.newImage(midlayer3,"images/effects/effects_leaves.png", true) setAnchor(leaves) leaves.alpha = 0
            leaves.x=700 leaves.y=-550

            organizeStage()
        end,
        setHouseInside = function()
            cleanUpLevel()

            bed = display.newImage(midlayer1, "images/scenes/bed.png", true) setAnchor(bed)
            bed.x=280 bed.y = -500

            tableCloth = display.newImage(midlayer1, "images/scenes/table.png", true) setAnchor(tableCloth)
            tableCloth.x = 520 tableCloth.y=-500

            ovenFire = display.newImage(midlayer2, "images/scenes/ovenFire.png", true) setAnchor(ovenFire)
            ovenFire.x=42 ovenFire.y = 260 ovenFire.alpha = 0

            shadowLayer2 = display.newImage(midlayer2, "images/scenes/act2_shadowLayer.png", true) setAnchor(shadowLayer2) 
            shadowLayer2.alpha = 0


            broom = display.newImage(midlayer2, "images/scenes/broom.png", true) setAnchor(broom)
            broom.x=200 broom.y = -600

            dishes = display.newImage(midlayer2, "images/scenes/dishes.png", true) setAnchor(dishes)
            dishes.x=580 dishes.y = -500

            windowLight = display.newImage(midlayer3, "images/effects/effect_Windowlight.png", true) setAnchor(windowLight)
            windowLight.x=365 windowLight.y =130 windowLight.alpha =0

            organizeStage()
        end,
        setBasement = function()
            clearStage()
            basementStage = display.newImage(midlayer1, "images/backg/background4.png", true) setAnchor(basementStage)
            basementStage.x=0 basementStage.y = 0 basementStage.alpha=0
            
            waterFount = display.newImage(midlayer1, "images/scenes/water.png", true) setAnchor(waterFount)
            waterFount.x=630 waterFount.y = 200 waterFount.alpha = 0

            lights3 = display.newImage(midlayer1, "images/scenes/lights.png", true) setAnchor(lights3)
            lights3.x=280 lights3.y = -500

            bucket1 = display.newImage(midlayer2, "images/scenes/bucket1.png", true) setAnchor(bucket1)
            bucket1.x=130 bucket1.y = -550

            koshPrisoner = display.newImage(midlayer2, "images/chars/kosh_chained.png", true) setAnchor(koshPrisoner)
            koshPrisoner.x=680 koshPrisoner.y = 0 koshPrisoner.alpha=0

            chains = display.newImage(midlayer2, "images/scenes/chains.png", true) setAnchor(chains)
            chains.x=680 chains.y = 0 chains.alpha=0

            bucket2 = display.newImage(midlayer2, "images/scenes/bucket2.png", true) bucket2.anchorY = 0.5 bucket2.anchorX = 1
            bucket2.x=275 bucket2.y = -55

            bucketTread = display.newImage(midlayer2, "images/scenes/bucketTread.png", true) setAnchor(bucketTread)
            bucketTread.x=180 bucketTread.y = -600

            icyCurtain = display.newImage(midlayer3, "images/effects/icyCurtain.png", true) setAnchor(icyCurtain)
            icyCurtain.x=350 icyCurtain.y = 50 icyCurtain.alpha=0

            organizeStage()
        end,
        setForest1 = function()
            clearStage()

            eveningDarker = display.newImage(midlayer1, "images/effects/effects_darkBlue.png", true) setAnchor(eveningDarker)
            eveningDarker.x = 0 eveningDarker.y = 0 eveningDarker.alpha=0

            starsAndMoon = display.newImage(midlayer1, "images/scenes/stars.png", true) setAnchor(starsAndMoon )
            starsAndMoon.x = 100 starsAndMoon.y = -500

            landscape3 = display.newImage(midlayer1, "images/scenes/act4_landscape3.png", true) setAnchor(landscape3)
            landscape3.x = -1000 landscape3.y = 230

            landscape2 = display.newImage(midlayer1, "images/scenes/act4_landscape2.png", true) setAnchor(landscape2)
            landscape2.x = 1000 landscape2.y = 0


            landscape1 = display.newImage(midlayer1, "images/scenes/act4_landscape1.png", true) setAnchor(landscape1)
            landscape1.x = 1000 landscape1.y = 400

            fortress2 = display.newImage(midlayer2, "images/scenes/fortressUncle2.png", true) setAnchor(fortress2)
            fortress2.x = -115 fortress2.y = 190

            bridge = display.newImage(midlayer2, "images/scenes/bridge.png", true) setAnchor(bridge)
            bridge.alpha = 0
            bridge.x = 380 bridge.y = 480
            bridge.anchorX = 1 bridge.anchorY = 1

            fortress = display.newImage(midlayer2, "images/scenes/fortressUncle.png", true) setAnchor(fortress)
            fortress.x = -600 fortress.y = 100

            shadowLayer5 = display.newImage(midlayer2, "images/scenes/act4_shadowLayer.png", true) setAnchor(shadowLayer5) shadowLayer5.alpha=0

            stone = display.newImage(midlayer2, "images/scenes/stone.png", true) setAnchor(stone)
            stone.x = 120 stone.y = -500 

            organizeStage()
        end,
        setUncleCastle = function()
            clearStage()

            landscape3 = display.newImage(midlayer1, "images/scenes/act5_landscape3.png", true) setAnchor(landscape3)
            landscape3.x = -1000 landscape3.y = 130

            if choices.brother=='Falcon' then
                landscape2 = display.newImage(midlayer1, "images/scenes/act5_landscape2y.png", true)
                throne = display.newImage(midlayer2, "images/scenes/chairRed.png", true)
                birdSymbol = display.newImage(midlayer2, "images/scenes/Falcon_stand.png", true)
                setAnchor(birdSymbol) birdSymbol.x = 210 birdSymbol.y = -200
                loadBrothers('Falcon')

            elseif choices.brother=='Raven' then
                landscape2 = display.newImage(midlayer1, "images/scenes/act5_landscape2b.png", true)
                throne = display.newImage(midlayer2, "images/scenes/chairBlue.png", true)
                birdSymbol = display.newImage(midlayer2, "images/scenes/Raven_stand.png", true)
                setAnchor(birdSymbol) birdSymbol.x = 215 birdSymbol.y = -200
                loadBrothers('Raven')
            else
                landscape2 = display.newImage(midlayer1, "images/scenes/act5_landscape2r.png", true)
                throne = display.newImage(midlayer2, "images/scenes/chairGold.png", true)
                birdSymbol = display.newImage(midlayer2, "images/scenes/Eagle_stand.png", true)
                setAnchor(birdSymbol) birdSymbol.x = 200 birdSymbol.y = -200
                loadBrothers('Eagle')
            end

            setAnchor(landscape2) landscape2.x = 0 landscape2.y = -1000
            setAnchor(throne) throne.x = 250 throne.y = -600

            shadowLayer6 = display.newImage(midlayer1, "images/scenes/act5_shadowLayer.png", true) setAnchor(shadowLayer6) 
            shadowLayer6.alpha=0

            GoldenApple = display.newImage(midlayer3, "images/scenes/goldenApple.png", true) setAnchor(GoldenApple)
            GoldenApple.x=500  GoldenApple.y=-500

            GoldenHorse = display.newImage(midlayer2, "images/scenes/goldenHorse.png", true) setAnchor(GoldenHorse)
            GoldenHorse.x=750  GoldenHorse.y=-500

            organizeStage() 
        end,
        setAppleGarden = function()
            clearStage() 

            landscape3 = display.newImage(midlayer1, "images/backg/background7.png", true) setAnchor(landscape3)
            landscape3.x = 0 landscape3.y = 0

            starsWay = display.newImage(midlayer1, "images/effects/effects_stars.png", true) setAnchor(starsWay)
            starsWay.x = 0 starsWay.y = 0 starsWay.alpha = 0

            landscape2 = display.newImage(midlayer1, "images/scenes/act4_landscape2.png", true) setAnchor(landscape2)
            landscape2.x = -400 landscape2.y = 0

            landscape1 = display.newImage(midlayer1, "images/scenes/act4_landscape1.png", true) setAnchor(landscape1)
            landscape1.x = 0 landscape1.y = 400

            ribbon = display.newImage(midlayer3, "images/scenes/ribbon_single.png") setAnchor(ribbon)
            ribbon.isVisible = false

            if choices.brother=="Raven" then
                StrongholdB1 = display.newImage("images/scenes/Falcon_stronghold.png", false)
            else
                StrongholdB1 = display.newImage("images/scenes/Raven_stronghold.png", false)
            end

            setAnchor(StrongholdB1) StrongholdB1.x=1200 StrongholdB1.y=150
            midlayer2:insert(StrongholdB1)
            StrongholdB1:toFront()

            shadowLayer5 = display.newImage(midlayer2, "images/scenes/act4_shadowLayer.png", true) setAnchor(shadowLayer5) 
            shadowLayer5.alpha=1

            AppleGarden = display.newImage(midlayer2, "images/scenes/Garden.png", true) setAnchor(AppleGarden)
            AppleGarden.x=1200 AppleGarden.y=-65

            GoldenApples = display.newImage(midlayer2, "images/scenes/goldenApples.png", true) setAnchor(GoldenApples)
            GoldenApples.x=470 GoldenApples.y=-500
            GoldenApple = display.newImage(midlayer3, "images/scenes/goldenApple.png", true) setAnchor(GoldenApple)
            GoldenApple.x=500  GoldenApple.y=-500
            TreeRibbon = display.newImage(midlayer2, "images/scenes/treeRibbon.png", true) setAnchor(TreeRibbon)
            TreeRibbon.x=560  TreeRibbon.y=-500

            foreground:removeSelf()
            foreground=nil
            foreground = display.newImage(foregoundGr, "images/backg/foreground6.png", true ) setAnchor(foreground)
            organizeStage() 

        end,
        setForest2 = function()
            clearStage()

            starsAndMoon = display.newImage(midlayer1, "images/scenes/stars.png", true) setAnchor(starsAndMoon )
            starsAndMoon.x = 100 starsAndMoon.y = -500

            landscape2 = display.newImage(midlayer1, "images/scenes/act4_landscape2.png", true) setAnchor(landscape2)
            landscape2.x = 1000 landscape2.y = 0


            landscape1 = display.newImage(midlayer1, "images/scenes/act4_landscape1.png", true) setAnchor(landscape1)
            landscape1.x = 1000 landscape1.y = 400

            shadowLayer5 = display.newImage(midlayer2, "images/scenes/act4_shadowLayer.png", true) setAnchor(shadowLayer5) 
            shadowLayer5.alpha=1

            bushToHide = display.newImage(midlayer3, "images/scenes/hideBush.png") bushToHide.anchorX=1 bushToHide.anchorY=1 
            bushToHide.x=300 bushToHide.y=600 bushToHide.rotation=-90 bushToHide.isVisible = false

            UncleServants = display.newImage(midlayer3, "images/chars/uncles_servants.png", true) setAnchor(UncleServants)
            UncleServants.x=1200 UncleServants.y=200

            GoldenApple = display.newImage(midlayer3, "images/scenes/goldenApple.png", true) setAnchor(GoldenApple)
            GoldenApple.x=500  GoldenApple.y=0 GoldenApple.isVisible = false

            MagicWolf = display.newImage( midlayer3, "images/effects/magicWolf.png", true) setAnchor(MagicWolf)
            MagicWolf.x=290 MagicWolf.y=-600
            MagicWolf:toFront()

            organizeStage()
        end,
        setStables = function()
            clearStage() 

            landscape3 = display.newImage(midlayer1, "images/backg/background8.png", true) setAnchor(landscape3)
            landscape3.x = 0 landscape3.y = 0
    
            landscape2 = display.newImage(midlayer1, "images/scenes/act4_landscape2.png", true) setAnchor(landscape2)
            landscape2.x = -400 landscape2.y = 0

            landscape1 = display.newImage(midlayer1, "images/scenes/act4_landscape1.png", true) setAnchor(landscape1)
            landscape1.x = 0 landscape1.y = 400

            if choices.brother=="Eagle" then
                StrongholdB2 = display.newImage("images/scenes/Falcon_stronghold.png", false) 
            else
                StrongholdB2 =  display.newImage("images/scenes/Eagle_stronghold.png", false) 
            end

            setAnchor(StrongholdB2) StrongholdB2.x=1200 StrongholdB2.y=150
            midlayer2:insert(StrongholdB2)
            StrongholdB2:toFront()

            stableImg = display.newImage(midlayer2, "images/scenes/Stable.png", true) setAnchor(stableImg)
            stableImg.x=1200 stableImg.y=-100

            stableRibbon = display.newImage(midlayer3, "images/scenes/treeRibbon.png", true) setAnchor(stableRibbon)
            stableRibbon.x=690  stableRibbon.y=-500

            GoldenHorse = display.newImage(midlayer2, "images/scenes/goldenHorse.png", true) setAnchor(GoldenHorse)
            GoldenHorse.x=750  GoldenHorse.y=-500

            MagicWolf = display.newImage( midlayer3, "images/effects/magicWolf.png", true) setAnchor(MagicWolf)
            MagicWolf.x=290 MagicWolf.y=-600
            MagicWolf:toFront()

            bushToHide = display.newImage(midlayer3, "images/scenes/hideBush.png") bushToHide.anchorX=1 bushToHide.anchorY=1 
            bushToHide.x=300 bushToHide.y=600 bushToHide.rotation=-90 bushToHide.isVisible = false

            UncleServants = display.newImage(midlayer3, "images/chars/uncles_servants.png", true) setAnchor(UncleServants)
            UncleServants.x=1200 UncleServants.y=130

            foreground:removeSelf()
            foreground = nil
            foreground = display.newImage(foregoundGr, "images/backg/foreground6.png", true ) setAnchor(foreground)

            organizeStage() 
        end,
        setForest3 = function()
            clearStage()

            landscape2 = display.newImage(midlayer1, "images/scenes/act4_landscape2.png", true) setAnchor(landscape2)
            landscape2.x = 1000 landscape2.y = 0


            landscape1 = display.newImage(midlayer1, "images/scenes/act4_landscape1.png", true) setAnchor(landscape1)
            landscape1.x = 1000 landscape1.y = 400

            shadowLayer5 = display.newImage(midlayer2, "images/scenes/act4_shadowLayer.png", true) setAnchor(shadowLayer5) 
            shadowLayer5.alpha=1

            GoldenHorse = display.newImage(midlayer2, "images/scenes/goldenHorse.png", true) setAnchor(GoldenHorse)
            GoldenHorse.x=750  GoldenHorse.y=-500

            MagicWolf = display.newImage( midlayer3, "images/effects/magicWolf.png", true) setAnchor(MagicWolf)
            MagicWolf.x=290 MagicWolf.y=-600
            MagicWolf:toFront()

            bushToHide = display.newImage(midlayer3, "images/scenes/hideBush.png") bushToHide.anchorX=1 bushToHide.anchorY=1 
            bushToHide.x=300 bushToHide.y=600 bushToHide.rotation=-90 bushToHide.isVisible = false

            UncleServants = display.newImage(midlayer3, "images/chars/uncles_servants.png", true) setAnchor(UncleServants)
            UncleServants.x=1200 UncleServants.y=130

            foreground:removeSelf()
            foreground = nil
            foreground = display.newImage(foregoundGr, "images/backg/foreground6.png", true ) setAnchor(foreground)

            organizeStage() 
        end,
        setBerendei = function() 
            clearStage() 

            landscape3 = display.newImage(midlayer1, "images/backg/background9.png", true) setAnchor(landscape3)
            landscape3.x = 0 landscape3.y = 0

            landscape2 = display.newImage(midlayer1, "images/scenes/act4_landscape2.png", true) setAnchor(landscape2)
            landscape2.x = -400 landscape2.y = 0

            landscape1 = display.newImage(midlayer1, "images/scenes/act4_landscape1.png", true) setAnchor(landscape1)
            landscape1.x = 0 landscape1.y = 400

            StrongholdBer = display.newImage(midlayer2, "images/scenes/wall.png", true) setAnchor(StrongholdBer) 
            StrongholdBer.x=1200 StrongholdBer.y=-10
            StrongholdBer:toFront()

            GardenBer = display.newImage(midlayer2, "images/scenes/courtyard.png", true) setAnchor(GardenBer) 
            GardenBer.x=1200 GardenBer.y=-200
            GardenBer:toFront()

            AlenaVasilisaRiding = display.newImage(midlayer3, "images/chars/AlenaVasilisaRiding.png", true) setAnchor(AlenaVasilisaRiding) 
            AlenaVasilisaRiding.x=600 AlenaVasilisaRiding.y=-500 AlenaVasilisaRiding.isVisible=false

            fortress2 = display.newImage(midlayer1, "images/scenes/fortressUncle2.png", true) setAnchor(fortress2)
            fortress2.x = -115 fortress2.y = 190

            bridge = display.newImage(midlayer1, "images/scenes/bridge.png", true) setAnchor(bridge)
            bridge.alpha = 0
            bridge.x = 380 bridge.y = 480
            bridge.anchorX = 1 bridge.anchorY = 1

            fortress = display.newImage(midlayer1, "images/scenes/fortressUncle.png", true) setAnchor(fortress)
            fortress.x = -600 fortress.y = 100

            foreground:removeSelf()
            foreground = nil
            foreground = display.newImage(foregoundGr, "images/backg/foreground6.png", true ) setAnchor(foreground)

            organizeStage() 
        end,
        setForest4 = function() 
            clearStage()

            landscape3 = display.newImage(midlayer1, "images/backg/background9.png", true) setAnchor(landscape3)
            landscape3.x = 0 landscape3.y = 0

            forrestDawn = display.newImage(midlayer1, "images/effects/effect_forestDown.png", true) setAnchor(forrestDawn)
            forrestDawn.x = 0 forrestDawn.y = 0 forrestDawn.alpha = 0

            forrestSunny = display.newImage(midlayer1, "images/backg/background10.png", true) setAnchor(forrestSunny)
            forrestSunny.x = 0 forrestSunny.y = 0 forrestSunny.alpha = 0

            landscape2 = display.newImage(midlayer1, "images/scenes/act4_landscape2.png", true) setAnchor(landscape2)
            landscape2.x = -200 landscape2.y = 0

            landscape1 = display.newImage(midlayer1, "images/scenes/act4_landscape1.png", true) setAnchor(landscape1)
            landscape1.x = 0 landscape1.y = 400

            fortress2 = display.newImage(midlayer1, "images/scenes/fortressUncle2.png", true) setAnchor(fortress2)
            fortress2.x = -115 fortress2.y = 190

            bridge = display.newImage(midlayer1, "images/scenes/bridge.png", true) setAnchor(bridge)
            bridge.alpha = 0
            bridge.x = 380 bridge.y = 480
            bridge.anchorX = 1 bridge.anchorY = 1

            MagicWolf = display.newImage( midlayer3, "images/effects/magicWolf.png", true) setAnchor(MagicWolf)
            MagicWolf.x=450 MagicWolf.y=-600
            MagicWolf:toFront()

            fortress = display.newImage(midlayer1, "images/scenes/fortressUncle.png", true) setAnchor(fortress)
            fortress.x = -600 fortress.y = 100

            shadowLayer5 = display.newImage(midlayer2, "images/scenes/act4_shadowLayer.png", true) setAnchor(shadowLayer5) 
            shadowLayer5.alpha=0

            AlenaVasilisaRiding = display.newImage(midlayer3, "images/chars/AlenaVasilisaRiding.png", true) setAnchor(AlenaVasilisaRiding) 
            AlenaVasilisaRiding.x=600 AlenaVasilisaRiding.y=-500

            foreground:removeSelf()
            foreground = nil
            foreground = display.newImage(foregoundGr, "images/backg/foreground6.png", true ) setAnchor(foreground)

            organizeStage()  
        end,
        setWinterForest = function()
            clearStage()

            landscape3 = display.newImage(midlayer1, "images/scenes/snow.png", true) setAnchor(landscape3)
            landscape3.x = 1024 landscape3.y = 0 

            treeBack = display.newImage(midlayer2, "images/scenes/treeBack.png", true) setAnchor(treeBack)
            treeBack.x=1300 treeBack.y=140

            treeFront = display.newImage(midlayer3, "images/scenes/treeFront.png", true) setAnchor(treeFront)
            treeFront.x=1300 treeFront.y=30

            treeIce = display.newImage(midlayer3, "images/effects/effect_treeFront.png", true) setAnchor(treeIce)
            treeIce.x=1300 treeIce.y=30 treeIce.alpha=0

            forestFire = display.newImage(midlayer3, "images/scenes/forestFire.png", true) setAnchor(forestFire)
            forestFire.x=600 forestFire.y=280 forestFire.alpha=0

            snowFall = display.newImage(midlayer3, "images/effects/effect_snowFall.png", true) setAnchor(snowFall)
            snowFall.isVisible=false

            snowFall2 = display.newImage(midlayer3, "images/effects/effect_snowFall.png", true) setAnchor(snowFall2)
            snowFall2.isVisible = false

            shadowLayer9 = display.newImage(midlayer3, "images/scenes/act9_shadowLayer.png", true) setAnchor(shadowLayer9) 
            shadowLayer9.alpha=0

            foregroundIce = display.newImage(foregoundGr, "images/effects/effect_snowLayer.png", true ) setAnchor(foregroundIce)
            foregroundIce.x=0 foregroundIce.y=0 foregroundIce.alpha=0
            organizeStage() 
        end,
        setKoshCastle = function() 
            clearStage()
            landscapeBack = display.newImage(midlayer1, "images/backg/background11.png", true) setAnchor(landscapeBack)
            landscapeBack.x = 0 landscapeBack.y = 0

            landscape3 = display.newImage(midlayer1, "images/scenes/snow.png", true) setAnchor(landscape3)
            landscape3.x = 0 landscape3.y = 0

            landscape2 = display.newImage(midlayer2, "images/scenes/castle.png", true) setAnchor(landscape2)
            landscape2.x = 630 landscape2.y = 0

            WindowNoIvan =  display.newImage(midlayer1, "images/scenes/EmptyWindow.png", true) setAnchor(WindowNoIvan)
            WindowNoIvan.x = 700 WindowNoIvan.y = 200

            WindowWithIvan = display.newImage(midlayer1, "images/scenes/IvanInWindow.png", true) setAnchor(WindowWithIvan)
            WindowWithIvan.x = 700 WindowWithIvan.y = 200

            wolfDown = display.newImage(midlayer3, "images/chars/wolf_down.png", true) setAnchor(wolfDown)
            wolfDown.x=430 wolfDown.y = -500 

            alenaDown = display.newImage(midlayer3, "images/chars/alena_down.png", true) setAnchor(alenaDown)
            alenaDown.x=400 alenaDown.y = -500 

            icyCurtain = display.newImage(midlayer3, "images/effects/icyCurtain2.png", true) setAnchor(icyCurtain)
            icyCurtain.x=0 icyCurtain.y = 30 icyCurtain.alpha=0 

            ShiftRaven = display.newImage( midlayer3, "images/scenes/Raven.png", true) setAnchor(ShiftRaven)
            ShiftRaven.x=250 ShiftRaven.y=0 ShiftRaven.alpha=0

            MagicWolf = display.newImage( midlayer3, "images/effects/magicWolf.png", true) setAnchor(MagicWolf)
            MagicWolf.x=250 MagicWolf.y=-600
            MagicWolf:toFront()

            MagicBrother = display.newImage( midlayer3, "images/effects/raven_feather.png", true) setAnchor(MagicBrother)
            MagicBrother.x=270 MagicBrother.y=-600
            MagicBrother:toFront()

            BlackWater = display.newImage( midlayer3, "images/effects/blackWater.png", true) setAnchor(BlackWater)
            BlackWater.x=270 BlackWater.y=-600 BlackWater.alpha=0
            BlackWater:toFront()

            BlueWater = display.newImage( midlayer3, "images/effects/blueWater.png", true) setAnchor(BlueWater)
            BlueWater.x=270 BlueWater.y=-600 BlueWater.alpha=0
            BlueWater:toFront()

            WhiteMagic = display.newImage(midlayer3, "images/effects/magicWhite.png", true) setAnchor(WhiteMagic)
            WhiteMagic.x=0 WhiteMagic.y = -800

            shadowLayer9 = display.newImage(midlayer3, "images/scenes/act9_shadowLayer.png", true) setAnchor(shadowLayer9) 
            shadowLayer9.alpha=1 

            snowFall = display.newImage(midlayer3, "images/effects/effect_snowFall.png", true) setAnchor(snowFall)
            snowFall.isVisible=false

            snowFall2 = display.newImage(midlayer3, "images/effects/effect_snowFall.png", true) setAnchor(snowFall2)
            snowFall2.isVisible = false

            foreground:removeSelf()
            foreground = nil
            foreground = display.newImage(foregoundGr, "images/backg/foreground7.png", true ) setAnchor(foreground)

            foregroundIce = display.newImage(foregoundGr, "images/effects/effect_snowLayer.png", true ) setAnchor(foregroundIce)
            foregroundIce.x=0 foregroundIce.y=0 foregroundIce.alpha=0
            organizeStage()  

            crowBig = display.newImage(foregoundGr, "images/chars/crow_big.png", true) setAnchor(crowBig)
            crowBig.x=200 crowBig.y = -400

            crowSmall = display.newImage(foregoundGr, "images/chars/crow_small.png", true) setAnchor(crowSmall)
            crowSmall.x=200 crowSmall.y = -400

        end,
        setYagaYard = function()
            clearStage()
               
            landscape1 = display.newImage(midlayer1, "images/scenes/autumn_trees.png", true) setAnchor(landscape1)
            landscape1.x = -1710 landscape1.y = 0

            landscape2 = display.newImage(midlayer1, "images/scenes/autumn_ground.png", true) setAnchor(landscape2)
            landscape2.x = 1024 landscape2.y = 0

            landscape3 = display.newImage(midlayer1, "images/scenes/autumn_road.png", true) setAnchor(landscape3)
            landscape3.x = 0 landscape3.y = 500

            hutWindow = display.newImage(midlayer2, "images/scenes/hutFront.png", true) setAnchor(hutWindow)
            hutWindow.x = 560 hutWindow.y = -500

            hutDoor = display.newImage(midlayer2, "images/scenes/hutBack.png", true) setAnchor(hutDoor)
            hutDoor.x = 560 hutDoor.y = -500

            hutFence = display.newImage(midlayer2, "images/scenes/hutFence.png", true) setAnchor(hutFence)
            hutFence.x = 1024 hutFence.y = 270

            redSky = display.newImage(midlayer2, "images/effects/effect_redSky.png", true) setAnchor(redSky)
            redSky.x = 0 redSky.y = 0 redSky.alpha = 0

            glowEyes = display.newImage(midlayer2, "images/effects/effect_glowEyes.png", true) setAnchor(glowEyes)
            glowEyes.x = 510 glowEyes.y = 276 glowEyes.alpha = 0

            shadowLayer12 = display.newImage(midlayer2, "images/scenes/act12_shadowLayer.png", true) setAnchor(shadowLayer12)
            shadowLayer12.x=0 shadowLayer12.y=0 
            shadowLayer12.alpha=0

            organizeStage() 
        end,
        setYagaHut = function() 
            clearStage()
            getsDarker  = display.newImage(midlayer1, "images/effects/effect_darker.png", true) setAnchor(getsDarker)
            getsDarker.x = 0 getsDarker.y = 0 getsDarker.alpha = 0

            glowEyes3 = display.newImage(midlayer1, "images/effects/effect_eyesAdd.png", true) setAnchor(glowEyes3)
            glowEyes3.x = 390 glowEyes3.y = 290 glowEyes3.alpha = 0

            glowEyes2 = display.newImage(midlayer1, "images/effects/effect_glowEyes2.png", true) setAnchor(glowEyes2)
            glowEyes2.x = 0 glowEyes2.y = 290 glowEyes2.alpha = 1

            yagaShadow = display.newImage(midlayer1, "images/scenes/yagaFly.png", true) setAnchor(yagaShadow)
            yagaShadow.x = 200 yagaShadow.y = 100

            landscape1 = display.newImage(midlayer2, "images/scenes/hutWalls.png", true) setAnchor(landscape1)
            landscape1.x = 0 landscape1.y = -800

            hutTable = display.newImage(midlayer2, "images/scenes/hutTable.png", true) setAnchor(hutTable)
            hutTable.x = 355 hutTable.y = -800

            ovenBack = display.newImage(midlayer2, "images/scenes/ovanback.png", true) setAnchor(ovenBack)
            ovenBack.x = 600 ovenBack.y = -800
            ovenFront = display.newImage(midlayer2, "images/scenes/ovenfront.png", true) setAnchor(ovenFront)
            ovenFront.x = 600 ovenFront.y = -800
            ovenFire = display.newImage(midlayer2, "images/scenes/ovenhaze.png", true) setAnchor(ovenFire)
            ovenFire.x = 600 ovenFire.y = -800 ovenFire.alpha=0

            hutShelf = display.newImage(midlayer2, "images/scenes/hutShelf.png", true) setAnchor(hutShelf)
            hutShelf.x = 90 hutShelf.y = -800
            hutSpin = display.newImage(midlayer2, "images/scenes/hutSpin.png", true) setAnchor(hutSpin)
            hutSpin.x = 240 hutSpin.y = -800

            paddle = display.newImage(midlayer3, "images/scenes/hutPaddle.png", true)
            paddle.anchorX=1 paddle.x = -10 paddle.y = 340

            alenaSit = display.newImage(midlayer3, "images/chars/alenaSitting.png", true) setAnchor(alenaSit)
            alenaSit.x = 600 alenaSit.y = 900

            yagaSit = display.newImage(midlayer3, "images/chars/yagaSitting.png", true) setAnchor(yagaSit)
            yagaSit.x = 600 yagaSit.y = 900

            ovenCover = display.newImage(midlayer3, "images/scenes/ovenCover.png", true) setAnchor(ovenCover)
            ovenCover.x = 870 ovenCover.y = -800

            hutMortar = display.newImage(midlayer3, "images/scenes/stupaStand.png", true) setAnchor(hutMortar)
            hutMortar.x = 50 hutMortar.y = -800

            shadowLayer13 = display.newImage(midlayer2, "images/scenes/act13_shadowLayer.png", true) setAnchor(shadowLayer13) 
            shadowLayer13.x=0 shadowLayer13.y=0
            shadowLayer13.alpha=0

            organizeStage()
        end,

        setOakMountain = function()
            clearStage()

            skyBright = display.newImage(midlayer1, "images/backg/background14_a.png", true) setAnchor(skyBright)
            skyBright.x = 0 skyBright.y = 0 skyBright.alpha = 0

            sunRise = display.newImage(midlayer1, "images/scenes/sun.png", true) setAnchor(sunRise)
            sunRise.x = 800 sunRise.y = 0 sunRise.alpha = 0

            landscape1 = display.newImage(midlayer1, "images/scenes/oakForestBack.png", true) setAnchor(landscape1)
            landscape1.x = 1024 landscape1.y = 0

            landscape1Light = display.newImage(midlayer1, "images/scenes/oakForestBack_light.png", true) setAnchor(landscape1Light)
            landscape1Light.x = -500 landscape1Light.y = 0 landscape1Light.alpha=0 

            landscape2 = display.newImage(midlayer1, "images/scenes/oakForestMid.png", true) setAnchor(landscape2)
            landscape2.x = -2100 landscape2.y = 0 

            landscape2Light = display.newImage(midlayer1, "images/scenes/oakForestMid_light.png", true) setAnchor(landscape2Light)
            landscape2Light.x = -600 landscape2Light.y = 0 landscape2Light.alpha=0

            landscape3 = display.newImage(midlayer1, "images/scenes/oakForestFront.png", true) setAnchor(landscape3)
            landscape3.x = 1024 landscape3.y = 0

            landscape3Light = display.newImage(midlayer1, "images/scenes/oakForestFront_light.png", true) setAnchor(landscape3Light)
            landscape3Light.x = -700 landscape3Light.y = 0 landscape3Light.alpha=0

            groundLevel = display.newImage(midlayer1, "images/scenes/oakGround.png", true) setAnchor(groundLevel)
            groundLevel.x = -2100 groundLevel.y = 320
        
            grass = display.newImage(midlayer2, "images/scenes/oakGrass.png", true) setAnchor(grass)
            grass.x = -2100 grass.y = 430

            shadowLayer14 = display.newImage(midlayer2, "images/scenes/act14_shadowLayer.png", true) setAnchor(shadowLayer14) 
            shadowLayer14.x=0 shadowLayer14.y=0
            shadowLayer14.alpha=0
   
            oldOak = display.newImage(midlayer2, "images/scenes/oak.png", true) oldOak.anchorX=1 oldOak.anchorY=1
            oldOak.x = 1700 oldOak.y = 400

            mountain = display.newImage(midlayer2, "images/scenes/mountain.png", true) mountain.anchorX=1 mountain.anchorY=1
            mountain.x = 1700 mountain.y = 600

            chestClosed = display.newImage(midlayer2, "images/scenes/chest.png", true) setAnchor(chestClosed)
            chestClosed.x = 0 chestClosed.y = 800

            chestOpen = display.newImage(midlayer2, "images/scenes/chestOpen.png", true) setAnchor(chestOpen)
            chestOpen.x = 670 chestOpen.y = 300 chestOpen.alpha=0

            koshAttack = display.newImage(midlayer3, "images/chars/kosh_attack.png", true) setAnchor(koshAttack)
            koshAttack.x=600 koshAttack.y = -500 

            koshPleaNC = display.newImage(midlayer3, "images/chars/kosh_pleaNC.png", true) setAnchor(koshPleaNC)
            koshPleaNC.x = 600 koshPleaNC.y = 20 koshPleaNC.alpha = 0 

            eggWhole = display.newImage(midlayer3, "images/scenes/egg.png", true) setAnchor(eggWhole)
            eggWhole.x = 300 eggWhole.y = 50 eggWhole.alpha=0

            eggBroken = display.newImage(midlayer3, "images/scenes/eggBroken.png", true) setAnchor(eggBroken)
            eggBroken.x = 345 eggBroken.y = 275 eggBroken.alpha=0

            hareRun = display.newImage(midlayer2, "images/chars/hare.png", true) setAnchor(hareRun)
            hareRun.x = 830 hareRun.y = -220 hareRun.alpha=0
            duckFly = display.newImage(midlayer3, "images/chars/duck.png", true) setAnchor(duckFly)
            duckFly.x = 500 duckFly.y = -100 duckFly.alpha = 0

            foregroundNew = display.newImage(foregoundGr, "images/backg/foreground14_a.png", true) setAnchor(foregroundNew) 
            foregroundNew.x=0 foregroundNew.y=0
            foregroundNew.alpha=0

            MagicWolf = display.newImage(midlayer3, "images/effects/magicWolf.png", true) setAnchor(MagicWolf)
            MagicWolf.x=330 MagicWolf.y=-600

            IvanAlenaHug = display.newImage(midlayer3, "images/chars/alenaIvan.png", true) setAnchor(IvanAlenaHug)
            IvanAlenaHug.x=500 IvanAlenaHug.y=-100 IvanAlenaHug.alpha=0

            drake = display.newImage(midlayer2, "images/chars/drake.png") 
            drake.x = 500 drake.y = 300 drake.alpha=0

            if choices.brother == 'Eagle' then
                brotherShape = display.newImage(midlayer2, "images/scenes/Eagle.png") 
            elseif choices.brother == 'Falcon' then
                brotherShape = display.newImage(midlayer2, "images/scenes/Falcon.png") 
            else
                brotherShape = display.newImage(midlayer2, "images/scenes/Raven.png") 
            end
            brotherShape.x=1000 brotherShape.y=0 brotherShape.alpha=0

            iceLayer = display.newImage(midlayer2, "images/effects/iceLayer.png", true) setAnchor(iceLayer)
            iceLayer.x = 0 iceLayer.y = 0 iceLayer.alpha=0

            lightLayer = display.newImage(midlayer3, "images/effects/sunlight.png", true) setAnchor(lightLayer)
            lightLayer.x = 420 lightLayer.y = 0 lightLayer.alpha=0



            needle = display.newImage(midlayer3, "images/scenes/needle.png", true) setAnchor(needle)
            needle.x = 430 needle.y = 200 needle.alpha=0 needle.rotation = 30

            needleBroken = display.newImage(midlayer3, "images/scenes/needleBroken.png", true) setAnchor(needleBroken)
            needleBroken.x = 420 needleBroken.y = 200 needleBroken.alpha=0 needleBroken.rotation = 30

            mistLayer = display.newImage(midlayer3, "images/effects/mistLayer.png", true) setAnchor(mistLayer) 
            mistLayer.x=0 mistLayer.y=0
            mistLayer.alpha=0

            effectDust = display.newImage(midlayer3, "images/effects/effect_dust.png", true) setAnchor(effectDust) 
            effectDustx=-500 effectDust.y=0 effectDust.alpha=0

            lightningLayer = display.newImage(foregoundGr, "images/effects/lighningLayer.png", true) setAnchor(lightningLayer) 
            lightningLayer.x=0 lightningLayer.y=0
            lightningLayer.alpha=0





            organizeStage()
        end, 

    }
    stages[stage]()
end


-- Main text listener
function sceneTextTouch(event)
    print('scene text touch' .. event.target.linkedText.text)
    if event.phase == "began" and event.target.follows then
        event.target:setFillColor( 0.7, 0.7, 0.7 )
        local S_turnEffect = audio.loadStream( "sounds/pageEffect.mp3")
            S_ClickSfxCh = audio.play( S_turnEffect, {loops=0} )
    end
    if event.phase == "ended" and event.target.follows then
        event.target:setFillColor( 1,1,1 )
        -- Stats display
        print('Let us add listener!')
        print('Adding to scene:') print(event.target.index)
        print('Scene that should follow:') print(event.target.follows)

        print(scenes[event.target.index])
        -- effects on clicked block go here

        -- move everything into the place it is supposed to be at the end of the scene
        transition.cancel()
        scenes[event.target.index].animationComplete()


        -- load relevant scene we attached earlier
        loadScene(scenes[event.target.follows])
    end

    return true
end


function loadScene(s)
    print('Start displaying scene '..s.sName)
    if s.name == 1000 then 
        showEnding()
    else
        if s.openingAnimation then 
            openingAnimation(s.openingAnimation[1], s.openingAnimation[2]) 
        end
        if s.changeFlow then 
            s.changeFlow() 
        end
        
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
            print('This sceene has Selection'..table.getn(s.selection))
            numSel = table.getn(s.selection)
            checkAlighn(numSel)
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
                select1Container.follows = s.selection[1][2]
                print(s.selection[1][2])
                -- Attach the name of the scene we are working in
                select1Container.index = s.sName
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
                select2Container.follows = s.selection[2][2]
                print(s.selection[2][2])
                -- Attach the name of the scene we are working in
                select2Container.index = s.sName
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
                select3Container.follows = s.selection[3][2]
                print(s.selection[3][2])
                -- Attach the name of the scene we are working in
                select3Container.index = s.sName
            end

            -- Nullify the link from the main text in the scene
            textContainer.follows = nil
            textContainer.index = nil


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
            textContainer.follows = s.follows
            textContainer.index = s.sName
        end
        if(s.setStage) then
            setStageObjects(s.setStage)
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
    if event.phase == "ended" then 
        print("myListener called")
        background:removeEventListener("touch", myListener)
        setAnchor(textContainer)
        setAnchor(textContainerNA)

        setAnchor(select1Text)
        setAnchor(select2Text)
        setAnchor(select3Text)

        print('Now adding Listeners in main')
        -- listeners for the right blocks
        select1Container:addEventListener( "touch", sceneTextTouch)
        select2Container:addEventListener( "touch", sceneTextTouch)
        select3Container:addEventListener( "touch", sceneTextTouch)
        
        -- listener for the main text
        textContainer:addEventListener( "touch", sceneTextTouch)
        -- 44 - forest1
        -- 57 - brother Castle 1
        -- 68 - apple garden
        -- 75 - forest2
        -- 80 - brother Castle 1
        -- 89 - forest3
        -- 93 - brother Castle 1
        -- 98 - forest4
        -- 114 - winter forest
        -- 129 - koschei castle
        -- 156 - yaga yard
        -- 163 - yaga hut
        -- 195 - oak
        loadScene(scenes[1])
        return true
    end
end

background:addEventListener( "touch", myListener )