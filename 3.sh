#!/bin/bash

# Display user information
echo "Username: $(whoami)"
echo "User ID: $(id -u)"
echo "Group ID: $(id -g)"
echo "Home Directory: $(echo $HOME)"
echo "Shell: $(echo $SHELL)"

