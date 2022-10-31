let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], "target_pane": ":.2"}
