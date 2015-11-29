# Bountiful

Destiny-like, "Bounty-as-a-Service" (BaaS) to help you get shit done. Engrams may or may not be included, Guardian.

## Environment Prereqs

You should have the following minimally setup:

- [Git](https://help.github.com/articles/set-up-git) (duh)
- [rbenv](https://github.com/sstephenson/rbenv)
& [ruby-build](https://github.com/sstephenson/ruby-build)

## Initial Project Setup

    $ rbenv install
    $ bundle install
    $ cp .env.example .env

Then fill out `.env` with the appropriate credentials.

## Development

**TBD: below just launches a sample GitHub auth server.**

    $ ruby bountiful.rb

Then go to [localhost:4567](http://localhost:4567/).

## License

See LICENSE for details.
