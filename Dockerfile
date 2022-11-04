FROM python:3.7.2-slim
LABEL maintainer="Somil"

EXPOSE 8501

WORKDIR /app
COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install streamlit
RUN pip install -r requirements.txt

ENTRYPOINT [ "streamlit", "run"]
CMD ["Hello.py"]
