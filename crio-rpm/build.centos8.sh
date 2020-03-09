# Prepare CRI-O build
spectool -g -R cri-o.spec
cp *.sysconfig /root/rpmbuild/SOURCES/

# Build CRI-O rpm
rpmbuild -ba cri-o.spec