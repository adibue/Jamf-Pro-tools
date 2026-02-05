#!/bin/zsh --no-rcs

# Simple SwiftDialog script to be run through Jamf Pro.
# Argument description:
# $4 - Message Title
# $5 - Message Body
# $6 - Message Icon (refer to: https://github.com/swiftDialog/swiftDialog/wiki/Customising-the-Icon)

# Set defaults if no arguments are set
TITLE="$4"
MESSAGE="$5"
ICON="$6"

if [[ -z "$4" ]]; then
  TITLE="Detault Message"
fi

if [[ -z "$5" ]]; then
  MESSAGE="This is just a friendly swiftDialog message."
fi

if [[ -z "$6" ]]; then
  ICON="sf.info.circle"
fi

dialog -b \
--title "$TITLE" \
--message "$MESSAGE" \
--icon "$ICON"