@echo off
@IF NOT EXIST .\uploads\%1 mkdir .\uploads\%1 
@copy hello.csproj .\uploads\%1\%1.csproj
@copy .\uploads\%1.cs .\uploads\%1\%1.cs
@cd .\uploads\%1
@echo on
dotnet build
dotnet run
@echo off
@copy .\bin\Debug\net8.0\%1.exe ..\..\tmp
@copy .\bin\Debug\net8.0\%1.dll ..\..\tmp
@echo on