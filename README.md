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

Then fill out `.env` with the appropriate credentials (instructions below).

## Development

If it's your first time, you'll want to join the [GitHub Developers Program](https://developer.github.com/program/).
Then go to Settings > Applications > Developer applications and create an
application. A few key things here:

- The Client ID and Client Secret are what you'll use in `.env` for local
development.
- The "Authorized callback URL" should be "http://localhost:4567/callback" or
whatever is appropriate.

When you're all set, run the following:

    $ ruby bountiful.rb

Then go to [localhost:4567](http://localhost:4567/).

## License

See LICENSE for details.
