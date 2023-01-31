# Download and extract the latest version of the source code
# "If the server reports that the requested page has moved to a different location,
# this option (-L) will make curl redo the request on the new place"

version=1.7.16

curl -L https://github.com/collectiveaccess/providence/archive/$version.tar.gz -o providence.tar.gz

# Arguments are eXtract and File name (optionally v for verbose)
tar -xf providence.tar.gz
rm providence.tar.gz
mv providence-$version providence
cd providence

curl -L https://github.com/collectiveaccess/pawtucket2/archive/$version.tar.gz -o pawtucket2.tar.gz
tar -xf pawtucket2.tar.gz
mv pawtucket2-$version pawtucket
rm pawtucket2.tar.gz

# Necessary for the symbolic link to work properly
cd pawtucket
ln -s ../media ./media

cd ../..

# Copies setup.php to the providence folder
cp setup.php providence/setup.php

# Small fix (2 lines) so CA checks for a password environment variable to access Redis
cp ExternalCache.php providence/app/lib/Cache/ExternalCache.php

# Gives read, write and execute access to all users so that the container can access the files
chmod a=rwx -R providence


# pt_BR locale
cp pt_BR.lang providence/app/lib/Parsers/TimeExpressionParser/pt_BR.lang
mkdir providence/app/locale/user
mkdir providence/app/locale/user/pt_BR
cp messages.po providence/app/locale/user/pt_BR/messages.po
cp messages.mo providence/app/locale/user/pt_BR/messages.mo
