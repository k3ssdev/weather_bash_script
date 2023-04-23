# Weather Bar Script

This script obtains weather information from [wttr.in](https://wttr.in/) and displays it in the format icon condition temperature humidity.

**Dependencies**
- curl: required to retrieve weather information from [wttr.in](https://wttr.in/).

**Usage**
1. Place the script in a convenient location, such as `~/.config/polybar/scripts/weather-bar.sh`.
2. Make the script executable: `chmod +x ~/.config/polybar/scripts/weather-bar.sh`.
3. Add a new module to your Polybar configuration file `config`:

```
[module/weather]
type = custom/script
interval = 900
exec = ~/.config/polybar/scripts/weather-bar.sh
label-font = 2
```

4. Restart your Polybar to see the weather information.

**Customization**
- `label-font`: controls the font size of the label.

To use different icons, modify the case statement in the script to assign the appropriate Unicode value to the `icon` variable for each weather condition. You can find the Unicode values for icons in the Unicode character table.

To use a different weather API or modify the information displayed, modify the `curl` request in the script accordingly.

## Acknowledgments

This script uses weather information from [wttr.in](https://github.com/chubin/wttr.in). We are grateful for the developers and contributors to this fantastic project.
