FROM jekyll/jekyll

COPY Gemfile .
COPY Gemfile.lock .

RUN bundle update jekyll && bundle install --quiet --clean

CMD ["jekyll", "serve"]
