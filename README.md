# ![CrowdCensus](https://github.com/efournier92/CrowdCensus/blob/master/app/assets/img/logo/CrowdCensus_Logo.png)

![Build Status](https://codeship.com/projects/5cdff990-01e8-0134-5ed2-5a840fcbac76/status?branch=master)
[![Coverage Status](https://coveralls.io/repos/github/efournier92/crowdcensus.me/badge.svg?branch=master)](https://coveralls.io/github/efournier92/crowdcensus.me?branch=master)

## Contents
- [Overview](#overview)
- [Demo](#demo)
- [Features](#features)
- [Development Philosophy](#development-philosophy)
- [Stack](#stack)
- [Configuration](#configuration)
- [Building](#building)
- [Testing](#testing)
- [Contributing](#contributing)
- [Licensing](#licensing)

## Overview
A place for people to crowdsource their questions in a fun and novel way. Users post a question and 2-3 potential resolutions, then other's vote on which resolution they see as best.

## Demo
[CrowdCensus.me](http://crowdcensus.herokuapp.com)

## Features
- User registers
- User signs in
- User adds a new census
- User casts opinion on active CrowdCensus
- User views recently closed feed
- User views own profile page
- User views other profile page
- Admin deletes census
- Admin deletes user

## Development Philosophy

## Stack
- Ruby
- Rails
- Postgres SQL
- Devise
- Foundation
- Ajax
- JQuery
- SASS
- Highcharts
- Chartkick
- Will Paginate
- RSpec
- Capybara
- Selenium

## Configuration

### System Dependencies
- [Ruby 2.3.0](https://www.ruby-lang.org/en/news/2015/12/25/ruby-2-3-0-released/)
- [Postgres SQL](https://www.postgresql.org/)

### `.env`

## Building
1. `bundle`
2. `sudo -u postgres createdb crowdcensus_development`
3. `rake db:migrate RAILS_ENV=development`
4. `rake db:seed`
5. `rails s`

## Contributing
If you have feature suggestions, please contact me here or at efournier92@gmail.com. If you'd like to submit a pull request, please feel free to, and I'll review merge it at my earliest convenience!

## Licensing
This project is provided under the `MIT` licence and I hereby grant rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the software without limitation, provided the resulting software also carries the same open-source licensing statement.

