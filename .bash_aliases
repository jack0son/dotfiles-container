# Alias management
alias valias='vim ~/.bash_aliases'
alias salias='source ~/.bash_aliases'
alias vash='vim ~/.bashrc'

# Git 
alias gs='git status'
alias lastcommit='git log --name-status HEAD^..HEAD'
alias gls="git log --pretty=format:\"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]\" --decorate"
alias gll="git log --pretty=format:\"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]\" --decorate --numstat"
alias glc='lastcommit'
alias gitbnr='git symbolic-ref -q HEAD'  # with ref
alias gitbn='git rev-parse --abbrev-ref HEAD'  
alias gittf='git ls-tree -r $(gitbn) --name-only'
alias branchbydate='git for-each-ref --sort=committerdate refs/heads/ --format="%(committerdate:short) %(refname)"'
alias gbbd='gitbranchbydate'
alias branchbydater='git branch -r --sort=committerdate --format="%(committerdate:short) %(refname)"'
alias gbbdr='gitbranchbydater'
alias trackallremote='git branch -r | grep -v "\->" | while read remote; do git branch --track "${remote#origin/}" "$remote"; done'

# Docker
alias dcls='docker container ls'
alias dcs='docker container stop'
alias dl='docker logs --follow'
alias docker-compose='docker run --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v "$PWD:$PWD" \
    -w="$PWD" \
    docker/compose:1.24.1'
alias dl='docker logs --follow'
alias dcls='docker container ls'
alias dlf="docker inspect --format='{{.LogPath}}'"

# Geth
alias pull-geth='docker pull ethereum/client-go:latest'
alias goerli-start='docker rm $(docker ps -aq --filter name=goerli); docker run --name goerli -d -p 8546:8546 -v ~/.ethereum:/root/.ethereum ethereum/client-go --goerli --ws --wsport 8546 --wsaddr 0.0.0.0 --wsorigins="*" --wsapi eth,net,web3'
alias goerli-attach='docker run -it -v ~/.ethereum:/root/.ethereum ethereum/client-go attach ipc:///root/.ethereum/goerli/geth.ipc'

# NuCypher
alias pull-nucypher='docker pull nucypher/nucypher:latest'
alias nucypher='docker run -it -v ~/.local/share/nucypher:/root/.local/share/nucypher -v ~/.ethereum/:/root/.ethereum nucypher/nucypher:latest nucypher'
alias nucypher-bind='docker run -it -v ~/.local/share/nucypher:/root/.local/share/nucypher -v ~/.ethereum/:/root/.ethereum -p 9151:9151 nucypher/nucypher:latest nucypher'

alias ursula-start='docker run -d -v ~/.ethereum:/root/.ethereum -v ~/.local/share/nucypher:/root/.local/share/nucypher -p 9151:9151 -e NUCYPHER_KEYRING_PASSWORD -e NUCYPHER_WORKER_ETH_PASSWORD nucypher/nucypher:latest nucypher ursula run'
alias ursula-start-conf='docker rm $(docker ps -aq --filter name=ursula); docker run --name ursula -d -v ~/.ethereum:/root/.ethereum -v ~/.local/share/nucypher:/root/.local/share/nucypher -p 9151:9151 -e NUCYPHER_KEYRING_PASSWORD -e NUCYPHER_WORKER_ETH_PASSWORD nucypher/nucypher:latest nucypher ursula run --config-file $(cat worker-config-path)'
