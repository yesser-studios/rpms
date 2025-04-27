#! /bin/bash
rm ./*.spec
rm ./*.rpm
rm ./*.tar.xz
rm -rf ./results_*
rust2rpm -V auto yesser-todo-cli
