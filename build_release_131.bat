cd /D "%~dp0"

md "_release"
md "_release\GameData131"
md "_release\GameData131\GameData"
md "_release\GameData131\GameData\MagicSmokeIndustries"
md "_release\GameData131\GameData\MagicSmokeIndustries\IRActiveStruts"

xcopy "Resources\GameData\MagicSmokeIndustries\IRActiveStruts\Parts" "_release\GameData131\GameData\MagicSmokeIndustries\IRActiveStruts\Parts\" /S /E /Y
xcopy "Resources\GameData\MagicSmokeIndustries\IRActiveStruts\Plugins" "_release\GameData131\GameData\MagicSmokeIndustries\IRActiveStruts\Plugins\" /S /E /Y
xcopy "Resources\GameData\MagicSmokeIndustries\IRActiveStruts\Sounds" "_release\GameData131\GameData\MagicSmokeIndustries\IRActiveStruts\Sounds\" /S /E /Y

copy "Resources\GameData\MagicSmokeIndustries\IRActiveStruts\ActiveStruts_1.3.version" "_release\GameData131\GameData\MagicSmokeIndustries\IRActiveStruts\ActiveStruts.version"

copy "ActiveStruts\ActiveStruts\bin\Release 1.3.1\ActiveStruts.dll" "_release\GameData131\GameData\MagicSmokeIndustries\IRActiveStruts\Plugins\ActiveStruts.dll"

del "_release\IR-ActiveStruts_v3.0.0_for_1.3.1.zip"
C:\PACL\PACOMP.EXE -a -r -p "_release\IR-ActiveStruts_v3.0.0_for_1.3.1.zip" "_release\GameData131\*"
