FROM node:5.1.1

# Install freetype for phantomjs
RUN \
  apt-get update && \
  apt-get install -y libfreetype6 libfontconfig && \
  apt-get clean && \
  npm install -g npm@3.5.1 && \
  npm install -g bower grunt-cli forever phantomjs && \
  npm cache clean