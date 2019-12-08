# .bashrc is executed for non-login shells (new term in gnome, kde, /bin/bash)
# This .bashrc is included by .bash_profile so it will be executed for login shells too


# Aliases -----------------------------------------------------
alias rm='rm -i'
alias l="ls -Gl"    # long list, excludes dot files
alias ls="ls -G"    # list
alias la="ls -Gla"  # long list all, includes dot files
#alias la="ls -Ga"   # list all, includes dot files
#alias ll="ls -Gl"   # long list, excludes dot files
#alias lm='l |more'
alias h='head'
alias t='tail'
alias m=more
alias ..="cd .."
alias ...="cd .. ; cd .."
alias tree="ls -R | grep ':$' | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias dtree="find . -type d -maxdepth 3 | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias rehash='hash -r'                # bash equivalent of tcsh command
alias which='type -a'                 # bash equivalent of tcsh command
mkcd() { mkdir "$1"; if [ -d "$1" ]; then cd "$1"; fi;}  # mkdir then cd


# OSX specific aliases
#alias datecp='date|pbcopy'            # copy date to clipboard
alias datecp='date "+%Y_%m_%d %b %a %T %Z"|pbcopy' # format 2015_01_31 21:51:04 PST Thu
alias timecp='date "+%H:%M"|pbcopy'   # copy time to clipboard
#alias dl='diskutil'
#alias hl='hdiutil'

# command-line vlc
#https://wiki.videolan.org/Command_line/
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC' # link to executable
alias nvlc='vlc -I ncurses'                          # command-line gui
alias cvlc='vlc -I rc'                               # command-line vlc


# Prompts -----------------------------------------------------
NM="\[\033[0;38m\]"         # means no background and white lines
HI="\[\033[0;37m\]"         # change this for letter colors
HII="\[\033[0;31m\]"        # change this for letter colors
SI="\[\033[0;33m\]"         # this is for the current directory
IN="\[\033[0m\]"

if [ ${USER} == "root" ];then
    export PS1="$HII\w$NM $ $IN"
fi

if [ ${USER} == "picardo" ];then
	export PS1="$SI\w/$NM\n$ $IN"  # path + $ prompt on newline
    #export PS1="$SI\w$NM$ $IN"   # path + $ prompt on same line
	#export PS1="$ "
    #export PS1='[\u@\h \W]$ '    # [picardo@MacBook Music]$
    #export PS1='\w$ '           # ~/Code $
	#export PS1='\w\n$ '
fi


# Colors -----------------------------------------------------
# http://www.macosxhints.com/article.php?story=20031025162727485
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=true
export LSCOLORS=exfxcxdxbxegedabagacad

# Terminal window title
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*} ${PWD}"; echo -ne "\007"'
export PROMPT_COMMAND='echo -ne "\033]0;${PWD}"; echo -ne "\007"'
# auto-rename tabs when I ssh into other other hosts (PROMPT_COMMAND='printf "\033]0;remote_host\007"')

# Text Editors command line invocation
#alias mate='/Applications/TextMate.app/Contents/Resources/mate'                           #obsolete
#alias atom='/Users/picardo/Applications/Text\ Editors/Atom.app/Contents/MacOS/Atom -nw'   #obsolete
#alias light='open -a /Applications/LightTable.app'                                        #obsolete
#alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'           
#for Visual Studio Code. Launch VS Code. Open the Command Palette (⇧⌘P) and type 'shell command' to find the Shell Command: Install 'code' command in PATH command. 

# Editor
#export EDITOR='mate -w'  # OS-X SPECIFIC - TextMate, w is to wait for TextMate window to close
#export EDITOR='subl -w'  # export Sublime Text as editor
export EDITOR='nano'
#export CVSEDITOR='mate -w'    # unused
#export SVN_EDITOR='mate -w'   # unused

# Installations and Paths ------------------------------------
# OpenCV Python module
#export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

# Homebrew wants /usr/local/bin before /usr/bin
export PATH=/usr/local/bin:$PATH

# My path
export PATH=.:$HOME/bin:$PATH

# added by Anaconda3 4.0.0 installer
export PATH="/Users/picardo/Applications/anaconda/bin:$PATH"

# Julia installation
#alias julia='/Users/picardo/Applications/Julia-0.3.0-prerelease-3e6a6c7bd8.app/Contents/Resources/julia/bin/julia'

# Sox - Sound eXchange installation
#alias play='/Users/picardo/Applications/sox/play'
#alias sox='/Users/picardo/Applications/sox/sox'

# Youtube-dl
alias y='youtube-dl -f mp4'
