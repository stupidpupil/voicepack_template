# Notes on sound files

This file references using the command-line program ffmpeg to manipulate sound files.
Tutorials are available elsewhere on using [Audacity](https://www.audacityteam.org/) 
to achieve similar results (e.g. [*nintendoeat*'s guide](https://steamcommunity.com/sharedfiles/filedetails/?id=1350627939)).

## Leaking information

When you sound files in to a package using the Unreal Editor, it will log the filesystem location and import time 
in the package itself.  It's unlikely that this is a major worry for you, but you should 
be aware that it could leak some information to the rest of the world (e.g. your Windows username).

## Format

Files MUST be 16-bit mono PCM .WAV files with a sample rate of 44100 Hz or 22050 Hz. An example use of ffmpeg might be:

```
ffmpeg -i MyInputFile.mp3 \
-sample_fmt s16 -ar 44100 -ac 1 $ModSafeName$_Dashing_01.wav
```

## Volume

There are several factors that affect how loud the barks actually sound compared to the rest of XCOM 2:
- The volume of the sound file.
- The volume multiplier of the SoundNodeWave object created when you import the sound file; this seems to be fixed at 0.75.
- The volume multiplier of the SoundCue object that plays the SoundNodeWave, which is 0.75 by default by can be changed.
- The sound class of the SoundCue object, which is 'Master' by default but should always be set to 'Voice'.

My understanding is the following: The sound files for the built-in barks often have an 
average loudness of about -10 or -11dB (relative to the maximum that PCM can express) 
with some shouts of pain being a bit louder. The average volume for these barks is then 
reduced to about -14 or -15dB by the two 0.75 volume multipliers.

I suggest that sensible starting point when creating voice parks is to:
- target an 'integrated loudness' of about -14dB in the sound files, and
- set the volume multiplier of the SoundCue objects to 1.34 
(cancelling out the 0.75 SoundNodeWave multiplier).

An example use of ffmpeg might be:

```
ffmpeg -i MyInputFile.mp3 -af "loudnorm=I=-14" \
-sample_fmt s16 -ar 44100 -ac 1 $ModSafeName$_Dashing_01.wav
```

## Radio effect

To add a radio effect (high- and lowpass) in ffmpeg this might be extended to:
```
ffmpeg -i MyInputFile.mp3 -af "highpass=f=500, lowpass=f=2700, loudnorm=I=-14" \
-sample_fmt s16 -ar 44100 -ac 1 $ModSafeName$_Dashing_01.wav

```

You might want to normalise, apply the radio effect, and then normalise again.

## Suggested naming

For mods adding a single voice, I suggest (for your sanity) a naming scheme for your final sound files like:

```
$ModSafeName$_Dashing_01.wav
$ModSafeName$_Dashing_02.wav
```
