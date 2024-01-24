@echo off

set versao=1007
if exist %temp%\Lostinjunglev%versao%.tmp goto :ok
echo Caso o Game nao inicie, leia o arquivo "Solucao de Problemas.pdf" que foi criado na mesma pasta do Game.
echo.

pause
:ok
title Lost in Jungle %versao%

chcp 65001

SETLOCAL ENABLEDELAYEDEXPANSION ENABLEEXTENSIONS
rem set _DataInicio=%date:~0,2%/%date:~3,2%/%date:~6,4%
rem set _HoraInicio=%time:~0,2%:%time:~3,2%:%time:~6,2%
rem  goto :Vitoria
set horaControl=%time%
set /a _tent=0
:Intro1
set "NUL_00= "
set "#= "
set Veloc=1
set Exec=10
set "COL_=0123456789ABCDEF"

for /L %%X in (10,1,129) do (
    set "Tela_%%X= "
    )

:Intro2
cls
set "Tela_%Exec%=█"
set /a Exec=Exec+1
set Tela_%Exec%=O

set /a RAN=%random%%%16
color 0!COL_:~%RAN%,1!
set "Linha_10= "
set "Linha_12= "
set "Linha_12= %NUL_00%%NUL_00%%Tela_14%  %#%%Tela_21%%Tela_22%%Tela_23%%#%%Tela_37%%Tela_38%%Tela_39%%#%%Tela_40%%Tela_41%%Tela_46%%#%%#%%Tela_47%%#%%Tela_56%  %Tela_63%%#%
set "Linha_13= %NUL_00%%NUL_00%%Tela_13%  %#%%Tela_20% %Tela_24%%#%%Tela_36%  %#% %Tela_42% %#%%#%%Tela_48%%#%%Tela_55%%Tela_57% %Tela_62%%#%
set "Linha_14= %NUL_00%%NUL_00%%Tela_12%  %#%%Tela_19% %Tela_25%%#%%Tela_35%%Tela_34%%Tela_33%%#% %Tela_43% %#%%#%%Tela_49%%#%%Tela_54% %Tela_58%%Tela_61%%#%
set "Linha_15= %NUL_00%%NUL_00%%Tela_11%  %#%%Tela_18% %Tela_26%%#%  %Tela_32%%#% %Tela_44% %#%%#%%Tela_50%%#%%Tela_53%  %Tela_60%%#%
set "Linha_16= %NUL_00%%NUL_00%%Tela_10%%Tela_15%%Tela_16%%#%%Tela_17%%Tela_27%%Tela_28%%#%%Tela_29%%Tela_30%%Tela_31%%#% %Tela_45% %#%%#%%Tela_51%%#%%Tela_52%  %Tela_59%%#%
set "Linha_17= "
set "Linha_18= "
set "Linha_19= %Tela_64%%Tela_65%%Tela_66%%Tela_66%%#%%Tela_74%%NUL_00%%Tela_84%%#%%Tela_89%%NUL_00%%NUL_00%%Tela_96%%#%%Tela_100%%Tela_99%%Tela_98%%Tela_97%%#%%Tela_111%%NUL_00%%NUL_00%%#%%Tela_126%%Tela_127%%Tela_127%
set "Linha_20= %NUL_00%%NUL_00%%Tela_67%%NUL_00%%#%%Tela_75%%NUL_00%%Tela_83%%#%%Tela_88%%Tela_90%%NUL_00%%Tela_95%%#%%Tela_101%%NUL_00%%NUL_00%%NUL_00%%#%%Tela_112%%NUL_00%%NUL_00%%#%%Tela_125%%NUL_00%%NUL_00%
set "Linha_21= %NUL_00%%NUL_00%%Tela_68%%NUL_00%%#%%Tela_76%%NUL_00%%Tela_82%%#%%Tela_87%%NUL_00%%Tela_91%%Tela_94%%#%%Tela_102%%NUL_00%%Tela_110%%Tela_109%%#%%Tela_113%%NUL_00%%NUL_00%%#%%Tela_122%%Tela_123%%Tela_124%
set "Linha_22= %Tela_73%%NUL_00%%Tela_69%%NUL_00%%#%%Tela_77%%NUL_00%%Tela_81%%#%%Tela_86%%NUL_00%%NUL_00%%Tela_93%%#%%Tela_103%%NUL_00%%NUL_00%%Tela_108%%#%%Tela_114%%NUL_00%%NUL_00%%#%%Tela_121%%NUL_00%%NUL_00%
set "Linha_23= %Tela_72%%Tela_71%%Tela_70%%NUL_00%%#%%Tela_78%%Tela_79%%Tela_80%%#%%Tela_85%%NUL_00%%NUL_00%%Tela_92%%#%%Tela_104%%Tela_105%%Tela_106%%Tela_107%%#%%Tela_115%%Tela_116%%Tela_117%%#%%Tela_120%%Tela_119%%Tela_118%

for /l %%Y in (10,1,23) do (
    echo.  !Linha_%%Y!
   )

@ping localhost -n %Veloc% >nul

if %Exec%==129 goto :Fim_Rot

goto :Intro2

:Fim_Rot
set Vlab=█
set "Vlac= "
set Vlad=◊
echo.
echo.
echo O Game Ira Começar em Instantes...
@ping localhost -n 4 >nul

set "_Person=☻"
set /a _Um=1
set /a _Dois=2
set /a Dific=1
color 07

:Inicio
cls
echo ###########################################################################
echo                                  Atenção                               
echo         Verifique no Ranking se a versão do Game é a mais atual        
echo        Pois somente será possível incluir score na ultima versão       
echo                              Versão Atual v%versao%                        
echo ###########################################################################
@ping localhost -n 2 >nul
echo. 
set /a _final=0
@echo "ok" > %temp%\Lostinjunglev%versao%.tmp
rem cls

echo #####################################
echo #######     Lost in Jungle    #######
echo #####################################
echo ###########   Controles   ###########
echo #######           W            ######
echo #######        A  S  D         ######
echo #####################################
echo ##### Iniciar            (L)   ######
echo ##### Personagem         (O) %_Person% ######
echo ##### Dificuldade        (S) %Dific% ######
echo ##### Ranking            (T)   ######
echo #####################################
echo #    Este Jogo Foi Desenvolvido     #
echo #  Utilizando somente scripts .bat  #
echo #  Com Sequências de comandos DOS   #
echo #                                   #
echo #      Desenvolvimento Script       #
echo #           Felipe Roger            #
echo #      liperoger1@gmail.com         #
echo #                                   #
echo #    Desenvolvimento Splash/Web     #
echo #         Marcos Vinicius           #
echo #    m_vinicius_rm@hotmail.com      #
echo #####################################

:Change

choice /C:lost /N /CS /M ""
if %ERRORLEVEL%==1 goto :Start
if %ERRORLEVEL%==2 goto :AlterarPersonagem
if %ERRORLEVEL%==3 goto :AlterarNivel
if %ERRORLEVEL%==4 goto :Ranking

:AlterarPersonagem
cls
echo ####################################
echo ######   Personagem Atual %_Person%   ######
echo ####################################
echo ######     ☺              (1) ######
echo ######     ☻              (2) ######
echo ####################################

choice /C:12 /N /CS /M ""
if %ERRORLEVEL%==1 call set _Person=☺
if %ERRORLEVEL%==2 call set _Person=☻

goto Inicio

:AlterarNivel
cls
echo ####################################
echo ######   Dificuldade Atual %Dific%  ######
echo ####################################
echo ######    Fácil           (1) ######
echo ######    Díficil         (2) ######
echo ####################################
choice /C:12 /N /CS /M ""
if %ERRORLEVEL%==1 call set /a Dific=1
if %ERRORLEVEL%==2 call set /a Dific=2

goto Inicio

:Start 
cls
echo        Você foi a ilha de Alpha Center em busca de tesouros.
@ping localhost -n 2 >nul
echo Porém depois de chegar forças estranhas te separaram de sua tripulação.
@ping localhost -n 2 >nul
echo       Agora você lutará contra o tempo para escapar da Selva.
@ping localhost -n 2 >nul
echo   Tome cuidado a selva reserva muitos perigos e segredos escondigos.
@ping localhost -n 2 >nul
echo.
echo Loading Jungle...

set /a ItemAchado=0
set /a Item01=0
set /a Item02=0
set /a Item03=0
set /a Item04=0
set /a Item05=0
set /a Item06=0
set /a Item07=0
set /a Item08=0
set /a Item09=0
set /a Item10=0
set /a Secreto1=0
set /a Secreto2=0
set /a Secreto3=0

:: --------------------       Labirinto.
set map=01010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010001000000000000000000000000000000000000000100000000000000010000000100010101010101000101010101010100010101000101010101000101010101010100010001000100010001010101010100000000000000000000000100010000000000010000000000010001000000010000000000010001010101010101010101000101010101010100010101010100010001010100010101010101010001000101000000000000000100010000000101010000801000000010000000100000001000100000000000101010101010001000100010001000101010101010100010101010100010101000100010001010100010100000000000100010001000100010001000000000000000100000000000100010000000100010001010001010101010101000100010001000100010101000101010101010100010001000101010001010101000000000000000000018010001000000000001000000000001000100000001000000010001000101000101010101000101010101010101010101010100010101000100010101010101010001000100010100000000000100010000000100000000000100010000000100010000000101010000000000010001010001010100010101000101010001010100010001010101010001000100010101010101010001000101000100000001000000000000000100010000000000000000000100010000000100010000000000010101010001010101010101000101010001010101010101010101010001010101010001010100010001010000000000000000000000010000000000000000000000010000000000000001000000000001000101000101010101010101010101000101010101010101010001010101010001010100010101010101010100010000000000000000000000010000000000000001000100000001000180100000000000100010101010101000101010001010101010101010101010001000100010001000100010001010101010001010001000000000001000100000000000180000010000000000010000000000010001000000000001010001010101010001010101010001010101010001000100010101000100010001000100010001010101000000000001000000010000000000010000000000010000000100010001000100000001000000010100010101000101010001000101010101010101010101010101010001010101010001010101010001010000000100000000000100000001000000000000000000010000000000010000000000010000000101000100010101000101010101000100010101010101010001000101010001010101010001000101010100010000000100000001000000010001800000000010001000000010001000000010001000000010100010101000100010101000100010001010101010001000101010101010100010001010100010101018010000000100000001000100010001000100000001000000000001000000010000000100000001010101000101010101010100010001000100010001000100010101010101010101000101010101000101000000000000000000000001000100000000000100010000000000010000000000000001801000101010100010001010100010101010101010001010101010101000101010001010100010001000100010100000001000000010000000100010001000100000001000100000001000000010001000100010001010101000101010101000101010001000100010001010100010101000101010001000100010001000101000000000001010100000001000000000001000000010000000100000001000100010000000100010101010001010101010101000100010101010100010001010100010001010100010101010101010001010000000000000001000100000000000100000001000000000001000000010000000000010000000101010100010101010100010101010101010001010101010001010101010001000101010001000101010101010001000000000001000100010001000100010001000100010001000000000001000100000001010101000100010101000100010001000100010001000100010001000101010101010100010001010100000000000001000000000000000000000001000000000000000000000000801000000000000000101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101
call :asdosodf
set /a controle=41
set /a pad=41
set /a ini=0
set /a Tot=1763
set /a id=-1
set /a pos=0

set _DiaInicio=%date:~0,2%
set _HoraInicio=%time:~0,2%:%time:~3,2%:%time:~6,2%
set _ValidControl=%time:~0,2%:%time:~3,2%:%time:~6,2%
:while
if %pos% LEQ %Tot% (

if %pos%==%pad% (

call set lin=%%map:~%ini%,%controle%%%
call set /a ini=%pad%
call set /a pad=%pad%+%controle%
set linha[%id%]=%lin%

call set /a id +=1
)
set /a pos +=1
goto :while
)

call set lin=%%map:~0,%controle%%%
set linha[%id%]=%lin%

:: -----------------------   Fim Labirinto
:: Inicio linha 13 Col 18
set /a _Col=18
set /a _lin=13
if %Dific%==2 (
:: Inicio linha 18 Col 2
set /a _Col=2
set /a _lin=18
)

Set _CaracterLab=%linha[41]:~0,1%
cls

:Gameloop
call set _var=%%linha[%_lin%]%%
set /a _tent+=1
rem set _Voltar=Progress

if %_tent% EQU 20 goto :VerHora
goto :Progress
rem goto F_Length
rem ------------------------------------------------------------------------------
:VerHora
set /a _tent=0
set _Valid=%time:~0,2%:%time:~3,2%:%time:~6,2%
set _DiaHora=%date:~0,2%
if %_Valid% GEQ %_ValidControl% goto :Tudo_Certo
if %_DiaInicio% LSS %_DiaHora% goto :Tudo_Certo
cls
echo valid %_Valid% >> %temp%\loglost.log
echo valid control %_ValidControl% >> %temp%\loglost.log
echo data %_DiaHora% >> %temp%\loglost.log
echo data inicial %_DiaInicio% >> %temp%\loglost.log
echo ......................OPS......................
@ping localhost -n 5 >nul
cls

echo ##########################################
echo #### Parece Que Você Foi Pego No Pulo ####
echo ###        Não Tente Trapacear         ###
echo ## Isso Acaba Com a Experiência do Game ##
echo #          O Game Será Fechado           #
echo ##########################################

@ping localhost -n 15 >nul
pause
exit

:Tudo_Certo
set _ValidControl=%time:~0,2%:%time:~3,2%:%time:~6,2%
if %_final%==1 goto :vitoriaok

rem ---------------------------------------------------------------------------
:Progress
set /a _tam=10
set /a _tamp=5

rem set _Colunas=%_count%
set _Colunas=41
set /a _B=%_lin%+1
set /a _LH=%_Col%-6
if %_LH% LSS 0 (
call set /a _tam=%_LH%+%_tam%
set /a _LH=0
set /a _tamp=%_Col%-1
)
set /a _L=%_Col%-1
set /a _V=%_Col%-2
set /a _RH=%_Col%+1
set /a _R=%_Col%-%_Colunas%
set /a _T=%_lin%-1
set /a tempT=%_T%-1
set /a tempB=%_B%+1

cls
:: Mostra mais labirinto no nivel mais facil
if "%Dific%"=="%_Um%" call echo ░ %%linha[%tempT%]:~%_LH%,%_tam%%% ░%tempT%
if "%Dific%"=="%_Dois%" call echo ░ %%linha[%tempT%]:~%_LH%,%_tam%%% ░

for /L %%a in (0,1,%_Colunas%) do (
if %%a==%_T% (
if "%Dific%"=="%_Um%" call echo ░ %%linha[%%a]:~%_LH%,%_tam%%% ░%%a
if "%Dific%"=="%_Dois%" call echo ░ %%linha[%%a]:~%_LH%,%_tam%%% ░
call set _Op_W=%%linha[%%a]%%:~%_L%,1%%
call set _Op_W=%%_Op_W:~%_L%,1%%
)
if %%a==%_lin% (
rem call echo %%linha[%%a]:~0,%_L%%%%%_Person%%%%linha[%%a]:~%_R%%%
if "%Dific%"=="%_Dois%" call echo ░ %%linha[%%a]:~%_LH%,%_tamp%%%%%_Person%%%%linha[%%a]:~%_Col%,4%% ░
if "%Dific%"=="%_Um%" call echo ░ %%linha[%%a]:~%_LH%,%_tamp%%%%%_Person%%%%linha[%%a]:~%_Col%,4%% ░%%a
call set _Op_A=%%linha[%%a]%%
call set _Op_A=%%_Op_A:~%_V%,1%%
call set _Op_D=%%linha[%%a]%% 
call set _Op_D=%%_Op_D:~%_Col%,1%% 
)
if %%a==%_B% (
if "%Dific%"=="%_Um%" call echo ░ %%linha[%%a]:~%_LH%,%_tam%%% ░%%a
if "%Dific%"=="%_Dois%" call echo ░ %%linha[%%a]:~%_LH%,%_tam%%% ░
call set _Op_S=%%linha[%%a]%% 
call set _Op_S=%%_Op_S:~%_L%,1%% 
)
)

if "%Dific%"=="%_Um%" call echo ░ %%linha[%tempB%]:~%_LH%,%_tam%%% ░%tempB%
if "%Dific%"=="%_Dois%" call echo ░ %%linha[%tempB%]:~%_LH%,%_tam%%% ░
rem echo.
rem echo Itens: %ItemAchado%
::if "%_Apertou%"=="W" ( 
::timeout 1 > nul
::goto PresS;
::)
set _Op_W=%_Op_W: =%
set _Op_S=%_Op_S: =%
set _Op_A=%_Op_A: =%
set _Op_D=%_Op_D: =%


choice /c:wasd /n
if %ERRORLEVEL%==1 goto :PresW
if %ERRORLEVEL%==2 goto :PresA
if %ERRORLEVEL%==3 goto :PresS
if %ERRORLEVEL%==4 goto :PresD


:PresW
if %_Col%==38 ( if %_lin%==4 ( if %Secreto1%==0 ( goto Secret1 ) ) )
if %_Col%==8 ( if %_lin%==36 ( if %Secreto2%==0 ( goto Secret2 ) ) )
if not "%_Op_W%"=="%_CaracterLab%" (
call :GetItem
set /a _lin-=1
set _Apertou=W
goto Gameloop
) else ( goto Gameloop )
:PresA
if not "%_Op_A%"=="%_CaracterLab%" (
call :GetItem
if %_Col%==2 ( if %_lin%==40 ( goto vitoria ) )
set /a _Col-=1
goto Gameloop
) else ( goto Gameloop )
:PresS
if %_Col%==14 ( if %_lin%==4 ( if %Secreto3%==0 ( goto Secret3 ) ) )
if not "%_Op_S%"=="%_CaracterLab%" (
call :GetItem
set /a _lin+=1
set _Apertou=S
goto Gameloop
) else ( goto Gameloop )
:PresD
if not "%_Op_D%"=="%_CaracterLab%" (
call :GetItem
set /a _Col+=1
goto Gameloop
) else ( goto Gameloop )

:vitoria
cls
set /a _final=1
goto :VerHora
:vitoriaok
set _Voltar=show
goto F_CalcSegundos
:show

rem set _tempo=5328
rem set ItemAchado=5
rem set Dific=1
echo.
echo #######################################
echo ####        Congratulations        ####
echo ####  You escaped from the jungle  ####
echo #######################################
echo.
set /a score= (100000/%_tempo%)+(%ItemAchado%*500)
echo Pontuação: %score%
echo.
echo Foram Encontrados %ItemAchado% de 10 Itens
echo.
set /a _H=%_tempo% / 3600
set /a _M=(%_tempo%-%_H%*3600) / 60
set /a _S=%_tempo%-((%_M%*60)+(%_H%*3600))
echo Tempo Gasto: %_H%:%_M%:%_S%s
echo.
@ping localhost -n 3 >nul
echo.
:get_Name
set /p _Nome="Digite o seu Nome para aparecer no Ranking e pressione ENTER: "

if "%_Nome%"=="" goto :get_Name
set strFinal=%_Nome:~0,20%:%score%:%ItemAchado%:%_tempo%:%Dific%:%versao%
call :btoa strFinal "%strFinal%"
start "Pontuação" "http://gamesbat.000webhostapp.com/score.php?c2NvcmU=%strFinal%"
echo.
choice /C:sn /N /CS /M "Deseja Jogar Novamente? (S/N)"
if %ERRORLEVEL%==2 goto :Sair
if %ERRORLEVEL%==1 goto :Inicio

:Sair
Exit

:Ranking
start "Pontuação" "http://gamesbat.000webhostapp.com/score.php"
goto :Inicio

:btoa <var_to_set> <str>
for /f "delims=" %%I in (
    'powershell "[convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes(\"%~2\"))"'
) do set "%~1=%%I"
goto :EOF

:Secret1
set /a Secreto1=1
call :changel 2 "010001000000000000000000000000000000000000000100000000000000010000000100010000801"
call :changel 3 "0100010101010101010001010100010101010100010101010101010001000100010001000100010101"
set /a _lin-=1
set _Apertou=W
goto Gameloop

:Secret2
set /a Secreto2=1
call :changel 34 "010000000000018010000000100000000000100000001000000010000000100010001000000010001"
call :changel 35 "0101010001010100010101000100010101010100010001010100010001010100010101010101010001"
set /a _lin-=1
set _Apertou=W
goto Gameloop

:Secret3
set /a Secreto3=1
call :changel 5 "0101010101010101010001010100010101000101010101000100010101000101010101010100010001"
set /a _lin+=1
set _Apertou=S
goto Gameloop

:GetItem
if %_Col%==32 ( if %_lin%==40 ( if %Item01%==0 (
set linha[40]=%linha[40]:◊= %
set /A ItemAchado=%ItemAchado%+1
set /A Item01=1
goto :EOF
) ) )

if %_Col%==12 ( if %_lin%==10 ( if %Item02%==0 (
set linha[10]=%linha[10]:◊= %
set /A ItemAchado=%ItemAchado%+1
set /A Item02=1
goto :EOF
) ) )

if %_Col%==20 ( if %_lin%==6 ( if %Item03%==0 (
set linha[6]=%linha[6]:◊= %
set /A ItemAchado=%ItemAchado%+1
set /A Item03=1
goto :EOF
) ) )

if %_Col%==32 ( if %_lin%==18 ( if %Item04%==0 (
set linha[18]=%linha[18]:◊= %
set /A ItemAchado=%ItemAchado%+1
set /A Item04=1
goto :EOF
) ) )

if %_Col%==18 ( if %_lin%==20 ( if %Item05%==0 (
set linha[20]=%linha[20]:◊= %
set /A ItemAchado=%ItemAchado%+1
set /A Item05=1
goto :EOF
) ) )

if %_Col%==18 ( if %_lin%==26 ( if %Item06%==0 (
set linha[26]=%linha[26]:◊= %
set /A ItemAchado=%ItemAchado%+1
set /A Item06=1
goto :EOF
) ) )

if %_Col%==2 ( if %_lin%==28 ( if %Item07%==0 (
set linha[28]=%linha[28]:◊= %
set /A ItemAchado=%ItemAchado%+1
set /A Item07=1
goto :EOF
) ) )

if %_Col%==38 ( if %_lin%==30 ( if %Item08%==0 (
set linha[30]=%linha[30]:◊= %
set /A ItemAchado=%ItemAchado%+1
set /A Item08=1
goto :EOF
) ) )

if %_Col%==40 ( if %_lin%==2 ( if %Item09%==0 (
set linha[2]=%linha[2]:◊= %
set /A ItemAchado=%ItemAchado%+1
set /A Item09=1
goto :EOF
) ) )

if %_Col%==8 ( if %_lin%==34 ( if %Item10%==0 (
set linha[34]=%linha[34]:◊= %
set /A ItemAchado=%ItemAchado%+1
set /A Item10=1
goto :EOF
) ) )
goto :EOF

:: ------------------------------Função de contar Caracteres
:: Entrada _var=String de entrada
:: Saida _count=Total de Caracteres 		
:: _Voltar= Volta para O ponto do código
:F_Length
set palavra=%_var%

if defined palavra (call :length %palavra: =_%)
if defined [%palavra: =_%.length] (call set _count=%%[%palavra: =_%.length]%%)

::echo a variavel e: %_count%
goto %_Voltar%

goto :eof
:length
set arg=%*
if not defined arg (goto :eof)
set word=%arg%
set /a cont=0
:loop
if not defined word (goto end)
set word=%word:~1%
set /a cont +=1
goto loop
:end
set [%arg: =_%.length]=%cont%
goto :eof

:asdosodf
set map=!map:01=%Vlab%!
set map=!map:00=%Vlac%!
set map=!map:8=%Vlad%!
goto :EOF

:changel <var_to_set> <str>
set linha[%~1]=%~2
set "linha[%~1]=!linha[%~1]:01=%Vlab%!"
set "linha[%~1]=!linha[%~1]:00=%Vlac%!"
set "linha[%~1]=!linha[%~1]:8=%Vlad%!"
rem call echo %%linha[%~1]%%
goto :EOF
:: -----------------------------Fim da Função de contar caracteres


::------------------------- Funçao para calcular segundos
:: _DataInicio recebe a data inicial.
:: _HoraInicio recebe hora inicial.
:: _Voltar recebe ponto do código onde deve voltar
:: _tempo retorna o total de segundos gastos.
:F_CalcSegundos
set _HoraI=%_HoraInicio:~0,2%
set _MinutoI=%_HoraInicio:~3,2%
set _SegundoI=%_HoraInicio:~6,2%
set /a _MinutoI=%_MinutoI%*60
set /a _HoraI=(%_HoraI%*60)*60
set /a _HoraInicio=%_SegundoI%+%_MinutoI%+%_HoraI%

set _HoraFinal=%time:~0,2%:%time:~3,2%:%time:~6,2%

set _Hora=%_HoraFinal:~0,2%
set _Minuto=%_HoraFinal:~3,2%
set _Segundo=%_HoraFinal:~6,2%

set /a _Minuto=%_Minuto%*60
set /a _Hora=(%_Hora%*60)*60

set /a _HoraFinal=%_Segundo%+%_Minuto%+%_Hora%

set _DiaFinal=%date:~0,2%

if "%_DiaInicio%" EQU "%_DiaFinal%" set /a _tempo=%_HoraFinal%-%_HoraInicio% 
if "%_DiaInicio%" NEQ "%_DiaFinal%" set /a _tempo=86399-%_HoraInicio%+%_HoraFinal%



goto %_Voltar%
::-------------------------------- Fim da Função de calcular segundos
