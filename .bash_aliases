alias dcls='docker container ls'
alias dcs='docker container stop'
alias dl='docker logs --follow'
alias goerli-start='docker rm $(docker ps -aq --filter name=goerli); docker run --name goerli -d -p 30303:30303 -v ~/.ethereum:/root/.ethereum ethereum/client-go --goerli'
alias goerli-attach='docker run -it -v ~/.ethereum:/root/.ethereum ethereum/client-go attach ipc:///root/.ethereum/goerli/geth.ipc'
alias nucypher='docker run -it -v ~/.local/share/nucypher:/root/.local/share/nucypher -v ~/.ethereum/:/root/.ethereum nucypher/nucypher:latest nucypher'
alias nucypher-bind='docker run -it -v ~/.local/share/nucypher:/root/.local/share/nucypher -v ~/.ethereum/:/root/.ethereum -p 9151:9151 nucypher/nucypher:latest nucypher'

alias ursula-start='docker run -d -v ~/.ethereum:/root/.ethereum -v ~/.local/share/nucypher:/root/.local/share/nucypher -p 9151:9151 -e NUCYPHER_KEYRING_PASSWORD -e NUCYPHER_WORKER_ETH_PASSWORD nucypher/nucypher:latest nucypher ursula run'

alias ursula-start-conf='docker rm $(docker ps -aq --filter name=ursula); docker run --name ursula -d -v ~/.ethereum:/root/.ethereum -v ~/.local/share/nucypher:/root/.local/share/nucypher -p 9151:9151 -e NUCYPHER_KEYRING_PASSWORD -e NUCYPHER_WORKER_ETH_PASSWORD nucypher/nucypher:latest nucypher ursula run --config-file $(cat worker-config-path)'

alias pull-nucypher='docker pull nucypher/nucypher:latest'
alias pull-geth='docker pull ethereum/client-go:latest'