
MAX_WIDTH=240
MAX_HEIGHT=400

for infile in *.jpg; do
	width=`identify -ping -format %w $infile`
	height=`identify -ping -format %h $infile`
	if [[ $width -gt $MAX_WIDTH || $height -gt $MAX_HEIGHT ]]; then
		echo "Resizing $infile..."
		mogrify -resize "${MAX_WIDTH}x${MAX_HEIGHT}" $infile
	fi
done

