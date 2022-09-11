workdir=$(pwd)


while IFS="/" read -r ligand remainder
do


cp -r averagesFromGro.py /cta/users/myildiz/workspace/selonou/all_results_md/"$ligand"/MDRUNS/Production_MD/

cd /cta/users/myildiz/workspace/selonou/all_results_md/"$ligand"/MDRUNS/Production_MD/
~/miniconda3/envs/ANILIE/bin/python averagesFromGro.py -auto on -xvg_dir analyse/ &
cd $workdir

done < complexes.txt

