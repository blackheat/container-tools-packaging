# Prepare crun build
spectool -g -R crun.spec

# Build crun rpm
rpmbuild -ba crun.spec