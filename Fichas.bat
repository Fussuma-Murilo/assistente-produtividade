@echo off
chcp 65001
cd %path
cls


:start

@echo --------------------------------------
@echo Ferramentas disponíveis:
@echo Fichas  : 1
@echo Tools   : 2
@echo Senhas  : 3
@echo Sair    : 0
@echo --------------------------------------


set /p pick="Insira o código da ficha desejada: "

if %pick% EQU 1 (
cls
goto ficha
)

if %pick% EQU 2 (
cls
goto tools
)

if %pick% EQU 3 (
cls
goto passwords
)

if %pick% EQU 0 (
goto end
) else (
cls
@echo Código inválido
goto start
)


:ficha
@echo --------------------------------------
@echo Códigos das fichas:
@echo Carreta  : 1
@echo Cavalo   : 2
@echo Truck    : 3
@echo Arla 32  : 4
@echo Voltar   : 0
@echo --------------------------------------

set /p pick="Selecione a ficha desejada: "

if %pick% EQU 1 (
goto carreta
)

if %pick% EQU 2 (
goto cavalo
)

if %pick% EQU 3 (
goto truck
)

if %pick% EQU 4 (
goto arla
)

if %pick% EQU 0 (
cls
goto start
) else (
cls
@echo Código inválido
goto ficha
)

:carreta
clip < Rev_Carreta.txt
cls
@echo Ficha copiada: Carreta
goto ficha

:cavalo
clip < Rev_Cavalo.txt
cls
@echo Ficha copiada: Cavalo
goto ficha

:truck
clip < Rev_Truck.txt
cls
@echo Ficha copiada: Truck
goto ficha

:arla
clip < Aba_Arla.txt
cls
@echo Ficha copiada: Abastecimento Arla 32
goto ficha

:tools
cls
start C:\Users\murilo.manoel\Desktop\Sd.url
start C:\Users\murilo.manoel\Desktop\Teams.lnk
start C:\Users\Public\Desktop\"BENNER PRODUCAO.rdp"
goto start

:passwords
set pick = null
cls
@echo --------------------------------------
@echo Senhas:
@echo TMS MATRIZ  : 1
@echo Voltar      : 0
@echo --------------------------------------
set /p pick="Escolha a senha desejada: "

if %pick% EQU 1 (
clip
cls
goto passwords
)

if %pick% EQU 0 (
cls
goto start
)

:end