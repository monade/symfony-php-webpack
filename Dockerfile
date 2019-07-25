FROM monade/symfony-php

RUN curl -sL https://deb.nodesource.com/setup_9.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install nodejs npm -yqq
RUN npm install npm@5.6.0 -g

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get -o Dpkg::Options::="--force-overwrite" install yarn -yqq
