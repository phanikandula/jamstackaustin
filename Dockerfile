FROM ubuntu

RUN apt update \
    && apt install -y sudo make vim hugo \
    && adduser --disabled-password --gecos "" devuser \
    && usermod -a -G sudo devuser \
    && echo "%sudo   ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers.d/no_passwd_sudo
USER devuser
WORKDIR /home/devuser

CMD ["bash"]
