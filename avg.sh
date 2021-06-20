sum=0
echo "enter number of elements"
read n
echo "enter elements: "
for (( i=0; i<n; i++ ))
do
read x
sum=$(echo "$sum + $x" | bc -l)
done
avg=$(echo "$sum / $n" | bc -l)
echo "average of numbers:" $avg


