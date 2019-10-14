
# NVM
# Download nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Node V10.0
nvm install v10.0
nvm use v10.0

# Update NPM to latest version
npm i npm@latest -g
