echo "Enter the number of elements in an array"
read n
echo "Enter the elements"
i=1
while [[ $i -le $n ]]
   do
	read m
	a[$i]=$m
	i=`expr $i + 1`
   done
i=1
while [[ $i -le $n ]]
   do
   	j=`expr $i + 1`
   	while [[ $j -le $n ]]
   	   do
   	   	if [[ ${a[$i]} -ge ${a[$j]} ]]; 
   	   	then
   	   		temp=${a[$i]};
   	   		a[$i]=${a[$j]};
   	   		a[$j]=$temp;
   	   	fi
   	   	j=`expr $j + 1`
   	   done
   	i=`expr $i + 1`
   done
echo "Sorted array:";
i=1
while [[ $i -le $n ]]
   do
	echo "${a[$i]}"
	i=`expr $i + 1`
   done
echo "Enter element to be found:"
read e
l=1
h=$n
f=0
while [ $f -eq 0  -a $h -gt $l ] ;
	do
		mid=`expr \( $l + $h \) / 2`
		eval t=\${a[$mid]}
		if [[ $e -eq $t ]]
		then
			f=1
		elif [[ $e -lt $t ]]
		then
			h=`expr $mid - 1`
		else
			l=`expr $mid + 1`
		fi
	done
if [[ $f -eq 0 ]]
then
	echo "Element not found"
else
	echo "Element found at $mid"
fi
