source "https://rubygems.org"

ruby "3.2.2"

# Rails 本体
gem "rails", "~> 8.1.1"

# DB
gem "pg", "~> 1.1"

# Web サーバー
gem "puma", ">= 5.0"

# Asset Pipeline（Rails 標準）
gem "sprockets-rails"

# Hotwire（Turbo + Stimulus）
gem "turbo-rails"
gem "stimulus-rails"

# Active Storage（画像アップロード）
gem "image_processing", "~> 1.2"

# Importmap（JS 管理）
gem "importmap-rails"

# JSON API 用
gem "jbuilder"

# Windows 用
gem "tzinfo-data", platforms: %i[windows jruby]

# 起動高速化
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
