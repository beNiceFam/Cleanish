# variables regarding file manipulation

bulk=$(find . -type f -iname "*cache*" -delete && find . -type d -iname "*cache*" -exec rm -rf {} +)

cd $HOME

echo "Bulk cache in the home directory? y/n/e"

shopt -s nocasematch; read -r aim;

if [ "$aim" = "y" ]; then
    $bulk
fi

if [ "$aim" = "e" ]; then
    exit 0
fi

shopt -u nocasematch;

echo "Clean all Xorg's logs? y/n/e"

shopt -s nocasematch; read -r aim;

if [ "$aim" = "y" ]; then
    > ~/.xsession-errors
    > ~/.xsession-errors.old
fi

shopt -u nocasematch;

echo "Thanks for using cleanish!"; exit 0
