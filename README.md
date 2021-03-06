[![Gem Version](https://badge.fury.io/rb/masu.svg)](https://rubygems.org/gems/masu)
[![Coverage Status](https://coveralls.io/repos/github/akinov/masu/badge.svg?branch=master)](https://coveralls.io/github/akinov/masu?branch=master)


# Masu

Enclose text in a frame!

Provide a great Masu for your string.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'masu'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install masu

## Usage

### Default usage

```ruby

irb:001:0> 'hoge'.to_masu
=> "┌----┐\n│hoge│\n└----┘\n"

irb:002:0> puts 'hoge'.to_masu
┌----┐
│hoge│
└----┘
=> nil

```

### Additional Masu type

```ruby
irb:001:0> puts '突然の死'.to_masu :totsuzen
＿人人人人＿
＞ 突然の死 ＜
￣Y^Y^Y^Y￣
=> nil
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/masu. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Masu project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/masu/blob/master/CODE_OF_CONDUCT.md).
