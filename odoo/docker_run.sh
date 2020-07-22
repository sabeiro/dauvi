docker run -d -e POSTGRES_DB=postgres -e POSTGRES_USER=odoo -e POSTGRES_PASSWORD=odoo  --name db postgres:10
docker run -p 8069:8069 -d --link db:db --name=odoo  odoo:13
docker logs -f odoo
