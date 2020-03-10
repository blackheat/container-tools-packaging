srpm:
  # Install EPEL Release for EL8
  dnf install -y glibc-langpack-en epel-release dnf-plugins-core

  # Enable PowerTools
  dnf config-manager --set-enabled PowerTools

  # Enable ELRepo for EL8
  dnf install -y https://www.elrepo.org/elrepo-release-8.1-1.el8.elrepo.noarch.rpm

  # Enable ELRepo Extras and Testing repositories
  dnf config-manager --set-enabled elrepo-extras
  dnf config-manager --set-enabled elrepo-testing

  # Update all components
  dnf update -y

  # Install "Development Tools" group
  dnf groupinstall -y "Development Tools"

  # Prepare rpmbuild environment
  dnf install -y rpm-build spectool
  mkdir -p $HOME/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS,BUILDROOT}

  # Install build dependencies
  dnf install -y device-mapper-devel git glib2-devel glibc-static gpgme-devel libassuan-devel libseccomp-devel pkgconf-pkg-config make golang go-compilers-golang-compiler container-selinux rpmdevtools libcap-devel systemd-devel python36 gettext libtool dos2unix yajl-devel btrfs-progs-devel

  # Install go-md2man (from EL7)
  dnf install -y https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/g/golang-github-cpuguy83-go-md2man-1.0.4-5.el7.x86_64.rpm

  # Run spectool
  spectool -g -R cri-o.spec

  # rpmbuild
  rpmbuild -ba cri-o.spec