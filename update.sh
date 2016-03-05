#!/bin/bash

rm .bash*
rm .mailcap
rm .muttrc
rm .ackrc
rm .gemrc
rm .gitconfig

cp -rf gitconfig .
cp -rf ~/.bash* .
cp -rf ~/.mailcap .
cp -rf ~/.muttrc .
cp -rf ~/.ackrc .
cp -rf ~/.gemrc .
