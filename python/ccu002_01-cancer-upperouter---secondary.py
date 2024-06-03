# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"269464000","system":"icd10"},{"code":"187862007","system":"icd10"},{"code":"372023003","system":"icd10"},{"code":"363383000","system":"icd10"},{"code":"448994001","system":"icd10"},{"code":"724060008","system":"icd10"},{"code":"1078901000119100","system":"icd10"},{"code":"94376006","system":"icd10"},{"code":"187861000","system":"icd10"},{"code":"187929000","system":"icd10"},{"code":"187659007","system":"icd10"},{"code":"188154003","system":"icd10"},{"code":"187725002","system":"icd10"},{"code":"1078961000119104","system":"icd10"},{"code":"373082000","system":"icd10"},{"code":"188061001","system":"icd10"},{"code":"313249007","system":"icd10"},{"code":"B304.","system":"icd10"},{"code":"B030.","system":"icd10"},{"code":"B2220","system":"icd10"},{"code":"B3311","system":"icd10"},{"code":"B103.","system":"icd10"},{"code":"B2221","system":"icd10"},{"code":"B3261","system":"icd10"},{"code":"1J0D.","system":"icd10"},{"code":"B222.","system":"icd10"},{"code":"8Hn9.","system":"icd10"},{"code":"B344.","system":"icd10"},{"code":"B0510","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-cancer-upperouter---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-cancer-upperouter---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-cancer-upperouter---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
