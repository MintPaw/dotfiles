# convert -font DejaVu-Sans -pointsize 30 -size 150x100 -gravity center label:"idle 5" idle_5.png

if [ "$1" = "--help" ]
then
	echo "Example: createAnim walking 3 200x200"
	exit
fi

for a in `seq $2`
do
	convert -font DejaVu-Sans -size $3 -gravity center \
		label:"$1_$a" "$1_$a.png"
done
