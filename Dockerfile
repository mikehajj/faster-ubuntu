FROM ubuntu:18.04
MAINTAINER Mike Hajj <mike@mikehajj.com>

RUN echo "Upgrading OS max File Limits and uLimits"
RUN echo "-----------------------------------------------"
RUN echo "-> Override default file limits"
ADD ./limits.conf /etc/security/limits.conf

RUN echo "-> Override default cached session"
ADD ./common-session /etc/pam.d/common-session

RUN echo "-> Override default ports limits"
ADD ./sysctl.conf /etc/sysctl.conf

RUN echo "Installing Common Modules ..."
RUN echo "-----------------------------------------------"
RUN apt-get update
RUN apt-get install --fix-missing -y vim git curl unzip

RUN echo "==============================================="
RUN echo "Image Building Completed, Enjoy!"

CMD ["/bin/bash"]