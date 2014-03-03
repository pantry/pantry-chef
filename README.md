# Pantry Chef

[![Code Climate](https://codeclimate.com/github/pantry/pantry-chef.png)](https://codeclimate.com/github/pantry/pantry-chef)

Pantry Chef is a plugin for [Pantry](pantryops.org) to host and serve up Chef data (cookbooks, environments, roles, and data bags). Chef is run on Clients using chef-solo.

## Installation

Install the plugin on all nodes in the Pantry network:

    gem install pantry-chef

## Usage

Once installed, using Pantry Chef is simple. You'll need to upload each of your cookbooks to the server.

    pantry chef:cookbook:upload COOKBOOK_DIR

For application specific files (environments, roles, and data bags) you need to specify an application for uploading

    pantry -a [application] chef:environment:upload ENVIRONMENT_FILE
    ...

Once all files are uploaded, trigger a Chef run on all clients:

    pantry chef:run
    
More details can be found at http://pantryops.org/chef

## Project Details

* Hosted on Github [pantry/pantry-chef](https://github.com/pantry/pantry-chef)
* File bug reports on the [Issue tracker](https://github.com/pantry/pantry-chef/issues)

## Contributing

* Fork this repository on github
* Make your changes and send us a pull request
* All pull requests must contain tests
* Pull Request tests must pass before being accepted

## Licence

Pantry Chef is distributed under the MIT License. See LICENSE for more details.