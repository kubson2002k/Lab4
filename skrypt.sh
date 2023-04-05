#!/bin/bash

if [[ $1 == "--date" ]]; then
  echo $(date)
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
fi