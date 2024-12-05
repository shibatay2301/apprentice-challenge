#!/bin/bash

# 保存先ファイルの定義
OUTPUT_FILE="passwords.txt"

# パスワードマネージャーの開始メッセージ
echo "パスワードマネージャーへようこそ！"

# サービス名の入力
read -p "サービス名を入力してください: " service_name

# ユーザー名の入力
read -p "ユーザー名を入力してください: " user_name

# パスワードの入力（非表示で入力）
read -sp "パスワードを入力してください: " password
echo # 改行のため

# 入力内容をファイルに保存
echo "${service_name}:${user_name}:${password}" >> "$OUTPUT_FILE"

# 完了メッセージ
echo "Thank you! 入力された情報を保存しました。"

