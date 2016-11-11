FROM quay.io/ukhomeofficedigital/nodejs-base:v6.9.1
RUN yum install -y bzip2 make gcc* && curl -o revealjs.tar.gz https://github.com/hakimel/reveal.js/archive/3.3.0.tar.gz -L && tar -xvzf revealjs.tar.gz && rm -rf revealjs.tar.gz

WORKDIR reveal.js-3.3.0
RUN npm install
ADD presentation/index.html index.html
EXPOSE 8000

CMD ["npm", "start"]
