# Fec
[![Gem Version](https://badge.fury.io/rb/fec.svg)](https://badge.fury.io/rb/fec)

Rename all files extension inside folder (including recursive folder).

Required:

- `ruby` 1.9 or greater (see https://www.ruby-lang.org/en/installation )
- `rubygems` (included with ruby; see https://github.com/rubygems/rubygems )

Recommended:

- `rvm` for controlling your versions of ruby (see: https://github.com/rvm/rvm )

## Installation
Install as you would any other ruby gem:

    $ gem install fec

## Using
### Rename files extension inside folder

    $ fec rename /path/to/folder -o old_extension -n new_extension

### Check Fec version

    $ fec -v (or `--version`)

## Contributors
[@CQBinh](https://github.com/CQBinh) from [AsianTech](http://asiantech.vn) with love.
## Contributing

1. Fork [https://github.com/CQBinh/fec](https://github.com/CQBinh/fec)
2. Create your feature branch (`git checkout -b my-awesome-feature`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new pull request with a description of your changes

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
