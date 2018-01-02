#!/usr/bin/env bash

#Black        0;30     Dark Gray     1;30
#Red          0;31     Light Red     1;31
#Green        0;32     Light Green   1;32
#Brown/Orange 0;33     Yellow        1;33
#Blue         0;34     Light Blue    1;34
#Purple       0;35     Light Purple  1;35
#Cyan         0;36     Light Cyan    1;36
#Light Gray   0;37     White         1;37

LRED='\033[1;31m'
LGREEN='\033[1;32m'
LBLUE='\033[0;34m'
LYELLOW='\033[1;33m'
NC='\033[0m' # No Color

# functions
function log() {

    local CL=${LBLUE}
    echo
    echo -e "${CL}----[INFO - $(date '+%d/%m/%Y %k:%M:%S')] - ${1}${NC}"
    echo
}

function warn() {
    local CL=${LYELLOW}
    echo
    echo -e "${LYELLOW}----[WARN - $(date '+%d/%m/%Y %k:%M:%S')] - ${1}${NC}"
    echo
}

function error() {
    local CL=${LRED}
    echo
    echo -e "${LRED}----[ERROR - $(date '+%d/%m/%Y %k:%M:%S')] - ${1}${NC}"
    echo
}
