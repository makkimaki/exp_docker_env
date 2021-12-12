# .bashrc

export LANG=ja_JP.UTF-8

# container ssh agent setup
eval $(ssh-agent -s)
ssh-add -k ~/.ssh/makkimaki-gcp2
eval "$(ssh -T git@github.com)"

# pyenv 
export PATH="~/.pyenv/bin:${PATH}"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"