#! /bin/bash
# cars.sh
# Rose Ramirez
echo '''1. Add a car
2. List the cars
3. Quit'''
read CHOICE
while true
do
	case $CHOICE in
		1)
			echo "Enter the year:"
		        read YEAR
			echo "Enter the Make"
			read MAKE
			echo "Enter the Model"
			read MODEL
			NAME=$YEAR:$MAKE:$MODEL
			echo $NAME\n >> "My_old_cars.txt"
			;;
		2)
			while read LINE
			do
				echo $LINE
			done < "My_old_cars.txt"
			;;
		3)
			echo "Good bye"
			break
			;;
	esac
	echo "Enter your Choice:"
	read CHOICE
done
