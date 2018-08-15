echo off
set SCANNER=C:\SonarQube\sonar-scanner-msbuild-3.0.3\MSBuild.SonarQube.Runner.exe
set SQIP=localhost

echo -------------------------------------------------
echo Running: MSBuild.SonarQube.Runner.exe begin /k:"AirbusKey" /n:"CS Sample Scan - Airbus" /v:"1.0" /d:sonar.verbose=true /d:sonar.host.url=http://%SQIP%:9000/
echo -------------------------------------------------
echo  
echo on
%SCANNER% begin /k:"AirbusKey" /n:"CS Sample Scan - Airbus" /v:"1.0" /d:sonar.verbose=true /d:sonar.host.url=http://%SQIP%:9000/ /d:sonar.exclusions="**/dontscan.cs"

