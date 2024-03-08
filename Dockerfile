FROM python:3.8

WORKDIR /app

COPY ./TIDALDL-PY /app

RUN pip3 install wheel pyinstaller PyQt5 \
    && pip3 install -r requirements.txt --upgrade

WORKDIR /app/tidal_dl

RUN

CMD ["python3", "__init__.py"]
