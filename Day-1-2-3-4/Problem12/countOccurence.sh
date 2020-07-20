#!/bin/bash -x
grep -o -i systemd access.log | wc -l
