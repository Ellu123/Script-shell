
@echo off
setlocal EnableDelayedExpansion

if exist %1 (
	set filstig=%1

	for /f "tokens=1,2,3 USEBACKQ" %%a in (`dir !filstig!`) do (
			

			if "%%b"=="tiedosto(a)" (
				set filmängd=%%a
				set filstorlek=%%c
			)
			if "%%b"=="kansio(ta)" (
				set katalogmängd=%%a
				set katalogstorlek=%%c
			)
	)
	
	if exist %1\ (
		echo !filstig! ar en katalog
		echo katalog mangd: !katalogmängd!
		echo Fil mangd: !filmängd!
		echo Filstorlek: !filstorlek! byte
	
	) else (
		echo !filstig! ar en fil
		echo Storlek: !filstorlek! byte 
	)
) else ( 
	echo %1 existerar inte 
)
	