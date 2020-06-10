> awk more powerful and robust than sed with sophisticated programming constructs such as if/else, while, do/while etc. (columns)

https://likegeeks.com/awk-command/

    awk 'BEGIN{FS="\t"; OFS=";"} {print $1, $2, "POINT("$5 " " $6")"}' US.txt
