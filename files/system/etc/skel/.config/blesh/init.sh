# 
# Ble.sh config file
#

# Use vi(m) keybinds
bleopt default_keymap=vi

# Disable bell
bleopt edit_bell=vbell
bleopt edit_vbell=

# Add vi mode indicator to prompt
#\q{keymap:vi/mode-indicator}  # Example result: -- INSERT --
#PS1="\[$(tput bold)\]\[\033[38;5;249m\]\w\[$(tput sgr0)\]\n\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;25m\]>\[$(tput sgr0)\] \[$(tput sgr0)\]"

# Ctrl-C to Cancel
ble-bind -m vi_imap -f 'C-c' discard-line
ble-bind -m vi_nmap -f 'C-c' discard-line

#
# CURSORS
#
# 2 is a block, 0 is a line
ble-bind -m vi_nmap --cursor 2
ble-bind -m vi_imap --cursor 0
ble-bind -m vi_omap --cursor 2
ble-bind -m vi_xmap --cursor 2
ble-bind -m vi_cmap --cursor 2

#
# SETTING UP COLOURS
#

# AUTO-COMPLETION FACE 
ble-face auto_complete='fg=#545454'

# default
ble-face region='bg=#dfdfdf,fg=#282c34'

# default
ble-face region_target='bg=#dfdfdf,fg=#282c34'

# default
ble-face region_match='bg=#dfdfdf,fg=#282c34'

# default
ble-face region_insert='bg=#dfdfdf,fg=#282c34'

# default
ble-face disabled='fg=242'

# default
ble-face overwrite_mode='fg=242'

# default
ble-face syntax_default='fg=teal'

# default
ble-face syntax_command='fg=blue'

# default
ble-face syntax_quoted='fg=olive'

# default
ble-face syntax_quotation='fg=olive'

# default
ble-face syntax_escape='fg=teal'

# default
ble-face syntax_expr='fg=26'

# default
ble-face syntax_error='fg=red'

# default
ble-face syntax_varname='fg=teal'

# default
ble-face syntax_delimiter=bold

# default
ble-face syntax_param_expansion='fg=teal'

# default
ble-face syntax_history_expansion='fg=#545454'

# default
ble-face syntax_function_name='blue'

# default
ble-face syntax_comment='fg=242'

# default
ble-face syntax_glob='fg=198,bold'

# default
ble-face syntax_brace='fg=37,bold'

# default
ble-face syntax_tilde='fg=navy,bold'

# default
ble-face syntax_document='fg=94'

# default
ble-face syntax_document_begin='fg=94,bold'

# default
ble-face command_builtin_dot='fg=blue'

# default
ble-face command_builtin='fg=blue'

# default
ble-face command_alias='fg=blue'

# default
ble-face command_function='fg=blue'

# default
ble-face command_file='fg=blue'

# default
ble-face command_keyword='fg=blue'

# default
ble-face command_jobs='fg=blue'

# default
ble-face command_directory='fg=blue'

# default
ble-face command_suffix='fg=blue'

# default
ble-face command_suffix_new='fg=blue'

# default
ble-face argument_option='fg=teal'

# default
ble-face argument_error='fg=242'

# default
ble-face filename_directory='fg=teal,underline'

# default
ble-face filename_directory_sticky='fg=teal,underline'

# default
ble-face filename_link='fg=teal,underline'

# default
ble-face filename_orphan='fg=teal,underline'

# default
ble-face filename_setuid='fg=teal,underline'

# default
ble-face filename_setgid='fg=teal,underline'

# default
ble-face filename_executable='fg=teal,underline'

# default
ble-face filename_other='fg=teal,underline'

# default
ble-face filename_socket='fg=teal,underline'

# default
ble-face filename_pipe='fg=teal,underline'

# default
ble-face filename_character='fg=teal,underline'

# default
ble-face filename_block='fg=teal,underline'

# default
ble-face filename_warning='fg=teal,underline'

# default
ble-face filename_url='fg=teal,underline'

# default
ble-face filename_ls_colors='fg=teal,underline'

# default
ble-face varname_unset='fg=blue'

# default
ble-face varname_export='fg=blue'

# default
ble-face varname_array='fg=blue'

# default
ble-face varname_hash='fg=blue'

# default
ble-face varname_number='fg=blue'

# default
ble-face varname_readonly='fg=blue'

# default
ble-face varname_transform='fg=blue'

# default
ble-face varname_empty='fg=blue'

# default
ble-face varname_expr='fg=blue'

#
# SETTING UP VI MODE PROMPT
#


function ble/prompt/backslash:user/currentmode {
  local mode=
  ble/function#try ble/keymap:vi/script/get-mode
  case $mode in
  (*n)  ble/prompt/print $'\e[1mNormal\e[m' ;;
  (*i)  ble/prompt/print $'\e[1mInsert\e[m' ;;
  (*v)  ble/prompt/print $'\e[1mVisual\e[m' ;;
  (*V)  ble/prompt/print $'\e[1mV-Line\e[m' ;;
  (*^V) ble/prompt/print $'\e[1mV-Bloq\e[m' ;;
  (*s)  ble/prompt/print $'\e[1mSelect\e[m' ;;
  (*S)  ble/prompt/print $'\e[1mS-Line\e[m' ;;
  (*^S) ble/prompt/print $'\e[1mS-Bloq\e[m' ;;
  (R)   ble/prompt/print $'\e[1mRPlace\e[m' ;;
  (^R)  ble/prompt/print $'\e[1mVPlace\e[m' ;;
  (*)   ble/prompt/print $'\e[1m??????\e[m' ;;
  esac
}

# blerc
function user/set-up-status-line {

  # Hide the normal mode name
  bleopt keymap_vi_mode_show=

  # Update prompts on the mode change
  bleopt keymap_vi_mode_update_prompt=1

  # In this example, we put the mode string, date and time, and the
  # current working directory in the status line.
  bleopt prompt_status_line=

}
blehook/eval-after-load keymap_vi user/set-up-status-line


# Function to determine the vi mode and set PS1 accordingly
precmd() {
  # Get the last command's exit status
  exit_status=$?



  # Set the prompt symbol based on the exit status
  if [ $exit_status -eq 0 ]; then
    symbol="\[\033[0m\][\[\033[1;38;5;81m\]\q{user/currentmode}\[\033[0m\]]\[\033[1;38;5;81m\]"
  else
    symbol="\[\033[0m\][\[\033[1;38;5;196m\]\q{user/currentmode}\[\033[0m\]]\[\033[1;38;5;196m\]"
  fi

  # blue > symbol
  prompt_char="\[\033[1;34m\]\033[38;2;81;175;239m>\[\033[0m\]" # #51afef
  #prompt_char="\[\033[1;34m\]\033[38;2;70;123;150m>\[\033[0m\]" # #467b96

  # Set the PS1 variable
  PS1="\n\[\033[0m\]\w\n${symbol} ${prompt_char} "
}

# Trap PROMPT_COMMAND to set the prompt before displaying it
PROMPT_COMMAND=precmd

# Enable vi mode in bash
set -o vi
