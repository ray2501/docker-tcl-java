FROM opensuse:42.3
MAINTAINER Danilo Chang

RUN zypper addrepo http://download.opensuse.org/repositories/Java:/Factory/openSUSE_Leap_42.3/ Java-Factory
RUN zypper --no-gpg-checks refresh && zypper --no-gpg-checks -n update
RUN zypper --no-gpg-checks -n install sed autoconf make gcc tcl tcl-devel java-9-openjdk \
java-9-openjdk-devel jpackage-utils
CMD ["/bin/bash"]
