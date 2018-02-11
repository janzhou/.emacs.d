export ALTERNATE_EDITOR=""
alias vim='emacsclient -t'
alias emacs='emacsclient -t'

if [[ $(cat /proc/version) == *"Microsoft"* ]]; then
   chcp.com 65001 > /dev/null 2>&1
fi