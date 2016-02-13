## What is it?

This is a proof of concept on how to push changes to the GitHub wiki pages. Docs are maintained in [./docs/wiki](https://github.com/xtreamwayz/push-docs-to-wiki-poc/tree/master/docs/wiki) and are pushed with [deploy.sh](https://github.com/xtreamwayz/push-docs-to-wiki-poc/blob/master/docs/deploy.sh) to the wiki git repo if changes are detected.

## Prepare travis

Set the following environment variables, either in travis.yml or on the travis project settings page:

- ``GH_USER_EMAIL`` indicates the email address for that author;
- ``GH_REPO`` indicates the GitHub <user>/<repository_name> location;
- ``GH_TOKEN`` is the personal security token to use for commits.

  Set the ``GH_TOKEN`` directly on the travis project settings page or use
  [travis cli](https://github.com/travis-ci/travis.rb#readme) to create a secure variable:

    ```bash
    $ travis encrypt -r <org>/<repo> GH_TOKEN=<token value>
    ```

    and place it in travis.yml:

    ```yml
    env:
      global:
        - secure: "..."
    ```
