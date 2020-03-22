import psycopg2

def connect_db():
    
    con = psycopg2.connect(host="db", user="postgres", password="admin", database="indicium", port = "5432")
    con.autocommit = True
    cur = con.cursor()

    return con, cur