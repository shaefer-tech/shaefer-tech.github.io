'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "db551462e0673e5bcf8c051f93661624",
"assets/assets/medias/cliqButton.png": "f1995665a8854c248c47f25f6fd696be",
"assets/assets/medias/cliqueRadio.png": "d8e66d9d8df63866a8c38e144643857d",
"assets/assets/medias/cliqVerif.png": "4fa5c01a3d31dcc40f406c0b3ca22e19",
"assets/assets/medias/ecrirelc1.png": "770088bc8aa3cf6aedb1b47d0f262ac5",
"assets/assets/medias/elleRira.mp3": "bc7f6068edf88ad95ba0bf2899a9feec",
"assets/assets/medias/Ellerirabene.mp3": "c0bb2c86e2e746a1ccc5b2afddca47c3",
"assets/assets/medias/ellrira.png": "6578cb44c5b6b9ce592b6a694bd104c0",
"assets/assets/medias/fitila.png": "0b727c720abf6ef9985ce21d309cbea5",
"assets/assets/medias/hhha.png": "d4dace400a9af0b1f96b0b039a15387b",
"assets/assets/medias/Irabene.mp3": "84bc4e052c5a760b0b0f3aab0ebaa2e3",
"assets/assets/medias/lecon1/1-a.png": "4491e40ef4d07690b58a3305ad3140a7",
"assets/assets/medias/lecon1/2-a.png": "6f7670065ce2a1149934638ddc2b8433",
"assets/assets/medias/lecon1/a.mp3": "16e27ee8e6cd832abf2e086872127b6c",
"assets/assets/medias/lecon1/aari.mp3": "018b0bc22e838f8a5e9d956fc36e75dc",
"assets/assets/medias/lecon1/arri.mp3": "6c1c71b3c78c7349f8fffae4a9f8d4e4",
"assets/assets/medias/lecon1/colelleriraPh.png": "c31b250971852526e0ad6a5e158dd069",
"assets/assets/medias/lecon1/colsaraPh.png": "942e1ecb611afdd9de6c475a99b21db1",
"assets/assets/medias/lecon1/draw1.png": "07576201edb000d365cc3d2f3fd587db",
"assets/assets/medias/lecon1/elleRiraa.mp3": "6c0728db6a75050ef3c3381bfc0e92d4",
"assets/assets/medias/lecon1/elleRiraaM.png": "ed834ec972013257cbf3903842943d69",
"assets/assets/medias/lecon1/elleRiraCoul.png": "11586cb4d06f96c47278a76cb9f6ee93",
"assets/assets/medias/lecon1/i.mp3": "69bc4b192395b5835e2c2c2ad8b6e8fa",
"assets/assets/medias/lecon1/motCrois5.png": "cbc6039739341f786ff0263cb015c616",
"assets/assets/medias/lecon1/motCrois5Coul.png": "acdc8e19d27c7f2818f716f4906a05f3",
"assets/assets/medias/lecon1/psaume139.mp3": "4efbf53c8a72ac6afcb0b069092313be",
"assets/assets/medias/lecon1/ra.mp3": "a6861f5c330bc9de6f0aad5038bc93d7",
"assets/assets/medias/lecon1/ras.mp3": "0931a38d71ca1c195bbe5ac65a96a212",
"assets/assets/medias/lecon1/rasa.mp3": "4a8011efff6224d3cebe75a334cfa9df",
"assets/assets/medias/lecon1/ri.mp3": "10a46c2be958e2c5864b2765f77078c6",
"assets/assets/medias/lecon1/rira.mp3": "d98ae812c40c376c44d0f50b7821a5a6",
"assets/assets/medias/lecon1/sa.mp3": "1fe47092e6694c528c6bdc4fbf18314d",
"assets/assets/medias/lecon1/saar.mp3": "c3bbd1a5e5ca9d1221902b9b9d532ca7",
"assets/assets/medias/lecon1/sara.mp3": "540cc790472bff01b726b3013c3cbd12",
"assets/assets/medias/lecon1/saraCoul.png": "39becde7536219ec77e6ca4d6b053c38",
"assets/assets/medias/lecon1/saraM.png": "50c0ecd0362c0c94aa2cb20f0cd6bd4c",
"assets/assets/medias/lecon2/3-a.png": "3d21b09cf86f840bf4f7b87e1ab71866",
"assets/assets/medias/lecon2/4-a.png": "905ab2fb4de4a5b968359ad5dbb603af",
"assets/assets/medias/lecon2/a.mp3": "16e27ee8e6cd832abf2e086872127b6c",
"assets/assets/medias/lecon2/aprepo.mp3": "4905063f24d90f0fe17f831ccb28ce96",
"assets/assets/medias/lecon2/coltassePh.png": "2645f98ee5725ae9d7c843dffc02280f",
"assets/assets/medias/lecon2/coltissePh.png": "a59c034ccf0f62acab1a6264a2f7b634",
"assets/assets/medias/lecon2/dessinLc2.png": "31c4133f345f881a670334274ad942eb",
"assets/assets/medias/lecon2/draw2.png": "1589ccbe3c3007464adf50d38a4abc8f",
"assets/assets/medias/lecon2/elele.mp3": "47c05fb8135cfb80d1b7bdcce3825b4b",
"assets/assets/medias/lecon2/elle.mp3": "89d8d3b3c4dd606f68a35c9f3e80c3f9",
"assets/assets/medias/lecon2/elleNeRiraPas.mp3": "10d27981fa9720cfb8cce19700e4478b",
"assets/assets/medias/lecon2/elleTisse.mp3": "73bfbeadf23e79249439ca94a55960d7",
"assets/assets/medias/lecon2/elletisse.png": "cb1fb2f143e251910d799c7a2d1746d4",
"assets/assets/medias/lecon2/elleTisseCoul.png": "ba8ec7e04b5e4ddf8daaf25c69fda68d",
"assets/assets/medias/lecon2/elleTisseM.png": "1b86f9508ed10807bb8470ffcfa38c49",
"assets/assets/medias/lecon2/i.mp3": "69bc4b192395b5835e2c2c2ad8b6e8fa",
"assets/assets/medias/lecon2/lele.mp3": "8368c66277a1ed63aff08be35783c615",
"assets/assets/medias/lecon2/psaume143.mp3": "8089519e500bbd74f04dbc8e1ddf8bcd",
"assets/assets/medias/lecon2/ri.mp3": "10a46c2be958e2c5864b2765f77078c6",
"assets/assets/medias/lecon2/sa.mp3": "1fe47092e6694c528c6bdc4fbf18314d",
"assets/assets/medias/lecon2/saraAuneTasse.mp3": "e9e4c8b5648e86c0db4c46d904773689",
"assets/assets/medias/lecon2/saraEstArras.mp3": "051009d9982ed895baca2e2d00f3f1c0",
"assets/assets/medias/lecon2/saraEstArras.wma": "e4751641e16303e471ca9faf08847dc4",
"assets/assets/medias/lecon2/saste.mp3": "087c0e5b4c125eb57e3a4b6770d9052b",
"assets/assets/medias/lecon2/setas.mp3": "9e6a00c7544e2522ba6876da11ef0235",
"assets/assets/medias/lecon2/setis.mp3": "290c5af0b9490435a3778598db970a44",
"assets/assets/medias/lecon2/si.mp3": "a0d997b295a3b72f6e6703564f5560bc",
"assets/assets/medias/lecon2/siste.mp3": "78e90ddd6d514c6ecc7b108373bae5e4",
"assets/assets/medias/lecon2/ta.mp3": "aa5448d714f955ec5caa9473e10fa5e7",
"assets/assets/medias/lecon2/tasse.mp3": "102dcdb12c2cb1e7d6d357c8a3d19341",
"assets/assets/medias/lecon2/tasse.png": "61e42aa2db61ea18fdcc36c32fa597dc",
"assets/assets/medias/lecon2/tasseCoul.png": "fbfcbc518fd48328820d37208cc7e749",
"assets/assets/medias/lecon2/tasseM.png": "0691475bc1374abb2d1feaea3f31a8de",
"assets/assets/medias/lecon2/ti.mp3": "851a980ab25503cf35e00bd4e5d7a3ff",
"assets/assets/medias/lecon2/tisse.mp3": "06e2dc634138398b3bf5ef9ddb08a001",
"assets/assets/medias/lecon3/5-a.png": "f8696f49f3ef19152526111e49691b75",
"assets/assets/medias/lecon3/6-a.png": "87aa46be1ec3e97d06c1cc07b203bcc2",
"assets/assets/medias/lecon3/a.mp3": "16e27ee8e6cd832abf2e086872127b6c",
"assets/assets/medias/lecon3/angem.mp3": "961ffff2afe6c2e0564a879b69cf9ac7",
"assets/assets/medias/lecon3/artte.mp3": "04dd1e80cabbdcac98d04c356f2bcaca",
"assets/assets/medias/lecon3/colratPh.png": "38155b1b5772dcbe6d2d83fe1ef13658",
"assets/assets/medias/lecon3/coltartePh.png": "47be019c569b86094b746796f3d75b70",
"assets/assets/medias/lecon3/dessinLc3.png": "ace111de384ef62a3cac31b9dbca1851",
"assets/assets/medias/lecon3/draw3.png": "2a7e43de6e6da45a76265b0511204460",
"assets/assets/medias/lecon3/geman.mp3": "d0cd783ade93614ae5580b75b17e6860",
"assets/assets/medias/lecon3/i.mp3": "69bc4b192395b5835e2c2c2ad8b6e8fa",
"assets/assets/medias/lecon3/il.mp3": "f83d2103d71bc858c73547e64709204b",
"assets/assets/medias/lecon3/ilyaunetarte.mp3": "1747e805286703466c06a2aa734bbdad",
"assets/assets/medias/lecon3/ilyaunetasse.mp3": "e8e29536fa22e711792ba77c68c8478d",
"assets/assets/medias/lecon3/ilyaunrat.mp3": "b4f05f3b1724e44eac7984760622c4ce",
"assets/assets/medias/lecon3/lc2motcrois1.png": "13d0da59c13fd098f232e1ce4f31b178",
"assets/assets/medias/lecon3/lc2motcrois2.png": "b0b5b7e2f50ed27c650f9a8f30723dcc",
"assets/assets/medias/lecon3/lc2motcrois3.png": "20ff0ee14d3a6117ee775bdb93ae6755",
"assets/assets/medias/lecon3/mange.mp3": "b2c39c43964f89186a6404f36faed629",
"assets/assets/medias/lecon3/proverbe1v8-9.mp3": "bf44591c01fe00d958b82957c986d0ad",
"assets/assets/medias/lecon3/ra.mp3": "a6861f5c330bc9de6f0aad5038bc93d7",
"assets/assets/medias/lecon3/rat.mp3": "4f73d46b9fb3d56817c28887e3e0bfd8",
"assets/assets/medias/lecon3/rat.png": "6c900a1f09238d9be2cdcfa3a566c5f9",
"assets/assets/medias/lecon3/ratCoul.png": "89229d0057999af04364ddd0c6260277",
"assets/assets/medias/lecon3/ratM.png": "cbebe065242056f21d05880383cfb1a3",
"assets/assets/medias/lecon3/ta.mp3": "aa5448d714f955ec5caa9473e10fa5e7",
"assets/assets/medias/lecon3/tar.mp3": "a156c46e83a04186112753b5eceb9547",
"assets/assets/medias/lecon3/tarte.mp3": "29a72b2d8a98817e66112a71ef5130dc",
"assets/assets/medias/lecon3/tarte.png": "0b345186480e415403162befee0bd4ad",
"assets/assets/medias/lecon3/tarteCoul.png": "5844772f6308b82ed498fff8d862b207",
"assets/assets/medias/lecon3/tarteM.png": "fbde7baf9103a46972955ab10f6b70ba",
"assets/assets/medias/lecon3/tetar.mp3": "447f29b58b2ae950c3fa6b6a7385426c",
"assets/assets/medias/lecon3/ti.mp3": "851a980ab25503cf35e00bd4e5d7a3ff",
"assets/assets/medias/lecon4/7-a.png": "68c8de4dbcd77b28f5c0694d337c67f6",
"assets/assets/medias/lecon4/8-a.png": "3a9d244135a1176c47cefda05d80a00e",
"assets/assets/medias/lecon4/a.mp3": "16e27ee8e6cd832abf2e086872127b6c",
"assets/assets/medias/lecon4/colmarePh.png": "2b68e1631597a201129e3abdece9cee0",
"assets/assets/medias/lecon4/colramePh.png": "6353f0abee28123cb19cf3694057cd63",
"assets/assets/medias/lecon4/draw4.png": "121b6273d8668744a3f682ae8a3aae6d",
"assets/assets/medias/lecon4/essam.mp3": "04cbf4041605b9f2e6cebdba24578aba",
"assets/assets/medias/lecon4/i.mp3": "69bc4b192395b5835e2c2c2ad8b6e8fa",
"assets/assets/medias/lecon4/imiteOub.png": "67628ec8c053d7e57017a86151caf08a",
"assets/assets/medias/lecon4/leratetletas.mp3": "f7f3f1c90ba79468658939d11f1765d0",
"assets/assets/medias/lecon4/ma.mp3": "a23bb111052f6d194f67d04803140fe6",
"assets/assets/medias/lecon4/mare.mp3": "a6dc03dd240d1ce4c0b967b363566e8b",
"assets/assets/medias/lecon4/mareCoul.png": "02f2e78aabcd5b8b368204d19a1ccf20",
"assets/assets/medias/lecon4/mareM.png": "876fcdc23bf3a46f2222988650cec645",
"assets/assets/medias/lecon4/masse.mp3": "2124880b237d85da7e17e4510113355f",
"assets/assets/medias/lecon4/mi.mp3": "4554f0be618cb9bba6fa103e53fc27f8",
"assets/assets/medias/lecon4/motCrois4.png": "dcac2c8a43a7a20f801fe2f96ba5c150",
"assets/assets/medias/lecon4/motCrois4Coul.png": "8edb054928ae284bafd2c951ab1de417",
"assets/assets/medias/lecon4/presdelamarre.mp3": "01391415966978f2f20d16382ac5889f",
"assets/assets/medias/lecon4/presdelarame.mp3": "5259d1ddb0c0897cd911aafab7effd6e",
"assets/assets/medias/lecon4/proverbe2V6.mp3": "44b24005b1e4b46fbabba2619fabc711",
"assets/assets/medias/lecon4/ra.mp3": "a6861f5c330bc9de6f0aad5038bc93d7",
"assets/assets/medias/lecon4/ramasseOub.png": "f2ff6e9ef500a916c9756c21901cd902",
"assets/assets/medias/lecon4/rame.mp3": "c244a1a8ad175362fa7fc5d65a4f1987",
"assets/assets/medias/lecon4/rameCoul.png": "e87360b77851bc99564a8866fcabec43",
"assets/assets/medias/lecon4/rameM.png": "b366658f5d7ed8debc61c320ee0209ef",
"assets/assets/medias/lecon4/rameOub.png": "005278030374d16bfe83935f42d6e75a",
"assets/assets/medias/lecon4/rema.mp3": "18a1cefc3cb3edcbc65cdee502dcc6a0",
"assets/assets/medias/lecon4/ri.mp3": "10a46c2be958e2c5864b2765f77078c6",
"assets/assets/medias/lecon4/semas.mp3": "0abeba38e9d25d4383172e52e5a8ea9c",
"assets/assets/medias/lecon4/ta.mp3": "aa5448d714f955ec5caa9473e10fa5e7",
"assets/assets/medias/lecon4/tir.mp3": "45df633bce005067207c7c41512e587b",
"assets/assets/medias/lecon5/10-a.png": "3545f9f325a7fc74c9b1c7fe622c1220",
"assets/assets/medias/lecon5/9-a.png": "b3b599ac2ef26447ef141f2c8a6fbd25",
"assets/assets/medias/lecon5/ad.mp3": "9419f88263b258211d43dbb63b742d63",
"assets/assets/medias/lecon5/coldattesPh.png": "9f156b9cc69b93e9ea676d290e1ef995",
"assets/assets/medias/lecon5/colradisPh.png": "66a41a74ae7f59b48364463640b402d1",
"assets/assets/medias/lecon5/da.mp3": "b4eb95188c0b04277a1094a5f5462b44",
"assets/assets/medias/lecon5/datet.mp3": "c15348f439d13bd4378e322cb6245249",
"assets/assets/medias/lecon5/dattes.mp3": "30e2b5bd13604a543ee99bd075852e75",
"assets/assets/medias/lecon5/dattes.png": "901496cbcaadbd1612120d8972278676",
"assets/assets/medias/lecon5/dattesCroub.png": "ccb52c460bc7afded8bf63ce162bdb26",
"assets/assets/medias/lecon5/dattesM.png": "8319817ddded4808adf11ee5abdab06a",
"assets/assets/medias/lecon5/delatarte.mp3": "f7344b93fe3bf7fc708a1aa321ead710",
"assets/assets/medias/lecon5/destartes.mp3": "d3b138c486e85594ca1027ca0424c70d",
"assets/assets/medias/lecon5/di.mp3": "58cc7bbf1f5235a1a6e7ebd67c91df5a",
"assets/assets/medias/lecon5/dimar.mp3": "7df6fc0a8984826cc5bdd2050184a48e",
"assets/assets/medias/lecon5/dimra.mp3": "04bec2d9ffa4b3554ebce423607906dd",
"assets/assets/medias/lecon5/disar.mp3": "eed932032ff86c3927210ae2db86f108",
"assets/assets/medias/lecon5/disra.mp3": "660c4dbd517422f0a0980962564cf031",
"assets/assets/medias/lecon5/draw5.png": "43f7d0eab8421917d6d57e35bf372848",
"assets/assets/medias/lecon5/lestartes.mp3": "0e528930fd4032d18a4ceb84c76c91a1",
"assets/assets/medias/lecon5/ma.mp3": "aa17d547fa882f06d1c710815cfd38af",
"assets/assets/medias/lecon5/mardu.mp3": "7d22f4caa40e1a202b083fe1c12e04fd",
"assets/assets/medias/lecon5/mari.mp3": "65245dd608fa148f7be4850ad3ce63b3",
"assets/assets/medias/lecon5/motCrois5.png": "cbc6039739341f786ff0263cb015c616",
"assets/assets/medias/lecon5/motCrois5Coul.png": "acdc8e19d27c7f2818f716f4906a05f3",
"assets/assets/medias/lecon5/prov3V5.mp3": "03a85c2212cea041933948adb7a2c48d",
"assets/assets/medias/lecon5/radis.mp3": "8fc353a79b6d11d391a45ab619d3452e",
"assets/assets/medias/lecon5/radis.png": "01886526c7e11ac21dcdff05bb8546a1",
"assets/assets/medias/lecon5/radisCroub.png": "452c9a2872df6b3637287e68cda97dab",
"assets/assets/medias/lecon5/radisM.png": "70e86d68795f2b9ffbe5f6c9fde0e319",
"assets/assets/medias/lecon5/rami.mp3": "4745b11067a2a9cf1b1e984827f35af6",
"assets/assets/medias/lecon5/rima.mp3": "5ad4e9dcdf1ee31fd452945f95181fae",
"assets/assets/medias/lecon5/tasseCroub.png": "ebefe0ccafd26769340f9530cc61c4e8",
"assets/assets/medias/lecon5/tedat.mp3": "1a6661f7cbf7ae2ca639b702570b9441",
"assets/assets/medias/leitulsalogo.png": "e2bc36e23b78cabe49250c659653b67d",
"assets/assets/medias/libeninlogo.png": "59489fdc4d0f345ce8f700ebf0fa138a",
"assets/assets/medias/lignes.png": "eee5c1a5f01ae43d967d440be0096709",
"assets/assets/medias/lineslc1.png": "da5f6b349b9de91c0f487292f56f3510",
"assets/assets/medias/lireson.png": "736fc5df3154bbf23af4691681d958cd",
"assets/assets/medias/logoliteracy.png": "2b8e7c0302816f99eebbd63ad1b3ad33",
"assets/assets/medias/lumierelogo.png": "cdbde288bfbed8363adc3967061513cf",
"assets/assets/medias/Mobile%2520Android%2520%25E2%2580%2593%25201.png": "57e3270eb86e18ed9a42cc6b64e345bc",
"assets/assets/medias/Mobile%2520Android%2520%25E2%2580%2593%252010.png": "2f5d035554d8434be50b1ac715d869bf",
"assets/assets/medias/Mobile%2520Android%2520%25E2%2580%2593%252012.png": "95ab43317c860a0d64ba122d65b456c6",
"assets/assets/medias/Mobile%2520Android%2520%25E2%2580%2593%25202.png": "8b2b4f0732b6527a62e6fa3fe06e23a6",
"assets/assets/medias/Mobile%2520Android%2520%25E2%2580%2593%25203.png": "56837ec6490800cd5d2a7f2334fc0f5b",
"assets/assets/medias/Mobile%2520Android%2520%25E2%2580%2593%25204.png": "8cb7514de5648adeae8a62cba32f7d65",
"assets/assets/medias/Mobile%2520Android%2520%25E2%2580%2593%25205.png": "f624dcd98fdaea6c2a8d9594c5cf02a0",
"assets/assets/medias/Mobile%2520Android%2520%25E2%2580%2593%25206.png": "1ac3e6a9ce012b1b070635c94f640bdc",
"assets/assets/medias/Mobile%2520Android%2520%25E2%2580%2593%25207.png": "605c70f8538d38e8e757fd4016a73c29",
"assets/assets/medias/Mobile%2520Android%2520%25E2%2580%2593%25208.png": "dc14b66d59c5bb14fa207fef77663a96",
"assets/assets/medias/Mobile%2520Android%2520%25E2%2580%2593%25209.png": "68b123945415776fef43d692c44c43c5",
"assets/assets/medias/psaumes139.mp3": "72a828aa809fb7a978a2c85177b24fd5",
"assets/assets/medias/Rirabene.mp3": "04028e3e7ee7746dc1af916c9c55033e",
"assets/assets/medias/Roribene.mp3": "41099afb8512deaf5d2c9bea305e62c9",
"assets/assets/medias/sarah.png": "2f501bba693c41f445e69ad13b7670b9",
"assets/assets/medias/SarraBien.mp3": "dd49176170cdbec1528c4cc7ee457d2c",
"assets/assets/medias/SirraBene.mp3": "a912b0f9740688dd1a6650ecfef13e88",
"assets/assets/medias/Sirrobene.mp3": "908d2fee8d1981fd323d12393dc4855c",
"assets/assets/medias/successlc1.png": "8c5951b462f6d8d60257e94d6e40197c",
"assets/assets/medias/verifFail.png": "e38531890d312a584e91186f0140f93c",
"assets/assets/medias/verifSuccess.png": "a082c43d43d22db1340a42a0c3ed066e",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/NOTICES": "baa6998e3d1d1b9e14b885232e4c923b",
"assets/packages/awesome_dialog/assets/flare/error.flr": "87d83833748ad4425a01986f2821a75b",
"assets/packages/awesome_dialog/assets/flare/error_without_loop.flr": "35b9b6c9a71063406bdac60d7b3d53e8",
"assets/packages/awesome_dialog/assets/flare/info.flr": "bc654ba9a96055d7309f0922746fe7a7",
"assets/packages/awesome_dialog/assets/flare/info2.flr": "21af33cb65751b76639d98e106835cfb",
"assets/packages/awesome_dialog/assets/flare/info_without_loop.flr": "cf106e19d7dee9846bbc1ac29296a43f",
"assets/packages/awesome_dialog/assets/flare/question.flr": "1c31ec57688a19de5899338f898290f0",
"assets/packages/awesome_dialog/assets/flare/succes.flr": "ebae20460b624d738bb48269fb492edf",
"assets/packages/awesome_dialog/assets/flare/succes_without_loop.flr": "3d8b3b3552370677bf3fb55d0d56a152",
"assets/packages/awesome_dialog/assets/flare/warning.flr": "68898234dacef62093ae95ff4772509b",
"assets/packages/awesome_dialog/assets/flare/warning_without_loop.flr": "c84f528c7e7afe91a929898988012291",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "e7006a0a033d834ef9414d48db3be6fc",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "a3ce54c22309b9c41b6bc7025d340d29",
"/": "a3ce54c22309b9c41b6bc7025d340d29",
"main.dart.js": "14c51bf4d94517be7f6b5bf870094618",
"manifest.json": "dc6d646d6b9b0ff5429aa15f0bc59c30",
"version.json": "c4c1df708ad0949aab68560883fd0c62"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
