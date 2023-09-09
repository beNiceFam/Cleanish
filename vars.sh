# variables regarding file manipulation

bulk=$(find . -type f -iname "*cache*" -delete && find . -type d -iname "*cache*" -exec rm -rf {} +)
