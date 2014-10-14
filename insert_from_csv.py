#!/usr/bin/python
########################################################################
# insert_from_csv.py
# Description: Get data from CSV files and dump to Postgresql.
#              Table names are derived from CSV file names
# Configuration: First load CSV files to ./output; set up db connection 
# Usage: insert_from_csv.py
# License: WTFPL
# History:
# Date           Name            Modification
# ----------------------------------------------------------------------
# 10/13/2014     dw              Initial development
########################################################################

import re, os, pandas, psycopg2
from sqlalchemy import create_engine

# Configure the two lines below lines
csv_directory = './output'
db_connection = 'postgresql://postgres:secret@localhost:5432/testimport'

def import_data(data_frame, table_name):
  sql_engine = create_engine(db_connection)
  data_frame.to_sql(table_name, sql_engine)
  return

def read_data():
  return

def main():
  files = os.listdir(csv_directory)
  for file_name in files:
    file_location = csv_directory + '/' + file_name
    df_data = pandas.read_csv(file_location)
    table_label = file_name
    imported = import_data(df_data, table_label)
  print "Done importing files to table. Check table."
  return

if __name__ == "__main__": main()
