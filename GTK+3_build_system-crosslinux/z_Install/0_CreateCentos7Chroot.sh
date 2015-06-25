#!/bin/bash

# An updated version of
# http://zaufi.github.io/administration/2014/06/10/howto-make-a-centos-chroot/

set -e

if ! test -d "$1"; then
    echo "Usage:"
    echo " $0 <chroot dir to set up>"
fi

CHROOT=$1
RELEASE_FILE=centos-release-7-1.1503.el7.centos.2.8.x86_64.rpm
RELEASE_URL=http://mirror.centos.org/centos/7/os/x86_64/Packages/$RELEASE_FILE

if which apt-get > /dev/null 2>&1 ; then
    apt-get install rpm yum
fi

rpm --root=$CHROOT --rebuilddb
cd $CHROOT
wget $RELEASE_URL
sha1sum -c <<EOF
80573f63b210cd587adc6d8af7300e0b6abda537  $RELEASE_FILE
EOF

rpm --root=$CHROOT --nodeps -i $RELEASE_FILE
yum --installroot=$CHROOT update
ln -s $CHROOT /etc/pki || true
yum --installroot=$CHROOT install -y yum
