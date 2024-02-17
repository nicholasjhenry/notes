A heroku.yml manifest has 4 top-level sections:

* setup - Specifies the add-ons and config vars to create during app provisioning
* build - Specifies the Dockerfile to build
* release - Specifies the release phase tasks to execute
* run - Specifies process types and the commands to run for each

https://devcenter.heroku.com/articles/build-docker-images-heroku-yml#heroku-yml-overview
