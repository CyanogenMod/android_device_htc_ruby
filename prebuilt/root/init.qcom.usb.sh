#!/system/bin/sh
serialno=`getprop persist.usb.serialno`
case "$serialno" in
    "")
    serialnum=`getprop ro.serialno`
    echo "$serialnum" > /sys/class/android_usb/android0/iSerial
    ;;
    * )
    echo "$serialno" > /sys/class/android_usb/android0/iSerial
esac

chown root.system /sys/devices/platform/msm_hsusb/gadget/wakeup
chmod 220 /sys/devices/platform/msm_hsusb/gadget/wakeup

#
# Allow persistent usb charging disabling
# User needs to set usb charging disabled in persist.usb.chgdisabled
#
target=`getprop ro.board.platform`
usbchgdisabled=`getprop persist.usb.chgdisabled`
case "$usbchgdisabled" in
    "") ;; #Do nothing here
    * )
    case $target in
        "msm8660")
        echo "$usbchgdisabled" > /sys/module/pmic8058_charger/parameters/disabled
        echo "$usbchgdisabled" > /sys/module/smb137b/parameters/disabled
	;;
        "msm8960")
        echo "$usbchgdisabled" > /sys/module/pm8921_charger/parameters/disabled
	;;
    esac
esac

#
# Allow USB enumeration with default PID/VID
#
baseband=`getprop ro.baseband`
echo 1  > /sys/class/android_usb/f_mass_storage/lun/nofua
usb_config=`getprop persist.sys.usb.config`
case "$usb_config" in
    "" | "adb") #USB persist config not set, select default configuration
        case $target in
            "msm8960")
                socid=`cat /sys/devices/system/soc/soc0/id`
                case "$socid" in
                    "109")
                         setprop persist.sys.usb.config diag,adb
                    ;;
                    *)
                        case "$baseband" in
                            "mdm")
                                 setprop persist.sys.usb.config diag,diag_mdm,serial_hsic,serial_tty,rmnet_hsic,mass_storage,adb
                            ;;
                            *)
                                 setprop persist.sys.usb.config diag,serial_smd,serial_tty,rmnet_bam,mass_storage,adb
                            ;;
                        esac
                    ;;
                esac
            ;;
            "msm7627a")
                setprop persist.sys.usb.config diag,serial_smd,serial_tty,rmnet_smd,mass_storage,adb
            ;;
            * )
                case "$baseband" in
                    "svlte2a")
                         setprop persist.sys.usb.config mtp,adb
                    ;;
                    "csfb")
                         setprop persist.sys.usb.config mtp,adb
                    ;;
                    *)
                         setprop persist.sys.usb.config mtp,adb
                    ;;
                esac
            ;;
        esac
    ;;
    * ) ;; #USB persist config exists, do nothing
esac

