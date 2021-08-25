# M1 맥북에서 호환성 에러...
# FROM denoland/deno:latest 

FROM debian:stable-slim

EXPOSE 1993 8080 3000

RUN apt update
RUN apt-get update

RUN apt-get install zsh vim curl unzip sudo git -y
# for Nodejs using asdf
RUN pt-get install dirmngr gpg gawk -y
RUN apt autoremove -y

# for oh-my-zsh
RUN chsh -s /usr/bin/zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
COPY ./setup/.zshrc /root/.zshrc
SHELL [ "/bin/bash", "source", "~/.zshrc" ]

# Install Deno with asdf (see {https://asdf-vm.com})
RUN git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1
RUN . $HOME/.asdf/asdf.sh

RUN asdf plugin add deno
# RUN DENO_LATEST=$(asdf latest deno)
# RUN asdf install deno $DENO_LATEST
# RUN asdf global deno $DENO_LATEST

# install Nodejs
RUN asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
RUN asdf install nodejs lts
RUN asdf global nodejs lts
RUN npm i -g npm yarn

CMD ["zsh"]

RUN git config --global init.defaultBranch main
RUN git config --global user.name "gitgitWi"
RUN git config --global user.email "gitgitWi@gmail.com"
