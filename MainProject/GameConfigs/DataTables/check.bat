set WORKSPACE=..

set LUBAN_DLL=%WORKSPACE%\Tools\Luban\Luban.dll
set CONF_ROOT=.

dotnet %LUBAN_DLL% ^
    -t all ^
	-f ^
    --conf %CONF_ROOT%\luban.conf ^
    -x pathValidator.rootDir=%WORKSPACE%\goutou2 ^
    -x l10n.textProviderFile=*@%CONF_ROOT%\Datas\l10n\texts.json

pause