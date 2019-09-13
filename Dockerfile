FROM    python:3.6-stretch
MAINTAINER danliwoo wulidan0530@live.com

WORKDIR /app
COPY    . /app

RUN     pip install --trusted-host pypi.python.org -r requirements.txt
RUN     apt-get -yqq upgrade
RUN     apt-get -yqq update
RUN     apt-get install -yqq fish
RUN     apt-get install -yqq vim
RUN     apt-get install -yqq tree
RUN     apt-get install -yqq tmux
RUN     apt-get clean
RUN     jupyter contrib nbextension install --user --skip-running-check
RUN     jupyter notebook --generate-config

EXPOSE  80
EXPOSE  8888
EXPOSE  22

ENV     NAME World
CMD     ["/bin/bash"]
