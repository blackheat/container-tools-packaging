# Prepare go-md2man build
spectool -g -R golang-gopkg-russross-blackfriday.spec

# Build go-md2man rpm
rpmbuild -ba golang-gopkg-russross-blackfriday.spec