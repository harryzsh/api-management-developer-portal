@REM Capture the content of an API Management portal into data_file - incl. pages, layouts, configuration, etc. but excluding media files

set management_endpoint="management.harrytest.xyz"
set access_token="SharedAccessSignature integration&202005071123&M7jkNTYMWWo9NuDEJDhJtALKlBZNYYocKQpnO8gkj9YwC/v+vwsx2FzbKrthdP/AWBuzXBcSw8yw662UsLtFQA=="
set data_file="../dist/harryDevPortalBackup_data.json"

node ./capture %management_endpoint% %access_token% %data_file%