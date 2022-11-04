# app/Dockerfile

FROM python:3.9-slim

EXPOSE 8501

WORKDIR /app

COPY . .

RUN pip3 install -r requirements.txt

ENTRYPOINT ["streamlit", "run", "Hello.py"]