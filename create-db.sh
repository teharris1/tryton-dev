docker run --name tryton-dev-db -p 5432:5432 -e POSTGRES_PASSWORD=password -e POSTGRES_DB=${DB_NAME:-tryton} -d postgres:17
sleep 15
tryton/trytond/bin/trytond-admin -c trytond.conf -d tryton --all
