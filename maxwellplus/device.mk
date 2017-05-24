#
# Copyright (C) 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_AAPT_CONFIG := normal mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

DEVICE_PACKAGE_OVERLAYS += device/bq/maxwellplus/overlay

# Config files
PRODUCT_COPY_FILES += \
    device/bq/maxwellplus/config/media_profiles.xml:system/etc/media_profiles.xml 
   ## device/bq/maxwellplus/config/gsensor.cfg:system/etc/gsensor.cfg

# Rootdir blob
PRODUCT_COPY_FILES += \
    device/bq/maxwellplus/rootdir/rk30xxnand_ko.ko.3.0.36+:root/rk30xxnand_ko.ko.3.0.36+


# Prebuilt
PRODUCT_COPY_FILES += \
    device/bq/maxwellplus/prebuilt/updater:obj/EXECUTABLES/updater_intermediates/updater

# Sensors
PRODUCT_PACKAGES += \
    sensors.rk30board
	
# Default config
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160 \
    lockscreen.rot_override=true \
    ro.sf.hwrotation=270 