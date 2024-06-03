# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"C39","system":"icd10"},{"code":"449096009","system":"icd10"},{"code":"94515004","system":"icd10"},{"code":"449066004","system":"icd10"},{"code":"430621000","system":"icd10"},{"code":"93986008","system":"icd10"},{"code":"269473008","system":"icd10"},{"code":"Byu24","system":"icd10"},{"code":"ByuC3","system":"icd10"},{"code":"B26..","system":"icd10"},{"code":"Byu2.","system":"icd10"},{"code":"B2zy.","system":"icd10"},{"code":"B573.","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-cancer-mrespiratory---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-cancer-mrespiratory---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-cancer-mrespiratory---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
