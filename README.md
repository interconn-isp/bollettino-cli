# bollettino-cli

[![Gem Version](https://img.shields.io/gem/v/bollettino-cli.svg?maxAge=3600&style=flat-square)](https://rubygems.org/gems/bollettino-cli)
[![Build Status](https://img.shields.io/travis/interconn-isp/bollettino-cli.svg?maxAge=3600&style=flat-square)](https://travis-ci.org/interconn-isp/bollettino-cli)
[![Dependency Status](https://img.shields.io/gemnasium/interconn-isp/bollettino-cli.svg?maxAge=3600&style=flat-square)](https://gemnasium.com/github.com/interconn-isp/bollettino-cli)
[![Code Climate](https://img.shields.io/codeclimate/github/interconn-isp/bollettino-cli.svg?maxAge=3600&style=flat-square)](https://codeclimate.com/github/interconn-isp/bollettino-cli)

bollettino-cli is a command line interface for [Bollettino](https://github.com/interconn-isp/bollettino-cli).

It supports generation of postal payment slips from the command line as well as
from CSV files.

## Installation

Install the gem as:

```console
$ gem install bollettino-cli
```

## Usage

Run the following command to generate a slip:

```console
$ bollettino-cli generate --payee-account=[PAYEE_ACCOUNT] --payee-name=[PAYEE_NAME] \
  --payer-name=[PAYER_NAME] --payer-street=[PAYER_STREET] --payer-zip=[PAYER_ZIP] \
  --payer-location=[PAYER_LOCATION] --order-numamount=[ORDER_NUMAMOUNT] \
  --order-textamount=[ORDER_TEXTAMOUNT] --order-reason=[ORDER_REASON] [OUTPUT_PATH]
```

For the documentation run:

```console
$ bollettino-cli help
```

### Generating from CSV

To generate slips from a CSV file run:

```console
$ bollettino-cli csv-generate --source=[CSV_PATH] [OUTPUT_DIR]
```

The columns' order is not important, but the headers must match the options of
the `generate` command.

## Contributing

1. Fork it (https://github.com/interconn-isp/bollettino-cli/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Maintainers

bollettino-cli is developed and maintained by [Alessandro Desantis](https://github.com/alessandro1997).

## License

bollettino-cli is released under the MIT license.

[![InterConn](http://www.gravatar.com/avatar/b3f5893b97323096977545477e0066c5.jpg?s=100)](http://www.interconn.it)
