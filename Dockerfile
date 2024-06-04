FROM python:3.11-slim

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

WORKDIR /app/

COPY requirements.txt /app/
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 8000
CMD [ "uvicorn", "--host", "0.0.0.0", "--port", "8000", "main:app", "--reload" ]
