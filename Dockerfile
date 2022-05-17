# Dockerfile for mybinder.org
#

FROM ghcr.io/jamesdbrock/ihaskell-notebook:master@sha256:23f44a47d53280b6d7c62eb5eb392865c12917047f117775dcec60022dff202f

USER root

COPY . /home/$NB_USER
RUN chown --recursive $NB_UID:users /home/$NB_USER

USER $NB_UID

ENV JUPYTER_ENABLE_LAB=yes
