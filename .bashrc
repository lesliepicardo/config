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
alias path="echo \$PATH | tr ':' '\n'"  # print each path item on a newline. 

# OSX specific aliases
#alias datecp='date|pbcopy'           # copy date to clipboard
alias datecp='date "+%Y_%m_%d %b %a %T %Z"|pbcopy' # format 2015_01_31 21:51:04 PST Thu
alias timecp='date "+%H:%M"|pbcopy'   # copy time to clipboard

# Prompts -----------------------------------------------------
# Shell coloring 
# https://gist.github.com/vratiu/9780109  
# https://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html
NM="\[\033[0;38m\]"         # means no background and white lines
HI="\[\033[0;37m\]"         # change this for letter colors
HII="\[\033[0;31m\]"        # Red: change this for letter colors
SI="\[\033[0;33m\]"         # Yellow : this is for the current directory
IN="\[\033[0m\]"            # Color off

if [ ${USER} == "root" ];then
    export PS1="$HII\w$NM $ $IN"
fi

if [ ${USER} == "picardo" ];then
	export PS1="$SI\w/$NM\n$ $IN" # path + $ prompt on newline
    #export PS1="$SI\w$NM$ $IN"   # path + $ prompt on same line
    #export PS1='[\u@\h \W]$ '    # [picardo@MacBook Music]$
    #export PS1='\w$ '            # ~/Code $
fi


# Colors 
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
alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'

# Editor
export EDITOR='nano'

# MacOS Catalina+  
export BASH_SILENCE_DEPRECATION_WARNING=1  # default zsh warning disable https://support.apple.com/en-us/HT208050
alias emacs=mg                             # microGNUemacs is replacement for emacs in macOS 10.15 Catalina+
# https://osxdaily.com/2010/06/22/remove-the-last-login-message-from-the-terminal/
# touch ~/.hushlogin                       # Do this once in terminal to suppress the 'Last login' message 


