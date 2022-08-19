FROM gitpod/workspace-full

RUN curl -fsSL https://deno.land/x/install/install.sh | sh
RUN /home/gitpod/.deno/bin/deno completions bash >/home/gitpod/.bashrc.d/90-deno &&
    echo 'export DENO_INSTALL="/home/gitpod/.deno"' >>/home/gitpod/.bashrc.d/90-deno &&
    echo 'export PATH="$DENO_INSTALL/bin:$PATH"' >>/home/gitpod/.bashrc.d/90-deno

RUN apt update
RUN apt-get update
RUN apt autoremove -y

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
RUN wget "https://gist.githubusercontent.com/gitgitWi/93f3583109ac09076fbef6b64c76536f/raw/27a6dee2807396816f9b292ccf3f69c89155b587/.zshrc" -O $HOME/.zshrc
