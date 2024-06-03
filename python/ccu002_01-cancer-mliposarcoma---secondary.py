# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"C00","system":"icd10"},{"code":"C14","system":"icd10"},{"code":"404071006","system":"icd10"},{"code":"187601000","system":"icd10"},{"code":"255071008","system":"icd10"},{"code":"187624007","system":"icd10"},{"code":"271568003","system":"icd10"},{"code":"187606005","system":"icd10"},{"code":"187613005","system":"icd10"},{"code":"271323007","system":"icd10"},{"code":"363348004","system":"icd10"},{"code":"255069008","system":"icd10"},{"code":"254993006","system":"icd10"},{"code":"363372009","system":"icd10"},{"code":"254389005","system":"icd10"},{"code":"275399006","system":"icd10"},{"code":"363373004","system":"icd10"},{"code":"187604008","system":"icd10"},{"code":"188030005","system":"icd10"},{"code":"421249001","system":"icd10"},{"code":"363374005","system":"icd10"},{"code":"269515006","system":"icd10"},{"code":"254829001","system":"icd10"},{"code":"187614004","system":"icd10"},{"code":"B0040","system":"icd10"},{"code":"Byu0.","system":"icd10"},{"code":"B0...","system":"icd10"},{"code":"B0001","system":"icd10"},{"code":"B0022","system":"icd10"},{"code":"B0031","system":"icd10"},{"code":"B00..","system":"icd10"},{"code":"B0011","system":"icd10"},{"code":"BBJH.","system":"icd10"},{"code":"B0zz.","system":"icd10"},{"code":"B0030","system":"icd10"},{"code":"B001.","system":"icd10"},{"code":"B006.","system":"icd10"},{"code":"BBJ5.","system":"icd10"},{"code":"B0010","system":"icd10"},{"code":"B0032","system":"icd10"},{"code":"BBJ1.","system":"icd10"},{"code":"B320.","system":"icd10"},{"code":"B000z","system":"icd10"},{"code":"B004.","system":"icd10"},{"code":"B003z","system":"icd10"},{"code":"B00z1","system":"icd10"},{"code":"B007.","system":"icd10"},{"code":"BBJ8.","system":"icd10"},{"code":"B003.","system":"icd10"},{"code":"B0000","system":"icd10"},{"code":"B00zz","system":"icd10"},{"code":"B000.","system":"icd10"},{"code":"B005.","system":"icd10"},{"code":"B0042","system":"icd10"},{"code":"BBJ3.","system":"icd10"},{"code":"BBJ7.","system":"icd10"},{"code":"B0033","system":"icd10"},{"code":"B0z..","system":"icd10"},{"code":"B0zy.","system":"icd10"},{"code":"B0023","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-cancer-mliposarcoma---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-cancer-mliposarcoma---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-cancer-mliposarcoma---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
