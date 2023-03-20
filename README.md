**StructuralStudy_ALKCompoundMutations**
=======
Lorlatinib is a third generation small molecule inhibitor developed to target mutated anaplastic lymphoma kinase (ALK). Treatment with lorlatinib shows emergence of secondary mutations in ALK. This repository contains structural files, molecular dynamics (MD) files, induced fit docking (IFD) files, and ordinary differential equations (ODE) files used to model resistance to lorlatinib in ALK with secondary mutations.

**StructuralStudy_ALKCompoundMutations/Structures**
=======
Structure files in PDB format. All structural files generated from induced fit docking (IFD) include water unless specified.
Following structures were presented in Berko et al. paper:

Figure 6:
- &nbsp; IFD_ALK_F1174LG1202R_Lr_110ns.pdb
- &nbsp; IFD_ALK_F1174LL1196M_Lr_140ns.pdb

Extended Data Figure 5:
- &nbsp;IFD_ALK_F1174L_Lr_110ns.pdb
- &nbsp;IFD_ALK_R1275Q_Lr_160ns.pdb
- &nbsp;IFD_ALK_R1275QG1202R_Lr_180ns.pdb
- &nbsp;IFD_ALK_R1275QL1196M_Lr_130ns.pdb
- &nbsp;IFD_ALK_WT_Lr_200ns.pdb 

Extended Data Figure 7:
- &nbsp;IFD_ALK_WT_Lr_110ns.pdb
- &nbsp;IFD_ALK_WT_Lr_no_water_110ns.pdb
- &nbsp;ALK_F1174LG1202R_Lr_110ns.pdb
- &nbsp;ALK_F1174LG1202R_Lr_140ns.pdb
- &nbsp;ALK_F1174LG1202R_Lr_150ns.pdb
- &nbsp;IFD_ALK_WT_200ns_Lr_Cluster1.pdb
- &nbsp;IFD_ALK_WT_200ns_Lr_Cluster2.pdb
- &nbsp;IFD_ALK_WT_200ns_Lr_Cluster3.pdb
- &nbsp;IFD_ALK_WT_200ns_Lr_Cluster4.pdb

Additional structures discussed in the paper:
- &nbsp;IFD_ALK_G1202R_Lr_100ns.pdb
- &nbsp;IFD_ALK_WT_ATP_110ns.pdb
- &nbsp;IFD_ALK_WT_ATP_150ns.pdb



The file nomenclature corresponds to following:
Example file : IFD_ALK_F1174L_Lr_110ns.pdb
- &nbsp;IFD=induced fit docking
- &nbsp;ALK_F1174L = mutation variant of ALK
- &nbsp;Lr = Lorlatinib listed name residue 5P8 in the file 
- &nbsp;110ns = structure derived from 110 ns of MD simulation 
- &nbsp;Cluster 1 - 4 = corresponds to Lorlatinib pose classification per Extended Data Figure 





**StructuralStudy_ALKCompoundMutations/COPASI_files**
=======
Software used COPASI v4.27

Each .cps file corresponds to copasi file solving ordinary differential equation (ODE) for modeling lorlatinib competitive binding to ALK in presence of ATP. To derive Lorlatinib dose response curve run parameter sensitivity (“Parameter Scan”) at Steady-State. 

The file nomenclature corresponds to following conditions:
ALK_(variant/mutation)_(number/frequency).cps

Variant/mutation: 
- &nbsp;WT = wild type 
- &nbsp;ALK F1174L = F1174L 
- &nbsp;ALK F1174L_G1202R = F1174L/G1202R ALK 
- &nbsp;F1174L_L1196M = F1174L/L1196M ALK 
- &nbsp;R1275Q = R1275Q ALK 
- &nbsp;R1275Q_G1202R = R1275Q/G1202R ALK 
- &nbsp;R1275Q_L1196M = R1275Q/L1196M ALK

Number:
- &nbsp;1 = Kon Lorlatinib was generated based on Ka derived from arithmetic mean of docking scores 
- &nbsp;2 = Kon Lorlatinib was generated based on Ka derived from upper standard deviation of docking scores 
- &nbsp;3 = Kon Lorlatinib was generated based on Ka derived from lower standard deviation of docking scores 
- &nbsp;4 = reactions were set according to four reaction model where only open gate ALK conformation is present 

Frequency
- &nbsp;f10 = 10% closed conformation 
- &nbsp;f33 = 33% closed conformation 
- &nbsp;f66 = 66% closed conformation 
- &nbsp;f90 = 90% closed conformation 
- &nbsp;f0 = 0% closed conformation/open conformation

**StructuralStudy_ALKCompoundMutations/MD**
=======
The MD simulations are performed in GROMACS 2018.3 using XSEDE resources. 
All mutations are introduced using BioPhysCode Automacs (https://biophyscode.github.io. ) routine based on MODELLER. Please see MODELLER here:
https://salilab.org/modeller/
All the requisite files needed to setup and run the simulations are included in the MD folder including .sh bash file used to submit job run on XSEDE cluster. The equilibration and production runs were set up based on Bevan Lab Tutorials: "Lysozyme in water" example:
http://www.mdtutorials.com/gmx/lysozyme/index.html

**StructuralStudy_ALKCompoundMutations/Docking**
=======
Docking simulations were performed following the Induced Fit Docking protocol Maestro software version 2019-4 (Schrödinger Release 2019-4: Maestro, Schrödinger, LLC, New York, NY, 2021). The Docking folder contains the input and output files from docking simulations. Each system will have the following files:
- &nbsp;	Lorlatinib.mae and ATP.mae are the input ligand file.
- &nbsp;	‘system name’.mae is the input structure along with water molecules for lorlatinib docking and Mg2+ ions for ATP docking. 
- &nbsp;	‘system name’_rec.mae is the input receptor structure file with docking grid needed to set up docking
- &nbsp;	‘system name’.inp file contains docking parameters
- &nbsp;	‘system name’-out.maegz contains the output poses from the docking simulation.



![image](https://user-images.githubusercontent.com/101832204/197023182-678ca264-872c-458c-8833-c0c25c0e147b.png)
