# README

## Instructions

- Clone the repo
- Switch ruby version to `ruby-2.6.0`.
```
rvm install 2.6.0
rvm use 2.6.0
ruby -v
```
- Edit env variables are per requirements
```
POSTGRES_HOST=localhost
POSTGRES_DB=todos
```
Note: `development`, `test` and `production` environments use the same db. In case you need different db's, feel free to edit `config/database.yml`

- `rake db:setup`
- `rails s`

Server should be running on port `3000` by default.

### Performing CRUD

#### Create a todo
`POST /todo_items`
with req body
```
{
  name: "Read a book",
  completed: false
}
```
Note: `completed` is optional(`false` by default)

#### READ a single/all todos
INDEX - `GET /todo_items` gives  a list of all todos.
or
SHOW - `GET /todo_items/:id` gives a has of single todo item

#### UPDATE a todo
`PUT /todo_items/:id`
with req body
```
{
  name: "Water plants",
  completed: true
}
```

#### DELETE a todo
`DELETE /todo_items/:id`
