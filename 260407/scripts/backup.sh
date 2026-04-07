mkdir -p backup_folder
backup_directory="./backup_folder"

for file in "$@"
do
  cp "$file" "${backup_directory}/${file}.${RANDOM}"
done
