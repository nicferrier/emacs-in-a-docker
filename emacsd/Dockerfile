FROM nicferrier/emacs
MAINTAINER nic@ferrier.me.uk
RUN ["useradd", "-m", "emacs"]
# Slighty complicated dance to make the directory socket acceptable
RUN mkdir /tmp/emacs1000
RUN chmod g=,o= /tmp/emacs1000
RUN chown emacs /tmp/emacs1000
ADD dot-emacs.el /home/emacs/.emacs
RUN chown emacs /home/emacs/.emacs
USER emacs
# Publish the socket dir root, the socket dir is created under here
VOLUME /tmp/emacs1000
ENV HOME /home/emacs
RUN /usr/local/emacs/bin/emacs -daemon
CMD /usr/local/emacs/bin/emacs -daemon && tail -f /dev/null
# Dockerfile ends
