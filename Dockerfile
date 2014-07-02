FROM infoshift/rbenv
MAINTAINER Jesse Panganiban <jesse.panganiban@infoshiftinc.com>

RUN apt-get install -y libssl-dev
RUN rbenv install 2.1.0
RUN rbenv global 2.1.0
RUN gem install bundle
