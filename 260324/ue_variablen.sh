DIR1="dir1"
DIR2="dir2"
NAME="test"
FILE_EXTENSIONS=".txt"

mkdir -p "${DIR1}/${DIR2}/"
echo "Irgendein Text" > "${DIR1}/${DIR2}/${NAME}.${FILE_EXTENSIONS}"