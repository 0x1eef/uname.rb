require_relative "setup"
require "uname"

name = Kernel.uname
print "class = ", name.class, "\n"
print "sysname = ", name.sysname, "\n"
print "nodename = ", name.nodename, "\n"
print "release =", name.release, "\n"
print "version = ", name.version, "\n"
print "machine = ", name.machine, "\n"

##
# class = UNIXName
# sysname = FreeBSD
# nodename = 0.al-quran.reflectslight.local
# release = 14.0-CURRENT-HBSaD
# version = FreeBSD 14.0-CURRENT-HBSD #0  hardened/current/master-n192545-c7d6d4bb487: ...
# machine = amd64
