FROM jekyll/jekyll

COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install --quiet --clean --full-index

CMD ["jekyll", "serve"]
