## netshop-service
## 初回テンプレート

```
コントローラ
rails g controller page index
rails g controller user/dashboard index
rails g controller user/item index show create edit delete
rails g controller user/shop index show create update delete
rails g controller payment index show create update delete

モデル
rails g model user
rails g model shop
rails g model item
rails g model item_sale
```
