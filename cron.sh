curl -Os https://www.internic.net/domain/root.zone
git add root.zone
git commit -m "https://www.internic.net/domain/root.zone"
git push
git -c color.ui=always log -p --pretty -4 | aha -b -t "IANA TLD history." >/var/www/html/yamk/zone/index.html
