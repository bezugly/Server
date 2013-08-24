ver = `git log -1 --pretty=format:%h`.strip
config = open("version.tmpl").read
config.gsub!(/\$WCREV\$/m, ver)
f = open("version.h", "w")
f << config
f.close
