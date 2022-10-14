FROM python:3.10-slim
WORKDIR /app
COPY . /app
RUN apt-get -y update && apt-get -y install build-essential
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD python run.py 
EXPOSE 5000
