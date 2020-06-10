Found out that if we insert UTF character `\uFEFF` at the start of the file, Excel
opens the file properly, and saves it also in a format it can reopen. That
character is known as the BOM (byte order mark).

See Wikipedia: https://en.wikipedia.org/wiki/Byte_order_mark

https://underthehood.meltwater.com/blog/2018/08/08/excel-friendly-csv-exports-with-elixir/

    # add BOM
    sed -i '' $'1s/^/\xef\xbb\xbf/' file_without_bom.csv

    # remove BOM
    awk '{ gsub(/\xef\xbb\xbf/,""); print }' file_with_bom.csv > file_without_bom.csv