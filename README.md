**StructuralStudy_ALKCompoundMutations**
Lorlatinib is a third generation small molecule inhibitor developed to target mutated anaplastic lymphoma kinase (ALK). Treatment with lorlatinib shows emergence of secondary mutations in ALK. This repository contains structural and ordinary differential equations (ODE) files used to model resistance to lorlatinib in ALK with secondary mutations.
**StructuralStudy_ALKCompoundMutations/Structures**
Structure files in PDB format. All structural files generated from induced fit docking (IFD) include water unless specified.
Following structures were presented in Berko et al. paper:

Figure 6:
IFD_ALK_F1174LG1202R_Lr_110ns.pdb
IFD_ALK_F1174LL1196M_Lr_140ns.pdb

Extended Data Figure 5:
IFD_ALK_F1174L_Lr_110ns.pdb
IFD_ALK_R1275Q_Lr_160ns.pdb
IFD_ALK_R1275QG1202R_Lr_180ns.pdb
IFD_ALK_R1275QL1196M_Lr_130ns.pdb
IFD_ALK_WT_Lr_200ns.pdb 

Extended Data Figure 7:
IFD_ALK_WT_Lr_110ns.pdb
IFD_ALK_WT_Lr_no_water_110ns.pdb
ALK_F1174LG1202R_Lr_110ns.pdb
ALK_F1174LG1202R_Lr_140ns.pdb
ALK_F1174LG1202R_Lr_150ns.pdb
IFD_ALK_WT_200ns_Lr_Cluster1.pdb
IFD_ALK_WT_200ns_Lr_Cluster2.pdb
IFD_ALK_WT_200ns_Lr_Cluster3.pdb
IFD_ALK_WT_200ns_Lr_Cluster4.pdb

Additional structures discussed in the paper:
IFD_ALK_G1202R_Lr_100ns.pdb
IFD_ALK_WT_ATP_110ns.pdb
IFD_ALK_WT_ATP_150ns.pdb



The file nomenclature corresponds to following:
Example file : IFD_ALK_F1174L_Lr_110ns.pdb
IFD=induced fit docking
ALK_F1174L = mutation variant of ALK
Lr = Lorlatinib listed name residue 5P8 in the file 
110ns = structure derived from 110 ns of MD simulation 
Cluster 1 - 4 = corresponds to Lorlatinib pose classification per Extended Data Figure 





**StructuralStudy_ALKCompoundMutations/COPASI_files**

Software used COPASI v4.27

Each .cps file corresponds to copasi file solving ordinary differential equation (ODE) for modeling lorlatinib competitive binding to ALK in presence of ATP. To derive Lorlatinib dose response curve run parameter sensitivity (“Parameter Scan”) at Steady-State. 

The file nomenclature corresponds to following conditions:
ALK_(variant/mutation)_(number/frequency).cps

Variant/mutation: 
WT = wild type 
ALK F1174L = F1174L 
ALK F1174L_G1202R = F1174L/G1202R ALK 
F1174L_L1196M = F1174L/L1196M ALK 
R1275Q = R1275Q ALK 
R1275Q_G1202R = R1275Q/G1202R ALK 
R1275Q_L1196M = R1275Q/L1196M ALK

Number:
1 = Kon Lorlatinib was generated based on Ka derived from arithmetic mean of docking scores 
2 = Kon Lorlatinib was generated based on Ka derived from upper standard deviation of docking scores 
3 = Kon Lorlatinib was generated based on Ka derived from lower standard deviation of docking scores 
4 = reactions were set according to four reaction model where only open gate ALK conformation is present 

Frequency
f10 = 10% closed conformation 
f33 = 33% closed conformation 
f66 = 66% closed conformation 
f90 = 90% closed conformation 
f0 = 0% closed conformation/open conformation

![image](https://user-images.githubusercontent.com/101832204/197023182-678ca264-872c-458c-8833-c0c25c0e147b.png)
