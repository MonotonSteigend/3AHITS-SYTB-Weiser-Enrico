DIR_NAME=$1

test ! -d "$DIR_NAME" && mkdir "$DIR_NAME" || { echo "Existiert bereits"; }