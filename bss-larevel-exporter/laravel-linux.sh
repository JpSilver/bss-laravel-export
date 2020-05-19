#!/bin/bash
cd $1
cd resources/views/pages
rm -f *.blade.php
cd $1
cd public/assets/css/
rm -f laravel-bss.css
cd $1
mv assets $1/public/
for file in *.html; do mv -- "$file" "${1}/resources/views/pages/${file}.blade.php"; done
