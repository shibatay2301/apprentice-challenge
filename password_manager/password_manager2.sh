#!/bin/bash

# 保存先ファイルの定義
DATA_FILE="passwords.txt"

# パスワードマネージャーのメインループ
while true; do
    echo "パスワードマネージャーへようこそ！"
    echo "次の選択肢を選んでください："
    echo "1) Add Password"
    echo "2) Get Password"
    echo "3) Exit"
    read -p "選択肢を入力してください (1/2/3): " choice

    case $choice in
        1)
            # サービス名、ユーザー名、パスワードを入力
            read -p "サービス名を入力してください: " service_name
            read -p "ユーザー名を入力してください: " user_name
            read -sp "パスワードを入力してください: " password
            echo
            # 入力内容をファイルに保存
            echo "${service_name}:${user_name}:${password}" >> "$DATA_FILE"
            echo "パスワードの追加は成功しました。"
            ;;
        
        2)
            # サービス名を入力して情報を取得
            read -p "サービス名を入力してください: " service_name
            if grep -q "^${service_name}:" "$DATA_FILE"; then
                # サービス名が見つかった場合
                grep "^${service_name}:" "$DATA_FILE" | while IFS=: read -r srv user pass; do
                    echo "サービス名：$srv"
                    echo "ユーザー名：$user"
                    echo "パスワード：$pass"
                done
            else
                # サービス名が見つからなかった場合
                echo "そのサービスは登録されていません。"
            fi
            ;;
        
        3)
            # プログラムを終了
            echo "Thank you!"
            exit 0
            ;;
        
        *)
            # 無効な入力
            echo "入力が間違えています。1/2/3 から選択してください。"
            ;;
    esac
done
