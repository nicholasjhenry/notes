## Example workflow file

  name: Deploy

  on:
    release:
      types:
        - prereleased

  jobs:
    deploy:
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v2
        - run: >
            cat > ~/.netrc <<EOF
              machine api.heroku.com
              login nicholas@example.com
              password ${{secrets.HEROKU_API_KEY}}
              machine git.heroku.com
              login nicholas@example.com
              password ${{secrets.HEROKU_API_KEY}}
            EOF
        - run: heroku container:login -v
        - run: heroku container:push web -a myapp --arg RELEASE_TAG=${{ github.event.release.tag_name }}
        - run: heroku container:release web -a myapp

## GitHub Event Payload example

  {
    "release": {
      "tag_name": "release-20210209a"
    }
  }

## Command Line

    act release -s HEROKU_API_KEY=api-key -P ubuntu-latest=nektos/act-environments-ubuntu:18.04 -e tmp/release.json
