FROM quay.io/ukhomeofficedigital/nodejs-base:v6.9.1
ENV REVEAL_VER 3.3.0
RUN yum install -y bzip2 make gcc* && curl -o revealjs.tar.gz https://github.com/hakimel/reveal.js/archive/${REVEAL_VER}.tar.gz -L && tar -xvzf revealjs.tar.gz && rm -rf revealjs.tar.gz && mv reveal.js-${REVEAL_VER} revealjs

WORKDIR revealjs
RUN npm install
ADD presentation/index.html /app/revealjs/index.html
EXPOSE 8000

CMD ["npm", "start"]
