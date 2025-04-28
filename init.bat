@echo off
rem main_temp.pyをコピーしてmain.pyを作成
copy /Y main_temp.py main.py >nul

rem caseN.txtを削除
del /Q case*.txt 2>nul

rem 新しいcaseN.txtを作成
for %%i in (1 2 3 4 5) do (
    type nul >case%%i.txt
)
