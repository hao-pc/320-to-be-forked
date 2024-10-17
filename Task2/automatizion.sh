#!/bin/bash

read -p "Введите название проекта: " project_name
read -p "Введите директорию, где создать проект: " directory

project_path="$directory/$project_name"

if [ -d "$project_path" ]; then
    echo "Проект с именем '$project_name' уже существует в директории: $directory"
else
    mkdir -p "$project_path/src/scripts"
    mkdir -p "$project_path/src/styles"
    mkdir -p "$project_path/src/images"

    echo "# $project_name" > "$project_path/README.md"

    touch "$project_path/.gitignore"

    echo "Проект '$project_name' успешно создан в директории: $project_path"
fi
