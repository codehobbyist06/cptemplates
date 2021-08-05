#!/bin/bash
a=0
while : 
do
	#statements
	./gen $a > in
	a1=$(./2)
	a2=$(./check2)
	if [[ $a1 != $a2 ]]; then
		echo "Mismatch..."
		echo "Found: " $a1
		echo "Expected: " $a2
		break
	fi
	echo $a
	((a++))
done

