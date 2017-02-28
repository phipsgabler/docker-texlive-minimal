# docker-texlive-minimal

Based on `frolvlad/alpine-glibc`, [this](http://tex.stackexchange.com/a/270103/46356) SO post, 
and some hints from [this repo](https://github.com/Paperist/docker-alpine-texlive-ja). 

You have to install all packages manually using `tlmgr`, like

    RUN tlmgr install babel-english hyperref latex latex-fonts
    
or from a file:

    COPY packages.txt
    RUN tlmgr install $(cat packages.txt)

