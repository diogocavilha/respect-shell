#!/bin/bash

# Shellscript boilerplate for making better scripts.
# Author: Diogo Alexsander Cavilha <diogocavilha@gmail.com>
# Date: 02.05.2017

#
# Messages
#

fancy.message() {
    tput bold
    echo -e " $1"
    tput sgr0
}

fancy.message.red() {
    tput bold
    tput setaf 1
    echo -e " $1"
    tput sgr0
}

fancy.message.yellow() {
    tput bold
    tput setaf 3
    echo -e " $1"
    tput sgr0
}

fancy.message.blue() {
    tput bold
    tput setaf 6
    echo -e " $1"
    tput sgr0
}

fancy.message.green() {
    tput bold
    tput setaf 2
    echo -e " $1"
    tput sgr0
}

fancy.message.error() {
    tput bold
    tput setaf 1
    echo -e " ✖ $1"
    tput sgr0
}

fancy.message.warning() {
    tput bold
    tput setaf 3
    echo -e " ⚠ $1"
    tput sgr0
}

fancy.message.info() {
    tput bold
    tput setaf 6
    echo -e " ⓘ $1"
    tput sgr0
}

fancy.message.success() {
    tput bold
    tput setaf 2
    echo -e " ✔ $1"
    tput sgr0
}

#
# Functions
#

# This function receives a file name in order to check whether or
# not it exists.
# Returned value:
#   0 - File exists.
#   1 - File does not exist.
fancy.file_exists()
{
    if [ -e "$1" ]; then
        return 0
    fi
    return 1
}

# This function receives a directory name in order to check whether
# or not it exists.
# Returned value:
#   0 - Diretory exists.
#   1 - Diretory does not exist.
fancy.dir_exists() {
    if [ -d "$1" ]; then
        return 0
    fi
    return 1
}

fancy.root_is_required() {
    local message=${1:-You need to be root.}
    if [[ ! "$USER" = "root" ]]; then
        echo ""
        fancy.message.info "$message"
        echo ""
        exit 1
    fi
}

# fancy.process "label" "callback"
fancy.process() {
    local label=$1
    local callback=$2

    echo -en " $label"

    if eval "$callback"
    then
        _fancy.process.ok
        return
    fi

    _fancy.process.fail
}

_fancy.process.ok() {
    tput bold
    tput setaf 2
    echo -e " [  OK  ]"
    tput sgr0
}

_fancy.process.fail() {
    tput bold
    tput setaf 1
    echo -e " [ FAIL ]"
    tput sgr0
}

# fancy.prepend.process "label" "callback"
fancy.prepend.process() {
    local label=$1
    local callback=$2

    echo -en "\t  $label"

    if eval "$callback"
    then
        _fancy.prepend.process.ok
        return
    fi

    _fancy.prepend.process.fail
}

_fancy.prepend.process.ok() {
    tput bold
    tput setaf 2
    echo -e "\r [  OK  ]"
    tput sgr0
}

_fancy.prepend.process.fail() {
    tput bold
    tput setaf 1
    echo -e "\r [ FAIL ]"
    tput sgr0
}

fancy.label() {
    local label=$1
    local value=$2
    tput bold
    echo -en " $label: "
    tput sgr0
    echo -e "$value"
}

fancy.label.ln() {
    local label=$1
    local value=$2
    tput bold
    echo -en " $label: "
    tput sgr0
    echo -en "$value"
}

fancy.title() {
    local title=${1:-No title}
    tput bold
    tput setaf 3
    echo -e "\n≡ $title\n"
    tput sgr0
}

fancy.die() {
    local message=${1:-Something went wrong! Script has stoped.}
    echo ""
    fancy.message.red "$message"
    echo ""
    exit 1
}
