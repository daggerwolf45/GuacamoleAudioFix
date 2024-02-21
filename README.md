# OnePlus 7 Pro System Audio Configuration Fix
Module to replace system audio configuration with fully implemented version. This primarily fixes 2023+ Google Call Screening

## Supported Devices and Software
### Software
* **Android**: 10 and up. Tested on Android 14
* **Module Format**: Magisk or KernelSU
* **Audio Modification Libraries**: Should be completly compatible. Tested working with Viper4Android and Moto Dolby

#### Limitations

This will likely not work on LineageOS 21 as they use a non-standard mixer configuration. However this could be modified to support it, there is no technical limitation.

### Devices
I have only tested on the OnePlus 7 Pro, however it almost certainly works on the 7T aswell.

This *may* work on any device with a Snapdragon 855/860 (msmnile) however the way the patch is done would likely need to be changed to be more generic as there are currently some OnePlus specific fields included.

## Features
* **Google Dialer Call Screening audio**
    - Call screening must already be enabled or otherwise patched. This fixes flaky transcription and silent assistant with 2023 Call Screening.
    - To enable call screening, use a patched rom, [Pixelify][3], or manualy modify the app with [GSM Flags][1] (Recomended) or [GAppsMod][2]
* Slightly increases handset mic sensativity and speaker volume


## Credit
* [Statixos][5]: Corrected pahu and 11811 mixers
* [Pixelify wiki][4]: Putting me scent of this bug.


[1]: https://github.com/polodarb/GMS-Flags
[2]: https://github.com/jacopotediosi/GAppsMod
[3]: https://github.com/Kingsman44/Pixelify
[4]: https://telegra.ph/Pixelify-Troubleshooting-and-FAQ-05-08#Troubleshooting
[5]: https://review.statixos.com/plugins/gitiles/android_device_oneplus_guacamole/
