# Readme

This small project has been created in XCode to test some of the techniques learnt from CodeWithChris. 

## Overview

This is an iOS project written in Swift that documents some of my vinyl record collection.  It has a simple user interface based upon NavigationStack.

# How to clone this project

1) Clone the repository onto your computer
2) Create a new configuration file called Config.xcconfig
3) Add the following lines into Config.xcconfig

```
SQL_UID = <your SQL server user id>
SQL_PASSWORD = <The password that corresponds to that user id>
```
4) Update the Debug and Release configurations to select the "Config" settings.

The file Config.xcconfig is excluded from source control.

## Home page

The _ContainerView_ struct is used to display the entry point of the App.
