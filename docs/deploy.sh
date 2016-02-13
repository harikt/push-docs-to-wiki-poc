#!/bin/bash
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

if [[ "$TRAVIS_PULL_REQUEST" != "false" ]]; then
    echo "This is a pull request. No deployment will be done."
    exit 0
fi
if [[ "$TRAVIS_BRANCH" != "master" ]]; then
    echo "Testing on a branch other than master. No deployment will be done."
    exit 0
fi
if [[ "DEPLOY_DOCS" != "true" ]]; then
    echo "Ignoring deployment. No deployment will be done."
    exit 0
fi

echo "... started deploy docs script"

ls
echo $TRAVIS_BUILD_DIR

echo "... deployment ready"
