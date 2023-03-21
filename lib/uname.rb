class UNIXName < Struct.new(:sysname, :nodename, :release, :version, :machine)
  require_relative "uname.rb.so"
end
