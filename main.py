from datetime import datetime
import pandas as pd
# import MySQLdb
import psycopg2
import os
from io import StringIO



startTime = datetime.now()

con = psycopg2.connect(host="localhost", user="postgres", password="admin", database="postgres", port = "5432")
cur = con.cursor()

for file in os.listdir("input_files"):
    print(file)
    file_path = "input_files/" + file
    df = pd.read_csv(file_path, sep='\t')
    table_name = file.split(".")
    cur.execute('truncate indicium.' + table_name[0])

    sio = StringIO()
    sio.write(df.to_csv(index=None, header=None, sep='\t'))
    sio.seek(0)
    cur.copy_from(sio, "indicium." + table_name[0], columns=df.columns, sep='\t')
    con.commit()

time_elapsed = datetime.now() - startTime
print("Tempo: " + str(time_elapsed) + " || Data: " + str(datetime.now()))