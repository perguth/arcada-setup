#/bin/bash

sed -i "s#            key: fs.readFileSync('/etc/letsencrypt/live/arcada-api.nicoleta.cc/privkey.pem'),##g" backend/app.js
sed -i "s#            cert: fs.readFileSync('/etc/letsencrypt/live/arcada-api.nicoleta.cc/cert.pem'),##g" backend/app.js
sed -i "s#            ca: fs.readFileSync('/etc/letsencrypt/live/arcada-api.nicoleta.cc/chain.pem'),##g" backend/app.js

