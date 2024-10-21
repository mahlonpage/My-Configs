#!/bin/bash
osascript -e 'delay 1.3' # Lets page switch so hotkey can work
osascript -e 'tell application "System Events" to key code 58' # Presses Option key
osascript -e 'delay 0.1' # Small delay between presses
osascript -e 'tell application "System Events" to key code 58' # Presses Option key again

