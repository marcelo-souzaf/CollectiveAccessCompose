# Download and extract the latest version of the source code
# "If the server reports that the requested page has moved to a different location,
# this option (-L) will make curl redo the request on the new place"
sudo curl -L https://github.com/collectiveaccess/providence/archive/1.7.16.tar.gz

# Arguments are eXtract, Verbose, gZip and File name
tar -xvzf providence-1.7.16.tar.gz
# rm providence-1.7.16.tar.gz
cd providence-1.7.16

sudo curl -L https://github.com/collectiveaccess/pawtucket2/archive/1.7.16.tar.gz
tar -xvzf pawtucket2-1.7.16.tar.gz
# rm pawtucket2-1.7.16.tar.gz

cd ..

# Copies setup.php to both directories
sudo cp setup.php providence-1.7.16
sudo cp setup.php pawtucket2-1.7.16

# Small fix (2 lines) so CA checks for a password environment variable to access Redis
sudo cp ExternalCache.php providence-1.7.16/app/lib/cache
#sudo cp pt_BR.lang providence-1.7.16/app/lib/Parsers/TimeExpressionParser
# sudo cp messages.mo providence-1.7.16/app/locale/pt_BR
# sudo cp messages.mo providence-1.7.16/app/locale/user/pt_BR
