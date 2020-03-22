import psycopg2

def connect_db():
    
    con = psycopg2.connect(host="localhost", user="postgres", password="admin", database="postgres", port = "5432")
    cur = con.cursor()

    return con, cur