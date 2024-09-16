#!/bin/bash
osascript -e 'tell application "System Events" to key code 58' # Presses Option key
osascript -e 'delay 0.1' # Small delay between presses
osascript -e 'tell application "System Events" to key code 58' # Presses Option key again

