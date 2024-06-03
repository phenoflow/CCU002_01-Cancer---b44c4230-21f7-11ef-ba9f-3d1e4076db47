# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"94161006","system":"icd10"},{"code":"94300004","system":"icd10"},{"code":"94604000","system":"icd10"},{"code":"94480000","system":"icd10"},{"code":"94235004","system":"icd10"},{"code":"94481001","system":"icd10"},{"code":"94521000","system":"icd10"},{"code":"94246001","system":"icd10"},{"code":"94531007","system":"icd10"},{"code":"94409002","system":"icd10"},{"code":"94357009","system":"icd10"},{"code":"94638008","system":"icd10"},{"code":"94391008","system":"icd10"},{"code":"187946002","system":"icd10"},{"code":"94360002","system":"icd10"},{"code":"94527001","system":"icd10"},{"code":"94597008","system":"icd10"},{"code":"94454001","system":"icd10"},{"code":"94243009","system":"icd10"},{"code":"94297009","system":"icd10"},{"code":"94538001","system":"icd10"},{"code":"94254004","system":"icd10"},{"code":"188469005","system":"icd10"},{"code":"94253005","system":"icd10"},{"code":"94478006","system":"icd10"},{"code":"94418000","system":"icd10"},{"code":"94275007","system":"icd10"},{"code":"94312000","system":"icd10"},{"code":"94416001","system":"icd10"},{"code":"269617008","system":"icd10"},{"code":"94493005","system":"icd10"},{"code":"269616004","system":"icd10"},{"code":"94537006","system":"icd10"},{"code":"94402006","system":"icd10"},{"code":"94248000","system":"icd10"},{"code":"94335002","system":"icd10"},{"code":"94514000","system":"icd10"},{"code":"94280003","system":"icd10"},{"code":"94626004","system":"icd10"},{"code":"94281004","system":"icd10"},{"code":"94381002","system":"icd10"},{"code":"94632009","system":"icd10"},{"code":"94286009","system":"icd10"},{"code":"94606003","system":"icd10"},{"code":"94327000","system":"icd10"},{"code":"94600009","system":"icd10"},{"code":"94442001","system":"icd10"},{"code":"94260004","system":"icd10"},{"code":"94180008","system":"icd10"},{"code":"94326009","system":"icd10"},{"code":"94681006","system":"icd10"},{"code":"413740006","system":"icd10"},{"code":"94233006","system":"icd10"},{"code":"94663008","system":"icd10"},{"code":"94298004","system":"icd10"},{"code":"94365007","system":"icd10"},{"code":"94580002","system":"icd10"},{"code":"94220000","system":"icd10"},{"code":"94665001","system":"icd10"},{"code":"94432003","system":"icd10"},{"code":"94603006","system":"icd10"},{"code":"91281000119103","system":"icd10"},{"code":"274088005","system":"icd10"},{"code":"94186002","system":"icd10"},{"code":"94222008","system":"icd10"},{"code":"94313005","system":"icd10"},{"code":"94455000","system":"icd10"},{"code":"94503003","system":"icd10"},{"code":"ByuC7","system":"icd10"},{"code":"B153.","system":"icd10"},{"code":"B574.","system":"icd10"},{"code":"B5811","system":"icd10"},{"code":"B58y0","system":"icd10"},{"code":"B58y9","system":"icd10"},{"code":"B5831","system":"icd10"},{"code":"B58y.","system":"icd10"},{"code":"B577.","system":"icd10"},{"code":"B571.","system":"icd10"},{"code":"B58y1","system":"icd10"},{"code":"B58y4","system":"icd10"},{"code":"B570.","system":"icd10"},{"code":"B594.","system":"icd10"},{"code":"B58..","system":"icd10"},{"code":"B580.","system":"icd10"},{"code":"B587.","system":"icd10"},{"code":"B58y5","system":"icd10"},{"code":"B5740","system":"icd10"},{"code":"B581.","system":"icd10"},{"code":"ByuC.","system":"icd10"},{"code":"B584.","system":"icd10"},{"code":"B58y2","system":"icd10"},{"code":"B5761","system":"icd10"},{"code":"B5750","system":"icd10"},{"code":"B572.","system":"icd10"},{"code":"B57y.","system":"icd10"},{"code":"B586.","system":"icd10"},{"code":"B58y7","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-cancer-second---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-cancer-second---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-cancer-second---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
