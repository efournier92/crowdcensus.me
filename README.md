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
[CrowdCensus.me](http://crowdcensus.herokuapp.com/)

## Features

### Authentication

#### Sign Up
![Sign Up Screen](https://github.com/efournier92/CrowdCensus/blob/master/app/assets/img/screenshots/Auth_Sign_Up.png)

#### Sign In
![Sign In Screen](https://github.com/efournier92/CrowdCensus/blob/master/app/assets/img/screenshots/Auth_Sign_In.png)

### Census

#### View Active
![View Active Census Screen](https://github.com/efournier92/CrowdCensus/blob/master/app/assets/img/screenshots/View_Active_Census.png)

#### View Feedback
![View Census Feedback Screen](https://github.com/efournier92/CrowdCensus/blob/master/app/assets/img/screenshots/View_Census_Feedback.png)

#### View Closed
![View Closed Screen](https://github.com/efournier92/CrowdCensus/blob/master/app/assets/img/screenshots/View_Closed_Census.png)

#### Create
![Create Census Screen](https://github.com/efournier92/CrowdCensus/blob/master/app/assets/img/screenshots/Create_Census.png)

#### Select Duration
![ Screen](https://github.com/efournier92/CrowdCensus/blob/master/app/assets/img/screenshots/Create_Census_Select_Duration.png)

#### Choose a Resolution
![ Screen](https://github.com/efournier92/CrowdCensus/blob/master/app/assets/img/screenshots/Choose_Census_Resolution.png)

### Navigation

#### Select Page
![ Screen](https://github.com/efournier92/CrowdCensus/blob/master/app/assets/img/screenshots/Select_Page.png)

## Development Philosophy
This was the first full web application I built on my own. I'd been studying Ruby on Rails at the time, and built this over a two-week period in 2016, as my final project at [Launch Academy](https://launchacademy.com/). It shows that I had a long way to go and much left to learn, but the fact that runs it runs as a deployable web app was extremely exciting for me at the time. Although I'd previously taken it down, I upgraded it to Ruby 2.6 and Rails 5.1 in 2019, then re-deployed it to Heroku. I intend to leave it up as testament to where I started, and as inspiration to never stop challenging myself where I'm going.

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
- [Ruby 2.6.1](https://www.ruby-lang.org/en/news/2015/12/25/ruby-2-3-0-released/)
- [Postgres SQL](https://www.postgresql.org/)

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

