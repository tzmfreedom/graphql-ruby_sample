# README

```
# create rails
bundle init
bundle exec rails new .

# add `graphql` to Gemfile
bundle install --path=vendor/bundle -j4

# install graphql
bundle exec rails g graphql:install
bundle install

# create graphql types
bundle exec rails g graphql:object Post title:String rating:Int "comments:[Comment]"
bundle exec rails g graphql:object Comment body:String created_at:String

# create model
bin/rails g model post title:string rating:integer
bin/rake db:create
bin/rake db:migrate

# test graphql
curl -X POST -H "Content-Type: application/json" -d '{ "query": "{ post(id: 1) { id } }" }' localhost:3000/graphql
curl -X POST -H "Content-Type: application/json" -d '{ "query": "{ posts { id title } }" }' localhost:3000/graphql
```
