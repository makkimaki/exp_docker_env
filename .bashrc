# .bashrc

export LANG=ja_JP.UTF-8

# container ssh agent setup
eval $(ssh-agent -s)
ssh-add -k ~/.ssh/id_ed25519_aws
# eval "$(ssh -T git@github.com)"

# vscode code command path
export PATH=$PATH:/root/.vscode-server/bin/ccbaa2d27e38e5afa3e5c21c1c7bef4657064247/bin/

# pyenv 
# export PATH="~/.pyenv/bin:${PATH}"
# eval "$(pyenv init --path)"
# eval "$(pyenv virtualenv-init -)"