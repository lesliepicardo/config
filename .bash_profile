# .bash_profile is executed for login shells (login to machine, remote ssh)
# .bashrc is executed for non-login shells (new term in gnome, kde, /bin/bash)

# OSX is an exception. OSX runs a login shell for each new terminal window and executes .bash_profile.
# http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html

# It is better to maintain just one file. Put all bash commands in the .bashrc file
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Commands specific to login shells go here


