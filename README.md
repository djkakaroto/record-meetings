# record-meetings
Record Meetings with plugins virtual sound Soundflower or BlackHole in Mac OSX.


## 1. Fist Step

Visit site [Brew](https://brew.sh/index_pt-br) and install brew. After install ffmpeg from brew with command:
```bash
brew install ffmpeg
```

## 2. Second Step

Install [Soundflower](https://github.com/mattingalls/Soundflower) or [BlackHole](https://github.com/ExistentialAudio/BlackHole) plugin for virtual sound.

## 3. Third Step
### Record System Audio

- Setup Multi-output Device
- In Audio Midi Setup->Audio Devices Right-click on the newly created Multi-output and select "Use This Device For Sound Output"
- Open digital audio workstation (DAW) such as GarageBand and set input device to "BlackHole" or "Soundflower"
- Set track to input from channel 1-2
- Play audio from another application and monitor or record in your DAW.

### Route Audio Between Applications

- Set output driver to "BlackHole" or "Soundflower" in sending application
- Output audio to any channel
- Open receiving application and set input device to "BlackHole" or "Soundflower"
- Input audio from the corresponding output channels

### List devices from ffmpeg

Command to take the listing devices avaliable

```bash
ffmpeg -f avfoundation -list_devices true -i ""
```

## Example usage

Alter script `record-only-audio.sh` with the variables of the your system configuration and execute

`./record-only-audio.sh file_out.aac`