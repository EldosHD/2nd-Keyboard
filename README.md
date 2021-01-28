**Note** this project is still under heavy development. This note will vanish, once its finished!

# Why does this Repo exist?
I saw [this](https://www.youtube.com/watch?v=Arn8ExQ2Gjg) video by Taran on LTT and wanted to make something similar. So i downloaded his code and tried the program for my own. But I quickly discoverd, that I didn´t really had a use for his scripts. So I deleted most of Tarans code and developed some functions in AHK. I created simple autoclicking scripts (which I needed for Minecraft) and added a few folder shortcuts. But in the beginning they were really clumsy and unelegant so I polished them a bit. I created an [installer script](https://github.com/EldosHD/myInstallers) in case I needed to install my scripts on another computer or somebody else wanted to try them for themself.

BTW the original idea was developed by [Tom Scott](https://www.youtube.com/watch?v=lIFE7h3m40U&feature=emb_title).

# How does it work?
Idk.

...

Jk. [Lua Macros](http://www.hidmacros.eu/forum/viewtopic.php?f=10&t=241#p794) is a program, that was developed for the flight simulator communtiy. It is able to differentiate between multiple keyboards (cuz Windows can´t for some odd reason). If you press a button on your second keyboard, Lua Macros will intercept that buttonpress (sometimes), write that button to a small file on disk and press the F24 Key. AHK will listen for that keypress, read the file on disk and execute the function you assigned to that key.

# How do I use it?
Well First of all you will have to install it.

## Installation Guide
Lucky you! I made an installation script! You can find it [here](https://github.com/EldosHD/myInstallers).
If you want to install it manually, you should watch [Tarans Video](https://www.youtube.com/watch?v=Arn8ExQ2Gjg) because he explains everything in there.

## Quickstart Guide
You can use the script without knowing how to code, but you should consider learning AHK to write your own functions and/or improve my code.
1. You should create shortcuts to both scripts and put them in your startup folder.
2. Start the AHK and Lua scripts and tell your PC to use AHK/Lua as the default program. 
3. Change `local keyboardIdentifier` inside the LuaMacros code to `0000AAA` in case it isn´t.
4. Start the luamacros script inside the program itself (the blue play button).
5. The console will ask you to identify device *MACROS*. Press a button on you second keyboard.

**Done!**. But there are a few more things you should know:
1. If you start your LuaMacros script it will check every USB input device thats plugged in. One of them is called `MACROS`. Look through `Systemid` for an eight charakter string like `1EC8BC12`. Thats your keyboard identifier. You should replace `local keyboardIdentifier` with that.
2. If you close the LuaMacros script after you started it, it will exit. So click minimize. The window will vanish, but the script will keep running. You can access it and your AHK script via the system tray. Just look for keyboard icons.
3. If you accidentally close your LuaMacros script, but the AHK script is still running, press `ctrl` + `shift` + `*` (on the numpad) and it will reopen.

If you have more questions, look through the Wiki or write an [e-mail](https://github.com/EldosHD/2nd-Keyboard/blob/master/README.md#contact) to me

# Wiki

**Note** Finish later-------------------

# License
You can use all of my code in your projects, if you give proper credit.
## Credit
- Idea: [Tom Scotts Video](https://www.youtube.com/watch?v=lIFE7h3m40U&feature=emb_title)
- Based on: [Tarans Video](https://www.youtube.com/watch?v=Arn8ExQ2Gjg)
- Keyboard Detection: [LuaMacros](http://www.hidmacros.eu/forum/viewtopic.php?f=10&t=241#p794)
- Scripting: [AHK](https://www.autohotkey.com/)

 I usually put credit for individual functions in comments inside my code.

# Contact
Email: Eldos.sonofelax@gmail.com
Please give me some feedback.

