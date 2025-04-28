#!/usr/bin/env bash

# main_temp.pyをコピーしてmain.pyを作成
cp main_temp.py main.py

# caseN.txtを削除
rm -f case*.txt

# 新しいcaseN.txtを作成
touch case{1..5}.txt
