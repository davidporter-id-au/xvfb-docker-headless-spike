FROM ubuntu

RUN useradd test -m 
RUN echo "test:test" | chpasswd
RUN echo 'test ALL=(ALL:ALL) ALL' >> /etc/sudoers 

RUN sudo apt-get update 
RUN sudo apt-get install openssh-server xvfb x11vnc fluxbox xterm -y
RUN sudo apt-get --reinstall install xfonts-base

RUN mkdir -p /var/app/current
ADD . /var/app/current
WORKDIR /var/app/current

EXPORT 22
EXPORT 5900
CMD ./exec.sh
