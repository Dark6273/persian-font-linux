# install fonts for linux
echo "Choose the option you want \n  [1] - fonts list \n  [2] - install fonts \n ->"
read status

if [ "$status" -eq 2 ];then
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

elif [ "$status" -eq 1 ];then
	# extract fonts file (tar/gzip)
	echo "extract file"
	tar -xf fonts.tar.gz

	for font in `ls fonts/`;
		do
			f=`echo $font | cut -d "." -f1`
			echo " -> $f"
		done

else
    echo "Good bye!"
fi
