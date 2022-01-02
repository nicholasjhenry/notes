This doesn't seem to work and there's some confusion about it:

https://stackoverflow.com/questions/61721157/heroku-with-container-stack-and-entrypoint-instruction-continues-to-run-with-b

For example:

    ENTRYPOINT ["bin/firefly"]
    CMD ["start"]

On Heroku it will result in:

    bin/firefly bin/sh -c start

Seems it is easier to just run "CMD" without ENTRYPOINT.

References:

* https://help.heroku.com/YNG7SACF/how-do-i-define-a-start-command-for-an-app-using-docker-images
* https://devcenter.heroku.com/articles/build-docker-images-heroku-yml#run-defining-the-processes-to-run
* https://devcenter.heroku.com/articles/container-registry-and-runtime#dockerfile-commands-and-runtime
