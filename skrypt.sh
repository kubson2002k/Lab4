#!/bin/bash

if [[ "$1" == "--date" ]]; then
    date "+%Y-%m-%d"
elif [[ "$1" == "--logs" ]]; then
    if [[ -z "$2" ]]; then
        for i in {1..100}; do
            echo "log$i.txt created by $0 on $(date)" > "log$i.txt"
        done
    else
        for i in $(seq 1 $2); do
            echo "log$i.txt created by $0 on $(date)" > "log$i.txt"
        done
    fi
elif [[ "$1" == "--help" ]]; then
    echo "Możliwe opcje do wykonania:"
    echo "--date: Wyswietla date"
    echo "--logs: Tworzy pliki log z numerami od 1 do 100"
    echo "--logs: Tworzy pliki log z numerami od 1 do liczby podanej przy uruchamianiu skryptu"
else
    echo "Nie ma takiej opcji"
fi