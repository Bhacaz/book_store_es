# Book Store ES

Trying to setup Elasticsearch with in Rails without any gem.

## To init the project

```bash
docker-compose up -d
bin/rails db:create
bin/rails db:migrate
bin/rails db:seed
```

## Initial command used to create the project

```bash
rails new book_store_es -C -T --skip-active-storage --skip-action-text --skip-action-mailbox --skip-action-mailer
bin/rails g scaffold author first_name:string last_name:string
bin/rails g scaffold book title:string synopsis:string author:references publication_date:date
bin/rails g scaffold genre label:string
bin/rails g model GenreBook book:references genre:references
```
