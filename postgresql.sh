# install postgresql
sudo dnf install -y postgresql-server \
                    postgresql-contrib

# enable postgresql
sudo systemctl enable postgresql

# initialize postgresql
sudo postgresql-setup --initdb --unit postgresql

# start postgresql server
sudo systemctl start postgresql

# ident errors https://serverfault.com/questions/406606/postgres-error-message-fatal-ident-authentication-failed-for-user?newreg=a4fdc3e21349449985cc65b82399c5b4
# sudo micro /var/lib/psql/data/pg_hba.conf
# 'host all all 127.0.0.1/32 ident' to 'host all all 127.0.0.1/32 md5'
# sudo -i -u postgres
# psql
# ALTER USER postgres WITH PASSWORD 'postgres';