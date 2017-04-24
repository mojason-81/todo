User.destroy_all
Tag.destroy_all
Task.destroy_all

user = User.create( email: 'something@example.com', password: 'password' )

foo = Tag.create( name: 'foo' )
bar = Tag.create( name: 'bar' )

[
  {user: user, description: 'angry_eric', done: false, tags: [foo]},
  {user: user, description: 'be naseer', done: false, tags: []},
  {user: user, description: 'jason rocks', done: false, tags: [bar, foo]},
  {user: user, description: 'angry_eric_...still', done: true, tags:[bar]}
].each do |i|
  Task.create(i)
end

