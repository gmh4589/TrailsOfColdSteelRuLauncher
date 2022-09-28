
#pragma compile(Icon, launcher_image\icon.ico)
#pragma compile(x64, false)
#pragma compile(Out, Sen1Launcher.exe)

#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <GUIConstantsEx.au3>
#include <SliderConstants.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <UpdownConstants.au3>
#include <GDIPlus.au3>
#include <WinAPI.au3>
#include <Array.au3>
#include <File.au3>

$hGUI = GUICreate("Trails of Cold Steel 1 Настройка", 800, 600, 181, 118)

Global $iMouseMove = -1, $iSettingList, $iKeyBind
GLobal $iPath = StringReplace(@AppDataDir, 'Roaming', 'Local') & "\TrailsOfColdSteel1\settings.xml"

If Not FileExists($iPath) or FileGetSize($iPath) = 0 Then CreateSetting()

Func CreateSetting()
	;MsgBox(0, '', '!')
	FileOpen($iPath, 10)
	FileWriteLine($iPath, '<?xml version="1.0" encoding="utf-8"?>')
	FileWriteLine($iPath, '<Settings>')
	FileWriteLine($iPath, '	<ScreenMode>WINDOWED</ScreenMode>')
	FileWriteLine($iPath, '	<VSync>True</VSync>')
	FileWriteLine($iPath, '	<Framerate>30</Framerate>')
	FileWriteLine($iPath, '	<FOV>45</FOV>')
	FileWriteLine($iPath, '	<Resolution Width="1920" Height="1080" />')
	FileWriteLine($iPath, '	<MSAA>1</MSAA>')
	FileWriteLine($iPath, '	<TSSAA>False</TSSAA>')
	FileWriteLine($iPath, '	<AF>True</AF>')
	FileWriteLine($iPath, '	<Shadows>Medium</Shadows>')
	FileWriteLine($iPath, '	<ShadowDistance>Default</ShadowDistance>')
	FileWriteLine($iPath, '	<ShadowCasters>Default</ShadowCasters>')
	FileWriteLine($iPath, '	<SoftShadows>False</SoftShadows>')
	FileWriteLine($iPath, '	<HBAOPlus>False</HBAOPlus>')
	FileWriteLine($iPath, '	<DisableLOD>False</DisableLOD>')
	FileWriteLine($iPath, '	<HighQualityDOF>False</HighQualityDOF>')
	FileWriteLine($iPath, '	<HighResFont>False</HighResFont>')
	FileWriteLine($iPath, '	<ButtonPrompts>Xbox</ButtonPrompts>')
	FileWriteLine($iPath, '	<DisableCamAutoCenter>False</DisableCamAutoCenter>')
	FileWriteLine($iPath, '	<Language>English</Language>')
	FileWriteLine($iPath, '	<VoiceLanguage>English</VoiceLanguage>')
	FileWriteLine($iPath, '	<SkipIntro>False</SkipIntro>')
	FileWriteLine($iPath, '	<SkipLogos>False</SkipLogos>')
	FileWriteLine($iPath, '	<SkipAll>False</SkipAll>')
	FileWriteLine($iPath, '	<ShowLauncher>False</ShowLauncher>')
	FileWriteLine($iPath, '	<AutosaveInterval>300</AutosaveInterval>')
	FileWriteLine($iPath, '	<TurboMode>True</TurboMode>')
	FileWriteLine($iPath, '	<TurboFactorBattle>4</TurboFactorBattle>')
	FileWriteLine($iPath, '	<TurboFactorField>2</TurboFactorField>')
	FileWriteLine($iPath, '</Settings>')
	FileClose($iPath)
EndFunc

_FileReadToArray($iPath, $iSettingList)

_GDIPlus_Startup()

$hImage = _GDIPLUS_ImageResize(_GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_0.png"), 300, 520)
$hImage1 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_1.png")
$hImage2 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_2.png")
$hImage2 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_2.png")
$hImage3 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_3.png")
$hImage4 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_4.png")
$hImage5 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_5.png")
$hImage6 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_6.png")
$hImage7 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_7.png")
$hImage8 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_8.png")
$hImage9 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_9.png")
$hImage10 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_10.png")
$hImage11 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_11.png")
$hImage12 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_12.png")
$hImage13 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_13.png")
$hImage14 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_14.png")
$hImage15 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_15.png")
$hImage16 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_16.png")
$hImage17 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_17.png")
$hImage18 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_18.png")
$hImage19 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_19.png")
$hImage20 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_20.png")
$hImage21 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_21.png")
$hImage22 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_22.png")
$hImage23 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_23.png")
$hImage24 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_24.png")
$hImage25 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_25.png")
$hImage26 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_26.png")
$hImage27 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_27.png")
$hImage28 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_28.png")
$hImage29 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_29.png")
$hImage30 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_30.png")
$hImage31 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_31.png")
$hImage32 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_32.png")
$hImage33 = _GDIPlus_ImageLoadFromFile(@ScriptDir & "\launcher_image\image_33.png")

$hGraphic = _GDIPlus_GraphicsCreateFromHWND($hGUI)

$WinMode = StringSplit($iSettingList[_ArraySearch($iSettingList, "ScreenMode", 0, 0, 0, 1)], '<>')[3]
$VSync = StringSplit($iSettingList[_ArraySearch($iSettingList, "VSync", 0, 0, 0, 1)], '<>')[3]
$Framerate = StringSplit($iSettingList[_ArraySearch($iSettingList, "Framerate", 0, 0, 0, 1)], '<>')[3]
$FOV = StringSplit($iSettingList[_ArraySearch($iSettingList, "FOV", 0, 0, 0, 1)], '<>')[3]
$Width = StringSplit($iSettingList[_ArraySearch($iSettingList, "Resolution", 0, 0, 0, 1)], '<>"')[3]
$High = StringSplit($iSettingList[_ArraySearch($iSettingList, "Resolution", 0, 0, 0, 1)], '<>"')[5]
$MSAA = StringSplit($iSettingList[_ArraySearch($iSettingList, "MSAA", 0, 0, 0, 1)], '<>')[3]
$TSSAA = StringSplit($iSettingList[_ArraySearch($iSettingList, "TSSAA", 0, 0, 0, 1)], '<>')[3]
$AF = StringSplit($iSettingList[_ArraySearch($iSettingList, "AF", 0, 0, 0, 1)], '<>')[3]
$Shadows = StringSplit($iSettingList[_ArraySearch($iSettingList, "Shadows", 0, 0, 0, 1)], '<>')[3]
$ShadowDistance = StringSplit($iSettingList[_ArraySearch($iSettingList, "ShadowDistance", 0, 0, 0, 1)], '<>')[3]
$ShadowCasters = StringSplit($iSettingList[_ArraySearch($iSettingList, "ShadowCasters", 0, 0, 0, 1)], '<>')[3]
$SoftShadows = StringSplit($iSettingList[_ArraySearch($iSettingList, "SoftShadows", 0, 0, 0, 1)], '<>')[3]
$HBAOPlus = StringSplit($iSettingList[_ArraySearch($iSettingList, "HBAOPlus", 0, 0, 0, 1)], '<>')[3]
$DisableLOD = StringSplit($iSettingList[_ArraySearch($iSettingList, "DisableLOD", 0, 0, 0, 1)], '<>')[3]
$HighQualityDOF = StringSplit($iSettingList[_ArraySearch($iSettingList, "HighQualityDOF", 0, 0, 0, 1)], '<>')[3]
$HighResFont = StringSplit($iSettingList[_ArraySearch($iSettingList, "HighResFont", 0, 0, 0, 1)], '<>')[3]
$ButtonPrompts = StringSplit($iSettingList[_ArraySearch($iSettingList, "ButtonPrompts", 0, 0, 0, 1)], '<>')[3]
$DisableCamAutoCenter = StringSplit($iSettingList[_ArraySearch($iSettingList, "DisableCamAutoCenter", 0, 0, 0, 1)], '<>')[3]
$Language = StringSplit($iSettingList[_ArraySearch($iSettingList, "Language", 0, 0, 0, 1)], '<>')[3]
$VoiceLanguage = StringSplit($iSettingList[_ArraySearch($iSettingList, "VoiceLanguage", 0, 0, 0, 1)], '<>')[3]
$SkipIntro = StringSplit($iSettingList[_ArraySearch($iSettingList, "SkipIntro", 0, 0, 0, 1)], '<>')[3]
$SkipLogos = StringSplit($iSettingList[_ArraySearch($iSettingList, "SkipLogos", 0, 0, 0, 1)], '<>')[3]
$SkipAll = StringSplit($iSettingList[_ArraySearch($iSettingList, "SkipAll", 0, 0, 0, 1)], '<>')[3]
$ShowLauncher = StringSplit($iSettingList[_ArraySearch($iSettingList, "ShowLauncher", 0, 0, 0, 1)], '<>')[3]
$AutosaveInterval = StringSplit($iSettingList[_ArraySearch($iSettingList, "AutosaveInterval", 0, 0, 0, 1)], '<>')[3]
$TurboMode = StringSplit($iSettingList[_ArraySearch($iSettingList, "TurboMode", 0, 0, 0, 1)], '<>')[3]
$TurboFactorBattle = StringSplit($iSettingList[_ArraySearch($iSettingList, "TurboFactorBattle", 0, 0, 0, 1)], '<>')[3]
$TurboFactorField = StringSplit($iSettingList[_ArraySearch($iSettingList, "TurboFactorField", 0, 0, 0, 1)], '<>')[3]

GUISetIcon (@ScriptDir & "\launcher_image\icon.ico")
$ButtonCancel = GUICtrlCreateButton("Отмена", 496, 560, 90, 25)
$ButtonSaveExit = GUICtrlCreateButton("Сохр. и выйти", 592, 560, 90, 25)
$ButtonSavePlay = GUICtrlCreateButton("Сохр. и играть", 688, 560, 90, 25)
$GroupDefSetting = GUICtrlCreateGroup("Предустановки", 16, 8, 450, 55)
$ButtonLow = GUICtrlCreateButton("Низкие", 24, 24, 100, 25)
$ButtonMid = GUICtrlCreateButton("Средние", 136, 24, 100, 25)
$ButtonHigh = GUICtrlCreateButton("Высокие", 248, 24, 100, 25)
$ButtonMax = GUICtrlCreateButton("Максимальные", 360, 24, 100, 25)
$GroupDisplay = GUICtrlCreateGroup("Дисплей", 16, 64, 215, 125)
$ComboDisplay = GUICtrlCreateCombo("", 88, 80, 125, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "Полный экран|В окне", $WinMode = "WINDOWED" ? "В окне" : $WinMode = "BORDERLESS" ? "Полный экран")
$ComboFPS = GUICtrlCreateCombo("", 88, 128, 125, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "60 FPS|30 FPS|Без ограничений", $Framerate = "60" ? "60 FPS" : $Framerate = "30" ? "30 FPS" : $Framerate = "0" ? "Без ограничений")
$CheckboxVS = GUICtrlCreateCheckbox("Вертикальная синхронизация", 24, 104, 192, 17, $BS_RIGHTBUTTON + $BS_RIGHT)
GUICtrlSetState($CheckboxVS, $VSync = "True" ? 1 : $VSync = "False" ? 4)
$LabelMode = GUICtrlCreateLabel("Режим ", 24, 80, 42, 17)
$LabelFPS = GUICtrlCreateLabel("Кдр\сек", 24, 128, 46, 17)
$SliderFOV = GUICtrlCreateSlider(96, 160, 101, 20)
GUICtrlSetData($SliderFOV, $FOV)
$LabelFOV = GUICtrlCreateLabel("Угол обзора", 24, 160, 68, 17)
$GroupQual = GUICtrlCreateGroup("Качество", 16, 200, 215, 125)
$DefaultRes = @DesktopWidth & " x " & @DesktopHeight
$ComboRes = GUICtrlCreateCombo("", 96, 216, 125, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, $DefaultRes & "|1280 x 720|1360 x 768|1366 x 768|1600 x 900|1920 x 1080|3840 x 2160", $Width & " x " & $High)
$ComboMSAA = GUICtrlCreateCombo("", 96, 248, 125, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "Откл.|2xMSAA|4xMSAA|8xMSAA", $MSAA = 2 ? "2xMSAA" : $MSAA = 4 ? "4xMSAA" : $MSAA = 8 ? "8xMSAA" : $MSAA = 1 ? "Откл.")
$CheckboxTSSAA = GUICtrlCreateCheckbox("Сглаживание прозрачности", 24, 272, 193, 25, $BS_RIGHTBUTTON + $BS_RIGHT)
GUICtrlSetState($CheckboxTSSAA, $TSSAA = "True" ? 1 : $TSSAA = "False" ? 4)
$CheckboxAF = GUICtrlCreateCheckbox("Анизотропная фильтрация", 24, 296, 193, 25, $BS_RIGHTBUTTON + $BS_RIGHT)
GUICtrlSetState($CheckboxAF, $AF = "True" ? 1 : $AF = "False" ? 4)
$LabelRes = GUICtrlCreateLabel("Разрешение", 24, 216, 67, 17)
$LabelMSAA = GUICtrlCreateLabel("MSAA", 24, 248, 34, 17)
$GroupShadows = GUICtrlCreateGroup("Тени", 16, 336, 215, 140)
$ComboShadows = GUICtrlCreateCombo("", 120, 352, 100, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "Низкое|Среднее|Высокое|Ультра|Абсурд", $Shadows = 'Absurd' ? "Абсурд" : $Shadows = 'Low' ? "Низкое" : $Shadows = 'Medium' ? "Среднее" : $Shadows = 'High' ? "Высокое" : $Shadows = 'Ultra' ? "Ультра" )
$ComboShadowsDist = GUICtrlCreateCombo("", 120, 384, 100, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "Низкая|Высокая", $ShadowDistance = 'Default' ? "Низкая" : $ShadowDistance = 'High' ? "Высокая")
$ComboShadowsCast = GUICtrlCreateCombo("", 120, 416, 100, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "Нет|По умолчанию|Все", $ShadowCasters = 'None' ? "Нет" : $ShadowCasters = 'Default' ? "По умолчанию" : $ShadowCasters = 'All' ? "Все")
$CheckboxSoftShadow = GUICtrlCreateCheckbox("Фильтр. Теней", 24, 448, 105, 20, $BS_RIGHTBUTTON + $BS_RIGHT)
GUICtrlSetState($CheckboxSoftShadow, $SoftShadows = "True" ? 1 : $SoftShadows = "False" ? 4)
$CheckboxHBAO = GUICtrlCreateCheckbox("HBAO+", 152, 448, 60, 20, $BS_RIGHTBUTTON + $BS_RIGHT)
GUICtrlSetState($CheckboxHBAO, $HBAOPlus = "True" ? 1 : $HBAOPlus = "False" ? 4)
$LabelShadowQual = GUICtrlCreateLabel("Качество теней", 24, 352, 83, 17)
$LabelShadowDist = GUICtrlCreateLabel("Дистанция теней", 24, 384, 92, 17)
$LabelShadowCast = GUICtrlCreateLabel("Отбр. тени", 24, 416, 58, 17)
$GroupGr = GUICtrlCreateGroup("Графика", 16, 488, 215, 90)
$CheckboxLOD = GUICtrlCreateCheckbox("Дальность прописовки", 24, 504, 180, 20, $BS_RIGHTBUTTON + $BS_RIGHT)
GUICtrlSetState($CheckboxLOD, $DisableLOD = "True" ? 1 : $DisableLOD = "False" ? 4)
$CheckboxDOF = GUICtrlCreateCheckbox("Глубина резкости", 24, 528, 180, 20, $BS_RIGHTBUTTON + $BS_RIGHT)
GUICtrlSetState($CheckboxDOF, $HighQualityDOF = "True" ? 1 : $HighQualityDOF = "False" ? 4)
$CheckboxFont = GUICtrlCreateCheckbox("Шрифт высокого разрешения", 24, 552, 180, 20, $BS_RIGHTBUTTON + $BS_RIGHT)
GUICtrlSetState($CheckboxFont, $HighResFont = "True" ? 1 : $HighResFont = "False" ? 4)
$GroupInput = GUICtrlCreateGroup("Управление", 240, 64, 225, 70)
$ComboEnter = GUICtrlCreateCombo("", 352, 80, 100, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "Xbox|DualShock|Клавомышь", $ButtonPrompts = "Mouse / KB" ? "Клавомышь" : $ButtonPrompts = "Xbox" ? "Xbox" : $ButtonPrompts = "DualShock" : "DualShock")
$LabelEnter = GUICtrlCreateLabel("Устройство ввода", 248, 80, 97, 17)
;$ButtonButtos = GUICtrlCreateButton("Сменить привязку кнопок", 248, 104, 209, 25)
$GroupMain = GUICtrlCreateGroup("Главное", 240, 144, 225, 190)
$ComboTextLang = GUICtrlCreateCombo("", 336, 160, 120, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "Русский|Японский", $Language = "English" ? "Русский" : $Language = "Japanese" ? "Японский")
$ComboVoicetLang = GUICtrlCreateCombo("", 336, 184, 120, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "Русский|Японский", $VoiceLanguage = "English" ? "Русский" : $VoiceLanguage = "Japanese" ? "Японский")
$ComboAutosave = GUICtrlCreateCombo("", 344, 304, 100, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "Отключить|Раз в минуту|Раз в 5 минут|Раз в 10 минут|Раз в 15 минут", $AutosaveInterval = 0 ? "Отключить" : $AutosaveInterval = 60 ? "Раз в минуту" : "Раз в " & $AutosaveInterval/60 & " минут")
$LabelTextLang = GUICtrlCreateLabel("Язык текста", 248, 160, 69, 17)
$LabelVoiceLang = GUICtrlCreateLabel("Язык озвучки", 248, 192, 75, 17)
$CheckboxSkipLogo = GUICtrlCreateCheckbox("Пропускать лого", 296, 208, 150, 20, $BS_RIGHTBUTTON + $BS_RIGHT)
GUICtrlSetState($CheckboxSkipLogo, $SkipLogos = "True" ? 1 : $SkipLogos = "False" ? 4)
$CheckboxSkipIntro = GUICtrlCreateCheckbox("Пропускать вступление", 296, 232, 150, 20, $BS_RIGHTBUTTON + $BS_RIGHT)
GUICtrlSetState($CheckboxSkipIntro, $SkipIntro = "True" ? 1 : $SkipIntro = "False" ? 4)
$CheckboxSkipVideo = GUICtrlCreateCheckbox("Пропускать все видео", 296, 256, 150, 20, $BS_RIGHTBUTTON + $BS_RIGHT)
GUICtrlSetState($CheckboxSkipVideo, $SkipAll = "True" ? 1 : $SkipAll = "False" ? 4)
;$CheckboxShowLauncher = GUICtrlCreateCheckbox("Показывать это окно", 296, 280, 150, 20, $BS_RIGHTBUTTON + $BS_RIGHT)
;GUICtrlSetState($CheckboxShowLauncher, $ShowLauncher = "True" ? 1 : $ShowLauncher = "False" ? 4)
$LabelAutoSave = GUICtrlCreateLabel("Автосохранение", 248, 304, 87, 17)
$GroupTurbo = GUICtrlCreateGroup("Турбо Режим", 240, 344, 225, 98)
$CheckboxTurbo = GUICtrlCreateCheckbox("Включить турбо режим", 248, 360, 209, 17, $BS_RIGHTBUTTON + $BS_RIGHT)
GUICtrlSetState($CheckboxTurbo, $TurboMode = "True" ? 1 : $TurboMode = "False" ? 4)
$ComboTurboBTL = GUICtrlCreateInput($TurboFactorBattle, 410, 384, 50, 20)
GUICtrlCreateUpdown(-1)
GUICtrlSetLimit(-1, 8, 2)
$ComboTurboWorld = GUICtrlCreateInput($TurboFactorField, 410, 408, 50, 20)
GUICtrlCreateUpdown(-1)
GUICtrlSetLimit(-1, 8, 2)
$LabelTurboBTL = GUICtrlCreateLabel("Скорость турбо в бою", 290, 384, 120, 17, $BS_RIGHT)
$LabelTurboWorld = GUICtrlCreateLabel("Скорость турбо вне боя", 280, 408, 120, 17, $BS_RIGHT)
$Label13 = GUICtrlCreateLabel("1.0.6839.32440", 408, 568, 79, 17)

GUICtrlSetLimit($SliderFOV, 90, 30)
$LabelFOV = GUICtrlCreateLabel(GUICtrlRead($SliderFOV), 208, 160, 16, 17)

GUIRegisterMsg($WM_PAINT, "MY_WM_PAINT")
GUISetState(@SW_SHOW)

While 1
	$nMsg = GUIGetMsg()
	$iCursorPos = GUIGetCursorInfo($hGUI)

		If $iCursorPos[4] Then
			Switch $iCursorPos[4]
				Case $ButtonLow, $ButtonMid, $ButtonHigh, $ButtonMax
					If $iMouseMove <> $iCursorPos[4] Then
						$iMouseMove = $iCursorPos[4]
							_GDIPlus_GraphicsDrawImage($hGraphic, $hImage1, 467, 20)
					EndIf
				Case $ComboDisplay, $LabelMode
					If $iMouseMove <> $iCursorPos[4] Then
						$iMouseMove = $iCursorPos[4]
							_GDIPlus_GraphicsDrawImage($hGraphic, $hImage2, 467, 20)
					EndIf
				Case $CheckboxVS
					If $iMouseMove <> $iCursorPos[4] Then
						$iMouseMove = $iCursorPos[4]
							_GDIPlus_GraphicsDrawImage($hGraphic, $hImage3, 467, 20)
					EndIf
				Case $ComboFPS, $LabelFPS
					If $iMouseMove <> $iCursorPos[4] Then
						$iMouseMove = $iCursorPos[4]
							_GDIPlus_GraphicsDrawImage($hGraphic, $hImage4, 467, 20)
					EndIf
				Case $SliderFOV, $LabelFOV, $LabelFOV
					If $iMouseMove <> $iCursorPos[4] Then
							ImgRPT($hImage5, $hImage6)
					EndIf
				Case $LabelMSAA, $ComboMSAA
					If $iMouseMove <> $iCursorPos[4] Then
							ImgRPT($hImage8, $hImage7)
					EndIf
				Case $CheckboxTSSAA
					If $iMouseMove <> $iCursorPos[4] Then
							ImgRPT($hImage9, $hImage10)
					EndIf
				Case $CheckboxAF
					If $iMouseMove <> $iCursorPos[4] Then
							ImgRPT($hImage11, $hImage12)
					EndIf
				Case $ComboShadows, $LabelShadowQual
					If $iMouseMove <> $iCursorPos[4] Then
							ImgRPT($hImage13, $hImage14)
					EndIf
				Case $ComboShadowsDist, $LabelShadowDist
					If $iMouseMove <> $iCursorPos[4] Then
						$iMouseMove = $iCursorPos[4]
							_GDIPlus_GraphicsDrawImage($hGraphic, $hImage15, 467, 20)
					EndIf
				Case $ComboShadowsCast, $LabelShadowCast
					If $iMouseMove <> $iCursorPos[4] Then
							ImgRPT($hImage16, $hImage17)
					EndIf
				Case $CheckboxSoftShadow
					If $iMouseMove <> $iCursorPos[4] Then
							ImgRPT($hImage18, $hImage19)
					EndIf
				Case $CheckboxHBAO
					If $iMouseMove <> $iCursorPos[4] Then
							ImgRPT($hImage20, $hImage21)
					EndIf
				Case $CheckboxLOD
					If $iMouseMove <> $iCursorPos[4] Then
							ImgRPT($hImage22, $hImage23)
					EndIf
				Case $CheckboxDOF
						$iMouseMove = $iCursorPos[4]
							_GDIPlus_GraphicsDrawImage($hGraphic, $hImage24, 467, 20)
				Case $CheckboxFont
						$iMouseMove = $iCursorPos[4]
							_GDIPlus_GraphicsDrawImage($hGraphic, $hImage25, 467, 20)
				Case $ComboEnter, $LabelEnter
					If $iMouseMove <> $iCursorPos[4] Then
						$iMouseMove = $iCursorPos[4]
							_GDIPlus_GraphicsDrawImage($hGraphic, $hImage26, 467, 20)
					EndIf
				; Case $ButtonButtos
					; If $iMouseMove <> $iCursorPos[4] Then
						; $iMouseMove = $iCursorPos[4]
							; _GDIPlus_GraphicsDrawImage($hGraphic, $hImage27, 467, 20)
					; EndIf
				Case $LabelTextLang, $ComboTextLang
						$iMouseMove = $iCursorPos[4]
							_GDIPlus_GraphicsDrawImage($hGraphic, $hImage28, 467, 20)
				Case $LabelVoiceLang, $ComboVoicetLang
						$iMouseMove = $iCursorPos[4]
							_GDIPlus_GraphicsDrawImage($hGraphic, $hImage29, 467, 20)
				Case $CheckboxSkipLogo, $CheckboxSkipIntro, $CheckboxSkipVideo
						$iMouseMove = $iCursorPos[4]
							_GDIPlus_GraphicsDrawImage($hGraphic, $hImage30, 467, 20)
				; Case $CheckboxShowLauncher
						; $iMouseMove = $iCursorPos[4]
							; _GDIPlus_GraphicsDrawImage($hGraphic, $hImage31, 467, 20)
				Case $LabelAutoSave, $ComboAutosave
						$iMouseMove = $iCursorPos[4]
							_GDIPlus_GraphicsDrawImage($hGraphic, $hImage32, 467, 20)
				Case $GroupTurbo
						$iMouseMove = $iCursorPos[4]
							_GDIPlus_GraphicsDrawImage($hGraphic, $hImage33, 467, 20)
			EndSwitch
		EndIf

	Switch $nMsg
		Case $GUI_EVENT_CLOSE, $ButtonCancel
			preExit()
			Exit
		Case $SliderFOV
			GUICtrlSetData($LabelFOV, GUICtrlRead($SliderFOV))
		Case $ButtonSaveExit ;"Сохр. и выйти"
			saveSetting()
			preExit()
			Exit

		Case $ButtonSavePlay ;"Сохр. и играть"
			saveSetting()
			preExit()
			ShellExecute(@ScriptDir & "\ed8.exe", " -fromlauncher")
			Exit

		Case $ButtonLow; "Низкие"
			$pArray = "30 FPS|Откл|4|4|Низкое|Низкая|Нет|4|4|4|4|4"
			setDefault($pArray)
		Case $ButtonMid; "Средние"
			$pArray = "30 FPS|2xMSAA|1|1|Среднее|Низкая|По умолчанию|4|4|4|4|1"
			setDefault($pArray)
		Case $ButtonHigh; "Высокие"
			$pArray = "60 FPS|4xMSAA|1|1|Высокое|Высокая|Все|1|1|1|1|1"
			setDefault($pArray)
		Case $ButtonMax; "Максимальные"
			$pArray ="Без ограничений|8xMSAA|1|1|Абсурд|Высокая|Все|1|1|1|1|1"
			setDefault($pArray)
	EndSwitch
WEnd

Func setDefault($pSTR)
	$pArray = StringSplit($pSTR, '|')
	GUICtrlSetData($ComboFPS, $pArray[1])
	GUICtrlSetData($ComboMSAA, $pArray[2])
	GUICtrlSetState($CheckboxTSSAA, $pArray[3])
	GUICtrlSetState($CheckboxAF, $pArray[4])
	GUICtrlSetData($ComboShadows, $pArray[5])
	GUICtrlSetData($ComboShadowsDist, $pArray[6])
	GUICtrlSetData($ComboShadowsCast, $pArray[7])
	GUICtrlSetState($CheckboxSoftShadow, $pArray[8])
	GUICtrlSetState($CheckboxHBAO, $pArray[9])
	GUICtrlSetState($CheckboxLOD, $pArray[10])
	GUICtrlSetState($CheckboxDOF, $pArray[11])
	GUICtrlSetState($CheckboxFont, $pArray[12])
EndFunc

Func preExit()
	_GDIPlus_GraphicsDispose($hGraphic)
	_GDIPlus_ImageDispose($hImage)
	_GDIPlus_Shutdown()
EndFunc

Func saveSetting()
	FileOpen($iPath, 10)

	$WinMode = GUICtrlRead($ComboDisplay) = 'В окне' ? 'WINDOWED' : GUICtrlRead($ComboDisplay) = "Полный экран" ? "BORDERLESS"
	$VSync = GUICtrlRead($CheckboxVS) = 4 ? False : GUICtrlRead($CheckboxVS) = 1 ? True
	$Framerate = GUICtrlRead($ComboFPS) = "60 FPS" ? "60" : GUICtrlRead($ComboFPS) = "30 FPS" ? "30" : GUICtrlRead($ComboFPS) = "Без ограничений" ? "0"
	$FOV  = GUICtrlRead($SliderFOV)
	$Width = StringSplit(GUICtrlRead($ComboRes), ' x ', 1)[1]
	$High = StringSplit(GUICtrlRead($ComboRes), ' x ', 1)[2]
	$MSAA = GUICtrlRead($ComboMSAA) = "2xMSAA" ? 2 : GUICtrlRead($ComboMSAA) = "4xMSAA" ? 4 : GUICtrlRead($ComboMSAA) = "8xMSAA" ? 8 : GUICtrlRead($ComboMSAA) = "Откл." ? 1
	$TSSAA = GUICtrlRead($CheckboxTSSAA) = 4 ? False : GUICtrlRead($CheckboxTSSAA) = 1 ? True
	$AF = GUICtrlRead($CheckboxAF) = 4 ? False : GUICtrlRead($CheckboxAF) = 1 ? True
	$Shadows = GUICtrlRead($ComboShadows) = 'Абсурд' ? "Absurd" : GUICtrlRead($ComboShadows) = 'Низкое' ? "Low" : GUICtrlRead($ComboShadows) = 'Среднее' ? "Medium" : GUICtrlRead($ComboShadows) = 'Высокое' ? "High" : GUICtrlRead($ComboShadows) = 'Ультра' ? "Ultra" 
	$ShadowDistance = GUICtrlRead($ComboShadowsDist) = 'Низкая' ? "Default" : GUICtrlRead($ComboShadowsDist) = 'Высокая' ? "High"
	$ShadowCasters = GUICtrlRead($ComboShadowsCast) = 'Нет' ? "None" : GUICtrlRead($ComboShadowsCast) = 'По умолчанию' ? "Default" : GUICtrlRead($ComboShadowsCast) = 'Все' ? "All"
	$SoftShadows = GUICtrlRead($CheckboxSoftShadow) = 4 ? False : GUICtrlRead($CheckboxSoftShadow) =1 ? True
	$HBAOPlus = GUICtrlRead($CheckboxHBAO) = 4 ? False : GUICtrlRead($CheckboxHBAO) = 1 ? True
	$DisableLOD = GUICtrlRead($CheckboxLOD) = 4 ? False : 1 ? True
	$HighQualityDOF = GUICtrlRead($CheckboxDOF) = 4 ? False : GUICtrlRead($CheckboxDOF) = 1 ? True
	$HighResFont = GUICtrlRead($CheckboxFont) = 4 ? False : GUICtrlRead($CheckboxFont) = 1 ? True
	$ButtonPrompts = GUICtrlRead($ComboEnter) = "Клавомышь" ? "Mouse / KB" : GUICtrlRead($ComboEnter)
	;$DisableCamAutoCenter = GUICtrlRead() ;TODO
	$Language = GUICtrlRead($ComboTextLang) = "Русский" ? "English" : GUICtrlRead($ComboTextLang) = "Японский" ? "Japanese"
	$VoiceLanguage = GUICtrlRead($ComboVoicetLang) = "Русский" ? "English" : GUICtrlRead($ComboVoicetLang) = "Японский" ? "Japanese"
	$SkipIntro  = GUICtrlRead($CheckboxSkipIntro) = 4 ? False : GUICtrlRead($CheckboxSkipIntro) = 1 ? True
	$SkipLogos  = GUICtrlRead($CheckboxSkipLogo) = 4 ? False : GUICtrlRead($CheckboxSkipLogo) = 1 ? True
	$SkipAll = GUICtrlRead($CheckboxSkipVideo) = 4 ? False : GUICtrlRead($CheckboxSkipVideo) = 1 ? True
	;$ShowLauncher = GUICtrlRead($CheckboxShowLauncher) = 4 ? False : GUICtrlRead($CheckboxShowLauncher) = 1 ? True
	$AutosaveInterval = GUICtrlRead($ComboAutosave) = "Отключить" ? 0 : GUICtrlRead($ComboAutosave) = "Раз в минуту" ? 60 : (StringSplit(GUICtrlRead($ComboAutosave), ' ')[3]) * 60
	$TurboMode = GUICtrlRead($CheckboxTurbo) = 4 ? False : GUICtrlRead($CheckboxTurbo) = 1 ? True
	$TurboFactorBattle = GUICtrlRead($ComboTurboBTL)
	$TurboFactorField = GUICtrlRead($ComboTurboWorld)

	FileWriteLine($iPath, '<?xml version="1.0" encoding="utf-8"?>')
	FileWriteLine($iPath, '<Settings>')
	FileWriteLine($iPath, '	<ScreenMode>' & $WinMode & '</ScreenMode>')
	FileWriteLine($iPath, '	<VSync>' & $VSync & '</VSync>')
	FileWriteLine($iPath, '	<Framerate>' & $Framerate & '</Framerate>')
	FileWriteLine($iPath, '	<FOV>' & $FOV & '</FOV>')
	FileWriteLine($iPath, '	<Resolution Width="' & $Width & '" Height="' & $High & '" />')
	FileWriteLine($iPath, '	<MSAA>' & $MSAA & '</MSAA>')
	FileWriteLine($iPath, '	<TSSAA>' & $TSSAA & '</TSSAA>')
	FileWriteLine($iPath, '	<AF>' & $AF & '</AF>')
	FileWriteLine($iPath, '	<Shadows>' & $Shadows & '</Shadows>')
	FileWriteLine($iPath, '	<ShadowDistance>' & $ShadowDistance & '</ShadowDistance>')
	FileWriteLine($iPath, '	<ShadowCasters>' & $ShadowCasters & '</ShadowCasters>')
	FileWriteLine($iPath, '	<SoftShadows>' & $SoftShadows & '</SoftShadows>')
	FileWriteLine($iPath, '	<HBAOPlus>' & $HBAOPlus & '</HBAOPlus>')
	FileWriteLine($iPath, '	<DisableLOD>' & $DisableLOD & '</DisableLOD>')
	FileWriteLine($iPath, '	<HighQualityDOF>' & $HighQualityDOF & '</HighQualityDOF>')
	FileWriteLine($iPath, '	<HighResFont>' & $HighResFont & '</HighResFont>')
	FileWriteLine($iPath, '	<ButtonPrompts>' & $ButtonPrompts & '</ButtonPrompts>')
	FileWriteLine($iPath, '	<DisableCamAutoCenter>' & $DisableCamAutoCenter & '</DisableCamAutoCenter>')
	FileWriteLine($iPath, '	<Language>' & $Language & '</Language>')
	FileWriteLine($iPath, '	<VoiceLanguage>' & $VoiceLanguage & '</VoiceLanguage>')
	FileWriteLine($iPath, '	<SkipIntro>' & $SkipIntro & '</SkipIntro>')
	FileWriteLine($iPath, '	<SkipLogos>' & $SkipLogos & '</SkipLogos>')
	FileWriteLine($iPath, '	<SkipAll>' & $SkipAll & '</SkipAll>')
	FileWriteLine($iPath, '	<ShowLauncher>True</ShowLauncher>')
	FileWriteLine($iPath, '	<AutosaveInterval>' & $AutosaveInterval & '</AutosaveInterval>')
	FileWriteLine($iPath, '	<TurboMode>' & $TurboMode & '</TurboMode>')
	FileWriteLine($iPath, '	<TurboFactorBattle>' & $TurboFactorBattle & '</TurboFactorBattle>')
	FileWriteLine($iPath, '	<TurboFactorField>' & $TurboFactorField & '</TurboFactorField>')
	FileWriteLine($iPath, '</Settings>')

	FileClose($iPath)
EndFunc

Func ImgRPT($img1, $img2)
	Do 
		$iCursorPos = GUIGetCursorInfo($hGUI)
		_GDIPlus_GraphicsDrawImage($hGraphic, $img1, 467, 20)
		If $iMouseMove <> $iCursorPos[4] Then Sleep (1000)
		_GDIPlus_GraphicsDrawImage($hGraphic, $img2, 467, 20)
		If $iMouseMove <> $iCursorPos[4] Then Sleep (1000)
	Until $iMouseMove <> $iCursorPos[4]
EndFunc

Func MY_WM_PAINT($hWnd, $msg, $wParam, $lParam)
	#forceref $hWnd, $Msg, $wParam, $lParam
	_WinAPI_RedrawWindow($hGUI, 0, 0, $RDW_UPDATENOW)
	_GDIPlus_GraphicsDrawImage($hGraphic, $hImage, 467, 20)
	_WinAPI_RedrawWindow($hGUI, 0, 0, $RDW_VALIDATE)
	Return $GUI_RUNDEFMSG
EndFunc

