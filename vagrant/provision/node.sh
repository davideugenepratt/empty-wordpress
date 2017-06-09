#!/usr/bin/env bash

sudo apt-get update

sudo apt-get install -y build-essential libssl-dev

su - ubuntu -c 'curl https://raw.githubusercontent.com/creationix/nvm/v0.25.0/install.sh | bash'

su - ubuntu -c 'export NVM_DIR=/home/ubuntu/.nvm && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && nvm install node && nvm alias default node && npm install grunt-cli @angular/cli -g'

su - ubuntu -c 'gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3'

su - ubuntu -c '\curl -sSL https://get.rvm.io | bash -s stable --ruby'

su - ubuntu -c 'source /home/ubuntu/.rvm/scripts/rvm && gem install sass'