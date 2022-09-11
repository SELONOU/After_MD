workdir=$(pwd)
  

while IFS="/" read -r ligand remainder
do


cp -r x2_md.sh /cta/users/myildiz/workspace/selonou/all_results_md/"$ligand"/MDRUNS/Production_MD/

cd /cta/users/myildiz/workspace/selonou/all_results_md/"$ligand"/MDRUNS/Production_MD/

bash MD_analysis_xray.sh &


cd $workdir

done < complexes.txt
~               
