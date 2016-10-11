# How to contribute

## Getting started

- Make sure you have a [GitHub account](https://github.com/signup/free).
- Submit a ticket for your issue or feature request, assuming one does not already exist.
  - Clearly describe it including steps to reproduce when it is a bug.
  - Make sure you fill in the earliest version that you know has the issue.
- Fork the repository on GitHub.
- Create your feature branch (`git checkout -b new-feature`).
- Run the tests (`bundle exec rake test`).
- Correct external links.
- Commit your changes
- Push to the branch (`git push origin new-feature`)
- Create new Pull Request

## Commit Message

- Separate subject from body with a blank line
- Limit the subject line to 50 characters
- Capitalize the subject line
- Do not end the subject line with a period
- Use the imperative mood in the subject line
- Wrap the body at 72 characters
- Use the body to explain what and why vs. how

## Add or edit content

All editorial content (pages and posts) should be translated in every available language. Only English and French are supported so far, but you're free to add any language you're comfortable with.

## Using media assets

Before adding new assets to the website, make sure their usage is allowed by their license, and try to credit the owner whenever it is possible.  
Should you have any doubt concerning the ownership of an asset, please let us know as you submit your contribution.

## About external links

External links are checked to track dead links. Unfortunately some servers can return errors depending on their policies, so this check purpose is simply to raise a warning flag. Link addition is up to the contributor, and tracking dead links is up to the community.

## Creating a new post

A post is simply a file which name is composed of the publication date and the url slug. For instance, `2019-01-02-hello.md` will be available at *https://www.poppy-project.org/en/posts/hello*, and its publication date will be 2019, January, 2nd.

A new post should be first created as draft, then be reviewed by the community. This process ensures a better global quality of the writings and avoids publishing by mistake.

The `_drafts` directory contains a few examples you can use as a starter.

To create translated post, you need to use the same date in the filenames for every translation. For instance, the `2010-07-27-exemple-d-article.md` and `2010-07-27-post-example.md` files have the same content, but in different languages. If we aimed japanese, the `2010-07-27-post-no-rei.md` file could be created.
