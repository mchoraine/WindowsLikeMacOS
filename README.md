# WindowsLikeMacOS

I use to develop on macos with intellij but for some reason I may sometimes need to work on windows.

To still be effcient, I need to preserve my favorites shortcuts and mecanism in goal to not learn it again each time I switch OS environment.

There is a list of tools and script, I used to configure my environment to feel the same as I was on mac os.

## Keyboard

First thing I had to to is to buy a apple keyboard and remap key to make it compatible windows.

For that I use "Magic Utilites" soft to simplify most of the work. Then I use "Microsoft Keyboard Layout Creator" to fix some keys mapping not working in my French keyboard.

You can find in this repo the source file.

- [Magic Keayboard](https://www.apple.com/fr/shop/product/MLA22F/A/magic-keyboard-fran%C3%A7ais)
- [Microsoft Keyboard Layout Creator](https://www.microsoft.com/en-us/download/details.aspx?id=102134)
- [Magic Utilities](https://magicutilities.net/magic-keyboard/)

## Intellij

I use intellij for development and use a plugin to fetch a keymap config close to macos default config. I needed to update this config to support `meta` key from magic keyboard :

    Help -> Edit Custom Properties...
      - In the file that opens, add this on a new line: keymap.windows.as.meta=true

- [Custom keymap](intellij/win-macos-keymaps.xml)
- [macos-for-all plugin](https://plugins.jetbrains.com/plugin/13968-macos-for-all)

## AutoHotKey

Then we need to install AutoHotKey for create shortcut like macos (⌘ + C, ⌘ + V, etc).

The provided script will create a lot of shortcut for OS and will also complete intellij shortcuts

- [AutoHotKey](https://www.autohotkey.com/)
- [Script AutoHotKey](shortcuts/AutoHotKey.ahk)

## Terminal

I tried to use wsl2 for terminal but I had some issue and very slow performance with git commands so I decided to use powershell and customize it with oh-my-posh (oh-my-zsh equivalent for powershell).

Then I installed Windows Terminal to be able to switch easily between different terminal (powershell, wsl, git, etc..)

- [oh my posh](https://ohmyposh.dev/docs/)
- [Windows Terminal](https://github.com/microsoft/terminal)

