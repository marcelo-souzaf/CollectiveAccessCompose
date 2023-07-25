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
rm pawtucket2.tar.gz
mv pawtucket2-$version pawtucket

# Necessary for the symbolic link to work properly
cd pawtucket
ln -s ../media ./media

cd ../..

# Copies the setup.php file to the right folders
cp setupProvidence.php providence/setup.php
cp setupPawtucket2.php providence/pawtucket/setup.php

# Small fix (5 lines) so CA checks for a password environment variable to access Redis
cp ExternalCache.php providence/app/lib/Cache/ExternalCache.php
cp ExternalCache.php providence/pawtucket/app/lib/Cache/ExternalCache.php

# Gives read, write and execute access to all users so that the container can access the files
chmod a=rwx -R providence


# pt_BR locale
cp pt_BR/base.xml providence/install/profiles/xml/base.xml
cp pt_BR/default.xml providence/install/profiles/xml/default.xml
cp pt_BR/app.conf providence/pawtucket/app/conf/app.conf

cp pt_BR/pt_BR.lang providence/app/lib/Parsers/TimeExpressionParser/pt_BR.lang
cp pt_BR/pt_BR.lang providence/pawtucket/app/lib/Parsers/TimeExpressionParser/pt_BR.lang
cp pt_BR/messages.po providence/app/locale/pt_BR/messages.po
cp pt_BR/messages.mo providence/app/locale/pt_BR/messages.mo
mkdir providence/pawtucket/app/locale/pt_BR
cp pt_BR/messages2.po providence/pawtucket/app/locale/pt_BR/messages.po
cp pt_BR/messages2.mo providence/pawtucket/app/locale/pt_BR/messages.mo
mkdir providence/pawtucket/themes/default/locale/pt_BR
cp pt_BR/messages3.po providence/pawtucket/themes/default/locale/pt_BR/messages.po
cp pt_BR/messages3.mo providence/pawtucket/themes/default/locale/pt_BR/messages.mo
