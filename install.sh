echo "Do you want all fonts to be installed? (y)"
read status

if [ "$status" == "y" ];then
    echo "extract file"
    tar -xf fonts.tar.gz

    FONT_PATH="$HOME/.fonts/truetype/"
    for font in `ls fonts/`;
    do
        folder=`echo $font | cut -d "." -f1`
        mkdir -p "$FONT_PATH/$folder"
        cp -d "fonts/$font" "$FONT_PATH/$folder/" 2>/dev/null
        echo "intstall font $folder successfully!"
    done

    rm -r fonts

    echo "finish!"
else
    echo "Good bye!"
fi
