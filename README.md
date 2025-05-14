# Hyprland dotfiles
This dotfiles contains my configuration/themes for Hyprland as well as other apps I use for my daily workflow.

I have tried to make everything beginer friendly, but if you have anyy questions, there are tons of resources out there to help you.

This is my first rice, and I will be updating this frequently, so keep an eye out for any updates.

## BINDS

### Applications
| Key | Action |
|-----|--------|
Super + Return| terminal|
Super + Space| launcher|
Super + B | browser|

### Window management
| Key | Action |
|-----|--------|
Super + Q | close window|
Super + F | float window|
Super + P | psudofloat window|
Super + M | maximize window|
Super + left | resize window left|
Super + right | resize window right|
Super + up | resize window up|
Super + down | resize window down|
Super + Alt + left | swap window left|
Super + Alt + right | swap window right|
Super + Alt + up | swap window up|
Super + Alt + down | swap window down|
Super + Mouse1 | move window|
Super + Mouse2 | resize window|

### Managing Hyprland
| Key | Action |
|-----|--------|
Super + W | cycle wallpaper|
Super + Alt + W | cycle wallpaper reverse|
Super + L | lock screen|
Super + R | reload Hyprland|
Super + E | exit Hyprland|


## INSTALLATION
I use GNU Stow to manage my dotfiles.

I won't go into detail about how to use Stow, but you can find the documentation [here](https://www.gnu.org/software/stow/manual/stow.html).

If you want a quickstart, you can run the following command:
```
cd dots
stow -t ~ *
```

This will not sync up any of my wallpapers as they are kept in the dots' home directory. If you want do that, you can run the following command:
```
stow -t ~/wallpapers wallpapers
```


## MISC INFO

### Themeing every website
I theme every website using [Dark Reader](https://darkreader.org/).

Yes, its a bit of a hack, but it works for me.

Right now, I have a pitch black theme for everything, so simply maxing out the constrast is enough to make every website look uniform.

### Important:
These dots where originally made for my personal use. Everything ***should*** work with minimal tweaks, but no garuntees. I run a dual screen laptop so some things may be specific to my setup. That being said, I tried to make everything universally applicable.

Happy ricing!

