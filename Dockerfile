FROM node:0.12.7

# Install freetype for phantomjs
RUN \
  apt-get update && \
  apt-get install -y libfreetype6 libfontconfig && \
  apt-get clean && \
  npm install -g npm@2.7.5 && \
  npm install -g bower grunt-cli forever phantomjs browserify@3.46.1 && \
  npm cache clean