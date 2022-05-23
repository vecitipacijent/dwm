#######################################################################################################################
#######################################################################################################################
#######################################################################################################################
#######################################################################################################################
# FIRST, YOU'LL NEED TO GO TO YOUR FIREFOX AND TYPE "about:config" and then search for "legacy"
# Then you need to turn "toolkit.legacyUserProfileCustomizations.stylesheets" from "false" to "true"
# Because the name of the the "user.default-relase" folder changes, I couldn't make a script for it.
# But you can do it manually if you follow the instructions I will give you here in these cript.
# First, you'll need to go into the "dwm-laptop" folder that was extracted when "install.sh" script
# was started. The folder was copied by starting up this script and it's in your "home" folder.
# When this script finishes, you'll need to go into your "home" folder and then enter into "dwm-laptop" folder
# Then find the "firefox-chrome-css" folder and enter it. In the folder there will be "chrome" folder.
# You'll need to use terminal for this, so you can press right mouse click and select option
# "open in terminal" or you can open your terminal and do a simple command:
# cd ~/.mozilla/firefox/
# Then, you'll need to type command:
# ls
# This command will show all directories or folders in your firefox directory or folder, however you wanna call it.
# The directory you'll need to get in and the one that changes will look like this:
# <some random letters and numbers> .default-relase
# Mine looks like:
# svwujcmr.default-relase
# You just need to know that the directory may change it's name, but it will always end up with a:
# .default-relase
# Now that you now the name of that directory, you'll go into it by typing command:
# cd <the name of that directory>.default-relase/ or in my case cd svwujcmr.default-relase/
# Then you'll type a command:
# cp -r ~/dwm-laptop/firefox-chrome-css/chrome ~/.mozilla/firefox/<name of the directory>.default-relase/
# or in my case the command is:
# cp -r ~/dwm-laptop/firefox-chrome-css/chrome ~/.mozilla/firefox/svwujcmr.default-relase/
# Once you've done that, exit your firefox browser and start it again and enjoy your new layout!
# This is written for those who don't know yet how to manage some thigs in Linux, but wanna try it!
#######################################################################################################################

# written by vecitipacijent

#######################################################################################################################

# You can find me on Github: https://github.com/vecitipacijent

#######################################################################################################################

# The text will show for 2 minutes and then the script will be done!!!

#######################################################################################################################
#######################################################################################################################
#######################################################################################################################
#######################################################################################################################

