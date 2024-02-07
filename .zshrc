# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug  "zsh-users/zsh-completions"
plug "zsh-users/zsh-history-substring-search"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-completions"
plug "zsh-users/zsh-syntax-highlighting"
zplug "lukechilds/zsh-better-npm-completion", defer:2


# Example install of a zsh completion
plug "esc/conda-zsh-completion"

# Load and initialise completion system
autoload -Uz compinit
compinit


# Alias's for multiple directory listing commands
alias la='ls -Alh'                      # show hidden files
alias ls='ls -aFh --color=always'       # add colors and file type extensions
alias lx='ls -lXBh'                     # sort by extension
alias lk='ls -lSrh'                     # sort by size
alias lc='ls -lcrh'                     # sort by change time
alias lu='ls -lurh'                     # sort by access time
alias lr='ls -lRh'                      # recursive ls
alias lt='ls -ltrh'                     # sort by date
alias lm='ls -alh |more'                # pipe through 'more'
alias lw='ls -xAh'                      # wide listing format
alias ll='ls -Fls'                      # long listing format
alias labc='ls -lap'                    #alphabetical sort
alias lf="ls -l | egrep -v '^d'"        # files only
alias ldir="ls -l | egrep '^d'"         # directories only
alias c='vimcat'                        # colored file display
alias re_shell='source ~/.zshrc'        # reload shell
alias clr='clear -x'
alias cls='clear'


# Alias's to modified commands
alias cp='cp -i'                    # -i option prompts before overwrite
alias mv='mv -i'                    # -i option prompts before overwrite
alias rm='rm -iv'                   # ignore nonexistent files, prompt before every removal + explain what is being done
alias mkdir='mkdir -p'              # create parent directories as needed
alias ps='ps auxf'                  # show all processes
alias ping='ping -c 10'             # ping with 10 packets
alias less='less -R'                # raw control characters
alias apt-get='sudo apt-get'        # debian based systems


########################
######     GIT     #####
alias gs='git status'               # View Git status.
alias ga='git add'                  # Add a file to Git.
alias gaa='git add --all'           # Add all files to Git.
alias gc='git commit'               # Commit changes to the code.
alias gl='git log --oneline'        # View the Git log.
alias gb='git checkout -b'          # new Git branch and move to new branch at same time.
alias gd='git diff'                 # View the difference between the current branch and the master branch.

###github
alias ghs='gh search repos'         	#search for a github repository.
alias ghv='gh repo view'            	#Vew details about a repository.
alias ghl='gh repo list'             	#Get a list of my repositorys.
alias ghr='gh repo rename'		#rename a repo.
alias ghc='gh repo clone'		#clone a repo.
alias gh_del='gh repo delete'		#delete a repo.

# Show current network information
netinfo ()
{
	echo "--------------- Network Information ---------------"
	/sbin/ifconfig | awk /'inet addr/ {print $2}'
	echo ""
	/sbin/ifconfig | awk /'Bcast/ {print $3}'
	echo ""
	/sbin/ifconfig | awk /'inet addr/ {print $4}'

	/sbin/ifconfig | awk /'HWaddr/ {print $4,$5}'
	echo "---------------------------------------------------"
}

#URL's
alias google='xdg-open http://www.google.com'
alias OpenPhind='xdg-open https://www.phind.com/'
alias OpenDuck='xdg-open https://duckduckgo.com/'
alias OpenChatGpt='xdg-open https://www.chatgpt.com/'
alias OpenDigitalHub='xdg-open https://github.com/DGTL-Hub'
alias OpenSplashPage='https://snazzy-starship-b11073.netlify.app/'
alias Opendigdump='xdg-open https://dgtl-hub.github.io/DGTLHubDump/'
alias OpenPerplex='xdg-open https://www.perplexity.ai/'

# IP address lookup
alias whatismyip="whatsmyip"
function whatsmyip ()
{
	# Dumps a list of all IP addresses for every device
	# /sbin/ifconfig |grep -B1 "inet addr" |awk '{ if ( $1 == "inet" ) { print $2 } else if ( $2 == "Link" ) { printf "%s:" ,$1 } }' |awk -F: '{ print $1 ": " $3 }';

	# Internal IP Lookup
	echo -n "Internal IP: " ; /sbin/ifconfig eth0 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}'

	# External IP Lookup
	echo -n "External IP: " ; wget http://smart-ip.net/myip -O - -q
}

