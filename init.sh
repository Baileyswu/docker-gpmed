#!/bin/bash
echo "hello world"
cd ~
mkdir .ssh
mv /app/config ~/.ssh/.
mv /app/jupyter_notebook_config.py ~/.jupyter/.
mv /app/.vimrc ~/.
