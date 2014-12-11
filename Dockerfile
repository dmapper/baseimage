FROM    dockerfile/nodejs-bower-grunt

# Install freetype for phantomjs
RUN \
  apt-get update && \
  apt-get install -y libfreetype6 libfontconfig && \
  apt-get clean

RUN npm install -g forever phantomjs browserify@3.46.1