# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"C49","system":"icd10"},{"code":"363364007","system":"icd10"},{"code":"188000002","system":"icd10"},{"code":"188004006","system":"icd10"},{"code":"363441009","system":"icd10"},{"code":"363388009","system":"icd10"},{"code":"310526005","system":"icd10"},{"code":"363365008","system":"icd10"},{"code":"188016000","system":"icd10"},{"code":"285633009","system":"icd10"},{"code":"402561003","system":"icd10"},{"code":"188021002","system":"icd10"},{"code":"188022009","system":"icd10"},{"code":"409231000000104","system":"icd10"},{"code":"188013008","system":"icd10"},{"code":"94264008","system":"icd10"},{"code":"188023004","system":"icd10"},{"code":"188019007","system":"icd10"},{"code":"314989000","system":"icd10"},{"code":"188015001","system":"icd10"},{"code":"187996001","system":"icd10"},{"code":"188009001","system":"icd10"},{"code":"187992004","system":"icd10"},{"code":"187995002","system":"icd10"},{"code":"1090891000000103","system":"icd10"},{"code":"187993009","system":"icd10"},{"code":"314974009","system":"icd10"},{"code":"363439008","system":"icd10"},{"code":"94582005","system":"icd10"},{"code":"363496003","system":"icd10"},{"code":"187997005","system":"icd10"},{"code":"188020001","system":"icd10"},{"code":"363363001","system":"icd10"},{"code":"187702003","system":"icd10"},{"code":"302816009","system":"icd10"},{"code":"188010006","system":"icd10"},{"code":"363366009","system":"icd10"},{"code":"188005007","system":"icd10"},{"code":"188003000","system":"icd10"},{"code":"188002005","system":"icd10"},{"code":"188006008","system":"icd10"},{"code":"187989003","system":"icd10"},{"code":"188017009","system":"icd10"},{"code":"187666008","system":"icd10"},{"code":"363440005","system":"icd10"},{"code":"187994003","system":"icd10"},{"code":"254503007","system":"icd10"},{"code":"269469005","system":"icd10"},{"code":"188001003","system":"icd10"},{"code":"B3124","system":"icd10"},{"code":"B3130","system":"icd10"},{"code":"B3113","system":"icd10"},{"code":"B3114","system":"icd10"},{"code":"B3112","system":"icd10"},{"code":"B3100","system":"icd10"},{"code":"B3152","system":"icd10"},{"code":"B3111","system":"icd10"},{"code":"B3102","system":"icd10"},{"code":"B053.","system":"icd10"},{"code":"B314.","system":"icd10"},{"code":"B313.","system":"icd10"},{"code":"B0550","system":"icd10"},{"code":"B3115","system":"icd10"},{"code":"B3150","system":"icd10"},{"code":"B3101","system":"icd10"},{"code":"B31..","system":"icd10"},{"code":"Byu59","system":"icd10"},{"code":"B3110","system":"icd10"},{"code":"B315.","system":"icd10"},{"code":"Byu5.","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-cancer-msoft---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-cancer-msoft---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-cancer-msoft---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
