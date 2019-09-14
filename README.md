# Faker

This gem is a port of [Ruby's Faker library](https://github.com/faker-ruby/faker) that generates fake data.

- [Faker](#faker)
    - [NOTE](#note)
  - [Installing](#installing)
  - [Usage](#usage)
    - [CLI](#cli)
  - [Generators](#generators)
    - [Faker.address](data/address/README.md)
    - [Faker.address_br](data/address_br/README.md)
    - [Faker.address_ca](data/address_ca/README.md)
    - [Faker.address_us](data/address_us/README.md)
  - [Customization](#customization)
  - [Contributing](#contributing)
  - [Contact](#contact)
  - [License](#license)

### NOTE
* This is the `master` branch of Faker and may contain changes that are not yet released.
  Please refer the README of your version for the available methods.
  List of all versions is [available here](https://github.com/vbrazo/faker/releases).

## Installing
```bash
v install faker
```

## Usage
```v
import faker

//TODO
```

### CLI

We currently work with two optional arguments in the CLI:
- generator: we have different types of generators inside the `/data`, you should pass the generator that you're interested in using.
- method: inside each generator, we can pick up a set of data generators. V will pick up randomly one item.

```bash
v run main.v --generator=address_us --method=state_abbr
```

## Customization
Since you may want to make addresses and other types of data look different
depending on where in the world you are (US postal codes vs. UK postal codes,
for example), Faker uses the I18n gem to store strings (like state names) and
formats (US postal codes are NNNNN while UK postal codes are AAN NAA),
allowing you to get different formats by switching locales.  Just set
Faker::Config.locale to the locale you want, and Faker will take care of the
rest.

If your locale doesn't already exist, create it in the `data` directory
and you can then override or add elements to suit your needs.

## Contributing
See [CONTRIBUTING.md](https://github.com/vbrazo/faker/blob/master/CONTRIBUTING.md).

## Contact
Comments and feedback are welcome. Send an email to Vitor Oliveira via the [issues](https://github.com/vbrazo/faker/issues).

## License
This code is free to use under the terms of the MIT license.
