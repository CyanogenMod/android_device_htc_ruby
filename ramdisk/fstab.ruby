# Android fstab file.
#<src>			<mnt_point>	<type>	<mnt_flags>						<fs_mgr_flags>
# load these in early-init instead
#/dev/block/mmcblk0p17	/vendor/firmware/misc	vfat	ro,shortname=lower				wait
#/dev/block/mmcblk0p21	/vendor/firmware/adsp	vfat	ro,shortname=lower				wait

/dev/block/mmcblk0p29	/system		ext4	ro,data=ordered,noauto_da_alloc				wait
/dev/block/mmcblk0p30	/cache		ext4	noatime,nosuid,nodev,data=ordered,noauto_da_alloc	wait
/dev/block/mmcblk0p31	/data		ext4	noatime,nosuid,nodev,data=ordered,noauto_da_alloc	wait
/dev/block/mmcblk0p32	/devlog		ext4	noatime,nosuid,nodev,data=ordered,noauto_da_alloc	wait
