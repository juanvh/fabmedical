host="fabmedical-304128.documents.azure.com"
username="fabmedical-304128"
password="zvyAz51lWiCDGm5sTNHZ74zUlIB0esjLnF6UvYtMqcDT9tCWxpCU5ZAqhaXsUAGkqAiYS4f5Mm692RVIN8zPgA=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
