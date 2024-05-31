#!/bin/bash

# Проверяем, что файл run.txt существует
if [ ! -f run.txt ]; then
    echo "Not Fiund"
    exit 1
fi

# Запускаем каждую команду из файла run.txt
while IFS= read -r line
do
    echo "Run: $line"
    $line
    if [ $? -ne 0 ]; then
        echo "Error: $line"
        exit 1
    fi
done < run.txt

echo "Done"
