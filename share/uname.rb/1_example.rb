require "uname"
name = Kernel.uname
puts name.sysname
puts name.nodename
puts name.release
puts name.version
puts name.machine

##
# UNIXName
# FreeBSD
# 0.al-quran.reflectslight.local
# 14.0-CURRENT-HBSD
# FreeBSD 14.0-CURRENT-HBSD #0  hardened/current/master-n192545-c7d6d4bb487: ...
# amd64
