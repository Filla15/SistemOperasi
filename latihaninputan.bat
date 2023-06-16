@echo off

title latihan 7 inputan

rem Variable dan inputan
set /p nim= masukkan NIM anda :
set /p nama= masukkan nama anda :
set /p prodi= masukkan prodi anda :
set /p kelas= masukkan kelas anda :
set /p kampus= masukkan kampus anda :

rem output
echo --------------------------
echo   Data Mahasiswa Uniss
echo --------------------------
echo nim      :%nim%
echo nama     :%nama%
echo prodi    :%prodi%
echo kelas    :%kelas%
echo kampus   :%kampus%
echo --------------------------
pause