# doom_MUS_decode_play
Play MUS data from doom WAD by windows intrinsic MIDI dll  
Midi devide checking function added in new vi and python sammple  
If number returns 0 mmeans no MIDI device is available, typical is 1

Small project to re-gen the type-0 MIDI data from MUS in any id Tech1 WAD file  
like doom1/2, heretic, hexen, strife, chex  
And play MID music by windows intrisic winmm.dll function  
MUS data has pre-loaded to LabVIEW 1D array in demo code already  
Open the source code by LabVIEW 2014  

There is the visual effcet is demo code.  
It's only for demostration, and not neccessary for other application  

I have no WAD reader included in this project.  
It can find here: [LABWAD - LLB to open WAD files from Doom & Doom2](https://forums.ni.com/t5/Example-Code/LABWAD-LLB-to-open-WAD-files-from-Doom-amp-Doom2/ta-p/3994533)  
Or reach Github: Sylvain-Deposit/LabWad  

***  
* Solved no midi sound output  
Check "device manager", if it looks like below (sorry for mandarin UI, icon is the same)  
![image](https://github.com/KurtDing/LabMUSplayer/blob/main/no_midi_solve/unavalible.JPG)  
meaning Microsoft GS Wavetable Synth is not available  
It could soulve by install/update sound chip driver, then "device manager" will be like this  
OR install some other MIDI player  
![image](https://github.com/KurtDing/LabMUSplayer/blob/main/no_midi_solve/avalible.JPG)  
***  

