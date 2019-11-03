cd /var/www/html/unpr/root-zone-watch
PATH=/home/unpr/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/unpr/.dotnet/tools:/home/unpr/.dotnet/tools
curl -s https://www.internic.net/domain/root.zone|egrep -v "(RRSIG|SOA)">root.zone
git add root.zone
git commit -m "https://www.internic.net/domain/root.zone"
git push
git -c color.ui=always log -p --pretty -4 | aha -b -t "IANA TLD history." >/var/www/html/yamk/zone/index.html
