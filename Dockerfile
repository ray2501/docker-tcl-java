FROM opensuse/leap:15.0
MAINTAINER Danilo Chang

RUN zypper addrepo http://download.opensuse.org/repositories/Java:/Factory/openSUSE_Leap_15.0/ Java-Factory
RUN zypper --no-gpg-checks refresh && zypper --no-gpg-checks -n update
RUN zypper --no-gpg-checks -n install sed autoconf make gcc git tcl tcl-devel java-12-openjdk \
java-12-openjdk-devel jpackage-utils
CMD ["/bin/bash"]
