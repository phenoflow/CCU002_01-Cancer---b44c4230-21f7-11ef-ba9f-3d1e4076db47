# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"C22","system":"icd10"},{"code":"188274004","system":"icd10"},{"code":"109842005","system":"icd10"},{"code":"278053004","system":"icd10"},{"code":"187767006","system":"icd10"},{"code":"188340000","system":"icd10"},{"code":"813671000000107","system":"icd10"},{"code":"187793004","system":"icd10"},{"code":"372101000","system":"icd10"},{"code":"255086002","system":"icd10"},{"code":"94460001","system":"icd10"},{"code":"93763008","system":"icd10"},{"code":"187784000","system":"icd10"},{"code":"93770008","system":"icd10"},{"code":"187773007","system":"icd10"},{"code":"187777008","system":"icd10"},{"code":"363416002","system":"icd10"},{"code":"188339002","system":"icd10"},{"code":"188208002","system":"icd10"},{"code":"444604002","system":"icd10"},{"code":"B542.","system":"icd10"},{"code":"B1611","system":"icd10"},{"code":"B1612","system":"icd10"},{"code":"B16z.","system":"icd10"},{"code":"B5421","system":"icd10"},{"code":"B151.","system":"icd10"},{"code":"B507.","system":"icd10"},{"code":"BB910","system":"icd10"},{"code":"B15z.","system":"icd10"},{"code":"BB5D3","system":"icd10"},{"code":"B16y.","system":"icd10"},{"code":"B161z","system":"icd10"},{"code":"B15..","system":"icd10"},{"code":"B542z","system":"icd10"},{"code":"B1514","system":"icd10"},{"code":"B1510","system":"icd10"},{"code":"B151z","system":"icd10"},{"code":"B16..","system":"icd10"},{"code":"B5071","system":"icd10"},{"code":"B173.","system":"icd10"},{"code":"B1610","system":"icd10"},{"code":"B161.","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["mintraductal-ccu002_01-cancer---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["mintraductal-ccu002_01-cancer---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["mintraductal-ccu002_01-cancer---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
