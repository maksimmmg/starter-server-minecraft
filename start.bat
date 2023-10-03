
@Echo off
cls
:m1
Echo V1.3 
Echo by ka5il
Echo SELECT RAM:
Echo WARNING :  The server file should be called server.jar
Echo Only 64x system
Echo.
Echo 1 - 1gb
Echo 2 - 2gb
Echo 3 - 3gb
 
echo.
Set /p choice="SELECTING RAM: "
if not defined choice goto m1
if "%choice%"=="1" (java -Xmx1G -Xms512M -server -XX:+UseBiasedLocking -XX:+UseG1GC -XX:+UseFastEmptyMethods -XX:ConcGCThreads=2 -jar server.jar nogui)
if "%choice%"=="2" (java -Xmx2G -Xms512M -server -XX:+UseBiasedLocking -XX:+UseG1GC -XX:+UseFastEmptyMethods -XX:ConcGCThreads=2 -jar server.jar nogui)
if "%choice%"=="3" (java -Xmx3G -Xms512M -server -XX:+UseBiasedLocking -XX:+UseG1GC -XX:+UseFastEmptyMethods -XX:ConcGCThreads=2 -jar server.jar nogui)
Echo.
Echo PLS SELECCTING 1, 2, 3
Echo.
Echo.
goto m1
pause >nul
color 5
cls