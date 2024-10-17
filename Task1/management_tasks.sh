#!/bin/bash

folders=("9ИС-160" "9ИС-165" "9ИС-170" "9ИС-235" "9ИС-240" "9ИС-245" "9ИС-320" "9ИС-325" "9ИС-330" "9ИС-480")

for folder in "${folders[@]}"; do
    mkdir -p "$folder/Управление задачами"
    mkdir -p "$folder/Управление задачами/Документация"
    touch "$folder/Управление задачами/Документация/Инструкция.txt"
    mkdir -p "$folder/Управление задачами/Документация/Шаблоны задач"
    touch "$folder/Управление задачами/Документация/Шаблоны задач/Шаблон1.txt"
    touch "$folder/Управление задачами/Документация/Шаблоны задач/Шаблон2.txt"

    mkdir -p "$folder/Код"
    mkdir -p "$folder/Код/Исходники"
    touch "$folder/Код/Исходники/main.c"
    touch "$folder/Код/Исходники/utils.c"
    mkdir -p "$folder/Код/Скрипты"
    touch "$folder/Код/Скрипты/setup.sh"
    touch "$folder/Код/Скрипты/run.sh"

    mkdir -p "$folder/Отчеты"
    touch "$folder/Отчеты/Отчет1.doc"
    touch "$folder/Отчеты/Отчет2.doc"
done
