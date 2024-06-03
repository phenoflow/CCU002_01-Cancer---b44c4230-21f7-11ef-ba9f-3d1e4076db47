# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"285619009","system":"icd10"},{"code":"187917009","system":"icd10"},{"code":"94602001","system":"icd10"},{"code":"187918004","system":"icd10"},{"code":"187957007","system":"icd10"},{"code":"187916000","system":"icd10"},{"code":"94274006","system":"icd10"},{"code":"363438000","system":"icd10"},{"code":"187956003","system":"icd10"},{"code":"94389000","system":"icd10"},{"code":"B3064","system":"icd10"},{"code":"B3022","system":"icd10"},{"code":"B3021","system":"icd10"},{"code":"B3020","system":"icd10"},{"code":"B302.","system":"icd10"},{"code":"B3063","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["costovertebral-ccu002_01-cancer---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["costovertebral-ccu002_01-cancer---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["costovertebral-ccu002_01-cancer---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
