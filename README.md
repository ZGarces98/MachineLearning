# Project Asteroids

For our project, we’re going to use machine learning algorithms to play a tweaked version of the game, Asteroids. In the original game, there is a single ship that can avoid and shoot incoming asteroids. In our modified version of the game, we plan on adding an additional ship and adding enemy ships. We also decided to give the two ships asymmetric roles. One ship will have the ability to shoot and the other ship will have the ability to block. Within our modified game, the goal is to implement an algorithm that incentivizes the survival of both agents for as long as possible and dissuade a “lone wolf” mentality among the agents. Points will be awarded for every asteroid destroyed and enemy shots blocked to encourage this type of behavior. Bad behavior would include having one ship die or letting the timer run out. After some time of letting our program run, our agents should in theory be very good at surviving by utilizing each other’s strengths. The use of reinforcement learning will reward good behavior and punish bad behavior. This will then be stored in the neural network so that the agents can learn accordingly to avoid punishments and seek out rewards. This project will be made using the GameMaker Studio 2 game engine.

# How to run it

1. Go to "LaunchFiles" folder
2. Run the ProjectAsteroids.exe (WINDOWS ONLY)

# Controls

A - Display left panel

S - Display Timer

Z - Display Vision Lines

X - Display Fitness score

Esc, P - Pause the game 

# Top Info 

Current Teams - The pairs of ships that didn't lose yet.

Generation - The number of games played.

Best Generation - The generation that got the best score.

Best Time - The Highest time achieved.

# Pause Panels

Total Teams - How many pairs of shooters and shields to start the game with.

Min Teams - The minimum number of teams alive to start the crossover function and restart the game.

NN Depth - The column of hidden layers.

EXAMPLE 1 DEPTH:

i 

i h 

i h o 

i h o

i h o 

i h o

i

EXAMPLE 5 DEPTH:

i  

i h h h h h 

i h h h h h o 

i h h h h h o

i h h h h h o 

i h h h h h o

i

NN Height - How many rows of hidden layers there should be

EXAMPLE 3 Height, 2 DEPTH:

i 

i h h o 

i h h o

i h h o 

i 

EXAMPLE 2 Height, 1 DEPTH:

i 

i h  o

i h  o

i    o
 
NN Weight - The range of the starting weights (ERASES CROSSOVER WEIGHTS IF CHANGED). 1 means that the starting weights range from (-1, 1) and 10 means the starting weights range from (-10,1).

NN BIAS - The range of the starting bias (ERASES CROSSOVER BIAS IF CHANGED). 1 means that the starting bias range from (-1, 1) and 10 means the starting bias range from (-10,1).

# Resources
Slides: https://docs.google.com/presentation/d/1MkZgazbr3uIv6X89Am66AIcbSMc8RZOKFZqJVTDXpeg/edit?usp=sharing

Proposal: https://docs.google.com/document/d/1ItKPg6fM753xTkjR32hcHIy38MrSZ0uDJsDrrClzCDA/edit

GameMakerStudio2: https://www.yoyogames.com/gamemaker

# Contacts
Alexander Yang: alexander.yang97@myhunter.cuny.edu (main)

Zachary Garces: zgarces98@gmail.com
