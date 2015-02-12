FROM debian:jessie
RUN apt-get -yq update \
  && apt-get -yq upgrade \
  && apt-get -yq install git libncurses5-dev libncursesw5-dev g++ lua5.1-dev
RUN cd /usr/local/src \
  && git clone https://github.com/CleverRaven/Cataclysm-DDA.git
RUN cd Cataclysm-DDA \
  && make LUA=1 \
WORKDIR /usr/local/src/Cataclysm-DDA
CMD ./Cataclysm
