#!/bin/bash -x
declare -A sounds

# inside the bracket is the key and the second value is a value.
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog Sound: " ${sounds[dog]}
echo "All animals sounds: " ${sounds[@]}
echo "Animal: " ${!sounds[@]}
echo "Number of Animals: " ${#sounds[@]}
