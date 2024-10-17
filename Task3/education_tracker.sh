#!/bin/bash

create_course() {
    echo "Название курса:"
    read course_name

    if [ ! -d "$course_name" ]; then
        mkdir -p "$course_name/Студенты"
        touch "$course_name/Оценки.txt"
        echo "Курс \"$course_name\" создан."
    else
        echo "Курс \"$course_name\" уже существует."
    fi

    echo "Количество студентов в группе:"
    read student_count

    for ((i=1; i<=student_count; i++)); do
        echo "Фамилия студента $i:"
        read student_name

        echo "Оценка для $student_name:"
        read grade

        echo "$student_name: $grade" >> "$course_name/Оценки.txt"
    done

    echo "Оценки добавлены в \"$course_name/Оценки.txt\"."
}

edit_grades() {
    echo "Название курса для редактирования:"
    read course_name

    if [ -f "$course_name/Оценки.txt" ]; then
        cat "$course_name/Оценки.txt"

        echo "Имя студента для изменения оценки:"
        read student_name

        if grep -q "$student_name" "$course_name/Оценки.txt"; then
            echo "Новая оценка для $student_name:"
            read new_grade
            sed -i "s/$student_name:.*/$student_name: $new_grade/" "$course_name/Оценки.txt"
            echo "Оценка изменена."
        else
            echo "Студент \"$student_name\" не найден."
        fi
    else
        echo "Файл с оценками для \"$course_name\" не найден."
    fi
}

echo "Выберите действие:"
echo "1. Добавить курс и студентов"
echo "2. Изменить оценки"
read choice

case $choice in
    1)
        create_course
        ;;
    2)
        edit_grades
        ;;
    *)
        echo "Такого действия нет."
        ;;
esac
