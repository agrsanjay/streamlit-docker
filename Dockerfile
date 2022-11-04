FROM python:3.9.8
LABEL maintainer="Somil"

EXPOSE 8501

WORKDIR /app
COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install streamlit
RUN pip install -r requirements.txt

COPY ./src /files
ENTRYPOINT [ "streamlit", "run"]
CMD ["/files/Hello.py"]
