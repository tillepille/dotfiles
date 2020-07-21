source ~/.iterm2_shell_integration.zsh

function iterm2_print_user_vars() {
    KUBECONTEXT=$(CTX=$(kubectl config current-context) 2> /dev/null;if [ $? -eq 0 ]; then echo $CTX;fi)
    iterm2_set_user_var kubeContext $KUBECONTEXT
}
