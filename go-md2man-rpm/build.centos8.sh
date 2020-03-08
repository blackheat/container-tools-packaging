# Install EPEL Release for EL8
dnf install -y glibc-langpack-en epel-release dnf-plugins-core

# Enable PowerTools
dnf config-manager --set-enabled PowerTools

# Update all components
dnf update -y

# Install "Development Tools" group
dnf groupinstall -y "Development Tools"

# Prepare rpmbuild environment
dnf install rpm-build spectool
mkdir -p ${HOME}/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS,BUILDROOT}

# Install build dependencies
dnf install -y device-mapper-level \
git \
glib2-devel \
glibc-static \
gpgme-devel \
libassuan-devel \
libseccomp-devel \
pkgconf-pkg-config \
make \
golang \
container-selinux \
rpmdevtools \
libcap-devel \
systemd-devel \
python36 \
gettext \
libtool \
dos2unix

# Prepare go-md2man build
spectool -g -R golang-github-cpuguy83-md2man.spec

# Build go-md2man rpm
rpmbuild -ba golang-github-cpuguy83-md2man.spec