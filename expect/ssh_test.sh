#!/usr/bin/expect

spawn ssh walter@10.105.73.111
expect "password:"
send "walter0203\r"
interact
