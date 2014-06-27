FROM ubuntu:14.04
MAINTAINER nicholas.ferrier@bwinparty.com
RUN apt-get update
RUN apt-get -y install autoconf automake libtool texinfo build-essential xorg-dev libgtk2.0-dev libjpeg-dev libgif-dev libtiff-dev libm17n-dev libpng12-dev librsvg2-dev libotf-dev libncurses5-dev git
RUN git clone --depth 1 -b emacs-24.3 git://git.savannah.gnu.org/emacs.git emacs-source
RUN cd emacs-source ; ./autogen.sh
RUN cd emacs-source ; ./configure --prefix=/usr/local/emacs
RUN cd emacs-source ; make bootstrap
RUN cd emacs-source ; make install
RUN /usr/local/emacs/bin/emacs -batch --eval "(print 10)"
