#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/zte/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=NX402

mkdir -p ../../../vendor/zte/$DEVICE/proprietary
adb pull /system/bin/qmuxd ../../../vendor/zte/$DEVICE/proprietary/qmuxd
chmod 755 ../../../vendor/zte/$DEVICE/proprietary/qmuxd
adb pull /system/bin/hci_qcomm_init ../../../vendor/zte/$DEVICE/proprietary/hci_qcomm_init
chmod 755 ../../../vendor/zte/$DEVICE/proprietary/hci_qcomm_init

# bluetooth
adb pull /system/etc/init.qcom.bt.sh ../../../vendor/zte/$DEVICE/proprietary/init.qcom.bt.sh

# EGL
adb pull /system/vendor/lib/egl/libEGL_adreno.so ../../../vendor/zte/$DEVICE/proprietary/libEGL_adreno.so
adb pull /system/vendor/lib/egl/libGLESv2_adreno.so ../../../vendor/zte/$DEVICE/proprietary/libGLESv2_adreno.so
adb pull /system/vendor/lib/egl/libGLESv1_CM_adreno.so ../../../vendor/zte/$DEVICE/proprietary/libGLESv1_CM_adreno.so
adb pull /system/vendor/lib/egl/libq3dtools_adreno.so ../../../vendor/zte/$DEVICE/proprietary/libq3dtools_adreno.so
adb pull /system/vendor/lib/libgsl.so ../../../vendor/zte/$DEVICE/proprietary/libgsl.so


#RIL files
adb pull /system/lib/libril-qc-qmi-1.so ../../../vendor/zte/$DEVICE/proprietary/libril-qc-qmi-1.so
adb pull /system/lib/libril-qcril-hook-oem.so ../../../vendor/zte/$DEVICE/proprietary/libril-qcril-hook-oem.so
adb pull /system/vendor/lib/libdiag.so ../../../vendor/zte/$DEVICE/proprietary/libdiag.so
adb pull /system/lib/libqmi.so ../../../vendor/zte/$DEVICE/proprietary/libqmi.so
adb pull /system/lib/libnfc.so ../../../vendor/zte/$DEVICE/proprietary/libnfc.so
adb pull /system/lib/libdss.so ../../../vendor/zte/$DEVICE/proprietary/libdss.so

#camera
adb pull /system/lib/liboemcamera.so ../../../vendor/zte/$DEVICE/proprietary/liboemcamera.so
adb pull /system/lib/libmmjpeg.so ../../../vendor/zte/$DEVICE/proprietary/libmmjpeg.so
adb pull /system/lib/libmmipl.so ../../../vendor/zte/$DEVICE/proprietary/libmmipl.so


#OMX
adb pull /system/lib/libOmxEvrcEnc.so ../../../vendor/zte/$DEVICE/proprietary/libOmxEvrcEnc.so
adb pull /system/lib/libOmxAacDec.so ../../../vendor/zte/$DEVICE/proprietary/libOmxAacDec.so
adb pull /system/lib/libOmxAmrEnc.so ../../../vendor/zte/$DEVICE/proprietary/libOmxAmrEnc.so
adb pull /system/lib/libOmxEvrcDec.so ../../../vendor/zte/$DEVICE/proprietary/libOmxEvrcDec.so
adb pull /system/lib/libOmxWmaDec.so ../../../vendor/zte/$DEVICE/proprietary/libOmxWmaDec.so
adb pull /system/lib/libOmxQcelp13Enc.so ../../../vendor/zte/$DEVICE/proprietary/libOmxQcelp13Enc.so
adb pull /system/lib/libOmxAacEnc.so ../../../vendor/zte/$DEVICE/proprietary/libOmxAacEnc.so


(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/zte/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/zte/__DEVICE__/extract-files.sh - DO NOT EDIT

# All the blobs necessary for NX402
PRODUCT_COPY_FILES += \\
    vendor/zte/__DEVICE__/proprietary/libEGL_adreno.so:system/vendor/lib/egl/libEGL_adreno.so \\
    vendor/zte/__DEVICE__/proprietary/libGLESv2_adreno.so:system/vendor/lib/egl/libGLESv2_adreno.so \\
    vendor/zte/__DEVICE__/proprietary/libGLESv1_CM_adreno.so:system/vendor/lib/egl/libGLESv1_CM_adreno.so \\
    vendor/zte/__DEVICE__/proprietary/libq3dtools_adreno.so:system/vendor/lib/egl/libq3dtools_adreno.so \\
    vendor/zte/__DEVICE__/proprietary/libgsl.so:/system/vendor/lib/libgsl.so \\
    vendor/zte/__DEVICE__/proprietary/qmuxd:system/bin/qmuxd \\
    vendor/zte/__DEVICE__/proprietary/libril-qc-1.so:system/lib/libril-qc-1.so \\
    vendor/zte/__DEVICE__/proprietary/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \\
    vendor/zte/__DEVICE__/proprietary/libdiag.so:system/vendor/lib/libdiag.so \\
    vendor/zte/__DEVICE__/proprietary/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \\
    vendor/zte/__DEVICE__/proprietary/main.conf:system/etc/bluetooth/main.conf \\
    vendor/zte/__DEVICE__/proprietary/ti_gauge.bqfs:system/etc/ti_gauge.bqfs \\
    vendor/zte/__DEVICE__/proprietary/ti_gauge.dffs:system/etc/ti_gauge.dffs \\
    vendor/zte/__DEVICE__/proprietary/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/zte/__DEVICE__/proprietary/libqmi.so:system/lib/libqmi.so \\
    vendor/zte/__DEVICE__/proprietary/libdsm.so:system/lib/libdsm.so \\
    vendor/zte/__DEVICE__/proprietary/libqueue.so:system/lib/libqueue.so \\
    vendor/zte/__DEVICE__/proprietary/libdll.so:system/lib/libdll.so \\
    vendor/zte/__DEVICE__/proprietary/libcm.so:system/lib/libcm.so \\
    vendor/zte/__DEVICE__/proprietary/libmmgsdilib.so:system/lib/libmmgsdilib.so \\
    vendor/zte/__DEVICE__/proprietary/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
    vendor/zte/__DEVICE__/proprietary/libgstk_exp.so:system/lib/libgstk_exp.so \\
    vendor/zte/__DEVICE__/proprietary/libwms.so:system/lib/libwms.so \\
    vendor/zte/__DEVICE__/proprietary/libnfc.so:system/lib/libnfc.so \\
    vendor/zte/__DEVICE__/proprietary/libwmsts.so:system/lib/libwmsts.so \\
    vendor/zte/__DEVICE__/proprietary/libpbmlib.so:system/lib/libpbmlib.so \\
    vendor/zte/__DEVICE__/proprietary/libdss.so:system/lib/libdss.so \\
    vendor/zte/__DEVICE__/proprietary/libauth.so:system/lib/libauth.so \\
    vendor/zte/__DEVICE__/proprietary/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/zte/__DEVICE__/proprietary/liboemcamera.so:obj/lib/liboemcamera.so \\
    vendor/zte/__DEVICE__/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/zte/__DEVICE__/proprietary/libmmipl.so:system/lib/libmmipl.so \\
    vendor/zte/__DEVICE__/proprietary/hci_qcomm_init:system/bin/hci_qcomm_init \\
    vendor/zte/__DEVICE__/proprietary/libOmxEvrcEnc.so:/system/lib/libOmxEvrcEnc.so \\
    vendor/zte/__DEVICE__/proprietary/libOmxAacDec.so:/system/lib/libOmxAacDec.so \\
    vendor/zte/__DEVICE__/proprietary/libOmxAmrEnc.so:/system/lib/libOmxAmrEnc.so \\
    vendor/zte/__DEVICE__/proprietary/libOmxEvrcDec.so:/system/lib/libOmxEvrcDec.so \\
    vendor/zte/__DEVICE__/proprietary/libOmxWmaDec.so:/system/lib/libOmxWmaDec.so \\
    vendor/zte/__DEVICE__/proprietary/libOmxQcelp13Enc.so:/system/lib/libOmxQcelp13Enc.so \\
    vendor/zte/__DEVICE__/proprietary/libOmxAacEnc.so:/system/lib/libOmxAacEnc.so \\
    vendor/zte/__DEVICE__/proprietary/libmm-adspsvc.so:/system/lib/libmm-adspsvc.so \\
    vendor/zte/__DEVICE__/proprietary/libmm-adspsvc.so:/system/lib/libqdutils.so \\



EOF

./setup-makefiles.sh