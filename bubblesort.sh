echo "Enter the limit:"
read n
echo "Enter the elements in array:"
for (( i=0; i < $n; i++ ))
do
	read a[$i]
done
for (( i=0; i < $n ; i++ ))
do
	for (( j = $i; j < $n; j++ ))
	do	
		if [ ${a[$i]} -gt ${a[$j]}  ]; 
		then
			temp=${a[$i]}
			a[$i]=${a[$j]}
			a[$j]=$temp
		fi
	done
done
echo "Sorted array: "
for (( i=$n; i >= 0; i-- ))
do
	echo ${a[$i]}
done
