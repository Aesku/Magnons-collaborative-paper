#!/bin/bash 
#  
# k points convergence files
#
kpoints='6 8 12 16 18'
#
for i in ${kpoints} ; do
    sed  -e "s/6 6/$i $i/g" cri3-exp-soc.scf.in  > tmp$i
    sed  -e "s/prefix = 'cri3'/prefix = 'cri3_90Ry_k$i$@x$i$@x1'/g"  tmp$i  > 'cri3-exp-soc_90Ry_k'$i'x'$i'x1.scf.in'
    rm tmp*
done
