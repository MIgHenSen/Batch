:MENU

@echo off
cls 

set INPUT=false

echo ====================================
echo .                                  .
echo .     1 - Criar Projeto HTML       .
echo .     2 - Salvar Projeto JAVA      .
echo .            3 - EXIT              .
echo .                                  .
echo ====================================

set /p MENU_OPTION="Escolha: "

if %MENU_OPTION% == 1 (goto :PROJETO_HTML)
if %MENU_OPTION% == 2 (goto :PROJETO_JAVA)
if %MENU_OPTION% == 3 (goto :EXIT) 
if %INPUT% == false (goto :DEFAULT)

:PROJETO_HTML
cls
echo ======================================
echo .
echo .      Gerador De Projeto HTML       .
echo .
echo . ####################################
echo .                                    .
echo .          CRIANDO PASTA...          .
echo .                                    .
echo ######################################
timeout 2 > nul

cd %USERPROFILE%\desktop\ 
md ProjetoHTML
cd ProjetoHTML
md _img _css _js
echo. > index.HTML
echo .                                    .
echo .         DIRETORIO CRIADO           .
echo ######################################
timeout 3 > nul
goto :MENU

:PROJETO_JAVA
cls
set /p nome_pasta=Insira o nome do seu projeto:

for /d %%i in ("%userprofile%\eclipse-workspace\*") do (
    if /i "%%~nxi"=="%nome_pasta%" (
        xcopy "%%i" "%userprofile%\desktop\%nome_pasta%" /E /Q /K /I
        echo A pasta %nome_pasta% foi copiada para a area de trabalho
        timeout 3 > nul
        goto:MENU
    )
)

:EXIT
cls
msg * Fechando...
exit

:DEFAULT
cls
echo Opcao Invalida
timeout 5 > nul
goto :MENU


:PROJETO_JAVA