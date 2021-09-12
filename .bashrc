#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias reflect="sudo reflector --country 'United States' --protocol https --sort rate --save /etc/pacman.d/mirrorlist"
alias ls="ls -a --color=auto"
alias dla="youtube-dl -x --audio-format mp3 -a"
alias dlm="youtube-dl -x --audio-format mp3"

PS1='\u@\h \w > '

PAT='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'

