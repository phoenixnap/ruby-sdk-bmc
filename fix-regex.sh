#!/bin/bash
echo Entering $1...
cd $1
find . -type f -path '*.rb' | xargs sed -i -s -E "s/Regexp\.new(.*?)(\\\\)+\//Regexp.new\1\\//g"