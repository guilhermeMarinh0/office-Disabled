@echo off
set arquivo=
for /f "delims=" %%a in ('where firewall.wfw ^| find "G:\"') do (
  set arquivo=%%a
)
if "%arquivo%" == "" (
  echo O arquivo não foi encontrado! em G:
) else (
  rem Cria o arquivo de texto com o caminho para o arquivo
  echo %arquivo% > caminho.txt
  echo O arquivo de texto "caminho.txt" foi criado com o caminho para o arquivo.
)

for /f "delims=" %%a in ('where firewall.wfw ^| find "F:\"') do (
  set arquivo=%%a
)
if "%arquivo%" == "" (
  echo.
  echo O arquivo não foi encontrado! em F:
  echo.
) else (
  rem Cria o arquivo de texto com o caminho para o arquivo
  echo %arquivo% > caminho.txt
  echo O arquivo de texto "caminho.txt" foi criado com o caminho para o arquivo.
)

for /f "delims=" %%a in ('where firewall.wfw ^| find "E:\"') do (
  set arquivo=%%a
)
if "%arquivo%" == "" (
  echo O arquivo não foi encontrado! em E:
) else (
  rem Cria o arquivo de texto com o caminho para o arquivo
  echo %arquivo% > caminho.txt
  echo O arquivo de texto "caminho.txt" foi criado com o caminho para o arquivo.
)

for /f "delims=" %%a in ('where firewall.wfw ^| find "D:\"') do (
  set arquivo=%%a
)
if "%arquivo%" == "" (
  echo O arquivo não foi encontrado! em D:
) else (
  rem Cria o arquivo de texto com o caminho para o arquivo
  echo %arquivo% > caminho.txt
  echo O arquivo de texto "caminho.txt" foi criado com o caminho para o arquivo.
)
start SubsScripts\caminho.txt
pause
