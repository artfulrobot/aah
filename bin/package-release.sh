#!/usr/bin/env bash
#
# Package the files for a release.
#
# All this does is create zip and tgz files that exclude various things not
# needed in a public repo.

which tar >/dev/null || { echo "X tar not found in path. Cannot continue."; exit 1; }
which zip >/dev/null || { echo "X zip not found in path. Cannot continue."; exit 1; }

function usage {
  if [ -n "$2" ]
  then
    echo "$2" >&2
  fi
  echo "Usage: $0 [-h] [-n name]";
  echo ""
  echo "  -h  Display this message"
  echo ""
  exit $1;
}

# By default don't deploy anywhere
deploy_to=
# an option followed by : means "takes an argument", set in $OPTARG
while getopts "hd:" opt; do
  case $opt in
    h )   usage 0 ;;
    d )   deploy_to=$OPTARG;;
    \? )  usage 1 ;;
  esac
done
# Now remove all options (and their args) from the positional parameters
# So we can process any additional non-option args, which MUST come after
# options.
shift $((OPTIND-1))

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd $SCRIPTPATH/.. || { echo "X hmmm. failed to cd $SCRIPTPATH/.."; exit 1; }
# We should now be in the project root.
CWD=$(pwd)
PROJECT_NAME=$(basename "$CWD")
if [ "$PROJECT_NAME" != 'shetlend' ]
then
  echo "X Expected repo to be in dir called 'shetlend'"
  exit 1
fi
# Extract version
if which xml_grep >/dev/null 2>&1
then
  VERSION=`xml_grep --text_only version info.xml`
  echo "got version with xml_grep: $VERSION"
elif which sed >/dev/null 2>&1
then
  # try sed. This will work as long as version is on one line.
  VERSION=`sed -n '/<version/{s/^.*<version>\s*\(.*\)\s*<\/version>/\1/;p}' info.xml`
  echo "got version with sed: $VERSION"
else
  echo "install xml_grep from 'xml-twig-tools' package or at least sed."
  VERSION='unknown'
fi
ARCHIVE_NAME="shetlend-$VERSION"

cd ../ || { echo "X hmm. failed to go up dir."; exit 1; }
[ -w ./ ] || { echo "X cannot write files in " `pwd`; exit 1;}

# Remove any old versions.
rm -f "$ARCHIVE_NAME".zip "$ARCHIVE_NAME".tgz

tar czf "$ARCHIVE_NAME".tgz \
    --exclude='.git*' \
    --exclude='bin' \
    --exclude='tests' \
    --exclude='cli' \
    --exclude='src' \
    --exclude='phpunit.xml.dist' \
    --exclude='node_modules' \
    --exclude='webpack.mix.js' \
    --exclude='package*.json' \
    --exclude='mix-manifest.json' \
    "$PROJECT_NAME"

# PR wanted: if you can get zip to behave the same way as tar, please replace this clugey hack!
mkdir temp && cd temp || { echo "X failed making temp dir to create zip file"; exit 1; }
tar xzf ../"$ARCHIVE_NAME".tgz || { echo "X failed unpacking tar archive $ARCHIVE_NAME.tgz"; exit 1; }
zip -r -q ../"$ARCHIVE_NAME".zip "$PROJECT_NAME"/ || { echo "X failed making $ARCHIVE_NAME.zip"; exit 1; }
cd ../
rm -rf temp || { echo "W: created archives OK, but failed to remove the temp dir used in making the zip file."; exit 1; }

echo "SUCCESS: "
ls "$ARCHIVE_NAME".*

if [[ -n "$deploy_to" ]]
then
  echo "Deploying to CiviCRM extensions dir at: $deploy_to"
  [[ -d "$deploy_to" ]] || { echo "FAIL: target is not a directory" >&2; exit 1; }
  [[ -w "$deploy_to" ]] || { echo "FAIL: target is not writeable" >&2; exit 1; }
  if [[ -e "$deploy_to/$PROJECT_NAME" ]]
  then
    # Remove original
    [[ -d "$deploy_to/$PROJECT_NAME" ]] || { echo "FAIL: refusing to overwrite $deploy_to/$PROJECT_NAME as it is not a dir" >&2; exit 1; }
    rm -rf "$deploy_to/$PROJECT_NAME"   || { echo "FAIL: failed removing $deploy_to/$PROJECT_NAME \! Things may be broken. " >&2; exit 1; }
  fi
  # Place new copy.
  tar xzf "$ARCHIVE_NAME".tgz -C $deploy_to || { echo "FAIL: 'tar xzf ../$ARCHIVE_NAME.tgz -C $deploy_to'" >&2; exit 1; }
  echo "Successfully deployed to $deploy_to/$PROJECT_NAME"
fi
