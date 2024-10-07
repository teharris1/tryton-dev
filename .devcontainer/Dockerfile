# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.155.1/containers/python-3/.devcontainer/base.Dockerfile

# [Choice] Python version: 3, 3.12, 3.11, 3.10, 3.9
ARG VARIANT="3"
FROM mcr.microsoft.com/vscode/devcontainers/python:${VARIANT}

# install other dependancies
RUN apt update
RUN apt install --assume-yes \
    libcairo2-dev \
    pkg-config \
    libgirepository1.0-dev \
    gcc \
    gir1.2-gtk-4.0 \
    npm