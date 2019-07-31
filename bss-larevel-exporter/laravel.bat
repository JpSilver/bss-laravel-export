@echo off
cd %1
cd resources/views/pages
erase *.blade.php /f
cd %1
cd public/assets/css/
erase laravel-bss.css /f
cd %1
move assets %1/public/
rename *.html *.blade.php
move *.blade.php %1/resources/views/pages
