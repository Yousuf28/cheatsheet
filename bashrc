
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
