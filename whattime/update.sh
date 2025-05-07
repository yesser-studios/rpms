#! /bin/bash
rm ./*.spec
rm ./*.rpm
rm ./*.tar.xz
rm -rf ./results_*
rust2rpm -V auto whattime
spectool -g ./rust-whattime.spec
rpkg srpm
