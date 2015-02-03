#!/bin/sh
echo "~~~ Uninstalling all versions of RSpec as well as related excecutables"
# parses for all known rspec dependencies and force uninstalls them (including related executables)
for r in $(gem list | grep rspec | cut -d ' ' -f 1); do
  gem uninstall -xa --force $r
done
echo "~~~ Installing RSpec version 2.14"
gem install rspec -v 2.14
echo "~~~ Done"
