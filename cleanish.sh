. vars.sh

echo "Bulk cache in the directory? y/n/e"

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
