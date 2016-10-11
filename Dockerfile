FROM daocloud.io/node:6.2.0

ENV HOME=/app
WORKDIR $HOME

COPY package.json $HOME
RUN npm install
ADD . $HOME

EXPOSE 3000
CMD ["node", "index.js"]
