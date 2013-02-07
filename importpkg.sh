#!/bin/zsh

package="$1"

if [ -z "$package" ]; then
  echo "Usage: $0 package"
  exit 1
fi

wget "https://aur.archlinux.org/packages/${package:0:2}/${package}/${package}.tar.gz"
tar -xf "$package"

