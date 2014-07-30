FROM nicferrier/emacs
MAINTAINER nic@ferrier.me.uk
RUN ["useradd", "-m", "emacs"]
USER emacs
ADD dot-emacs.el /home/emacs/.emacs
ENV HOME /home/emacs
RUN /usr/local/emacs/bin/emacs -daemon
# We expose the server port - you cannot make a frame but you can send
# things to Emacs to eval, like:
#
#  emacsclient -f serverfile -e '(+ 1 2)'
#
# You need to make serverfile look like this:
#
# 0.0.0.0:6001 21
# e-%-6uuO2Q|4D%~;MS2c7-QOSjZ~/,LQtLteND*X5~lyfkpn5/|=yB/~e-iH7ggJ
#
# Don't have an eol on the auth line
EXPOSE 6001
CMD /usr/local/emacs/bin/emacs -daemon && tail -f /dev/null
# Dockerfile ends
