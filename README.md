# STONED API

## Description

An api that will return a list of minerals and associated properties. It lets users search & identify found stones by providing possible matches.

## Technologies used / Prerequisites

* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)
* [PostgreSQL](https://www.postgresql.org/docs/9.2/static/app-psql.html)
* [Git](https://git-scm.com/)

## Other Sources

* [Serializer](https://blog.engineyard.com/2015/active-model-serializers)
* [kaminari](https://github.com/kaminari/kaminari)

## Installation

* `$ git clone https://github.com/jinjin8/stoned`
* `$ cd stoned`

## PostgreSQL Integration

* `$ postgres`
* `$ rake db:create`
* `$ rake db:migrate db:test:prepare`

## Seed database

* `$ rake db:seed`

## Development server

Run `rails s` for a dev server. Navigate to `http://localhost:3000/`. The app will automatically reload if you change any of the source files.

## Specifications

| Behavior |  Input   |  Output  |
|----------|:--------:|:--------:|
|Add a mineral to the database|Post, name => 'Tourmaline'|message: "Added!"|
|Update a mineral|Put, name => 'Tourmaline'|name: 'Tourmaline', id:1|
|Delete a mineral|Visit a specific mineral path, Delete|message: "All out!"|
|See a list of all minerals|Visit '/minerals' path|name: 'Tourmaline'|
|Search for a mineral by name|Visit '/minerals/by_name?name=Tourmaline'|minerals: name:'Tourmaline'|
|Search for random minerals|Visit '/minerals/1/random'|minerals: name: 'Corundum'|

## Mineral Path
![Mineral](public/images/minerals.png)
## Random Path
![Breed](public/images/random.png)
## Search Path
![Search](public/images/by_name.png)

## Known Bugs
* N/A

### Support and contact details
  _jincamou@gmail.com_

### License
  _MIT_ &copy; _2017_ **jin camou**
