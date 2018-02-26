FROM debian:latest
# ------------------------------------------------------------------------------
# Install base
RUN apt-get -y update \
	&& apt-get install -y \
		bash \
		build-essential \
		automake \
		bison \
		clang \
		cmake \
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

RUN adduser --disabled-password --gecos "" --shell /bin/bash vtr

# Where we will do the build
RUN mkdir /workspace; chown vtr:vtr /workspace
VOLUME /workspace
RUN chown vtr:vtr /workspace

# Where the binaries should end up
RUN mkdir /opt/vtr; chown vtr:vtr /opt/vtr

USER vtr

WORKDIR /workspace
RUN git clone https://github.com/verilog-to-routing/vtr-verilog-to-routing.git

COPY --chown=vtr buildenv.sh /workspace/buildenv.sh
RUN bash /workspace/buildenv.sh
