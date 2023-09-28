## About

uname.rb is a C extension that provides a Ruby interface to
[uname(3)](https://man.freebsd.org/cgi/man.cgi?query=uname&sektion=3).
The
[uname(3)](https://man.freebsd.org/cgi/man.cgi?query=uname&sektion=3)
function populates a C struct that contains the name of on operating
system, a machine's network name, the release level of an operating system,
the version level of an operating system, and the machine's hardware platform.

## Example

The "uname" method is implemented on Ruby's Kernel module, and it can be called
with Kernel as an explicit receiver, or without an explicit receiver in contexts
where self inherits from Object. The following example was run on FreeBSD 14-CURRENT:

```ruby
require "uname"

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
```

## Sources

* [Source code (GitHub)](https://github.com/0x1eef/uname.rb#readme)
* [Source code (GitLab)](https://gitlab.com/0x1eef/uname.rb#about)

## Install

uname.rb is distributed as a RubyGem through its git repositories. <br>
[GitHub](https://github.com/0x1eef/uname.rb),
and
[GitLab](https://gitlab.com/0x1eef/uname.rb)
are available as sources.

## License

[BSD Zero Clause](https://choosealicense.com/licenses/0bsd/).
<br>
See [LICENSE](./LICENSE).

