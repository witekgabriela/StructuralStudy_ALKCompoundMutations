# StructuralSudy_ALKCompoundMutations
Lorlatinib is a third generation small molecule inhibitor developed to target mutated anaplastic lymphoma kinase (ALK). Treatment with lorlatinib shows emergence of secondary mutations in ALK. This repository contains structural and ordinary differential equations (ODE) files used to model resistance to lorlatinib in ALK which  secondary mutations.

Software used COPASI v4.27

COPASI files description

Each .cps file corresponds to copasi file solving ordinary differential equation (ODE) for modeling lorlatinib competitive binding to ALK in presence of ATP. The file nomenclature corresponds to following conditions: 

ALK_(variant/mutation)_(number).cps

Variant/mutation:
WT = wild type ALK
F1174L = F1174L ALK
F1174L_G1202R = F1174L/G1202R ALK 
F1174L_L1196M = F1174L/L1196M ALK 
R1275Q = R1275Q ALK
R1275Q_G1202R = R1275Q/G1202R ALK 
R1275Q_L1196M = R1275Q/L1196M ALK 


Number: 

1 = Kon Lorlatinib was generated based on Ka derived from arithmetic mean of docking scores 
2 = Kon Lorlatinib was generated based on Ka derived from upper standard deviation of docking scores
3 = Kon Lorlatinib was generated based on Ka derived from lower standard deviation of docking scores
4 = reactions were set according to four reaction model where only open gate ALK conformation is present
f10 = 10% closed conformation 
f33 = 33% closed conformation
f66 = 66% closed conformation
f90 = 90% closed conformation
f100 = 100% closed conformation




![image](https://user-images.githubusercontent.com/101832204/196047889-32c178e3-c996-4ed0-8352-fda0f804a880.png)
