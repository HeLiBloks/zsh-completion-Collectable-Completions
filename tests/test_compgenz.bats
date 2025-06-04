#!/usr/bin/env bats

@test "compgenz generates valid completion" {
    help_output="Usage: myprog [options]
  -h, --help     show help message
  -f FILE        specify file"
    run bash -c "printf '%s\n' \"$help_output\" | $BATS_TEST_DIRNAME/../script/compgenz myprog"
    [ "$status" -eq 0 ]
    [[ "$output" == *"#compdef myprog"* ]]
}
