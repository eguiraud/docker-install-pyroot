FROM debian
RUN apt-get update && apt-get upgrade && apt-get install -y dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev \
      libxft-dev libxext-dev python3 gfortran libssl-dev libpcre3-dev \
      xlibmesa-glu-dev libglew1.5-dev libftgl-dev \
      libmariadb-dev libfftw3-dev libcfitsio-dev \
      graphviz-dev libavahi-compat-libdnssd-dev \
      libldap2-dev python3-dev libxml2-dev libkrb5-dev \
      libgsl0-dev libqt4-dev vim git
RUN apt-get clean && apt-get autoclean && rm -rf /tmp/* /var/lib/apt/lists/*
RUN git clone --branch install_pyroot --depth 1 https://github.com/eguiraud/root.git /root/src
COPY configure_build.sh /root/configure_build.sh

WORKDIR /root
