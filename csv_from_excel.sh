#!/bin/bash
########################################################################
# csv_from_excel.sh
# Description: Dump XLSX worksheets to CSV files
# Requires: unoconv to do headless libreoffice conversions
# Configuration: Put XLSX files in ./input; Any # of sheets/book is ok
#                CSV file names are derived from XLSX sheet names.
#                If only some sheets are needed per book, modify options
# Usage: csv_from_els.sh
# License: WTFPL 
# History:
# Date           Name            Modification
# ----------------------------------------------------------------------
# 10/13/2014     dw              Initial development
########################################################################
# Convert to CSV from Excel

for e in ./input/*.xlsx; do python xlsx2csv.py -a "$e" output; done
