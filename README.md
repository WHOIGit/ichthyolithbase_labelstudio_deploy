# ichthyolithbase_labelstudio_deploy

This is LabelStudio server deployment configuration for Elizabeth Sibert's IchthyolithBase.
It assumes the server already has apache2 and docker/compose installed.
See [ichthyolithbase_labelstudio_tools](https://github.com/WHOIGit/ichthyolithbase_labelstudio_tools) for supporting scripts.


## Installation
```
git clone git@github.com:WHOIGit/ichthyolithbase_labelstudio_deploy.git /opt/labelstudio
cd /opt/labelstudio
ln -s /opt/labelstudio/apache2/ichthyolith.conf /etc/apache2/sites-available
a2enmod proxy proxy_http
a2ensite ichthyolith
systemctl restart apache2
cp dotenv .env
nano .env  # enter real configuration values
docker compose build
docker compose up -d
```
