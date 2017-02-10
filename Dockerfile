FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.4.1

RUN gem install djatoka --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["djatoka_url"]
CMD ["--help"]
