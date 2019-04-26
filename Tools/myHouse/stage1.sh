#!/bin/bash

if [ ! -d ~/Media ]; then
  mkdir ~/Media
fi
if [ -d ~/Music ]; then
  mv ~/Music ~/Media
fi
if [ -d ~/Pictures ]; then
  mv ~/Pictures ~/Media
fi
if [ -d ~/Videos ]; then
  mv ~/Videos ~/Media
fi
if [ -d ~/Templates ]; then
  mv ~/Templates ~/Documents
fi
if [ -d ~/Public ]; then
  mv ~/Public ~/Documents
fi

if [ ! -d ~/Code ]; then
  mkdir ~/Code
  mkdir ~/Code/4winds
  mkdir ~/Code/windlab
  mkdir ~/Code/playspace
  mkdir ~/Code/workspace
fi

