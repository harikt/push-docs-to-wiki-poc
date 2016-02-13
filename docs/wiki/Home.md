# Push Docs To Wiki

This is a proof of concept.

# Prepare travis

Set the following environment variables, either in travis.yml or on the travis project settings page:

- ``GH_USER_NAME`` indicates the GitHub author name to use;
- ``GH_USER_EMAIL`` indicates the email address for that author;
- ``GH_REPO`` indicates the GitHub <user>/<repository_name> location;
- ``GH_TOKEN`` is the personal security token to use for commits.

  Set the ``GH_TOKEN`` directly on the travis project settings page or use travis cli:

    ```bash
    $ travis encrypt -r <org>/<repo> GH_TOKEN=<token value>
    ```
