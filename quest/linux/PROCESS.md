# プロセス・ジョブを管理できる

## 1. プロセス

全ユーザーのプロセスを表示してください。

’’’
(base) root@9ad45085254f:~# ps aux
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
jovyan         1  0.0  0.1   2784  1280 pts/0    Ss   22:46   0:00 tini -g -- start-notebook.py
jovyan         6  0.2 12.3 557560 120592 pts/0   Sl+  22:46   0:06 /opt/conda/bin/python3.11 /opt/conda/bin/jupyter-lab
jovyan       125  0.0  0.4   7632  3968 pts/1    Ss+  22:46   0:00 /bin/bash
jovyan       165  0.0  6.7 690480 66068 ?        Ssl  22:47   0:00 /opt/conda/bin/python -m ipykernel_launcher -f /home/jovyan/.local/
jovyan       168  0.0  6.8 690484 66712 ?        Ssl  22:47   0:00 /opt/conda/bin/python -m ipykernel_launcher -f /home/jovyan/.local/
root        3052  0.0  0.4   7632  4224 pts/2    Ss   23:19   0:00 bash
'''
## 2. バックグラウンド

sleep コマンドを利用して処理を100秒停止する処理を、バックグラウンドで実行してください。

## 3. プロセス・ジョブの終了

2でバックグラウンドで実行されている sleep コマンドを終了させてください。
