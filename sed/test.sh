#!/bin/bash

say_hello="Hello."

function welcome_msg() {
    local myName="$USER"
    echo "${say_hello} ${myName}"
}

welcome_msg && echo How are you today?

grep "[aiueo]sh" "${HOME}"/.bashrc
