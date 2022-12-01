FROM python:3.9

ENV HOME /app
WORKDIR $HOME

COPY requirements.txt .
RUN python3 -m pip install --no-cache -r requirements.txt

COPY . .

#CMD ["python", "run.py"]

ENTRYPOINT ["sh", "entrypoint.sh"]