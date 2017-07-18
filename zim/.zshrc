

#
# User configuration sourced by interactive shells
#

# Source zim
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi

#
# User configuration sourced by interactive shells
#

# Source zim
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi

# setopt EXTENDED_GLOB
# for template_file ( ${ZDOTDIR:-${HOME}}/.zim/templates/* )
# do
#     user_file="${ZDOTDIR:-${HOME}}/.${template_file:t}"
#     touch ${user_file}
#     ( print -rn "$(<${template_file})$(<${user_file})" >! ${user_file} )
# done
