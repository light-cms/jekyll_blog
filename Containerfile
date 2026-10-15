FROM docker.io/jekyll/jekyll:latest

WORKDIR /srv/jekyll

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 4000 35729

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload", "--force_polling"]
