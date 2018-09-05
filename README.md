# FGPA Pong
## Description
A remake of one of the original video games, PONG on a Xilinx Spartan-6 Field Programmable Gate Array.  
If you want to see screenshots of the game, or the lab report for the class this project was built for, visit the media folder.  
Built with Randy Zhang: https://github.com/UndeadxPanda

For screenshots, see [`/media/screenshots`](https://github.com/cchyung/FPGA-Pong/tree/master/media/screenshots)

## Features
Uses the board's VGA interface to display the game canvas.  
Features an AI which you can play against.

## How to Compile and Run
Open the project file in the Xilinx IDE and generate a bit file.  
Using `adept` or a smiliar programmer, flash the bit file to the FPGA.

## How to Play
Your paddle (left) is controlled by `BtnU` and `BtnD`.  To start the game, press `BtnC`.
After each point, press `BtnC` again to start the point.
