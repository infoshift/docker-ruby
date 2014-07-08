FROM infoshift/rbenv
MAINTAINER Jesse Panganiban <jesse.panganiban@infoshiftinc.com>

ENV RUBY_VERSION 2.1.0

# Install dependencies
RUN apt-get install -y libssl-dev libreadline-dev

# Install ruby
RUN rbenv install ${RUBY_VERSION} && \
  rbenv global ${RUBY_VERSION}

# Install bundler
RUN gem install bundler --no-ri --no-rdoc && \
  rbenv rehash
