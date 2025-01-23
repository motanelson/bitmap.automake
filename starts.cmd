@echo off
@IF NOT EXIST .\uploads\%1 mkdir .\uploads\%1 
@copy hello.csproj .\uploads\%1\%1.csproj
@copy .\uploads\%1.cs .\uploads\%1\%1.cs