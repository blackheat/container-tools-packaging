FROM blackheat/crio-el7-build-image:centos7-1.1

# Prepare workdir
WORKDIR /root
COPY crun.spec .
COPY sources .

# Convert CRLF to LF
RUN dos2unix crun.spec
RUN dos2unix sources

# Download sources, copy sysconfig
RUN spectool -g -R crun.spec

# Build cri-o
RUN rpmbuild -ba crun.spec
RUN mkdir /root/crun-rpm
RUN cp /root/rpmbuild/SRPMS/crun*.src.rpm /root/crun-rpm/
RUN cp /root/rpmbuild/RPMS/crun*.rpm /root/crun-rpm/
RUN tar -cvf crun-rpm.tar /root/crun-rpm/