# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"C20","system":"icd10"},{"code":"276822007","system":"icd10"},{"code":"94513006","system":"icd10"},{"code":"363351006","system":"icd10"},{"code":"187760008","system":"icd10"},{"code":"93984006","system":"icd10"},{"code":"187811009","system":"icd10"},{"code":"285612000","system":"icd10"},{"code":"314966008","system":"icd10"},{"code":"314997007","system":"icd10"},{"code":"B5751","system":"icd10"},{"code":"B14..","system":"icd10"},{"code":"B575.","system":"icd10"},{"code":"B141.","system":"icd10"},{"code":"B18y2","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-cancer-mesorectum---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-cancer-mesorectum---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-cancer-mesorectum---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
