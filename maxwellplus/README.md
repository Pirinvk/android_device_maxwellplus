CyanogenMod device configuration for the bq Maxwell Plus.

How to Build
---------------

Initialise from CyanogenMod:

    repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0

Use the following local manifest:

    <?xml version="1.0" encoding="UTF-8"?>
    <manifest>

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
    </manifest>

Sync and build:

    repo sync
    vendor/cm/get-prebuilts
    . build/envsetup.sh
    brunch maxwellplus

