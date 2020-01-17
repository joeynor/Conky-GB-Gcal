# Conky Grey Black variant with gcalcli for calendar and agenda Display

![Screenshot](https://github.com/joeynor/Conky-GB-Gcal/blob/master/Screenshot_2020-01-17_14-01-39.png)


## Introduction

This conky theme was forked and aesthetically modified from [ConkyPorn](https://github.com/ConkyPorn/Conky-Grey-Black-1).

Thank you _ConkyPorn_.

I don't have a powerful computer, so for my display, I only needed two cpu cores. You can have more, please refer to _ConkyPorn's_ original code.

Also, in my setup, I moved things around and used smaller fonts, cause my screen resolution is not high enough.
To make things fit, I basically made it wider with more items and smaller fonts. 


## How to install

1. Copy the whole folder and rename it as .conky
2. Copy the ttf font to a folder in .fonts
2. Make sure you install conky-all or/with conky with lua support. On debian systems, this should work

   ``$sudo apt-get install conky-all``

3. You can run the conky script with

   ``$conky -b -c .conky/conkyrc_GB_Gcal``

4. The -b seems to avoid flickering and -c specifies the configuration files to use 

## Getting the google calendar to work

1. I have disabled the gcalcli by default, to enable it, uncomment the last three lines

```bash
   #${voffset 5}${goto 215}${font Technical CE:bold:size=10}CALENDAR${font}
   #${font DejaVu Sans Mono:size=6}${voffset -15}${execpi 300 export PYTHONIOENCODING=utf8 && gcalcli --conky --nolineart calw 2 --monday --width 15}
   #${font DejaVu Sans Mono:size=6}${voffset -15}${execpi 300 export PYTHONIOENCODING=utf8 && gcalcli --conky --nolineart agenda}
```

2. But before you do this, you need to install and activate gcalcli on your linux setup.
3. To do this, please refer to [gcalcli](https://github.com/insanum/gcalcli) project, be warned, documentation is not up-to-date. You will need to do some googling.

## other stuff

* You can have conky start with your script automatically when you login. Just include conky-startup.sh in the list of desktop startup.
* You may need to change the interface names in the lua scripts and the configuration files to get networking to display correctly.
