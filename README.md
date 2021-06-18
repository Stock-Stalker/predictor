<!-- logo -->
<p align="center">
  <img width="300" src="logo.png">
</p>

<!-- short description -->
<h3 align="center">The predictive model behind StockStalker</h3>
<h1 align="center">StockStalker - Predictor API</h1>

<p align="center">
    <!-- license -->
    <img src="https://img.shields.io/github/license/Stock-Stalker/predictor" />
    <!-- code size  -->
    <img src="https://img.shields.io/github/languages/code-size/Stock-Stalker/predictor" />
    <!-- issues -->
    <img src="https://img.shields.io/github/issues/Stock-Stalker/predictor" />
    <!-- pull requests -->
    <img src="https://img.shields.io/github/issues-pr/Stock-Stalker/predictor" />
    <!-- number of commits per year -->
    <img src="https://img.shields.io/github/commit-activity/y/Stock-Stalker/predictor" />
    <!-- last commit -->
    <img src="https://img.shields.io/github/last-commit/Stock-Stalker/predictor" />
    <!-- docker image size -->
    <img src="https://img.shields.io/docker/image-size/starlightromero/stockstalker-predictor" />
    <!-- docker pulls -->
    <img src="https://img.shields.io/docker/pulls/starlightromero/stockstalker-predictor" />
    <!-- website status -->
    <img src="https://img.shields.io/website?url=https%3A%2F%2Fstockstalker.tk" />
</p>


## Table of Contents

- [Make Commands](#make-commands)
- [Required Software](#required-software)
- [How to Run](#how-to-run)
- [API Documentation](#api-documentation)
- [Usage and examples](#usage-and-examples)
- [Running Tests](#running-tests)


## Make Commands

`stop`: Stop the running server

`rm`: Remove all unused containers

`rm-all`: Stop and remove all containers

`rmi`: Remove stockstalker images without removing base images. Useful for speeding up build time when switching from one start script to another such as `make start` to `make test`

`rmi-all`: Remove all images

`purge`: _Use with caution_ Completely purge Docker containers, networks, images, volumes, and cache

`lint`: Run flake8

`build`: Build development server without running the server

`start`: Start development server at port `8080`

`reload`: Stop development server and restart the server at port `8080`

`hard-reload`: Stop container, remove container, rebuild container, and start development server

`debug`: Start development server in debug mode

`test`: Start test server

`test-security`: Test security vulnerabilities (must have [snyk](https://support.snyk.io/hc/en-us/articles/360003812538-Install-the-Snyk-CLI) installed globally)

`test-image-security`: Test security vulnerabilities for base images (must have [snyk](https://support.snyk.io/hc/en-us/articles/360003812538-Install-the-Snyk-CLI) installed globally)

`reload-test`: Reload test server

`hard-reload-test`: Remove container, rebuild container, and start test server


## Required Software

- [Docker](https://docs.docker.com/get-docker/)
- [docker-comopse](https://docs.docker.com/compose/install/)
- [CMake](https://cmake.org/install/)


## How to Run

Clone the repo
```zsh
git clone git@github.com:Stock-Stalker/predictor.git
```

cd into the directory
```zsh
cd predictor
```

Rename `.env.sample` to `.env`
```zsh
mv .env.sample .env
```

Edit the `.env` file to contain your environment variables
```zsh
vim .env
```

Run the application!
```zsh
make start
```

To stop the app press `CNTRL + C`. Then run:
```zsh
make stop
```


## API Documentation

Base URL:

```http
https://stockstalker.tk/predictor/
```

### Request

```http
GET https://stockstalker.tk/predictor/:symbol
```

In order to make a request to predictor, you must specify which company's stock you'd like to predict.

You can pass through the stock's ticker symbol (i.e: AAPL for Apple, or AMZN for Amazon).

### Response

The predictor will scrape headlines for the day, and make predictions based on the headlines. It will then return a list of integers denoting its predictions

The predictor will, behind the scenes, scrape and cache top daily headlines for the company that you specify. It will return a list of predictions:

```json
{
    "predictions": [0, 1, 1, 1]
}
```

Types:

- predictions: Array/list of integers

  - integer options:
    - 0 -> stock is predicted to decrease (negative)
    - 1 -> stock is predicted to increase (positive)
    - 2 -> stock is predicted to hold (neutral)

In the event that there is no news on a given day for the company you provide (for example, if today no one has published any articles containing keywords about "Apple" or "AAPL"), the predictor will always return `2`. This corresponds to a neutral prediction. The reasoning for this is that if we do not have data on a given day, we are unable to make a confident prediction as to the behavior of the stock.

### Example

```http
GET https://stockstalker.tk/predictor/AAPL
```


## Running Tests

To run tests simple run:
```zsh
make test
```

If any of the tests fail or if the tests do not have at least 90% coverage the command will exit with a status code of `1`.