#!/bin/bash
awk -f linear.awk model_EC.in > model_EC
gawk 'BEGIN {for (i=0.01;i<=0.01;i=i+0.1){for (j=7.0;j<=7.4;j=j+0.05){print "fk.pl -Mmodel_EC/"i,"-S2 -N512/0.01/1",j;}}}' | sh
gawk 'BEGIN {for (i=0.01;i<=0.01;i=i+0.1){for (j=7.0;j<=7.4;j=j+0.05){print "saclst t1 t2 f model_EC_"i"/"j".grn.0";}}}' | sh | gawk '{gsub("grn.0","grn.?",$1);print "rh "$1; print "ch t1 "$2,"t2 "$3; print "wh"} END {print "quit"}' | sac
gawk 'BEGIN {for (i=0.1;i<=2.1;i=i+0.1){for (j=7.0;j<=7.4;j=j+0.05){print "fk.pl -Mmodel_EC/"i,"-S2 -N512/0.01/1",j;}}}' | sh
gawk 'BEGIN {for (i=0.1;i<=2.1;i=i+0.1){for (j=7.0;j<=7.4;j=j+0.05){print "saclst t1 t2 f model_EC_"i"/"j".grn.0";}}}' | sh | gawk '{gsub("grn.0","grn.?",$1);print "rh "$1; print "ch t1 "$2,"t2 "$3; print "wh"} END {print "quit"}' | sac

rm model_EC_*/*.[zrt]
#dip-slp
stk=0
dip=90
rak=90

#Trapezoidal source time function -D0.10/0.05, for a complex rupture process; Triangular source time function -D0.10/0.5, for a simple rupture process, which is more popular
gawk -v stk=$stk -v dip=$dip -v rak=$rak 'BEGIN {for (i=0.01;i<=0.01;i=i+0.1){for (j=7.0;j<=7.4;j=j+0.05){print "syn -M3/"stk"/"dip"/"rak" -D0.10/0.05 -A197.1 -Omodel_EC_"i"/"j".z -Gmodel_EC_"i"/"j".grn.0";}}}' | sh
gawk -v stk=$stk -v dip=$dip -v rak=$rak 'BEGIN {for (i=0.1;i<=2.1;i=i+0.1){for (j=7.0;j<=7.4;j=j+0.05){print "syn -M3/"stk"/"dip"/"rak" -D0.10/0.05 -A197.1 -Omodel_EC_"i"/"j".z -Gmodel_EC_"i"/"j".grn.0";}}}' | sh
