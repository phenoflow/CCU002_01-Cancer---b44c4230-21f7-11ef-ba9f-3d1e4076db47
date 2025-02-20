# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"C40","system":"icd10"},{"code":"188323009","system":"icd10"},{"code":"269580008","system":"icd10"},{"code":"372108006","system":"icd10"},{"code":"1090961000000103","system":"icd10"},{"code":"187999008","system":"icd10"},{"code":"269581007","system":"icd10"},{"code":"712525007","system":"icd10"},{"code":"188324003","system":"icd10"},{"code":"372011009","system":"icd10"},{"code":"187991006","system":"icd10"},{"code":"109348004","system":"icd10"},{"code":"372131006","system":"icd10"},{"code":"188067002","system":"icd10"},{"code":"363504005","system":"icd10"},{"code":"363503004","system":"icd10"},{"code":"1090871000000102","system":"icd10"},{"code":"449627008","system":"icd10"},{"code":"ByuC5","system":"icd10"},{"code":"Byu31","system":"icd10"},{"code":"B326.","system":"icd10"},{"code":"B30X.","system":"icd10"},{"code":"B327.","system":"icd10"},{"code":"B5242","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-cancer-limbunspfd---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-cancer-limbunspfd---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-cancer-limbunspfd---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
