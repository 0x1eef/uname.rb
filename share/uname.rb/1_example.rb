require_relative "setup"
require "uname"

uname = Kernel.uname
print "class    = " , uname.class    , "\n"
print "sysname  = " , uname.sysname  , "\n"
print "nodename = " , uname.nodename , "\n"
print "release  = " , uname.release  , "\n"
print "version  = " , uname.version  , "\n"
print "machine  = " , uname.machine  , "\n"

##
# class    = UNIXName
# sysname  = FreeBSD
# nodename = freebsd.local
# release  = 14.0-STABLE-HBSD
# version  = FreeBSD 14.0-STABLE-HBSD #0  ...
# machine  = amd64
