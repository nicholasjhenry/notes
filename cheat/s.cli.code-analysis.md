How big is that app?

    find . -iname "*.rb" -type f -exec cat {} \; | wc -l

Sort the Ruby files in your project by LOC

    find . -iname "*.rb" -type f -exec wc -l {} \; | sort -rn

Sort the Ruby files in your project by number of has_many

    ack " has_many " -c | awk -F ":" '{print $2,$1}' | grep -v "0" | sort -rn
