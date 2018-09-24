# Set the base image to Ubuntu, use a public image
FROM rocker/tidyverse:3.4.0

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    libmpfr4 \
    libmpfr-dev \
    libglpk-dev \
    && install2.r -r "https://cloud.r-project.org" --error --deps TRUE \
    CVXR

ENV DISABLE_AUTH=true
