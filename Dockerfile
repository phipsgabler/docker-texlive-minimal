FROM frolvlad/alpine-glibc

COPY texlive-profile.txt /tmp/

# set up packages
RUN apk add --no-cache wget perl xz && \
    wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && \
    tar -xzf install-tl-unx.tar.gz && \
    install-tl-20*/install-tl --profile=/tmp/texlive-profile.txt

ENV PATH=/usr/local/texlive/bin/x86_64-linuxmusl:$PATH
