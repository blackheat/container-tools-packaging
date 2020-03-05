FROM centos:8

RUN dnf install -y epel-release
RUN dnf update -y
RUN dnf groupinstall -y "Development Tools"
RUN dnf install -y btrfs-progs-devel device-mapper-devel git glib2-devel glibc-static gpgme-devel libassuan-devel libseccomp-devel pkgconfig make golang container-selinux spectool rpmbuild libcap-devel systemd-devel yajl-devel python36 gettext libtool dos2unix

# Prepare rpmbuild environment
RUN mkdir -p /root/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS,BUILDROOT}