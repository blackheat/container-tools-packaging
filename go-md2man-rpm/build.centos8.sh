# Prepare go-md2man build
spectool -g -R golang-github-cpuguy83-md2man.spec

# Build go-md2man rpm
rpmbuild -ba golang-github-cpuguy83-md2man.spec