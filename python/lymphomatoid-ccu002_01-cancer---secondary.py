# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"277617004","system":"icd10"},{"code":"269476000","system":"icd10"},{"code":"449220000","system":"icd10"},{"code":"277613000","system":"icd10"},{"code":"278052009","system":"icd10"},{"code":"420788006","system":"icd10"},{"code":"1091861000000100","system":"icd10"},{"code":"109976000","system":"icd10"},{"code":"307636001","system":"icd10"},{"code":"95193005","system":"icd10"},{"code":"109977009","system":"icd10"},{"code":"847741000000106","system":"icd10"},{"code":"236513009","system":"icd10"},{"code":"277627005","system":"icd10"},{"code":"429014004","system":"icd10"},{"code":"427141003","system":"icd10"},{"code":"1091921000000103","system":"icd10"},{"code":"276815004","system":"icd10"},{"code":"277654008","system":"icd10"},{"code":"308121000","system":"icd10"},{"code":"763477007","system":"icd10"},{"code":"400001003","system":"icd10"},{"code":"847701000000108","system":"icd10"},{"code":"277570003","system":"icd10"},{"code":"109962001","system":"icd10"},{"code":"736322001","system":"icd10"},{"code":"239297008","system":"icd10"},{"code":"847651000000100","system":"icd10"},{"code":"109988003","system":"icd10"},{"code":"118617000","system":"icd10"},{"code":"277641001","system":"icd10"},{"code":"847691000000108","system":"icd10"},{"code":"277626001","system":"icd10"},{"code":"762690000","system":"icd10"},{"code":"118600007","system":"icd10"},{"code":"400122007","system":"icd10"},{"code":"445406001","system":"icd10"},{"code":"847631000000107","system":"icd10"},{"code":"404133000","system":"icd10"},{"code":"240531002","system":"icd10"},{"code":"276811008","system":"icd10"},{"code":"109979007","system":"icd10"},{"code":"232075002","system":"icd10"},{"code":"118601006","system":"icd10"},{"code":"128875000","system":"icd10"},{"code":"109965004","system":"icd10"},{"code":"93198004","system":"icd10"},{"code":"285776004","system":"icd10"},{"code":"31047003","system":"icd10"},{"code":"276836002","system":"icd10"},{"code":"188516007","system":"icd10"},{"code":"414166008","system":"icd10"},{"code":"277643003","system":"icd10"},{"code":"277622004","system":"icd10"},{"code":"847481000000109","system":"icd10"},{"code":"109978004","system":"icd10"},{"code":"4M22.","system":"icd10"},{"code":"4M20.","system":"icd10"},{"code":"ByuD2","system":"icd10"},{"code":"1J04.","system":"icd10"},{"code":"ByuD3","system":"icd10"},{"code":"B627C","system":"icd10"},{"code":"B6200","system":"icd10"},{"code":"B627W","system":"icd10"},{"code":"4M23.","system":"icd10"},{"code":"BBv2.","system":"icd10"},{"code":"ByuDC","system":"icd10"},{"code":"ByuDF","system":"icd10"},{"code":"ByuD1","system":"icd10"},{"code":"B62x1","system":"icd10"},{"code":"B627B","system":"icd10"},{"code":"B6279","system":"icd10"},{"code":"AyuC6","system":"icd10"},{"code":"B602.","system":"icd10"},{"code":"4M21.","system":"icd10"},{"code":"B62x2","system":"icd10"},{"code":"B6277","system":"icd10"},{"code":"B62x6","system":"icd10"},{"code":"B620.","system":"icd10"},{"code":"BBm4.","system":"icd10"},{"code":"B627X","system":"icd10"},{"code":"B62x.","system":"icd10"},{"code":"ByuDE","system":"icd10"},{"code":"A7896","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["lymphomatoid-ccu002_01-cancer---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["lymphomatoid-ccu002_01-cancer---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["lymphomatoid-ccu002_01-cancer---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
