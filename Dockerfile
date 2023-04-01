FROM scratch as builder
ADD alpine-minirootfs-3.17.3-x86_64.tar.gz /
CMD ["/bin/sh"]

