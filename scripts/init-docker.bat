cscript dos2unix.vbs %cd%\dockerfile
copy /y docker.sav docker.sh
cscript dos2unix.vbs "docker.sh"
cd ..
docker build . -t capstone
docker run -p 4567:4567 -v %cd%:/capstone -v /tmp/log:/root/.ros/ --rm -it capstone
set /p=

