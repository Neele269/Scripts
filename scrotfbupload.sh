pathToScreenShot="/home/ford/Daten/Screenshots/"
pictureName=`date +"%Y:%m:%d_%H:%M:%S:%N".png`
fullPath=$pathToScreenShot$pictureName
scrot "$@" $fullPath
fb $fullPath
