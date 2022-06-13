FROM fusuf/whatsasena:latest

RUN git clone https://gitlab.com/MRwolfia/Alita /root/Alita
WORKDIR /root/Alita/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
