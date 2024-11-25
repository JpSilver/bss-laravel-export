@echo off
cd %1
cd resources/views/pages
erase *.blade.php /f
cd %1
cd public/assets/css/
IF EXIST laravel-bss.css (
   erase laravel-bss.css /f
)
cd %1
move assets %1/public/
rename *.html *.blade.php
move *.blade.php %1/resources/views/pages
IF EXIST manifest.json (
    move manifest.json %1/public/
)
IF EXIST sitemap.xml (
    move sitemap.xml %1/public/
)
