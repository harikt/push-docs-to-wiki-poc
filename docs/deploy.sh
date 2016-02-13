#!/usr/bin/env bash
# Deploy documentation to the github wiki
#
# Environment variables that may be of use:
#
# - GH_USER_NAME indicates the GitHub author name to use;
# - GH_USER_EMAIL indicates the email address for that author;
# - GH_REPO indicates the GitHub <user>/<repository_name> location;
# - GH_TOKEN is the personal security token to use for commits.
#
# All of the above are exported via the project .travis.yml file (with
# GH_TOKEN being encrypted and present in the `secure` key). The user details
# need to match the token used for this to work.
#
# The script should be run from the project root.

set -o errexit -o nounset

cd $TRAVIS_BUILD_DIR

# Get curent commit revision
rev=$(git rev-parse --short HEAD)

# Initialize gh-pages checkout
mkdir -p ${TRAVIS_BUILD_DIR}/docs/build
(
    cd ${TRAVIS_BUILD_DIR}/docs/build
    git init
    git config user.name "${GH_USER_NAME}"
    git config user.email "${GH_USER_EMAIL}"
    git remote add upstream "https://${GH_TOKEN}@github.com/${GH_REPO}.wiki.git"
    git fetch upstream
    git reset upstream/master
)

# Build the documentation
cp -rf ${TRAVIS_BUILD_DIR}/docs/wiki/* ${TRAVIS_BUILD_DIR}/docs/build/

# Commit and push the documentation
(
    cd ${TRAVIS_BUILD_DIR}/docs/build
    touch .
    git add -A .
    git commit -m "Rebuild wiki at ${rev}"
    git push -q upstream HEAD:master
)
