https://facebook.github.io/watchman/
https://facebook.github.io/watchman/docs/cli-options.html

## Examples

    watchman watch . # must watch to register a trigger otherwise 'RootResolveError'
    watchman watch-list
    watchman -- trigger ./ format '**/*.ex' '**/*.exs' '**/*.default' -- mix format
    watchman trigger-list .
    watchman watch-del-all

    watchman-make --pattern '**/*.ex' '**/*.exs' --run 'MIX_ENV=test mix do format, test'
    watchman-make --pattern '**/*.ex' '**/*.exs' --run 'mix docs'

Fix:
    File "/usr/local/Cellar/watchman/4.9.0_3/libexec/bin/watchman-make", line 103, in __call__
    if isinstance(values, basestring):

    pip install pywatchman

Find path to log:

    ps aux | grep watchman | grep -o -- '--logfile=\S*' | awk -F= '{ print $2 }'

Check pattern matching:

    watchman -j <<< '["query", ".", {"expression": ["match", "**/*.ex", "wholename"], "fields": ["name"]}]'



