# thy-god-zsh-theme
Personal Oh-My-ZSH theme, features include changing the prompt to a red cross upon invalid command and the usual git-status plugin implementation.<br>
<br>Code was based off [gnzh](https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/gnzh.zsh-theme)/[bira](https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/bira.zsh-theme)'s code, while being inspired by [spaceship prompt](https://spaceship-prompt.sh)'s looks and features.<br>
<br>To install the theme, Install OhMyZsh then simply use the command:<br>
```git clone https://github.com/Thy-GoD/thy-god-zsh-theme.git "$ZSH_CUSTOM/themes/Thy-GoD" && cp "$ZSH_CUSTOM/themes/Thy-GoD/ThyGoD.zsh-theme" "$ZSH_CUSTOM/themes/"```
<br><br>Lastly, you'll have to enable the theme in `~/.zshrc` as `ThyGoD`, and enable `git-status` as a plugin.
<br><br>If you want to use this theme together with [Znap](https://github.com/marlonrichert/zsh-snap), add the following lines to ~/.zshrc:<br>
```
# Downloads Znap
[[ -f ~/.ZSH_FILES/Git/zsh-snap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/.ZSH_FILES/Git/zsh-snap

source ~/.ZSH_FILES/Git/zsh-snap/znap.zsh  # Start Znap

znap source ohmyzsh/ohmyzsh lib/{git,theme-and-appearance} # Required by OMZ prompt
znap source ohmyzsh/ohmyzsh plugins/git-prompt # plugin used by my theme

# `znap prompt` makes your prompt visible in just 15-40ms!
znap prompt Thy-GoD/thy-god-zsh-theme ThyGoD

# `znap source` automatically downloads and starts your plugins.
znap source marlonrichert/zsh-autocomplete
znap source zsh-users/zsh-syntax-highlighting

# `znap eval` caches and runs any kind of command output for you.
znap eval iterm2 'curl -fsSL https://iterm2.com/shell_integration/zsh'

# `znap function` lets you lazy-load features you wont always need.
znap function _pyenv pyenv 'eval "$( pyenv init - --no-rehash )"'
compctl -K    _pyenv pyenv
```

Btw, if you're using the Znap method, it'll download the entire OMZ repo, 
I don't know of a way to get it to install just the libs and plugins.
However, it's good if you want to easily switch/update to OMZ or add your own plugins/libs.

## Screenshots
**Note**: Screenshots were taken with Kali Dark on Konsole.

This is the base version of the prompt, with the error code (if any) displayed on the right-side.
<br>The Prompt Symbols are customizable, with included samples.
![Base Prompt](/screenshots/prompt-ss-1-updated.png)
Root ver of the prompt.
![Root_Prompt](/screenshots/prompt-ss-2-updated.png)
<br>(For the most part, left as default, though I have added all default values in the file to allow for customization.)
Prompt with updated git-status look.
![Root_Prompt_All](/screenshots/prompt-ss-3-updated.png)
Prompt's git-status look when files were modified.
![Root_Prompt_Git_Status](/screenshots/prompt-ss-4-updated.png)
<br>
<br>Yes, I will continue update and fix this prompt as time goes by.

## Current todo list:

- Allow the Skull symbol to change if user is root or not. ☑️
- Add support for more plugins ☑️ (Couldn't find any other useful plugins.)
- See if colors need optimizing **(Somewhat resolved.)** ☑
- See if re-formatting plugins is neccessary. ☑ (Not really that important, just a couple tweaks)
- Add list of cool/nice symbols for easier customization. ☑
- Update the screenshots to match new prompt look.☑️
- TBD
