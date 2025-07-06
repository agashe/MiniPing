#!/bin/bash

## define constants ####################################

# get the requested build file to run
COMMAND="ping"

# default test IP : Google DNS IP
IP="8.8.8.8"

## define test cases ####################################

# -no options        default case
test_no_options() {
    MAX_ITERATIONS=3
    ITERATIONS=0
    LINES=()

    while read -r LINE
    do
        LINES+="$LINE"
        ITERATIONS=$((ITERATIONS + 1))

        if [[ $ITERATIONS -eq MAX_ITERATIONS ]]; then
            break
        fi
    done < <($COMMAND $IP)

    echo "$LINES[@]"
}

# -c (count)         stop after (count) replies
# -D                 print timestamps
# -f                 flood ping
# -h                 print help and exit
# -i (interval)      seconds between sending each packet
# -s (size)          use (size) as number of data bytes to be sent
# -t (ttl)           define time to live
# -v                 verbose output
# -w (deadline)      reply wait (deadline) in seconds
# -W (timeout)       time to wait for response

## run test cases ####################################

TEST_CASES=(
    "test_no_options"
)

for TEST_CASE in "${TEST_CASES[@]}"; do
    $TEST_CASE
done