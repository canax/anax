Anax
=========================

[![Latest Stable Version](https://poser.pugx.org/anax/anax/v/stable)](https://packagist.org/packages/anax/anax)
[![Join the chat at https://gitter.im/canax/anax](https://badges.gitter.im/canax/anax.svg)](https://gitter.im/canax/anax?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

[![Build Status](https://travis-ci.org/canax/anax.svg?branch=master)](https://travis-ci.org/canax/anax)
[![CircleCI](https://circleci.com/gh/canax/anax.svg?style=svg)](https://circleci.com/gh/canax/anax)

The base for a complete installation of Anax with all the basic features. Use this to get going iwth your Anax project.



Table of Content
------------------

* [Requirements](#Requirements)
* [Install](#Install)
* [Verify installation](#Verify-installation)
* [License](#License)



Requirements
------------------

You need:

* PHP 7.2 or later
* `composer`
* `git`

You might want to have:

* A webserver with PHP enabled.
* `make`
* `node` and `npm` to work with the `theme/`.
* Docker and `docker-compose` to run in containers.



Install
------------------

There are different ways on how to get going and install a fresh installation of the framework. They all include the following tasks:

1. Get a copy of this repo.
1. Do `composer install` to get all dependencies.
1. Execute the scaffolding scripts in `.anax/scaffold/postprocess.bash`.



### Composer

This is the prefered way since it only requires the use of composer.

Composer automatically installs in the directory `site/` with the dependencies and processes the scaffolding scripts.

```
composer create-project anax/anax site --stability beta
```

You might want to use the switch `--ignore-platform-reqs` if your cli environment is different from your apache environment.

Here are a few other ways of customising the create project command.

You can specify the exact version you want.

```
composer create-project anax/anax site "^2.0" --stability beta
```

You can also check out the latest development version from the master branch.

```
composer create-project anax/anax site "dev-master" --stability dev
```



### Git clone

Clone this repo into a folder `site/` and perform composer install and finish up by executing the scaffolding scripts.

```
git clone https://github.com/canax/anax.git git
cd git
composer install
composer run-script post-root-package-install
```



### Scaffold using anax-cli

You can install the base for a website using [anax-cli](https://github.com/canax/anax-cli). This is how to scaffold a site in the directory `site/`.

```
anax create site anax-site-v2
```




Verify installation
------------------

These are steps you can carry out to verify and enhance your installation.



### Open your site in a web browser

Point your web browser to the directory `site/htdocs`.



### Install development environment and run tests

The repo comes with a development environment which can be installed and then the tests can be executed.

```
make install test
```

Run `make` to see what more can be done.



### Suggested add-ons

Check what other packages that might be suggested. These are not essential, just suggestions. You can leave them as is for now.

```
composer suggests --no-dev --by-package
```



License
------------------

This software carries a MIT license. See [LICENSE.txt](LICENSE.txt) for details.



```
 .  
..:  Copyright (c) 2013 - 2020 Mikael Roos, mos@dbwebb.se
```
