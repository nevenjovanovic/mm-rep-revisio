# Print r and v numbers as org titles (*) to 255
i=0
while [ $i -le 255 ]
do
   f=`printf "%03d\n" $i`
   echo "* "$f"r

* "$f"v
"
i=$(($i+1))
done

