FROM ruby:2.4.2-slim
MAINTAINER Naoto Koshikawa <koshikawa@ppworks.jp>
ENV DEBIAN_FRONTEND noninteractive
# set locale and timezone
RUN apt-get update -qq && \
  apt-get -y upgrade && \
  apt-get -y install locales && \
  apt-get clean && \
  apt-get autoclean && \
  apt-get autoremove && \
  echo en_US.UTF-8 UTF-8 > /etc/locale.gen && locale-gen && dpkg-reconfigure locales && \
  echo "Asia/Tokyo" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
ENV TZ Asia/Tokyo
RUN apt-get -y --no-install-recommends install \
  build-essential \
  libpq-dev \
  nodejs \
  wget \
  libmysqlclient-dev
ENV ENTRYKIT_VERSION 0.4.0
RUN wget --quiet https://github.com/progrium/entrykit/releases/download/v${ENTRYKIT_VERSION}/entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
  && tar -xvzf entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
  && rm entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
  && mv entrykit /bin/entrykit \
  && chmod +x /bin/entrykit \
  && entrykit --symlink
RUN mkdir /app
WORKDIR /app
ENTRYPOINT [ \
  "prehook", \
    "bundle install -j4 --quiet", \
    "--" \
]
