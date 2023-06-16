@echo off
title latihan 9 inputan segitiga
rem ===========setting variable=======
echo -----------------------------------------
echo       INPUTAN NILAI ALAS DA TINGGI 
echo -----------------------------------------
set /p alas= Masukkan Nilai ALAS :
set /p tinggi= Masukkan Nilai Tinggi   :

rem ===========Setting Perhitungan=======
set /a luas=alas*tinggi/2

if %luas% GEQ 500 (
    set grade=Kategori Besar
) else if %luas% GEQ 100 (
    set grade=Kategori Sedang
) else (
    set grade=Kategori Kecil
)

cls
rem ===========Output=========================
echo -----------------------------------------
echo       PERHITUNGAN LUAS SEGITIGA
echo -----------------------------------------
echo Alas :%alas%
echo Tinggi :%tinggi%
echo -----------------------------------------
echo Luas Segitiga tersebut adalah : %luas%
echo Kategori bangunannya adalah : %grade%
pause