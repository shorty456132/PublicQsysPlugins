# Shutdown Timer

## Version
<details>
<summary>V1.0.0.0</summary>

- Initial Release
</details>

<br>

## Controls
| Control Name      | Description                               |
| :---------------- | :---------------                          |
| Start             | Starts the timer                          |
| Reset             | Resets the timer                          |
| Duration          | Set the duration of the timer in seconds <br> min: 1 \| max: 3600 \| default: 60 |
| Progress Bar      | Main component that is used on the UCI.<br> Shows the progress of the shutdown time   |
| Background Color  | Set the color of the background. Default is transparent |
| Foreground Color  | Sets the color of the foreground. This is the color of the progress bar |
| Border Width      | Sets the border width. Default gray color. Defaults to 0 |
| Border Radius     | Sets the border radius of the progress bar |
| Horizontal Size   | Set this to match the size of the progress bar on the UCI. <br> This helps with rendering and filling the control area <br> min: 0 \| max: 1920 \| default: 700|
| Vertical Size     | Set this to match the size of the progress bar on the UCI. <br> This helps with rendering and filling the control area <br> min: 0 \| max: 1280 \| default: 50|


<br><br><br>
<br><br><br>

# BasePlugin

This is a template plugin that you can download with some pre-written Lua code to get you started.

## PluginCompile

This is a submodule built for VS Code. Please note it is not intended to be used for any other source code editors.

The submodule will take the individual source Lua files in your local repo, compile them into a singular qplug file, and auto increment the desired octet of the BuildVersion.
For first time builds, it will auto-generate an UUID for you plugin as well.

Make sure to map a keyboard shortcut by navigating to File>Preferences>Keyboard Shortcuts. Type in "Tasks" and assign the desired shortcut to the Tasks: Run Build Task command

### Build Arguments

<ver_maj> : increments the first octet of BuildVersion to denote a major version change

<ver_min> : increments the second octet of BuildVersion to denote a minor version change

<ver_fix> : increments the third octet of BuildVersion to denote a bugfix

<ver_dev> : increments the fourth octet of BuildVersion to denote a new development version

< CANCEL > : cancels the build process
  
Please note that the public version (PluginVersion) only displays first and second octet. The second octets are intended for developer use and version tracking.

## Support

If you have any questions or concerns with this template, please contact qsyscontrolfeedback@qsc.com

Please note that QSC does not support plugins authored by third party developers or companies.