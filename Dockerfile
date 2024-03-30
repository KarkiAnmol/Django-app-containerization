From ubuntu

WORKDIR /app

Copy requirements.txt /app
Copy webapp /app

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip install -r requirements.txt && \
    cd webapp

ENTRYPOINT ["python3"]
CMD ["manage.py","runserver","0.0.0.0:8000"]
