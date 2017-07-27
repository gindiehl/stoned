# STONED API
https://shielded-garden-28851.herokuapp.com/

## Description

An api that will return a list of rock types and a rocks minerals, with some associated properties typically used by rockhounds in mineral identification. It lets users search by rock type & provides an option to search for a random mineral.

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
|Add a rock to the database|Post, name => 'Igneous'|message: "Added!"|
|Add a mineral to the database|Post, name => 'Tourmaline'|message: "Added!"|
|Update a rock|Put, name => 'Igneous'|name: 'Igneous', id:1|
|Update a mineral|Put, name => 'Tourmaline'|name: 'Tourmaline', id:1|
|Delete a rock|Visit a specific rock path, Delete|message: "All out!"|
|Delete a mineral|Visit a specific mineral path, Delete|message: "All out!"|
|See a list of all minerals|Visit 'rocks/:id/minerals' path|name: 'Tourmaline'|
|Search for a mineral by name|Visit '/minerals/by_name?name=Tourmaline'|minerals: name:'Tourmaline'|
|Search for random minerals|Visit '/minerals/1/random'|minerals: name: 'Corundum'|

## Mineral Path
![Mineral](public/images/minerals.png)
## Random Path
![Mineral](public/images/random.png)
## Search Path
![Search](public/images/by_name.png)

## Known Bugs
* N/A

### Support and contact details
  _jincamou@gmail.com_

### License
  _MIT_ &copy; _2017_ **jin camou**
