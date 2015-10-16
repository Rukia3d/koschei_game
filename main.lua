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
local midlayer1 = display.newGroup()
midlayer1.anchorX = 0 midlayer1.anchorY = 0 
local midlayer2 = display.newGroup()
midlayer2.anchorX = 0 midlayer2.anchorY = 0 
local midlayer3 = display.newGroup()
midlayer3.anchorX = 0 midlayer3.anchorY = 0 
local textLayers = display.newGroup()

-----------------------------------------------------------------------------------------
--
-- CHARACTERS
--
-----------------------------------------------------------------------------------------
-- Small characters for stage, initial
local AlenaS = display.newImage( characters, "images/alena_f_small.png") AlenaS.x = 200 AlenaS.y = -400
local IvanS = display.newImage( characters, "images/ivan_s_small.png") IvanS.x = 130 IvanS.y = -400
local KosheiS = display.newImage( characters, "images/kosh_chained.png") KosheiS.x = 400 KosheiS.y = 400 KosheiS.isVisible = false;
local MotherS = display.newImage( characters, "images/mother_s_small.png") MotherS.x = 540 MotherS.y = -400 

-- Small characters  changed state
local AlenaCry = display.newImage( characters, "images/alena_cry_small.png") AlenaCry.x = 550 AlenaCry.y = 430  AlenaCry.isVisible = false;
local MotherWar = display.newImage( characters, "images/mother_f_small.png") MotherWar.x = 300 MotherWar.y = 350  MotherWar.isVisible = false;

-- Background for dialogue stage
local dialBack = display.newImage(characters, "images/dialBack.png", true )
dialBack.anchorX = 0 dialBack.anchorY = 0 
dialBack.y=-800

-- Big characters for dialogue stage
local Alena = display.newImage( characters, "images/alena_f_dialogue.png") Alena.x = 400 Alena.y = 800 
local Ivan = display.newImage( characters, "images/ivan_s_dialogue.png") Ivan.x = 200 Ivan.y = 800
local Mother = display.newImage( characters, "images/mother_s_dialogue.png", false) Mother.x = 400 Mother.y = 800 
local MotherW = display.newImage( characters, "images/mother_f_dialogue.png", false) MotherW.x = 400 MotherW.y = 800
local Koschei = display.newImage( characters, "images/koschei_f_big.png", false) Koschei.x = 300 Koschei.y = 800

-- Set main screen
local background = display.newImage( "images/startScreen.png") background.x = display.contentWidth / 2 background.y = display.contentHeight / 2

-- Variables for stage content
local foreground  = display.newImage( "images/transparent.png")
local settings

-- Variables for selections
local select1Container = display.newImage(textLayers, "images/selection_back.png")
select1Container.x = 700 select1Container.y = 130
select1Container.isVisible = false;

local select2Container = display.newImage(textLayers, "images/selection_back.png")
select2Container.x = 700 select2Container.y = 200
select2Container.isVisible = false;
local select1Text
local select2Text

-- Variables for text
local textContainer

local sceneText

-----------------------------------------------------------------------------------------
--
-- SEPARATED ANIMATIONS
--
-----------------------------------------------------------------------------------------
local function animateBucket()
    bucketEmpty.isVisible = false 
    bucketEmpty.isVisible = true
    bucketEmpty.alpha = 1
    bucketEmpty.x = 250 bucketEmpty.y = 400
    bucketWater.alpha = 0
    bucketEmpty.isVisible = true
    transition.to(bucketEmpty, {time=1000, rotation=90, x=750, y=300})
    transition.to(bucketEmpty, {time=0, delay=1000, alpha=0})

    bucketWater.x = 700 bucketWater.y = 300
    transition.to(bucketWater, {time=0, rotation=90})
    transition.to(bucketWater, {alpha=1, time=0, delay=1000})
    transition.to(bucketWater, {alpha=1, time=1000, delay=1100, rotation=0, x=850, y=500})
    transition.fadeOut(bucketWater, {delay=2100, time=500, x=850, y=500})
end

function openingAnimation()
    background:removeSelf()
    background = nil
    background = display.newImage( "images/background1.png", true ) setAnchor(background) 
    background.isVisible = true
    foreground = display.newImage( "images/foreground1.png", true ) setAnchor(foreground)
    foreground.y = -700
    transition.to(foreground, {y=0, time=1000})
end


-----------------------------------------------------------------------------------------
--
-- CONTENT TABLES
--
-----------------------------------------------------------------------------------------


local choices = {
    bless = false,
    basement = false,
    bucket = 0,
}

local scenes = {}; 
scenes[1] = {
    sName = 1,
    setStage = 'set1',
    --sound: sounds['forest'],
    text = "In a small house on the edge of the dark forest, there lived a brother and sister, Ivan and Alena.",
    follows = 2,
    animations = function()
            transition.to(landscape3, {x=0, time=1000, delay=1000})
            transition.to(landscape2, {x=-15, time=1000, delay=1000})
            transition.to(landscape1, {y=630, time=500, delay=2000})
            transition.to(landscape1, {rotation=0, y=630, time=1000, delay=2500})
            transition.to(shadowLayer, {alpha=1, time=1000, delay=3500})
            transition.to(houseOutside, {y=0, time=1000, delay=3700})
            transition.to(AlenaS, {y=270, time=1000, delay=4500})
            transition.to(IvanS, {y=290, time=1000, delay=4500})
            
    end,
    animationComplete = function()
        landscape3.x= 0
        landscape2.x= -15
        landscape1.rotation= 0 landscape1.y=630
        shadowLayer.alpha=1
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
            transition.to(sun, {y=-100, time=1000})
            transition.to(background, {y=-250, time=1000})
        end,
    animationComplete = function()
        background.y = -250
        sun.y = -100
    end
}
scenes[3] = {
    sName = 3,
    text = "Alena, as the oldest, has to watch over her little brother, and every morning before going to the city, her mother gives her a set of three instructions to follow throughout the day.",
    follows = 4,
    animations = function()
        transition.to(MotherS, {y=270, time=1000})
    end,
    animationComplete = function()
        MotherS.y = 270
    end
}
scenes[4] = {
    sName = 4,
    text = 'Alena, I\'m going to Tsar-gorod, so keep an eye on your brother. I\'ll be back before the sun goes down. Do you remember the rules?',
    selection = {
        [1] = {'Yes, I do.', 5},
        [2] = {'Remind me, please, just in case.', 7}
    },
    animations = function()
        showDialogue(Mother)
    end,
    animationComplete = function()
    end 
}
scenes[5] = {
    sName = 5,
    text = 'Alena doesn\'t really care about the rules. They have something to do with not playing near the basement, but nothing ever happens in the house, so Alena isn\'t worried.',
    follows = 6,
    clearSelection = true,
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
        print('scene6 animation called')
        showDialogue(Mother)
    end,
    animationComplete = function()
        bless = true
        hideDialogue()
    end
}
scenes[7] = {
    sName = 7,
    text = 'Mom: Don\'t go into the forest.\nDon\'t let your brother run around in the house.\nDon\'t go into the basement, no matter what you hear from there.\nPromise me.',
    follows = 8,
    clearSelection = true,
    animations = function()
        print('scene7 animation called')
        showDialogue(Mother)
    end,
    animationComplete = function()
        hideDialogue()
    end
}
scenes[8] = {
    sName = 8,
    text = 'Alena: I\'ll follow your rules, I promise.',
    follows = 9,
    animations = function()
        print('scene8 animation called')
        showDialogue(Alena)
    end,
    animationComplete = function()
        hideDialogue()
    end
    
}
scenes[9] = {
    sName = 9,
    setStage = 'set9',
    text = 'After hearing that reassurance, her mother leaves, and Alena is alone with her brother. She does all her chores - cleaning the dishes, sweeping the floors, and dusting all the knick-knacks. Then she sits down near the window overlooking the forest, while her brother plays on the floor. ',
    backgr = 'background2.png',
    foregr = 'foreground2.png',
    follows = 10,
    animations = function()
        print('scene9 animation called')
        MotherS.isVisible = false
        AlenaS.isVisible = true
        IvanS.isVisible = true
        AlenaS.x = 490
        IvanS.x = 360
        transition.fadeOut(dishes, {time = 1000, delay=1000})
        transition.to(dishes, {x=145, y=208, delay=2000})
        transition.fadeIn(dishes, {time=1000, x=145, y=208, delay=3000})
        transition.to(broom, {time=1000, x=480, delay=4000})
        transition.to(broom, {time=1000, x=180, delay=5000})      
    end,
    animationComplete = function()
        dishes.x = 145 dishes.y = 208
        broom.x = 180

        hideDialogue()
        AlenaS.x = 490
        IvanS.x = 360

        MotherS.isVisible = false
        AlenaS.isVisible = true
        IvanS.isVisible = true
    end
}
scenes[10] = {
    sName =  10,
    text = 'There\'s nothing going on outside. Alena is soon bored, but being an obedient daughter, she refrains from running around the house and dutifully keeps an eye on her brother.',
    follows = 11,
    animationComplete = function()
    end
}
scenes[11] = {
    sName = 11,
    text = 'Once the sun climbs higher in the sky, the sweltering heat beats upon the house, which grows further and further from the shortening reach of the forest shade. Ivan grows tired of playing with his toys under his sister\'s watchful gaze.',
    follows = 12,
    animations = function()
        transition.fadeIn(sunWindow, {time = 2000})
    end,
    animationComplete = function()
        sunWindow.alpha = 1
    end
}
scenes[12] = {
    sName = 12,
    text = 'Ivan: Alena, can I go and play near the basement door? It is cooler there than in the rest of the house.',
    selection = {
        [1] = {'Sure, but promise me you won\'t open the basement door.', 13},
        [2] = {'No, stay here in the greatroom.', 16}
    },
    animations = function()
        Ivan.x = 400
        showDialogue(Ivan)
    end,
    animationComplete = function()
        hideDialogue()
        Ivan.x = 400
    end
}
scenes[13] = {
    sName = 13,
    text = 'Ivan runs happily to the door and plays with his toys for a while. He likes it here. Despite the sunny day outside, there is frost in the air that comes creeping out from under the basement\'s thick wooden door.',
    follows = 14,
    clearSelection = true,
    animations = function() IvanS.isVisible = false end,
    animationComplete = function() IvanS.isVisible = false choices.basement = true end
}
scenes[14] = {
    sName = 14,
    text = 'When it is time for lunch, Alena calls to her brother, but he doesn\'t answer. “He is probably too busy with his toys!” thinks Alena. Then, she goes looking for him.',
    follows = 18,
    clearSelection = true,
    animations = function() transition.fadeIn(cookOven, {time=1000}) end,
    animationComplete = function() cookOven.alpha = 1 end
}
scenes[15] = {
    sName = 15,
    text = 'Ivan is not happy but stays in chamber dutifully obeying his big sister.',
    follows = 16,
    clearSelection = true,
    animations = function() end,
    animationComplete = function()end
}
scenes[16] = {
    sName = 16,
    text = 'Around noon, Alena cooks lunch, and when she finishes, she calls for her brother, but gets no reply. “Foolish boy!” she thinks.',
    follows = 17,
    clearSelection = true,
    animations = function() IvanS.isVisible = false transition.fadeIn(cookOven, {time=1000})  end,
    animationComplete = function() IvanS.isVisible = false cookOven.alpha = 1 end
}
scenes[17] = {
    sName = 17,
    text = '“He probably went to play near the basement door anyway. The midday heat doesn\'t reach there, so it stays nice and cool.” So she heads for the basement door.',
    follows = 18,
    clearSelection = true,
    animations = function() end,
    animationComplete = function()end
}
scenes[18] = {
    sName = 18,
    setStage = 'set18',
    foregr = 'foreground3.png',
    backgr ='background4.png',
    text = 'Suddenly, Alena sees that the heavy wooden door to the basement is ajar, and she hears a faint whispering “Water, please, give me some water..”',
    follows = 19,
    clearSelection = true,
    animations = function()
        AlenaS.isVisible = true 
        AlenaS.x = 195 AlenaS.y = 210
    end,
    animationComplete = function()
        AlenaS.isVisible = true 
        AlenaS.x = 195 AlenaS.y = 210
    end
}
scenes[19] = {
    sName = 19,
    backgr ='background5.png',
    text = 'Ivan is within, standing in front of an old man, all skin and bones, and bound to the wall with twelve iron chains. “Water, please, give me some water..” pleads the old man.',
    selection = {
        [1] = {'Who are you? What are you doing here?', 20},
        [2] = {'Ivan, step back, don’t get closer!', 21}
    },
    clearSelection = true,
    animations = function() 
        IvanS.isVisible = true 
        IvanS.x = 550 IvanS.y = 400
        koshPrisoner.isVisible = true
        bucketsFloor.isVisible = true 
    end,
    animationComplete = function()
        IvanS.isVisible = true 
        IvanS.x = 550 IvanS.y = 400
        koshPrisoner.isVisible = true
        bucketsFloor.isVisible = true 
    end
}
scenes[20] = {
    sName = 20,
    text = '“I am just an old man… Your mother imprisoned me long ago for my evil deeds. I haven\'t seen the sunlight in years. Be a good girl, give me some water…”',
    clearSelection = true,
    selection = {
        [1] = {'Give the old man some water', 22},
        [2] = {'Don\'t give him anything', 26}
    },
    animations = function() end,
    animationComplete = function()end
}
scenes[21] = {
    sName = 21,
    text = '“Have no fear of me, children. I am old and famished. I mean you no harm. All I ask is a bucket of water to wet my throat. Have mercy, help me please.”',
    clearSelection = true,
    selection = {
        [1] = {'Give the old man some water', 22},
        [2] = {'Don\'t give him anything', 26}
    },
    animations = function() end,
    animationComplete = function() end
}
scenes[22] = {
    sName = 22,
    changeFlow = function()
        choices.bucket=1
    end,
    text = '“Thank you child. (He drinks the bucket in one gulp.) Neither food nor drink has passed my lips for ages. Please, will you fetch me another bucket?”',
    clearSelection = true,
    selection = {
        [1] = {'Give the old man more water', 23},
        [2] = {'Don\'t give him anything', 26}
    },
    animations = function() 
        bucketsFloor.isVisible = false
        bucketFloor.isVisible = true
        animateBucket()
    end,
    animationComplete = function() 
        bucketsFloor.isVisible = false
        bucketFloor.isVisible = true
        bucketWater.alpha = 0
        bucketEmpty.alpha = 0
    end
} 
scenes[23] = {
    sName = 23,
    changeFlow = function()
        choices.bucket = 2
    end,
    text = '“Thank you child. (He drinks the bucket in one gulp.) Neither food nor drink has passed my lips for ages. Please, will you fetch me another bucket?”',
    clearSelection = true,
    selection = {
        [1] = {'Give the old man more water', 24},
        [2] = {'Don\'t give him anything', 26}
    },
    animations = function()
        bucketsFloor.isVisible = false
        bucketFloor.isVisible = true
        animateBucket() 
    end,
    animationComplete = function() 
        bucketsFloor.isVisible = false
        bucketFloor.isVisible = true
        bucketWater.alpha = 0
        bucketEmpty.alpha = 0
    end
}
scenes[24] = {
    sName = 24,
    text = '“Thank you, girl, for your kindness. For that I won\'t eat you. But you are a disobedient daughter, so I don\'t need you. I\'ll take your brother instead!”',
    follows = 25,
    clearSelection = true,
    animations = function()
        showDialogue(Koschei) 
    end,
    animationComplete = function()
        bucketsFloor.isVisible = false
        bucketFloor.isVisible = true
        bucketWater.alpha = 0
        bucketEmpty.alpha = 0
        hideDialogue()
    end
}
scenes[25] = {
    sName = 25,
    text = 'With these words, he tears off all twelve chains, grabs Ivan, swirls on the spot, and in the next second, they are both gone.',
    follows = 31,
    clearSelection = true,
    animations = function() 
        transition.fadeIn(iceEffect1, {time=500})
        transition.fadeIn(iceEffect2, {time=500, delay=500})
        transition.fadeIn(iceEffect3, {time=500, delay=1000})
        transition.fadeOut(IvanS, {time=500, delay=1500})
        koshPrisoner.isVisible = false
        bucketSide.alpha = 1
    end,
    animationComplete = function()
        IvanS.isVisible = false
        koshPrisoner.isVisible = false
        bucketSide.alpha = 1
    end
}
scenes[26] = {
    sName = 26,
    text = '“Aren\'t you tired of always listening to your mother? Don\'t you want to think for yourself and make decisions like a grown up?” he tries to persuade Alena.',
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
    animations = function() end,
    animationComplete = function()end
}
scenes[27] = {
    sName = 27,
    foregr = 'foreground2.png',
    backgr ='background2.png',
    text = 'Alena takes her brother and closes the door to the basement. When they go up, Ivan reproaches her for being so harsh on the prisoner. “Aren\'t we supposed to respect our elders?” asks Ivan.',
    follows = 28,
    clearSelection = true,
    animations = function() 
        koshPrisoner.isVisible = false
        bucketFloor.isVisible = false
        bucketsFloor.isVisible = false
        IvanS.x = 350 IvanS.y = 400
        AlenaS.x = 440 AlenaS.y = 410
    end,
    animationComplete = function()
        koshPrisoner.isVisible = false
        bucketFloor.isVisible = false
        bucketsFloor.isVisible = false
        IvanS.x = 350 IvanS.y = 400
        AlenaS.x = 440 AlenaS.y = 410
    end
}
scenes[28] = {
    sName = 28,
    text = 'Alena says that they should follow mother\'s orders first and foremost. Back in the greatroom, she puts Ivan to bed and nestles near him. In a second, her eyes close and she falls fast asleep.',
    follows = 29,
    animations = function() 
        transition.fadeOut(AlenaS, {time=2000})
        transition.fadeOut(IvanS, {time=1000})
    end,
    animationComplete = function()
        IvanS.alpha = 1
        AlenaS.alpha = 1
        IvanS.x = 550 IvanS.y = 400
        AlenaS.x = 195 AlenaS.y = 210
        koshPrisoner.isVisible = true
        bucketFloor.isVisible = true
        bucketSide.isVisible = true
        bucketSide.alpha = 1
    end
}
scenes[29] = {
    sName = 29,
    foregr = 'foreground3.png',
    backgr ='background5.png',
    text = 'When she wakes up, her brother is nowhere to be found. Panic-stricken, she runs to the basement and sees the open door and an empty buсket on the floor near the prisoner',
    follows = 30,
    clearSelection = true,
    animations = function() 
    end,
    animationComplete = function()end
}
scenes[30] = {
    sName = 30,
    text = '“Thank you, Ivan, for your kindness. For that I’ll take you with me!” says the bony prisoner and tears off all twelve of his chains, grabs Ivan, swirls on the spot, and in the next second, both are gone.',
    follows = 31,
    clearSelection = true,
    animations = function() 
        transition.fadeIn(iceEffect1, {time=500})
        transition.fadeIn(iceEffect2, {time=500, delay=500})
        transition.fadeIn(iceEffect3, {time=500, delay=1000})
        transition.fadeOut(IvanS, {time=500, delay=1500})
        koshPrisoner.isVisible = false
    end,
    animationComplete = function()
        IvanS.isVisible = false
        koshPrisoner.isVisible = false
    end
}
scenes[31] = {
    sName = 31,
    text = "Alena runs outside, screaming her brother\'s name, but gets only the moaning of the wind and the whispering of the forest in reply.",
    follows = 32,
    foregr = 'foreground4.png',
    backgr ='background7.png',
    setStage = 'set31',
    animations = function()
        AlenaCry.alpha = 0
        AlenaCry.isVisible = true 
        AlenaS.y = 400
        AlenaS.x = 500
        transition.fadeOut(AlenaS, {delay=1000, time=1000})
        transition.fadeIn(AlenaCry, {delay=2000, time=1000})
    end,
    animationComplete = function()
        AlenaCry.isVisible = true
        AlenaCry.alpha = 1 
        AlenaS.isVisible = false
    end
}
scenes[32] = {
    sName = 32,
    text = 'Alena\'s mother returns home early, with the strange feeling that something might have happened. Alena can\'t look her in the eyes. She stumbles and mumbles but eventually tells the whole truth.',
    follows = 33,
    animations = function()
        MotherWar.alpha = 0
        MotherWar.isVisible = true
        transition.fadeIn(MotherWar, {time=1000})
    end,
    animationComplete = function()
        MotherWar.isVisible = true
        MotherWar.alpha = 1
    end
}
scenes[33] = {
    sName = 33,
    text = 'Mom: Now Koschei will summon his armies and storm the Tsar-gorod. He\'s had dozen of years to plan his revenge for his imprisonment. The Tsar will need my help, so you have to find your brother on your own.',
    follows = 34,
    animations = function()
        showDialogue(MotherW)
    end,
    animationComplete = function()
        hideDialogue()
    end
}
scenes[34] = {
    sName = 34,
    text = 'Alena\'s mother, no other than Marya Morevna, the famous warrior princess, whistles and a second later, the depths of the forest open, and a huge grey wolf appears before Alena\'s eyes.',
    follows = 35,
    animations = function()end,
    animationComplete = function()end
}
scenes[35] = {
    sName = 35,
    text='Mom:“That\'s my old friend and loyal companion, Grey Wolf. He helped me to imprison the Koschei last time. He will serve you as good as he served me.” says Alena\'s mother. ',
    follows = 36,
    animations = function()end,
    animationComplete = function()end
}
scenes[36] = {
    sName = 36,
    text='Mom: “Koschei lives in an icy stronghold to the north. He is Deathless, so there\'s no killing him, but you can get into his castle to save your brother, while he is busy fighting me and the Tsar.”',
    follows = 37,
    animations = function()end,
    animationComplete = function()end
}

-----------------------------------------------------------------------------------------
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
    transition.to(dialBack, {y=0, time=500})
    --transition.to(name, {y=400, time=500})
    if name==Mother or name==MotherW then transition.to(name, {y=400, time=500}) end
    if name==Alena or name==AlenaCry then transition.to(name, {y=500, time=500}) end

end

function hideDialogue()
    local characters = {'Mother', 'Alena', 'Ivan'}
    for i=1, characters do characters[i].y = -700 end
    dialBack.y = -800
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

-- Move layers in the right order
local function organizeStage()
    background:toFront()
    midlayer1:toFront()
    midlayer2:toFront()
    characters:toFront()
    midlayer3:toFront()
    foreground:toFront()
    textLayers:toFront()
end

-- Fill up the stage
local function setStageObjects(stage)
    local stages = {
        set1 = function()
            sun = display.newImage(midlayer1, "images/sun.png", true) setAnchor(sun)
            sun.x = 400 sun.y = -400

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

            shadowLayer = display.newImage(midlayer2, "images/act1_shadowLayer.png", true) setAnchor(shadowLayer) shadowLayer.alpha = 0
        end,
        set9 = function()
            clearStage()
            print('setting scene 9')
            sunWindow = display.newImage("images/h_window_light.png", 512, 100)
            sunWindow.anchorX = 0 sunWindow.anchorY = 0 
            sunWindow.alpha = 0
            midlayer2:insert(sunWindow)

            dishes = display.newImage("images/dishes.png", 560, 350)
            dishes.anchorX = 0 dishes.anchorY = 0 
            midlayer2:insert(dishes)

            cookOven = display.newImage("images/oven_fire.png", 45, 265)
            cookOven.anchorX = 0 cookOven.anchorY = 0
            cookOven.alpha = 0
            midlayer2:insert(cookOven) 

            broom = display.newImage("images/broom.png", 180, 290)
            broom.anchorX = 0 broom.anchorY = 0 
            midlayer3:insert(broom)
        end,
        set18 = function()
            clearStage()
            print('setting scene 18')
            koshPrisoner = display.newImage("images/kosh_chained.png", 675, 4)
            koshPrisoner.anchorX = 0 koshPrisoner.anchorY = 0
            koshPrisoner.isVisible = false
            midlayer2:insert(koshPrisoner)

            bucketsFloor = display.newImage("images/buckets_2.png", 130, 430)
            bucketsFloor.anchorX = 0 bucketsFloor.anchorY = 0
            bucketsFloor.isVisible = false
            midlayer2:insert(bucketsFloor)

            bucketFloor = display.newImage("images/buckets_1.png", 130, 430)
            bucketFloor.anchorX = 0 bucketFloor.anchorY = 0
            bucketFloor.isVisible = false
            midlayer2:insert(bucketFloor)

            bucketEmpty  = display.newImage("images/bucket_empty.png", 250, 400)
            bucketEmpty.anchorX = 0 bucketEmpty.anchorY = 0
            bucketEmpty.isVisible = false
            midlayer3:insert(bucketEmpty)

            bucketWater  = display.newImage("images/bucket_water.png", 300, 300)
            bucketWater.anchorX = 0 bucketEmpty.anchorY = 0
            bucketWater.alpha = 0
            midlayer3:insert(bucketWater)

            bucketSide  = display.newImage("images/bicket_side.png", 600, 450)
            bucketSide.anchorX = 0 bucketSide.anchorY = 0
            bucketSide.alpha = 0
            midlayer3:insert(bucketSide)

            iceEffect1 = display.newImage("images/iceLayer1.png", 400, 0)
            iceEffect1.anchorX = 0 iceEffect1.anchorY = 0
            iceEffect1.alpha = 0
            midlayer3:insert(iceEffect1)

            iceEffect2 = display.newImage("images/iceLayer2.png", 400, 300)
            iceEffect2.anchorX = 0 iceEffect2.anchorY = 0
            iceEffect2.alpha = 0
            midlayer3:insert(iceEffect2)

            iceEffect3 = display.newImage("images/iceLayer3.png", 400, 300)
            iceEffect3.anchorX = 0 iceEffect3.anchorY = 0
            iceEffect3.alpha = 0
            midlayer3:insert(iceEffect3)
        end,
        set31 = function()
            clearStage()
            orangeLight = display.newImage("images/orange_sun.png", 680, 400)
            orangeLight.alpha = 0.5
            midlayer2:insert(orangeLight)
        end
    }
    stages[stage]()
end


-- Main text listener
function sceneTextTouch(event)
    if event.phase == "began" and event.target.follows then
        print(event.target.index)
        print(scenes[event.target.index])
        scenes[event.target.index].animationComplete()
        transition.cancel()
        loadScene(scenes[event.target.follows])
    end
    return true
end

function opening()
    openingAnimation()
    loadScene(scenes[1])
end

function loadScene(s)
    print('Start displaying scene '..s.sName)
    if(s.changeFlow) then s.changeFlow() end

    if not s.follows then
        print('Scene has selection One is: '..s.selection[1][2]..' Second is '..s.selection[2][2])
        select1Container.isVisible = true
        select1Text.isVisible = true
        select1Text.text = s.selection[1][1]
        setAnchor(select1Text)
        select1Text.alpha = 0
        transition.to(select1Text, {alpha=1, time=2000}) 
        select1Text:setFillColor( 0, 0, 0 )
        select1Text.follows = s.selection[1][2]
        select1Text.index = s.sName

        select2Container.isVisible = true
        select2Text.isVisible = true
        select2Text.text = s.selection[2][1]
        setAnchor(select2Text)
        select2Text.alpha = 0
        transition.to(select2Text, {alpha=1, time=2000}) 
        select2Text:setFillColor( 0, 0, 0 )
        select2Text.follows = s.selection[2][2]
        select2Text.index = s.sName

        textContainer.isVisible = true;
        sceneText.text = s.text
        setAnchor(sceneText)
        sceneText.alpha = 0
        transition.to(sceneText, {alpha=1, time=2000}) 
        sceneText:setFillColor( 0, 0, 0 )

        sceneText.follows = nil
        sceneText.index = nil


    else
        if s.clearSelection then 
            print('This sceene needs clearSelection')
            select1Container.isVisible = false
            select1Text.isVisible = false
            select2Container.isVisible = false
            select2Text.isVisible = false
        end 
        print('Scene has no selection')
        textContainer.isVisible = true;
        -- Set Text
        sceneText.text = s.text
        setAnchor(sceneText)
        sceneText.alpha = 0
        transition.to(sceneText, {alpha=1, time=1000}) 
        sceneText:setFillColor( 0, 0, 0 )
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
        foreground = display.newImage( "images/"..s.foregr, true ) setCenter(foreground) setAnchor(foreground)
    end
    if(s.animations) then
        s.animations()
    end
    organizeStage()
end 



-- Loading game for a first time
local myListener = function( event )
    print("myListener called")
    -- Runtime:removeEventListener("touch", myListener)

    textContainer = display.newImage(textLayers, "images/text_back.png") setAnchor(textContainer)
    textContainer.x = 10 textContainer.y = 570 
    textContainer.isVisible = false;

    select1Text = display.newText(textLayers, '', 730, 110, 250, display.contentHeight * 0.5, 'PTSans-Regular', 18) 
    select2Text = display.newText(textLayers, '', 730, 190, 0, display.contentHeight * 0.5, 'PTSans-Regular', 18)
    sceneText = display.newText(textLayers, '', 50, 610, 930, display.contentHeight * 0.5, 'PTSans-Regular', 18)

    select1Text:addEventListener( "touch", sceneTextTouch)
    select2Text:addEventListener( "touch", sceneTextTouch)
    sceneText:addEventListener( "touch", sceneTextTouch)

    opening()
end

background:addEventListener( "touch", myListener )
