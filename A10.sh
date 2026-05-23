#!/system/bin/sh

BASE="$(cd "$(dirname "$0")" && pwd)"
ZIP_URL="https://github.com/vxy26/gamesdump/releases/download/film/a10.zip"

curl -s -L "$ZIP_URL" -o "$BASE/afk.zip"
unzip -q -o "$BASE/afk.zip" -d "$BASE"

su -c "
cp -r \"$BASE/Delta\" \"/storage/emulated/0/\" 2>/dev/null
cp -r \"$BASE/Codex\" \"/storage/emulated/0/\" 2>/dev/null

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

pm uninstall --user 0 com.android.mxLauncher3
pm uninstall --user 0 com.android.dreams.basic
pm uninstall --user 0 com.android.bookmarkprovider
pm uninstall --user 0 com.android.chrome
pm uninstall --user 0 com.android.cts.ctsshim
pm uninstall --user 0 com.google.android.syncadapters.calendar
pm uninstall --user 0 com.google.android.syncadapters.contacts
pm uninstall --user 0 com.google.android.tts
pm uninstall --user 0 com.android.wallpaper.livepicker
pm uninstall --user 0 com.android.nfc
pm uninstall --user 0 com.google.android.apps.photos
pm uninstall --user 0 com.android.soundrecorder
pm uninstall --user 0 com.android.traceur
pm uninstall --user 0 com.android.wallpaperbackup
pm uninstall --user 0 com.android.providers.blockednumber
pm uninstall --user 0 com.android.providers.calendar
pm uninstall --user 0 com.android.cts.priv.ctsshim
pm uninstall --user 0 com.google.android.backuptransport
pm uninstall --user 0 com.google.android.feedback
pm uninstall --user 0 com.google.android.onetimeinitializer
pm uninstall --user 0 com.android.managedprovisioning
pm uninstall --user 0 com.android.musicfx
pm uninstall --user 0 com.android.statementservice
pm uninstall --user 0 com.google.android.apps.turbo
pm uninstall --user 0 com.android.providers.userdictionary
pm uninstall --user 0 com.android.calendar
pm uninstall --user 0 com.android.camera2
pm uninstall --user 0 com.android.deskclock
pm uninstall --user 0 com.android.music
pm uninstall --user 0 com.android.dreams.phototable
pm uninstall --user 0 com.android.wallpaperpicker
pm uninstall --user 0 com.android.appstores
pm uninstall --user 0 com.android.contacts
pm uninstall --user 0 com.android.dialer
pm uninstall --user 0 com.owlproxy.overseas
pm uninstall --user 0 com.android.pifix
pm uninstall --user 0 com.android.yzbrowser
pm uninstall com.termoneplus
"
