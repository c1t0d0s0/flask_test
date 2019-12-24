FROM python:3.7-alpine
WORKDIR /code
ENV FLASK_APP main.py
ENV FLASK_RUN_HOST 0.0.0.0
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD ["flask", "run"]