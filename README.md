# bollettino-cli

[![Build Status](https://travis-ci.org/interconn-isp/bollettino-cli.svg?branch=master)](https://travis-ci.org/interconn-isp/bollettino-cli)
[![Dependency Status](https://gemnasium.com/interconn-isp/bollettino-cli.svg)](https://gemnasium.com/interconn-isp/bollettino-cli)
[![Code Climate](https://codeclimate.com/github/interconn-isp/bollettino-cli/badges/gpa.svg)](https://codeclimate.com/github/interconn-isp/bollettino-cli)

bollettino-cli is a command line interface for [Bollettino](https://github.com/interconn-isp/bollettino-cli).

It supports generation of postal payment slips from the command line as well as
from CSV files.

## Installation

Install the gem as:

```console
$ gem install bollettino-cli
```

## Usage

```console
$ bollettino-cli generate [OPTIONS] [OUTPUT_PATH]
```

Or, to generate slips from a CSV file:

```console
$ bollettino-cli csv-generate [OPTIONS] [OUTPUT_PATH]
```

For the documentation run:

```console
$ bollettino-cli help
```

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
