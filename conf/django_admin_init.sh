#!/usr/bin/expect -f

set timeout -1

set env(PYTHONPATH) /opt/graphite/webapp

spawn django-admin syncdb --settings=graphite.settings

expect "Would you like to create one now? *" {
  send "yes\r"
}

expect "Username *:" {
  send "$env(GRAPHITEWEB_USERNAME)\r"
}

expect "Email address:" {
  send "$env(GRAPHITEWEB_EMAIL)\r"
}

expect "Password:" {
  send "$env(GRAPHITEWEB_PASSWORD)\r"
}

expect "Password *:" {
  send "$env(GRAPHITEWEB_PASSWORD)\r"
}

expect "Superuser created successfully"
