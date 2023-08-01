# Print r and v numbers as TEI XML pb element to 255
i=0
while [ $i -le 255 ]
do
   f=`printf "%03d\n" $i`
   echo '<pb type="d" n="'$f'r"/>

<pb type="d" n="'$f'v"/>
'
i=$(($i+1))
done

