# Prepare golang-github-pmezard-difflib build
spectool -g -R golang-github-pmezard-difflib.spec

# Build golang-github-pmezard-difflib rpm
rpmbuild -ba golang-github-pmezard-difflib.spec