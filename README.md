# docker-texlive-minimal

[![](https://images.microbadger.com/badges/image/phipsgabler/texlive-minimal.svg)](https://microbadger.com/images/phipsgabler/texlive-minimal "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/phipsgabler/texlive-minimal.svg)](https://microbadger.com/images/phipsgabler/texlive-minimal "Get your own version badge on microbadger.com")

A minimal image containing a Linux and a recent texlive.

Based on `frolvlad/alpine-glibc`, [this](http://tex.stackexchange.com/a/270103/46356) SO post, 
and some hints from [this repo](https://github.com/Paperist/docker-alpine-texlive-ja). 

You have to install all packages manually using `tlmgr`, like

    RUN tlmgr install babel-english hyperref latex latex-fonts
    
or from a file:

    COPY packages.txt /tmp/packages.txt
    RUN tlmgr install $(cat /tmp/packages.txt)

