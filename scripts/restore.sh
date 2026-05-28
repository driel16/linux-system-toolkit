#!/bin/bash

mkdir -p $HOME/restore_test

tar -xzvf $HOME/backups/*.tar.gz -C $HOME/restore_test

echo "Restore completed."
