# Render Free プランでは cluster mode（workers > 0）が不安定で
# RAILS_ENV が development に戻る問題があるため、workers を 0 に固定する。
workers 0

# スレッド数の設定（デフォルト 3）
threads_count = ENV.fetch("RAILS_MAX_THREADS", 3)
threads threads_count, threads_count

# Render は PORT 環境変数を使ってリッスンする
port ENV.fetch("PORT") { 10000 }

# 本番環境で起動する
environment ENV.fetch("RAILS_ENV") { "production" }

# workers=0 の場合でも preload_app は安全
preload_app!

# Rails の `bin/rails restart` を有効にする
plugin :tmp_restart
