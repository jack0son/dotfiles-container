#!/bin/bash
BASEDIR=$(readlink -f $0 | xargs dirname)
mv ~/.bash_aliases ~/.bash_aliases.bkp
mv ~/.bashrc ~/.bashrc.bkp
ln -s -r $BASEDIR/.bash_aliases ~/.bash_aliases
ln -s -r $BASEDIR/.bashrc ~/.bashrc
