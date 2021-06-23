FROM ubuntu
WORKDIR /root/workspace

RUN yes | unminimize
RUN apt-get update && apt-get install -y dialog apt-utils man vim zsh git curl tree
RUN yes | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ENTRYPOINT [ "/bin/zsh" ]
