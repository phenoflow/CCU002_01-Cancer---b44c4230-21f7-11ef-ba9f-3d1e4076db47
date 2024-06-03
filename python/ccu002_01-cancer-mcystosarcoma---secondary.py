# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"C46","system":"icd10"},{"code":"307608006","system":"icd10"},{"code":"109392002","system":"icd10"},{"code":"94719007","system":"icd10"},{"code":"118606001","system":"icd10"},{"code":"188547001","system":"icd10"},{"code":"93547002","system":"icd10"},{"code":"449101009","system":"icd10"},{"code":"699357004","system":"icd10"},{"code":"443144000","system":"icd10"},{"code":"188544008","system":"icd10"},{"code":"254800003","system":"icd10"},{"code":"254897006","system":"icd10"},{"code":"255114007","system":"icd10"},{"code":"446643000","system":"icd10"},{"code":"254918001","system":"icd10"},{"code":"93549004","system":"icd10"},{"code":"255067005","system":"icd10"},{"code":"109391009","system":"icd10"},{"code":"424413001","system":"icd10"},{"code":"307219002","system":"icd10"},{"code":"254877001","system":"icd10"},{"code":"188738007","system":"icd10"},{"code":"302851001","system":"icd10"},{"code":"724649000","system":"icd10"},{"code":"424952003","system":"icd10"},{"code":"109388009","system":"icd10"},{"code":"188548006","system":"icd10"},{"code":"188029000","system":"icd10"},{"code":"188551004","system":"icd10"},{"code":"278050001","system":"icd10"},{"code":"254601002","system":"icd10"},{"code":"278046008","system":"icd10"},{"code":"109385007","system":"icd10"},{"code":"231835006","system":"icd10"},{"code":"109386008","system":"icd10"},{"code":"1J01.","system":"icd10"},{"code":"B6z0.","system":"icd10"},{"code":"A7895","system":"icd10"},{"code":"BBTA.","system":"icd10"},{"code":"BBf2.","system":"icd10"},{"code":"B612.","system":"icd10"},{"code":"BBY0.","system":"icd10"},{"code":"BBF3.","system":"icd10"},{"code":"BBF..","system":"icd10"},{"code":"8Hn8.","system":"icd10"},{"code":"B05z0","system":"icd10"},{"code":"BBF5.","system":"icd10"},{"code":"BBLD.","system":"icd10"},{"code":"BBLH.","system":"icd10"},{"code":"BBN1.","system":"icd10"},{"code":"BBbW.","system":"icd10"},{"code":"BBF6.","system":"icd10"},{"code":"B592X","system":"icd10"},{"code":"Byu53","system":"icd10"},{"code":"BBp1.","system":"icd10"},{"code":"BBF4.","system":"icd10"},{"code":"BBN4.","system":"icd10"},{"code":"BBrA3","system":"icd10"},{"code":"B59zX","system":"icd10"},{"code":"BBLJ.","system":"icd10"},{"code":"B6531","system":"icd10"},{"code":"BBL0.","system":"icd10"},{"code":"BBf..","system":"icd10"},{"code":"BBFz.","system":"icd10"},{"code":"B653.","system":"icd10"},{"code":"BBM8.","system":"icd10"},{"code":"BBd2.","system":"icd10"},{"code":"BBM9.","system":"icd10"},{"code":"B33z0","system":"icd10"},{"code":"B933.","system":"icd10"},{"code":"B6124","system":"icd10"},{"code":"BBN5.","system":"icd10"},{"code":"Byu5B","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-cancer-mcystosarcoma---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-cancer-mcystosarcoma---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-cancer-mcystosarcoma---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
