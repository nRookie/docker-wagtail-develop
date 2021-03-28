$file = 'bakerydemo'
$ErrorActionPreference = "Stop"
if (-not(Test-Path -Path $file -PathType Leaf)) {
     try {
         git clone https://github.com/wagtail/bakerydemo.git
     }
     catch {
         throw $_.Exception.Message
     }
 }
# If the file already exists, show the message and do nothing.
 else {
     Write-Host "Directory $file already exists, skipping..."
 }



$file = 'wagtail'
if (-not(Test-Path -Path $file -PathType Leaf)) {
     try {
         git clone https://github.com/wagtail/wagtail.git
     }
     catch {
         throw $_.Exception.Message
     }
 }
# If the file already exists, show the message and do nothing.
 else {
     Write-Host "Directory $file already exists, skipping..."
 }


$file = 'libs/django-modelcluster'


if (-not(Test-Path -Path $file -PathType Leaf)) {
     try {
         git clone https://github.com/wagtail/django-modelcluster.git libs/django-modelcluster
     }
     catch {
         throw $_.Exception.Message
     }
 }
# If the file already exists, show the message and do nothing.
 else {
     Write-Host "Directory $file already exists, skipping..."
 }



$file = 'libs/libs/Willow'


if (-not(Test-Path -Path $file -PathType Leaf)) {
     try {
         git clone https://github.com/wagtail/Willow.git libs/Willow
     }
     catch {
         throw $_.Exception.Message
     }
 }
# If the file already exists, show the message and do nothing.
 else {
     Write-Host "Directory $file already exists, skipping..."
 }


$file = 'bakerydemo/bakerydemo/settings/local.py'


if (-not(Test-Path -Path $file -PathType Leaf)) {
     try {
         Write-Output "Creating local settings file"
         Copy-Item bakerydemo/bakerydemo/settings/local.py.docker-compose-example bakerydemo/bakerydemo/settings/local.py
     }
     catch {
         throw $_.Exception.Message
     }
 }
# If the file already exists, show the message and do nothing.
 else {
     Write-Host "Directory $file already exists, skipping..."
 }


$file = 'bakerydemo/.env'


if (-not(Test-Path -Path $file -PathType Leaf)) {
     try {
        Write-Output "Creating file for local environment variables"
        Write-Output "DJANGO_SETTINGS_MODULE=bakerydemo.settings.local" > bakerydemo/.env
     }
     catch {
         throw $_.Exception.Message
     }
 }
# If the file already exists, show the message and do nothing.
 else {
     Write-Host "Directory $file already exists, skipping..."
 }

