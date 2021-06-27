FROM jekyll/jekyll:4

ADD . /srv/jekyll/site

WORKDIR /srv/jekyll/site

RUN jekyll build

RUN bundle install

CMD jekyll serve --watch --force_polling
