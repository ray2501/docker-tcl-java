FROM opensuse/leap:15.3
MAINTAINER Danilo Chang

RUN zypper addrepo https://download.opensuse.org/repositories/Java:/Factory/openSUSE_Leap_15.3/ Java-Factory
RUN zypper --no-gpg-checks refresh && zypper --no-gpg-checks -n update
RUN zypper --no-gpg-checks -n install sed autoconf make gcc git tcl tcl-devel java-16-openjdk \
java-16-openjdk-devel jpackage-utils
CMD ["/bin/bash"]
