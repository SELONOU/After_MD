workdir=$(pwd)
for k in protein_ob_out1_H # (directory from protein ligand complex)
do
cd "$k"/MDRUNS/Production_MD/avgs/
for i in *.csv ;
do
cp *.csv "$workdir"/results_MD_xvg/
done
cd ..
cd "$workdir"
done
