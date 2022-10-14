FROM python:3.6.4-slim
WORKDIR /app
COPY . /app
RUN apt-get -y update && apt-get -y install build-essential
RUN pip install -r requirements.txt
CMD python app.py 
EXPOSE 5000
