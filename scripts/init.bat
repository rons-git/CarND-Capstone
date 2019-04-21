cscript dos2unix.vbs "d:\onedrive\rons-git\carnd-capstone\dockerfile"
copy /y docker.sav docker.sh
cscript dos2unix.vbs "docker.sh"
cd ..
docker build . -t capstone
docker run -p 4567:4567 -v %cd%:/capstone -v /tmp/log:/root/.ros/ -e PYTHONUNBUFFERED=0 --rm -it capstone
exit

