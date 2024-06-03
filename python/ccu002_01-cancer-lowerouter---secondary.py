# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"187868006","system":"icd10"},{"code":"188072006","system":"icd10"},{"code":"373083005","system":"icd10"},{"code":"313250007","system":"icd10"},{"code":"169399001","system":"icd10"},{"code":"94230009","system":"icd10"},{"code":"373080008","system":"icd10"},{"code":"277642008","system":"icd10"},{"code":"277616008","system":"icd10"},{"code":"449635006","system":"icd10"},{"code":"187660002","system":"icd10"},{"code":"187662005","system":"icd10"},{"code":"187869003","system":"icd10"},{"code":"1078881000119102","system":"icd10"},{"code":"724059003","system":"icd10"},{"code":"187870002","system":"icd10"},{"code":"277615007","system":"icd10"},{"code":"277618009","system":"icd10"},{"code":"188155002","system":"icd10"},{"code":"449153001","system":"icd10"},{"code":"187727005","system":"icd10"},{"code":"169400008","system":"icd10"},{"code":"363384006","system":"icd10"},{"code":"B0511","system":"icd10"},{"code":"B3274","system":"icd10"},{"code":"B2241","system":"icd10"},{"code":"B3312","system":"icd10"},{"code":"B345.","system":"icd10"},{"code":"1J0E.","system":"icd10"},{"code":"B031.","system":"icd10"},{"code":"B105.","system":"icd10"},{"code":"B2240","system":"icd10"},{"code":"B224.","system":"icd10"},{"code":"B4310","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-cancer-lowerouter---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-cancer-lowerouter---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-cancer-lowerouter---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
