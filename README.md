# Keyboard Based Menu

A menu that uses the playdate's keyboard to navigate and select. Created as an aesthetic homage to traditional roguelikes!

![setting-menu-loop](https://github.com/AavaGames/playdate-keyboard-based-menu-ui/assets/49950668/2ecdcd2c-3eea-4d78-a73c-1eaae619f35c)

## Features

### Commands, Bool, Options
Create menu items just like the playdate's menu system. Tie your callbacks and tweak your parameters to close the keyboard, menu/page or all menus when the item is selected.

### Automatic Nested Pages
If your menu has too many options and will overflow the space it has, it will automatically create a sub page at the bottom so that you can continue to 

### Formats to your Font
Whatever font you give it will automatically adjust its dimensions to fit it properly.

![setting-menu-og-font](https://github.com/AavaGames/playdate-keyboard-based-menu-ui/assets/49950668/0995b2b1-4018-446c-a13a-d75251c4f10a)

### LuaCATS Syntax
Added type definitions for LuaCATS used by [Lua Language Server](https://github.com/LuaLS/lua-language-server) for the [sumneko.lua VSCode extension](https://marketplace.visualstudio.com/items?itemName=sumneko.lua).

## Limitations
- You cannot change the font after the menu is created, you will need to recreate the menu if you wish to change the font.

## Showcase / Example Project

![debug-menu](https://github.com/AavaGames/playdate-keyboard-based-menu-ui/assets/49950668/01bc380b-6a37-4a0b-8836-54416967aa00)
![debug-menu-light](https://github.com/AavaGames/playdate-keyboard-based-menu-ui/assets/49950668/990b7e48-c494-4905-9ceb-e5b605736583)

Try it out on the Playdate [(download pdx)](https://github.com/AavaGames/playdate-keyboard-based-menu-ui-example/releases/tag/1.0) and peruse some code at this git 
https://github.com/AavaGames/playdate-keyboard-based-menu-ui-example

## Installation

1. Download the repo
2. Add the `keyboard-based-menu` folder to your project
3. import `SOURCEFOLDER\keyboard-based-menu\imports`
4. Now you can create a MenuManager singleton and open Menus!

## Use
Look through main.lua [here](https://github.com/AavaGames/playdate-keyboard-based-menu-ui-example) to get a real example of its use.

1. Create a MenuManager singleton
	1. Pass in your callback for what to do when a menu opens from gameplay and when all menus close. Example: Change GameManager state to menu so gameplay update stops running.
2. Create a Menu: pass it the menu manager, a name and its items.
3. `menu:Open()`
