FROM opensuse/leap:15.1
MAINTAINER Danilo Chang

RUN zypper addrepo http://download.opensuse.org/repositories/Java:/Factory/openSUSE_Leap_15.1/ Java-Factory
RUN zypper --no-gpg-checks refresh && zypper --no-gpg-checks -n update
RUN zypper --no-gpg-checks -n install sed autoconf make gcc git tcl tcl-devel java-13-openjdk \
java-13-openjdk-devel jpackage-utils
CMD ["/bin/bash"]
