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

echo "... preparing to build and deploy documentation"

ls
echo $TRAVIS_BUILD_DIR

echo "... deployment ready"
