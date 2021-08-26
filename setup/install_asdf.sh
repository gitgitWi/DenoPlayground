# Install Deno with asdf (see {https://asdf-vm.com})
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
# . $HOME/.asdf/asdf.sh

# Install Deno
asdf plugin add deno
DENO_LATEST=$(asdf latest deno)
asdf install deno $DENO_LATEST
asdf global deno $DENO_LATEST

# install Nodejs
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs lts
asdf global nodejs lts
npm i -g npm yarn
