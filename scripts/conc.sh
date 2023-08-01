cat $1 |
tr -dc '[A-Za-zę][:blank:]\012' |
gawk '
  {for (i = 1; i <= NF; i++) words[$i] = words[$i]  sprintf(", %d",NR);}
  END{for (i in words){
	lines = words[i];
	sub(/^,/,"",lines);
	printf("%s\t%s\n",i,lines);
  }
}' | sort -f -k 1 > $1.index
