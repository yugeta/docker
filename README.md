Docker開発環境構築
===
```
create : 2022.08.24
Author : Yugeta.Koji
```

# Summary
- WEB開発に必要な環境をcloneしてdockerを実行するだけで立ち上げられる便利なリポジトリです。
- cloneして、ダウンロードされた環境内にpublic_htmlフォルダを作成して、そこがweb-rootになります。

# Howto

1. Clone
```
$ git clone https://github.com/yugeta/docker
```

2. public_htmlフォルダ作成
```
$ cd ./docker
$ mkdir public_html
```

3. Docker起動
```
$ docker-compose up -d
```

# Custom


# Branches（ブランチを切り替えると、他の開発環境の構築もできるようになります。）※現在は１つのみです。
- Nginx + PHP8.1環境


