@echo off
chcp 65001
set PackageVersion="1.0.0.1"
del .\PublishNuget\*.nupkg

dotnet clean .\net6.0pack.csproj
dotnet pack .\net6.0pack.csproj -p:PackageVersion=%PackageVersion% -c Release -o .\PublishNuget
pause