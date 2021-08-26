# M1 맥북에서 호환성 에러...
# FROM denoland/deno:latest 
FROM debian:stable-slim

EXPOSE 1993 8080 3000

RUN apt update
RUN apt-get update

RUN apt-get install zsh vim curl wget unzip sudo git -y
# for Nodejs using asdf
RUN apt-get install dirmngr gpg gawk -y
RUN apt autoremove -y

RUN git config --global init.defaultBranch main
RUN git config --global user.name "gitgitWi"
RUN git config --global user.email "gitgitWi@gmail.com"

# for oh-my-zsh
RUN chsh -s /usr/bin/zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
COPY ./setup/.zshrc /root/.zshrc
SHELL [ "/bin/zsh", "source", "~/.zshrc" ]

RUN chmod +777 /workspaces/deno-tutorials/setup/install_asdf.sh
# RUN /workspaces/deno-tutorials/setup/install_asdf.sh

CMD ["zsh"]
