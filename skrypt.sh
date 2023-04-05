#!/bin/bash

if [[ $1 == "--date" ]] || [[ $1 == "-d" ]]; then
  echo $(date)
elif [[ $1 == "--logs" ]] || [[ $1 == "-l" ]]; then
  if [[ -z $2 ]]; then
    for i in {1..100}; do
      echo "Nazwa pliku: log$i.txt, Nazwa skryptu: skrypt.sh, Data: $(date)" > log$i.txt
    done
  else
    for i in $(seq 1 $2); do
      echo "Nazwa pliku: log$i.txt, Nazwa skryptu: skrypt.sh, Data: $(date)" > log$i.txt
    done
  fi
elif [[ $1 == "--error" ]] || [[ $1 == "-e" ]]; then
  if [[ -z $2 ]]; then
    for i in {1..100}; do
      mkdir error$i
      echo "Nazwa pliku: error$i.txt, Nazwa skryptu: skrypt.sh, Data: $(date)" > error$i/error$i.txt
    done
  else
    for i in $(seq 1 $2); do
      mkdir error$i
      echo "Nazwa pliku: error$i.txt, Nazwa skryptu: skrypt.sh, Data: $(date)" > error$i/error$i.txt
    done
  fi
elif [[ $1 == "--help" ]]|| [[ $1 == "-h" ]]; then
  echo "Możliwe komendy do wyboru: --date, -d , --logs -l, --logs liczba, -l liczba, --error, -error liczba, -e, -e liczba --help, -h,"
else
  echo "Nie ma takiej komendy!"
fi