cd %~dp0\src
set "PATH=C:\Program Files\Java\jdk-23\bin;%PATH%"
set "ALP=C:\develop\arduino-1.8.19-windows\arduino-1.8.19\lib"
IF EXIST bin GOTO NODIR
mkdir bin
:NODIR
del bin\*.jar
rd /S /Q bin\com
javac -source 8 -target 8 -cp ".;%ALP%\arduino-core.jar;%ALP%\commons-codec-1.7.jar;%ALP%\pde.jar" -d bin ESP32FS.java
cd bin
jar.exe cvfM esp32fs.jar *
pause
