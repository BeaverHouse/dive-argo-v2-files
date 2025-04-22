K3S_TOKEN="Your Token"
DB_CONN_STRING="Your DB Connection String"

curl -sfL https://get.k3s.io | sh -s - server \
  --token=$K3S_TOKEN \
  --datastore-endpoint=$DB_CONN_STRING