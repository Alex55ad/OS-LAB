#!/bin/bash
#Part 3 Problem

function list_files()
{
    ALLFILES=0
    for fl in $set_dir/*
    do 
        if test -f "$fl"
        then
            echo  $fl
            ALLFILES=$((ALLFILES+1))
        fi
    done
    echo  $ALLFILES    
}


function list_pattern_files()
{
    FFILES=0
    for fl in $set_dir/f*.c
    do
        if test -f "$fl"
        then
            echo $fl
            FFILES=$((ALLFILES+1))
        fi
    done
    echo  $FFILES      
}

function list_subdirs()
{
    DIR=0
    for fl in $set_dir/*/
    do
        if test -d "$fl"
        then
            echo "$fl"
            DIR=$((DIR+1))
        fi
    done
    echo  $DIR
}

if test $# -ne 1
then
    echo USAGE: There must be only one input arg
    exit
else
    echo \ Currently using the parameter: $1
fi

set_dir=$1

if test ! -d $set_dir
then
    echo ERROR: Parameter is not a directory
    exit
else
    ALL=`list_files $set_dir`
    PATFILES=`list_pattern_files $set_dir`
    FDIR=`list_subdirs $set_dir`
    echo \ $ALL
    echo \ $PATFILES
    echo \ $FDIR
    #mkdir ${DIR}
    #cd ./${DIR}
    #echo $FFILES > ${ALLFILES}
fi
