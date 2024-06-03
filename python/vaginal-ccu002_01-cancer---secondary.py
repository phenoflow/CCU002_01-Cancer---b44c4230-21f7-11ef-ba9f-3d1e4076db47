# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"C52","system":"icd10"},{"code":"188235006","system":"icd10"},{"code":"363445000","system":"icd10"},{"code":"94668004","system":"icd10"},{"code":"188209005","system":"icd10"},{"code":"B450.","system":"icd10"},{"code":"B48y1","system":"icd10"},{"code":"B58y3","system":"icd10"},{"code":"B4501","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["vaginal-ccu002_01-cancer---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["vaginal-ccu002_01-cancer---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["vaginal-ccu002_01-cancer---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
