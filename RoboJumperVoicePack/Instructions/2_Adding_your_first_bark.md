# Adding your first bark

This sections goes through the process of adding a 'Dashing' bark. This the bark played when previewing a voice in the character customisation screen.

You may want to review the "Notes on sound files" section before proceeding.

## Reopen the package
1. Menus > TOOLS > XCOM 2 Editor
2. In the Content Browser window, press the  button with an open folder icon
3. Navigate to and open the "$ModSafeName$Pkg.upk" file

## Importing a sound file
1. In the Content Browser window, press the "Import" button
2. Open your first sound file (e.g. "$ModSafeName$_Dashing_01.wav")
3. Leave the default options and click "OK"

## Creating a sound cue
1. Right-click in the background of the package contents pane and choose "New SoundCue"
2. Set the name to "$ModSafeName$_Dashing_Cue" 

You don't have to use this naming convention for SoundNodeWaves and SoundCues, but I strongly suggest you do so. This keeps SoundNodeWaves and their SoundCues grouped together helpfully when sorting the package contents by name.

3. In the package contents pane, select the SoundNodeWave you added earlier
4. In the Unreal SoundCue Editor, right-click and choose "Random: [...]"
5. Click-and-drag from the black connection point on the right-hand-side of the speaker to the connection point on the left-hand-side of the "Random" node.
6. Close the Unreal SoundCue Editor window.

You can select multiple SoundNodeWaves, and the Random node will pick between them when the cue is triggered.

7. In the package contents pane, right-click on the $ModSafeName$_Dashing_Cue object and choose "Sound Classes [...]" > "Voice"

## Hook the cue up to the Voice
1. In the package contents pane, right-click on the Archetype object (_$ModSafeName$VoiceArchetype) and choose Properties
2. Expand the 'Robojumper Character Voice [...]' panel
3. Expand the 'Events' list
4. Find the event with the EventName "Dashing" ([19] as of writing)
5. Expand this event
6. In the package contents pane, select the SoundCue "$ModSafeName$_Cue_Dashing" object
7. In the Archetype properties window, click the green arrow, next to the Cue item under the Dashing event
8. Close the Archetype properties window

## Save the package

1. Press Ctrl-S
2. Click "Yes" in the warning Message that appears about references to external packages

## Testing this bark
1. Close the Content Browser and Unreal Editor windows
2. Return to XCOM ModBuddy
3. Menus > BUILD > Build Solution

4. Start the XCOM 2 launcher
5. Enable your mod
6. Start the game, go to the Character Bank
7. Click the "PREVIEW" button - you should hear the sound you've just added.