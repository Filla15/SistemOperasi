@echo off
setlocal EnableDelayedExpansion

:login
color 1b
cls
echo.
echo.
echo                                                         **************************************************
echo                                                         *                 SILAHKAN LOGIN                 *
echo                                                         *                DI SYSTEM FAYLLEE               *
echo                                                         **************************************************
echo.

set /p username=Masukkan username: 
set /p password=Masukkan password: 
if "%username%"=="fillaimut" if "%password%"=="2015" goto menu_utama
goto login

:menu_utama
color 4e
cls
echo.
echo.
echo                                                #   # #~~~ #    #    ####   #  ##  # #~~~ #    #~~~~ #### ##    ## #~~~~  ##### ####  
echo                                                ##### #~~~ #    #    #  #    # # # # #~~~ #    #     #  # #  # # # #~~~~    #   #  #
echo                                                #   # #~~~ #### #### ####     #   #  #~~~ #### #~~~~ #### #   #  # #~~~~    #   ####
echo.   
echo                                                                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~                                                                                              
echo                                                                       ~     PILIHAN MENU DI SYSTEM FAYLLEE    ~
echo                                                                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo                                                                              (1). Menu Akademik
echo                                                                              (2). Menu Aplikasi Perhitungan
echo                                                                              (3). Menu Perbaikan Komputer
echo                                                                              (4). Menu Jaringan Komputer
echo                                                                              (5). Menu Aplikasi
echo                                                                              (6). Menu Setting
echo                                                                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo                                                                       ~      (7). Keluar                        ~
echo                                                                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.

set /p pilihan=Masukkan pilihan kamu: 

if "%pilihan%"=="1" goto menu_akademik
if "%pilihan%"=="2" goto menu_perhitungan
if "%pilihan%"=="3" goto menu_perbaikan
if "%pilihan%"=="4" goto menu_jaringan
if "%pilihan%"=="5" goto menu_aplikasi
if "%pilihan%"=="6" goto menu_setting 
if "%pilihan%"=="7" goto keluar

goto menu_utama

:menu_akademik
cls
color 71
echo. 
echo                                                                        ---------------------------------
echo                                                                        ---------------------------------
echo                                                                                  Menu Akademik         
echo.                                                                                                        
echo                                                                             1. Jadwal Kuliah           
echo                                                                             2. Input Nilai KHS         
echo                                                                        ---------------------------------
echo                                                                             3. Kembali Ke Menu Utama   
echo                                                                        ---------------------------------
echo                                                                        ---------------------------------
echo. 

set /p choice= Silahkan Masukkan Pilihan Kamu: 

if "%choice%"=="1" (
    call :fill1
) else if "%choice%"=="2" (
    call :fill2
) else if "%choice%"=="3" (
    goto menu_utama
) else (
    echo Pilihan tidak valid!
    pause >nul
    goto menu
)

exit /b

:fill1
color 75
cls
echo.
echo                                                                        Silahkan Pilih Hari
echo                                                                    ---------------------------
echo                                                                            1. Senin
echo                                                                            2. Selasa
echo                                                                            3. Kamis
echo                                                                            4. Jumat
echo                                                                            5. Kembali
echo. 

set /p submenu_choice= Silahkan Masukkan pilihan Kamu:

if "%submenu_choice%"=="1" (
    call :senin 
    goto fill1
) else if "%submenu_choice%"=="2" (
    call :selasa
    goto fill1
) else if "%submenu_choice%"=="3" (
    call :kamis
    goto fill1
) else if "%submenu_choice%"=="4" (
    call :jumat
    goto fill1
) else if "%submenu_choice%"=="5" (
    goto menu_akademik
) else (
    echo Pilihan tidak valid!
    pause >nul
    goto fill1
)
:senin
cls
echo.
echo                                                                       Jadwal Hari Senin
echo. 
echo                                                -------------------------------------------------------------------
echo                                                       Matkul                  Jam                Dosen
echo                                                -------------------------------------------------------------------
echo                                                Manajemen Basis Data       09.30 - 12.30      Mursalim,M.Kom
echo                                                Manajemen Jaringan         13.00 - 14.30      Achsin Samas,M.Kom
echo                                                -------------------------------------------------------------------
pause
exit /b

:selasa
cls
echo. 
echo                                                                      Jadwal Hari Selasa
echo. 
echo                                                -------------------------------------------------------------------
echo                                                       Matkul                    Jam                Dosen
echo                                                -------------------------------------------------------------------
echo                                                Rekayasa Perangkat Lunak     08.30 - 10.30      Achsin Samas,M.Kom
echo                                                Etika Profesi                10.30 - 12.00      Achsin Samas,M.Kom
echo                                                -------------------------------------------------------------------
pause
exit /b

:kamis
cls
echo.
echo                                                                       Jadwal Hari Kamis
echo. 
echo                                                -------------------------------------------------------------------
echo                                                       Matkul                         Jam                Dosen
echo                                                -------------------------------------------------------------------
echo                                                Probabilitas dan Statistik       13.00 - 14.30      Sufrotun K,M.T
echo                                                -------------------------------------------------------------------
pause
exit /b

:jumat
cls
echo.
echo                                                                        Jadwal Hari Jumat
echo. 
echo                                               --------------------------------------------------------------
echo                                                       Matkul               Jam                Dosen
echo                                               --------------------------------------------------------------
echo                                                PBO                    09.30 - 12.30      Mursalim,M.Kom
echo                                                Sistem Operasi         13.00 - 14.30      Mursalim,M.Kom
echo                                               --------------------------------------------------------------
pause
exit /b

:fill2
color 75
cls
:input_data
echo. 
echo                                                        --------------------------------------
echo                                                            Input Data Mahasiswa Untuk KHS
echo                                                        --------------------------------------
echo. 
set /p "nama=    Masukkan Nama          : "
set /p "nim=     Masukkan NIM           : "
set /p "prodi=   Masukkan prodi         : "
echo.

cls
echo.
echo                                                                    KARTU HASIL STUDI
echo                                                             UNIVERSITAS SELAMAT SRI BATANG 
echo                                                         --------------------------------------
echo.
echo                                                                Nama          : %nama% 
echo                                                                NIM           : %nim%            
echo                                                                Prodi         : %prodi%  
echo.

set /a "total_sks=0"
set /a "total_hasil=0"
echo.
echo                         ----------------------------------------
echo                                    Input Nilai Untuk KHS
echo                         ----------------------------------------
echo. 
set /p "nilai1=Masukkan Nilai Mata Kuliah 1: "
set /p "nilai2=Masukkan Nilai Mata Kuliah 2: "
set /p "nilai3=Masukkan Nilai Mata Kuliah 3: "
set /p "nilai4=Masukkan Nilai Mata Kuliah 4: "
set /p "nilai5=Masukkan Nilai Mata Kuliah 5: "

set "matkul1=B.Indonesia"
set "sks1=2"
set "huruf1="
set "bobot1=0"
if %nilai1% GEQ 80 (
  set "huruf1=A"
  set "bobot1=4"
) else if %nilai1% GEQ 75 (
  set "huruf1=AB"
  set "bobot1_int=3"
  set "bobot1_dec=5"
) else if %nilai1% GEQ 70 (
  set "huruf1=B"
  set "bobot1=3"
) else if %nilai1% GEQ 65 (
  set "huruf1=BC"
  set "bobot1_int=2"
  set "bobot1_dec=5"
) else if %nilai1% GEQ 60 (
  set "huruf1=C"
  set "bobot1=2"
) else if %nilai1% GEQ 55 (
  set "huruf1=CD"
  set "bobot1_int=1"
  set "bobot1_dec=5"
) else if %nilai1% GEQ 50 (
  set "huruf1=D"
  set "bobot1=1"
) else (
  set "huruf1=E"
  set "bobot1=0"
)
if defined bobot1_int (
  set "bobot1=!bobot1_int!,!bobot1_dec!"
)
set "matkul2=B.Inggris"
set "sks2=2"
set "huruf2="
set "bobot2=0"
if %nilai2% GEQ 80 (
  set "huruf2=A"
  set "bobot2=4"
) else if %nilai2% GEQ 75 (
  set "huruf2=AB"
  set "bobot2_int=3"
  set "bobot2_dec=5"
) else if %nilai2% GEQ 70 (
  set "huruf2=B"
  set "bobot2=3"
) else if %nilai2% GEQ 65 (
  set "huruf2=BC"
  set "bobot2_int=2"
  set "bobot2_dec=5"
) else if %nilai2% GEQ 60 (
  set "huruf2=C"
  set "bobot2=2"
) else if %nilai2% GEQ 55 (
  set "huruf2=CD"
  set "bobot2_int=1"
  set "bobot2_dec=5"
) else if %nilai2% GEQ 50 (
  set "huruf2=D"
  set "bobot2=1"
) else (
  set "huruf2=E"
  set "bobot2=0"
)
if defined bobot2_int (
  set "bobot2=!bobot2_int!,!bobot2_dec!"
)

set "matkul3=Kalkulus 1"
set "sks3=3"
set "huruf3="
set "bobot3=0"
if %nilai3% GEQ 80 (
  set "huruf3=A"
  set "bobot3=4"
) else if %nilai3% GEQ 75 (
  set "huruf3=AB"
  set "bobot3_int=3"
  set "bobot3_dec=5"
) else if %nilai3% GEQ 70 (
  set "huruf3=B"
  set "bobot3=3"
) else if %nilai3% GEQ 65 (
  set "huruf3=BC"
  set "bobot3_int=2"
  set "bobot3_dec=5"
) else if %nilai3% GEQ 60 (
  set "huruf3=C"
  set "bobot3=2"
) else if %nilai3% GEQ 55 (
  set "huruf3=CD"
  set "bobot3_int=1"
  set "bobot3_dec=5"
) else if %nilai3% GEQ 50 (
  set "huruf3=D"
  set "bobot3=1"
) else (
  set "huruf3=E"
  set "bobot3=0"
)
if defined bobot3_int (
  set "bobot3=!bobot3_int!,!bobot3_dec!"
)

set "matkul4=Komputer Grafis"
set "sks4=3"
set "huruf4="
set "bobot4=0"
if %nilai4% GEQ 80 (
  set "huruf4=A"
  set "bobot4=4"
) else if %nilai4% GEQ 75 (
  set "huruf4=AB"
  set "bobot4_int=3"
  set "bobot4_dec=5"
) else if %nilai4% GEQ 70 (
  set "huruf4=B"
  set "bobot4=3"
) else if %nilai4% GEQ 65 (
  set "huruf4=BC"
  set "bobot4_int=2"
  set "bobot4_dec=5"
) else if %nilai4% GEQ 60 (
  set "huruf4=C"
  set "bobot4=2"
) else if %nilai4% GEQ 55 (
  set "huruf4=CD"
  set "bobot4_int=1"
  set "bobot4_dec=5"
) else if %nilai4% GEQ 50 (
  set "huruf4=D"
  set "bobot4=1"
) else (
  set "huruf4=E"
  set "bobot4=0"
)
if defined bobot4_int (
  set "bobot4=!bobot4_int!,!bobot4_dec!"
)

set "matkul5=Pemrograman Dasar"
set "sks5=4"
set "huruf5="
set "bobot5=0"
if %nilai5% GEQ 80 (
  set "huruf5=A"
  set "bobot5=4"
) else if %nilai5% GEQ 75 (
  set "huruf5=AB"
  set "bobot5_int=3"
  set "bobot5_dec=5"
) else if %nilai5% GEQ 70 (
  set "huruf5=B"
  set "bobot5=3"
) else if %nilai5% GEQ 65 (
  set "huruf5=BC"
  set "bobot5_int=2"
  set "bobot5_dec=5"
) else if %nilai5% GEQ 60 (
  set "huruf5=C"
  set "bobot5=2"
) else if %nilai5% GEQ 55 (
  set "huruf5=CD"
  set "bobot5_int=1"
  set "bobot5_dec=5"
) else if %nilai5% GEQ 50 (
  set "huruf5=D"
  set "bobot5=1"
) else (
  set "huruf5=E"
  set "bobot5=0"
)

if defined bobot5_int (
  set "bobot5=!bobot5_int!,!bobot5_dec!"
)

for /F "tokens=1,2 delims=," %%a in ("!bobot1!") do (
  set "bobot1_int=%%a"
  set "bobot1_dec=%%b"
)
set /a "hasil1=bobot1_int * sks1 + bobot1_dec * sks1 / 10"

for /F "tokens=1,2 delims=," %%a in ("!bobot2!") do (
  set "bobot2_int=%%a"
  set "bobot2_dec=%%b"
)
set /a "hasil2=bobot2_int * sks2 + bobot2_dec * sks2 / 10"

for /F "tokens=1,2 delims=," %%a in ("!bobot3!") do (
  set "bobot3_int=%%a"
  set "bobot3_dec=%%b"
)
set /a "hasil3=bobot3_int * sks3 + bobot3_dec * sks3 / 10"

for /F "tokens=1,2 delims=," %%a in ("!bobot4!") do (
  set "bobot4_int=%%a"
  set "bobot4_dec=%%b"
)
set /a "hasil4=bobot4_int * sks4 + bobot4_dec * sks4 / 10"

for /F "tokens=1,2 delims=," %%a in ("!bobot5!") do (
  set "bobot5_int=%%a"
  set "bobot5_dec=%%b"
)
set /a "hasil5=bobot5_int * sks5 + bobot5_dec * sks5 / 10"

set /a "total_sks=%sks1% + %sks2% + %sks3% + %sks4% + %sks5%"
set /a "total_hasil=%hasil1% + %hasil2% + %hasil3% + %hasil4% + %hasil5%"


cls
echo.
echo.
echo                                                                                KARTU HASIL STUDI
echo                                                                         UNIVERSITAS SELAMAT SRI BATANG 
echo                                                                     ---------------------------------------
echo.
echo                                                                             Nama           : %nama% 
echo                                                                             NIM            : %nim%            
echo                                                                             Prodi          : %prodi%  
echo.
echo                                                     ------------------------------------------------------------------
echo                                                     ^| NO. ^|    Mata Kuliah    ^| Nilai  ^| Huruf ^| Bobot ^| SKS ^| Hasil ^|
echo                                                     ------------------------------------------------------------------
echo                                                     ^| 1.  ^| B.Indonesia       ^|   %nilai1%   ^|   %huruf1%   ^|  %bobot1%  ^|  2  ^|   %hasil1%  ^|
echo                                                     ^| 2.  ^| B.Inggris         ^|   %nilai2%   ^|   %huruf2%   ^|  %bobot2%  ^|  2  ^|   %hasil2%  ^|
echo                                                     ^| 3.  ^| Kalkulus 1        ^|   %nilai3%   ^|   %huruf3%   ^|  %bobot3%  ^|  3  ^|   %hasil3%  ^|
echo                                                     ^| 4.  ^| Komputer Grafis   ^|   %nilai4%   ^|   %huruf4%   ^|  %bobot4%  ^|  3  ^|   %hasil4%  ^|
echo                                                     ^| 5.  ^| Pemrograman Dasar ^|   %nilai5%   ^|   %huruf5%   ^|  %bobot5%  ^|  4  ^|   %hasil5%  ^|
echo                                                     ------------------------------------------------------------------
echo                                                                                            Jumlah :      %total_sks%     %total_hasil% 
echo.
set /a "ips=(100 * %total_hasil% )   / %total_sks%"
echo.
echo                                                    INDEKS PRESTASI SEMESTER: %ips:~0,-2%,%ips:~-2%
echo.
echo.

echo.>>KHS.txt
echo                                                                                KARTU HASIL STUDI>>penilaian.txt
echo                                                                        UNIVERSITAS SELAMAT SRI BATANG>>penilaian.txt 
echo                                                                    --------------------------------------->>penilaian.txt
echo.
echo                                                                                Nama      : %nama%>>penilaian.txt 
echo                                                                                NIM       : %nim%>>penilaian.txt            
echo                                                                                Prodi     : %prodi%>>penilaian.txt  
echo.
echo                                                     ------------------------------------------------------------------>>penilaian.txt
echo                                                     ^| NO. ^|    Mata Kuliah    ^| Nilai  ^| Huruf ^| Bobot ^| SKS ^| Hasil ^|>>penilaian.txt
echo                                                     ------------------------------------------------------------------>>penilaian.txt
echo                                                     ^| 1.  ^| B.Indonesia       ^|   %nilai1%   ^|   %huruf1%   ^|   %bobot1%   ^|  2  ^|   %hasil1%  ^|>>penilaian.txt
echo                                                     ^| 2.  ^| B.Inggris         ^|   %nilai2%   ^|   %huruf2%   ^|   %bobot2%   ^|  2  ^|   %hasil2%  ^|>>penilaian.txt
echo                                                     ^| 3.  ^| Kalkulus 1        ^|   %nilai3%   ^|   %huruf3%   ^|   %bobot3%   ^|  3  ^|   %hasil3%  ^|>>penilaian.txt
echo                                                     ^| 4.  ^| Komputer Grafis   ^|   %nilai4%   ^|   %huruf4%   ^|   %bobot4%   ^|  3  ^|   %hasil4%  ^|>>penilaian.txt
echo                                                     ^| 5.  ^| Pemrograman Dasar ^|   %nilai5%   ^|   %huruf5%   ^|   %bobot5%   ^|  4  ^|   %hasil5%  ^|>>penilaian.txt
echo                                                     ------------------------------------------------------------------>>penilaian.txt
echo.
echo                                                                                             Jumlah :      %total_sks%     %total_hasil%>>penilaian.txt 
echo.
set /a "ips=(100 * %total_hasil% )   / %total_sks%"
echo.
echo                                                     INDEKS PRESTASI SEMESTER: %ips:~0,-2%,%ips:~-2%>>penilaian.txt
echo                                                    ---------------------------------->>penilaian.txt
echo.

pause
goto menu_akademik



:menu_perhitungan
color 0a
cls
echo. 
echo                                                             ======================================
echo                                                                   Menu Aplikasi Perhitungan
echo.
echo                                                                   1. Kalkulator Sederhana
echo                                                                   2. Luas Bangun Datar
echo                                                                   3. Volume Bangun Ruang
echo.
echo                                                            ======================================
echo                                                                   4. Kembali ke Menu Utama
echo.

set /p choice= Silahkan Masukkan pilihan Kamu: 

if "%choice%"=="1" (
    call :fillmenu1
) else if "%choice%"=="2" (
    call :fillmenu2
) else if "%choice%"=="3" (
    call :fillmenu3
) else if "%choice%"=="4" (
    goto menu_utama
) else (
    echo Pilihan tidak valid!
    pause >nul
    goto menu
)
exit /b

:fillmenu1
color 0c
cls
echo. 
echo                                      ~~~~~~ Menu Kalkulator Sederhana ~~~~~~~~
echo.
echo                                                1. Penjumlahan
echo                                                2. Pengurangan
echo                                                3. Perkalian
echo                                                4. Pembagian
echo                                                5. Pangkat Dua
echo                                                6. Kembali
echo.

set /p submenu_choice=Masukkan pilihan (1-3):

if "%submenu_choice%"=="1" (
    call :penjumlahan
    goto fillmenu1
) else if "%submenu_choice%"=="2" (
    call :pengurangan
    goto fillmenu1
) else if "%submenu_choice%"=="3" (
    call :perkalian
    goto fillmenu1
) else if "%submenu_choice%"=="4" (
    call :pembagian
    goto fillmenu1
) else if "%submenu_choice%"=="5" (
    call :pangkat_dua
    goto fillmenu1
) else if "%submenu_choice%"=="6" (
    goto menu_perhitungan
) else (
    echo Pilihan tidak valid!
    pause 
    goto fillmenu1
)

:penjumlahan
color 0e
cls
echo.
echo                                ~~~~~ Masukkan Nilai yang Ingin DiJumlahkan ~~~~~
echo. 
set /p A= Masukkan Nilai A = 
set /p B= Masukkan Nilai B = 
set /a penjumlahan=%A% + %B% 
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo Hasil Penjumlahanya Adalah = %penjumlahan%
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
pause
exit /b

:pengurangan
color 0e
cls
echo.
echo                               ~~~~~ Masukkan Nilai yang Ingin DiKurangkan ~~~~~
echo. 
set /p A= Masukkan Nilai A = 
set /p B= Masukkan Nilai B = 
set /a pengurangan=%A% - %B% 
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo   Hasil Pengurangannya Adalah = %pengurangan%
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
pause
exit /b

:perkalian
color 0e
cls
echo.
echo                               ~~~~~ Masukkan Nilai yang Ingin DiKalikan ~~~~~
echo. 
set /p A= Masukkan Nilai A = 
set /p B= Masukkan Nilai B = 
set /a perkalian=%A% * %B% 
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo   Hasil Perkaliannya Adalah = %perkalian%
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
pause
exit /b

:pembagian
color 0e
cls
echo.
echo                                ~~~~~ Masukkan Nilai yang Ingin DiBagi ~~~~~
echo. 
set /p A= Masukkan Nilai A = 
set /p B= Masukkan Nilai B =
set /a pembagian=%A% / %B% 
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo   Hasil Pembagiannya Adalah = %pembagian%
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
pause
exit /b

:pangkat_dua
color 0e
cls
echo.
echo                               ~~~~~ Masukkan Nilai yang Ingin DiJumlahkan ~~~~~
echo. 
set /p A= Masukkan Nilai yang Akan di Pangkatkan = 
set /a pengkat=%A% * %A% 
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo   Hasil Pangkat Dua.nya Adalah = %pengkat%
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
pause
exit /b

:fillmenu2
color 0c
cls
echo. 
echo                                        ****** Menu Perhitungan Luas Bangun Datar ******
echo.
echo                                                        1. Luas Segitiga
echo                                                        2. Luas Persegi Panjang
echo                                                        3. Kembali
echo.

set /p submenu_choice=Silahkan Masukkan pilihan Kamu:

if "%submenu_choice%"=="1" (
    call :hitung_luas_segitiga
    goto fillmenu2
) else if "%submenu_choice%"=="2" (
    call :hitung_luas_persegi_panjang
    goto fillmenu2
) else if "%submenu_choice%"=="3" (
    goto menu_perhitungan
) else (
    echo Pilihan tidak valid. Silakan coba lagi.
    pause
    goto menu_perhitungan
)

:hitung_luas_segitiga
color 0e
cls
echo.
echo                                            *****************************************
echo                                                  INPUT NILAI ALAS DAN TINGGI 
echo                                            *****************************************
echo.
set /p alas=Masukkan Nilai Alas   : 
set /p tinggi=Masukkan Nilai Tinggi : 

rem ===========Setting Perhitungan=======
set /a luas=alas*tinggi/2

if %luas% GEQ 500 (
    set grade=Besar
) else if %luas% GEQ 100 (
    set grade=Sedang
) else (
    set grade=Kecil
)

cls
rem ===========Output=========================
echo. 
echo                                                *****************************************
echo                                                         PERHITUNGAN LUAS SEGITIGA
echo                                                *****************************************
echo                                                          Alas   : %alas%
echo                                                          Tinggi : %tinggi%
echo. 
echo                                                *****************************************
echo                                                 Luas Segitiga tersebut adalah : %luas%
echo.
echo                                                 Kategori Bangunannya adalah   : %grade%
echo                                                ******************************************
pause
exit /b

:hitung_luas_persegi_panjang
color 0e
cls
echo.
echo                                                  ************************************
echo                                                    INPUT PANJANG DAN LEBAR BANGUNAN 
echo                                                  ************************************
echo.
set /p p= masukkan Panjang Bangunan :
set /p l= masukkan Lebar Bangunan   :

set /a luas=p*l

if %luas% GEQ 500 (
    set grade=Besar
) else if %luas% GEQ 100 (
    set grade=Sedang
) else (
    set grade=Kecil
)

cls
rem output
echo.
echo                                                         ********************************
echo                                                               Data Luas Bangunan
echo                                                         ********************************
echo                                                            Panjang Bangunan     :%p%
echo                                                            Lebar Bangunan       :%l%
echo                                                            Luas Bangunan        :%luas%
echo                                                            Kategori             :%grade%
echo                                                         *********************************

rem cetak
echo                                                        -------------------------->>hasil.txt
echo                                                           Data Luas Bangunan>>hasil.txt
echo                                                        -------------------------->>hasil.txt
echo                                                        Panjang Bangunan     :%p%>>hasil.txt
echo                                                        Lebar Bangunan       :%l%>>hasil.txt
echo                                                        Luas Bangunan        :%luas%>>hasil.txt
echo                                                        Kategori             :%grade%>>hasil.txt
echo                                                        -------------------------->>hasil.txt
pause
exit /b

:fillmenu3
color 0c
cls
echo. 
echo                                                 -------- Menu Perhitungan Volume Bangun Ruang --------
echo.
echo                                                                        1. Balok
echo                                                                        2. Kubus
echo                                                                        3. Kembali
echo. 

set /p submenu_choice=Masukkan pilihan (1-3):

if "%submenu_choice%"=="1" (
    call :hitung_volume_balok
    goto fillmenu3
) else if "%submenu_choice%"=="2" (
    call :hitung_volume_kubus
    goto fillmenu3
) else if "%submenu_choice%"=="3" (
    goto menu_perhitungan
) else (
    echo Pilihan tidak valid. Silakan coba lagi.
    pause
    goto menu
)

:hitung_volume_balok
color 0e
cls
echo.
echo                                                  ------- INPUT PANJANG LEBAR DAN TINGGI BALOK -------
echo.
set /p length=Masukkan panjang balok: 
set /p width=Masukkan lebar balok: 
set /p height=Masukkan tinggi balok: 

set /a volume=%length% * %width% * %height%

echo.
echo ------------------------------------
echo   Volume Balok tersebut adalah : %volume%
echo ------------------------------------
echo.
pause
exit /b

:hitung_volume_kubus
color 0e
cls
echo.
echo                                                  ------- INPUT PANJANG SISI KUBUS -------
echo.
set /p side=Masukkan panjang sisi kubus: 
set /a volume=%side% * %side% * %side%

echo.
echo -----------------------------------
echo  Volume Kubus tersebut adalah : %volume%
echo -----------------------------------
echo.
pause
exit /b

:menu_perbaikan
color 87
cls
echo.
echo                                              ____________________________________
echo                                                     Menu Perbaikan Komputer
echo                                              ____________________________________
echo.
echo                                                        1. Perbaiki Audio
echo                                                        2. Disk Cleanup
echo                                                        3. Mereset Jaringan
echo                                                        4. Mereset Firewall
echo                                              ____________________________________
echo                                                        5. Kembali ke Menu Utama
echo                                              ____________________________________
echo.

set /p choice=Masukkan pilihan (1-5): 

if "%choice%"=="1" goto scan_disk
if "%choice%"=="2" goto disk_cleanup
if "%choice%"=="3" goto defrag_hard_drive
if "%choice%"=="4" goto perbaiki_mbr
if "%choice%"=="5" goto menu_utama
echo Pilihan tidak valid.
goto menu_perbaikan

:scan_disk
echo.
echo Melakukan perbaikan audio...
echo.
net stop Audiosrv
net start Audiosrv
echo.
echo Perbaikan audio selesai.
pause
goto menu_perbaikan

:disk_cleanup
echo.
echo Menjalankan Disk Cleanup...
cleanmgr /d C:
echo.
pause
goto menu_perbaikan

:defrag_hard_drive
echo Mereset Jaringan...
netsh winsock reset
netsh int ip reset
echo Reset jaringan selesai.
pause
goto menu_perbaikan

:perbaiki_mbr
echo.
echo Mereset Firewall...
netsh advfirewall reset
echo Reset firewall selesai.
pause
goto menu_perbaikan

:menu_jaringan
color 27
cls
echo                                                                #############################
echo                                                                   Menu Jaringan Komputer
echo                                                                #############################
echo.
echo                                                                   1. Cek Koneksi Internet
echo                                                                   2. Periksa WIFI
echo                                                                   3. Tampilkan Alamat IP
echo                                                                   4. Ping ke Host
echo                                                                   5. Informasi Adapter Jaringan
echo.
echo                                                                #############################
echo                                                                   6. Kembali ke Menu Utama
echo                                                                #############################
echo.

set /p choice=Silahkan Masukkan Pilihan Kamu: 

if "%choice%"=="1" (
    call :check_connection
) else if "%choice%"=="2" (
    call :periksa_ip
) else if "%choice%"=="3" (
    call :tampilkan_ip
) else if "%choice%"=="4" (
    call :ping_host
) else if "%choice%"=="5" (
    call :traceroute_host
) else if "%choice%"=="6" (
    goto menu_utama
) else (
    echo Pilihan tidak valid.
    goto menu_jaringan
)

goto menu_jaringan

:check_connection
color 97
cls
echo Memeriksa koneksi internet...

ping www.google.com -n 1 >nul

if %errorlevel%==0 (
    echo Koneksi internet terhubung.
) else (
    echo Koneksi internet terputus.
)

pause
goto :eof

:periksa_ip
color 97
cls
echo.
echo Menjalankan WIFI
netsh wlan show networks mode=bssid
echo.
pause
goto :eof

:tampilkan_ip
color 97
cls
echo.
echo Menampilkan alamat IP Anda:
ipconfig | findstr /i "IPv4"
pause
goto :eof

:ping_host
color 97
cls
echo.
set /p host=Masukkan alamat host yang akan di-ping: 
echo.
echo Menjalankan ping ke %host%...
ping %host%
echo.
pause
goto :eof

:traceroute_host
color 97
cls
echo. 
echo.
echo Menampilkan informasi adapter jaringan...
wmic nic get Name, Speed, NetConnectionStatus
pause
goto :eof

:menu_aplikasi
color b1
cls
echo                                                     ---------------------------------------
echo                                                                   KAMU BERADA          
echo                                                                 DI MENU APLIKASI  
echo                                                     ---------------------------------------
echo.
echo                                                    Silahkan Pilih Aplikasi Yang Kamu Inginkan
echo.       
echo                                                                1. Aplikasi Office
echo                                                                2. Aplikasi Browser
echo                                                                3. Aplikasi Text Editor
echo.
echo                                                    ----------------------------------------
echo                                                                4. Kembali ke Menu Utama
echo                                                    ----------------------------------------
echo.

set /p choice=Masukkan pilihan kamu: 

if "%choice%"=="1" (
    call :submenu1
) else if "%choice%"=="2" (
    call :submenu2
) else if "%choice%"=="3" (
    call :submenu3 
 ) else if "%choice%"=="4" (
    goto menu_utama
) else (
    echo Pilihan tidak valid!
    pause >nul
    goto menu
)
exit /b

:submenu1
color 60
cls
echo.
echo                                                        Kamu Berada di Menu Aplikasi Office 
echo                                                        ____________________________________
echo.
echo                                                                   1. Word
echo                                                                   2. Exel
echo                                                                   3. Power Point
echo                                                        ____________________________________
echo                                                                   4. Kembali
echo.  

set /p submenu_choice=Silahkan Masukkan pilihan Kamu:

if "%submenu_choice%"=="1" (
    start "Microsoft Word" "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE"
    goto submenu1
    pause >nul
) else if "%submenu_choice%"=="2" (
    start "Microsoft Excel" "C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE"
    pause >nul
    goto submenu1
) else if "%submenu_choice%"=="3" (
    start "Microsoft PowerPoint" "C:\Program Files\Microsoft Office\root\Office16\POWERPNT.EXE"
    pause >nul
    goto submenu1
) else if "%submenu_choice%"=="4" (
    goto menu_aplikasi  
) else (
    echo Pilihan tidak valid!
    pause >nul
    goto submenu1
)
exit /b

:submenu2
color 60
cls
echo. 
echo                                                         Kamu berada di Menu Aplikasi Browser
echo                                                       _________________________________________
echo.
echo                                                                      1. Chrome
echo                                                                      2. Mozilla Firefox
echo                                                                      3. Microsoft Edge
echo                                                       __________________________________________
echo                                                                      4. Kembali
echo.  


set /p submenu_choice=Silahkan Masukkan Pilihan Kamu:

if "%submenu_choice%"=="1" (
    "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
    pause >nul
    goto submenu2
) else if "%submenu_choice%"=="2" (
    "C:\Program Files (x86)\Mozilla firefox\firefox.exe"
    pause >nul
    goto submenu2
) else if "%submenu_choice%"=="3" (
    "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
    pause >nul
    goto submenu2
) else if "%submenu_choice%"=="4" (
    goto menu_aplikasi
) else (
    echo Pilihan tidak valid!
    pause >nul
    goto submenu2
)
exit /b

:submenu3
color 60
cls
echo.
echo                                                         Kamu Berada di Menu Aplikasi Text Editor 
echo                                                        ___________________________________________
echo.
echo                                                                   1. Sublime Text
echo                                                                   2. Notepadd
echo                                                        ___________________________________________
echo                                                                   3. Kembali
echo.

set /p submenu_choice=Silahkan Masukkan Pilihan Kamu:

if "%submenu_choice%"=="1" (
    start "Sublime Text" "C:\Program Files\Sublime Text 3\sublime_text.exe"
    goto submenu3
    pause >nul
) else if "%submenu_choice%"=="2" (
    start notepad.exe
    pause >nul
    goto submenu3
) else if "%submenu_choice%"=="3" (
    goto menu_aplikasi  
) else (
    echo Pilihan tidak valid!
    pause >nul
    goto submenu3
)
exit /b

:menu_setting
color d7
cls
echo                                                               -------------------------------
echo                                                                        SETTING KOMPUTER     
echo                                                               -------------------------------
echo.
echo                                                                    [1] Setting Keyboard
echo                                                                    [2] Setting Language
echo                                                                    [3] Setting Date
echo                                                                    [4] Add user
echo                                                                    [5] Sound Control
echo                                                                    [6] Open Startup
echo                                                                    [7] Sleep
echo                                                                    [8] Restart
echo                                                                    [9] Shutdown 
echo.
echo                                                               -------------------------------
echo                                                                    [10] Kembali 
echo                                                               -------------------------------
echo.
set /p "pilihanmenu=Silahkan Masukkan Pilihan Kamu: "
if %pilihanmenu%==1 goto Keyboard
if %pilihanmenu%==2 goto Language
if %pilihanmenu%==3 goto Date
if %pilihanmenu%==4 goto user
if %pilihanmenu%==5 goto Sound
if %pilihanmenu%==6 goto Startup
if %pilihanmenu%==7 goto Sleep
if %pilihanmenu%==8 goto Restart
if %pilihanmenu%==9 goto Shutdown
if %pilihanmenu%==10 goto menu_utama


:Keyboard
cls
start control Keyboard
goto menu_setting
pause
:Language
cls
start intl.cpl
goto menu_setting
pause
:Date
cls
start timedate.cpl
goto menu_setting
pause
:user
cls
start Netplwiz.exe
goto menu_setting
pause
:Sound 
cls
start SndVol.exe
goto menu_setting
pause
:Startup
cls
start msconfig
goto menu_setting
pause
:Sleep
echo.
echo Komputer akan masuk ke mode Sleep dalam 30 detik.
shutdown /h /t 30
echo.
pause
:Restart
echo.
echo Komputer akan direstart dalam 30 detik.
shutdown /r /t 30
echo.
pause
:Shutdown
echo.
echo Komputer akan dimatikan dalam 30 detik.
shutdown /s /t 30
echo.
pause


:keluar
color 1b
cls
echo.
echo.
echo.
echo.
echo                                                                  ######  #   #    ##    ##  #  # #    #  #  ### #  #
echo                                                                    #     #####   ####   # # #  ##      ##   # # #  #
echo                                                                    #     #   #  #    #  #  ##  # #     #    ### ####
echo.
echo.
echo                                                                          ####  #### #       # #  #     ##
echo                                                                          #     #    ##      # #  #    #  #
echo                                                                          ####  #### # #   # # #  #   ######
echo                                                                             #  #    #  # #  # #  #  #      #
echo                                                                          ####  #### #   #   # #### #        #
echo.
echo **********************************************************************************************************************************************************************************
pause >nul
