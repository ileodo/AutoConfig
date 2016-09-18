#!/bin/bash

source autoconfig.cfg


targets_handler(){
  case $1 in
    'automatic')
      handlers/automatic.sh;;
    'dependencies')
      handlers/dependencies.sh;;
    'apps')
      handlers/apps.sh;;
    'mas')
      handlers/mas.sh;;
    'mannually')
      handlers/mannually.sh;;
    'dev')
      handlers/dev.sh;;
    'mackup')
      handlers/mackup.sh;;
    'config')
      handlers/config.sh;;
    *)
      printf "ERROR: Invalid targets.\n"
      break;;
  esac
}


while true; do
  if [[ $# == 0 ]]; then
    printf "\Targets:\n"

    printf "  automatic:     fully automatic\n"
    printf "  dependencies:  intsall Command Line Tools for Xcode, \n"
    printf "                 homebrew, brew-cask, Foundation Formulars, \n"
    printf "                 Dropbox \n"

    printf "  apps:          intsall Apps and Tools \n"
    printf "  mas:           notify me the Applications from Mac App Store \n"
    printf "  mannually:     notify me the Application Mannually \n"

    printf "  dev:           Install Development Environments \n"
    printf "  mackup:        Restore mackup \n"
    printf "  config:        Configuration \n"

    read -p "Enter selection: " response
    printf "\n"
    targets_handler $response
  else
    targets_handler $1
  fi
done

