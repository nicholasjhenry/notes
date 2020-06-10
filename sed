> sed is a command utility that works with streams of characters for searching, filtering and text processing

Delete lines in a file

    sed '1,50d' input.txt

Search replace (special char, e.g. tab)

    sed "s/$(printf '\t')/;/g" input.txt > output.txt
