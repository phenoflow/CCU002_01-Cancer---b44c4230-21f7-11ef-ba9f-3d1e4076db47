# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"C73","system":"icd10"},{"code":"278051002","system":"icd10"},{"code":"255028004","system":"icd10"},{"code":"187846001","system":"icd10"},{"code":"314953008","system":"icd10"},{"code":"423158009","system":"icd10"},{"code":"255029007","system":"icd10"},{"code":"255030002","system":"icd10"},{"code":"363478007","system":"icd10"},{"code":"315007008","system":"icd10"},{"code":"94634005","system":"icd10"},{"code":"92767001","system":"icd10"},{"code":"255031003","system":"icd10"},{"code":"448216007","system":"icd10"},{"code":"255032005","system":"icd10"},{"code":"94098005","system":"icd10"},{"code":"ByuB.","system":"icd10"},{"code":"B53..","system":"icd10"},{"code":"B2133","system":"icd10"},{"code":"BB5fz","system":"icd10"},{"code":"BB5f.","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["mthyroid-ccu002_01-cancer---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["mthyroid-ccu002_01-cancer---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["mthyroid-ccu002_01-cancer---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
