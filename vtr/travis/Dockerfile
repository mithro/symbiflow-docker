FROM ubuntu:trusty
# ------------------------------------------------------------------------------
# Install base
RUN export LC_ALL=C.UTF-8 \
	&& apt-get -y update \
	&& apt-get install -y \
		bash \
		build-essential \
		automake \
		bison \
		cmake \
		gcc-4.9 \
		ctags \
		curl \
		doxygen \
		flex \
		fontconfig \
		gdb \
		git \
		libcairo2-dev \
		libevent-dev \
		libfontconfig1-dev \
		libncurses5-dev \
		libx11-dev \
		libxft-dev \
		libxml++2.6-dev \
		perl \
		liblist-moreutils-perl \
		python \
		time \
		valgrind \
		zip \
	&& apt-get -y autoremove \
	&& rm -rf /var/lib/apt/lists/*

COPY *.sh /tmp/

ENV CC gcc-5
ENV CXX g++-5

RUN cd /tmp && /tmp/install-cc.sh

RUN adduser --disabled-password --gecos "" --shell /bin/bash vtr

# Where we will do the build
RUN mkdir /workspace; chown vtr:vtr /workspace
#VOLUME /workspace
RUN chown vtr:vtr /workspace && ls -l /workspace

# Where the binaries should end up
RUN mkdir /opt/vtr && chown vtr:vtr /opt/vtr && ls -l /workspace

USER vtr

WORKDIR /workspace
RUN git clone https://github.com/verilog-to-routing/vtr-verilog-to-routing.git

RUN /tmp/build-vpr.sh $1

RUN find /opt | sort && ldd /opt/vtr/bin/vpr
