#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Sonoicon.ico
#AutoIt3Wrapper_UseX64=y
#AutoIt3Wrapper_Add_Constants=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <GUIListBox.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <Array.au3>

CheckSerial()
Func CheckSerial()
    $compname = drivegetserial( @homedrive)
	$teste = 2788281916
	if $compname = $teste Then
        MsgBox ( 0,"Durma Bem!!!", "       Seja Bem vindo      ")
    Else
        MsgBox ( 0, "Acesso restrito", "Entrada não autorizada")
		Exit
    EndIf
EndFunc

;Opt('GUIOnEventMode', 1)
HotKeySet("{PGUP}", "SAIR")

global $var1 = 7, $var2 = 11, $var3 = 9, $nomemonstro, $nomeitem, $var4 = 1, $var5 = 1, $var9 = 1, $var8 = 1, $VarMonstros, $VarItens
Global $NomeSelecionado, $var10 = 1, $aArray1[1], $aArray2[6], $aArray3[18], $var11, $Sizearray1 = 1, $Sizearray2 = 1, $varConfigurado = 0
Global $Label5, $Label6, $Label7, $Button11 = 0, $ItemSelecionado, $nome, $var17 = 0, $ativar = 0, $CountJanelas = 0, $Intervalo
Global $tempo = 0, $varInput2 = 0, $varCombo1 = 0, $varInput3 = 0, $nomeAGRUPAR, $nomeFILTRAR, $varbutton5 = 0
Global $lercheck7=4, $lercheck8=4, $lercheck9=4, $lercheck10=4, $lercheck12=4
Global $arquivo = @ScriptDir & "\Pixels Durma Bem 6.0.ini"

#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Durma Bem 6.0", 277, 504, 787, 0)
$Button4 = GUICtrlCreateButton("Reset", 90, 440, 70, 25)
$Group1 = GUICtrlCreateGroup("Limpar e mandar p/ baú", 8, 4, 257, 250)
$Button1 = GUICtrlCreateButton("Add Região", 170, 72, 90, 23)
$Button9 = GUICtrlCreateButton("Add", 170, 105, 40, 23)
$Button10 = GUICtrlCreateButton("Browse", 215, 105, 45, 23)
;$Button2 = GUICtrlCreateButton("Filtrar", 16, 275, 100, 25)
;GUICtrlSetBkColor(-1, 0xF7A8A8)
;$Button3 = GUICtrlCreateButton("Filtrar", 16, 275, 100, 25)
;GUICtrlSetBkColor(-1, 0x60F065)
;GUICtrlSetState(-1, $GUI_HIDE)
;$Button4 = GUICtrlCreateButton("Reset", 144, 275, 100, 25)
$Label1 = GUICtrlCreateLabel("Nome da janela do WYD", 16, 18, 150, 17)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$Input1 = GUICtrlCreateInput("wyd", 16, 38, 90, 21)
$Input2 = GUICtrlCreateInput("", 110, 38, 30, 21)
$Input3 = GUICtrlCreateInput("", 18, 378, 30, 21)
$Labe8 = GUICtrlCreateLabel("(Minutos)", 53, 380, 54, 17)
$Combo1 = GUICtrlCreateCombo("Região de caça", 16, 72, 145, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
$Combo2 = GUICtrlCreateCombo("Itens indesejados", 16, 105, 145, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Label2 = GUICtrlCreateLabel("AGUARDE!!", 16, 204, 111, 17)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
GUICtrlSetColor(-1, 0xFF0000)
GUICtrlSetState(-1, $GUI_HIDE)
$Group2 = GUICtrlCreateGroup("Quantas abas considerar", 8, 255, 257, 96)
$Checkbox7 = GUICtrlCreateRadio("1", 20, 274, 25, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$Checkbox8 = GUICtrlCreateRadio("2", 60, 274, 25, 17)
$Checkbox9 = GUICtrlCreateRadio("3", 100, 274, 25, 17)
$Checkbox10 = GUICtrlCreateRadio("4", 140, 274, 25, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Button5 = GUICtrlCreateButton("Agrupar Avulso", 160, 302, 80, 25)
;GUICtrlSetColor(-1, 0xFF0000)
;$Button6 = GUICtrlCreateButton("Parar Ciclo", 187, 405, 75, 25)
;$Checkbox11 = GUICtrlCreateCheckbox("Ciclo Limpar", 90, 350, 81, 17)
$Checkbox12 = GUICtrlCreateCheckbox("Agrupar durante Ciclo", 20, 307, 120, 17)
$Group3 = GUICtrlCreateGroup("Intervalo Entre Ciclos", 8, 357, 257, 72)
;$Checkbox13 = GUICtrlCreateCheckbox("2 min", 15, 390, 50, 17)
;$Checkbox14 = GUICtrlCreateCheckbox("4 min", 75, 390, 50, 17)
;$Checkbox15 = GUICtrlCreateCheckbox("6 min", 135, 390, 50, 18)
;$Checkbox19 = GUICtrlCreateCheckbox("Turbo", 130, 394, 50, 18)
;$Checkbox16 = GUICtrlCreateCheckbox("10 min", 15, 410, 50, 17)
;$Checkbox17 = GUICtrlCreateCheckbox("15 min", 75, 410, 50, 17)
;$Checkbox18 = GUICtrlCreateCheckbox("20 min", 135, 410, 50, 18)
GUICtrlCreateGroup("", -99, -99, 1, 1)
;$Checkbox6 = GUICtrlCreateCheckbox("Mandar itens bons p/ o baú", 16, 248, 193, 17)
$Label4 = GUICtrlCreateLabel("ANALISANDO...", 90, 180, 100, 17)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
GUICtrlSetColor(-1, 0xFF0000)
GUICtrlSetState(-1, $GUI_HIDE)
$LabeL8 = GUICtrlCreateLabel("AGRUPANDO...", 90, 180, 100, 17)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
GUICtrlSetColor(-1, 0xFF0000)
GUICtrlSetState(-1, $GUI_HIDE)
$Button7 = GUICtrlCreateButton("Iniciar", 10, 440, 70, 25)
GUICtrlSetBkColor(-1, 0xF7A8A8)
$Button8 = GUICtrlCreateButton("Rodando...", 10, 440, 70, 25)
GUICtrlSetBkColor(-1, 0x60F065)
GUICtrlSetState(-1, $GUI_HIDE)
GUISetState(@SW_SHOW)
$Button11 = GUICtrlCreateButton("Posicionar", 16, 174, 65, 25)
GUICtrlSetState(-1, $GUI_HIDE)
$Button12 = GUICtrlCreateButton("Filtrar", 90, 174, 50, 25)
GUICtrlSetState(-1, $GUI_HIDE)
#EndRegion ### END Koda GUI section ###

$ArquivoMonstros = IniRead($arquivo, "secao1", "regiao1", "Ausente" )  ; O "Ausente" é a informação que retorna se nao houver arquivo INI ou se Não houver palavra armazenada na "secao1"
$var4 = IniRead($arquivo, "secao2", "var4", "Ausentevar4" )
$ArquivoItens = IniRead($arquivo, "secao3", "item1", "Ausente" )  ; O "Ausente" é a informação que retorna se nao houver arquivo INI ou se Não houver palavra armazenada na "secao1"
$var8 = IniRead($arquivo, "secao4", "var8", "Ausentevar8" )

while 1		;ROTINA QUE MOSTRA AS REGIÕES JÁ CADASTRADAS NO COMBO1
	$VarMonstros = IniRead($arquivo, "secao1", "regiao"&$var5, "vazia" )	; A string "vazia" será retornada caso a seção esteja vazia, indicando que ainda nao foi adicionado monstro nessa seção
	If $VarMonstros = "vazia" Then
		ExitLoop
	Else
		GUICtrlSetData($Combo1, $VarMonstros & "|")  	; o "|" serve para dar um "ENTER" no combo, assim a proxima informação estara na linha debaixo
		$var5 = $var5 + 1
	EndIf
WEnd

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		case $button1
			Addmonstro()
		case $Button4
			botao4()
		case $Button5
			$varbutton5 = 1
			ControleParaAgrupar()
		case $button7
			botao7()
		Case $Button9
			Additem()
		Case $Button10
			AbrirArquivo()
		Case $Button11
			Posicionar()
		Case $Button12
			Filtrar()
		Case $Combo1
			MonstroSelecionado()
		Case $Combo2
			ItemSelecionado()
		Case $GUI_EVENT_CLOSE
			Exit

	EndSwitch
	$lercheck12=GUICtrlRead($Checkbox12)
	$lercheck7=GUICtrlRead($Checkbox7)
	$lercheck8=GUICtrlRead($Checkbox8)
	$lercheck9=GUICtrlRead($Checkbox9)
	$lercheck10=GUICtrlRead($Checkbox10)
	$testeInput3=GUICtrlRead($Input3)
	$testeCombo1=GUICtrlRead($Combo1)
	$nomeVARIAVEL=GUICtrlRead($Input1)							;Armazena o nome da janela
	$quantJanelas=GUICtrlRead($Input2)
	$Intervalo=GUICtrlRead($Input3)						;Armazena o intervalo desejado

	If $ativar == 1 Then
	  RotinaGERAL()
	EndIf

	If $var17 == 1 Then
	  If TimerDiff($tempo) > $Intervalo * 60 * 1000 Then        ; Verifica o tempo transcorrido e reinicia-o ao chegar no tempo marcado na checkbox
		CicloIniciado()
		$var17 = 0
	  EndIf
   EndIf

	If $testeCombo1 == "Região de caça" And $varCombo1 == 0 Then	;Desabilita o botao de add item caso nenhuma regiao seja selecionada
		GUICtrlSetState($Button9, $GUI_DISABLE)
		ConsoleWrite($testeCombo1&@cr)
		;GUICtrlSetState($Button10, $GUI_DISABLE)
		$varCombo1 = 1
	Elseif $testeCombo1 <> "Região de caça" And $varCombo1 == 1 Then
		GUICtrlSetState($Button9, $GUI_ENABLE)
		;GUICtrlSetState($Button10, $GUI_ENABLE)
		$varCombo1 = 0
	EndIf

	If (($quantJanelas == "" or $quantJanelas < 1 or $quantJanelas > 8 or $quantJanelas == IsString) And ($testeInput3 == "" or $testeInput3 <> IsNumber)) And $varInput2 == 0 And $varInput3 == 0 Then	;Desabilita o autologin se nao tiver entre 1 e 4
		GUICtrlSetState($Button7, $GUI_DISABLE)
		$varInput2 = 1
		$varInput3 = 1
		ConsoleWrite("3x")
	Elseif ($testeInput3 > 0 or IsNumber($testeInput3)) And $quantJanelas <> "" And $quantJanelas >= 1 And $quantJanelas <= 8 And $quantJanelas <> IsString And $varInput2 == 1 And $varInput3 == 1 Then
		GUICtrlSetState($Button7, $GUI_ENABLE)
		$varInput2 = 0
		$varInput3 = 0
		ConsoleWrite("3y")
	EndIf

WEnd

Func botao7(); botao de iniciar
	;If $lercheck1 == 1 And $lercheck15 == 1 Then
		GUICtrlSetState($Button7, $GUI_HIDE)
		GUICtrlSetState($Button8, $GUI_SHOW)
		CicloIniciado()
	EndFunc

Func CicloIniciado()
	FuncaoJANELA()
	IniciarTimer()
	$ativar = 1
EndFunc

Func IniciarTimer()																	;Função de Timer
   $tempo=TimerInit()
EndFunc

Func FuncaoJANELA()
	If $quantJanelas <> "" and $quantJanelas >= 1 and $quantJanelas <=8  Then		; Se tiver numeração de janelas (que se usa pro autologin)
		$CountJanelas = $CountJanelas + 1
		$nome = $nomeVARIAVEL & $CountJanelas
	Else
		$nome = $nomeVARIAVEL
	EndIf
EndFunc

Func Botao4()													; BOTAO DE RESET
	$var17 = 0
	$CountJanelas = 0
	GUICtrlSetState($Button7, $GUI_SHOW)
    GUICtrlSetState($Button8, $GUI_HIDE)
EndFunc

Func RotinaGeral()
	WinSetState($nome, "", @SW_RESTORE)
	WinActivate($nome)
	ConsoleWrite("Entrou Rotina Geral"&@CR)
	;--------------------
	Sleep(200)
	ControlSend($nome, "", "", "{i}")
	Sleep(200)
	If $lercheck7 == 1 And $lercheck8 == 4 And $lercheck9 == 4 And $lercheck10 == 4 Then
	  sleep(300)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 547-3, 428-25);  ABA INVENTARIO 1
	  MouseClick("left", 546, 428, 1,1)
	  MouseClick("left", 546, 428, 1,1)
	  MouseClick("left", 546, 428, 1,1)
	  sleep(200)
	  CapturaComparou()
   EndIf
   If $lercheck8 == 1 And $lercheck9 == 4 And $lercheck10 == 4 Then
	  sleep(500)
	 ; ControlClick($nomeAGRUPAR, "", "", "left", 1, 547-3, 428-25);  ABA INVENTARIO 1
	  MouseClick("left", 546, 428, 1,1)
	  MouseClick("left", 546, 428, 1,1)
	  MouseClick("left", 546, 428, 1,1)
	  sleep(200)
	  CapturaComparou()
	  sleep(200)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 587 -3, 428 -25) ; ABA INVENTARIO 2
	  MouseClick("left", 587, 428, 1,1)
	  MouseClick("left", 587, 428, 1,1)
	  MouseClick("left", 587, 428, 1,1)
	  sleep(200)
	  CapturaComparou()
	  sleep(200)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 547-3, 428-25);   VOLTA PARA A ABA INVENTARIO 1
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
   EndIf
   If $lercheck9 == 1 And $lercheck10 == 4 Then
	  sleep(500)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 547-3, 428-25);  ABA INVENTARIO 1
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
	  sleep(200)
	  CapturaComparou()
	  sleep(200)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 587 -3, 428 -25) ; ABA INVENTARIO 2
	  MouseClick("left", 587, 428, 1,1)
	  MouseClick("left", 587, 428, 1,1)
	  MouseClick("left", 587, 428, 1,1)
	  sleep(200)
	  CapturaComparou()
	  sleep(200)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 630 -3, 428 -25)  ;ABA INVENTARIO 3
	  MouseClick("left", 630, 428, 1,1)
	  MouseClick("left", 630, 428, 1,1)
	  MouseClick("left", 630, 428, 1,1)
	  sleep(200)
	  CapturaComparou()
	  sleep(200)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 547-3, 428-25);   VOLTA PARA A ABA INVENTARIO 1
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
   EndIf
   If $lercheck10 == 1 Then
	  sleep(500)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 547-3, 428-25);  ABA INVENTARIO 1
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
	  sleep(200)
	  CapturaComparou()
	  sleep(200)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 587 -3, 428 -25)  ; ABA INVENTARIO 2
	  MouseClick("left", 587, 428, 1,1)
	  MouseClick("left", 587, 428, 1,1)
	  MouseClick("left", 587, 428, 1,1)
	  sleep(200)
	  CapturaComparou()
	  sleep(200)
	 ; ControlClick($nomeAGRUPAR, "", "", "left", 1, 630 -3, 428 -25)   ;ABA INVENTARIO 3
	  MouseClick("left", 630, 428, 1,1)
	  MouseClick("left", 630, 428, 1,1)
	  MouseClick("left", 630, 428, 1,1)
	  sleep(200)
	  CapturaComparou()
	  sleep(200)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 669 -3, 428 -25)  ;ABA INVENTARIO 4
	  MouseClick("left", 669, 428, 1,1)
	  MouseClick("left", 669, 428, 1,1)
	  MouseClick("left", 669, 428, 1,1)
	  sleep(200)
	  CapturaComparou()
	  sleep(200)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 547-3, 428-25);   VOLTA PARA A ABA INVENTARIO 1
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
	EndIf

	If $lercheck12 == 1 Then			; SE A CHECKBOX DE AGRUPAR DURANTE O CICLO TIVER MARCADA
	  ControleParaAgrupar()
	  sleep(500)
	EndIf

	;--------------------
	$ativar = 0
	$var17 = 1
	If $CountJanelas == $quantJanelas Then
			$CountJanelas = 0
	EndIf
	ControlSend($nome, "", "", "{i}")
	WinSetState($nome, "", @SW_MINIMIZE)
	IniciarTimer()
	Sleep(100)
EndFunc

Func MonstroSelecionado()
	$NomeSelecionado=GUICtrlRead($Combo1)
	$var12 = 1
	$var13 = 0
	$var11 = 1
	$var8 = 0
	$Sizearray2 = 1
	GUICtrlDelete($Label5)
	GUICtrlDelete($Label6)
	GUICtrlDelete($Label7)
	GUICtrlDelete($Button11)
	GUICtrlDelete($Button12)
	GUICtrlSetData($Combo2, "","Itens indesejados")
	;_ArrayDisplay($aArray1)
		If $aArray1[0] <> "" Then; redefine o array para ser usado novamente
			Global $aArray1[0]; ou Global $aArray1 = 0
			Global $aArray1[1]
			ConsoleWrite("Limpou o array "&@CR)
		EndIf
	while 1
		If $var11 = "vazia" Then; quando ele termina de preencher o array, ele sai do loop e mostra o tamanho do array
			ExitLoop
		EndIf
		$var11 = IniRead($arquivo, "secao"&$NomeSelecionado, "item"&$var12, "vazia" ); verifica se o monstro ja existe
		ConsoleWrite("Sizearray2 = "&$Sizearray2&@CR)
		If $var11 <> "vazia" Then; se já existe, entra aqui e pega o tamanho do array do monstro, para ser usado com a $var8
			ReDim $aArray1[UBound($aArray1) + 1]	;adiciona +1 slot no array
			$aArray1[$var13] = $var11				;salva um valor num slot do array
			$Sizearray1 = UBound($aArray1)			;salva na variavel o tamanho do array
			$Sizearray2 = UBound($aArray1)			;salva na variavel o tamanho do array
			ConsoleWrite("Colocou no size2 o valor de size1"&@CR)
			ConsoleWrite("Sizearray1 = "&$Sizearray1&@CR)
			ConsoleWrite("Sizearray2 = "&$Sizearray2&@CR)
		EndIf
		$var12 = $var12 + 1
		$var13 = $var13 + 1
		;_ArrayDisplay($aArray1)
	WEnd
	If $aArray1[0] <> "" Then
		If $aArray1[$Sizearray1-1] = "" Then; verifica se o final do array esta vazio, se estiver, deleta a linha
			_ArrayDelete($aArray1, $Sizearray1 - 1)
		Else
		$Sizearray2 = $Sizearray2 + 1; é preciso por esta rotina, pois senao, ao trocar de monstro, o array no tem linha vazia, e o sizearray1 fica com mesmo valor que o sizearray2, e isso nao pode.
		EndIf
	EndIf
	;QUANDO ELE NAO ENTRA NO IF ACIMA, ELE NAO APAGA A LINHA E CONSEQUENTEMENTE, O SIZEARRAY2 MANTEM O MESMO VALOR QUE O SIZE ARRAY1.
	;_ArrayDisplay($aArray1)
	$Sizearray1 = UBound($aArray1); AQUI, ELE POE NUMA VARIAVEL, EM NUMEROS, O TAMANHO DA SEÇÃO SELECIONADA
	If $Sizearray1 == 0 Then
		ConsoleWrite("Entrou na rotina que iguala o valor de size2 com size1"&@CR)
		$Sizearray1 = 1
		$Sizearray2 = $Sizearray1
		ConsoleWrite("Sizearray2 = "&$Sizearray2&@CR)
	EndIf

	ConsoleWrite("Sizearray1 = "&$Sizearray1&@CR)

	For $var6 = 1 To $var4 - 1 Step 1	; faz o FOR limitado a quantidade de monstros que ja foram cadastrados (controlado pela variavel $var4)
		$var7 = IniRead($arquivo, "secao1", "regiao"&$var6, "vazia" )
		If $NomeSelecionado = $var7 Then
			ConsoleWrite("achou regiao " & $NomeSelecionado & @CR)
			ConsoleWrite("Sizearray2 = "&$Sizearray2&@CR)
			;é aqui que vou associar o clique no combo com a chamada para os itens cadastrados por monstro
				$Sizearray1 = UBound($aArray1)
				For $var10 = 1 To $Sizearray1 Step 1	; faz o FOR limitado a quantidade de itens que ja foram cadastrados (controlado pela variavel $Sizearray1)
					$VarItens = IniRead($arquivo, "secao"&$NomeSelecionado, "item"&$var10, "vazia" )	; A string "vazia" será retornada caso a seção esteja vazia, indicando que ainda nao foi adicionado item nessa seção
					If $VarItens = "vazia" Then
						GUICtrlSetData($Combo2, "","Itens cadastrados")  	; zera o combo visualmente
						ExitLoop
					Else
						GUICtrlSetData($Combo2, $VarItens & "|")  	; o "|" serve para dar um "ENTER" no combo, assim a proxima informação estara na linha debaixo
					EndIf
				Next
		EndIf
	Next
	ConsoleWrite("Sizearray2 = "&$Sizearray2&@CR)
EndFunc
;#cs
Func Addmonstro()
	;ConsoleWrite("oi")
		#Region ### START Koda GUI section ### Form=
		$Form2 = GUICreate("Configurar Região", 278, 80, 340, 331)
		$Input1B = GUICtrlCreateInput("", 8, 34, 121, 21)
		$ButtonB1 = GUICtrlCreateButton("OK", 144, 32, 51, 25)
		$ButtonB2= GUICtrlCreateButton("Cancelar", 208, 32, 51, 25)
		$Label1B = GUICtrlCreateLabel("Insira um nome:", 10, 9, 116, 17)
		GUISetState(@SW_SHOW)
		#EndRegion ### END Koda GUI section ###

		While 1
			$nMsg = GUIGetMsg()
			Switch $nMsg
				Case $ButtonB1
					lernomemonstro()
					GUIDelete()
					ExitLoop
				Case $ButtonB2
					GUIDelete()
					exitloop
				Case $GUI_EVENT_CLOSE
					GUIDelete()
					exitloop
			EndSwitch
			$nomemonstro=GUICtrlRead($Input1B)
		WEnd

EndFunc
;#ce
Func lernomemonstro()
	If $ArquivoMonstros = "Ausente" and $var4 = "Ausentevar4" Then			; se nao houver dados de nome de monstro (primeiro acesso)
		$var4 = 1
		IniWrite($arquivo, "secao1", "regiao"&$var4, $nomemonstro)
		$VarMonstros = IniRead($arquivo, "secao1", "regiao"&$var4, "" )
		$var4 = $var4 + 1
		SetDataMonstro()
		IniWrite($arquivo, "secao2", "var4", $var4)
		;ConsoleWrite($var4)
	Else
		$var4 = IniRead($arquivo, "secao2", "var4", "" )
		;ConsoleWrite($var4)
		IniWrite($arquivo, "secao1", "regiao"&$var4, $nomemonstro)
		$VarMonstros = IniRead($arquivo, "secao1", "regiao"&$var4, "" )
		$var4 = $var4 + 1
		SetDataMonstro()
		IniWrite($arquivo, "secao2", "var4", $var4)
		;ConsoleWrite($var4)
	EndIf
EndFunc

Func SetDataMonstro()
	GUICtrlSetData($Combo1, $VarMonstros & "|")  	; o "|" serve para dar um "ENTER" no combo, assim a proxima informação estara na linha debaixo
EndFunc

Func ItemSelecionado()
	GUICtrlDelete($Label5)
	GUICtrlDelete($Label6)
	GUICtrlDelete($Label7)
	GUICtrlDelete($Button11)
	GUICtrlDelete($Button12)
	$ItemSelecionado=GUICtrlRead($Combo2)
	$varConfigurado = IniRead($arquivo, "secao de configuração: "&$ItemSelecionado, "valor", "Não configurado")
	If $varConfigurado = "Não configurado" Then
		$Label5 = GUICtrlCreateLabel("Item não configurado!", 16, 138, 145, 25)
		GUICtrlSetColor(-1, 0xFF0000)
		$Label7 = GUICtrlCreateLabel("Abra o inventário e clique em posicionar", 16, 155, 195, 20)
		$Button11 = GUICtrlCreateButton("Posicionar", 16, 174, 65, 25)
		GUICtrlSetState($Button11, $GUI_SHOW)
		$Button12 = GUICtrlCreateButton("Filtrar", 90, 174, 50, 25)
		GUICtrlSetState($Button12, $GUI_SHOW)
	Else
		$Label6 = GUICtrlCreateLabel("Item configurado!", 16, 138, 145, 25)
		GUICtrlSetColor(-1, 0x00CC00)
	EndIf

EndFunc
;#cs
Func Additem()
	#Region ### START Koda GUI section ### Form=
		$Form3 = GUICreate("Configurar Itens", 278, 80, 340, 331)
		$Input1C = GUICtrlCreateInput("", 8, 34, 121, 21)
		$ButtonC1 = GUICtrlCreateButton("OK", 144, 32, 51, 25)
		$ButtonC2 = GUICtrlCreateButton("Cancelar", 208, 32, 51, 25)
		$Label1C = GUICtrlCreateLabel("Insira o nome do item", 10, 9, 116, 17)
		GUISetState(@SW_SHOW)
		#EndRegion ### END Koda GUI section ###

		While 1
			$nMsg = GUIGetMsg()
			Switch $nMsg
				Case $ButtonC1
					lernomeitem()
					GUIDelete()
					ExitLoop
				Case $ButtonC2
					GUIDelete()
					exitloop
				Case $GUI_EVENT_CLOSE
					GUIDelete()
					exitloop
			EndSwitch
			$nomeitem=GUICtrlRead($Input1C)
		WEnd

EndFunc
;#ce
Func lernomeitem()
	ConsoleWrite("Sizearray2 = "&$Sizearray2&@CR)
	ConsoleWrite("Var8 = "&$var8&@CR)
		$var8 = $Sizearray2
	ConsoleWrite("Var8 = "&$var8&@CR)
		IniWrite($arquivo, "secao"&$NomeSelecionado, "item"&$var8, $nomeitem)
		$VarItens = IniRead($arquivo, "secao"&$NomeSelecionado, "item"&$var8, "" )
		$var8 = $var8 + 1
		$Sizearray2 = $var8
	ConsoleWrite("Sizearray2 = "&$Sizearray2&@CR)
	ConsoleWrite("-----------"&@CR)
		SetDataItem()
EndFunc

Func SetDataItem()
	GUICtrlSetData($Combo2, $VarItens & "|")  	; o "|" serve para dar um "ENTER" no combo, assim a proxima informação estara na linha debaixo
EndFunc

Func Filtrar()
	$nomeX=GUICtrlRead($Input1)
    $nomeY=GUICtrlRead($Input2)
    $nomeFILTRAR = $nomeX & $nomeY
	WinSetState($nomeFILTRAR, "", @SW_RESTORE)
	WinActivate($nomeFILTRAR)
	GUICtrlSetState($Label2, $GUI_SHOW)
	ToolTip("")
	$z = 41
	$v = 1
	$t = 0
	For $k = 0 To 82 Step 41
		For $j = 0 To 3 Step 3
			For $i = 0 To 6 Step 3
				$pixelsalvar = PixelGetColor(540 + $i, 297 + $j + $k)
				;MouseMove(540 + $i, 297 + $j + $k,0)
				IniWrite($arquivo, "secao: "&$ItemSelecionado, "pixel"&$v, $pixelsalvar)
				sleep(100)
				$v = $v + 1
			Next
			sleep(150)
		Next
		If $t < 82 Then; pega o item e poe no slot debaixo
			   ControlClick($nomeFILTRAR, "", "", "left", 1, 546-3, 299-25 + $t)
			   ;MouseMove(540 , 297 + $t,5)
			   sleep(400)
			   ControlClick($nomeFILTRAR, "", "", "left", 1, 546-3, 299-25 + $z)
			   ;MouseMove(540 , 297 + $z,5)
			   $z = $z + 41
			   $t = $t + 41
			   sleep(2500)
			EndIf
	Next
	IniWrite($arquivo, "secao de configuração: "&$ItemSelecionado, "valor", "configurado!")
	GUICtrlDelete($Label5)
	GUICtrlDelete($Label6)
	GUICtrlDelete($Label7)
	GUICtrlDelete($Button11)
	GUICtrlDelete($Button12)
	$Label6 = GUICtrlCreateLabel("Item configurado!", 16, 138, 145, 25)
	GUICtrlSetColor(-1, 0x00CC00)
	GUICtrlSetState($Label2, $GUI_HIDE)
EndFunc
#cs
Func VelhaCapturaComparou()                                                                 ;FUNCAO QUE COMPARA E DECIDE SE VAI APAGAR OU SALVAR
	GUICtrlSetState($Label4, $GUI_SHOW)
	$NomeSelecionado2=GUICtrlRead($Combo1)
	$s = 1
	while 1
		$var16 = IniRead($arquivo, "secao"&$NomeSelecionado2, "item"&$s, "vazio"); aqui ele pega o nome do item
		ConsoleWrite("var16 = "&$var16&@CR)
		If $var16 = "vazio" Then
			ConsoleWrite("saiu do LOOP"&@CR)
			ExitLoop
		EndIf
		;18 pixels previamente cadastrados
		For $i = 1 to 18 step 1
		$Var14 = IniRead($arquivo, "secao: "&$var16, "pixel"&$i, "sempixel")
		$aArray3[$i-1] = $Var14
		Next
		;_ArrayDisplay($aArray3,"pixels ja salvos - Array3")
		;------------------------------------------------
		;Salva no arquivo os pixels a serem comparados
		$z = 41
		$t = 0
		For $y = 0 To 82 Step 41
			For $x = 0 To 164 Step 41
				Global $aArray2[6]
				$v = 1
				For $j = 0 To 3 Step 3
					For $i = 0 To 6 Step 3
						$pixelsalvar = PixelGetColor(540 + $i + $x, 297 + $j + $y)
						;MouseMove(540 + $i + $x, 297 + $j + $y,0)
						IniWrite($arquivo, "secao: Comparativa", "pixel"&$v, $pixelsalvar)
						sleep(50)
						$v = $v + 1
					Next
					sleep(50)
				Next

				;------------------------------------------------
				;pega do arquivo e põe num array18 pixels a serem comparados
				For $i = 1 to 6 step 1
				$Var15 = IniRead($arquivo, "secao: Comparativa", "pixel"&$i, "sempixel")
				$aArray2[$i-1] = $Var15
				Next
				;_ArrayDisplay($aArray2,"Pixels a comparar - Array2")
				;------------------------------------------------

				;COMPARAÇÃO

				; se todos os pixels forem iguais: BATEU!! ITEM DEVE SER APAGADO!!
				If ($aArray2[0] == $aArray3[0] And $aArray2[1] == $aArray3[1] And $aArray2[2] == $aArray3[2] And $aArray2[3] == $aArray3[3] And $aArray2[4] == $aArray3[4] And $aArray2[5] == $aArray3[5]) Or ($aArray2[0] == $aArray3[6] And $aArray2[1] == $aArray3[7] And $aArray2[2] == $aArray3[8] And $aArray2[3] == $aArray3[9] And $aArray2[4] == $aArray3[10] And $aArray2[5] == $aArray3[11]) Or ($aArray2[0] == $aArray3[12] And $aArray2[1] == $aArray3[13] And $aArray2[2] == $aArray3[14] And $aArray2[3] == $aArray3[15] And $aArray2[4] == $aArray3[16] And $aArray2[5] == $aArray3[17]) Then
					ConsoleWrite("entrou pra apagar"&@CR)
					sleep(100)
					ControlClick($nome, "", "", "left", 1, 540 + $x -3, 297 + $y -25)
					;MouseMove(540 + $x , 297 + $y ,0)
					sleep(100)
					ControlClick($nome, "", "", "left", 1, 714-3, 428-25)
					;MouseMove(714, 428 ,0)
					sleep(100)
					ControlSend($nome, "", "", "{ENTER}")
					sleep(100)
				Else
					ConsoleWrite("nao bateu, nao apagou!"&@CR)
				EndIf
			Next
		Next
		$s = $s + 1
	WEnd
	GUICtrlSetState($Label4, $GUI_HIDE)
EndFunc
#ce
Func CapturaComparou()                                                                 ;FUNCAO QUE COMPARA E DECIDE SE VAI APAGAR OU SALVAR
	GUICtrlSetState($Label4, $GUI_SHOW)
	$NomeSelecionado2=GUICtrlRead($Combo1)

		$z = 41
		$t = 0
		For $y = 0 To 82 Step 41
			For $x = 0 To 164 Step 41
				$s = 1
				while 1
					$var16 = IniRead($arquivo, "secao"&$NomeSelecionado2, "item"&$s, "vazio")	; aqui ele pega o nome do item
					ConsoleWrite("var16 = "&$var16&@CR)
					If $var16 = "vazio" Then
						ConsoleWrite("saiu do LOOP"&@CR)
						ExitLoop
					EndIf
					;18 pixels previamente cadastrados
					For $i = 1 to 18 step 1
					$Var14 = IniRead($arquivo, "secao: "&$var16, "pixel"&$i, "sempixel")
					$aArray3[$i-1] = $Var14
					Next
					;_ArrayDisplay($aArray3,"pixels ja salvos - Array3")

					;------------------------------------------------

					Global $aArray2[6]
					$v = 1
					For $j = 0 To 3 Step 3
						For $i = 0 To 6 Step 3
							$pixelsalvar = PixelGetColor(540 + $i + $x, 297 + $j + $y)
							;MouseMove(540 + $i + $x, 297 + $j + $y,0)
							IniWrite($arquivo, "secao: Comparativa", "pixel"&$v, $pixelsalvar);		Salva no arquivo os pixels a serem comparados
							sleep(25)
							$v = $v + 1
						Next
						sleep(25)
					Next

					;pega do arquivo e põe num array 6 pixels a serem comparados
					For $i = 1 to 6 step 1
					$Var15 = IniRead($arquivo, "secao: Comparativa", "pixel"&$i, "sempixel")
					$aArray2[$i-1] = $Var15
					Next
					;_ArrayDisplay($aArray2,"Pixels a comparar - Array2")

					;------------------------------------------------

					;COMPARAÇÃO

					; se todos os pixels forem iguais: BATEU!! ITEM DEVE SER APAGADO!!
					If ($aArray2[0] == $aArray3[0] And $aArray2[1] == $aArray3[1] And $aArray2[2] == $aArray3[2] And $aArray2[3] == $aArray3[3] And $aArray2[4] == $aArray3[4] And $aArray2[5] == $aArray3[5]) Or ($aArray2[0] == $aArray3[6] And $aArray2[1] == $aArray3[7] And $aArray2[2] == $aArray3[8] And $aArray2[3] == $aArray3[9] And $aArray2[4] == $aArray3[10] And $aArray2[5] == $aArray3[11]) Or ($aArray2[0] == $aArray3[12] And $aArray2[1] == $aArray3[13] And $aArray2[2] == $aArray3[14] And $aArray2[3] == $aArray3[15] And $aArray2[4] == $aArray3[16] And $aArray2[5] == $aArray3[17]) Then
						ConsoleWrite("entrou pra apagar"&@CR)
						sleep(50)
						ControlClick($nome, "", "", "left", 1, 540 + $x -3, 297 + $y -25)
						;MouseMove(540 + $x , 297 + $y ,0)
						sleep(100)
						ControlClick($nome, "", "", "left", 1, 714-3, 428-25)
						;MouseMove(714, 428 ,0)
						sleep(100)
						ControlSend($nome, "", "", "{ENTER}")
						sleep(50)
					Else
						ConsoleWrite("nao bateu, nao apagou!"&@CR)
					EndIf
					$s = $s + 1
				WEnd
			Next
		Next
	GUICtrlSetState($Label4, $GUI_HIDE)
EndFunc

Func Posicionar()                                                         ;FUNÇÃO PARA INDICAR O POSICIONAMENTO CORRETO
   $nomeX=GUICtrlRead($Input1)
   $nomeY=GUICtrlRead($Input2)
   $nomeFILTRAR = $nomeX & $nomeY
	WinSetState($nomeFILTRAR, "", @SW_RESTORE)
	WinActivate($nomeFILTRAR)
	ToolTip(" >> Posicione aqui << ", 532, 240)
	sleep(2000)
	ToolTip("Item", 527, 260)
EndFunc

Func ControleParaAgrupar()                                               ;FUNCÃO DE CONTROLE QUE VAI CHAMAR A FUNCAO DE AGRUPAR
   $lercheck7=GUICtrlRead($Checkbox7)
   $lercheck8=GUICtrlRead($Checkbox8)
   $lercheck9=GUICtrlRead($Checkbox9)
   $lercheck10=GUICtrlRead($Checkbox10)
   GUICtrlSetState($Label8, $GUI_SHOW)
   If $varbutton5 == 1 Then
	   $nomeX=GUICtrlRead($Input1)
	   $nomeY=GUICtrlRead($Input2)
	   $nomeAGRUPAR = $nomeX & $nomeY
		WinSetState($nomeAGRUPAR, "", @SW_RESTORE)
		WinActivate($nomeAGRUPAR)
   Else
		WinSetState($nome, "", @SW_RESTORE)
		WinActivate($nome)
   EndIf
   $varbutton5 = 0
   If $lercheck7 == 1 And $lercheck8 == 4 And $lercheck9 == 4 And $lercheck10 == 4 Then
	  sleep(500)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 547-3, 428-25);  ABA INVENTARIO 1
	  MouseClick("left", 546, 428, 1,1)
	  MouseClick("left", 546, 428, 1,1)
	  MouseClick("left", 546, 428, 1,1)
	  sleep(100)
	  Agrupar()
   EndIf
   If $lercheck8 == 1 And $lercheck9 == 4 And $lercheck10 == 4 Then
	  sleep(100)
	 ; ControlClick($nomeAGRUPAR, "", "", "left", 1, 547-3, 428-25);  ABA INVENTARIO 1
	  MouseClick("left", 546, 428, 1,1)
	  MouseClick("left", 546, 428, 1,1)
	  MouseClick("left", 546, 428, 1,1)
	  sleep(100)
	  Agrupar()
	  sleep(100)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 587 -3, 428 -25) ; ABA INVENTARIO 2
	  MouseClick("left", 587, 428, 1,1)
	  MouseClick("left", 587, 428, 1,1)
	  MouseClick("left", 587, 428, 1,1)
	  sleep(100)
	  Agrupar()
	  sleep(100)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 547-3, 428-25);   VOLTA PARA A ABA INVENTARIO 1
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
   EndIf
   If $lercheck9 == 1 And $lercheck10 == 4 Then
	  sleep(100)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 547-3, 428-25);  ABA INVENTARIO 1
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
	  sleep(100)
	  Agrupar()
	  sleep(100)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 587 -3, 428 -25) ; ABA INVENTARIO 2
	  MouseClick("left", 587, 428, 1,1)
	  MouseClick("left", 587, 428, 1,1)
	  MouseClick("left", 587, 428, 1,1)
	  sleep(100)
	  Agrupar()
	  sleep(100)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 630 -3, 428 -25)  ;ABA INVENTARIO 3
	  MouseClick("left", 630, 428, 1,1)
	  MouseClick("left", 630, 428, 1,1)
	  MouseClick("left", 630, 428, 1,1)
	  sleep(100)
	  Agrupar()
	  sleep(100)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 547-3, 428-25);   VOLTA PARA A ABA INVENTARIO 1
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
   EndIf
   If $lercheck10 == 1 Then
	  sleep(100)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 547-3, 428-25);  ABA INVENTARIO 1
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
	  sleep(100)
	  Agrupar()
	  sleep(100)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 587 -3, 428 -25)  ; ABA INVENTARIO 2
	  MouseClick("left", 587, 428, 1,1)
	  MouseClick("left", 587, 428, 1,1)
	  MouseClick("left", 587, 428, 1,1)
	  sleep(100)
	  Agrupar()
	  sleep(100)
	 ; ControlClick($nomeAGRUPAR, "", "", "left", 1, 630 -3, 428 -25)   ;ABA INVENTARIO 3
	  MouseClick("left", 630, 428, 1,1)
	  MouseClick("left", 630, 428, 1,1)
	  MouseClick("left", 630, 428, 1,1)
	  sleep(100)
	  Agrupar()
	  sleep(100)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 669 -3, 428 -25)  ;ABA INVENTARIO 4
	  MouseClick("left", 669, 428, 1,1)
	  MouseClick("left", 669, 428, 1,1)
	  MouseClick("left", 669, 428, 1,1)
	  sleep(100)
	  Agrupar()
	  sleep(100)
	  ;ControlClick($nomeAGRUPAR, "", "", "left", 1, 547-3, 428-25);   VOLTA PARA A ABA INVENTARIO 1
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
	  MouseClick("left", 547, 428, 1,1)
   EndIf
   GUICtrlSetState($Label8, $GUI_HIDE)
EndFunc

Func Agrupar()                                                                        ; ROTINA PARA AGRUPAR POEIRAS
   For $i = 0 To 82 Step 41
	  For $j = 0 To 164 Step 41
		 ControlClick($nomeAGRUPAR, "", "", "left", 1, 546 + $j -3, 299 + $i -25)
		 ;MouseMove(546 + $j, 299 + $i ,0)
		 sleep(60)
	  Next
   Next
   For $i = 0 To 164 Step 41
	  For $j = 0 To 82 Step 41
		 ControlClick($nomeAGRUPAR, "", "", "left", 1, 546 + $i -3, 299 + $j -25)
		 ;MouseMove(546 + $i, 299 + $j ,0)
		 sleep(60)
	  Next
   Next
   For $i = 0 To 82 Step 41
	  For $j = 0 To 164 Step 41
		 ControlClick($nomeAGRUPAR, "", "", "left", 1, 546 + $j -3, 299 + $i -25)
		 ;MouseMove(546 + $j, 299 + $i ,0)
		 sleep(60)
	  Next
   Next
   For $i = 0 To 164 Step 41
	  For $j = 0 To 82 Step 41
		 ControlClick($nomeAGRUPAR, "", "", "left", 1, 546 + $i -3, 299 + $j -25)
		 ;MouseMove(546 + $i, 299 + $j ,0)
		 sleep(60)
	  Next
   Next
EndFunc

Func AbrirArquivo()
	ConsoleWrite("oi")
	;Run ( "\Pixels Durma Bem 6.0.ini" & $arquivo,@ScriptDir,@SW_MAXIMIZE )
	;Run('notepad.exe ' & @ScriptFullPath & '')
	Run('notepad.exe ' & @ScriptDir & "\Pixels Durma Bem 6.0.ini")
EndFunc

Func SAIR()
   Exit
EndFunc