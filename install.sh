#!/bin/bash

echo "Running project"

valgrind ./concus
exit $?