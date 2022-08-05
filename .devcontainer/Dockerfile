# [Choice] Debian OS version: bullseye, buster
ARG VARIANT=bullseye
FROM --platform=linux/amd64 mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

ENV DENO_INSTALL=/deno
RUN mkdir -p /deno && \
    curl -fsSL https://deno.land/x/install/install.sh | sh && \
    chown -R vscode /deno

ENV PATH=${DENO_INSTALL}/bin:${PATH} \
    DENO_DIR=${DENO_INSTALL}/.cache/deno

RUN apt update
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && \
    apt-get -y install --no-install-recommends vim
RUN apt autoremove -y

RUN git config --global init.defaultBranch main
RUN git config --global user.name "gitgitWi"
RUN git config --global user.email "gitgitWi@gmail.com"

# for oh-my-zsh
# FIX: 컨테이너 실행시 반영 안됨
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
RUN wget "https://gist.githubusercontent.com/gitgitWi/93f3583109ac09076fbef6b64c76536f/raw/27a6dee2807396816f9b292ccf3f69c89155b587/.zshrc" -O ~/.zshrc

CMD zsh
