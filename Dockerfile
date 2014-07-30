FROM ubuntu:14.04
MAINTAINER nic@ferrier.me.uk
RUN apt-get update
RUN apt-get -y install autoconf automake libtool texinfo build-essential libxml2-dev libjpeg-dev libgif-dev libtiff-dev libm17n-dev libpng12-dev librsvg2-dev libotf-dev libncurses5-dev git
RUN git clone --depth 1 -b emacs-24.3 git://git.savannah.gnu.org/emacs.git emacs-source
RUN cd emacs-source ; ./autogen.sh
RUN cd emacs-source ; ./configure --prefix=/usr/local/emacs --with-x-toolkit=no --with-xpm=no
RUN cd emacs-source ; make bootstrap
RUN cd emacs-source ; make install
