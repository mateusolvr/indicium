import psycopg2
import json

with open('config.json') as config_file:
    config = json.load(config_file)

def connect_db():
    
    con = psycopg2.connect(host=config["host"], user=config["user"], password=config["password"], database=config["dbname"], port = config["port"])
    con.autocommit = True
    cur = con.cursor()

    return con, cur