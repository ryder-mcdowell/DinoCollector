# Dino Collector

Dino Collector is a text based game where the player first chooses a Dino and then uses that Dino to gather resources and tame other Dino's.
The application includes a text based Dino combat simulator and has RTS elements.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing.

### Prerequisites

If you do not have ruby installed yet, you will want to make sure to do that and use version 2.5.0.

If you do not have rails installed yet, you can install it with:

```
gem install rails
```

You will also want bundler for installing dependencies. Install it with:

```
gem install bundler
```

### Installing

Follow these steps to get a development environment running:

1. Clone the repo onto your local machine:

```
git clone https://github.com/ryder-mcdowell/DinoCollector.git
```

2. Install dependencies:

```
bundle install
```

3. Create database:

```
rails db:create:all
rails db:migrate
```

4. Initialize specs:

```
rails generate rspec:install
```

## Running the Tests

To run the test suite, use the command:

```
rspec
```
