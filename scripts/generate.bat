@REM Generate and provision default content of an API Management portal - incl. pages, layouts, configuration, media files, etc.

set management_endpoint="management.harrytest.xyz"
set access_token="SharedAccessSignature integration&202005071123&M7jkNTYMWWo9NuDEJDhJtALKlBZNYYocKQpnO8gkj9YwC/v+vwsx2FzbKrthdP/AWBuzXBcSw8yw662UsLtFQA=="
set storage_connection_string="DefaultEndpointsProtocol=https;AccountName=harryapimstorage;AccountKey=IW4PI0LKtCDDjWsPFk7d87dRaq8UTRU2Ok6Ecp0Q8PvuBuLx0e9hvV0F5wow0QJCfbSLUWKGqIRII63bF6s25g==;EndpointSuffix=core.windows.net"

set data_file="../dist/harryDevPortalBackup_data.json"
set media_folder="./media"

node ./generate %management_endpoint% %access_token% %data_file%
node ./upload %storage_connection_string% %media_folder%