# Setting up the package

These instructions assume that you've setup the XCOM 2 SDK correctly. 
If you haven't, or you're not sure that you have, you should investigate the 
[instructions on the r/xcom2mods wiki](https://www.reddit.com/r/xcom2mods/wiki/firsttime).

If you're quite familiar with XCOM 2 modding (or just modding Unreal Engine games) 
you can find most of the important information in these instructions in the 
`Content\NamingInfo.txt` file.

## Open the Unreal Editor

In XCOM ModBuddy.

1. Menus > BUILD > Build Solution
2. Menus > TOOLS > XCOM 2 Editor

This will open up the Unreal Editor for XCOM2

## Create new UPK package
1. In the Content Browser window, press the "New" button
2. Set the Package name to "$ModSafeName$Pkg"
3. Set the Factory to "SoundCue"
4. Click "OK"

You MUST name the package "$ModSafeName$Pkg".

## Add a reference to the Robojumper Voice Character script
1. Close the Unreal SoundCue Editor window
2. In the Content Browser window select the Actor Classes tab
3. Uncheck 
    "Use 'Actor' as Parent" and 
    "Placeable Classes Only"
4. Search for "RobojumperCharacterVoice_$ModSafeName$"
5. Right-click on RobojumperCharacterVoice_$ModSafeName$ and choose "Create Archetype..."

6. Set the Package name to "$ModSafeName$Pkg"
7. Set the Name to "_$ModSafeName$VoiceArchetype"
8. Click "OK"

You MUST name this object "_$ModSafeName$VoiceArchetype".

## Save the package
1. Go back to the "Content Browser" tab
2. Right-click on SoundCue_0 and choose Delete
3. Press Ctrl-S
4. Click "Yes" in the warning Message that appears about references to external packages
5. Navigate to your mod's content folder
6. Save the package with its default name

(The package should end up somewhere like:
`%USERPROFILE%\Documents\Firaxis ModBuddy\XCOM\$ModSafeName$\$ModSafeName$\Content\$ModSafeName$Pkg.upk` 
- this might not be quite right depending on what you've named stuff when you first created the mod.)

## Add the package to your mod project
1. Close the Content Browser and Unreal Editor windows
2. Return to XCOM ModBuddy
3. In the Solution Explorer pane on the left, right-click the Content folder and choose Add > Existing Item ...
4. Navigate to and Add the "$ModSafeName$Pkg.upk" file