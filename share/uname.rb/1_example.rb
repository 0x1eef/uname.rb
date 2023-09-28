require_relative "setup"
require "uname"

uname = Kernel.uname
uname = Kernel.uname
print "class = "    , uname.class    , "\n"
print "sysname = "  , uname.sysname  , "\n"
print "nodename = " , uname.nodename , "\n"
print "release ="   , uname.release  , "\n"
print "version = "  , uname.version  , "\n"
print "machine = "  , uname.machine  , "\n"

##
# class = UNIXName
# sysname = FreeBSD
# nodename = 0.al-quran.reflectslight.local
# release = 14.0-CURRENT-HBSD
# version = FreeBSD 14.0-CURRENT-HBSD #0  hardened/current/master-n192545-c7d6d4bb487: ...
# machine = amd64
