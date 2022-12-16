[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<h1 align="center">Enigma</h1>

<div align="center">

[![Ruby][Ruby]][Ruby-url] [![RSpec][RSpec]][RSpec-url] [![Atom][Atom]][Atom-url]

</div>

## Summary

  - [Getting Started](#getting-started)
  - [Runing the tests](#running-the-tests)
  - [Deployment](#deployment)
  - [Acknowledgments](#acknowledgments)

## Getting Started

To assist in building Enigma
- require 'date'
- require 'pry'

1 module contains shift methods

### Prerequisites

Gems included:

- RSpec
gem install rspec

- SimpleCov
Create GemFile in top folder
gem 'simplecov', require: false, group: :test
source 'https://rubygems.org'

    run gem install bundle

    Create spec_helper.rb in spec folder

    require 'simplecov'

    SimpleCov.start

    require_relative 'enigma_spec'

    require_relative 'offset_spec'

    require_relative 'key_spec'

- To run SimpleCov in Terminal

1. 'rspec spec/spec_helper.rb'

2. 'open coverage/index.html'

## Running the tests

Tested using rspec and simplecov

### Break down into end to end tests

- Tests initialization of all classes and proper calling upon module.
- Tested attributes to equal expected.
- Tested functinality of defined methods.
- Tested behaviors to behave as expected within it blocks.
- Tested that class Enigma could function with variable attributes without breaking hard_coded tests

## Deployment

Type message to be encrypted/decrypted in message.txt

- To check encryption in Terminal run:
ruby ./lib/encrypt.rb message.txt encrypted.txt
- Terminal output:
Created 'encrypted.txt' with the key <key> and date <date>
- Encrypted message contained in <encrypted.txt>

- To check decryption in Terminal run:
ruby ./lib/decrypt.rb encrypted.txt decrypted.txt <encrypt_key> <encrypt_date>
- Terminal output:
Created 'decrypted.txt' with the key <key> and date <date>
- Decrypted message populates in <decrypted.txt>

## Acknowledgments

  - Mike K, Mayu T, Erin P
  - Parker T, Nikky R, Bryce S
  
<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/AMSterling/enigma.svg?style=for-the-badge
[contributors-url]: https://github.com/AMSterling/viewing_party_lite/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/AMSterling/viewing_party_lite.svg?style=for-the-badge
[forks-url]: https://github.com/AMSterling/enigma/network/members
[stars-shield]: https://img.shields.io/github/stars/AMSterling/enigma.svg?style=for-the-badge
[stars-url]: https://github.com/AMSterling/enigma/stargazers
[issues-shield]: https://img.shields.io/github/issues/AMSterling/enigma.svg?style=for-the-badge
[issues-url]: https://github.com/AMSterling/enigma/issues
[license-shield]: https://img.shields.io/github/license/AMSterling/enigma.svg?style=for-the-badge
[license-url]: https://github.com/AMSterling/enigma/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/sterling-316a6223a/

[Atom]: https://img.shields.io/badge/Atom-66595C?style=for-the-badge&logo=Atom&logoColor=white
[Atom-url]: https://atom.io/

[Bootstrap]: https://img.shields.io/badge/bootstrap-%23563D7C.svg?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com/

[CircleCI]: https://img.shields.io/badge/circle%20ci-%23161616.svg?style=for-the-badge&logo=circleci&logoColor=white
[CircleCI-url]: https://circleci.com/developer

[CSS]: 	https://img.shields.io/badge/CSS-239120?&style=for-the-badge&logo=css3&logoColor=white
[CSS-url]: https://en.wikipedia.org/wiki/CSS

[Fly]: https://custom-icon-badges.demolab.com/badge/Fly-DCDCDC?style=for-the-badge&logo=fly-io
[Fly-url]: https://fly.io/

[GitHub Badge]: https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white
[GitHub-url]: https://github.com/<Username>/

[Heroku]: https://img.shields.io/badge/Heroku-430098?style=for-the-badge&logo=heroku&logoColor=white
[Heroku-url]: https://www.heroku.com/

[HTML5]: https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white
[HTML5-url]: https://en.wikipedia.org/wiki/HTML5

[JavaScript]: https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E
[JavaScript-url]: https://www.javascript.com/

[jQuery]: https://img.shields.io/badge/jquery-%230769AD.svg?style=for-the-badge&logo=jquery&logoColor=white
[jQuery-url]: https://github.com/rails/jquery-rails

[LinkedIn Badge]: https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white
[LinkedIn-url]: https://www.linkedin.com/in/<Username>/

[Miro]: https://img.shields.io/badge/Miro-050038?style=for-the-badge&logo=Miro&logoColor=white
[Miro-url]: https://miro.com/

[PostgreSQL]: https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white
[PostgreSQL-url]: https://www.postgresql.org/

[Postman]: https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=postman&logoColor=white
[Postman-url]: https://web.postman.co/

[Rails]: https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white
[Rails-url]: https://rubyonrails.org/

[RSpec]: https://custom-icon-badges.demolab.com/badge/RSpec-fffcf7?style=for-the-badge&logo=rspec
[RSpec-url]: https://rspec.info/

[RuboCop]: https://img.shields.io/badge/RuboCop-000?logo=rubocop&logoColor=fff&style=for-the-badge
[RuboCop-url]: https://docs.rubocop.org/rubocop-rails/index.html

[Ruby]: https://img.shields.io/badge/Ruby-000000?style=for-the-badge&logo=ruby&logoColor=CC342D
[Ruby-url]: https://www.ruby-lang.org/en/

[Visual Studio Code]: https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white
[Visual Studio Code-url]: https://code.visualstudio.com/

[bcrypt-docs]: https://github.com/bcrypt-ruby/bcrypt-ruby
[capybara-docs]: https://github.com/teamcapybara/capybara
[factory_bot_rails-docs]: https://github.com/thoughtbot/factory_bot_rails
[faker-docs]: https://github.com/faker-ruby/faker
[faraday-docs]: https://lostisland.github.io/faraday/
[figaro-docs]: https://github.com/laserlemon/figaro
[jsonapi-serializer-docs]: https://github.com/jsonapi-serializer/jsonapi-serializer
[launchy-docs]: https://www.rubydoc.info/gems/launchy/2.2.0
[omniauth-google-oauth2-docs]: https://github.com/zquestz/omniauth-google-oauth2
[orderly-docs]: https://github.com/jmondo/orderly
[pry-docs]: https://github.com/pry/pry
[rspec-rails-docs]: https://github.com/rspec/rspec-rails
[shoulda-matchers-docs]: https://github.com/thoughtbot/shoulda-matchers
[simplecov-docs]: https://github.com/simplecov-ruby/simplecov
[vcr-docs]: https://github.com/vcr/vcr
[webmock-docs]: https://github.com/bblimke/webmock
