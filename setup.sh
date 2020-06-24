#!/bin/bash
BASEDIR=$(readlink -f $0 | xargs dirname)
mv $BASEDIR/.bash_aliases $BASEDIR/.bash_aliases.bkp
mv $BASEDIR/.bashrc $BASEDIR/.bashrc.bkp
ln -s -r $BASEDIR/.bash_aliases ~/.bash_aliases
ln -s -r $BASEDIR/.bashrc ~/.bashrc
