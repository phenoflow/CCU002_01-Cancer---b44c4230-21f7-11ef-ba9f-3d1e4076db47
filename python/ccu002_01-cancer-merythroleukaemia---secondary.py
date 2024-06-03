# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"863741000000108","system":"icd10"},{"code":"815361000000107","system":"icd10"},{"code":"93451002","system":"icd10"},{"code":"110005000","system":"icd10"},{"code":"277474005","system":"icd10"},{"code":"863761000000109","system":"icd10"},{"code":"93143009","system":"icd10"},{"code":"188725004","system":"icd10"},{"code":"188746008","system":"icd10"},{"code":"277619001","system":"icd10"},{"code":"863781000000100","system":"icd10"},{"code":"188770007","system":"icd10"},{"code":"110004001","system":"icd10"},{"code":"277545003","system":"icd10"},{"code":"188768003","system":"icd10"},{"code":"188736006","system":"icd10"},{"code":"B691.","system":"icd10"},{"code":"BBr4.","system":"icd10"},{"code":"B690.","system":"icd10"},{"code":"B66..","system":"icd10"},{"code":"B65..","system":"icd10"},{"code":"BBr67","system":"icd10"},{"code":"1J02.","system":"icd10"},{"code":"B661.","system":"icd10"},{"code":"B69..","system":"icd10"},{"code":"ByuD7","system":"icd10"},{"code":"B670.","system":"icd10"},{"code":"BBr68","system":"icd10"},{"code":"B660.","system":"icd10"},{"code":"BBrA5","system":"icd10"},{"code":"B672.","system":"icd10"},{"code":"B67y.","system":"icd10"},{"code":"1429","system":"icd10"},{"code":"ZV106","system":"icd10"},{"code":"BBr63","system":"icd10"},{"code":"ByuD8","system":"icd10"},{"code":"B65y1","system":"icd10"},{"code":"B650.","system":"icd10"},{"code":"BBr40","system":"icd10"},{"code":"BBrA1","system":"icd10"},{"code":"B64y1","system":"icd10"},{"code":"BBr66","system":"icd10"},{"code":"BBr25","system":"icd10"},{"code":"B652.","system":"icd10"},{"code":"ByuD6","system":"icd10"},{"code":"BBr6.","system":"icd10"},{"code":"B651.","system":"icd10"},{"code":"BBr61","system":"icd10"},{"code":"B67..","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-cancer-merythroleukaemia---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-cancer-merythroleukaemia---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-cancer-merythroleukaemia---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
