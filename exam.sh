#!/bin/bash

mkdir tempdir
mkdir tempdir/templates

cp exam.py tempdir/.
cp -r templates/* tempdir/templates/

echo "FROM python" >> tempdir/Dockerfile
echo "RUN pip3 install flask" >> tempdir/Dockerfile
echo "COPY ./templates /home/myapp/templates/" >> tempdir/Dockerfile
echo "COPY exam.py /home/myapp/" >> tempdir/Dockerfile
echo "EXPOSE 5050" >> tempdir/Dockerfile
echo "CMD python /home/myapp/exam.py" >> tempdir/Dockerfile

cd tempdir
docker build -t appexam .
docker run -t -d -p 5050:5050 --name apprunning appexam
docker ps -a 