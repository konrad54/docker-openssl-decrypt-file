#!/bin/sh

FILE=$backupfile
FILE_ZIP_DATA=${FILE%.*}
PATH_BACKUP=/data/backup/

echo "Files and Paths..."
echo "FILE: " $FILE
echo "FILE_ZIP_DATA: " $FILE_ZIP_DATA
echo "PATH_BACKUP: " $PATH_BACKUP

echo "decrypt..."
openssl smime -decrypt -in ${PATH_BACKUP}${FILE} -binary -inform DEM -inkey /ldapbackup-secure.priv.pem -out ${PATH_BACKUP}${FILE_ZIP_DATA}

exit 0
