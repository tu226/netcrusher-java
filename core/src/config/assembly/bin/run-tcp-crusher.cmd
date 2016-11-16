@ECHO OFF

set JAVA_OPTS=%JAVA_OPTS% -XX:+UseParNewGC -XX:+UseConcMarkSweepGC -Dlogback.configurationFile=logback-plain.xml

set CRUSHER_BIN=%~dp0
set CRUSHER_LIB=%CRUSHER_BIN%\..\lib

set CLASSPATH=%CRUSHER_LIB%\*

java %JAVA_OPTS% -classpath %CLASSPATH% org.netcrusher.tcp.main.TcpCrusherMain %1 %2