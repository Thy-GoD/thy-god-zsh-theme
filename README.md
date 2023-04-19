# thy-god-zsh-theme
Personal Oh-My-ZSH theme, features include changing the prompt to a red cross upon invalid command and the usual git-status plugin implementation.<br>
<br>Code was based off [gnzh](https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/gnzh.zsh-theme)/[bira](https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/bira.zsh-theme)'s code, while being inspired by [spaceship prompt](https://spaceship-prompt.sh)'s looks and features.<br>
<br>To install the theme, simply use the command:<br>
```git clone https://github.com/Thy-GoD/thy-god-zsh-theme.git "$ZSH_CUSTOM/themes/Thy-GoD" && cp "$ZSH_CUSTOM/themes/Thy-GoD/ThyGoD.zsh-theme" "$ZSH_CUSTOM/themes/"```
<br><br>Lastly, you'll have to enable the theme in ~/.zshrc as `ThyGoD`, and enable `git-status` as a plugin.
<br><br>If you want to use this theme together with [Znap](https://github.com/marlonrichert/zsh-snap), add the following lines to ~/.zshrc:<br>
```
znap source ohmyzsh/ohmyzsh lib/{git,theme-and-appearance} # I will edit this as I include more plugins that require other libs.
znap source ohmyzsh/ohmyzsh plugins/git-prompt # This will increase as I plan on including more plugins support.
znap prompt Thy-GoD/thy-god-zsh-theme ThyGoD # Tells Znap to download and install my prompt.
```
Btw, if you're using the Znap method, it'll download the entire OMZ repo, 
I don't know of a way to get it to install just the libs and plugins.
However, it's good if you want to easily switch/update to OMZ or add your own plugins/libs.

## Screenshots
Note: Screenshots were taken with Kali Dark on Konsole.

This is the base version of the prompt, with the error code (if any) displayed on the right-side.
<br>Update: Skull symbol in Base version has been changed to ">>>", this is customizable.
![Base Prompt](/screenshots/prompt-ss-4.png)
Root ver of the prompt.
![Root_Prompt](/screenshots/prompt-ss-1.png)
Root ver of the prompt with Error Code.
![Root_Prompt_All](/screenshots/prompt-ss-2.png)
Prompt with Git-Status implementation.
<br>(For the most part, left as default, though I have added all default values in the file to allow for customization.)
![Root_Prompt_Git_Status](/screenshots/prompt-ss-3.png)
<br>
<br>Yes, I will continue update and fix this prompt as time goes by.

## Current todo list:

- Allow the Skull symbol to change if user is root or not. ☑️
- Add support for more plugins ☑️ (Couldn't find any other useful plugins.)
- See if colors need optimizing **(Somewhat resolved.)** ☑
- See if re-formatting plugins is neccessary. ☑ (Not really that important, just a couple tweaks)
- Add list of cool/nice symbols for easier customization. ☑
- Update the screenshots to match new prompt look.
- TBD
