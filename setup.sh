#!/bin/bash
BASEDIR=$(readlink -f $0 | xargs dirname)
ln -s -r $BASEDIR/.bash_aliases ~/.bash_aliases
ln -s -r $BASEDIR/.bashrc ~/.bashrc
