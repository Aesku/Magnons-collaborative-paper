#!/bin/bash 
#  
# k points convergence files
#
ecut='50 70 90 120 150'
#
for i in ${ecut} ; do
    sed  -e "s/ecutwfc = 90/ecutwfc = $i/g" cri3-exp-soc.scf.in  > tmp$i
    sed  -e "s/prefix = 'cri3'/prefix = 'cri3_$i$@Ry_k8x8x1'/g"  tmp$i  > 'cri3-exp-soc_'$i'Ry_k8x8x1.scf.in'
    rm tmp*
done
