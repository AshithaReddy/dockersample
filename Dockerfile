FROM python:3.9.7
RUN mkdir src
RUN cd src
WORKDIR /src
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY sample.py .
CMD ["python","sample.py"]