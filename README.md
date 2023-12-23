# Android device tree for samsung SM-G7810 (r8q)

## Samsung Galaxy S20 FE 5G (Snapdragon)

```
#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
```

## How to compile it:

```
mkdir twrp
cd twrp
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
repo sync
mkdir device/samsung
cd device/samsung/
git clone git@github.com:BeneficialCode/android_device_samsung_r8q.git r8q
cd ..
cd ..
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch twrp_r8q-eng
make recoveryimage

```

Kernel source: https://github.com/BeneficialCode/android_device_samsung_r8q
