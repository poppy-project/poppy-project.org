# Pollen Robotics;com

Code for the [Pollen website](https://www.pollen-robotics.com).

## Installation

This website is built with [Jekyll](http://jekyllrb.com/). Any question related to its usage should find an answer in the project [documentation](http://jekyllrb.com/docs/home/).

Jekyll requirements are:

- Ruby including development headers, v2 or above
- RubyGems
- Linux, Unix, or Mac OS X

## Instructions to run locally

```bash
gem install bundler
bundle install
bundle exec jekyll serve
```

## Run tests

```bash
bundle exec rake test
```

## Before contributing

Please take a look at the [contribution guide](CONTRIBUTING.md) to see how to get your changes merged in.

## Creating a new post

A post is simply a file which name is composed of the publication date and the url slug. For instance, `2019-01-02-hello.md` will be available at *https://www.pollen-robotics.com/en/posts/hello*, and its publication date will be 2019, January, 2nd.

A new post should be first created as draft, then be reviewed by the community. This process ensures a better global quality of the writings and avoids publishing by mistake.

The `_drafts` directory contains a few examples you can use as a starter.

To create translated post, you need to use the same date in the filenames for every translation. For instance, the `2010-07-27-exemple-d-article.md` and `2010-07-27-post-example.md` files have the same content, but in different languages. If we aimed japanese, the `2010-07-27-post-no-rei.md` file could be created.

## License

See [LICENSE](LICENSE.md) file.
