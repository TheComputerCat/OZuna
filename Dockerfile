FROM debian:bookworm
RUN apt-get update -y --no-install-recommends
RUN apt-get -y --no-install-recommends install git gcc make cmake emacs libboost-all-dev default-jre g++ csh tk-dev tcl-dev default-jdk
ADD bash_as_current_user.sh /root/bash_as_current_user.sh
