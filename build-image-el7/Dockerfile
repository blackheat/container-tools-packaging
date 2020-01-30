FROM centos:7

RUN yum install -y epel-release
RUN yum update -y
RUN yum groupinstall -y "Development Tools"
RUN yum install -y btrfs-progs-devel device-mapper-devel git glib2-devel glibc-static go-md2man gpgme-devel libassuan-devel libseccomp-devel pkgconfig make golang container-selinux spectool rpmbuild libcap-devel systemd-devel yajl-devel python36 gettext libtool dos2unix

# Prepare rpmbuild environment
RUN mkdir -p /root/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}