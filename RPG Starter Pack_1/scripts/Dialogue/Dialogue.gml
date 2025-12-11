function create_dialog(_messages){
    if (instance_exists(obj_dialog)) return;
        
    var _inst = instance_create_depth(0, 0, 0, obj_dialog);
    _inst.messages = _messages;
    _inst.current_message = 0;
}
function create_boss_dialog(_messages){
    if (instance_exists(obj_boss_dialog)) return;
        
    var _inst = instance_create_depth(0, 0, 0, obj_boss_dialog);
    _inst.messages = _messages;
    _inst.current_message = 0;
}

char_colors = {
    "Congrats": c_yellow,
    "Cross": c_yellow,
    "Lil Mush": c_aqua,
    "Cam": c_orange,
    "Angsty Chest": c_yellow
}

room1_end = [
{
    name: "Cross",
    msg: "Hello again Little Mushroom...\n I'm glad to see you survived!"
},
{
    name: "Cross",
    msg: "I hope you are strong enough for the next areas to come!"
},
{
  name: "Cross",
  msg: "If your lucky, you might find new cards on your travels!"  
},
]

welcome_dialog = [
{
    name: "Cross",
    msg: "You, traveler, come hither!"
}, 

{
    name: "Cross", 
    msg: "I am in need of a strong warrior to defeat the many of enemies lurking beyond the grass beneath our very feet!"
},

{
    name: "Cross", 
    msg: "Are you up to the task brave warrior?"
},

{
    name: "Lil Mush", 
    msg: "..."
},

{
    name: "Cross", 
    msg: "Well...I mean..."
},

{
    name: "Cross",
    msg: "I would go but I hasth stubbed my toe! So it is up to you!"
},
{
    name: "Lil Mush",
    msg: "......"
},
{
    name: "Cross",
    msg: "Whats this?!"
},
{
    name: "Cross",
    msg: "Oh that other sad looking boy over there?...Make him do it?!"
},
{ 
    name: "Cross",
    msg: "HA! Oh my dear little Mushroom...that boy is afraid of his own sneezes!"
},
{
    name: "Cross",
    msg: "For making me laugh, here are thine battle cards for your troubles."
},
{
    name: "Lil Mush",
    msg: "......."
},
{
    name: "Cross",
    msg: "Ahem...Well don't just stand there your making this awkward. Your adventure awaits!"
},
    
]

cam_diag1 = [
{
    name: "Cam",
    msg: "Hey there Mushro- ah...AH...ACHOOOOO!"
},

{
    name:"Cam",
    msg: "AHHHHHH!!!"
},
]

boss_diag_start = [ //add to game
{
    name: "Cross",
    msg: "YOU FOOL!"
},

{
    name: "Cross",
    msg: "I never stubbed thine toe! Twas a well thought out trick to battle you to your demise!"
},

{
    name: "Lil Mush",
    msg: "........."
},

{
    name: "Cross",
    msg: "I envey you and your silence Little Mushroom..."
},
{
    name: "Cross",
    msg: "Tis unfortunate since I will end your silence by killing you!..."
},
{
    name: "Cross",
    msg: "Wait that's not right...That sounded better in my head. *Ahem*..."
},
{
    name: "Cross",
    msg: "I shall interrupt your silence by destroying you in battle! No that's not right either since the silence will continue if you die..."
},
{
    name: "Cross",
    msg: "Whatever lets just fight"
},

]

boss_diag_end = [ //add to game
{
    name: "Cross",
    msg: "NOOOOOOOOO! HOW CAN THIS BE?!"
},
{
    name: "Cross",
    msg: "HOW HAS I, THE GREAT CROSS BEEN DEFEATED?!"
},
{
    name: "Cross",
    msg: "MARK MY WORDS LITTLE MUSHROOM! CROSS SHALL ALWAYS-OUCH!"
},
{
    name: "Cross",
    msg: "ooooohhh...Ouch...It appears I have stubbed thine toe...Who put this boss arena here?"
},
{
    name: "Lil Mush",
    msg: "........."
},
{
    name: "Cross",
    msg: "Great now the moment has past for me to continue by great villian speech"
},
{
    name: "Cross",
    msg: "Today is just not my day. Here is your victory screen. I made it myself I hope you like it."
},
{
    name: "Cross",
    msg: "Till we meet again, Little Mushroom..."
},
]






