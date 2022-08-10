cat t1  > tt
sar 1 1| grep Average | awk '{print "CPU_FREE="$8";\nCPU_USED="100-$8";"}' >> tt
free 1 1| grep Mem | awk '{print "MEM_FREE=" $4 ";\nMEM_USED=" $3 ";"}'>> tt
df -k | grep -v Filesystem | awk '{sum += $4} END {print"DSK_FREE=" sum ";"}''{sum2 += $3} END {print"DSK_USED=" sum2 ";"}' >> tt
cat t2 >> tt
cp tt serverstatus.html

