FROM blackheat/crio-el7-build-image:centos7-1.1

# Prepare workdir
WORKDIR /root
COPY cri-o.spec .
COPY crio-metrics.sysconfig .
COPY crio-network.sysconfig .
COPY crio-storage.sysconfig .
COPY sources .

# Convert CRLF to LF
RUN dos2unix cri-o.spec
RUN dos2unix crio-metrics.sysconfig
RUN dos2unix crio-network.sysconfig
RUN dos2unix crio-storage.sysconfig
RUN dos2unix sources

# Download sources, copy sysconfig
RUN spectool -g -R cri-o.spec
RUN cp *.sysconfig /root/rpmbuild/SOURCES/

# Build cri-o
RUN rpmbuild -ba cri-o.spec
RUN mkdir /root/crio-rpm
RUN cp /root/rpmbuild/SRPMS/cri-o*.src.rpm /root/crio-rpm/
RUN cp /root/rpmbuild/RPMS/cri-o*.rpm /root/crio-rpm/
RUN tar -cvf crio-rpm.tar /root/crio-rpm/