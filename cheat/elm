http://elm-lang.org/get-started

Setup:

    npm install -g elm
    elm-make --version
    elm reactor --address=0.0.0.0 --port=9000
    elm-make --warn Bingo.elm --output bingo.js
    elm-live Bingo.elm --output=bingo.js --open

Start with:

    elm package install
    elm package install elm-lang/html

Build with:

    elm make Main.elm --output=index.html

With fswatch:

    fswatch -0 ./Main.elm | xargs -0 -I {} -t sh -c 'f="{}"; elm make ${f} --output=index.html'
