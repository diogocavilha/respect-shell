#!/bin/bash

# Shellscript module for writing better scripts.
# Author: Diogo Alexsander Cavilha <diogocavilha@gmail.com>
# Date: 02.05.2017

#
# Messages
#

function respect.message() {
    tput bold
    echo -e " $1"
    tput sgr0
}

function respect.message.red() {
    tput bold
    tput setaf 1
    echo -e " $1"
    tput sgr0
}

function respect.message.yellow() {
    tput bold
    tput setaf 3
    echo -e " $1"
    tput sgr0
}

function respect.message.blue() {
    tput bold
    tput setaf 6
    echo -e " $1"
    tput sgr0
}

function respect.message.green() {
    tput bold
    tput setaf 2
    echo -e " $1"
    tput sgr0
}

function respect.message.error() {
    tput bold
    tput setaf 1
    echo -e " ✖ $1"
    tput sgr0
}

function respect.message.warning() {
    tput bold
    tput setaf 3
    echo -e " ⚠ $1"
    tput sgr0
}

function respect.message.info() {
    tput bold
    tput setaf 6
    echo -e " ⓘ $1"
    tput sgr0
}

function respect.message.success() {
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
function respect.file_exists() {
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
function respect.dir_exists() {
    if [ -d "$1" ]; then
        return 0
    fi
    return 1
}

function respect.root_is_required() {
    local message=""
    
    message=${1:-You need to be root.}
    
    if [[ ! "$USER" = "root" ]]; then
        echo ""
        fancy.message.info "$message"
        echo ""
        exit 1
    fi
}

# respect.process "label" "callback"
function respect.process() {
    local label=""
    local callback=""
    
    label=$1
    callback=$2

    echo -en " $label"

    if eval "$callback"
    then
        __respect.process.ok
        return
    fi

    __respect.process.fail
}

function __respect.process.ok() {
    tput bold
    tput setaf 2
    echo -e " [  OK  ]"
    tput sgr0
}

function __respect.process.fail() {
    tput bold
    tput setaf 1
    echo -e " [ FAIL ]"
    tput sgr0
}

# respect.prepend.process "label" "callback"
function respect.prepend.process() {
    local label=""
    local callback=""
    local yellow=""
    local none=""
    
    label=$1
    callback=$2
    yellow=$(tput bold; tput setaf 3)
    none=$(tput sgr0)

    echo -en "$yellow [ WAIT ] $none$label"

    if eval "$callback"
    then
        __respect.prepend.process.ok
        return
    fi

    __respect.prepend.process.fail
}

function __respect.prepend.process.ok() {
    tput bold
    tput setaf 2
    echo -e "\r [  OK  ]"
    tput sgr0
}

function __respect.prepend.process.fail() {
    tput bold
    tput setaf 1
    echo -e "\r [ FAIL ]"
    tput sgr0
}

function respect.label() {
    local label=""
    local value=""
    
    label=$1
    value=$2
    
    tput bold
    echo -en " $label: "
    tput sgr0
    echo -e "$value"
}

function respect.label.ln() {
    local label=""
    local value=""
    
    label=$1
    value=$2
    
    tput bold
    echo -en " $label: "
    tput sgr0
    echo -en "$value"
}

function respect.title() {
    local title=${1:-No title}
    tput bold
    tput setaf 3
    echo -e "\n≡ $title\n"
    tput sgr0
}

function respect.window.title() {
    printf "\e]2;%s\a" "$1";
}

function respect.question.yesno() {
    local yesno=${2:-n}
    local options="[y/N]"
    local response=""

    if [[ "$yesno" =~ ["yY"] ]]
    then
        options="[Y/n]"
    fi

    tput bold
    tput setaf 6
    read -r -p "? $1 ${options}: " response
    tput sgr0

    if [ -z "$response" ]
    then
        response="$yesno"
    fi

    if [[ "$response" =~ ["yY"] ]]
    then
        return 0
    fi

    return 1
}