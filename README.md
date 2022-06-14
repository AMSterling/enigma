# Enigma

I started off with frustration but am thankful for the cohorts who helped get me through. I could not install gems due to migration from old laptop with a different chip. Nikky sent a video that went over top down to help get me started. Parker dropped off anonymous "warm fuzzies" which is a Google survey where cohorts could write compliments or notes of encouragement. I got 2. I worked quite a bit in conjunction with my Battleship pairing partner. He had initialized his Enigma with no arguments where I initialized with 3. Seeing where it made tests and methods react differently was a learning experience.

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
