## About

uname.rb is a C extension that provides a Ruby interface to
[uname(3)](https://man.freebsd.org/cgi/man.cgi?query=uname&sektion=3).
[uname(3)](https://man.freebsd.org/cgi/man.cgi?query=uname&sektion=3)
returns a struct that contains the name of on operating system, a machine's
network name, the release level of an operating system, the version level of
an operating system, and the machine's hardware platform. It can be especially
helpful when there's a preference to not depend on the uname binary.

## Examples

### FreeBSD

The `uname` method is a Kernel module function that can be called with
Kernel as an explicit receiver, or without an explicit receiver in contexts
where self inherits from Object. The following example was run on FreeBSD
14-CURRENT:

```ruby
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

