
. /c/Users/Md.Ali/Anaconda3/etc/profile.d/conda.sh
alias docker='winpty docker'
alias ya='cd "/c/Users/Md.Ali/OneDrive - FDA/yousuf/"'
alias treed="ls -R | grep \":$\" | perl -pe 's/:$//;s/[^-][^\/]*\// /g;s/^ (\S)/└── \1/;s/(^ | (?= ))/│ /g;s/ (\S)/└── \1/'"
alias treef='find . -not -path "*/\.*" | sed -e "s/[^-][^\/]*\// |/g" -e "s/|\([^ ]\)/|-\1/"'
alias treefh='find . | sed -e "s/[^-][^\/]*\// |/g" -e "s/|\([^ ]\)/|-\1/"'
alias hs='history 16 | head -n 15'
HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend
gitpush() {
    git add -u
    git commit -m "$*"
    git push
}
alias gp=gitpush

### 
#for prompt in linux terminal
export PS1="\[\033[38;5;10m\]\u\[$(tput sgr0)\]:\[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;11m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\n\\$\[$(tput sgr0)\]"

alias hm="cd /opt/rstudio/users/Md.Ali"
echo -e -n "\x1b[\x35 q" # changes to blinking bar

#LS_COLORS=$LS_COLORS:"tw=00;33:ow=01;33:"; export LS_COLORS
 alias ls="ls --color=auto"
 alias grep="grep --color=auto"
 alias ll='ls -alhF'
