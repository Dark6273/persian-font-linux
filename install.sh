# install fonts for linux
echo "Do you want all fonts to be installed? (y)"
read status

if [ "$status" = "y" ];then
	# extract fonts file (tar/gzip)
    echo "extract file"
    tar -xf fonts.tar.gz

    FONT_PATH="$HOME/.fonts/truetype/"

	# copy all fonts to $FONT_PATH
    for font in `ls fonts/`;
    do
        folder=`echo $font | cut -d "." -f1`
        mkdir -p "$FONT_PATH/$folder"
        cp -d "fonts/$font" "$FONT_PATH/$folder/" 2>/dev/null
        echo "intstall font $folder successfully!"
    done
	
	echo "install `ls fonts | wc -l` successfully! :)"

	# remove fonts folder
    rm -r fonts

else
    echo "Good bye!"
fi
