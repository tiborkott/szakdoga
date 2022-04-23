//
//  StationList.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 14..
//

import Foundation

let stations = [
    "Aba",
    "Abádszalók",
    "Abaliget",
    "Abaújkér",
    "Abaújszántó",
    "Abaújszántó",
    "Abda",
    "Abony",
    "Szolnok",
    "Ábrahámhegy",
    "Ács",
    "Acsa",
    "Acsád",
    "Adács",
    "Ádánd",
    "Budapest",
    "Adony",
    "Gárdony",
    "Ajak",
    "Ajka",
    "Ajka",
    "Budapest XVII. kerülete",
    "Dunakeszi",
    "Alap",
    "Budapest XI. kerülete",
    "Albertirsa",
    "Aldebrő",
    "Algyő",
    "Eger",
    "Felnémet",
    "Bácsalmás",
    "Almásfüzitő",
    "Almásfüzitő",
    "Fonyód",
    "Boldva",
    "Tatabánya",
    "Alsógalla",
    "Göd",
    "Gyenesdiás",
    "Kecskemét",
    "Alsónemesapáti",
    "Alsónyék",
    "Alsóörs",
    "Rönök",
    "Kecskemét",
    "Ambrózfalva",
    "Andocs",
    "Andornaktálya",
    "Andráshida",
    "Budapest XIII. kerülete",
    "Szigetszentmárton",
    "Debrecen",
    "Apagy",
    "Apátfalva",
    "Apc",
    "Kiskunlacháza",
    "Budapest III. kerülete",
    "Budapest III. kerülete",
    "Nyíradony",
    "Aranyosapáti",
    "Budapest III. kerülete",
    "Budapest XVI. kerülete",
    "Lakitelek",
    "Aszaló",
    "Aszód",
    "Aszófő",
    "Áta",
    "Attala",
    "Babócsa",
    "Bábonymegyer",
    "Bácsalmás",
    "Bácsbokod",
    "Badacsonytomaj",
    "Badacsonytördemic",
    "Badacsonytomaj",
    "Badacsonytomaj",
    "Badacsonytördemic",
    "Bag",
    "Kengyel",
    "Bagod",
    "Baja",
    "Baja",
    "Bajánsenye",
    "Bak",
    "Bakonybánk",
    "Bakonygyirót",
    "Bakonypéterd",
    "Bakonysárkány",
    "Bakonyszentlászló",
    "Bakonyszombathely",
    "Bakonytamási",
    "Baktalórántháza",
    "Baktüttös",
    "Balassagyarmat",
    "Balástya",
    "Balatonakali",
    "Balatonakarattya",
    "Balatonvilágos",
    "Balatonalmádi",
    "Balatonfüred",
    "Balatonarács",
    "Balatonberény",
    "Balatonboglár",
    "Balatonederics",
    "Balatonfenyves",
    "Balatonfenyves",
    "Balatonfenyves",
    "Balatonfőkajár",
    "Balatonföldvár",
    "Balatonfüred",
    "Balatonfűzfő",
    "Balatongyörök",
    "Balatonkenese",
    "Balatonkeresztúr",
    "Balatonlelle",
    "Balatonlelle",
    "Balatonmáriafürdő",
    "Balatonrendes",
    "Balatonszárszó",
    "Balatonszemes",
    "Balatonszentgyörgy",
    "Balatonszepezd",
    "Zamárdi",
    "Siófok",
    "Balatonudvari",
    "Balatonújlak",
    "Balatonvilágos",
    "Ballószög",
    "Balmazújváros",
    "Balotaszállás",
    "Kunhegyes",
    "Tatabánya",
    "Bánhida",
    "Medgyesegyháza",
    "Bánréve",
    "Serényfalva",
    "Baracska",
    "Báránd",
    "Barcs",
    "Barcs",
    "Budapest XXII. kerülete",
    "Tiszaeszlár",
    "Bátaszék",
    "Baté",
    "Budapest I. kerülete",
    "Battonya",
    "Balatongyörök",
    "Becske",
    "Becske",
    "Budapest III. kerülete",
    "Békés",
    "Békéscsaba",
    "Bélapátfalva",
    "Bélapátfalva",
    "Fonyód",
    "Bélavár",
    "Belecska",
    "Beled",
    "Beleg",
    "Murakeresztúr",
    "Aba",
    "Mezőhegyes",
    "Mezőhegyes",
    "Budapest IX. kerülete",
    "Karcag",
    "Berente",
    "Berettyóújfalu",
    "Berkenye",
    "Berzence",
    "Bezenye",
    "Biatorbágy",
    "Gyula",
    "Bicsérd",
    "Bicske",
    "Bicske",
    "Biharkeresztes",
    "Biharnagybajom",
    "Boba",
    "Bocfölde",
    "Bocskaikert",
    "Bodajk",
    "Bodolyabér",
    "Bodrogkisfalud",
    "Bodrogolaszi",
    "Bódvaszilas",
    "Dad",
    "Boldogkőváralja",
    "Boldva",
    "Bolhás",
    "Bóly",
    "Kisbárapáti",
    "Budapest IX. kerülete",
    "Tiszaalpár",
    "Borsodszirák",
    "Borsosberény",
    "Böhönye",
    "Székesfehérvár",
    "Bősárkány",
    "Kunszentmiklós",
    "Búcsúszentlászló",
    "Budapest II. kerülete",
    "Zalalövő",
    "Budapest XXII. kerülete",
    "Budapest I. kerülete",
    "Cegléd",
    "Budakalász",
    "Budakalász",
    "Budaörs",
    "Budapest XXII. kerülete",
    "Szendrő",
    "Bük",
    "Bükkösd",
    "Cece",
    "Cegléd",
    "Ceglédbercel",
    "Ceglédbercel",
    "Cegléd",
    "Celldömölk",
    "Cikó",
    "Budapest XVI. kerülete",
    "Budapest XVI. kerülete",
    "Csabacsűd",
    "Csabacsűd",
    "Csajág",
    "Csákánydoroszló",
    "Csanádpalota",
    "Csánig",
    "Csárdaszállás",
    "Császár",
    "Csengele",
    "Csenger",
    "Csengőd",
    "Csépa",
    "Budapest XXI. kerülete",
    "Budapest XXI. kerülete",
    "Cserdi",
    "Csibrák",
    "Csikóstőttős",
    "Budapest III. kerülete",
    "Budapest",
    "Csincse",
    "Balatonakarattya",
    "Csobád",
    "Csókakő",
    "Csoma",
    "Fót",
    "Csongrád",
    "Csongrád",
    "Kiskunfélegyháza",
    "Csopak",
    "Balatonkövesd",
    "Csorna",
    "Csorvás",
    "Csorvás",
    "Csömödér",
    "Csömör",
    "Csörög",
    "Mezőtúr",
    "Csurgó",
    "Dabas",
    "Dabronc",
    "Dad",
    "Darány",
    "Som",
    "Debrecen",
    "Debrecen",
    "Debrecen",
    "Debrecen",
    "Decs",
    "Dejtár",
    "Délegyháza",
    "Budapest",
    "Demecser",
    "Csánig",
    "Derecske",
    "Derecske",
    "Deszk",
    "Dévaványa",
    "Devecser",
    "Gárdony",
    "Diósjenő",
    "Debrecen",
    "Dombóvár",
    "Újdombóvár",
    "Dombóvár",
    "Újdombóvár",
    "Szentes",
    "Dorog",
    "Döbrököz",
    "Nagymaros",
    "Dömsöd",
    "Drégelypalánk",
    "Drégelypalánk",
    "Nagyoroszi",
    "Dubicsány",
    "Dudar",
    "Dudar",
    "Dunaalmás",
    "Dunaharaszti",
    "Dunaharaszti",
    "Dunaharaszti",
    "Dunaharaszti",
    "Százhalombatta",
    "Dunakeszi",
    "Dunakeszi",
    "Dunakeszi",
    "Dunaújváros",
    "Dunaújváros",
    "Dunavarsány",
    "Dúzs",
    "Ebes",
    "Écs",
    "Ecser",
    "Edelény",
    "Edelény",
    "Eger",
    "Eger",
    "Felnémet",
    "Eger",
    "Egerfarmos",
    "Balassagyarmat",
    "Eger",
    "Vasboldogasszony",
    "Rábacsanak",
    "Egyek",
    "Szigetcsép",
    "Egyházasrádóc",
    "Tiszavasvári",
    "Kunhegyes",
    "Emőd",
    "Enese",
    "Eperjeske",
    "Eplény",
    "Ercsi",
    "Érd",
    "Érd",
    "Érd",
    "Budapest",
    "Érd",
    "Szegilong",
    "Veresegyház",
    "Kunfehértó",
    "Erdőtelek",
    "Esztergom",
    "Esztergom-Kertváros",
    "Esztergom-Kertváros",
    "Ete",
    "Nyergesújfalu",
    "Fábiánsebestyén",
    "Fácánkert",
    "Farád",
    "Farmos",
    "Örményes",
    "Fehérgyarmat",
    "Feldebrő",
    "Segesd",
    "Tatabánya",
    "Felsőgalla",
    "Göd",
    "Felsőjánosfa",
    "Felsőlajos",
    "Lajosmizse",
    "Felsőmocsolád",
    "Felsőpakony",
    "Felsőrajk",
    "Felsőzsolca",
    "Keszthely",
    "Békéscsaba",
    "Fényeslitke",
    "Verőce",
    "Budapest",
    "Budapest XVIII. kerülete",
    "Fertőboz",
    "Fertőszentmiklós",
    "Fertőd",
    "Budapest III. kerülete",
    "Fityeház",
    "Vilmány",
    "Fonyód",
    "Fonyód",
    "Encs",
    "Fót",
    "Fót",
    "Lökösháza",
    "Fót",
    "Balatonakali",
    "Ugod",
    "Füle",
    "Fülöpszállás",
    "Békéscsaba",
    "Füzesabony",
    "Nyíregyháza",
    "Füzesgyarmat",
    "Füzesgyarmat",
    "Gacsály",
    "Gádoros",
    "Petőfiszállás",
    "Galgaguta",
    "Galgagyörk",
    "Galgahévíz",
    "Galgamácsa",
    "Gárdony",
    "Gátér",
    "Gecse",
    "Gégény",
    "Gelse",
    "Gencsapáti",
    "Gencsapáti",
    "Gic",
    "Mindszentgodisa",
    "Gógánfa",
    "Tállya",
    "Göd",
    "Gödöllő",
    "Gödöllő",
    "Gödöllő",
    "Gödöllő",
    "Gödöllő",
    "Gödöllő",
    "Gönc",
    "Göncruszka",
    "Nyírtelek",
    "Gutorfölde",
        "Gyál",
    "Gyál",
    "Zákány",
    "Gyenesdiás",
    "Gyomaendrőd",
    "Dabas",
    "Gyón",
    "Orosháza",
    "Gyömöre",
    "Gyömöre",
    "Gyömrő",
    "Királyegyháza",
    "Gyöngyös",
    "Gyöngyösfalu",
    "Gyöngyöshalász",
    "Szombathely",
    "Győr",
    "Győr",
    "Győrasszonyfa",
    "Győr",
    "Győr",
    "Győrszemere",
    "Győr",
    "Győrtelek",
    "Győrtelek",
    "Győrvár",
    "Gyula",
    "Gyula",
    "Gyüre",
    "Hajdúböszörmény",
    "Hajdúdorog",
    "Hajdúhadház",
    "Hajdúnánás",
    "Hajdúnánás",
    "Hajdúsámson",
    "Debrecen",
    "Józsa",
    "Hajdúszoboszló",
    "Hajdúböszörmény",
    "Hajdúvid",
    "Hajmáskér",
    "Tiszalök",
    "Debrecen",
    "Szarvas",
    "Felpéc",
    "Halmaj",
    "Jánossomorja",
    "Jánossomorja",
    "Szentgotthárd",
    "Harka",
    "Harkakötöny",
    "Budapest XXII. kerülete",
    "Budapest II. kerülete",
    "Budapest IX. kerülete",
    "Hatvan",
    "Hegyeshalom",
    "Hegyfalu",
    "Vilmány",
    "Hejőkeresztúr",
    "Szentes",
    "Herceghalom",
    "Bia",
    "Herend",
    "Hernád",
    "Újhartyán",
    "Bőcs",
    "Hernádszurdok",
    "Kecskemét",
    "Hetényegyháza",
    "Kecskemét",
    "Hetényegyháza",
    "Hetvehely",
    "Heves",
    "Hevesvezekény",
    "Hévízgyörk",
    "Hidas",
    "Hidasnémeti",
    "Hodász",
    "Hódmezővásárhely",
    "Hódmezővásárhely",
    "Tiszaföldvár",
    "Szigetszentmárton",
    "Hort",
    "Hortobágy",
    "Hortobágy",
    "Körmend",
    "Üllő",
    "Szerep",
    "Hugyag",
    "Kerepes",
    "Budapest",
    "Iklad",
    "Iklad",
    "Iklódbördőce",
    "Ikrény",
    "Budapest XVI. kerülete",
    "Balatonfenyves",
    "Ináncs",
    "Inárcs",
    "Szolnok",
    "Ipolyszög",
    "Ipolytarnóc",
    "Ipolyvece",
    "Isaszeg",
    "Budapest",
    "Veresegyház",
    "Iváncsa",
    "Balogunyom",
    "Jákó",
    "Jánkmajtis",
    "Jánoshalma",
    "Jánosháza",
    "Budapest",
    "Jánossomorja",
    "Szatymaz",
    "Jászapáti",
    "Jászárokszállás",
    "Jászberény",
    "Jászboldogháza",
    "Jászdózsa",
    "Jászfényszaru",
    "Jászkisér",
    "Jászkisér",
    "Jászladány",
    "Jászszentlászló",
    "Jobbágyi",
    "Perkupa",
    "Debrecen",
    "Józsa",
    "Szigetszentmiklós",
    "Gyula",
    "Budapest VIII. kerülete",
    "Gádoros",
    "Kaba",
    "Kákics",
    "Kál",
    "Kállósemjén",
    "Szombathely",
    "Kámon",
    "Balástya",
    "Kápolna",
    "Kápolnásnyék",
    "Kapoly",
    "Kaposfő",
    "Kaposvár",
    "Taszár",
    "Kaposmérő",
    "Kapospula",
    "Kaposvár",
    "Kaposújlak",
    "Kaposvár",
    "Kaposszekcső",
    "Kaposvár",
    "Balatonalmádi",
    "Kapuvár",
    "Karácsond",
    "Budapest XXI. kerülete",
    "Karád",
    "Karakószörcsök",
    "Karcag",
    "Karcag",
    "Kardoskút",
    "Zirc",
    "Budapest XXII. kerülete",
    "Budapest III. kerülete",
    "Kecskemét",
    "Kazincbarcika",
    "Kazincbarcika",
    "Kecskéd",
    "Kecskéd",
    "Kecskemét",
    "Kecskemét",
    "Kecskemét",
    "Kék",
    "Kelebia",
    "Kelenföld",
    "KÖKI","Köki", "Kőbánya-Kispest",
    "Szabadka",
    "Budapest",
    "Budapest",
    "Kemecse",
    "Kemendollár",
    "Kemenesmihályfa",
    "Kemenespálfa",
    "Budapest IX. kerülete",
    "Kenderes",
    "Kengyel",
    "Tiszakécske",
    "Kerekegyháza",
    "Kerekegyháza",
    "Kerepes",
    "Kerta",
    "Keszőhidegkút",
    "Keszthely",
    "Kétegyháza",
    "Kéthely",
    "Kétpó",
    "Csongrád",
    "Egerfarmos",
    "Károlyháza",
    "Királyegyháza",
    "Kisbárapáti",
    "Kisbér",
    "Nagyszénás",
    "Polgárdi",
    "Kisdobsza",
    "Kecskemét",
    "Tiszalök",
    "Kiskorpád",
    "Kisköre",
    "Kisköre",
    "Kiskőrös",
    "Szeged",
    "Kiskunfélegyháza",
    "Kiskunhalas",
    "Kiskunlacháza",
    "Kiskunmajsa",
    "Kismarja",
    "Kismaros",
    "Győr",
    "Győrszentiván",
    "Kiskunfélegyháza",
    "Kisnémedi",
    "Budapest XIX. kerülete",
    "Kistarcsa",
    "Kistarcsa",
    "Kistelek",
    "Kistelek",
    "Bátonyterenye",
    "Kisterenye",
    "Bátonyterenye",
    "Kistótfalu",
    "Szentes",
    "Kisújszállás",
    "Vác",
    "Kisvárda",
    "Kisvárda",
    "Kisvarsány",
    "Kiszombor",
    "Kiszombor",
    "Kisszállás",
    "Kisszekeres",
    "Csabacsűd",
    "Gyöngyös",
    "Gyöngyöspüspöki",
    "Lajosmizse",
    "Klotildliget",
    "Piliscsaba",
    "Kocsord",
    "Kocsord",
    "Komárom",
    "Komjáti",
    "Komló",
    "Komoró",
    "Kóny",
    "Balmazújváros",
    "Konyár",
    "Konyár",
    "Csongrád",
    "Kópháza",
    "Vizsoly",
    "Szegvár",
    "Budapest XXI. kerülete",
    "Budapest",
    "Budapest X. kerülete",
    "Budapest X. kerülete",
    "Budapest X. kerülete",
    "Budapest",
    "Sirok",
    "Körmend",
    "Környe",
    "Körösladány",
    "Kőszeg",
    "Kőszeg",
    "Kötegyán",
    "Mohács",
    "Barcs",
    "Budapest IX. kerülete",
    "Kulcs",
    "Kunfehértó",
    "Kunszentmárton",
    "Kunhegyes",
    "Kunmadaras",
    "Városföld",
    "Kunszentmárton",
    "Kunszentmiklós",
    "Kurd",
    "Kutas",
    "Hódmezővásárhely",
    "Külsővat",
    "Budapest XXI. kerülete",
    "Lábatlan",
    "Lajosmizse",
    "Lajosmizse",
    "Lakitelek",
    "Lázi",
    "Leányvár",
    "Mosonszentmiklós",
    "Lengyeltóti",
    "Lenti",
    "Lenti",
    "Lepsény",
    "Levél",
    "Magy",
    "Ófehértó",
    "Litke",
    "Olaszfalu",
    "Lőkösháza",
    "Lőrinci",
    "Lövő",
    "Ludányhalászi",
    "Ludas",
    "Lukácsháza",
    "Lukácsháza",
    "Mád",
    "Piliscsaba",
    "Maglód",
    "Maglód",
    "Alsómocsolád",
    "Magyarbánhegyes",
    "Magyarbóly",
    "Magyarcsanád",
    "Magyarhertelend",
    "Zsebeháza",
    "Verőce",
    "Verőce",
    "Magyarnándor",
    "Magyarszék",
    "Maklár",
    "Makó",
    "Mándok",
    "Marcali",
    "Egyházaskesző",
    "Budapest II. kerülete",
    "Gödöllő",
    "Balatonmáriafürdő",
    "Máriapócs",
    "Balatonmáriafürdő",
    "Vác",
    "Márkó",
    "Márok",
    "Mindszent",
    "Martfű",
    "Martonvásár",
    "Baja",
    "Mátészalka",
    "Mátraballa",
    "Mátraderecske",
    "Mátramindszent",
    "Tar",
    "Mátraverebély",
    "Lőrinci",
    "Budapest XVI. kerülete",
    "Budapest XVI. kerülete",
    "Budapest XVI. kerülete",
    "Máza",
    "Pécs",
    "Komló",
    "Mecsekpölöske",
    "Medgyesegyháza",
    "Jászberény",
    "Méhkerék",
    "Mélykút",
    "Mende",
    "Győr",
    "Győr",
    "Kecskemét",
    "Méra",
    "Mernye",
    "Mesztegnyő",
    "Mezőberény",
    "Mezőcsát",
    "Mezőfalva",
    "Mezőhegyes",
    "Mezőnyárád",
    "Mezőkovácsháza",
    "Mezőkovácsháza",
    "Mezőkövesd",
    "Mezőkövesd",
    "Mezőlak",
    "Mezőpeterd",
    "Mezőtárkány",
    "Mezőtúr",
    "Mezőzombor",
    "Mihályháza",
    "Kecskemét",
    "Mikófalva",
    "Budapest XXIII. kerülete",
    "Mindszent",
    "Miskolc",
    "Miskolc",
    "Mogyoród",
    "Fehérvárcsurgó",
    "Mohács",
    "Mohora",
    "Molvány",
    "Monor",
    "Monorierdő",
    "Mónosbél",
    "Mór",
    "Mórágy",
    "Mosonmagyaróvár",
    "Mosonszolnok",
    "Mőcsény",
    "Murakeresztúr",
    "Murony",
    "Budapest IX. kerülete",
    "Nagyatád",
    "Bátonyterenye",
    "Nagybátony",
    "Nagyberki",
    "Nagycenk",
    "Nagycsécs",
    "Debrecen",
    "Nagydobos",
    "Nagydorog",
    "Nagyecsed",
    "Nagyér",
    "Nagyesztergár",
    "Nagygyimót",
    "Balmazújváros",
    "Budapest XVI. kerülete",
    "Nagyigmánd",
    "Nagykálló",
    "Nagykanizsa",
    "Nagykapornak",
    "Nagykarácsony",
    "Nagykarácsony",
    "Nagykáta",
    "Nagykereki",
    "Nagykőrös",
    "Nagylak",
    "Nagylak",
    "Gyomaendrőd",
    "Endrőd",
    "Nagylók",
    "Nagymányok",
    "Nagymaros",
    "Nagymaros",
    "Nagynyárád",
    "Kecskemét",
    "Nagyoroszi",
    "Nagypeterd",
    "Nagyrákos",
    "Nagyrécse",
    "Nagysimonyi",
    "Nagyszekeres",
    "Nagyszénás",
    "Nagyszentjános",
    "Budapest XXII. kerülete",
    "Budapest XXII. kerülete",
    "Nagytőke",
    "Nagyút",
    "Nagyvisnyó",
    "Napkor",
    "Nemesgörzsöny",
    "Kisapáti",
    "Nemeske",
    "Nemeskeresztúr",
    "Nemeskocs",
    "Nemti",
    "Neszmély",
    "Nógrád",
    "Nógrádkövesd",
    "Nógrádszakál",
    "Budapest",
    "Novajidrány",
    "Nyárlőrinc",
    "Nyárlőrinc",
    "Nyárlőrinc",
    "Nyárlőrinc",
    "Nyársapát",
    "Nyékládháza",
    "Nyergesújfalu",
    "Nyergesújfalu",
    "Nyírábrány",
    "Nyíradony",
    "Nyírbátor",
    "Nyírbogát",
    "Nyírbogdány",
    "Nyírcsaholy",
    "Nyírcsászári",
    "Nyíregyháza",
    "Nyíregyháza",
    "Nyírgelse",
    "Nyugati",
    "Sümeg",
    "Nyírmada",
    "Nyírmeggyes",
    "Nyírmihálydi",
    "Nyírtelek",
    "Budapest VI. kerülete",
    "Nyúl",
    "Tiszakécske",
    "Budapest III. kerülete",
    "Ócsa",
    "Ófehértó",
    "Egyek",
    "Okány",
    "Okorág",
    "Zirc",
    "Vámosújfalu",
    "Onga",
    "Paks",
    "Ópályi",
    "Nyíregyháza",
    "Orosháza",
    "Orosháza",
    "Orosháza",
    "Orosháza",
    "Oroszlány",
    "Ortaháza",
    "Sárvár",
    "Osztopán",
    "Ózd",
    "Sajóvárkony",
    "Ózd",
    "Őcsény",
    "Ököritófülpös",
    "Ölbő",
    "Őrbottyán",
    "Öreglak",
    "Őrhalom",
    "Őriszentpéter",
    "Örkény",
    "Budapest XIV. kerülete",
    "Őrtilos",
    "Örvényes",
    "Öskü",
    "Balástya",
    "Öttevény",
    "Ötvöskónyi",
    "Pácsony",
    "Pakod",
    "Paks",
    "Paks",
    "Abony",
    "Vadosfa",
    "Palkonya",
    "Balatonfenyves",
    "Pamuk",
    "Pankasz",
    "Pannonhalma",
    "Szentendre",
    "Pápa",
    "Pápateszér",
    "Budapest XXI. kerülete",
    "Pásztó",
    "Pátroha",
    "Piliscsaba",
    "Pécel",
    "Pécs",
    "Pécs",
    "Pécs",
    "Pécsudvard",
    "Penyige",
    "Perkupa",
    "Budapest XX. kerülete",
    "Budapest XX. kerülete",
    "Budapest VI. kerülete",
    "Budapest XVIII. kerülete",
    "Budapest XVIII. kerülete",
    "Budapest XVIII. kerülete",
    "Péterhida",
    "Pétfürdő",
    "Petőfiszállás",
    "Petőfiszállás",
    "Kiskunfélegyháza",
    "Petőháza",
    "Kápolnásnyék",
    "Pilis",
    "Piliscsaba",
    "Piliscsév",
    "Pilisjászfalu",
    "Pilisvörösvár",
    "Pincehely",
    "Pinnye",
    "Szolnok",
    "Pirtó",
    "Pirtó",
    "Lábatlan",
    "Pitvaros",
    "Pocsaj",
    "Serényfalva",
    "Pókaszepetk",
    "Polgárdi",
    "Polgárdi",
    "Polgárdi",
    "Pomáz",
    "Porcsalma",
    "Poroszló",
    "Bögöt",
    "Porrogszentkirály",
    "Jászberény",
    "Csesznek",
    "Pósfa",
    "Pörböly",
    "Pötréte",
    "Mezőtúr",
    "Lengyeltóti",
    "Nagygyimót",
    "Tiszaszentimre",
    "Pusztamonostor",
    "Kétpó",
    "Pusztaszabolcs",
    "Mende",
    "Fábiánsebestyén",
    "Putnok",
    "Galgagyörk",
    "Püspökladány",
    "Püspökladány",
    "Püspökmolnári",
    "Várkesző",
    "Rábapatona",
    "Rábapordány",
    "Rábatamási",
    "Rácalmás",
    "Ráckeve",
    "Gutorfölde",
    "Rajka",
    "Rakamaz",
    "Vaja",
    "Budapest X. kerülete",
    "Budapest XVII. kerülete",
    "Budapest XVII. kerülete",
    "Budapest XIV. kerülete",
    "Budapest XVII. kerülete",
    "Budapest",
    "Budapest XVII. kerülete",
    "Budapest XVII. kerülete",
    "Budapest XV. kerülete",
    "Budapest",
    "Budapest",
    "Budapest XVI. kerülete",
    "Raposka",
    "Nógrádszakál",
    "Rátka",
    "Rátót",
    "Ravazd",
    "Recsk",
    "Rédics",
    "Regöly",
    "Kaposvár",
    "Répcelak",
    "Sárbogárd",
    "Sárbogárd",
    "Révfülöp",
    "Rigács",
    "Budapest III. kerülete",
    "Románd",
    "Rozsály",
    "Röszke",
    "Váchartyán",
    "Drégelypalánk",
    "Sajóecseg",
    "Sajóivánka",
    "Sajókeresztúr",
    "Sajónémeti",
    "Sajószentpéter",
    "Sajószentpéter",
    "Sajószöged",
    "Salgótarján",
    "Salgótarján",
    "Salköveskút",
    "Sáp",
    "Sáránd",
    "Sárbogárd",
    "Sáregres",
    "Sárhida",
    "Sarkad",
    "Sarkad",
    "Sarkadkeresztúr",
    "Sárosd",
    "Sárospatak",
    "Sárrétudvari",
    "Sárvár",
    "Sásd",
    "Budapest XVI. kerülete",
    "Sátoraljaújhely",
    "Sávoly",
    "Segesd",
    "Sellye",
    "Kiskunfélegyháza",
    "Lőrinci",
    "Seregélyes",
    "Seregélyes",
    "Simontornya",
    "Siófok",
    "Siójut",
    "Siófok",
    "Szarvas",
    "Sirok",
    "Soltszentimre",
    "Soltvadkert",
    "Solymár",
    "Solymár",
    "Som",
    "Somlóvásárhely",
    "Somodor",
    "Somogyaszaló",
    "Somogyjád",
    "Somogymeggyes",
    "Somogyszentpál",
    "Somogyszentpál",
    "Somogyszob",
    "Somogyudvarhely",
    "Somogyvár",
    "Somoskőújfalu",
    "Sopron",
    "Sopron",
    "Sopronkövesd",
    "Sorkifalud",
    "Budapest XXIII. kerülete",
    "Budapest XXIII. kerülete",
    "Budapest XXIII. kerülete",
    "Budapest",
    "Budapest IX. kerülete",
    "Budapest XX. kerülete",
    "Nyíregyháza",
    "Nyíregyháza",
    "Sumony",
    "Sülysáp",
    "Sümeg",
    "Sümeg",
    "Süttő",
    "Süttő",
    "Budapest",
    "Szabadbattyán",
    "Szabadegyháza",
    "Siófok",
    "Siófok",
    "Budapest XXI. kerülete",
    "Pilisvörösvár",
    "Budapest XVI. kerülete",
    "Szabadszállás",
    "Szajol",
    "Szakály",
    "Szákszend",
    "Szalatnak",
    "Szalonna",
    "Szántód",
    "Szany",
    "Szárliget",
    "Szárazd",
    "Szárföld",
    "Kecskemét",
    "Hetényegyháza",
    "Szárliget",
    "Szár",
    "Szarvas",
    "Szarvaskő",
    "Szászberek",
    "Szászvár",
    "Kishajmás",
    "Szatymaz",
    "Százhalombatta",
    "Budapest",
    "Budapest",
    "Szécsény",
    "Szeged",
    "Szeged",
    "Szeghalom",
    "Szegi",
    "Szegvár",
    "Székesfehérvár",
    "Székesfehérvár",
    "Székkutas",
    "Szekszárd",
    "Szekszárd",
    "Szelevény",
    "Solymár",
    "Jászkisér",
    "Budapest XVIII. kerülete",
    "Szendrő",
    "Szendrő",
    "Szendrőlád",
    "Budapest XXI. kerülete",
    "Budapest XXIII. kerülete",
    "Budapest",
    "Szenta",
    "Vámospércs",
    "Szentdénes",
    "Szentendre",
    "Szentes",
    "Orosháza",
    "Szentgál",
    "Szentgotthárd",
    "Budakalász",
    "Mogyoród",
    "Budapest III. kerülete",
    "Sorkifalud",
    "Szentlőrinc",
    "Szentmártonkáta",
    "Balatonszepezd",
    "Budapest",
    "Budapest II. kerülete",
    "Budapest III. kerülete",
    "Szerecseny",
    "Szerencs",
    "Szerep",
    "Szigetcsép",
    "Szigethalom",
    "Szigethalom",
    "Szigetszentmárton",
    "Szigetszentmiklós",
    "Szigetszentmiklós",
    "Szigetszentmiklós",
    "Szigetvár",
    "Szihalom",
    "Lakitelek",
    "Szikszó",
    "Szikszó",
    "Sopronnémeti",
    "Kerepes",
    "Szilvásvárad",
    "Szilvásvárad",
    "Szirmabesenyő",
    "Szob",
    "Szob",
    "Szokolya",
    "Szolnok",
    "Szombathely",
    "Szombathely",
    "Szorgalmatos",
    "Sződliget",
    "Szőkéd",
    "Sülysáp",
    "Komárom",
    "Szőny",
    "Komárom",
    "Szeged",
    "Szőreg",
    "Szőreg",
    "Szurdokpüspöki",
    "Szügy",
    "Tab",
    "Tabdi",
    "Táborfalva",
    "Kiskunmajsa",
    "Taksony",
    "Taktaharkány",
    "Taktaszada",
    "Tállya",
    "Majsamiklósvár",
    "Tamási",
    "Nyíradony",
    "Tápiógyörgye",
    "Tápiószecső",
    "Tápiószele",
    "Tápiószentmárton",
    "Tapolca",
    "Tápszentmiklós",
    "Tar",
    "Tarcal",
    "Tarjánpuszta",
    "Tarnaszentmária",
    "Tarnaszentmiklós",
    "Tárnok",
    "Taszár",
    "Tát",
    "Tata",
    "Tóváros",
    "Tatabánya",
    "Öreglak",
    "Hajdúnánás",
    "Téglás",
    "Telekgerendás",
    "Tengelic",
    "Budapest XXII. kerülete",
    "Tiborszállás",
    "Budapest III. kerülete",
    "Budapest IX. kerülete",
    "Tiszaalpár",
    "Tiszaalpár",
    "Tiszaalpár",
    "Tiszabezdéd",
    "Tiszaeszlár",
    "Tiszaföldvár",
    "Tiszafüred",
    "Tiszafüred",
    "Tiszajenő",
    "Tiszajenő",
    "Tiszakécske",
    "Tiszalök",
    "Tiszalúc",
    "Tiszaújváros",
    "Tiszasas",
    "Tiszaszentimre",
    "Újszentiván",
    "Tiszaszőlős",
    "Tiszatenyő",
    "Tiszaug",
    "Tiszaug",
    "Tiszaújváros",
    "Tiszavárkony",
    "Tiszavasvári",
    "Nyíradony",
    "Debrecen",
    "Tófej",
    "Tokaj",
    "Tokod",
    "Tolna",
    "Tolnanémedi",
    "Tompa",
    "Szabadka",
    "Battonya",
    "Kaposvár",
    "Tormásliget",
    "Tornanádaska",
    "Tornyospálca",
    "Budapest XXIII. kerülete",
    "Tószeg",
    "Tótkomlós",
    "Tata",
    "Tóváros",
    "Tököl",
    "Törökbálint",
    "Törökszentmiklós",
    "Lakitelek",
    "Tunyogmatolcs",
    "Tunyogmatolcs",
    "Tura",
    "Tuzsér",
    "Türje",
    "Zalaszentgrót",
    "Tüskevár",
    "Ugod",
    "Tiszakécske",
    "Újfehértó",
    "Újkenéz",
    "Újkér",
    "Keresztény",
    "Budapest XIV. kerülete",
    "Budapest XIII. kerülete",
    "Újszász",
    "Szeged",
    "Újszentiván",
    "Szőreg",
    "Újudvar",
    "Árpádhalom",
    "Baracs",
    "Ukk",
    "Kecskemét",
    "Uzsa",
    "Uzsa",
    "Üllő",
    "Püspökladány",
    "Budapest III. kerülete",
    "Vác",
    "Vác",
    "Váchartyán",
    "Váckisújfalu",
    "Vácrátót",
    "Budapest",
    "Vadna",
    "Vaja",
    "Vajta",
    "Vámoscsalád",
    "Vámosgyörk",
    "Vámospércs",
    "Váralja",
    "Várda",
    "Neszmély",
    "Városföld",
    "Kiskunfélegyháza",
    "Városlőd",
    "Kislőd",
    "Budapest",
    "Várpalota",
    "Vásárosdombó",
    "Vásárosnamény",
    "Vásárosnamény",
    "Vasegerszeg",
    "Budapest XIV. kerülete",
    "Vasvár",
    "Vaszar",
    "Vecsés",
    "Vecsés",
    "Budapest XXI. kerülete",
    "Tiszasziget",
    "Végegyháza",
    "Végegyháza",
    "Velence",
    "Velence",
    "Vép",
    "Veresegyház",
    "Verőce",
    "Verpelét",
    "Vértesszőlős",
    "Veszkény",
    "Veszprém",
    "Veszprémvarsány",
    "Vésztő",
    "Beled",
    "Veresegyház",
    "Lakitelek",
    "Villány",
    "Villánykövesd",
    "Szatymaz",
    "Vinár",
    "Bakonyszentlászló",
    "Budapest",
    "Tiszanagyfalu",
    "Vásárosnamény",
    "Vitnyéd",
    "Vízvár",
    "Vokány",
    "Vonyarcvashegy",
    "Pilisvörösvár",
    "Vörs",
    "Salgótarján",
    "Zagyvarékas",
    "Záhony",
    "Zajta",
    "Zákány",
    "Batyk",
    "Zalacséb",
    "Zalaegerszeg",
    "Zalaegerszeg",
    "Zalagyömörő",
    "Zalakomár",
    "Zalalövő",
    "Zalalövő",
    "Zalaszentgrót",
    "Zalaszentgyörgy",
    "Zalaszentiván",
    "Zalaszentjakab",
    "Vasboldogasszony",
    "Zalaszentmihály",
    "Zamárdi",
    "Zamárdi",
    "Zánka",
    "Zánka",
    "Zebegény",
    "Hajdúböszörmény",
    "Zichyújfalu",
    "Zirc",
    "Zugló",
    "Csurgó",
    "Budapest XIV. kerülete",
    "Kistarcsa",
    "Gönc"
]
    
