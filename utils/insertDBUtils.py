from io import StringIO


def insert_db(df, filename, con, cur):

    cur.execute('truncate indicium.' + filename)
    
    sio = StringIO()
    sio.write(df.to_csv(index=None, header=None, sep='\t'))
    sio.seek(0)
    cur.copy_from(sio, "indicium." + filename, columns=df.columns, sep='\t')
    con.commit()

    return