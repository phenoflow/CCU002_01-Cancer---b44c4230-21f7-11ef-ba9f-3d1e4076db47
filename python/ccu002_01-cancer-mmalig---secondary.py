# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"B20..","system":"icd10"},{"code":"B5607","system":"icd10"},{"code":"BBk7.","system":"icd10"},{"code":"B5612","system":"icd10"},{"code":"B45..","system":"icd10"},{"code":"BBQ75","system":"icd10"},{"code":"B3122","system":"icd10"},{"code":"B5616","system":"icd10"},{"code":"B54..","system":"icd10"},{"code":"B576.","system":"icd10"},{"code":"B5614","system":"icd10"},{"code":"B310.","system":"icd10"},{"code":"ByuA3","system":"icd10"},{"code":"BB08.","system":"icd10"},{"code":"B5606","system":"icd10"},{"code":"B5609","system":"icd10"},{"code":"B57..","system":"icd10"},{"code":"BBgV.","system":"icd10"},{"code":"BBEM.","system":"icd10"},{"code":"BBgE.","system":"icd10"},{"code":"B5602","system":"icd10"},{"code":"BBgM.","system":"icd10"},{"code":"B565.","system":"icd10"},{"code":"ZV101","system":"icd10"},{"code":"B5620","system":"icd10"},{"code":"B62z1","system":"icd10"},{"code":"B5610","system":"icd10"},{"code":"B5618","system":"icd10"},{"code":"B316.","system":"icd10"},{"code":"BB09.","system":"icd10"},{"code":"B311.","system":"icd10"},{"code":"B5608","system":"icd10"},{"code":"B2z0.","system":"icd10"},{"code":"BBEG.","system":"icd10"},{"code":"BB04.","system":"icd10"},{"code":"B5640","system":"icd10"},{"code":"B3151","system":"icd10"},{"code":"ZV102","system":"icd10"},{"code":"BBg4.","system":"icd10"},{"code":"ZV679","system":"icd10"},{"code":"B5615","system":"icd10"},{"code":"B25..","system":"icd10"},{"code":"B5641","system":"icd10"},{"code":"BBm1.","system":"icd10"},{"code":"B562.","system":"icd10"},{"code":"ByuDB","system":"icd10"},{"code":"B62z5","system":"icd10"},{"code":"B560.","system":"icd10"},{"code":"BBgS.","system":"icd10"},{"code":"B201.","system":"icd10"},{"code":"B31y.","system":"icd10"},{"code":"BB0A.","system":"icd10"},{"code":"B5605","system":"icd10"},{"code":"B5630","system":"icd10"},{"code":"B56y.","system":"icd10"},{"code":"B52..","system":"icd10"},{"code":"BBR4.","system":"icd10"},{"code":"B62z2","system":"icd10"},{"code":"B561.","system":"icd10"},{"code":"B5604","system":"icd10"},{"code":"B5632","system":"icd10"},{"code":"B1z..","system":"icd10"},{"code":"B5617","system":"icd10"},{"code":"B20y.","system":"icd10"},{"code":"B5622","system":"icd10"},{"code":"B5621","system":"icd10"},{"code":"B5650","system":"icd10"},{"code":"BBE10","system":"icd10"},{"code":"ZV100","system":"icd10"},{"code":"BBg8.","system":"icd10"},{"code":"B3141","system":"icd10"},{"code":"BBgQ.","system":"icd10"},{"code":"B4A..","system":"icd10"},{"code":"B5624","system":"icd10"},{"code":"B3121","system":"icd10"},{"code":"BBgN.","system":"icd10"},{"code":"B2...","system":"icd10"},{"code":"B564.","system":"icd10"},{"code":"B500.","system":"icd10"},{"code":"B312.","system":"icd10"},{"code":"B52W.","system":"icd10"},{"code":"B2z..","system":"icd10"},{"code":"B563.","system":"icd10"},{"code":"BBg7.","system":"icd10"},{"code":"BBEC.","system":"icd10"},{"code":"ZV678","system":"icd10"},{"code":"B14y.","system":"icd10"},{"code":"Byu58","system":"icd10"},{"code":"B3123","system":"icd10"},{"code":"B5619","system":"icd10"},{"code":"BBgT.","system":"icd10"},{"code":"B5633","system":"icd10"},{"code":"B524.","system":"icd10"},{"code":"B5613","system":"icd10"},{"code":"BBgA.","system":"icd10"},{"code":"B5600","system":"icd10"},{"code":"BBgP.","system":"icd10"},{"code":"B3140","system":"icd10"},{"code":"BBQ74","system":"icd10"},{"code":"B5653","system":"icd10"},{"code":"B5631","system":"icd10"},{"code":"B5623","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-cancer-mmalig---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-cancer-mmalig---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-cancer-mmalig---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
