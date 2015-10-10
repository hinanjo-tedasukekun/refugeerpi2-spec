# 避難所運営支援システム Raspberry Pi 用 serverspec

避難所運営支援システムの設定が正しく行われているかを調べるための serverspec です。

## 使い方

Ruby をインストールしてある PC で使います。

まずライブラリをインストールします。

```bash
# bundler が入っていなければ
gem install bundler

bundle install --path=vendor/bundle
```

次に、ホスト名 `refugeerpi2` で SSH 接続できるように ~/.ssh/config を設定します。

```
# ~/.ssh/config
Host refugeerpi2
  # Hostname には Raspberry Pi の IP アドレスを設定する
  Hostname 192.168.1.100
  User root
```

以上が完了したら、以下でサーバーのテストを実行します。

```bash
bundle exec rake
```

テストがすべて通るようになるまでサーバーを設定します。
