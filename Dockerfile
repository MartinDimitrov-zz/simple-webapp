FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python python-pip libpq-dev
RUN python -m pip install --upgrade pip setuptools wheel
RUN pip install flask
RUN pip install psycopg2 geojson nose coverage shapely mapbox-vector-tile
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080

