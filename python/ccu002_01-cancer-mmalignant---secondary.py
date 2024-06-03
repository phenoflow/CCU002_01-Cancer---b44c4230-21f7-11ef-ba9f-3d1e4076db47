# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"315005000","system":"icd10"},{"code":"188050009","system":"icd10"},{"code":"188038003","system":"icd10"},{"code":"302837001","system":"icd10"},{"code":"363406005","system":"icd10"},{"code":"239898008","system":"icd10"},{"code":"188063003","system":"icd10"},{"code":"403927001","system":"icd10"},{"code":"363396004","system":"icd10"},{"code":"254828009","system":"icd10"},{"code":"188046002","system":"icd10"},{"code":"276821000","system":"icd10"},{"code":"188075008","system":"icd10"},{"code":"363489000","system":"icd10"},{"code":"254412006","system":"icd10"},{"code":"403924008","system":"icd10"},{"code":"363376007","system":"icd10"},{"code":"372244006","system":"icd10"},{"code":"315009006","system":"icd10"},{"code":"363382005","system":"icd10"},{"code":"254837009","system":"icd10"},{"code":"363349007","system":"icd10"},{"code":"188070003","system":"icd10"},{"code":"363358000","system":"icd10"},{"code":"315004001","system":"icd10"},{"code":"255096006","system":"icd10"},{"code":"315002002","system":"icd10"},{"code":"315006004","system":"icd10"},{"code":"188076009","system":"icd10"},{"code":"314998002","system":"icd10"},{"code":"255012009","system":"icd10"},{"code":"363493006","system":"icd10"},{"code":"187742008","system":"icd10"},{"code":"188074007","system":"icd10"},{"code":"363375006","system":"icd10"},{"code":"230156002","system":"icd10"},{"code":"363490009","system":"icd10"},{"code":"363488008","system":"icd10"},{"code":"363346000","system":"icd10"},{"code":"310498001","system":"icd10"},{"code":"402558004","system":"icd10"},{"code":"14250","system":"icd10"},{"code":"B62x4","system":"icd10"},{"code":"B3263","system":"icd10"},{"code":"B3276","system":"icd10"},{"code":"B3257","system":"icd10"},{"code":"B3272","system":"icd10"},{"code":"B3251","system":"icd10"},{"code":"B3241","system":"icd10"},{"code":"BBZ2.","system":"icd10"},{"code":"BBM01","system":"icd10"},{"code":"BBe9.","system":"icd10"},{"code":"B3277","system":"icd10"},{"code":"B3231","system":"icd10"},{"code":"B3278","system":"icd10"},{"code":"BBE11","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-cancer-mmalignant---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-cancer-mmalignant---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-cancer-mmalignant---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
