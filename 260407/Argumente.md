# Arbeitsbericht

- Name:     Enrico Weiser
- Datum:    07.04.2026
- Thema:    Shell Script Argumente
- Fach:     Syt-B
- Klasse:   3AHITS


# Shell Script
Parameter können mit $0 $1 $2 $3 $... im Script verwendet werden. $0 beinhaltet das present working directory und den filename.

es können alle Parameter mit 
```sh
for parameter in "$@"
do
    code
done 
```
durchgelaufen werden 



### Übung (Directory Struktur)

build_dirs.sh
```sh

mkdir "$01"
mkdir "${1}_01"
touch "${1}_01/${1}.01.01.txt"
touch "${1}_01/${1}.01.02.txt"
touch "${1}_01/${1}.01.03.txt"
mkdir "${1}_02"
touch "${1}_02/${1}.02.01.txt"
touch "${1}_02/${1}.02.02.txt"
touch "${1}_02/${1}.02.03.txt"

```
Ergebnis nach ausführung: 

```sh 
.
├── abc_01
│   ├── abc.01.01.txt
│   ├── abc.01.02.txt
│   └── abc.01.03.txt
├── abc_02
│   ├── abc.02.01.txt
│   ├── abc.02.02.txt
│   └── abc.02.03.txt
├── build_dirs.sh
└── build_dirs.sh1


```

clean_dirs.sh
```sh
rm -rf "${1}_01"
rm -rf "${1}_02"
```
- -r: um directories zu löschen
- -f: um die directory zu löschen, obwohl sie nicht leer ist 



Ergebnis nach ausführung:

```sh

.
├── build_dirs.sh
├── build_dirs.sh1
└── clean_dir.sh

2 directories, 2 files


```

### Übung (Skript Generator)

makescript.sh
```sh
touch "${1}.sh"

echo "#!/bin/bash" >> "${1}.sh"
echo "echo 'gruezi woed' "  >> "${1}.sh"
chmod +x "${1}.sh"

```

Ergebnis nach ausfuehrung: 
```sh
rici@envy-u:~/HTL/3AHITS/.../260407/scripts$ ./makescript.sh mytest

rici@envy-u:~/HTL/3AHITS/.../260407/scripts$ cat mytest.sh 
#!/bin/bash
echo 'gruezi woed' 


```
- ``>>`` hängt den input an eine datei an, statt den Inhalt der Zieldatei zu ersetzen 


### Übung (Headline Cat)

headline_cat.sh
```sh 
touch result.txt
echo "" > result.txt
for file in "$@"
do
   echo "=====${file}==================" >> result.txt
   cat "$file" >> result.txt
done

```

Ergebnis nach ausfuehrung: 
```sh

rici@envy-u:~/HTL/3AHITS/.../260407/scripts$ ./headline_cat.sh file1.txt file2.txt file3.txt
rici@envy-u:~/HTL/3AHITS/Syt-B/.../260407/scripts$ cat result.txt 

=====file1.txt==================
file 1 hallo
=====file2.txt==================
file 2 hallo
=====file3.txt==================
file 3 moin
rici@envy-u:~/HTL/3AHITS/Syt-B/Labor/Matejka/3AHITS-SYTB-Weiser-Enrico/260407/scripts$ 

```

### Übung (RANDOM)

Recherche: https://stackoverflow.com/questions/1194882/how-to-generate-random-number-in-bash

backup.sh
```sh
mkdir -p backup_folder
backup_directory="./backup_folder"

for file in "$@"
do
  cp "$file" "${backup_directory}/${file}.${RANDOM}"
done
```
- ``$RANDOM`` ist eine Variable die eine zufällige Zahl beinhaltet

Ergebnis nach ausfuehrung:
```sh
rici@envy-u:~/HTL/3AHITS/Syt-B/.../260407/scripts$ ./backup.sh file1.txt file2.txt  file3.txt 
rici@envy-u:~/HTL/3AHITS/Syt-B/.../260407/scripts$ tree
.
├── abc_02
│   ├── abc.02.01.txt
│   ├── abc.02.02.txt
│   └── abc.02.03.txt
├── backup_folder
│   ├── file1.txt.14040
│   ├── file2.txt.24236
│   └── file3.txt.7628
├── backup.sh
├── build_dirs.sh
├── build_dirs.sh1
├── clean_dir.sh
├── file1.txt
├── file2.txt
├── file3.txt
├── headline_cat.sh
├── makescript.sh
├── mytest.sh
└── result.txt

4 directories, 16 files
rici@envy-u:~/HTL/3AHITS/Syt-B/Labor/Matejka/3AHITS-SYTB-Weiser-Enrico/260407/scripts$ 
```