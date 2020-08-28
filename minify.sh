#!/bin/bash
DISTFILE=$1
CONTENT=$(sed -e "s/^[ \t]*//g" -e "/^$/d" $DISTFILE)
wait
echo $CONTENT;
