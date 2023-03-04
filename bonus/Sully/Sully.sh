#!/bin/bash

# Исходное целое число
num=5
if [ $num -eq 5 ]
then
    fullname=$(/bin/echo ${BASH_SOURCE:2} | sed $(printf s/\\.sh$/_%s.sh/ $(($num-1))))
else
    fullname=$(/bin/echo ${BASH_SOURCE:2} | sed $(printf 's/\_%d.sh$/_%d.sh/' $(($num)) $(($num-1))))
fi
echo $fullname $num

# Функция, которая создает новый файл и запускает его
main() {
    # Создаем файл с именем "name_X.sh", где X - текущее значение num
    cat "${BASH_SOURCE[0]}" > $fullname
    cat $fullname
    chmod +x $fullname
    sed "4s/.*/num=$((num-1))/g" "$fullname" > tmp$fullname; cat tmp$fullname > $fullname; rm tmp$fullname

    # Запускаем новую программу
    if [ $num -gt 1 ]; then
        ./$fullname
    fi
}

# Вызываем функцию main
main
