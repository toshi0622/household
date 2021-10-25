# アプリ名

無駄遣いSHOW

# 概要

支出/浪費/消費の登録が可能。<br>
家計簿アプリに似ているが、上記3つに特化したものとなります。<br>
合計金額を可視化することで無駄遣いを少しでも減らせることが可能となっております。<br>

# 本番環境

https://household-show.herokuapp.com/

# 制作背景(意図)

「ゴミを少しでも減らすこと」がこのアプリを開発した目的です。<br>
一人一人がゴミ問題と向き合う事で少しでも変わればという想いから制作してみました。<br>
<br>
背景には日本のゴミ排出量があります。<br>
一般家庭から出るゴミの量は年間で4,272万ｔにもなります。<br>
これは東京ドームの約115杯分と言われております。<br><br>
このゴミの量がこのまま続けば、日本に今ある最終処分場は約20年後には満杯とされています。<br>
更には、焼却処分がメインの日本では、CO2の排出も問題となります。<br>
ゴミが道や山などに放置されれば、悪臭や衛生面、山火事という問題にも繋がります。<br>
有害物質の発生、それが川や海に流れれば公害問題が発生してもおかしくはありません。<br>
<br>
だからこそ、一人一人がゴミ削減に取り組めばこういった問題を少しでも減らせると思っております。<br>
具体的な行動で言えば「食品ロスを減らす」「必要なものだけを買う」といった所から始めてみる。<br>
このお手伝いをするのが今回のアプリです。<br>
無駄遣いを登録して、その数値を可視化することで自身への注意喚起にも繋がります。<br>
<br>
日本だけでなく、地球全体の未来が明るくなることを祈って。。。<br>

# DEMO

#### ホーム(商品情報一覧)
[![Image from Gyazo](https://i.gyazo.com/423bff79b2f1911e0f0732cccfaf10b6.gif)](https://gyazo.com/423bff79b2f1911e0f0732cccfaf10b6)

#### 新規登録画面
[![Image from Gyazo](https://i.gyazo.com/fcafbaa52692b93e39916606e71169ff.gif)](https://gyazo.com/fcafbaa52692b93e39916606e71169ff)

#### 詳細表示画面
[![Image from Gyazo](https://i.gyazo.com/3044f4096eb6d363be11164038b1041f.gif)](https://gyazo.com/3044f4096eb6d363be11164038b1041f)

#### 編集画面
[![Image from Gyazo](https://i.gyazo.com/26e94611e6c3713740fc309ce97bcf46.gif)](https://gyazo.com/26e94611e6c3713740fc309ce97bcf46)

# 工夫したポイント

- 各ページのデザイン<br>
- ヘッダー部分の素材<br>
- 合計金額の出力<br>
- 日毎に登録した商品一覧<br>
- 「入力する」の位置(スクロールしても同じ位置に)<br>
- 新規登録画面や編集画面においての選択肢の実装<br>

# 使用技術(開発環境)

## バックエンド

Ruby,Ruby on Rails

## フロントエンド

HTML,CSS,JavaScript

## データベース

MySQL,Sequel Pro

## インフラ

AWS

## アプリケーションサーバー(本番環境)

heroku

## ソース管理

GitHub,GitHubDesktop

## テスト

RSpec

## エディタ

VSCode

# 課題や今後実装したい機能

- 検索機能①(登録した情報から引っ張ってこれるように)
- 検索機能②(検索ワードのみピックアップ)
- ユーザー管理機能(ログアウト状態ならば、強制的にログイン画面に遷移)

# DB設計

## items テーブル

| Column                | Type     | Options                   |
| --------------------- | -------- | ------------------------- |
| item_name             |  string  | null: false               |
| item_category_id      |  integer | null: false               |
| price                 |  integer | null: false               |
| regret_id             |  integer | null: false               |
| memo                  |   text   |                           |
| calendar              |  string  | null: false               |