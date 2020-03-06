FROM centos:8

RUN yum config-manager --set-enabled PowerTools
RUN dnf install -y glibc-langpack-en epel-release
RUN dnf update -y
RUN dnf groupinstall -y "Development Tools"
RUN dnf install -y device-mapper-devel git glib2-devel glibc-static gpgme-devel libassuan-devel libseccomp-devel pkgconf-pkg-config make golang container-selinux rpmdevtools libcap-devel systemd-devel python36 gettext libtool dos2unix

# Prepare rpmbuild environment
RUN mkdir -p /root/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS,BUILDROOT}