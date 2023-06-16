@echo off

title latihan 8 inputan persegi panjang

rem Variable dan inputan
set /p p= masukkan Panjang Bangunan :
set /p p= masukkan Lebar Bangunan   :

set /a luas=p*l

if %luas% GEQ 500 (
    set grade=Kategori Besar
) else if %luas% GEQ 100 (
    set grade=Kategori Sedang
) else (
    set grade=Kategori Kecil
)

cls
rem output
echo --------------------------
echo   Data Luas Bangunan
echo --------------------------
echo Panjang Bangunan     :%p%
echo Lebar Bangunan       :%l%
echo Luas Bangunan        :%luas%
echo Kategori             :%grade%
echo --------------------------

rem cetak
echo -------------------------->>hasil.txt
echo   Data Luas Bangunan>>hasil.txt
echo -------------------------->>hasil.txt
echo Panjang Bangunan     :%p%>>hasil.txt
echo Lebar Bangunan       :%l%>>hasil.txt
echo Luas Bangunan        :%luas%>>hasil.txt
echo Kategori             :%grade%>>hasil.txt
echo -------------------------->>hasil.txt
pause 