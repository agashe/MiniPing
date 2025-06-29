# Miniping

Miniping is a lightweight utility designed for exploring the ICMP protocol. It implements a subset of the functionalities found in the original `ping` utility. This project is primarily a learning exercise and a bit of fun, rather than a production-ready tool.

You'll notice that Miniping has been implemented in several programming languages within the `src` directory. I'm considering running benchmarks across these implementations to compare their performance!

*Please note: This tool is not intended for production use.*

## Features

The original `ping` utility is incredibly robust and handles a multitude of cases and options. Miniping, however, focuses on a core set of features and currently only supports IPv4. IPv6 support might be added in the future.

Here are the available options:

| Option | Description |
|--------|-------------|
|-c <count>         |stop after <count> replies
|-D                 |print timestamps
|-f                 |flood ping
|-h                 |print help and exit
|-i <interval>      |seconds between sending each packet
|-s <size>          |use <size> as number of data bytes to be sent
|-t <ttl>           |define time to live
|-v                 |verbose output
|-w <deadline>      |reply wait <deadline> in seconds
|-W <timeout>       |time to wait for response

## Build

To build Miniping, use the build.sh script. Simply provide the desired programming language as a parameter, and the script will handle the rest. Just ensure that the necessary compiler or interpreter for your chosen language is installed on your machine.

```bash
./build.sh php
```
Upon successful compilation, a new `build` directory will be created, containing the miniping executable ready for use. If you've built multiple implementations (e.g., PHP, Golang), separate directories will be created for each within the build folder.

## Usage

Using Miniping is similar to the original `ping` utility. Open your terminal and run the following command:

```bash
miniping [options] <URL or IP>
```

## Testing 

Before running tests, make sure you've built the utility in one of the supported languages (refer to the Build section). Then, simply execute the test runner script:

```bash
./tests/run_tests.sh
```

If you have multiple implementations, the test runner script will prompt you to select the desired one. Alternatively, you can pass the language as a parameter:

```bash
./tests/run_tests.sh php
```

## License 

(Miniping) released under the terms of the MIT license.
