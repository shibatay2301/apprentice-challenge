# パーミッションを操作できる

## 1. ファイルのオーナーとグループ

ホームディレクトリの直下に、README.md という名前の空ファイルを作成してください。

その上で、README.md ファイルのオーナーとグループを確認してください。
```
drwxr-sr-x 5 root   users 4096 Nov 27 10:17 apprentice-challenge
drwxr-sr-x 5 jovyan users 4096 Sep  2 04:59 intern
-rw-r--r-- 1 jovyan users    0 Nov 30 22:55 README.md
drwsrwsr-x 1 jovyan users 4096 Nov 27 10:14 work
```

## 2. ファイルのパーミッション

README.md ファイルのパーミッションを確認し、誰に何の権限が付与されているかを説明してください。
```
1列目がファイルのパーミッションを示す。ファイル種、オーナーの権限3つ、グループの権限、その他のユーザーの権限を3つ（）ずつ示す。
rは読み取り可能、wは書き込み可能、xはファイルならファイルをプログラムとして実行可能にする。ディレクトリはディレクトリ内に移動したり、ファイルへアクセスする権限を与える。
4列目がusersなのでusersグループに権限が付与されている。
```

## 3. ファイルのパーミッションの設定

README.md ファイルのオーナーに対して、読み取り、書き込み、実行の全ての権限を付与してください。
```
chmod u+rwx README.md
```
## 4. ディレクトリのパーミッションの設定

ホームディレクトリの直下に、permission という名前の空ディレクトリを作成してください。

permission ディレクトリのグループに対して、書き込み権限を付与してください。
```
chmod g+w permission
drwxr-sr-x 5 root   users 4096 Nov 27 10:17 apprentice-challenge
drwxr-sr-x 5 jovyan users 4096 Sep  2 04:59 intern
drwxr-sr-x 2 jovyan users 4096 Nov 30 23:16 permission
-rwxr--r-- 1 jovyan users    0 Nov 30 22:55 README.md
drwsrwsr-x 1 jovyan users 4096 Nov 27 10:14 work
```

## 5. スーパーユーザー

スーパーユーザーとして、ホームディレクトリの直下に superuser という名前の空ディレクトリを作成してください。
```
drwxr-sr-x 5 root   users 4096 Nov 27 10:17 apprentice-challenge
drwxr-sr-x 2 jovyan users 4096 Nov 30 23:16 permission
-rwxr--r-- 1 jovyan users    0 Nov 30 22:55 README.md
drwxr-sr-x 2 root   users 4096 Nov 30 23:21 superuser
drwsrwsr-x 1 jovyan users 4096 Nov 27 10:14 work
```

作成後、superuser ディレクトリのオーナーが誰かを確認してください。
```
drwxr-sr-x 2 root   users 4096 Nov 30 23:21 superuser
rootがオーナー
```


