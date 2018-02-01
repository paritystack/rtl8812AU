DRV_NAME=rtl8812AU
DRV_VERSION=4.3.14
mkdir /usr/src/${DRV_NAME}-${DRV_VERSION}
git archive driver-${DRV_VERSION} | tar -x -C /usr/src/${DRV_NAME}-${DRV_VERSION}
dkms add -m ${DRV_NAME} -v ${DRV_VERSION}
dkms build -m ${DRV_NAME} -v ${DRV_VERSION}
dkms install -m ${DRV_NAME} -v ${DRV_VERSION}
