User.create(name: 'Joe Doe', age: 30, email: 'joe@doe.com')
User.create(name: 'Mattew Crazy', age: 33, email: 'mattew@crazy.com')

Post.create(title: 'Awesome Post', body: 'Indeed a great one!', user: User.first)
Post.create(title: 'Incredible Post', body: 'Indeed another great one!', user: User.last)