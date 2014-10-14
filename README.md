xlsx_csv_sql
============

xls_csv_sql is a two step method for putting Excel tables into Postgres.

1. csv_from_excel.sh

 -Bash uses xlsx2csv [1] Python program to convert XLSX files to CSVs.

2. insert_from_csv.py

 -Python uses pandas [2] module & others to import CSV files to Postgres.
 
The scripts are short and considered self documenting. Note: you may need to run insert_from_csv.py with sudo or otherwise ensure sufficient permissions.

The example ./input data is excerpts from https://data.cityofchicago.org

The example ./output data shows you can have multiple sheets per book.

[1] https://github.com/dilshod/xlsx2csv  https://pypi.python.org/pypi/xlsx2csv

[2] https://github.com/pydata/pandas  http://pandas.pydata.org

License: This software is WTFPL. (xlsx2csv is GPLv2+)

