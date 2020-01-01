# ED PowerPlay Material Script
An AutoHotkey script designed to automate clicking through purchases of PowerPlay materials in Elite Dangerous. Great if you like avoiding carpal tunnel and/or general boredom while loading up your Type 9 on PowerPlay mats 10 at a time

## Versions
#### v1.0 (initial public release):
- Tested against Elite Dangerous version 3.5.3.400 (current as of 1/1/2020) and AutoHotkey version 1.1.24.01 on Windows 10
- Loops through purchasing X amount of Y material, until stopped by the user
- Currently, if you need to purchase different amounts of materials, or different materials, manual editing of the script is required in your favorite text editor (there are two "while" loops with comments above them showing what needs modifying). A GUI that prompts the user upon first launch with menu options or text input is planned for a future release

## Usage
1) Ensure AutoHotkey is installed on your PC. Download it from here if needed - https://www.autohotkey.com/
2) Download the script to somewhere on your PC. You should be able to run it just by double clicking it. If not, right click the file and click "Run Script"
3) The script will do nothing until triggered. Go to Elite Dangerous and park up at a station you can purchase materials from. Now is a good time to make sure you have the **arrow keys** and **spacebar** mapped in Elite to navigate through menus and activate menu buttons. This can be found in game under Options > Controls > Interface Mode. The bindings in question are UI Panel Up, Down, Left, Right, and Select, and should look similar to this (it doesn't matter if they're in the left or right column, as long as they're present)
![ED UI Panel Bindings](/screenshots/ED_menu_controls.png?raw=true)
4) Now is also a good time to ensure that you don't have **Alt+A** or **Comma** mapped to anything that can interfere with menu navigation. The script uses those hotkeys to start and stop the purchasing loop.
5) Go to your PowerPlay contact and go to the menu screen where you have the option to buy the 3 PowerPlay material types. Keep the very top option highlighted, don't hover over/select something else, otherwise the macro won't work right
6) Press **Alt+A** to begin the macro. It will begin filling your cargo hold and purchasing the desired material.
7) Press and hold **Comma (,)** to stop the macro. The script will not stop immediately, this is normal. Keep holding comma until the last material "cycle" is complete
