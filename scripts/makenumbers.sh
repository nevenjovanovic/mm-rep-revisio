# Print r and v numbers to 453
i=0
while [ $i -le 453 ]
do
   n=$(($i+1))
   f=`printf "%03d\n" $n`
   r=`cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 5 | head -n 1`
   echo "| urn:cite:marulus:repert:"$i"v-"$n"r | "$r" | rep"$f".jpg |"
i=$(($i+1))
done

