#!/system/bin/sh

BASE="$(cd "$(dirname "$0")" && pwd)"
ZIP_URL="https://github.com/vxy26/gamesdump/releases/download/film/a10.zip"

curl -s -L "$ZIP_URL" -o "$BASE/afk.zip"

unzip -q -o "$BASE/afk.zip" -d "$BASE"

su -c "
mkdir -p "/storage/emulated/0/Android/data/dkapp.pol.seiyw/files"
mkdir -p "/storage/emulated/0/Android/data/dkapp.pol.seiyx/files"
mkdir -p "/storage/emulated/0/Android/data/dkapp.pol.seiyy/files"

cp -r "$BASE/files/"* "/storage/emulated/0/Android/data/dkapp.pol.seiyw/files/"
cp -r "$BASE/files/"* "/storage/emulated/0/Android/data/dkapp.pol.seiyx/files/"
cp -r "$BASE/files/"* "/storage/emulated/0/Android/data/dkapp.pol.seiyy/files/"

pm install -r \"$BASE/RotationControl.apk\" > /dev/null 2>&1
pm install -r \"$BASE/1111fixlogin.apk\" > /dev/null 2>&1
pm install -r \"$BASE/dl1.apk\" > /dev/null 2>&1
pm install -r \"$BASE/dl2.apk\" > /dev/null 2>&1
pm install -r \"$BASE/dl3.apk\" > /dev/null 2>&1

settings put global window_animation_scale 0
settings put global transition_animation_scale 0
settings put global animator_duration_scale 0
settings put system pointer_speed 7
settings put global mobile_data_always_on 1
setprop persist.logd.size 65536
wm density 235

pm uninstall --user 0 com.google.android.apps.restore
pm uninstall --user 0 com.android.vending
pm uninstall --user 0 com.google.android.gms
pm uninstall --user 0 com.google.android.tts
pm uninstall --user 0 com.google.android.gsf
pm uninstall --user 0 com.android.yzbrowser
pm uninstall --user 0 com.owlproxy.overseas
pm uninstall --user 0 com.google.android.gms.setup
pm uninstall --user 0 com.android.chrome
pm uninstall --user 0 com.google.android.apps.photos
pm uninstall --user 0 com.android.expansiontools
pm uninstall --user 0 com.android.appstores
pm uninstall --user 0 com.android.pifix
pm uninstall com.termoneplus
"
