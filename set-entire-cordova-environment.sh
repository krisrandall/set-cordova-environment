#!/bin/bash

cd "$(dirname "$0")"

eval $(./set-entire-cordova-environment.config.sh)


echo 
echo "This will set your environment to the following config:"
echo 
echo " npm $MY_NPM_VER"
echo " node $MY_NODE_VER"
echo " cordova $MY_CORDOVA_VER"
echo " cordova iOS $MY_CORDOVA_IOS_VER"
echo " cordova Android $MY_CORDOVA_ANDROID_VER"
echo " app dir $MY_CORDOVA_APP_DIR"
echo
echo "Do you want that? (type 'no' to exit)"
read proceed

if [ "$proceed" == "no" ]; then
   exit;
fi


sudo npm install -g npm@$MY_NPM_VER

sudo n $MY_NODE_VER 

sudo npm install -g cordova@$MY_CORDOVA_VER 

cd $MY_CORDOVA_APP_DIR 

cordova platform rm android 
cordova platform rm ios 

cordova platform add ios@$MY_CORDOVA_IOS_VER 
cordova platform add android@$MY_CORDOVA_ANDROID_VER


echo 
echo "All done!"
echo
echo "Use '../scripts/add-cordova-plugins.sh' to setup all the correct plugins"
echo "Use 'cordova-icon' and 'cordova-splash' to regenerate the icons and splash pages"
echo "Use '../singlepageapp/build' to build the app"
