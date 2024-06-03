cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ccu002_01-cancer-neopl---secondary:
    run: ccu002_01-cancer-neopl---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  testicular-ccu002_01-cancer---secondary:
    run: testicular-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-neopl---secondary/output
  mpancreatic-ccu002_01-cancer---secondary:
    run: mpancreatic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: testicular-ccu002_01-cancer---secondary/output
  vaginal-ccu002_01-cancer---secondary:
    run: vaginal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: mpancreatic-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-mrespiratory---secondary:
    run: ccu002_01-cancer-mrespiratory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: vaginal-ccu002_01-cancer---secondary/output
  ureteric-ccu002_01-cancer---secondary:
    run: ureteric-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mrespiratory---secondary/output
  mintraductal-ccu002_01-cancer---secondary:
    run: mintraductal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ureteric-ccu002_01-cancer---secondary/output
  carotid-ccu002_01-cancer---secondary:
    run: carotid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: mintraductal-ccu002_01-cancer---secondary/output
  retroperitoneal-ccu002_01-cancer---secondary:
    run: retroperitoneal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: carotid-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-mesorectum---secondary:
    run: ccu002_01-cancer-mesorectum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: retroperitoneal-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-limbunspfd---secondary:
    run: ccu002_01-cancer-limbunspfd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mesorectum---secondary/output
  paratracheal-ccu002_01-cancer---secondary:
    run: paratracheal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-limbunspfd---secondary/output
  mrenal-ccu002_01-cancer---secondary:
    run: mrenal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: paratracheal-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-mcystosarcoma---secondary:
    run: ccu002_01-cancer-mcystosarcoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: mrenal-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-mhepatobiliary---secondary:
    run: ccu002_01-cancer-mhepatobiliary---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mcystosarcoma---secondary/output
  ccu002_01-cancer-supratrochlear---secondary:
    run: ccu002_01-cancer-supratrochlear---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mhepatobiliary---secondary/output
  mthyroid-ccu002_01-cancer---secondary:
    run: mthyroid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-supratrochlear---secondary/output
  ccu002_01-cancer-midbrain---secondary:
    run: ccu002_01-cancer-midbrain---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: mthyroid-ccu002_01-cancer---secondary/output
  haematopoietic-ccu002_01-cancer---secondary:
    run: haematopoietic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-midbrain---secondary/output
  ccu002_01-cancer-msoft---secondary:
    run: ccu002_01-cancer-msoft---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: haematopoietic-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-mliposarcoma---secondary:
    run: ccu002_01-cancer-mliposarcoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-msoft---secondary/output
  ccu002_01-cancer-mskin---secondary:
    run: ccu002_01-cancer-mskin---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mliposarcoma---secondary/output
  ccu002_01-cancer-articulr---secondary:
    run: ccu002_01-cancer-articulr---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mskin---secondary/output
  madrenal-ccu002_01-cancer---secondary:
    run: madrenal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-articulr---secondary/output
  ccu002_01-cancer-waldeyer---secondary:
    run: ccu002_01-cancer-waldeyer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: madrenal-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-mmesothelioma---secondary:
    run: ccu002_01-cancer-mmesothelioma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-waldeyer---secondary/output
  ccu002_01-cancer-lowerouter---secondary:
    run: ccu002_01-cancer-lowerouter---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mmesothelioma---secondary/output
  ccu002_01-cancer-mcomedocarcinoma---secondary:
    run: ccu002_01-cancer-mcomedocarcinoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-lowerouter---secondary/output
  msebaceous-ccu002_01-cancer---secondary:
    run: msebaceous-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mcomedocarcinoma---secondary/output
  mlymphoid-ccu002_01-cancer---secondary:
    run: mlymphoid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: msebaceous-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-poisoning---secondary:
    run: ccu002_01-cancer-poisoning---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: mlymphoid-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-letter---secondary:
    run: ccu002_01-cancer-letter---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-poisoning---secondary/output
  centroblasticcentrocytic-ccu002_01-cancer---secondary:
    run: centroblasticcentrocytic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-letter---secondary/output
  retrocaecal-ccu002_01-cancer---secondary:
    run: retrocaecal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: centroblasticcentrocytic-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-radiochemotherapy---secondary:
    run: ccu002_01-cancer-radiochemotherapy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: retrocaecal-ccu002_01-cancer---secondary/output
  mhepatocellular-ccu002_01-cancer---secondary:
    run: mhepatocellular-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-radiochemotherapy---secondary/output
  ccu002_01-cancer-mmalignant---secondary:
    run: ccu002_01-cancer-mmalignant---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: mhepatocellular-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-effusion---secondary:
    run: ccu002_01-cancer-effusion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mmalignant---secondary/output
  adenocarcinomatous-ccu002_01-cancer---secondary:
    run: adenocarcinomatous-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-effusion---secondary/output
  ccu002_01-cancer-myosarcoma---secondary:
    run: ccu002_01-cancer-myosarcoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: adenocarcinomatous-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-ovary---secondary:
    run: ccu002_01-cancer-ovary---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-myosarcoma---secondary/output
  aleukemic-ccu002_01-cancer---secondary:
    run: aleukemic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-ovary---secondary/output
  lymphomatoid-ccu002_01-cancer---secondary:
    run: lymphomatoid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: aleukemic-ccu002_01-cancer---secondary/output
  orbital-ccu002_01-cancer---secondary:
    run: orbital-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: lymphomatoid-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-second---secondary:
    run: ccu002_01-cancer-second---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: orbital-ccu002_01-cancer---secondary/output
  costovertebral-ccu002_01-cancer---secondary:
    run: costovertebral-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-second---secondary/output
  ccu002_01-cancer-kidney---secondary:
    run: ccu002_01-cancer-kidney---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: costovertebral-ccu002_01-cancer---secondary/output
  peripheral-ccu002_01-cancer---secondary:
    run: peripheral-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-kidney---secondary/output
  myelodysplastic-ccu002_01-cancer---secondary:
    run: myelodysplastic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: peripheral-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-blast---secondary:
    run: ccu002_01-cancer-blast---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: myelodysplastic-ccu002_01-cancer---secondary/output
  frontal-ccu002_01-cancer---secondary:
    run: frontal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-blast---secondary/output
  ccu002_01-cancer-chemotherapy---secondary:
    run: ccu002_01-cancer-chemotherapy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: frontal-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-stage---secondary:
    run: ccu002_01-cancer-stage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-chemotherapy---secondary/output
  extramedullary-ccu002_01-cancer---secondary:
    run: extramedullary-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-stage---secondary/output
  ccu002_01-cancer-infusion---secondary:
    run: ccu002_01-cancer-infusion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: extramedullary-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-origin---secondary:
    run: ccu002_01-cancer-origin---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-infusion---secondary/output
  meosinophilic-ccu002_01-cancer---secondary:
    run: meosinophilic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-origin---secondary/output
  pillar-ccu002_01-cancer---secondary:
    run: pillar-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: meosinophilic-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-myometrium---secondary:
    run: ccu002_01-cancer-myometrium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: pillar-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-vessel---secondary:
    run: ccu002_01-cancer-vessel---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-myometrium---secondary/output
  mprolymphocytic-ccu002_01-cancer---secondary:
    run: mprolymphocytic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-vessel---secondary/output
  ccu002_01-cancer-merythroleukaemia---secondary:
    run: ccu002_01-cancer-merythroleukaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: mprolymphocytic-ccu002_01-cancer---secondary/output
  spinal-ccu002_01-cancer---secondary:
    run: spinal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-merythroleukaemia---secondary/output
  ccu002_01-cancer-fibrosarcoma---secondary:
    run: ccu002_01-cancer-fibrosarcoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: spinal-ccu002_01-cancer---secondary/output
  recurrent-ccu002_01-cancer---secondary:
    run: recurrent-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-fibrosarcoma---secondary/output
  ccu002_01-cancer-osteoporosis---secondary:
    run: ccu002_01-cancer-osteoporosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: recurrent-ccu002_01-cancer---secondary/output
  myelogenous-ccu002_01-cancer---secondary:
    run: myelogenous-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-osteoporosis---secondary/output
  ccu002_01-cancer-mteratoma---secondary:
    run: ccu002_01-cancer-mteratoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: myelogenous-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-alveolus---secondary:
    run: ccu002_01-cancer-alveolus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mteratoma---secondary/output
  ccu002_01-cancer-histiocytosis---secondary:
    run: ccu002_01-cancer-histiocytosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-alveolus---secondary/output
  ccu002_01-cancer-duodenum---secondary:
    run: ccu002_01-cancer-duodenum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-histiocytosis---secondary/output
  ccu002_01-cancer-flexure---secondary:
    run: ccu002_01-cancer-flexure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-duodenum---secondary/output
  madenoid-ccu002_01-cancer---secondary:
    run: madenoid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-flexure---secondary/output
  ccu002_01-cancer-cornu---secondary:
    run: ccu002_01-cancer-cornu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: madenoid-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-mmycosis---secondary:
    run: ccu002_01-cancer-mmycosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-cornu---secondary/output
  ccu002_01-cancer-angioendotheliomatosis---secondary:
    run: ccu002_01-cancer-angioendotheliomatosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mmycosis---secondary/output
  ccu002_01-cancer-nasal---secondary:
    run: ccu002_01-cancer-nasal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-angioendotheliomatosis---secondary/output
  ccu002_01-cancer-finger---secondary:
    run: ccu002_01-cancer-finger---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-nasal---secondary/output
  endocervical-ccu002_01-cancer---secondary:
    run: endocervical-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-finger---secondary/output
  carcinoid-ccu002_01-cancer---secondary:
    run: carcinoid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: endocervical-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-prepylorus---secondary:
    run: ccu002_01-cancer-prepylorus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: carcinoid-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-upperouter---secondary:
    run: ccu002_01-cancer-upperouter---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-prepylorus---secondary/output
  mmucinous-ccu002_01-cancer---secondary:
    run: mmucinous-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-upperouter---secondary/output
  ccu002_01-cancer-floor---secondary:
    run: ccu002_01-cancer-floor---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: mmucinous-ccu002_01-cancer---secondary/output
  endometrial-ccu002_01-cancer---secondary:
    run: endometrial-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-floor---secondary/output
  mameloblastic-ccu002_01-cancer---secondary:
    run: mameloblastic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: endometrial-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-noninfiltrating---secondary:
    run: ccu002_01-cancer-noninfiltrating---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: mameloblastic-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-cystadenocarcinoma---secondary:
    run: ccu002_01-cancer-cystadenocarcinoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-noninfiltrating---secondary/output
  ccu002_01-cancer-cycle---secondary:
    run: ccu002_01-cancer-cycle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-cystadenocarcinoma---secondary/output
  ccu002_01-cancer-thymoma---secondary:
    run: ccu002_01-cancer-thymoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-cycle---secondary/output
  ccu002_01-cancer-buttock---secondary:
    run: ccu002_01-cancer-buttock---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-thymoma---secondary/output
  heavy-ccu002_01-cancer---secondary:
    run: heavy-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-buttock---secondary/output
  ccu002_01-cancer-paragranuloma---secondary:
    run: ccu002_01-cancer-paragranuloma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: heavy-ccu002_01-cancer---secondary/output
  mediastinal-ccu002_01-cancer---secondary:
    run: mediastinal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-paragranuloma---secondary/output
  ccu002_01-cancer-oligodendroglioma---secondary:
    run: ccu002_01-cancer-oligodendroglioma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: mediastinal-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-angiosarcoma---secondary:
    run: ccu002_01-cancer-angiosarcoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-oligodendroglioma---secondary/output
  ccu002_01-cancer-epithelium---secondary:
    run: ccu002_01-cancer-epithelium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-angiosarcoma---secondary/output
  nasolacrimal-ccu002_01-cancer---secondary:
    run: nasolacrimal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-epithelium---secondary/output
  mesothelial-ccu002_01-cancer---secondary:
    run: mesothelial-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: nasolacrimal-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-pharynx---secondary:
    run: ccu002_01-cancer-pharynx---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: mesothelial-ccu002_01-cancer---secondary/output
  mmedullary-ccu002_01-cancer---secondary:
    run: mmedullary-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-pharynx---secondary/output
  ccu002_01-cancer-regiman---secondary:
    run: ccu002_01-cancer-regiman---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: mmedullary-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-oesophagu---secondary:
    run: ccu002_01-cancer-oesophagu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-regiman---secondary/output
  tonsillar-ccu002_01-cancer---secondary:
    run: tonsillar-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-oesophagu---secondary/output
  ccu002_01-cancer-forehead---secondary:
    run: ccu002_01-cancer-forehead---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: tonsillar-ccu002_01-cancer---secondary/output
  mpituitary-ccu002_01-cancer---secondary:
    run: mpituitary-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-forehead---secondary/output
  genitourinary-ccu002_01-cancer---secondary:
    run: genitourinary-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: mpituitary-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-tibia---secondary:
    run: ccu002_01-cancer-tibia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: genitourinary-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-history---secondary:
    run: ccu002_01-cancer-history---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-tibia---secondary/output
  ccu002_01-cancer-myeloma---secondary:
    run: ccu002_01-cancer-myeloma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-history---secondary/output
  ccu002_01-cancer-mchoriocarcinoma---secondary:
    run: ccu002_01-cancer-mchoriocarcinoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-myeloma---secondary/output
  ccu002_01-cancer-exocervix---secondary:
    run: ccu002_01-cancer-exocervix---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mchoriocarcinoma---secondary/output
  ccu002_01-cancer-twothird---secondary:
    run: ccu002_01-cancer-twothird---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-exocervix---secondary/output
  ccu002_01-cancer-gallbladder---secondary:
    run: ccu002_01-cancer-gallbladder---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-twothird---secondary/output
  ccu002_01-cancer---secondary:
    run: ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-gallbladder---secondary/output
  ccu002_01-cancer-gorlin---secondary:
    run: ccu002_01-cancer-gorlin---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer---secondary/output
  ccu002_01-cancer-ganglia---secondary:
    run: ccu002_01-cancer-ganglia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-gorlin---secondary/output
  ccu002_01-cancer-lymphosarcoma---secondary:
    run: ccu002_01-cancer-lymphosarcoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-ganglia---secondary/output
  ccu002_01-cancer-ringed---secondary:
    run: ccu002_01-cancer-ringed---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-lymphosarcoma---secondary/output
  unknown-ccu002_01-cancer---secondary:
    run: unknown-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-ringed---secondary/output
  ccu002_01-cancer-islet---secondary:
    run: ccu002_01-cancer-islet---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: unknown-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-forearm---secondary:
    run: ccu002_01-cancer-forearm---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-islet---secondary/output
  ccu002_01-cancer-immunoglobulin---secondary:
    run: ccu002_01-cancer-immunoglobulin---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-forearm---secondary/output
  ccu002_01-cancer-jejunum---secondary:
    run: ccu002_01-cancer-jejunum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-immunoglobulin---secondary/output
  ccu002_01-cancer-mcomplex---secondary:
    run: ccu002_01-cancer-mcomplex---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-jejunum---secondary/output
  pectoral-ccu002_01-cancer---secondary:
    run: pectoral-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mcomplex---secondary/output
  ccu002_01-cancer-mucosaassociated---secondary:
    run: ccu002_01-cancer-mucosaassociated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: pectoral-ccu002_01-cancer---secondary/output
  genital-ccu002_01-cancer---secondary:
    run: genital-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mucosaassociated---secondary/output
  ccu002_01-cancer-ischium---secondary:
    run: ccu002_01-cancer-ischium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: genital-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-diaphragm---secondary:
    run: ccu002_01-cancer-diaphragm---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-ischium---secondary/output
  ccu002_01-cancer-squamocolumnar---secondary:
    run: ccu002_01-cancer-squamocolumnar---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-diaphragm---secondary/output
  ccu002_01-cancer-lowerinner---secondary:
    run: ccu002_01-cancer-lowerinner---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-squamocolumnar---secondary/output
  ccu002_01-cancer-mesentery---secondary:
    run: ccu002_01-cancer-mesentery---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-lowerinner---secondary/output
  ccu002_01-cancer-talus---secondary:
    run: ccu002_01-cancer-talus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule135
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mesentery---secondary/output
  ccu002_01-cancer-chest---secondary:
    run: ccu002_01-cancer-chest---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule136
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-talus---secondary/output
  ccu002_01-cancer-maxilla---secondary:
    run: ccu002_01-cancer-maxilla---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule137
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-chest---secondary/output
  ccu002_01-cancer-pubis---secondary:
    run: ccu002_01-cancer-pubis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule138
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-maxilla---secondary/output
  ccu002_01-cancer-pleura---secondary:
    run: ccu002_01-cancer-pleura---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule139
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-pubis---secondary/output
  marginal-ccu002_01-cancer---secondary:
    run: marginal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule140
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-pleura---secondary/output
  ccu002_01-cancer-linguae---secondary:
    run: ccu002_01-cancer-linguae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule141
      potentialCases:
        id: potentialCases
        source: marginal-ccu002_01-cancer---secondary/output
  choroid-ccu002_01-cancer---secondary:
    run: choroid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule142
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-linguae---secondary/output
  ccu002_01-cancer-majora---secondary:
    run: ccu002_01-cancer-majora---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule143
      potentialCases:
        id: potentialCases
        source: choroid-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-greater---secondary:
    run: ccu002_01-cancer-greater---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule144
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-majora---secondary/output
  ccu002_01-cancer-hypopharynx---secondary:
    run: ccu002_01-cancer-hypopharynx---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule145
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-greater---secondary/output
  ccu002_01-cancer-plastica---secondary:
    run: ccu002_01-cancer-plastica---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule146
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-hypopharynx---secondary/output
  ccu002_01-cancer-calcaneum---secondary:
    run: ccu002_01-cancer-calcaneum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule147
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-plastica---secondary/output
  lymphoproliferative-ccu002_01-cancer---secondary:
    run: lymphoproliferative-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule148
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-calcaneum---secondary/output
  ccu002_01-cancer-delivery---secondary:
    run: ccu002_01-cancer-delivery---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule149
      potentialCases:
        id: potentialCases
        source: lymphoproliferative-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-lambda---secondary:
    run: ccu002_01-cancer-lambda---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule150
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-delivery---secondary/output
  ccu002_01-cancer-carcinomatosis---secondary:
    run: ccu002_01-cancer-carcinomatosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule151
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-lambda---secondary/output
  ccu002_01-cancer-astrocytoma---secondary:
    run: ccu002_01-cancer-astrocytoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule152
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-carcinomatosis---secondary/output
  glossoepiglottic-ccu002_01-cancer---secondary:
    run: glossoepiglottic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule153
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-astrocytoma---secondary/output
  lentiginous-ccu002_01-cancer---secondary:
    run: lentiginous-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule154
      potentialCases:
        id: potentialCases
        source: glossoepiglottic-ccu002_01-cancer---secondary/output
  presacral-ccu002_01-cancer---secondary:
    run: presacral-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule155
      potentialCases:
        id: potentialCases
        source: lentiginous-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-msweat---secondary:
    run: ccu002_01-cancer-msweat---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule156
      potentialCases:
        id: potentialCases
        source: presacral-ccu002_01-cancer---secondary/output
  trigone-ccu002_01-cancer---secondary:
    run: trigone-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule157
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-msweat---secondary/output
  ccu002_01-cancer-thigh---secondary:
    run: ccu002_01-cancer-thigh---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule158
      potentialCases:
        id: potentialCases
        source: trigone-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-upperinner---secondary:
    run: ccu002_01-cancer-upperinner---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule159
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-thigh---secondary/output
  ccu002_01-cancer-glioma---secondary:
    run: ccu002_01-cancer-glioma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule160
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-upperinner---secondary/output
  ccu002_01-cancer-hippocampu---secondary:
    run: ccu002_01-cancer-hippocampu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule161
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-glioma---secondary/output
  light-ccu002_01-cancer---secondary:
    run: light-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule162
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-hippocampu---secondary/output
  ccu002_01-cancer-phyllode---secondary:
    run: ccu002_01-cancer-phyllode---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule163
      potentialCases:
        id: potentialCases
        source: light-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-fundu---secondary:
    run: ccu002_01-cancer-fundu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule164
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-phyllode---secondary/output
  ccu002_01-cancer-sheath---secondary:
    run: ccu002_01-cancer-sheath---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule165
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-fundu---secondary/output
  ccu002_01-cancer-tcell---secondary:
    run: ccu002_01-cancer-tcell---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule166
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-sheath---secondary/output
  ccu002_01-cancer-larynx---secondary:
    run: ccu002_01-cancer-larynx---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule167
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-tcell---secondary/output
  ccu002_01-cancer-fossa---secondary:
    run: ccu002_01-cancer-fossa---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule168
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-larynx---secondary/output
  ccu002_01-cancer-penis---secondary:
    run: ccu002_01-cancer-penis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule169
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-fossa---secondary/output
  ccu002_01-cancer-neuroma---secondary:
    run: ccu002_01-cancer-neuroma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule170
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-penis---secondary/output
  ccu002_01-cancer-mcarcinosarcoma---secondary:
    run: ccu002_01-cancer-mcarcinosarcoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule171
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-neuroma---secondary/output
  ccu002_01-cancer-waldenstrom---secondary:
    run: ccu002_01-cancer-waldenstrom---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule172
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mcarcinosarcoma---secondary/output
  gastric-ccu002_01-cancer---secondary:
    run: gastric-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule173
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-waldenstrom---secondary/output
  ccu002_01-cancer-ligament---secondary:
    run: ccu002_01-cancer-ligament---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule174
      potentialCases:
        id: potentialCases
        source: gastric-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-programme---secondary:
    run: ccu002_01-cancer-programme---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule175
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-ligament---secondary/output
  ccu002_01-cancer-stewarttreves---secondary:
    run: ccu002_01-cancer-stewarttreves---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule176
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-programme---secondary/output
  intestinal-ccu002_01-cancer---secondary:
    run: intestinal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule177
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-stewarttreves---secondary/output
  ccu002_01-cancer-vulva---secondary:
    run: ccu002_01-cancer-vulva---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule178
      potentialCases:
        id: potentialCases
        source: intestinal-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-spleen---secondary:
    run: ccu002_01-cancer-spleen---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule179
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-vulva---secondary/output
  ccu002_01-cancer-lesser---secondary:
    run: ccu002_01-cancer-lesser---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule180
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-spleen---secondary/output
  ccu002_01-cancer-peduncle---secondary:
    run: ccu002_01-cancer-peduncle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule181
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-lesser---secondary/output
  ccu002_01-cancer-somatostatinoma---secondary:
    run: ccu002_01-cancer-somatostatinoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule182
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-peduncle---secondary/output
  ccu002_01-cancer-salivary---secondary:
    run: ccu002_01-cancer-salivary---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule183
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-somatostatinoma---secondary/output
  mserous-ccu002_01-cancer---secondary:
    run: mserous-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule184
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-salivary---secondary/output
  ccu002_01-cancer-meatus---secondary:
    run: ccu002_01-cancer-meatus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule185
      potentialCases:
        id: potentialCases
        source: mserous-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-mmixed---secondary:
    run: ccu002_01-cancer-mmixed---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule186
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-meatus---secondary/output
  ccu002_01-cancer-lunate---secondary:
    run: ccu002_01-cancer-lunate---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule187
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mmixed---secondary/output
  ccu002_01-cancer-madult---secondary:
    run: ccu002_01-cancer-madult---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule188
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-lunate---secondary/output
  ccu002_01-cancer-minora---secondary:
    run: ccu002_01-cancer-minora---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule189
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-madult---secondary/output
  mgranular-ccu002_01-cancer---secondary:
    run: mgranular-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule190
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-minora---secondary/output
  pharyngeal-ccu002_01-cancer---secondary:
    run: pharyngeal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule191
      potentialCases:
        id: potentialCases
        source: mgranular-ccu002_01-cancer---secondary/output
  different-ccu002_01-cancer---secondary:
    run: different-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule192
      potentialCases:
        id: potentialCases
        source: pharyngeal-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-subglotti---secondary:
    run: ccu002_01-cancer-subglotti---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule193
      potentialCases:
        id: potentialCases
        source: different-ccu002_01-cancer---secondary/output
  subcutaneous-ccu002_01-cancer---secondary:
    run: subcutaneous-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule194
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-subglotti---secondary/output
  trophoblastic-ccu002_01-cancer---secondary:
    run: trophoblastic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule195
      potentialCases:
        id: potentialCases
        source: subcutaneous-ccu002_01-cancer---secondary/output
  mucoepidermoid-ccu002_01-cancer---secondary:
    run: mucoepidermoid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule196
      potentialCases:
        id: potentialCases
        source: trophoblastic-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-prostatectomy---secondary:
    run: ccu002_01-cancer-prostatectomy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule197
      potentialCases:
        id: potentialCases
        source: mucoepidermoid-ccu002_01-cancer---secondary/output
  spermatic-ccu002_01-cancer---secondary:
    run: spermatic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule198
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-prostatectomy---secondary/output
  ccu002_01-cancer-sideroblast---secondary:
    run: ccu002_01-cancer-sideroblast---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule199
      potentialCases:
        id: potentialCases
        source: spermatic-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-hilus---secondary:
    run: ccu002_01-cancer-hilus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule200
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-sideroblast---secondary/output
  sublingual-ccu002_01-cancer---secondary:
    run: sublingual-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule201
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-hilus---secondary/output
  ccu002_01-cancer-spread---secondary:
    run: ccu002_01-cancer-spread---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule202
      potentialCases:
        id: potentialCases
        source: sublingual-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-combined---secondary:
    run: ccu002_01-cancer-combined---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule203
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-spread---secondary/output
  ccu002_01-cancer-richter's---secondary:
    run: ccu002_01-cancer-richter's---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule204
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-combined---secondary/output
  ccu002_01-cancer-palate---secondary:
    run: ccu002_01-cancer-palate---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule205
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-richter's---secondary/output
  ccu002_01-cancer-madenoma---secondary:
    run: ccu002_01-cancer-madenoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule206
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-palate---secondary/output
  ccu002_01-cancer-polyp---secondary:
    run: ccu002_01-cancer-polyp---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule207
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-madenoma---secondary/output
  ccu002_01-cancer-chloroma---secondary:
    run: ccu002_01-cancer-chloroma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule208
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-polyp---secondary/output
  ccu002_01-cancer-tumor---secondary:
    run: ccu002_01-cancer-tumor---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule209
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-chloroma---secondary/output
  ccu002_01-cancer-commissure---secondary:
    run: ccu002_01-cancer-commissure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule210
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-tumor---secondary/output
  ccu002_01-cancer-nonsmall---secondary:
    run: ccu002_01-cancer-nonsmall---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule211
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-commissure---secondary/output
  ccu002_01-cancer-vesicle---secondary:
    run: ccu002_01-cancer-vesicle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule212
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-nonsmall---secondary/output
  ccu002_01-cancer-remission---secondary:
    run: ccu002_01-cancer-remission---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule213
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-vesicle---secondary/output
  ccu002_01-cancer-reticulosarcoma---secondary:
    run: ccu002_01-cancer-reticulosarcoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule214
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-remission---secondary/output
  ccu002_01-cancer-hemangiopericytoma---secondary:
    run: ccu002_01-cancer-hemangiopericytoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule215
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-reticulosarcoma---secondary/output
  lateral-ccu002_01-cancer---secondary:
    run: lateral-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule216
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-hemangiopericytoma---secondary/output
  ccu002_01-cancer-shoulder---secondary:
    run: ccu002_01-cancer-shoulder---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule217
      potentialCases:
        id: potentialCases
        source: lateral-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-antrum---secondary:
    run: ccu002_01-cancer-antrum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule218
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-shoulder---secondary/output
  ccu002_01-cancer-midline---secondary:
    run: ccu002_01-cancer-midline---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule219
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-antrum---secondary/output
  ccu002_01-cancer-ciliary---secondary:
    run: ccu002_01-cancer-ciliary---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule220
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-midline---secondary/output
  ccu002_01-cancer-protuberan---secondary:
    run: ccu002_01-cancer-protuberan---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule221
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-ciliary---secondary/output
  ethmoid-ccu002_01-cancer---secondary:
    run: ethmoid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule222
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-protuberan---secondary/output
  ccu002_01-cancer-septum---secondary:
    run: ccu002_01-cancer-septum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule223
      potentialCases:
        id: potentialCases
        source: ethmoid-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-myelosclerosis---secondary:
    run: ccu002_01-cancer-myelosclerosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule224
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-septum---secondary/output
  ccu002_01-cancer-process---secondary:
    run: ccu002_01-cancer-process---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule225
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-myelosclerosis---secondary/output
  ccu002_01-cancer-multiforme---secondary:
    run: ccu002_01-cancer-multiforme---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule226
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-process---secondary/output
  medial-ccu002_01-cancer---secondary:
    run: medial-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule227
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-multiforme---secondary/output
  ccu002_01-cancer-vault---secondary:
    run: ccu002_01-cancer-vault---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule228
      potentialCases:
        id: potentialCases
        source: medial-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-philadelphia---secondary:
    run: ccu002_01-cancer-philadelphia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule229
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-vault---secondary/output
  intravenous-ccu002_01-cancer---secondary:
    run: intravenous-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule230
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-philadelphia---secondary/output
  ccu002_01-cancer-sezary---secondary:
    run: ccu002_01-cancer-sezary---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule231
      potentialCases:
        id: potentialCases
        source: intravenous-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-olfactory---secondary:
    run: ccu002_01-cancer-olfactory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule232
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-sezary---secondary/output
  arachnoid-ccu002_01-cancer---secondary:
    run: arachnoid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule233
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-olfactory---secondary/output
  ccu002_01-cancer-tzone---secondary:
    run: ccu002_01-cancer-tzone---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule234
      potentialCases:
        id: potentialCases
        source: arachnoid-ccu002_01-cancer---secondary/output
  bronchopulmonary-ccu002_01-cancer---secondary:
    run: bronchopulmonary-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule235
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-tzone---secondary/output
  ccu002_01-cancer-invitation---secondary:
    run: ccu002_01-cancer-invitation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule236
      potentialCases:
        id: potentialCases
        source: bronchopulmonary-ccu002_01-cancer---secondary/output
  histiocytic-ccu002_01-cancer---secondary:
    run: histiocytic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule237
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-invitation---secondary/output
  ccu002_01-cancer-supraglotti---secondary:
    run: ccu002_01-cancer-supraglotti---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule238
      potentialCases:
        id: potentialCases
        source: histiocytic-ccu002_01-cancer---secondary/output
  peritoneal-ccu002_01-cancer---secondary:
    run: peritoneal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule239
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-supraglotti---secondary/output
  ccu002_01-cancer-vallecula---secondary:
    run: ccu002_01-cancer-vallecula---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule240
      potentialCases:
        id: potentialCases
        source: peritoneal-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-sinus---secondary:
    run: ccu002_01-cancer-sinus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule241
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-vallecula---secondary/output
  ccu002_01-cancer-retina---secondary:
    run: ccu002_01-cancer-retina---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule242
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-sinus---secondary/output
  juvenile-ccu002_01-cancer---secondary:
    run: juvenile-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule243
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-retina---secondary/output
  ccu002_01-cancer-hormone---secondary:
    run: ccu002_01-cancer-hormone---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule244
      potentialCases:
        id: potentialCases
        source: juvenile-ccu002_01-cancer---secondary/output
  pelvic-ccu002_01-cancer---secondary:
    run: pelvic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule245
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-hormone---secondary/output
  ccu002_01-cancer-bones---secondary:
    run: ccu002_01-cancer-bones---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule246
      potentialCases:
        id: potentialCases
        source: pelvic-ccu002_01-cancer---secondary/output
  perianal-ccu002_01-cancer---secondary:
    run: perianal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule247
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-bones---secondary/output
  ccu002_01-cancer-uvula---secondary:
    run: ccu002_01-cancer-uvula---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule248
      potentialCases:
        id: potentialCases
        source: perianal-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-hypothalamu---secondary:
    run: ccu002_01-cancer-hypothalamu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule249
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-uvula---secondary/output
  ccu002_01-cancer-uterus---secondary:
    run: ccu002_01-cancer-uterus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule250
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-hypothalamu---secondary/output
  pineal-ccu002_01-cancer---secondary:
    run: pineal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule251
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-uterus---secondary/output
  ccu002_01-cancer-breast---secondary:
    run: ccu002_01-cancer-breast---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule252
      potentialCases:
        id: potentialCases
        source: pineal-ccu002_01-cancer---secondary/output
  sphenoid-ccu002_01-cancer---secondary:
    run: sphenoid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule253
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-breast---secondary/output
  submandibular-ccu002_01-cancer---secondary:
    run: submandibular-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule254
      potentialCases:
        id: potentialCases
        source: sphenoid-ccu002_01-cancer---secondary/output
  supraclavicular-ccu002_01-cancer---secondary:
    run: supraclavicular-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule255
      potentialCases:
        id: potentialCases
        source: submandibular-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-disseminated---secondary:
    run: ccu002_01-cancer-disseminated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule256
      potentialCases:
        id: potentialCases
        source: supraclavicular-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-vaquez's---secondary:
    run: ccu002_01-cancer-vaquez's---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule257
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-disseminated---secondary/output
  ccu002_01-cancer-conjunctiva---secondary:
    run: ccu002_01-cancer-conjunctiva---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule258
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-vaquez's---secondary/output
  ccu002_01-cancer-fibula---secondary:
    run: ccu002_01-cancer-fibula---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule259
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-conjunctiva---secondary/output
  junctional-ccu002_01-cancer---secondary:
    run: junctional-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule260
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-fibula---secondary/output
  ccu002_01-cancer-parenchyma---secondary:
    run: ccu002_01-cancer-parenchyma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule261
      potentialCases:
        id: potentialCases
        source: junctional-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-bowel---secondary:
    run: ccu002_01-cancer-bowel---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule262
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-parenchyma---secondary/output
  ccu002_01-cancer-jugulare---secondary:
    run: ccu002_01-cancer-jugulare---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule263
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-bowel---secondary/output
  digestive-ccu002_01-cancer---secondary:
    run: digestive-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule264
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-jugulare---secondary/output
  ccu002_01-cancer-urachu---secondary:
    run: ccu002_01-cancer-urachu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule265
      potentialCases:
        id: potentialCases
        source: digestive-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-scrotum---secondary:
    run: ccu002_01-cancer-scrotum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule266
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-urachu---secondary/output
  ccu002_01-cancer-myelofibrosis---secondary:
    run: ccu002_01-cancer-myelofibrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule267
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-scrotum---secondary/output
  paraurethral-ccu002_01-cancer---secondary:
    run: paraurethral-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule268
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-myelofibrosis---secondary/output
  ccu002_01-cancer-pigmented---secondary:
    run: ccu002_01-cancer-pigmented---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule269
      potentialCases:
        id: potentialCases
        source: paraurethral-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-vestibule---secondary:
    run: ccu002_01-cancer-vestibule---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule270
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-pigmented---secondary/output
  ccu002_01-cancer-epididymi---secondary:
    run: ccu002_01-cancer-epididymi---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule271
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-vestibule---secondary/output
  ccu002_01-cancer-clitoris---secondary:
    run: ccu002_01-cancer-clitoris---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule272
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-epididymi---secondary/output
  sigmoid-ccu002_01-cancer---secondary:
    run: sigmoid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule273
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-clitoris---secondary/output
  ccu002_01-cancer-retroperitoneum---secondary:
    run: ccu002_01-cancer-retroperitoneum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule274
      potentialCases:
        id: potentialCases
        source: sigmoid-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-meninge---secondary:
    run: ccu002_01-cancer-meninge---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule275
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-retroperitoneum---secondary/output
  uncertain-ccu002_01-cancer---secondary:
    run: uncertain-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule276
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-meninge---secondary/output
  ccu002_01-cancer-thumb---secondary:
    run: ccu002_01-cancer-thumb---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule277
      potentialCases:
        id: potentialCases
        source: uncertain-ccu002_01-cancer---secondary/output
  cricoid-ccu002_01-cancer---secondary:
    run: cricoid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule278
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-thumb---secondary/output
  ccu002_01-cancer-mseminoma---secondary:
    run: ccu002_01-cancer-mseminoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule279
      potentialCases:
        id: potentialCases
        source: cricoid-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-adnexal---secondary:
    run: ccu002_01-cancer-adnexal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule280
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mseminoma---secondary/output
  ccu002_01-cancer-marrow---secondary:
    run: ccu002_01-cancer-marrow---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule281
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-adnexal---secondary/output
  ccu002_01-cancer-perineum---secondary:
    run: ccu002_01-cancer-perineum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule282
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-marrow---secondary/output
  ccu002_01-cancer-fracture---secondary:
    run: ccu002_01-cancer-fracture---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule283
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-perineum---secondary/output
  ccu002_01-cancer-humerus---secondary:
    run: ccu002_01-cancer-humerus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule284
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-fracture---secondary/output
  ccu002_01-cancer-refractory---secondary:
    run: ccu002_01-cancer-refractory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule285
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-humerus---secondary/output
  ccu002_01-cancer-illdefined---secondary:
    run: ccu002_01-cancer-illdefined---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule286
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-refractory---secondary/output
  ccu002_01-cancer-crisis---secondary:
    run: ccu002_01-cancer-crisis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule287
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-illdefined---secondary/output
  haemopoietic-ccu002_01-cancer---secondary:
    run: haemopoietic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule288
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-crisis---secondary/output
  ccu002_01-cancer-arising---secondary:
    run: ccu002_01-cancer-arising---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule289
      potentialCases:
        id: potentialCases
        source: haemopoietic-ccu002_01-cancer---secondary/output
  tympanic-ccu002_01-cancer---secondary:
    run: tympanic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule290
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-arising---secondary/output
  ccu002_01-cancer-radius---secondary:
    run: ccu002_01-cancer-radius---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule291
      potentialCases:
        id: potentialCases
        source: tympanic-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-mglioma---secondary:
    run: ccu002_01-cancer-mglioma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule292
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-radius---secondary/output
  solitary-ccu002_01-cancer---secondary:
    run: solitary-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule293
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mglioma---secondary/output
  ccu002_01-cancer-joint---secondary:
    run: ccu002_01-cancer-joint---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule294
      potentialCases:
        id: potentialCases
        source: solitary-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-groin---secondary:
    run: ccu002_01-cancer-groin---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule295
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-joint---secondary/output
  costal-ccu002_01-cancer---secondary:
    run: costal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule296
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-groin---secondary/output
  invasive-ccu002_01-cancer---secondary:
    run: invasive-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule297
      potentialCases:
        id: potentialCases
        source: costal-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-hepatoblastoma---secondary:
    run: ccu002_01-cancer-hepatoblastoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule298
      potentialCases:
        id: potentialCases
        source: invasive-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-frenulum---secondary:
    run: ccu002_01-cancer-frenulum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule299
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-hepatoblastoma---secondary/output
  osseous-ccu002_01-cancer---secondary:
    run: osseous-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule300
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-frenulum---secondary/output
  ccu002_01-cancer-ileum---secondary:
    run: ccu002_01-cancer-ileum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule301
      potentialCases:
        id: potentialCases
        source: osseous-ccu002_01-cancer---secondary/output
  multiple-ccu002_01-cancer---secondary:
    run: multiple-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule302
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-ileum---secondary/output
  cloacogenic-ccu002_01-cancer---secondary:
    run: cloacogenic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule303
      potentialCases:
        id: potentialCases
        source: multiple-ccu002_01-cancer---secondary/output
  angioimmunoblastic-ccu002_01-cancer---secondary:
    run: angioimmunoblastic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule304
      potentialCases:
        id: potentialCases
        source: cloacogenic-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-scalp---secondary:
    run: ccu002_01-cancer-scalp---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule305
      potentialCases:
        id: potentialCases
        source: angioimmunoblastic-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-temple---secondary:
    run: ccu002_01-cancer-temple---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule306
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-scalp---secondary/output
  labial-ccu002_01-cancer---secondary:
    run: labial-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule307
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-temple---secondary/output
  gestational-ccu002_01-cancer---secondary:
    run: gestational-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule308
      potentialCases:
        id: potentialCases
        source: labial-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-meningioma---secondary:
    run: ccu002_01-cancer-meningioma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule309
      potentialCases:
        id: potentialCases
        source: gestational-ccu002_01-cancer---secondary/output
  retromolar-ccu002_01-cancer---secondary:
    run: retromolar-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule310
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-meningioma---secondary/output
  ccu002_01-cancer-cerebellum---secondary:
    run: ccu002_01-cancer-cerebellum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule311
      potentialCases:
        id: potentialCases
        source: retromolar-ccu002_01-cancer---secondary/output
  fibrous-ccu002_01-cancer---secondary:
    run: fibrous-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule312
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-cerebellum---secondary/output
  ccu002_01-cancer-parametrium---secondary:
    run: ccu002_01-cancer-parametrium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule313
      potentialCases:
        id: potentialCases
        source: fibrous-ccu002_01-cancer---secondary/output
  lymphoplasmacytic-ccu002_01-cancer---secondary:
    run: lymphoplasmacytic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule314
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-parametrium---secondary/output
  neutrophilic-ccu002_01-cancer---secondary:
    run: neutrophilic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule315
      potentialCases:
        id: potentialCases
        source: lymphoplasmacytic-ccu002_01-cancer---secondary/output
  zygomatic-ccu002_01-cancer---secondary:
    run: zygomatic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule316
      potentialCases:
        id: potentialCases
        source: neutrophilic-ccu002_01-cancer---secondary/output
  buccal-ccu002_01-cancer---secondary:
    run: buccal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule317
      potentialCases:
        id: potentialCases
        source: zygomatic-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-abdoman---secondary:
    run: ccu002_01-cancer-abdoman---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule318
      potentialCases:
        id: potentialCases
        source: buccal-ccu002_01-cancer---secondary/output
  metastatic-ccu002_01-cancer---secondary:
    run: metastatic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule319
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-abdoman---secondary/output
  ccu002_01-cancer-mosteosarcoma---secondary:
    run: ccu002_01-cancer-mosteosarcoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule320
      potentialCases:
        id: potentialCases
        source: metastatic-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-thymu---secondary:
    run: ccu002_01-cancer-thymu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule321
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mosteosarcoma---secondary/output
  ccu002_01-cancer-muscle---secondary:
    run: ccu002_01-cancer-muscle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule322
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-thymu---secondary/output
  ccu002_01-cancer-corpus---secondary:
    run: ccu002_01-cancer-corpus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule323
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-muscle---secondary/output
  hepatic-ccu002_01-cancer---secondary:
    run: hepatic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule324
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-corpus---secondary/output
  atypical-ccu002_01-cancer---secondary:
    run: atypical-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule325
      potentialCases:
        id: potentialCases
        source: hepatic-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-callosum---secondary:
    run: ccu002_01-cancer-callosum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule326
      potentialCases:
        id: potentialCases
        source: atypical-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-handschuller-christian---secondary:
    run: ccu002_01-cancer-handschuller-christian---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule327
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-callosum---secondary/output
  ccu002_01-cancer-mhodgkin---secondary:
    run: ccu002_01-cancer-mhodgkin---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule328
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-handschuller-christian---secondary/output
  ccu002_01-cancer-plasma---secondary:
    run: ccu002_01-cancer-plasma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule329
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mhodgkin---secondary/output
  perinephric-ccu002_01-cancer---secondary:
    run: perinephric-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule330
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-plasma---secondary/output
  abdominal-ccu002_01-cancer---secondary:
    run: abdominal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule331
      potentialCases:
        id: potentialCases
        source: perinephric-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-changes---secondary:
    run: ccu002_01-cancer-changes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule332
      potentialCases:
        id: potentialCases
        source: abdominal-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-equina---secondary:
    run: ccu002_01-cancer-equina---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule333
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-changes---secondary/output
  ccu002_01-cancer-carina---secondary:
    run: ccu002_01-cancer-carina---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule334
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-equina---secondary/output
  ccu002_01-cancer-adamantinoma---secondary:
    run: ccu002_01-cancer-adamantinoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule335
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-carina---secondary/output
  arytenoid-ccu002_01-cancer---secondary:
    run: arytenoid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule336
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-adamantinoma---secondary/output
  scaphoid-ccu002_01-cancer---secondary:
    run: scaphoid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule337
      potentialCases:
        id: potentialCases
        source: arytenoid-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-flank---secondary:
    run: ccu002_01-cancer-flank---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule338
      potentialCases:
        id: potentialCases
        source: scaphoid-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-phaeochromocytoma---secondary:
    run: ccu002_01-cancer-phaeochromocytoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule339
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-flank---secondary/output
  ccu002_01-cancer-appendix---secondary:
    run: ccu002_01-cancer-appendix---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule340
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-phaeochromocytoma---secondary/output
  ccu002_01-cancer-diverticulum---secondary:
    run: ccu002_01-cancer-diverticulum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule341
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-appendix---secondary/output
  ccu002_01-cancer-surface---secondary:
    run: ccu002_01-cancer-surface---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule342
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-diverticulum---secondary/output
  proper-ccu002_01-cancer---secondary:
    run: proper-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule343
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-surface---secondary/output
  ccu002_01-cancer-descending---secondary:
    run: ccu002_01-cancer-descending---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule344
      potentialCases:
        id: potentialCases
        source: proper-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-chondrosarcoma---secondary:
    run: ccu002_01-cancer-chondrosarcoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule345
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-descending---secondary/output
  ccu002_01-cancer-cornea---secondary:
    run: ccu002_01-cancer-cornea---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule346
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-chondrosarcoma---secondary/output
  mparathyroid-ccu002_01-cancer---secondary:
    run: mparathyroid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule347
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-cornea---secondary/output
  granular-ccu002_01-cancer---secondary:
    run: granular-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule348
      potentialCases:
        id: potentialCases
        source: mparathyroid-ccu002_01-cancer---secondary/output
  vocal-ccu002_01-cancer---secondary:
    run: vocal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule349
      potentialCases:
        id: potentialCases
        source: granular-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-transverse---secondary:
    run: ccu002_01-cancer-transverse---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule350
      potentialCases:
        id: potentialCases
        source: vocal-ccu002_01-cancer---secondary/output
  popliteal-ccu002_01-cancer---secondary:
    run: popliteal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule351
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-transverse---secondary/output
  villous-ccu002_01-cancer---secondary:
    run: villous-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule352
      potentialCases:
        id: potentialCases
        source: popliteal-ccu002_01-cancer---secondary/output
  epithelial-ccu002_01-cancer---secondary:
    run: epithelial-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule353
      potentialCases:
        id: potentialCases
        source: villous-ccu002_01-cancer---secondary/output
  mmyxoid-ccu002_01-cancer---secondary:
    run: mmyxoid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule354
      potentialCases:
        id: potentialCases
        source: epithelial-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-caecum---secondary:
    run: ccu002_01-cancer-caecum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule355
      potentialCases:
        id: potentialCases
        source: mmyxoid-ccu002_01-cancer---secondary/output
  fallopian-ccu002_01-cancer---secondary:
    run: fallopian-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule356
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-caecum---secondary/output
  ccu002_01-cancer-turbinate---secondary:
    run: ccu002_01-cancer-turbinate---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule357
      potentialCases:
        id: potentialCases
        source: fallopian-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-vater---secondary:
    run: ccu002_01-cancer-vater---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule358
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-turbinate---secondary/output
  optic-ccu002_01-cancer---secondary:
    run: optic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule359
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-vater---secondary/output
  monocytoid-ccu002_01-cancer---secondary:
    run: monocytoid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule360
      potentialCases:
        id: potentialCases
        source: optic-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-endocardium---secondary:
    run: ccu002_01-cancer-endocardium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule361
      potentialCases:
        id: potentialCases
        source: monocytoid-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-auricle---secondary:
    run: ccu002_01-cancer-auricle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule362
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-endocardium---secondary/output
  ccu002_01-cancer-ankle---secondary:
    run: ccu002_01-cancer-ankle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule363
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-auricle---secondary/output
  ccu002_01-cancer-phase---secondary:
    run: ccu002_01-cancer-phase---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule364
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-ankle---secondary/output
  ccu002_01-cancer-heart---secondary:
    run: ccu002_01-cancer-heart---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule365
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-phase---secondary/output
  ccu002_01-cancer-trunk---secondary:
    run: ccu002_01-cancer-trunk---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule366
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-heart---secondary/output
  ccu002_01-cancer-vomer---secondary:
    run: ccu002_01-cancer-vomer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule367
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-trunk---secondary/output
  ccu002_01-cancer-quality---secondary:
    run: ccu002_01-cancer-quality---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule368
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-vomer---secondary/output
  ccu002_01-cancer-screening---secondary:
    run: ccu002_01-cancer-screening---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule369
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-quality---secondary/output
  ccu002_01-cancer-plexu---secondary:
    run: ccu002_01-cancer-plexu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule370
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-screening---secondary/output
  eyelid-ccu002_01-cancer---secondary:
    run: eyelid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule371
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-plexu---secondary/output
  parenteral-ccu002_01-cancer---secondary:
    run: parenteral-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule372
      potentialCases:
        id: potentialCases
        source: eyelid-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-tarsus---secondary:
    run: ccu002_01-cancer-tarsus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule373
      potentialCases:
        id: potentialCases
        source: parenteral-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-pyriform---secondary:
    run: ccu002_01-cancer-pyriform---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule374
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-tarsus---secondary/output
  ccu002_01-cancer-umbilicu---secondary:
    run: ccu002_01-cancer-umbilicu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule375
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-pyriform---secondary/output
  immunoproliferative-ccu002_01-cancer---secondary:
    run: immunoproliferative-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule376
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-umbilicu---secondary/output
  ccu002_01-cancer-ascite---secondary:
    run: ccu002_01-cancer-ascite---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule377
      potentialCases:
        id: potentialCases
        source: immunoproliferative-ccu002_01-cancer---secondary/output
  malar-ccu002_01-cancer---secondary:
    run: malar-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule378
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-ascite---secondary/output
  ccu002_01-cancer-ilium---secondary:
    run: ccu002_01-cancer-ilium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule379
      potentialCases:
        id: potentialCases
        source: malar-ccu002_01-cancer---secondary/output
  cranial-ccu002_01-cancer---secondary:
    run: cranial-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule380
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-ilium---secondary/output
  ccu002_01-cancer-anaemia---secondary:
    run: ccu002_01-cancer-anaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule381
      potentialCases:
        id: potentialCases
        source: cranial-ccu002_01-cancer---secondary/output
  radical-ccu002_01-cancer---secondary:
    run: radical-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule382
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-anaemia---secondary/output
  ccu002_01-cancer-gleason---secondary:
    run: ccu002_01-cancer-gleason---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule383
      potentialCases:
        id: potentialCases
        source: radical-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-track---secondary:
    run: ccu002_01-cancer-track---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule384
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-gleason---secondary/output
  ccu002_01-cancer-sarcoma---secondary:
    run: ccu002_01-cancer-sarcoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule385
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-track---secondary/output
  ccu002_01-cancer-mmalig---secondary:
    run: ccu002_01-cancer-mmalig---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule386
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-sarcoma---secondary/output
  ccu002_01-cancer-madenosarcoma---secondary:
    run: ccu002_01-cancer-madenosarcoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule387
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mmalig---secondary/output
  ccu002_01-cancer-mnaevi---secondary:
    run: ccu002_01-cancer-mnaevi---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule388
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-madenosarcoma---secondary/output
  ccu002_01-cancer-bronchu---secondary:
    run: ccu002_01-cancer-bronchu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule389
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mnaevi---secondary/output
  msuperficial-ccu002_01-cancer---secondary:
    run: msuperficial-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule390
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-bronchu---secondary/output
  moxyphilic-ccu002_01-cancer---secondary:
    run: moxyphilic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule391
      potentialCases:
        id: potentialCases
        source: msuperficial-ccu002_01-cancer---secondary/output
  cerebral-ccu002_01-cancer---secondary:
    run: cerebral-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule392
      potentialCases:
        id: potentialCases
        source: moxyphilic-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-mcarcinoma---secondary:
    run: ccu002_01-cancer-mcarcinoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule393
      potentialCases:
        id: potentialCases
        source: cerebral-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-treatment---secondary:
    run: ccu002_01-cancer-treatment---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule394
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mcarcinoma---secondary/output
  referral-ccu002_01-cancer---secondary:
    run: referral-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule395
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-treatment---secondary/output
  ccu002_01-cancer-eyebrow---secondary:
    run: ccu002_01-cancer-eyebrow---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule396
      potentialCases:
        id: potentialCases
        source: referral-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-overlap---secondary:
    run: ccu002_01-cancer-overlap---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule397
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-eyebrow---secondary/output
  ccu002_01-cancer-mapocrine---secondary:
    run: ccu002_01-cancer-mapocrine---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule398
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-overlap---secondary/output
  ccu002_01-cancer-canthu---secondary:
    run: ccu002_01-cancer-canthu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule399
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mapocrine---secondary/output
  faucial-ccu002_01-cancer---secondary:
    run: faucial-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule400
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-canthu---secondary/output
  ccu002_01-cancer-suspected---secondary:
    run: ccu002_01-cancer-suspected---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule401
      potentialCases:
        id: potentialCases
        source: faucial-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-excision---secondary:
    run: ccu002_01-cancer-excision---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule402
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-suspected---secondary/output
  mfollicular-ccu002_01-cancer---secondary:
    run: mfollicular-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule403
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-excision---secondary/output
  ccu002_01-cancer-metastasis---secondary:
    run: ccu002_01-cancer-metastasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule404
      potentialCases:
        id: potentialCases
        source: mfollicular-ccu002_01-cancer---secondary/output
  leukemic-ccu002_01-cancer---secondary:
    run: leukemic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule405
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-metastasis---secondary/output
  mchronic-ccu002_01-cancer---secondary:
    run: mchronic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule406
      potentialCases:
        id: potentialCases
        source: leukemic-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-macute---secondary:
    run: ccu002_01-cancer-macute---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule407
      potentialCases:
        id: potentialCases
        source: mchronic-ccu002_01-cancer---secondary/output
  external-ccu002_01-cancer---secondary:
    run: external-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule408
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-macute---secondary/output
  ccu002_01-cancer-cholangiocarcinoma---secondary:
    run: ccu002_01-cancer-cholangiocarcinoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule409
      potentialCases:
        id: potentialCases
        source: external-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-carcinoma---secondary:
    run: ccu002_01-cancer-carcinoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule410
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-cholangiocarcinoma---secondary/output
  ccu002_01-cancer-fusiform---secondary:
    run: ccu002_01-cancer-fusiform---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule411
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-carcinoma---secondary/output
  biphasic-ccu002_01-cancer---secondary:
    run: biphasic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule412
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-fusiform---secondary/output
  cortical-ccu002_01-cancer---secondary:
    run: cortical-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule413
      potentialCases:
        id: potentialCases
        source: biphasic-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-oblongata---secondary:
    run: ccu002_01-cancer-oblongata---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule414
      potentialCases:
        id: potentialCases
        source: cortical-ccu002_01-cancer---secondary/output
  mtubular-ccu002_01-cancer---secondary:
    run: mtubular-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule415
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-oblongata---secondary/output
  ccu002_01-cancer-mgastrinoma---secondary:
    run: ccu002_01-cancer-mgastrinoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule416
      potentialCases:
        id: potentialCases
        source: mtubular-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-mpaget---secondary:
    run: ccu002_01-cancer-mpaget---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule417
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mgastrinoma---secondary/output
  ccu002_01-cancer-appendage---secondary:
    run: ccu002_01-cancer-appendage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule418
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mpaget---secondary/output
  ccu002_01-cancer-nonkeratinising---secondary:
    run: ccu002_01-cancer-nonkeratinising---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule419
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-appendage---secondary/output
  lymphoepithelioid-ccu002_01-cancer---secondary:
    run: lymphoepithelioid-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule420
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-nonkeratinising---secondary/output
  primary-ccu002_01-cancer---secondary:
    run: primary-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule421
      potentialCases:
        id: potentialCases
        source: lymphoepithelioid-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-macroglobulinaemia---secondary:
    run: ccu002_01-cancer-macroglobulinaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule422
      potentialCases:
        id: potentialCases
        source: primary-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-mleukaemia---secondary:
    run: ccu002_01-cancer-mleukaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule423
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-macroglobulinaemia---secondary/output
  ccu002_01-cancer-cheek---secondary:
    run: ccu002_01-cancer-cheek---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule424
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mleukaemia---secondary/output
  myeloproliferative-ccu002_01-cancer---secondary:
    run: myeloproliferative-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule425
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-cheek---secondary/output
  personal-ccu002_01-cancer---secondary:
    run: personal-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule426
      potentialCases:
        id: potentialCases
        source: myeloproliferative-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-mmisc---secondary:
    run: ccu002_01-cancer-mmisc---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule427
      potentialCases:
        id: potentialCases
        source: personal-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-melanoma---secondary:
    run: ccu002_01-cancer-melanoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule428
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-mmisc---secondary/output
  gynaecological-ccu002_01-cancer---secondary:
    run: gynaecological-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule429
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-melanoma---secondary/output
  ccu002_01-cancer-cancers---secondary:
    run: ccu002_01-cancer-cancers---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule430
      potentialCases:
        id: potentialCases
        source: gynaecological-ccu002_01-cancer---secondary/output
  nodular-ccu002_01-cancer---secondary:
    run: nodular-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule431
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-cancers---secondary/output
  ccu002_01-cancer-hypernephroma---secondary:
    run: ccu002_01-cancer-hypernephroma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule432
      potentialCases:
        id: potentialCases
        source: nodular-ccu002_01-cancer---secondary/output
  ccu002_01-cancer-lymphoma---secondary:
    run: ccu002_01-cancer-lymphoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule433
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-hypernephroma---secondary/output
  thoracic-ccu002_01-cancer---secondary:
    run: thoracic-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule434
      potentialCases:
        id: potentialCases
        source: ccu002_01-cancer-lymphoma---secondary/output
  malveolar-ccu002_01-cancer---secondary:
    run: malveolar-ccu002_01-cancer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule435
      potentialCases:
        id: potentialCases
        source: thoracic-ccu002_01-cancer---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule436
      potentialCases:
        id: potentialCases
        source: malveolar-ccu002_01-cancer---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
  inputModule135:
    id: inputModule135
    doc: Python implementation unit
    type: File
  inputModule136:
    id: inputModule136
    doc: Python implementation unit
    type: File
  inputModule137:
    id: inputModule137
    doc: Python implementation unit
    type: File
  inputModule138:
    id: inputModule138
    doc: Python implementation unit
    type: File
  inputModule139:
    id: inputModule139
    doc: Python implementation unit
    type: File
  inputModule140:
    id: inputModule140
    doc: Python implementation unit
    type: File
  inputModule141:
    id: inputModule141
    doc: Python implementation unit
    type: File
  inputModule142:
    id: inputModule142
    doc: Python implementation unit
    type: File
  inputModule143:
    id: inputModule143
    doc: Python implementation unit
    type: File
  inputModule144:
    id: inputModule144
    doc: Python implementation unit
    type: File
  inputModule145:
    id: inputModule145
    doc: Python implementation unit
    type: File
  inputModule146:
    id: inputModule146
    doc: Python implementation unit
    type: File
  inputModule147:
    id: inputModule147
    doc: Python implementation unit
    type: File
  inputModule148:
    id: inputModule148
    doc: Python implementation unit
    type: File
  inputModule149:
    id: inputModule149
    doc: Python implementation unit
    type: File
  inputModule150:
    id: inputModule150
    doc: Python implementation unit
    type: File
  inputModule151:
    id: inputModule151
    doc: Python implementation unit
    type: File
  inputModule152:
    id: inputModule152
    doc: Python implementation unit
    type: File
  inputModule153:
    id: inputModule153
    doc: Python implementation unit
    type: File
  inputModule154:
    id: inputModule154
    doc: Python implementation unit
    type: File
  inputModule155:
    id: inputModule155
    doc: Python implementation unit
    type: File
  inputModule156:
    id: inputModule156
    doc: Python implementation unit
    type: File
  inputModule157:
    id: inputModule157
    doc: Python implementation unit
    type: File
  inputModule158:
    id: inputModule158
    doc: Python implementation unit
    type: File
  inputModule159:
    id: inputModule159
    doc: Python implementation unit
    type: File
  inputModule160:
    id: inputModule160
    doc: Python implementation unit
    type: File
  inputModule161:
    id: inputModule161
    doc: Python implementation unit
    type: File
  inputModule162:
    id: inputModule162
    doc: Python implementation unit
    type: File
  inputModule163:
    id: inputModule163
    doc: Python implementation unit
    type: File
  inputModule164:
    id: inputModule164
    doc: Python implementation unit
    type: File
  inputModule165:
    id: inputModule165
    doc: Python implementation unit
    type: File
  inputModule166:
    id: inputModule166
    doc: Python implementation unit
    type: File
  inputModule167:
    id: inputModule167
    doc: Python implementation unit
    type: File
  inputModule168:
    id: inputModule168
    doc: Python implementation unit
    type: File
  inputModule169:
    id: inputModule169
    doc: Python implementation unit
    type: File
  inputModule170:
    id: inputModule170
    doc: Python implementation unit
    type: File
  inputModule171:
    id: inputModule171
    doc: Python implementation unit
    type: File
  inputModule172:
    id: inputModule172
    doc: Python implementation unit
    type: File
  inputModule173:
    id: inputModule173
    doc: Python implementation unit
    type: File
  inputModule174:
    id: inputModule174
    doc: Python implementation unit
    type: File
  inputModule175:
    id: inputModule175
    doc: Python implementation unit
    type: File
  inputModule176:
    id: inputModule176
    doc: Python implementation unit
    type: File
  inputModule177:
    id: inputModule177
    doc: Python implementation unit
    type: File
  inputModule178:
    id: inputModule178
    doc: Python implementation unit
    type: File
  inputModule179:
    id: inputModule179
    doc: Python implementation unit
    type: File
  inputModule180:
    id: inputModule180
    doc: Python implementation unit
    type: File
  inputModule181:
    id: inputModule181
    doc: Python implementation unit
    type: File
  inputModule182:
    id: inputModule182
    doc: Python implementation unit
    type: File
  inputModule183:
    id: inputModule183
    doc: Python implementation unit
    type: File
  inputModule184:
    id: inputModule184
    doc: Python implementation unit
    type: File
  inputModule185:
    id: inputModule185
    doc: Python implementation unit
    type: File
  inputModule186:
    id: inputModule186
    doc: Python implementation unit
    type: File
  inputModule187:
    id: inputModule187
    doc: Python implementation unit
    type: File
  inputModule188:
    id: inputModule188
    doc: Python implementation unit
    type: File
  inputModule189:
    id: inputModule189
    doc: Python implementation unit
    type: File
  inputModule190:
    id: inputModule190
    doc: Python implementation unit
    type: File
  inputModule191:
    id: inputModule191
    doc: Python implementation unit
    type: File
  inputModule192:
    id: inputModule192
    doc: Python implementation unit
    type: File
  inputModule193:
    id: inputModule193
    doc: Python implementation unit
    type: File
  inputModule194:
    id: inputModule194
    doc: Python implementation unit
    type: File
  inputModule195:
    id: inputModule195
    doc: Python implementation unit
    type: File
  inputModule196:
    id: inputModule196
    doc: Python implementation unit
    type: File
  inputModule197:
    id: inputModule197
    doc: Python implementation unit
    type: File
  inputModule198:
    id: inputModule198
    doc: Python implementation unit
    type: File
  inputModule199:
    id: inputModule199
    doc: Python implementation unit
    type: File
  inputModule200:
    id: inputModule200
    doc: Python implementation unit
    type: File
  inputModule201:
    id: inputModule201
    doc: Python implementation unit
    type: File
  inputModule202:
    id: inputModule202
    doc: Python implementation unit
    type: File
  inputModule203:
    id: inputModule203
    doc: Python implementation unit
    type: File
  inputModule204:
    id: inputModule204
    doc: Python implementation unit
    type: File
  inputModule205:
    id: inputModule205
    doc: Python implementation unit
    type: File
  inputModule206:
    id: inputModule206
    doc: Python implementation unit
    type: File
  inputModule207:
    id: inputModule207
    doc: Python implementation unit
    type: File
  inputModule208:
    id: inputModule208
    doc: Python implementation unit
    type: File
  inputModule209:
    id: inputModule209
    doc: Python implementation unit
    type: File
  inputModule210:
    id: inputModule210
    doc: Python implementation unit
    type: File
  inputModule211:
    id: inputModule211
    doc: Python implementation unit
    type: File
  inputModule212:
    id: inputModule212
    doc: Python implementation unit
    type: File
  inputModule213:
    id: inputModule213
    doc: Python implementation unit
    type: File
  inputModule214:
    id: inputModule214
    doc: Python implementation unit
    type: File
  inputModule215:
    id: inputModule215
    doc: Python implementation unit
    type: File
  inputModule216:
    id: inputModule216
    doc: Python implementation unit
    type: File
  inputModule217:
    id: inputModule217
    doc: Python implementation unit
    type: File
  inputModule218:
    id: inputModule218
    doc: Python implementation unit
    type: File
  inputModule219:
    id: inputModule219
    doc: Python implementation unit
    type: File
  inputModule220:
    id: inputModule220
    doc: Python implementation unit
    type: File
  inputModule221:
    id: inputModule221
    doc: Python implementation unit
    type: File
  inputModule222:
    id: inputModule222
    doc: Python implementation unit
    type: File
  inputModule223:
    id: inputModule223
    doc: Python implementation unit
    type: File
  inputModule224:
    id: inputModule224
    doc: Python implementation unit
    type: File
  inputModule225:
    id: inputModule225
    doc: Python implementation unit
    type: File
  inputModule226:
    id: inputModule226
    doc: Python implementation unit
    type: File
  inputModule227:
    id: inputModule227
    doc: Python implementation unit
    type: File
  inputModule228:
    id: inputModule228
    doc: Python implementation unit
    type: File
  inputModule229:
    id: inputModule229
    doc: Python implementation unit
    type: File
  inputModule230:
    id: inputModule230
    doc: Python implementation unit
    type: File
  inputModule231:
    id: inputModule231
    doc: Python implementation unit
    type: File
  inputModule232:
    id: inputModule232
    doc: Python implementation unit
    type: File
  inputModule233:
    id: inputModule233
    doc: Python implementation unit
    type: File
  inputModule234:
    id: inputModule234
    doc: Python implementation unit
    type: File
  inputModule235:
    id: inputModule235
    doc: Python implementation unit
    type: File
  inputModule236:
    id: inputModule236
    doc: Python implementation unit
    type: File
  inputModule237:
    id: inputModule237
    doc: Python implementation unit
    type: File
  inputModule238:
    id: inputModule238
    doc: Python implementation unit
    type: File
  inputModule239:
    id: inputModule239
    doc: Python implementation unit
    type: File
  inputModule240:
    id: inputModule240
    doc: Python implementation unit
    type: File
  inputModule241:
    id: inputModule241
    doc: Python implementation unit
    type: File
  inputModule242:
    id: inputModule242
    doc: Python implementation unit
    type: File
  inputModule243:
    id: inputModule243
    doc: Python implementation unit
    type: File
  inputModule244:
    id: inputModule244
    doc: Python implementation unit
    type: File
  inputModule245:
    id: inputModule245
    doc: Python implementation unit
    type: File
  inputModule246:
    id: inputModule246
    doc: Python implementation unit
    type: File
  inputModule247:
    id: inputModule247
    doc: Python implementation unit
    type: File
  inputModule248:
    id: inputModule248
    doc: Python implementation unit
    type: File
  inputModule249:
    id: inputModule249
    doc: Python implementation unit
    type: File
  inputModule250:
    id: inputModule250
    doc: Python implementation unit
    type: File
  inputModule251:
    id: inputModule251
    doc: Python implementation unit
    type: File
  inputModule252:
    id: inputModule252
    doc: Python implementation unit
    type: File
  inputModule253:
    id: inputModule253
    doc: Python implementation unit
    type: File
  inputModule254:
    id: inputModule254
    doc: Python implementation unit
    type: File
  inputModule255:
    id: inputModule255
    doc: Python implementation unit
    type: File
  inputModule256:
    id: inputModule256
    doc: Python implementation unit
    type: File
  inputModule257:
    id: inputModule257
    doc: Python implementation unit
    type: File
  inputModule258:
    id: inputModule258
    doc: Python implementation unit
    type: File
  inputModule259:
    id: inputModule259
    doc: Python implementation unit
    type: File
  inputModule260:
    id: inputModule260
    doc: Python implementation unit
    type: File
  inputModule261:
    id: inputModule261
    doc: Python implementation unit
    type: File
  inputModule262:
    id: inputModule262
    doc: Python implementation unit
    type: File
  inputModule263:
    id: inputModule263
    doc: Python implementation unit
    type: File
  inputModule264:
    id: inputModule264
    doc: Python implementation unit
    type: File
  inputModule265:
    id: inputModule265
    doc: Python implementation unit
    type: File
  inputModule266:
    id: inputModule266
    doc: Python implementation unit
    type: File
  inputModule267:
    id: inputModule267
    doc: Python implementation unit
    type: File
  inputModule268:
    id: inputModule268
    doc: Python implementation unit
    type: File
  inputModule269:
    id: inputModule269
    doc: Python implementation unit
    type: File
  inputModule270:
    id: inputModule270
    doc: Python implementation unit
    type: File
  inputModule271:
    id: inputModule271
    doc: Python implementation unit
    type: File
  inputModule272:
    id: inputModule272
    doc: Python implementation unit
    type: File
  inputModule273:
    id: inputModule273
    doc: Python implementation unit
    type: File
  inputModule274:
    id: inputModule274
    doc: Python implementation unit
    type: File
  inputModule275:
    id: inputModule275
    doc: Python implementation unit
    type: File
  inputModule276:
    id: inputModule276
    doc: Python implementation unit
    type: File
  inputModule277:
    id: inputModule277
    doc: Python implementation unit
    type: File
  inputModule278:
    id: inputModule278
    doc: Python implementation unit
    type: File
  inputModule279:
    id: inputModule279
    doc: Python implementation unit
    type: File
  inputModule280:
    id: inputModule280
    doc: Python implementation unit
    type: File
  inputModule281:
    id: inputModule281
    doc: Python implementation unit
    type: File
  inputModule282:
    id: inputModule282
    doc: Python implementation unit
    type: File
  inputModule283:
    id: inputModule283
    doc: Python implementation unit
    type: File
  inputModule284:
    id: inputModule284
    doc: Python implementation unit
    type: File
  inputModule285:
    id: inputModule285
    doc: Python implementation unit
    type: File
  inputModule286:
    id: inputModule286
    doc: Python implementation unit
    type: File
  inputModule287:
    id: inputModule287
    doc: Python implementation unit
    type: File
  inputModule288:
    id: inputModule288
    doc: Python implementation unit
    type: File
  inputModule289:
    id: inputModule289
    doc: Python implementation unit
    type: File
  inputModule290:
    id: inputModule290
    doc: Python implementation unit
    type: File
  inputModule291:
    id: inputModule291
    doc: Python implementation unit
    type: File
  inputModule292:
    id: inputModule292
    doc: Python implementation unit
    type: File
  inputModule293:
    id: inputModule293
    doc: Python implementation unit
    type: File
  inputModule294:
    id: inputModule294
    doc: Python implementation unit
    type: File
  inputModule295:
    id: inputModule295
    doc: Python implementation unit
    type: File
  inputModule296:
    id: inputModule296
    doc: Python implementation unit
    type: File
  inputModule297:
    id: inputModule297
    doc: Python implementation unit
    type: File
  inputModule298:
    id: inputModule298
    doc: Python implementation unit
    type: File
  inputModule299:
    id: inputModule299
    doc: Python implementation unit
    type: File
  inputModule300:
    id: inputModule300
    doc: Python implementation unit
    type: File
  inputModule301:
    id: inputModule301
    doc: Python implementation unit
    type: File
  inputModule302:
    id: inputModule302
    doc: Python implementation unit
    type: File
  inputModule303:
    id: inputModule303
    doc: Python implementation unit
    type: File
  inputModule304:
    id: inputModule304
    doc: Python implementation unit
    type: File
  inputModule305:
    id: inputModule305
    doc: Python implementation unit
    type: File
  inputModule306:
    id: inputModule306
    doc: Python implementation unit
    type: File
  inputModule307:
    id: inputModule307
    doc: Python implementation unit
    type: File
  inputModule308:
    id: inputModule308
    doc: Python implementation unit
    type: File
  inputModule309:
    id: inputModule309
    doc: Python implementation unit
    type: File
  inputModule310:
    id: inputModule310
    doc: Python implementation unit
    type: File
  inputModule311:
    id: inputModule311
    doc: Python implementation unit
    type: File
  inputModule312:
    id: inputModule312
    doc: Python implementation unit
    type: File
  inputModule313:
    id: inputModule313
    doc: Python implementation unit
    type: File
  inputModule314:
    id: inputModule314
    doc: Python implementation unit
    type: File
  inputModule315:
    id: inputModule315
    doc: Python implementation unit
    type: File
  inputModule316:
    id: inputModule316
    doc: Python implementation unit
    type: File
  inputModule317:
    id: inputModule317
    doc: Python implementation unit
    type: File
  inputModule318:
    id: inputModule318
    doc: Python implementation unit
    type: File
  inputModule319:
    id: inputModule319
    doc: Python implementation unit
    type: File
  inputModule320:
    id: inputModule320
    doc: Python implementation unit
    type: File
  inputModule321:
    id: inputModule321
    doc: Python implementation unit
    type: File
  inputModule322:
    id: inputModule322
    doc: Python implementation unit
    type: File
  inputModule323:
    id: inputModule323
    doc: Python implementation unit
    type: File
  inputModule324:
    id: inputModule324
    doc: Python implementation unit
    type: File
  inputModule325:
    id: inputModule325
    doc: Python implementation unit
    type: File
  inputModule326:
    id: inputModule326
    doc: Python implementation unit
    type: File
  inputModule327:
    id: inputModule327
    doc: Python implementation unit
    type: File
  inputModule328:
    id: inputModule328
    doc: Python implementation unit
    type: File
  inputModule329:
    id: inputModule329
    doc: Python implementation unit
    type: File
  inputModule330:
    id: inputModule330
    doc: Python implementation unit
    type: File
  inputModule331:
    id: inputModule331
    doc: Python implementation unit
    type: File
  inputModule332:
    id: inputModule332
    doc: Python implementation unit
    type: File
  inputModule333:
    id: inputModule333
    doc: Python implementation unit
    type: File
  inputModule334:
    id: inputModule334
    doc: Python implementation unit
    type: File
  inputModule335:
    id: inputModule335
    doc: Python implementation unit
    type: File
  inputModule336:
    id: inputModule336
    doc: Python implementation unit
    type: File
  inputModule337:
    id: inputModule337
    doc: Python implementation unit
    type: File
  inputModule338:
    id: inputModule338
    doc: Python implementation unit
    type: File
  inputModule339:
    id: inputModule339
    doc: Python implementation unit
    type: File
  inputModule340:
    id: inputModule340
    doc: Python implementation unit
    type: File
  inputModule341:
    id: inputModule341
    doc: Python implementation unit
    type: File
  inputModule342:
    id: inputModule342
    doc: Python implementation unit
    type: File
  inputModule343:
    id: inputModule343
    doc: Python implementation unit
    type: File
  inputModule344:
    id: inputModule344
    doc: Python implementation unit
    type: File
  inputModule345:
    id: inputModule345
    doc: Python implementation unit
    type: File
  inputModule346:
    id: inputModule346
    doc: Python implementation unit
    type: File
  inputModule347:
    id: inputModule347
    doc: Python implementation unit
    type: File
  inputModule348:
    id: inputModule348
    doc: Python implementation unit
    type: File
  inputModule349:
    id: inputModule349
    doc: Python implementation unit
    type: File
  inputModule350:
    id: inputModule350
    doc: Python implementation unit
    type: File
  inputModule351:
    id: inputModule351
    doc: Python implementation unit
    type: File
  inputModule352:
    id: inputModule352
    doc: Python implementation unit
    type: File
  inputModule353:
    id: inputModule353
    doc: Python implementation unit
    type: File
  inputModule354:
    id: inputModule354
    doc: Python implementation unit
    type: File
  inputModule355:
    id: inputModule355
    doc: Python implementation unit
    type: File
  inputModule356:
    id: inputModule356
    doc: Python implementation unit
    type: File
  inputModule357:
    id: inputModule357
    doc: Python implementation unit
    type: File
  inputModule358:
    id: inputModule358
    doc: Python implementation unit
    type: File
  inputModule359:
    id: inputModule359
    doc: Python implementation unit
    type: File
  inputModule360:
    id: inputModule360
    doc: Python implementation unit
    type: File
  inputModule361:
    id: inputModule361
    doc: Python implementation unit
    type: File
  inputModule362:
    id: inputModule362
    doc: Python implementation unit
    type: File
  inputModule363:
    id: inputModule363
    doc: Python implementation unit
    type: File
  inputModule364:
    id: inputModule364
    doc: Python implementation unit
    type: File
  inputModule365:
    id: inputModule365
    doc: Python implementation unit
    type: File
  inputModule366:
    id: inputModule366
    doc: Python implementation unit
    type: File
  inputModule367:
    id: inputModule367
    doc: Python implementation unit
    type: File
  inputModule368:
    id: inputModule368
    doc: Python implementation unit
    type: File
  inputModule369:
    id: inputModule369
    doc: Python implementation unit
    type: File
  inputModule370:
    id: inputModule370
    doc: Python implementation unit
    type: File
  inputModule371:
    id: inputModule371
    doc: Python implementation unit
    type: File
  inputModule372:
    id: inputModule372
    doc: Python implementation unit
    type: File
  inputModule373:
    id: inputModule373
    doc: Python implementation unit
    type: File
  inputModule374:
    id: inputModule374
    doc: Python implementation unit
    type: File
  inputModule375:
    id: inputModule375
    doc: Python implementation unit
    type: File
  inputModule376:
    id: inputModule376
    doc: Python implementation unit
    type: File
  inputModule377:
    id: inputModule377
    doc: Python implementation unit
    type: File
  inputModule378:
    id: inputModule378
    doc: Python implementation unit
    type: File
  inputModule379:
    id: inputModule379
    doc: Python implementation unit
    type: File
  inputModule380:
    id: inputModule380
    doc: Python implementation unit
    type: File
  inputModule381:
    id: inputModule381
    doc: Python implementation unit
    type: File
  inputModule382:
    id: inputModule382
    doc: Python implementation unit
    type: File
  inputModule383:
    id: inputModule383
    doc: Python implementation unit
    type: File
  inputModule384:
    id: inputModule384
    doc: Python implementation unit
    type: File
  inputModule385:
    id: inputModule385
    doc: Python implementation unit
    type: File
  inputModule386:
    id: inputModule386
    doc: Python implementation unit
    type: File
  inputModule387:
    id: inputModule387
    doc: Python implementation unit
    type: File
  inputModule388:
    id: inputModule388
    doc: Python implementation unit
    type: File
  inputModule389:
    id: inputModule389
    doc: Python implementation unit
    type: File
  inputModule390:
    id: inputModule390
    doc: Python implementation unit
    type: File
  inputModule391:
    id: inputModule391
    doc: Python implementation unit
    type: File
  inputModule392:
    id: inputModule392
    doc: Python implementation unit
    type: File
  inputModule393:
    id: inputModule393
    doc: Python implementation unit
    type: File
  inputModule394:
    id: inputModule394
    doc: Python implementation unit
    type: File
  inputModule395:
    id: inputModule395
    doc: Python implementation unit
    type: File
  inputModule396:
    id: inputModule396
    doc: Python implementation unit
    type: File
  inputModule397:
    id: inputModule397
    doc: Python implementation unit
    type: File
  inputModule398:
    id: inputModule398
    doc: Python implementation unit
    type: File
  inputModule399:
    id: inputModule399
    doc: Python implementation unit
    type: File
  inputModule400:
    id: inputModule400
    doc: Python implementation unit
    type: File
  inputModule401:
    id: inputModule401
    doc: Python implementation unit
    type: File
  inputModule402:
    id: inputModule402
    doc: Python implementation unit
    type: File
  inputModule403:
    id: inputModule403
    doc: Python implementation unit
    type: File
  inputModule404:
    id: inputModule404
    doc: Python implementation unit
    type: File
  inputModule405:
    id: inputModule405
    doc: Python implementation unit
    type: File
  inputModule406:
    id: inputModule406
    doc: Python implementation unit
    type: File
  inputModule407:
    id: inputModule407
    doc: Python implementation unit
    type: File
  inputModule408:
    id: inputModule408
    doc: Python implementation unit
    type: File
  inputModule409:
    id: inputModule409
    doc: Python implementation unit
    type: File
  inputModule410:
    id: inputModule410
    doc: Python implementation unit
    type: File
  inputModule411:
    id: inputModule411
    doc: Python implementation unit
    type: File
  inputModule412:
    id: inputModule412
    doc: Python implementation unit
    type: File
  inputModule413:
    id: inputModule413
    doc: Python implementation unit
    type: File
  inputModule414:
    id: inputModule414
    doc: Python implementation unit
    type: File
  inputModule415:
    id: inputModule415
    doc: Python implementation unit
    type: File
  inputModule416:
    id: inputModule416
    doc: Python implementation unit
    type: File
  inputModule417:
    id: inputModule417
    doc: Python implementation unit
    type: File
  inputModule418:
    id: inputModule418
    doc: Python implementation unit
    type: File
  inputModule419:
    id: inputModule419
    doc: Python implementation unit
    type: File
  inputModule420:
    id: inputModule420
    doc: Python implementation unit
    type: File
  inputModule421:
    id: inputModule421
    doc: Python implementation unit
    type: File
  inputModule422:
    id: inputModule422
    doc: Python implementation unit
    type: File
  inputModule423:
    id: inputModule423
    doc: Python implementation unit
    type: File
  inputModule424:
    id: inputModule424
    doc: Python implementation unit
    type: File
  inputModule425:
    id: inputModule425
    doc: Python implementation unit
    type: File
  inputModule426:
    id: inputModule426
    doc: Python implementation unit
    type: File
  inputModule427:
    id: inputModule427
    doc: Python implementation unit
    type: File
  inputModule428:
    id: inputModule428
    doc: Python implementation unit
    type: File
  inputModule429:
    id: inputModule429
    doc: Python implementation unit
    type: File
  inputModule430:
    id: inputModule430
    doc: Python implementation unit
    type: File
  inputModule431:
    id: inputModule431
    doc: Python implementation unit
    type: File
  inputModule432:
    id: inputModule432
    doc: Python implementation unit
    type: File
  inputModule433:
    id: inputModule433
    doc: Python implementation unit
    type: File
  inputModule434:
    id: inputModule434
    doc: Python implementation unit
    type: File
  inputModule435:
    id: inputModule435
    doc: Python implementation unit
    type: File
  inputModule436:
    id: inputModule436
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
