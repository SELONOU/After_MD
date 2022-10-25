while read -r ligand
do
        grep "HETATM" ligandsedit/"$ligand".pdb > ligands/"$ligand".pdb
done <liglist2.txt

