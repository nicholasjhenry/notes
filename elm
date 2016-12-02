http://elm-lang.org/get-started

Start with:

    elm package install
    elm package install elm-lang/html

Build with:

    elm make Main.elm --output=index.html

With fswatch:

    fswatch -0 ./Main.elm | xargs -0 -I {} -t sh -c 'f="{}"; elm make ${f} --output=index.html'
