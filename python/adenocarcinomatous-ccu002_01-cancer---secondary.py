# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"408647009","system":"icd10"},{"code":"733361001","system":"icd10"},{"code":"309245001","system":"icd10"},{"code":"413446001","system":"icd10"},{"code":"721696009","system":"icd10"},{"code":"254626006","system":"icd10"},{"code":"15956341000119105","system":"icd10"},{"code":"408646000","system":"icd10"},{"code":"408645001","system":"icd10"},{"code":"276803003","system":"icd10"},{"code":"681601000119101","system":"icd10"},{"code":"304545002","system":"icd10"},{"code":"94291000119103","system":"icd10"},{"code":"255110003","system":"icd10"},{"code":"423746001","system":"icd10"},{"code":"342571000000109","system":"icd10"},{"code":"707452003","system":"icd10"},{"code":"1691000119104","system":"icd10"},{"code":"1701000119104","system":"icd10"},{"code":"342511000000104","system":"icd10"},{"code":"413445002","system":"icd10"},{"code":"9541000119105","system":"icd10"},{"code":"184881000119106","system":"icd10"},{"code":"254887002","system":"icd10"},{"code":"301756000","system":"icd10"},{"code":"15956381000119100","system":"icd10"},{"code":"342561000000102","system":"icd10"},{"code":"425178004","system":"icd10"},{"code":"BB821","system":"icd10"},{"code":"BB5L3","system":"icd10"},{"code":"BB57.","system":"icd10"},{"code":"BB5L1","system":"icd10"},{"code":"BB5N1","system":"icd10"},{"code":"B107.","system":"icd10"},{"code":"BBB2.","system":"icd10"},{"code":"B118.","system":"icd10"},{"code":"BB5F.","system":"icd10"},{"code":"BB54.","system":"icd10"},{"code":"BB5S2","system":"icd10"},{"code":"BB84.","system":"icd10"},{"code":"B119.","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["adenocarcinomatous-ccu002_01-cancer---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["adenocarcinomatous-ccu002_01-cancer---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["adenocarcinomatous-ccu002_01-cancer---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
