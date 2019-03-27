# XCOM 2 Voice Pack Template

This is an XCOM 2 ModBuddy template for creating voice pack mods, using Robojumper's voice script and drawing heavily on [Kregano's tutorial](https://docs.google.com/document/d/1asHlhTP9tJzyKXIwDALpWdJTVasjh-72blST9kQeai8).

# Features

## ... of Robojumper's voice script
- Supports more XCOM 2 and WotC voice cues (and custom cues for use with other mods) ([See these cues here](https://docs.google.com/spreadsheets/d/10nvJjtUMIvddWRPKUaKMBv4yyiMHjWVSwdeG07YZF0o/edit#gid=0))
- Avoids the use of VoiceBanks
- Can provide in-game popup messages to help debug when events occur

## ... of this template
- Produces a mod that's compatible with *both* vanilla and WotC XCOM 2
- Prepopulates `Config\XComContent.ini` and `Localization\XComGame.int`
- Tells you clearly how to setup and name content in the mod's UPK
- Avoids producing a shader cache when rebuilding (Avoiding [this bug](https://www.reddit.com/r/xcom2mods/comments/48c8v3/psavoicepacks_and_other_mods_to_a_lesser_extent/).)

# Using

1. Download [the latest release as a zip file](https://github.com/stupidpupil/voicepack_template/releases).

2. Place that zip file in `...\SteamApps\common\XCOM 2 SDK\Binaries\Win32\ModBuddy\Extensions\Application\ProjectTemplates\XCOM2Mod\1033\`

3. Create a new project in ModBuddy and select the *Voice Pack with Robojumper script* template.

4. Use the **same** name (e.g. 'MyNicknameMyCoolVoiceMod') for the *Name* of your project, the *Solution name* and the *Title* of your mod. ([See this video for an example.](https://www.youtube.com/watch?v=5hRLr86eRik&feature=youtu.be))

5. Follow the instructions. ([*Preview* these here.](https://github.com/stupidpupil/voicepack_template/tree/master/VoicePackWithRobojumperScript/Instructions) Note that $ModSafeName$ will be replaced with the actual name of your mod.)

# LICENSE

The parts of this template that I have written are licensed under the [MIT license](https://choosealicense.com/licenses/mit/).

Parts of the template are reproduced verbatim from the templates distributed with the SDK, these remain copyright to Firaxis Games. There are reproduced here on the basis that doing so follows the purposes of releasing the SDK and that they are minimally non-obvious.

Robojumper's script is reproduced here, with some minor changes, with attribution and permission. Any problems with the script are my fault, anything that works is Robojumper's achivement.
