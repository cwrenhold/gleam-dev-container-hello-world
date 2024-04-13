FROM mcr.microsoft.com/devcontainers/base:bullseye

ARG GLEAM_VERSION=v1.0.0

# Install base dependencies
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    build-essential \
    cmake \
    git \
    curl \
    wget


# Add Erlang
RUN mkdir -p /tmp/erlang \
    && wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb -O /tmp/erlang/erlang-solutions_2.0_all.deb \
    && dpkg -i /tmp/erlang/erlang-solutions_2.0_all.deb

# Install Erlang
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    esl-erlang

USER vscode

# Install Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Clone the gleam repo
RUN mkdir -p /tmp/gleam \
    && cd /tmp/gleam \
    && git clone https://github.com/gleam-lang/gleam.git --branch $GLEAM_VERSION .

# Set the shell to bash, this will allow us to use the source command
SHELL ["/bin/bash", "-c"]

# Build and install gleam
RUN cd /tmp/gleam \
    && source $HOME/.cargo/env \
    && make install

