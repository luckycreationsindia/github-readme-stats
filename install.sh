#!/bin/bash
shopt -s extglob
gt=$GITHUB_TOKEN
echo $gt
cmd="git clone https://$gt@github.com/luckycreationsindia/github-readme-stats.git ./tmp"
$cmd
cp -fr ./tmp/* ./
rm -fr ./.git ./.idea ./tmp
npm i
pm2 reload "github-readme-stats" --update-env