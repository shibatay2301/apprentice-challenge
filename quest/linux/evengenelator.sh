#!/bin/bash

# while 文で偶数を表示
i=2
while [ $i -le 100 ]; do
    echo -n "$i "
    i=$((i + 2))
done
echo  # 改行
