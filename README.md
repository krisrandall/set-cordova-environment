# Set Cordova Environment

*A script to set npm, node, cordova, cordova-ios, and cordova-android to specified versions*

I switch between different Cordova projects and sometimes different plugin requirements mean that I need to have specific versions of node, or cordova, or of the iOS or Android cordova platform versions.   

I've made this script to make that switching between versions automatic.

To use it add both the `set-entire-cordova-environment.sh` and `set-entire-cordova-environment.config.sh` scripts into your project, then set the `.config.sh` file to match the approprate setting for that project.  If you add these files to your projects repo it means you can even maintain different versions between different branches of the same project by keeping different values in the `.config.sh` file.
You may also want to create a script to remove and add your plugins, this script does not do that.

I hope this is useful to you too.


