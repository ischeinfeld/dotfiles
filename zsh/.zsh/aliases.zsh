# -------------------------------------------------------------------
# use nocorrect alias to prevent auto correct from "fixing" these
# -------------------------------------------------------------------
#alias foobar='nocorrect foobar'
alias g8='nocorrect g8'

# -------------------------------------------------------------------
# directory information
# -------------------------------------------------------------------
alias ls='ls -GFh' # Colorize output, add filetype indicator, and put
                   #  sizes in human readable format
alias lh='ls -d .*' # show hidden files/directories only

# -------------------------------------------------------------------
# directory movement
# -------------------------------------------------------------------
alias ..='cd ..'
alias ...=' cd ../..'
alias ....='cd ../../..'

# -------------------------------------------------------------------
# zsh
# -------------------------------------------------------------------
alias reload='. ~/.zshrc' # reload .zshrc
