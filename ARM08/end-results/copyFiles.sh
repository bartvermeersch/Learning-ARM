echo "script starts"
wget --no-check-certificate -O UrlShortener_600.png "http://fboucherdemo.blob.core.windows.net/temp/UrlShortener_600.png"
curl -fsSL "http://fboucherdemo.blob.core.windows.net/temp/UrlShortener_600.png"
FILE=./UrlShortener_600.png
if [ -f "$FILE" ] then
	az storage container create --auth-mode key  --account-name frankextra4lyrd --name images --account-key $1
	az storage blob upload --file ./UrlShortener_600.png --container-name images  --name UrlShortener.png --account-name frankextra4lyrd --account-key $1
else
	echo "The file does not exist"
fi
echo "done... yeah."