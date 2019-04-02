#!/bin/sh
PS3='Select an option and press Enter: '
options=("clipboard (level 0)" "mindBlow (level 1)" "goat (level 2)")
select opt in "${options[@]}"
do
  case $opt in
        "clipboard (level 0)")
          echo "\033[31mClipboard\033[m"
		  cd clipboard && sh clipboard.sh
		  break
          ;;
        "mindBlow (level 1)")
          echo "\033[31mMindBlow\033[m"
		  cd mindBlow && sh mindBlow.sh
		  break
          ;;
        "goat (level 2)")
          echo "\033[31mGoat\033[m"
		  cd goat && sh goat.sh
		  break
          ;;
        *) echo "invalid option";;
  esac
done