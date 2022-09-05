workdir=$(pwd)
for k in #name of each directory of protein ligand complexes
do
cd "$k"
for t in 0 1 2;do
cd pdb_"$t"

cp trjmol_SP_energies_1_13.csv trjmol_pdb_"$t"_"$k".csv
cd ..
done
cd "$workdir"
done 
