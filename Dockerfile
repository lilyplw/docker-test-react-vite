# ベースとなるイメージを指定。この場合、Node.js v18.17.1 を持つAlpine Linux
FROM node:18.17.1-alpine

# ホストの ./app ディレクトリを、コンテナ内の /app ディレクトリにコピーする
COPY ./app /app

# コンテナ内での作業ディレクトリを /app に設定
WORKDIR /app

# Node.js の依存関係をインストール
# この時点で /app ディレクトリには package.json が必要
RUN npm install

# 5173 ポートを外部に公開（このポートでアプリが動作すると想定）
EXPOSE 5173

# コンテナが起動したときに実行されるコマンドを指定
# この例では、npm run dev コマンドを実行して開発サーバーを起動
CMD npm run dev