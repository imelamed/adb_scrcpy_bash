#!/usr/bin/env bash
clear
cd /home/itamarm
printf "Mobile Connection method: \n 1) USB \n 2) Network \n Choose Priffered Connection Method:"
#echo -e "Mobile Connection method: \n 1) USB \n 2) Network \n Choose Priffered Connection Method:"
read PrifferedVar

while [[ $PrifferedVar != [12] ]]
	do
		printf "\nInvalid choice! Please choose 1 or 2. Your choice:"
		#read -p "Invalid choice! Please choose 1 or 2. Your choice:" PrifferedVar
		read PrifferedVar
    done

case $PrifferedVar in
1)
adb devices
echo -e "Connecting to device 520045e3f44a743f\n"
scrcpy -s 520045e3f44a743f
;;
2)
adb connect 10.1.1.180:5555
adb devices
echo -e "Connecting to device 10.1.1.180"
scrcpy -s 10.1.1.180
#echo $PrifferedVar
#echo Done
;;
esac

#echo $PrifferedVar
#echo Done

#adb connect 10.1.1.180
#scrcpy
