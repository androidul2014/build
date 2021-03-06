NAME = $(shell basename $(shell pwd))
TITLE = F15C Eagle (TouchPad)
DEVICE = touchpad
CATEGORY = Alpha
VERSIONS = 3.0.4-95 3.0.5-95
APPINFO_DESCRIPTION = The latest <b>alpha test</b> kernel from uNiXpSyChO.<br><br>\
Features:<br> * 1.9GHz<br> * autogroup process scheduling<br> * CFS<br> * Lagfree<br> * BFQ and SIO<br> * EXT4<br> * Various tweaks<br>\
<br><b>NOTE: CPU core 2 will mostly stay idle. This is by webOS default, NOT a kernel problem. If you want to test this, run a Sunspider benchmark. Do not report CPU core 2 bugs.</b><br><br>\
For more information, visit ${HOMEPAGE}<br>
DESCRIPTION = ${APPINFO_DESCRIPTION}<br>${KERNEL_DISCLAIMER}<br>
APPINFO_CHANGELOG = [ \
{ "version" : "${WEBOS_VERSION}-95", "log" : [ "add lagfree gov." ] }, \
{ "version" : "${WEBOS_VERSION}-89", "log" : [ "add charger scaleback override (enabled by default)." ] }, \
{ "version" : "${WEBOS_VERSION}-82", "log" : [ "Happy Halloween." ] }, \
{ "version" : "${WEBOS_VERSION}-80", "log" : [ "rebuild." ] }, \
{ "version" : "${WEBOS_VERSION}-79", "log" : [ "add load polling for power saver (will run 2 cpus based on load). exclude powerd when in power saver. disable power saver when turbo mode enabled and vice versa." ] }, \
{ "version" : "${WEBOS_VERSION}-78", "log" : [ "misc scheduler patches. update to make Govnah happy." ] }, \
{ "version" : "${WEBOS_VERSION}-74", "log" : [ "make BFQ default. add missing NAS protocols." ] }, \
{ "version" : "${WEBOS_VERSION}-71", "log" : [ "add turbo mode. make powersaver do the correct thing. online or offline cpu when changing sysfs." ] }, \
{ "version" : "${WEBOS_VERSION}-70", "log" : [ "fix power save logic when enabled/disabled. remove unscalable freqs and voltages in arrays when setting in sysfs." ] }, \
{ "version" : "${WEBOS_VERSION}-64", "log" : [ "add selectable L2 boost via l2_boost sysfs param." ] }, \
{ "version" : "${WEBOS_VERSION}-63", "log" : [ "revert some L2 overclock, will make selectable later. tweak block req." ] }, \
{ "version" : "${WEBOS_VERSION}-62", "log" : [ "use the git implementation of SHA-1. remove optimized SHA1 routines. Improve the performance of memcpy and memmove of the general version. more overclock of L2. make powersave do something." ] }, \
{ "version" : "${WEBOS_VERSION}-61", "log" : [ "fix hanging sysfs." ] }, \
{ "version" : "${WEBOS_VERSION}-59", "log" : [ "add strict dualcore method." ] }, \
{ "version" : "${WEBOS_VERSION}-55", "log" : [ "various fixes. updates to ARM cache." ] }, \
{ "version" : "${WEBOS_VERSION}-54", "log" : [ "start over." ] }, \
{ "version" : "${WEBOS_VERSION}-53", "log" : [ "minor code cleanup." ] }, \
{ "version" : "${WEBOS_VERSION}-51", "log" : [ "disabled webOS default power saving from userspace and introduced faster ramp up. add power_saver sysfs." ] }, \
{ "version" : "${WEBOS_VERSION}-49", "log" : [ "fixed override module loading. add sysfs snoop to watch userspace call sysfs to offline cpu." ] }, \
{ "version" : "${WEBOS_VERSION}-42", "log" : [ "Add UTF8. try to fix override module loading." ] }, \
{ "version" : "${WEBOS_VERSION}-41", "log" : [ "remove cpu disabling hack (hope this teaches a lesson to certain people)." ] }, \
{ "version" : "${WEBOS_VERSION}-40", "log" : [ "add override module for manual sysfs voltage config. add more freqs (good luck). teach l-users a lesson on battery saving techniques." ] }, \
{ "version" : "${WEBOS_VERSION}-37", "log" : [ "lower L2 table (fix boot loops on wimpy TPs)." ] }, \
{ "version" : "${WEBOS_VERSION}-32", "log" : [ "add SIO IO sched. add V(R) IO sched. enable shadow writes for gpu." ] }, \
{ "version" : "${WEBOS_VERSION}-30", "log" : [ "remove screenstate for now. speed up boot. tweak conservative and ondemand govs. change up freqs." ] }, \
{ "version" : "${WEBOS_VERSION}-28", "log" : [ "add screenstate. add boot messages." ] }, \
{ "version" : "${WEBOS_VERSION}-26", "log" : [ "rebuild for 3.0.2. add BFQ. increase freq to a stable 1.728GHz without voltage increase." ] }, \
{ "version" : "${WEBOS_VERSION}-19", "log" : [ "Initial release. autogroup process scheduling. CPU HW based alignment. deadline tweak." ] }, \
]
CHANGELOG = \
${WEBOS_VERSION}-95: add lagfree gov<br>\
${WEBOS_VERSION}-89: add charger scaleback override (enabled by default)<br>\
${WEBOS_VERSION}-82: Happy Halloween.<br>\
${WEBOS_VERSION}-80: rebuild.<br>\
${WEBOS_VERSION}-79: add load polling for power saver (will run 2 cpus based on load). exclude powerd when in power saver. disable power saver when turbo mode enabled and vice versa.<br>\
${WEBOS_VERSION}-78: misc scheduler patches. update to make Govnah happy.<br>\
${WEBOS_VERSION}-74: make BFQ default. add missing NAS protocols.<br>\
${WEBOS_VERSION}-71: add turbo mode. make powersaver do the correct thing. online or offline cpu when changing sysfs.<br>\
${WEBOS_VERSION}-70: fix power save logic when enabled/disabled. remove unscalable freqs and voltages in arrays when setting in sysfs.<br>\
${WEBOS_VERSION}-64: add selectable L2 boost via l2_boost sysfs param.<br>\
${WEBOS_VERSION}-63: revert some L2 overclock, will make selectable later. tweak block req.<br>\
${WEBOS_VERSION}-62: use the git implementation of SHA-1. remove optimized SHA1 routines. Improve the performance of memcpy and memmove of the general version. more overclock of L2. make powersave do something.<br>\
${WEBOS_VERSION}-61: fix hanging sysfs.<br>\
${WEBOS_VERSION}-59: add strict dualcore method.<br>\
${WEBOS_VERSION}-55: various fixes. updates to ARM cache.<br>\
${WEBOS_VERSION}-54: start over.<br>\
${WEBOS_VERSION}-53: minor code cleanup.<br>\
${WEBOS_VERSION}-51: disabled webOS default power saving from userspace and introduced faster ramp up. add power_saver sysfs.<br>\
${WEBOS_VERSION}-49: fixed override module loading. add sysfs snoop to watch userspace call sysfs to offline cpu.<br>\
${WEBOS_VERSION}-42: Add UTF8. try to fix override module loading.<br>\
${WEBOS_VERSION}-41: remove cpu disabling hack (hope this teaches a lesson to certain people).<br>\
${WEBOS_VERSION}-40: add override module for manual sysfs voltage config. add more freqs (good luck). teach l-users a lesson on battery saving techniques.<br>\
${WEBOS_VERSION}-37: lower L2 table (fix boot loops on wimpy TPs).<br>\
${WEBOS_VERSION}-32: add SIO IO sched. add V(R) IO sched. enable shadow writes for gpu.<br>\
${WEBOS_VERSION}-30: remove screenstate for now. speed up boot. tweak conservative and ondemand govs. change up freqs.<br>\
${WEBOS_VERSION}-28: add screenstate. add boot messages.<br>\
${WEBOS_VERSION}-26: rebuild for 3.0.2. add BFQ. increase freq to a stable 1.728GHz without voltage increase.<br>\
${WEBOS_VERSION}-19: Initial release. autogroup process scheduling. CPU HW based alignment. deadline tweak.<br>

HOMEPAGE = http://www.webos-internals.org/wiki/Application:PsychoKernel
SRC_GIT = git://git.webos-internals.org/kernels/patches.git
KERNEL_PATCHES = identification/mkcompile_h.patch \
		 psychobuild/F15C.patch \
		 psychobuild/add_avail_freqs.patch \
		 psychobuild/override.patch \
		 psychobuild/ondemand-ng.patch \
		 psychobuild/fbconsole.patch \
		 psychobuild/F15-logo.patch \
		 psychobuild/comptune2.patch \
		 psychobuild/cpu_alignment.patch \
		 psychobuild/cpu_alignment-p2.patch \
		 psychobuild/cpu_gov.patch \
		 psychobuild/iosched_blk.patch \
		 psychobuild/iosched-bundle.patch \
		 psychobuild/iosched-deadline.patch \
		 psychobuild/sched-p1.patch \
		 psychobuild/sched-p2.patch \
		 psychobuild/cache-p1.patch \
		 psychobuild/jhash3.patch \
		 psychobuild/memcpy.patch \
		 memory/tmc_mem.patch \
		 psychobuild/lagfree.patch \
		 psychobuild/autogroup.patch

TYPE = Kernel

include ../../support/kernel.mk

KERNEL_DEFCONFIG = psychobuild/F15C.config

