
echo OFF

set SCANNER=C:\SonarQube\sonar-scanner-msbuild-3.0.3\MSBuild.SonarQube.Runner.exe
set WRAPPER=C:\Users\olivierk\Documents\build-wrapper-win-x86\build-wrapper-win-x86-64.exe
set MSBUILD=C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\MSBuild\15.0\Bin\amd64\msbuild.exe
set SQIP=localhost

IF /I "%1"=="" (
	echo "Usage: scan [step1] | [step2] | [step3]"
	exit /b 0
)

IF /I "%1"=="step1" (

	echo '-----------------------------------------------------------------------'
	echo "RUNNING: %SCANNER% begin  /k:\"training:msbuild\" /n:\"Training: Sample MSBuild analysis3
	/v:1.0 /d:sonar.verbose=true /d:sonar.host.url=http://%SQIP%:9000/"
	echo set /p v=Type [ENTER] to run?:
	
    "%SCANNER%" begin  /k:"training:msbuild" /n:"Training: Sample MSBuild analysis" /v:"1.0" /d:sonar.verbose=true /d:sonar.host.url=http://%SQIP%:9000/

	IF /I "%2"=="step2" (
		echo '-----------------------------------------------------------------------'
		echo "RUNNING: %MSBUILD% /t:rebuild"
		echo set /p v=Type [ENTER] to run?:
		"%MSBUILD%" /t:rebuild
	
		
		IF /I "%3"=="step3" (
			echo '-----------------------------------------------------------------------'
			echo "RUNNING: %SCANNER% end"
			echo set /p v=Type [ENTER] to run?: 
			"%SCANNER%" end
		) 
	)
	exit /b 0
)

IF /I "%1"=="step2" (
	echo '-----------------------------------------------------------------------'
	echo "RUNNING: %MSBUILD% /t:rebuild"
	echo set /p v=Type [ENTER] to run?: 
	"%MSBUILD%" /t:rebuild
	
		
	IF /I "%2"=="step3" (
		echo '-----------------------------------------------------------------------'
		echo "RUNNING: %SCANNER% end"
		echo set /p v=Type [ENTER] to run?: 
		"%SCANNER%" end
	)
	exit /b 0
)

IF /I "%1"=="step3" (
	echo '-----------------------------------------------------------------------'
	echo "RUNNING: %SCANNER% end"
	echo set /p v=Type [ENTER] to run?: 
	%SCANNER% end
)

