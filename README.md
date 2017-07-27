# STONED API
https://shielded-garden-28851.herokuapp.com/

## Description

An api that will return rock types and a rocks minerals, with some associated properties typically used by rockhounds in mineral identification. It currently lets users search by rock type & provides an option to search for a random mineral. Specifications for further exploration detailed below.

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
|Add a rock type to the database|Post, name => 'Igneous'|message: "Added!"|
|Add minerals to the database|Post, name => 'Tourmaline'|message: "Added!"|
|Update a rock|Put, name => 'Igneous'|name: 'Igneous', id:1|
|Update a mineral|Put, name => 'Tourmaline'|name: 'Tourmaline', id:1|
|Delete a rock|Visit a specific rock path, Delete|message: "All out!"|
|Delete a mineral|Visit a specific mineral path, Delete|message: "All out!"|
|See a list of all minerals for a specific rock|Visit 'rocks/:id/minerals' path|name: 'Tourmaline'|
|Search for a mineral by rock type|Visit '/rocks/by_name?name=Igneous'|minerals: name:'Tourmaline'|
|Search for random minerals|Visit 'rocks/:id/minerals/random'|minerals: name: 'Corundum'|

## Further Exploration

| Behavior |  Input   |  Output  |
|----------|:--------:|:--------:|
|Search for minerals by color|Visit 'rocks/:id/minerals/by_color?color=blue'|
|Search for minerals by crystal_system|Visit 'rocks/:id/minerals/by_crystal_system?crystal_system=Isometric'|
|Search for minerals by category|Visit 'rocks/:id/minerals/by_category?category=Halide'|


## Known Bugs
* N/A

### Support and contact details
  _jincamou@gmail.com_

### License
  _MIT_ &copy; _2017_ **jin camou**
