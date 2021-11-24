FROM python
COPY ./requirements.txt /home/myapp/
RUN pip install -r /home/myapp/requirements.txt
COPY ./templates /home/myapp/templates/
COPY exam.py /home/myapp/
EXPOSE 5050
CMD python /home/myapp/exam.py
