#!/bin/bash

# ユーザーに2つの数値を入力させる
echo "Enter two numbers:"
read num1
read num2

# 演算子の入力を求める
echo "Choose an arithmetic operation (+, -, *, /):"
read operator

# 条件分岐で計算処理を実行
if [ "$operator" = "+" ]; then
    result=$((num1 + num2))
    echo "The result: $result"

elif [ "$operator" = "-" ]; then
    result=$((num1 - num2))
    echo "The result: $result"

elif [ "$operator" = "*" ]; then
    result=$((num1 * num2))
    echo "The result: $result"

elif [ "$operator" = "/" ]; then
    if [ "$num2" -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
    else
        result=$((num1 / num2))
        echo "The result: $result"
    fi

else
    echo "Error: Invalid operator. Please use one of +, -, *, /."
fi
