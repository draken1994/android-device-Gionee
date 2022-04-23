----Thanks for xen0n, who are contributing to the working CyanogenMod of MTK hardware.---
# CyanogenMod 13.0

This is a device tree for huawei S5 which is based on MT6592 SoC. Powered by ferhung.
# Build

*

* full build
        
        # source build/envsetup.sh

        # brunch lineage_S5-userdebug

# Limitations

Services requires root:

`system/core/rootdir/init.rc`

  * surfaceflinger depends on sched_setscheduler calls, unable to change process priority from 'system' user (default user 'system')

  * mediaserver depends on /data/nvram folder access, unable to do voice calls from 'media' user (default user 'media')

# In China, we must skip to get 204 from Google server.
  * Change of Android 5.1 source to skip network validation in some environment like China can't connect to http://clients3.google.com/generate_204. 

  To see: 
    [Skip_network_validation](http://github.com/ferhung/Skip_network_validation)
JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4096m"

export PATH=~/bin:$PATH
export EXPERIMENTAL_USE_JAVA8=true
export USE_CCACHE=1
export LC_ALL=C