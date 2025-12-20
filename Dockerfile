FROM ruby:3.2.2

# 必要パッケージのインストール
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs

# 作業ディレクトリ
WORKDIR /app

# Gemfile をコピーして bundle install
COPY Gemfile ./
RUN gem install bundler && bundle install

# アプリケーション全体をコピー
COPY . .

# ポート公開
EXPOSE 3000

# サーバー起動コマンド
CMD ["bin/rails", "server", "-b", "0.0.0.0"]
