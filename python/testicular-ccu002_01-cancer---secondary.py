# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"C62","system":"icd10"},{"code":"417554000","system":"icd10"},{"code":"363449006","system":"icd10"},{"code":"313428008","system":"icd10"},{"code":"1090261000000108","system":"icd10"},{"code":"313429000","system":"icd10"},{"code":"417417007","system":"icd10"},{"code":"416769008","system":"icd10"},{"code":"188220005","system":"icd10"},{"code":"94087009","system":"icd10"},{"code":"1081781000119105","system":"icd10"},{"code":"277664004","system":"icd10"},{"code":"94623007","system":"icd10"},{"code":"254912000","system":"icd10"},{"code":"188219004","system":"icd10"},{"code":"109876001","system":"icd10"},{"code":"255107005","system":"icd10"},{"code":"278491007","system":"icd10"},{"code":"B4702","system":"icd10"},{"code":"B58y6","system":"icd10"},{"code":"B470.","system":"icd10"},{"code":"1J0C.","system":"icd10"},{"code":"B471.","system":"icd10"},{"code":"B47..","system":"icd10"},{"code":"B4703","system":"icd10"},{"code":"B4710","system":"icd10"},{"code":"B4711","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["testicular-ccu002_01-cancer---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["testicular-ccu002_01-cancer---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["testicular-ccu002_01-cancer---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
