#!/bin/bash

#s3cmd --exclude=".git/*" sync --recursive --cf-invalidate --cf-invalidate-default-index --default-mime-type="text/html" --guess-mime-type ~/amberstones.net/yellowButton/web/* s3://yellow-button-web

TOP="/Users/k_bluehack/whatsit/whatsit-auth"
s3cmd sync --exclude=".git/*" --exclude="node_modules/*" --recursive --default-mime-type="text/html" --guess-mime-type $TOP/static/* s3://auth.whatsit.net -c ~/.s3cfg
