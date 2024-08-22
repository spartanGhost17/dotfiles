alias goto-project='cd /mnt/c/Users/adamb/DevProjects/apps/angularProjects/'

# pass file name dynamically
copytocb() {
    if [[ -z "$1" ]]; then
        echo "No file specified. Please provide a file name. example: copytocb file.txt"
        return 1
    fi

    local file="$1"
    if [[ -f "$file" ]]; then
        cat "$file" | tmux load-buffer - && tmux save-buffer - | xclip -selection clipboard
        echo "File '$file' content copied to clipboard."
    else
        echo "File '$file' not found."
        return 1
    fi
}

# Kubectl

alias k='kubectl'

source /etc/bash_completion
source <(kubectl completion bash)
complete -o default -F __start_kubectl k

alias kgp='kubectl get pods'
#alias kc='kubectx'
