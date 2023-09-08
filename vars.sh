# variables regarding file manipulation

bulk=$(find . -type f -iname "*cache*" -delete && find . -type d -iname "*cache*" -exec rm -rf {} +)
list=$(find . -type f -iname "*cache*" | grep -i cache && find . -type d -iname "*cache*" | grep -i cache)
