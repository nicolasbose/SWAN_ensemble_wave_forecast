#!/bin/bash

# RUN SWAN AUTMATIC FOR DIFERENT CASES

for i in $(seq 0 10)
do
 

b=1

# Search and replace 

sed -i 's/boundary_20211216_members_'$i'/boundary_20211216_members_'$(( $i + $b ))'/g' swan_ensemble_ww3.swn

sed -i 's/_p'$i'/_p'$(( $i + $b ))'/g' swan_ensemble_ww3.swn


#sed -i 's/boundary_20211203_op_'$i'/boundary_20211203_op_'$(( $i + $b ))'/g' swan_ensemble_ww3.swn

#sed -i 's/_op_'$i'/_op_'$(( $i + $b ))'/g' swan_ensemble_ww3.swn


# Run SWAN

swanrun -input swan_ensemble_ww3.swn -omp 12

sleep 2m 

done


