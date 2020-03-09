# Prepare golang-github-shurcool-sanitized-anchor-name build
spectool -g -R golang-github-shurcool-sanitized-anchor-name.spec

# Build golang-github-shurcool-sanitized-anchor-name rpm
rpmbuild -ba golang-github-shurcool-sanitized-anchor-name.spec