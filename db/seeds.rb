# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#初期データとして必要な情報を登録する処理を書いておく、
#Food.create(name: "ラーメン",description:"中国から伝わった")
#Food.create(name: "寿司",description:"日本独特の文化")

Book.create(title: "Java Book", price:3000)
Book.create(title: "Ruby Book", price:4000)
Book.create(title: "PHP Book", price:2000)
User.create(name: "Yamada")
User.create(name:"Hanako")

Rental.create(user_id:1,book_id:1)
Rental.create(user_id:1,book_id:2)
Rental.create(user_id:2,book_id:2)
Rental.create(user_id:3,book_id:1)

Todo.create(task: "宿題")
Todo.create(task: "ランニング")