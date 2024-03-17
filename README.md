## About

uname.rb provides Ruby bindings for
[uname(3)](https://man.freebsd.org/cgi/man.cgi?query=uname&sektion=3).

## Example

The "uname" method is implemented on Ruby's Kernel module, and
it can be called with Kernel as an explicit receiver, or without
an explicit receiver in contexts where self inherits from Object.
The following example was run on FreeBSD 14-STABLE:

```ruby
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
```

## Documentation

A complete API reference is available at
[0x1eef.github.io/x/uname.rb](https://0x1eef.github.io/x/uname.rb).

## Install

**Rubygems.org**

uname.rb can be installed via rubygems.org.

    gem install uname.rb

## Sources

* [GitHub](https://github.com/0x1eef/uname.rb#readme)
* [GitLab](https://gitlab.com/0x1eef/uname.rb#about)

## License

[BSD Zero Clause](https://choosealicense.com/licenses/0bsd/).
<br>
See [LICENSE](./LICENSE).

