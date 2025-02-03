#!/bin/bash
set -x

init_path="init.img"

rm -f $init_path
mkdosfs -n CIDATA -C $init_path 8192
ls -rtd cloud-init/ubuntu/* | xargs -I% mcopy -oi $init_path -s % ::
