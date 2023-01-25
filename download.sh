# Download and extract the latest version of the source code
# "If the server reports that the requested page has moved to a different location,
# this option (-L) will make curl redo the request on the new place"

version=1.7.16

sudo curl -L https://github.com/collectiveaccess/providence/archive/$version.tar.gz -o providence.tar.gz

# Arguments are eXtract, gZip and File name (optionally v for verbose)
tar -xzf providence.tar.gz
rm providence.tar.gz
cd providence-$version

sudo curl -L https://github.com/collectiveaccess/pawtucket2/archive/$version.tar.gz -o pawtucket2.tar.gz
tar -xzf pawtucket2.tar.gz
rm pawtucket2.tar.gz

cd ..

# Copies setup.php to the providence folder
sudo cp setup.php providence-version/setup.php

# Small fix (2 lines) so CA checks for a password environment variable to access Redis
sudo cp ExternalCache.php providence-version/app/lib/Cache/ExternalCache.php

# Might be useful in the future
# sudo cp pt_BR.lang providence-version/app/lib/Parsers/TimeExpressionParser/pt_BR.lang
# sudo cp messages.po providence-version/app/locale/user/pt_BR/messages.po
# sudo cp messages.mo providence-version/app/locale/user/pt_BR/messages.mo
