from datetime import datetime
import pandas as pd
import os
from utils.connectionDBUtils import connect_db 
from utils.insertDBUtils import insert_db

startTime = datetime.now()

con, cur = connect_db()

for file in os.listdir("input_files"):

    
    filename, file_extension = os.path.splitext(file)
    file_path = "input_files/" + filename + file_extension
    if file_extension != ".tsv":
        continue
    df = pd.read_csv(file_path, sep='\t')

    insert_db(df, filename, con, cur)

con.close()

time_elapsed = datetime.now() - startTime
print("Tempo: " + str(time_elapsed) + " || Data: " + str(datetime.now()))