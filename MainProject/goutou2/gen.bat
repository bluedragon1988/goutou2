set WORKSPACE=..\GameConfigs

set LUBAN_DLL=%WORKSPACE%\Tools\Luban\Luban.dll
set CONF_ROOT=%WORKSPACE%\DataTables

dotnet %LUBAN_DLL% ^
    -t client ^
    -c cs-bin ^
    -d bin  ^
    --conf %CONF_ROOT%\luban.conf ^
    -x outputCodeDir=Assets/Gen ^
    -x outputDataDir=Assets\Gen\GenerateDatas\bytes ^
    -x pathValidator.rootDir=..\goutou2 ^
    -x l10n.textProviderFile=*@%WORKSPACE%\DataTables\Datas\l10n\texts.json
pause