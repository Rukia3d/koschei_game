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
local charactersAdd = display.newGroup()

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
local MotherS = display.newImage( characters, "images/mother_s_small.png") MotherS.x = 540 MotherS.y = -400 
local WolfS = display.newImage( characters, "images/wolf_s_small.png") WolfS.x = -200 WolfS.y = -400
local WolfSit = display.newImage( characters, "images/wolf_f_small.png") WolfSit.x = -200 WolfS.y = -400  
local EagleS = display.newImage( characters, "images/eagle_f_small.png") EagleS.x = 500 EagleS.y = -400
local FalconS = display.newImage( characters, "images/falcon_f_small.png") FalconS.x = 500 FalconS.y = -400 
local RavenS = display.newImage( characters, "images/raven_f_small.png") RavenS.x = 500 RavenS.y = -400  


-- Small characters  changed images
local AlenaCryS = display.newImage( characters, "images/alena_cry_small.png") AlenaCryS.x = 400 AlenaCryS.y =-400 
local AlenaNoRibbon = display.newImage( characters, "images/alena_noRib_small.png") AlenaNoRibbon.x = 400 AlenaNoRibbon.y =-400 
local MotherWarS = display.newImage( characters, "images/mother_f_small.png") MotherWarS.x = 600 MotherWarS.y = -400  
local AlenaOnWolf = display.newImage( characters, "images/alena_on_wolf.png") AlenaOnWolf.x = 1200 AlenaOnWolf.y = 270
local AlenaOnWolfNoRibbon = display.newImage( characters, "images/alena_on_wolf_noR.png") AlenaOnWolfNoRibbon.x = 1200 AlenaOnWolfNoRibbon.y = 270

-- Background for dialogue stage
local dialBack = display.newImage(characters, "images/dialBack.png", true )
dialBack.anchorX = 0 dialBack.anchorY = 0 
dialBack.y=-800

-- Big characters for dialogue stage
local Alena = display.newImage( characters, "images/alena_f_dialogue.png") Alena.x = 400 Alena.y = 800 
local Ivan = display.newImage( characters, "images/ivan_s_dialogue.png") Ivan.x = 300 Ivan.y = 800
local Mother = display.newImage( characters, "images/mother_s_dialogue.png", false) Mother.x = 400 Mother.y = 800 
local MotherWar = display.newImage( characters, "images/mother_f_dialogue.png", false) MotherWar.x = 400 MotherWar.y = 900
local Koschei = display.newImage( characters, "images/koschei_f_big.png", false) Koschei.x = 300 Koschei.y = 800
local KoscheiPlea = display.newImage( characters, "images/kosh_plea_dialogue.png", false) KoscheiPlea.x = 900 KoscheiPlea.y = 800
local Wolf  = display.newImage( characters, "images/wolf_dialogue.png", false) Wolf.x = 700 Wolf.y = 800
local Eagle = display.newImage( characters, "images/eagle_dialogue.png") Eagle.x = 400 Eagle.y = 800
local Falcon = display.newImage( characters, "images/falcon_dialogue.png") Falcon.x = 400 Falcon.y = 800
local Raven = display.newImage( characters, "images/raven_dialogue.png") Raven.x = 400 Raven.y = 800  


-- Changing variables
local BrotherS = EagleS 
local BrotherD = Eagle
local StrongholdBR = display.newImage("images/act7_Raven_stronghold.png", false) StrongholdBR.x=0 StrongholdBR.y=0
local StrongholdBF = display.newImage("images/act7_Falcon_stronghold.png", false) StrongholdBF.x=0 StrongholdBF.y=0
local StrongholdBE = display.newImage("images/act7_Eagle_stronghold.png", false) StrongholdBE.x=0 StrongholdBE.y=0

-- Set main screen
local background = display.newImage( "images/startScreen.png") background.x = display.contentWidth / 2 background.y = display.contentHeight / 2

-- Variables for stage content
local foreground  = display.newImage( "images/transparent.png")
local settings

-- Variables for selections
local select1Container = display.newImage(textLayers, "images/selection_back.png")
select1Container.x = 850 select1Container.y = 130
select1Container.isVisible = false;

local select2Container = display.newImage(textLayers, "images/selection_back.png")
select2Container.x = 850 select2Container.y = 200
select2Container.isVisible = false;

local select3Container = display.newImage(textLayers, "images/selection_back.png")
select3Container.x = 850 select3Container.y = 270
select3Container.isVisible = false;

local select1Text = display.newText(textLayers, '', 755, 110, 250, display.contentHeight * 0.5, 'PTSans-Regular', 18) 
local select2Text = display.newText(textLayers, '', 755, 180, 250, display.contentHeight * 0.5, 'PTSans-Regular', 18)
local select3Text = display.newText(textLayers, '', 755, 250, 250, display.contentHeight * 0.5, 'PTSans-Regular', 18)

-- Variables for text
local textContainer = display.newImage(textLayers, "images/text_back.png")
textContainer.x = 10 textContainer.y = 560 
textContainer.isVisible = false;

local sceneText = display.newText(textLayers, '', 50, 610, 900, display.contentHeight * 0.5, 'PTSans-Regular', 18)

-----------------------------------------------------------------------------------------
--
-- SEPARATED ANIMATIONS
--
-----------------------------------------------------------------------------------------
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

local function setBasementStage()
    transition.to(basementStage, {alpha=1, time=3000, delay=1000})
    transition.to(icyCurtain, {alpha=1, time=3000, delay=1000})
    transition.to(lights3, {y=0, time=1000, delay=2000})
    transition.to(bucket1, {y=-50, time=1000, delay=2000})
    transition.to(bucket2, {y=470, time=1000, delay=2000})
    transition.to(bucketTread, {y=-50, time=1000, delay=2000})
    transition.to(waterFount, {y=0, time=1000, delay=3000})
    transition.to(koshPrisoner, {y=0, time=1000, delay=3500})
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

    foreground = display.newImage( "images/"..foregr, true ) setAnchor(foreground)
    foreground.y = -700
    transition.to(foreground, {y=0, time=1000})
end

function ridingWolftoRight(AlenaRibbon)
    transition.to(landscape2, {x=-500, time=3000 })
    transition.to(landscape1, {x=0, time=3000 })
    transition.to(starsAndMoon, {y=0, time=1000})
    transition.to(AlenaRibbon, {x=800, time=3000})
end

function ridingWolftoLeft(AlenaRibbon)
    AlenaRibbon.xScale=-1 AlenaRibbon.x=0
    transition.to(AlenaRibbon, {x=400, time=3000})
    transition.to(landscape2, {x=-1300, time=3000 })
    transition.to(landscape1, {x=-1500, time=3000 })
end

function loadUncleCastle(AlenaChar)
        WolfSit.x=900
        AlenaChar.x=740
        transition.to(landscape3, {x=0, time=1000, delay=1000})
        transition.to(landscape2, {y=0, time=1000, delay=2000})
        transition.to(shadowLayer6, {alpha=1, time=1000, delay=3000})
        transition.to(WolfSit,{y=270, time=1000, delay=3000})
        transition.to(AlenaChar,{y=280, time=1000, delay=3000})
        transition.to(throne, {y=-30, time=500, delay=4000})
        transition.to(birdSymbol, {y=320, time=500, delay=4000})
        transition.to(BrotherS, {y=300, delay=4000, time=1000})
end


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
    charactersAdd:toFront()
    characters:toFront()
    midlayer3:toFront()
    foreground:toFront()
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
    brother = 'Eagle',
    brother1 = 'an eagle',
    advice = true,
}

local scenes = {}; 

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
            transition.to(landscape3, {x=0, time=1000, delay=1000})
            transition.to(landscape2, {x=-15, time=1000, delay=1000})
            transition.to(landscape1, {y=630, time=500, delay=2000})
            transition.to(landscape1, {rotation=0, y=630, time=1000, delay=2500})
            transition.to(shadowLayer1, {alpha=1, time=1000, delay=3500})
            transition.to(houseOutside, {y=0, time=1000, delay=3700})
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
            --organizeStage()
        end
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
            bless = true
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
            --shadowLayer2:toFront()
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
            broom.isVisible = false
            dishes.isVisible = false
        end,
        animationComplete = function()
            hideDialogue()
            broom.isVisible = false
            dishes.isVisible = false
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
            transition.to(firePot, {y=0, time=1000, delay=500}) 
        end,
        animationComplete = function()
            firePot.y=0 
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
            hideDialogue()
            transition.to(firePot, {y=0, time=1000, delay=500})  
        end,
        animationComplete = function()
            firePot.y=0 
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
            setBasementStage()
        end,
        animationComplete = function()
            foreground.y = 0
            basementStage.alpha=1
            icyCurtain.alpha=1
            lights3.y=0
            waterFount.y=0
            koshPrisoner.y=0
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
            [2] = {'"Ivan, step back, don’t get closer!"', 21}
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
            icyCurtain.isVisible = true
            hideDialogue()

            transition.to(icyCurtain, {y=-1000, time=1500})
            transition.to(chains, {alpha=1, time=1000, delay=500})
            transition.to(koshPrisoner, {y = -600, time=500, delay=500})
            transition.to(IvanS, {y = -600, time=500, delay=500})
        end,
        animationComplete = function()
            icyCurtain.y=-1000
            chains.alpha=1
            koshPrisoner.y=-600
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
        openingAnimation = {
            [1] = 'background2.png', 
            [2] = 'foreground2.png'
        },
        text = 'Alena takes her brother and closes the door to the basement. When they go up, Ivan reproaches her for being so harsh on the prisoner. "Aren\'t we supposed to respect our elders?" asks Ivan.',
        follows = 28,
        clearSelection = true,
        animations = function()
            hideDialogue()
            shadowLayer2.alpha=0
            setStageHome()
            shadowLayer2.alpha=0.5
        end,
        animationComplete = function()
            bed.y=0
            tableCloth.y=5
            shadowLayer2.alpha=0.5
            foreground.y = 0
        end
    }
    scenes[28] = {
        sName = 28,
        text = 'Alena says that they should follow mother\'s orders first and foremost. Back in the greatroom, she puts Ivan to bed and nestles near him. In a second, her eyes close and she falls fast asleep.',
        follows = 29,
        animations = function() 
            AlenaS.x = 450 
            IvanS.x = 350
            transition.to(AlenaS, {y=270, time=1000, delay=1000})
            transition.to(IvanS, {y=290, time=1000, delay=1500}) 
        end,
        animationComplete = function()
            AlenaS.x = 450  AlenaS.y = 270 
            IvanS.x = 350 IvanS.y = 290
        end
    }
    scenes[29] = {
        sName = 29,
        setStage = 'set18',
        openingAnimation = {
            [1] = 'background3.png', 
            [2] = 'foreground3.png'
        },
        text = 'When she wakes up, her brother is nowhere to be found. Panic-stricken, she runs to the basement and sees the open door and an empty buсket on the floor near the prisoner.',
        follows = 30,
        clearSelection = true,
        animations = function() 
            setBasementStage()
            IvanS.x=560
            AlenaS.x=240
            transition.to(AlenaS, {y=60, time=1000, delay=1000})
            transition.to(IvanS, {y=290, time=1000, delay=1500})
        end,
        animationComplete = function()
            foreground.y = 0
            basementStage.alpha=1
            icyCurtain.alpha=1
            lights3.y=0
            waterFount.y=0
            koshPrisoner.y=0
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
        text = '"Thank you, Ivan, for your kindness. For that I’ll take you with me!" says the bony prisoner and tears off all twelve of his chains, grabs Ivan, swirls on the spot, and in the next second, both are gone.',
        follows = 31,
        clearSelection = true,
        animations = function() 
            icyCurtain.isVisible = true

            transition.to(icyCurtain, {y=-1000, time=1500})
            transition.to(chains, {alpha=1, time=1000, delay=500})
            transition.to(koshPrisoner, {y = -600, time=500, delay=500})
            transition.to(IvanS, {y = -600, time=500, delay=500})
        end,
        animationComplete = function()
            icyCurtain.y=-1000
            chains.alpha=1
            koshPrisoner.y=-600
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
        text = 'Alena\'s mother, no other than Marya Morevna, the famous warrior princess, whistles and a second later, the depths of the forest open, and a huge grey wolf appears before Alena\'s eyes.',
        follows = 35,
        animations = function()
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
        text='Mom: "That\'s my old friend and loyal companion, Grey Wolf. He helped me to imprison the Koschei last time. He will serve you as good as he served me."" says Alena\'s mother. ',
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
    text='Alena sits on Grey Wolf\'s back, hugs his massive neck, and he starts to run - so fast that before the sun touches down on the treetops to the west, they have already reached the crossroads on the other side of the forest.',
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
        [1] = {'Choose to go left', 42},
        [2] = {'Choose to go straight', 43},
        [3] = {'Choose to go right', 44}
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
        return '"Don’t get scared, daughter of Marya, it is not Koschei\'s lair. It is the domain of your mother\'s brother, the shape-shifting wizard who can turn into '..choices.brother1..'," says the Gray Wolf suddenly.'
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
    text = 'Grey Wolf: "I can do many things and before the sun rises, you will see that, daughter of Marya. Before you have to deal with consequences of your choices."',
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
    text = 'Grey Wolf: "Yes, she has three brothers, all wizards who can turn into birds of prey - Eagle, Raven or Falcon. They were inseparable a long time ago, but after traveling to Koschei\'s stronghold, they had a falling out."',
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
        loadUncleCastle(AlenaS)
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
    text = 'Uncle: "That’s a very sad story indeed. I remember my own journey to Koschei’s stronghold... It is not a place for a young girl. And if what you told me is true, I need to concentrate on protecting my kingdom, not on helping you."',
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
    text = 'Uncle: "So if you want to help me - steal at least one golden apple and the horse for me. Then I’ll think about telling you how to get into Koschei’s castle."',
    follows = 59,
    changeFlow = function()
        if BrotherD == Falcon then scenes[58].follows = 59
        elseif BrotherD == Raven then scenes[58].follows = 60
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

-------- Act 3 Scenes 62 - 

scenes[62] = {
    setStage = 'set62',
    sName = 62,
    text = 'They rush at full speed, so the lights of the stars in the sky flow together into a river of spilled milk. On the way, the north wind tears away a ribbon from Alena’s braid.',
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
    text = 'Gray Wolf grins while Alena tells him how the wind stole her ribbon. "Your ribbon is now five miles behind us, because even wind can’t keep pace with me."',
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
        --WALL APPEAR AND JUMP
        StrongholdB1.x=700
        transition.to(landscape2, {x=-1700, time=1700})
        transition.to(landscape1, {x=-2100, time=1700})
        transition.to(StrongholdB1, {x=-120, time=1700})
        transition.to(AppleGarden, {x=400, time=1700})
        transition.to(AlenaOnWolfNoRibbon, {x=500, delay=1000, time=500})
        transition.to(AlenaOnWolfNoRibbon, {y=0, delay=1000, time=500})
        transition.to(AlenaOnWolfNoRibbon, {x=600, delay=1500, time=500})
        transition.to(AlenaOnWolfNoRibbon, {y=300, delay=1500, time=500})
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
        transition.to(landscape2, {x=-1700, time=1000})
        transition.to(landscape1, {x=-2000, time=1000})
        transition.to(StrongholdB1, {x=-400, time=1000})
        transition.to(AppleGarden, {x=120, time=1000})
        transition.to(AlenaOnWolfNoRibbon, {y=-400, time=500})
        AlenaNoRibbon.x=350
        WolfSit.xScale = -1
        WolfSit.x=200
        transition.to(AlenaNoRibbon, {y=270, time=1000})
        transition.to(WolfSit, {y=270, time=1000})
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
    end,
}

scenes[67] = {
    sName = 67,
    clearSelection = true,
    text = 'She leaves the ribbon on the branch and gets back to Gray Wolf. "You are a  good girl, daughter of Marya, your mother raised you well," says Grey Wolf and they rush back.',
    follows = 73,
    animations = function()
        transition.to(AlenaNoRibbon, {x=350,time=1000})
        transition.to(GoldenApple, {x=320, time=1000})
    end,
    animationComplete = function() end,
}

scenes[68] = {
    sName = 68,
    changeFlow = function() 
        if choices.brother=='Raven' then
            -- If we got the quest from Raven we go to Falcon. Othervise we go ro Raven
            scenes[68].follow = 69
        else
            scenes[68].follow = 70
        end
    end,
    clearSelection = true,
    text = 'The moment Alena touches the ribbon an alarm sounds.',
    follows = 69,
    animations = function() end,
    animationComplete = function() end,
}

scenes[69] = {
    sName = 69,
    clearSelection = true,
    text = 'Gray Wolf grabs Alena and leaps over the wall. "You should have listened to me," he says. "Now Falcon\'s hounds will follow us to his brother’s stronghold!"',
    follows = 71,
    animations = function() end,
    animationComplete = function() end,
}

scenes[70] = {
    sName = 70,
    clearSelection = true,
    text = 'Gray Wolf grabs Alena and leaps over the wall. "You should have listened to me," he says. "Now Raven\'s hounds will follow us to his brother’s stronghold!"',
    follows = 71,
    animations = function() end,
    animationComplete = function() end,
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
    transition.to(dialBack, {y=0, time=500})
    --Re-center the object
    name.x = 400 name.y = 800

    --Change position based on the onject
    if name==Mother or name==MotherWar then transition.to(name, {y=400, time=500}) end
    if name==Alena then transition.to(name, {y=400, time=500}) end
    if name==Ivan then transition.to(name, {y=400, time=500}) end
    if name==KoscheiPlea then KoscheiPlea.x=200 transition.to(name, {y=400, time=500}) end
    if name==Koschei then transition.to(name, {y=400, time=500}) end
    if name==Wolf then Wolf.x=700 transition.to(name, {y=430, time=500}) end
    if name==BrotherD then BrotherD.x=300 transition.to(name, {y=400, time=500}) end

end

function hideDialogue()
    local characters = {Mother, Alena, Ivan, KoscheiPlea, Koschei, MotherWar, Wolf, BrotherD}
    for i=1, table.getn(characters) do characters[i].y = -700 end
    transition.to(dialBack, {y = -800, time=500})
    --dialBack.y = -800
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
    IvanS.x = 130 IvanS.y = -400
    MotherS.x = 540 MotherS.y = -400 
    AlenaCryS.x = 400 AlenaCryS.y = -400
    MotherWarS.x = 600 MotherWarS.y = -400
    WolfS.x=-300 WolfS.y=-400
    WolfSit.x=600 WolfSit.y=-400
    AlenaOnWolf.x=1200 AlenaOnWolf.y=270
    AlenaOnWolfNoRibbon.x=1200 AlenaOnWolfNoRibbon.y=270
    EagleS.x = 500 EagleS.y=-400
    BrotherS.x = 500 BrotherS.y=-400
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

            shadowLayer1 = display.newImage(midlayer2, "images/act1_shadowLayer.png", true) setAnchor(shadowLayer1) shadowLayer1.alpha = 0

            leaves = display.newImage(midlayer3,"images/act3_leavesFall.png", true) setAnchor(leaves) leaves.alpha = 0
            leaves.x=700 leaves.y=-550

            organizeStage()
        end,
        set9 = function()

            bed = display.newImage(midlayer1, "images/act2_bed.png", true) setAnchor(bed)
            bed.x=280 bed.y = -500

            tableCloth = display.newImage(midlayer1, "images/act2_table.png", true) setAnchor(tableCloth)
            tableCloth.x = 520 tableCloth.y=-500

            shadowLayer2 = display.newImage(midlayer2, "images/act2_shadowLayer.png", true) setAnchor(shadowLayer2) 
            shadowLayer2.alpha = 0

            broom = display.newImage(midlayer2, "images/act2_broom.png", true) setAnchor(broom)
            broom.x=200 broom.y = -600

            dishes = display.newImage(midlayer2, "images/act2_dishes.png", true) setAnchor(dishes)
            dishes.x=580 dishes.y = -500

            firePot = display.newImage(midlayer2, "images/act2_firePot.png", true) setAnchor(firePot)
            firePot.x=120 firePot.y = -500

            organizeStage()
        end,
        set18 = function()
            clearStage()
            basementStage = display.newImage(midlayer1, "images/background4.png", true) setAnchor(basementStage)
            basementStage.x=0 basementStage.y = 0 basementStage.alpha=0
            
            waterFount = display.newImage(midlayer1, "images/act3_water.png", true) setAnchor(waterFount)
            waterFount.x=640 waterFount.y = -500

            lights3 = display.newImage(midlayer1, "images/act3_lights.png", true) setAnchor(lights3)
            lights3.x=280 lights3.y = -500

            bucket1 = display.newImage(midlayer2, "images/act2_bucket1.png", true) setAnchor(bucket1)
            bucket1.x=130 bucket1.y = -550

            koshPrisoner = display.newImage(midlayer2, "images/kosh_chained.png", true) setAnchor(koshPrisoner)
            koshPrisoner.x=680 koshPrisoner.y = -600

            chains = display.newImage(midlayer2, "images/act2_chains.png", true) setAnchor(chains)
            chains.x=680 chains.y = 0 chains.alpha=0

            bucket2 = display.newImage(midlayer2, "images/act2_bucket2.png", true) bucket2.anchorY = 0.5 bucket2.anchorX = 1
            bucket2.x=275 bucket2.y = -55

            bucketTread = display.newImage(midlayer2, "images/act2_bucketTread.png", true) setAnchor(bucketTread)
            bucketTread.x=180 bucketTread.y = -600

            icyCurtain = display.newImage(midlayer3, "images/icyCurtain.png", true) setAnchor(icyCurtain)
            icyCurtain.x=350 icyCurtain.y = 50 icyCurtain.alpha=0

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

            fortress2 = display.newImage(midlayer1, "images/act5_fortress2.png", true) setAnchor(fortress2)
            fortress2.x = -115 fortress2.y = 190

            bridge = display.newImage(midlayer1, "images/act5_bridge.png", true) setAnchor(bridge)
            bridge.alpha = 0
            bridge.x = 480 bridge.y = 480
            bridge.anchorX = 1 bridge.anchorY = 1

            fortress = display.newImage(midlayer1, "images/act5_fortress.png", true) setAnchor(fortress)
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
                BrotherS = FalconS
                BrotherD = Falcon

            elseif choices.brother=='Raven' then
                landscape2 = display.newImage(midlayer1, "images/act6_landscape2b.png", true)
                throne = display.newImage(midlayer2, "images/act6_chairBlue.png", true)
                birdSymbol = display.newImage(midlayer2, "images/act6_Raven_stand.png", true)
                setAnchor(birdSymbol) birdSymbol.x = 215 birdSymbol.y = -200
                BrotherS = RavenS
                BrotherD = Raven
            else
                landscape2 = display.newImage(midlayer1, "images/act6_landscape2r.png", true)
                throne = display.newImage(midlayer2, "images/act6_chairGold.png", true)
                birdSymbol = display.newImage(midlayer2, "images/act6_Eagle_stand.png", true)
                setAnchor(birdSymbol) birdSymbol.x = 200 birdSymbol.y = -200
                BrotherS = EagleS
                BrotherD = Eagle
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
            ribbon.x = 150 ribbon.y=30 

            if choices.brother=="Raven" then
                StrongholdB1 = StrongholdBF 
            else
                StrongholdB1 = StrongholdBR
            end

            setAnchor(StrongholdB1) StrongholdB1.x=1200 StrongholdB1.y=10
            midlayer2:insert(StrongholdB1)
            StrongholdB1:toFront()

            shadowLayer5 = display.newImage(midlayer2, "images/act5_shadowLayer.png", true) setAnchor(shadowLayer5) shadowLayer5.alpha=1

            AppleGarden = display.newImage(midlayer2, "images/act7_Garden.png", true) setAnchor(AppleGarden)
            AppleGarden.x=1200 AppleGarden.y=-65

            GoldenApples = display.newImage(midlayer3, "images/act7_goldenApples.png", true) setAnchor(GoldenApples)
            GoldenApples.x=470 GoldenApples.y=-500
            GoldenApple = display.newImage(midlayer3, "images/act7_goldenApple.png", true) setAnchor(GoldenApple)
            GoldenApple.x=500  GoldenApple.y=-500
            TreeRibbon = display.newImage(midlayer3, "images/act7_treeRibbon.png", true) setAnchor(TreeRibbon)
            TreeRibbon.x=560  TreeRibbon.y=-500

            foreground = display.newImage(midlayer3, "images/foreground6.png", true ) setAnchor(foreground)

            organizeStage() 
        end

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
    if s.openingAnimation then openingAnimation(s.openingAnimation[1], s.openingAnimation[2]) 
    end
    if s.changeFlow then s.changeFlow() end

    if not s.follows then
        print('This sceene has Selection')
        if(s.selection[1]) then
            print('This sceene has 1 selection')
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

        textContainer.isVisible = true;

        -- Set the text or call it depending on the type
        if type(s.text)=='function' then sceneText.text = s.text() else sceneText.text = s.text end
        setAnchor(sceneText)
        sceneText.alpha = 0
        transition.to(sceneText, {alpha=1, time=2000}) 
        sceneText:setFillColor( 0, 0, 0 )

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
        textContainer.isVisible = true;
        sceneText.text = s.text
        setAnchor(sceneText)
        sceneText.alpha = 0
        transition.to(sceneText, {alpha=1, time=1000}) 
        sceneText:setFillColor( 0, 0, 0 )
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
        foreground = display.newImage( "images/"..s.foregr, true ) setCenter(foreground) setAnchor(foreground)
    end
    if(s.animations) then
        s.animations()
    end
    print('Going to organize stage of '..s.sName)
    organizeStage()
end 



-- Loading game for a first time
local myListener
myListener = function( event )
    print("myListener called")
    background:removeEventListener("touch", myListener)
    setAnchor(textContainer)
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

    loadScene(scenes[62])
    return true
end

background:addEventListener( "touch", myListener )