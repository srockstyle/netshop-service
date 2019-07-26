## netshop-service
## 初回テンプレート

```
コントローラ
bundle exec rails g controller page index
bundle exec rails g controller user/dashboard index
bundle exec rails g controller user/item index show create edit delete
bundle exec rails g controller user/shop index show create update delete
bundle exec rails g controller payment index show create update delete

モデル
bundle exec rails g model owner name:string description:text delete:boolean
bundle exec rails g model shop owner_id:integer name:string description:text open:boolean delete:boolean
bundle exec rails g model item shop_id:integer name:string description:text price:integer
bundle exec rails g model item_sale item_id:integer
```
