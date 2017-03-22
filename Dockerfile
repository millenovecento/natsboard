FROM node:6.0-wheezy
RUN npm install natsboard -g
#ENV URL $NATS_MONITOR_URL

EXPOSE 3000
CMD natsboard --nats-mon-url ${NATS_MONITOR_URL}

# Build
#docker build -t millenovecento/natsboard .
#docker run -d -p 3000:3000 -p 3001:3001 --env NATS_MONITOR_URL=IPADDRESS:8222 millenovecento/natsboard
