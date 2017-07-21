# octoswarm-stacks

## Table of Contents

* [Introduction](#introduction)
* [Getting Started](#getting-started)
  * [Install Docker](#install-docker)
  * [Install Homebrew](#install-homebrew)
  * [Install Whalebrew](#install-whalebrew)
  * [Install Octoswarm](#install-octoswarm)
* [Usage](#usage)
  * [Environment](#environment)
* [License](#license)

## Introduction

A public Octoswarm demo for nodesummit. All examples and usage are for `macOS`

## Getting Started

### Install Docker

*See: [https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac](https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac)*


### Install Homebrew

*See: [https://brew.sh/](https://brew.sh/)*

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Install Whalebrew

*See: [https://github.com/bfirsh/whalebrew](https://github.com/bfirsh/whalebrew)*

```bash
curl -L "https://github.com/bfirsh/whalebrew/releases/download/0.1.0/whalebrew-$(uname -s)-$(uname -m)" -o /usr/local/bin/whalebrew; chmod +x /usr/local/bin/whalebrew
```

## Install Octoswarm

```
brew tap octoblu/tools
brew install octoswarm
```

## Usage

### Environment

- AWS_ACCESS_KEY_ID          (required)
- AWS_SECRET_ACCESS_KEY      (required)
- AWS_DEFAULT_REGION         (required)
- DOCKER_HUB_USERNAME        (required)
- DOCKER_HUB_PASSWORD        (required)
- BEEKEEPER_URI              (required)
- PINGDOM_APP_KEY            (required)
- PINGDOM_USERNAME           (required)
- PINGDOM_PASSWORD           (required)
- OCTOSWARM_GITHUB_API_TOKEN (required)
- OCTOSWARM_LOGENTRIES_TOKEN (optional)
- OCTOSWARM_MACHINE          (optional)

## License

MIT License

Copyright (c) 2017 Peter DeMartini

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
