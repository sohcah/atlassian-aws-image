FROM atlassian/default-image:2

RUN npm install --global yarn
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
RUN test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
RUN test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
RUN test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
RUN echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
RUN brew tap aws/tap
RUN brew install aws-sam-cli
