# Get Info inside of the info.xml file residing in every app folder.
# For example - App Version, or Minimal or Maximal PHP / ownCloud Version
# requires xmlstartlet installation

apt instal xmlstartlet
cd /var/www/owncloud/apps

# show app descriptions
find . -type f -name info.xml -exec echo {} \; -exec xmlstarlet select --template --value-of /info/description --nl {} \;
# show app versions
find . -type f -name info.xml -exec echo {} \; -exec xmlstarlet select --template --value-of /info/version --nl {} \;
