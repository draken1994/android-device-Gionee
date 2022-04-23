#!/bin/bash
 cd ../../../..
 cd frameworks/native
 patch -p1 < ../../device/Gionee/S5/patch/android_frameworks_native_MTK.patch
 echo android_frameworks_native
 
 cd ../../..
 
 echo Chaliye Suru Karte Hai...
