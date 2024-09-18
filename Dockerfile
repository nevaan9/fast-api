
# docker build -t fast-api .
# docker run -d -p 3006:3006 fast-api
FROM python:3.9

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./main.py /code/main.py

CMD ["fastapi", "run", "main.py", "--port", "3006"]