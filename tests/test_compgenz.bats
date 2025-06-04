#!/usr/bin/env bats

@test "compgenz generates valid completion" {
    help_output="Usage: myprog [options]
  -h, --help       show help message
  -u USER          specify user
  -d unixtime      specify date
  -x display       specify display
  -H host          specify host
  -i interfaces    specify interface
  -f FILE          specify file"
    run bash -c "printf '%s\n' \"$help_output\" | $BATS_TEST_DIRNAME/../script/compgenz myprog"
    [ "$status" -eq 0 ]
    [[ "$output" == *"#compdef myprog"* ]]
    [[ "$output" == *"_net_interfaces"* ]]
    [[ "$output" == *"_x_display"* ]]
    [[ "$output" == *"_files"* ]]
    #[[ "$output" == *"_dates"* ]]
    #[[ "$output" == *"_hosts"* ]]
}
