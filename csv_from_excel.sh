#!/bin/bash
########################################################################
# csv_from_excel.sh
# Description: Dump XLSX worksheets to CSV files
# Requires: xlsx2csv (https://github.com/dilshod/xlsx2csv)
# Configuration: Put XLSX files in ./input; Any # of sheets/book is ok
#                CSV file names are derived from XLSX sheet names.
#                If only some sheets are needed per book, modify options
# Usage: csv_from_els.sh
# License: This script is WTFPL, though xlsx2csv is GPLv2+
# History:
# Date           Name            Modification
# ----------------------------------------------------------------------
# 10/13/2014     dw              Initial development
########################################################################
# Convert to CSV from Excel

for e in ./input/*.xlsx; do python xlsx2csv.py -a "$e" output; done
