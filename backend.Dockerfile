FROM node:lts-alpine

WORKDIR /application
COPY . .

RUN \
  sed -i "s#key: fs.readFileSync('/etc/letsencrypt/live/arcada-api.nicoleta.cc/privkey.pem'),##g" app.js && \
  sed -i "s#cert: fs.readFileSync('/etc/letsencrypt/live/arcada-api.nicoleta.cc/cert.pem'),##g" app.js && \
  sed -i "s#ca: fs.readFileSync('/etc/letsencrypt/live/arcada-api.nicoleta.cc/chain.pem'),##g" app.js

RUN \
  sed -i "s#await Category.collection.drop();#try { await Category.collection.drop() } catch {}#g" populate.js && \
  sed -i "s#await Furniture.collection.drop();#try { await Furniture.collection.drop() } catch {}#g" populate.js

RUN npm i

CMD ["node", "app.js"]
