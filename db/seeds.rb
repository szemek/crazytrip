# coding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

point = Point.new
point.y = 50.0546989441
point.x = 19.9102993011
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Dom Zwierzyniecki'
place.description = 'Urządzenie mieszkania należącego na początku XX w. do majstra murarskiego Jana Florczyka, a złożonego z dwu pokoi i kuchni, zrekonstruowano w oparciu o wspomnienia starszych mieszkańców Zwierzyńca.'
place.save

point = Point.new
point.y = 50.0476989746
point.x = 19.9437999725
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Dom Esterki'
place.description = 'Gotycki dom ulokowany przy ulicy Krakowskiej na Kazimierzu, wiązany z postacią Esterki, kochanki króla Kazimierza Wielkiego. Obecnie mieści się tu filia Muzeum Entograficznego.'
place.save

point = Point.new
point.y = 50.047000885
point.x = 19.9440002441
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół oo. Bonifratrów'
place.description = 'Fasada kościoła, autorstwa osiadłego w Polsce rzymskiego architekta Franciszka Placidiego, znamionuje najwyższy kunszt. Jest ona jednym z najciekawszych przykładów architektury późnobarokowej w tej części Europy.'
place.save

point = Point.new
point.y = 50.0494003296
point.x = 19.9445991516
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół Bożego Ciała'
place.description = 'Kościół ten ufundowany został jako fara - kościół parafialny - nowego miasta Kazimierza, założonego przez króla Kazimierza Wielkiego w 1335 roku. Król Władysław Jagiełło oddał go w opiekę kanonikom regularnym laterańskim.'
place.save

point = Point.new
point.y = 50.0491981506
point.x = 19.9409999847
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół św. Katarzyny i Małgorzaty'
place.description = 'Kościół powstał z fundacji króla Kazimierza Wielkiego. Jest doskonałym przykładem gotyckiej architektury sakralnej na krakowskim Kazimierzu. Przez cały czas kościołem opiekuje się zakon Augustianów'
place.save

point = Point.new
point.y = 50.0486984253
point.x = 19.9440002441
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Plac Wolnica i Ratusz Kazimierski'
place.description = 'Dzisiejszy plac Wolnica jest częścią dawnego rynku miasta Kazimierza. Rynek ów, wytyczony z rozmachem niedługo po lokacji miasta (1335 r.), swą powierzchnią niewiele ustępował krakowskiemu'
place.save

point = Point.new
point.y = 50.0481987
point.x = 19.9433002472
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Ulica Krakowska'
place.description = 'Ulica ta była od zawsze główną osią urbanistyczną miasta Kazimierza, to przy niej budowano najsolidniejsze domy i lokowano składy handlowe. Pokrywała się z odcinkiem tzw. traktu solnego.'
place.save

point = Point.new
point.y = 50.0523986816
point.x = 19.9365005493
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Stradom'
place.description = 'Stradom, średniowieczną osadę leżącą u stóp Wawelu, zamieszkiwali głównie rzemieślnicy i ludzie służący na zamku. W roku 1419 król Władysław Jagiełło włączył Stradom do Kazimierz'
place.save

point = Point.new
point.y = 50.052898407
point.x = 19.9444999695
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Synagoga Tempel'
place.description = 'Specyfiką postępowego programu synagogi Tempel były wygłaszane tu raz w tygodniu (na przemian) kazania w języku polskim i niemieckim. Kolejną innowacją na przekór tradycji, było dopuszczenie do śpiewu - obok kantora i chóru - kobiet.'
place.save

point = Point.new
point.y = 50.0522994995
point.x = 19.9484004974
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Synagoga Poppera'
place.description = 'Ufundowana w 1620 r. przez Wolfa Poppera, potentata finansowego na skalę europejską, była ponoć synagogą najbogatszą.  Popper w czasie rozmyślań stawał podobno na jednej nodze, stąd jego przezwisko Bocian'
place.save

point = Point.new
point.y = 50.0526008606
point.x = 19.947599411
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Synagoga i Cmentarz Remuh'
place.description = 'Synagoga ufundowana dla Mojżesza Isserlesa, zwanego Remuh, rabina, filozofa, talmudysty. Był otaczany tak wielkim szacunkiem, że miejsce, w którym zawsze się modlił do dziś pozostaje wolne w czasie nabożeństw'
place.save

point = Point.new
point.y = 50.051399231
point.x = 19.9486999512
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Stara Synagoga'
place.description = 'Najstarsza krakowska synagoga powstała prawdopodobnie wkrótce po przymusowym exodusie krakowskich Żydów na Kazimierz (dekret króla Jana Olbrachta z 1495 roku).'
place.save

point = Point.new
point.y = 50.051700592
point.x = 19.9461994171
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Synagoga Izaaka (Ajzyka)'
place.description = 'Zbudowana w latach 1638-1644 z fundacji Izaaka (Ajzyka) Jakubowicza, kupca i bankiera, seniora gminy żydowskiej. Powstała dzięki sile argumentów zasobnego fundatora, którymi przekonał samego króla...'
place.save

point = Point.new
point.y = 50.0516014099
point.x = 19.9449996948
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Plac Nowy'
place.description = 'Okolice te zajęli po roku 1500 Żydzi wypędzeni z Czech. Obecnie w parterowych lokalach powstało wiele przytulnych kawiarń i barów z wystrojem nawiązującym niekiedy do atmosfery dawnego Kazimierza.'
place.save

point = Point.new
point.y = 50.0540008545
point.x = 19.9351997375
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Wawel – wzgórze i zamek królewski'
place.description = 'Wg niektórych językoznawców słowo wąwel miało oznaczać suche miejsce, wznoszące się nad mokradłami. Być może dlatego nasi praprzodkowie uczynili go swoją siedzibą?'
place.save

point = Point.new
point.y = 50.0653991699
point.x = 19.9416007996
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Barbakan'
place.description = 'Perła krakowskich fortyfikacji – gotycki barbakan, zwany też bardziej swojsko Rondlem – powstał w związku z narastającym w końcu XV wieku zagrożeniem ze strony Turków.'
place.save

point = Point.new
point.y = 50.0647010803
point.x = 19.941400528
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Brama Floriańska'
place.description = 'Bramę tą zwano także Porta Gloriae, czyli Bramą Chwały. Otwierała Drogę Królewską (Via Regia). Przez nią do miasta wkraczali królowie po zwycięskich bitwach, dyplomaci, znane osobistości odwiedzające Kraków. Tędy prowadziła trasa pochodów koronacyjnych i pogrzebowych monarchów.'
place.save

point = Point.new
point.y = 50.0505981445
point.x = 19.9466991425
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kazimierz – historia miasta i krakowskich Żydów'
place.description = 'W roku 1335 król Kazimierz Wielki podpisał przywilej prawa magdeburskiego, na podstawie którego lokowano nowe miasto Kazimierz. Przedsięwzięcie to miało istotne znaczenie gospodarczo-strategiczne, bowiem miasto miało być dla Krakowa nie tylko partnerem handlowym, ale za sprawą solidnych obwarowań również swego rodzaju tarczą, zabezpieczającą gród od południa.'
place.save

point = Point.new
point.y = 50.0588989258
point.x = 19.9374008179
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Plac Wszystkich Świętych'
place.description = 'Plac ten zajmuje dziś przestrzeń pomiędzy kościołem oo. Franciszkanów i ul. Grodzką. Przed lokacją miasta (1257 r.) wraz z przyległym placem Dominikańskim należał do położonej tu osady targowej.'
place.save

point = Point.new
point.y = 50.0583992004
point.x = 19.9370994568
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Pałac Wielopolskich'
place.description = 'Pałac wzniósł w pierwszej połowie XVI w. hetman Jan Tarnowski w duchu reprezentacyjnej, renesansowej rezydencji. Z tamtej budowli zachowały się okna o charakterystycznych podziałach i kamiennych obramieniach oraz krenelażowa attyka.'
place.save

point = Point.new
point.y = 50.0583992004
point.x = 19.9375991821
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Pawilon Wyspiańskiego'
place.description = 'Nowoczesne centrum konferencyjno-wystawiennicze, którego budowę zapoczątkowała idea reżysera Andrzeja Wajdy. W fasadę wbudowano trzy witraże według nigdy wcześniej niezrealizowanych projektów Stanisława Wyspiańskiego'
place.save

point = Point.new
point.y = 50.0640983582
point.x = 19.9428005219
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Teatr im. Juliusza Słowackiego'
place.description = 'Jak głosi napis na fasadzie teatralnego gmachu - oto wkład Krakowa w tworzenie i zachowanie narodowej sztuki. Miejsce wielu głośnych premier i jeden z najbardziej znanych teatrów w Polsce.'
place.save

point = Point.new
point.y = 50.0614013672
point.x = 19.9361991882
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Wieża Ratuszowa'
place.description = 'Wieża jest jedyną pozostałością po budynku dawnego krakowskiego ratusza. Zbudowana z kamienia wapiennego i cegły, była jedną z najokazalszych w średniowiecznej Polsce.'
place.save

point = Point.new
point.y = 50.0849990845
point.x = 20.0293006897
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół Arka Pana'
place.description = 'Kościół Matki Bożej Królowej Polski, czyli Arkę Pana, nazwaną tak ze względu na charakterystyczny kształt, zaprojektował Wojciech Pietrzyk. Świątynia jest jednym z najbardziej charakterystycznych i rozpoznawalnych obiektów w dzielnicy.'
place.save

point = Point.new
point.y = 50.0805015564
point.x = 20.0338001251
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Teatr Ludowy'
place.description = 'Słynne było niegdyś powiedzenie, że Nowa Huta może pochwalić się dwiema rzeczami: dobrą stalą i dobrym teatrem. Jednak początki nowohuckiego życia teatralnego były trudne'
place.save

point = Point.new
point.y = 50.0782012939
point.x = 20.0303001404
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Dawne Kino Świt'
place.description = 'Było to najpopularniejsze nowohuckie kino, które zainaugurowało swoją działalność w 1953 roku pokazem propagandowego filmu Trzy opowieści - trzech nowelek o budowie Nowej Huty.'
place.save

point = Point.new
point.y = 50.0793991089
point.x = 20.0352993011
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Krzyż Nowohucki'
place.description = 'Nowa Huta, jako pierwsze w Polsce idealne miasto socjalistyczne, miała pozostać miastem ateistycznym. Żeby móc zbudować kościół wierni musieli stoczyć - dosłownie - ciężkie boje.'
place.save

point = Point.new
point.y = 50.0732002258
point.x = 20.0375995636
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Aleja Róż'
place.description = 'Reprezentacyjna aleja Nowej Huty miała łączyć plac Centralny z placem Ratuszowym. Nic dziwnego, że to właśnie tu stanął pierwszy pomnik Włodzimierza Ijlicza Lenina.'
place.save

point = Point.new
point.y = 50.072101593
point.x = 20.0373001099
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Plac Centralny'
place.description = 'Do dziś jest głównym i najlepiej rozpoznawanym punktem Nowej Huty. Prowadzi przez niego każda trasa turystyczna, którą wytyczymy w tej dzielnicy. Plac i otaczające go budynki tworzą jednolitą całość.'
place.save

point = Point.new
point.y = 50.0652999878
point.x = 20.0463008881
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Szpital im. Stefana Żeromskiego'
place.description = 'Powstał w 1954 roku jako szpital miejski. Podobnie jak Centrum Administracyjne kombinatu stanowi doskonały przykład socrealistycznej architektury.'
place.save

point = Point.new
point.y = 50.0647010803
point.x = 20.0517997742
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół św. Bartłomieja'
place.description = 'Choć wzniesiony w średniowieczu, epoce anonimowych twórców, jego budowniczy wyrył na portalu wejściowym swoje imię i nazwisko oraz rok powstania świątyni.'
place.save

point = Point.new
point.y = 50.0644989014
point.x = 20.0536003113
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół i klasztor oo. Cystersów w Mogile'
place.description = 'Mogilski kościół Najświętszej Marii Panny i św. Wacława oraz towarzyszący mu zespół klasztorny są jednymi z najcenniejszych zabytków sakralnych Małopolski.'
place.save

point = Point.new
point.y = 50.0713005066
point.x = 20.049200058
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Osiedla Wandy i Willowe'
place.description = 'Pierwsze nowohuckie osiedla z pierwszym, wciąż zamieszkanym, blokiem z okresu przodowników pracy, na którym znajduje się okolicznościowa tablica. Na osiedlu Willowym położony jest pierwszy rynek Nowej Huty, zwany placem Pocztowym.'
place.save

point = Point.new
point.y = 50.0817985535
point.x = 20.0557003021
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Dworek Jana Matejki w Krzesławicach'
place.description = 'Niegdyś wieś, a dziś dzielnica Krakowa - Krzesławice - szczyci się długą historią.  Również sam dworek ma długie dzieje i... szczęście do wybitnych mieszkańców.'
place.save

point = Point.new
point.y = 50.0800018311
point.x = 20.0669994354
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Centrum Administracyjne huty'
place.description = 'Centrum Administracyjne dawnej Huty im. Lenina zalicza się do najlepszych przykładów architektury socrealizmu w Polsce. Zastosowane tu rozwiązania, choć powstały w XX wieku, nieprzypadkowo przywodzą na myśl styl renesansowy.'
place.save

point = Point.new
point.y = 50.0592002869
point.x = 19.9391002655
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół oo. Dominikanów'
place.description = 'Pierwsi dominikanie przybyli do Krakowa w 1222 roku z inicjatywy biskupa Iwo Odrowąża. Myśl dominikańską przywieźli do Polski jego bratankowie - Jacek i Czesław Odrowążowie, których wysłał w tym celu do założyciela zakonu, Dominika de Guzmán.'
place.save

point = Point.new
point.y = 50.0569000244
point.x = 19.9388999939
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół św. Piotra i Pawła'
place.description = 'Jezuici przybyli do Polski wkrótce po zakończeniu soboru trydenckiego w 1563 roku. Ich krakowska świątynia była pierwszą na terenie Polski, zbudowaną w nowym podówczas, barokowym stylu.'
place.save

point = Point.new
point.y = 50.0621986389
point.x = 19.9337005615
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół św. Anny'
place.description = 'Dzięki fundacji profesorów krakowskiej Akademii i króla Jana III Sobieskiego oraz projektowi architekta Tylmana z Gameren powstała jedna z najwspanialszych budowli barokowych w Polsce.'
place.save

point = Point.new
point.y = 50.0588989258
point.x = 19.9361991882
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół oo. Franciszkanów'
place.description = 'Z zewnątrz surowa gotycka architektura, wewnątrz miękkie łuki i feeria barw secesyjnej polichromii Stanisława Wyspiańskiego. Jego autorstwa jest również zespół niepowtarzalnych ośmiu witraży.'
place.save

point = Point.new
point.y = 50.0595016479
point.x = 19.9349994659
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Pałac Biskupi'
place.description = 'Pałac związany jest nierozłącznie z osobą metropolity krakowskiego Karola Wojtyły, który rezydował tu w latach 1963-1978 i gościł później, w czasie pielgrzymek do Krakowa, już jako papież Jan Paweł II.'
place.save

point = Point.new
point.y = 50.0616989136
point.x = 19.935300827
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Pałac Pod Baranami'
place.description = 'Dawniej domy dla odróżnienia, zamiast numerów, miały godła. Właściciele jednego z najbardziej znanych pałaców w Rynku Głównym znakiem rozpoznawczym uczynili... barany.'
place.save

point = Point.new
point.y = 50.0614013672
point.x = 19.9391994476
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Plac Mariacki'
place.description = 'Kiedyś cmentarz przy kościele parafialnym, dziś uroczy zaułek, jeden z najpiękniejszych w mieście z otwartym widokiem na kościół św. Barbary oraz fontanną z postacią chłopca.'
place.save

point = Point.new
point.y = 50.0205001831
point.x = 19.9375991821
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Sanktuarium Bożego Miłosierdzia w Łagiewnikach'
place.description = 'Sanktuarium, największe na świecie centrum kultu chrystologicznego, przyciąga każdego roku do Krakowa miliony pielgrzymów, a to za sprawą obrazu Jezusa Miłosiernego i objawień s. Faustyny Kowalskiej'
place.save

point = Point.new
point.y = 50.0649986267
point.x = 19.9412994385
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Baszty obronne'
place.description = 'Trzydziestu dziewięciu krakowskich baszt bronili m.in. szewcy, stolarze, cieśle, malarze, ale również przedstawiciele zapomnianych dziś rzemiosł: pasamoników, kurdybanników czy iglarzy.'
place.save

point = Point.new
point.y = 50.0648994446
point.x = 19.9410991669
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Baszta Ciesielska'
place.description = 'Najstarsza z zachowanych, wzniesiona z wapiennego kamienia ok. 1300 roku na kwadratowej podstawie, z sześcioboczną nadbudową z końca XV w.'
place.save

point = Point.new
point.y = 50.0648994446
point.x = 19.9417991638
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Baszta Pasamoników'
place.description = 'Pasamonicy, zwani później szmuklerzami, wyrabiali niegdyś dodatki do garderoby - pasy, paski, guzy i inne elementy stroju - określane dziś jako pasmanteria. W razie zagrożenia miasta sięgali jednak także po broń...'
place.save

point = Point.new
point.y = 50.0649986267
point.x = 19.9412002563
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Baszta Stolarska'
place.description = 'Późnogotycką basztę, wzniesioną na kwadratowej kamiennej podstawie nadbudowano później na planie półkolistym. Wynikało to z rozwoju artylerii.'
place.save

point = Point.new
point.y = 50.0616989136
point.x = 19.9337997437
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Collegium Maius i Uniwersytet Jagielloński'
place.description = 'Uniwersytet Jagielloński, założony przez króla Kazimierza Wielkiego w roku 1364 jako Akademia Krakowska, jest najstarszą polską uczelnią. Jej pierwszy budynek, Collegium Maius, liczy już ponad 500 lat.'
place.save

point = Point.new
point.y = 50.0556983948
point.x = 19.9365997314
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Dom Długosza'
place.description = 'To tutaj właśnie powstały liczne dzieła najznakomitszego polskiego historyka wieków średnich, m.in. najsławniejsze Roczniki czyli kroniki sławnego Królestwa Polskiego.'
place.save

point = Point.new
point.y = 50.0559997559
point.x = 19.9370994568
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Dom Dziekański'
place.description = 'Dom przy ulicy Kanoniczej 21 to dawna rezydencja dziekanów (przełożonych) kapituły, czyli kolegium duchownych zwanych kanonikami, przy Katedrze Wawelskiej. Jest jednym z najpiękniejszych zabytkowych domów Krakowa'
place.save

point = Point.new
point.y = 50.0441017151
point.x = 19.9510993958
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Dawny Dom Modlitwy Zuckera (Starmach Gallery)'
place.description = 'Żydowski dom modlitwy, zakład stolarski i słynna galeria - oto pokrótce koleje losu tego niezwykłego budynku. Podgórska Gmina Żydowska nie zdecydowała się nigdy na budowę synagogi'
place.save

point = Point.new
point.y = 50.0472984314
point.x = 19.9517993927
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Elektrownia Miejska w Podgórzu'
place.description = 'Podgórze posiadało własną elektrownię pięć lat wcześniej niż Kraków, co nie przynosi stołeczno-królewskiemu miastu specjalnej chluby. Elektrownię Miejską w Podgórzu urządzono w latach 1899-1900 przy ul. Nadwiślańskiej 4.'
place.save

point = Point.new
point.y = 50.0396003723
point.x = 19.9433002472
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół oo. Redemptorystów'
place.description = 'Założony we Włoszech przez Alfonsa Liguoriego Zakon Zgromadzenia Najświętszego Odkupiciela - czyli redemptorystów - pojawił się w na ziemiach Polskich już w roku 1788.'
place.save

point = Point.new
point.y = 50.0432014465
point.x = 19.9577007294
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół i fort św. Benedykta'
place.description = 'Ten niewielki kościół można zobaczyć od środka tylko raz w roku, a wnętrze kryje nawę nakrytą sklepieniem krzyżowym i barokowe wyposażenie. Stojący nieopodal fort przypomina czasy, gdy w Krakowie rządzili Austriacy'
place.save

point = Point.new
point.y = 50.0567016602
point.x = 19.9386005402
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół św. Andrzeja'
place.description = 'Najlepiej zachowany przykład architektury romańskiej w Krakowie. Masywny, wzniesiony z kamienia ciosowego z końcem XI wieku kościół miał pełnić także ważne funkcje obronne.'
place.save

point = Point.new
point.y = 50.0551986694
point.x = 19.9379997253
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół św. Idziego'
place.description = 'Według tradycji świątynię tę wzniósł książę Władysław Herman w XI wieku jako dziękczynienie za narodziny syna Bolesława. Badania archeologiczne nie potwierdziły jednak tej wersji'
place.save

point = Point.new
point.y = 50.0433006287
point.x = 19.9500007629
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół św. Józefa'
place.description = 'Kościół ten - z niezwykle bogatą, wywołującą wręcz wrażenie przesytu dekoracją - to hołd złożony neogotykowi, tak popularnemu w architekturze sakralnej XIX stulecia.'
place.save

point = Point.new
point.y = 50.0561981201
point.x = 19.9386005402
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół św. Marcina'
place.description = 'Wczesnobarokowa świątynia ze skromną fasadą zbudowana w XVII wieku dla zakonu karmelitanek bosych, dziś jest kościołem parafialnym krakowskiej gminy ewangelickiej.'
place.save

point = Point.new
point.y = 50.060798645
point.x = 19.9375
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół św. Wojciecha'
place.description = 'Tradycja wiąże miejsce, gdzie stanął kościół, z kazaniem wygłoszonym tu przez św. Wojciecha. Zachowane i eksponowane fragmenty romańskich murów kościoła św. Wojciecha są najstarszym zabytkiem w obrębie Rynku Głównego.'
place.save

point = Point.new
point.y = 50.0392990112
point.x = 19.9494991302
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Krzemionki'
place.description = 'Zróżnicowana struktura geologiczna budowała od zawsze nastrój tajemniczości i malowniczości tego niezwykłego miejsca. Według jednej z wersji legendy to właśnie tu prowadził swą słynną pracownię czarnoksiężnik Jan Twardowski.'
place.save

point = Point.new
point.y = 50.0652008057
point.x = 19.941400528
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Mury obronne'
place.description = 'Kraków mógł się poszczycić 7 bramami i 47 basztami wbudowanymi w ciąg obronnych murów, opasujących cały teren dzisiejszego Starego Miasta. Ocalał z tego tylko niewielki fragment'
place.save

point = Point.new
point.y = 50.0416984558
point.x = 19.948299408
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Park Bednarskiego'
place.description = 'W latach 90. XIX w. zrodziła się koncepcja, aby w części Krzemionek, wyeksploatowanych przez nieczynne już wyrobisko kamienia wapiennego, urządzić publiczny park krajobrazowy.'
place.save

point = Point.new
point.y = 50.0635986328
point.x = 19.9428005219
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Plac Świętego Ducha'
place.description = 'Kraków miał wiele pomysłów na zabudowę tego placu. Niektóre projekty szczęśliwie zrealizowano, inne - równie szczęśliwie - skończyły się fiaskiem...'
place.save

point = Point.new
point.y = 50.065700531
point.x = 19.9368000031
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Planty'
place.description = 'Planty podzielone na 8 ogrodów mają ok. 4 km długości i rozciągają się na powierzchni 21 ha. Na ich obszarze podziwiać można 40 gatunków drzew i krzewów, w tym pomniki przyrody, jak 130-letni platan u wylotu ul. Wiślnej.'
place.save

point = Point.new
point.y = 50.0451011658
point.x = 19.9477005005
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Podgórze'
place.description = 'W roku 1784 arcyksiążę austriacki Józef II nadał prawa miejskie osadzie, istniejącej na prawym brzegu Wisły już w średniowieczu. Nowe miasto przyjęło używaną już od pewnego czasu nazwę - Podgórze. Cesarski edykt wymuszony był niejako przez niekorzystną dla Austrii sytuację, zaistniałą po pierwszym rozbiorze Polski, kiedy to Kraków pozostał w Rzeczypospolitej, a Wisła stała się rzeką graniczną'
place.save

point = Point.new
point.y = 50.0442008972
point.x = 19.94921875
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Rynek Podgórski'
place.description = 'Dzisiejszy rynek wytyczono u podnóża wzgórza Lasoty jako centralny plac miasta Podgórza. Wybór miejsca nie był przypadkowy, bowiem było to skrzyżowanie ważnych już w średniowieczu dróg handlowych.'
place.save

point = Point.new
point.y = 50.0484008789
point.x = 19.9377994537
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół na Skałce'
place.description = 'Wielowiekowa tradycja sprawiła, że kościół na Skałce kojarzony był od zawsze z męczeńską śmiercią krakowskiego biskupa Stanisława ze Szczepanowa, którą dostojnik poniósł w 1079 r. wyniku konfliktu z królem Bolesławem Śmiałym.'
place.save

point = Point.new
point.y = 50.0632019043
point.x = 19.9354000092
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Stary Teatr im. Heleny Modrzejewskiej'
place.description = 'Kraków może się poszczycić najstarszym wciąż funkcjonującym budynkiem teatralnym w Polsce. Zawdzięcza go przedsiębiorczemu Jackowi Kluszewskiemu, który zakupił dwie kamienice przy pl. Szczepańskim'
place.save

point = Point.new
point.y = 50.0539016724
point.x = 19.9384994507
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół oo. Bernardynów'
place.description = 'Pierwsi zakonnicy bernardyńscy w Krakowie rekrutowali się spośród słuchaczy surowego kaznodziei św. Jana Kapistrana, który podczas swojej wizyty w mieście głosił płomienne kazania przeciwko grzechowi i zbytkom.'
place.save

point = Point.new
point.y = 50.0536003113
point.x = 19.9402008057
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół oo. Misjonarzy'
place.description = 'Kościół na Stradomiu, należący do oo. Misjonarzy, zbudowano z początkiem XVIII w. według projektu słynnego krakowskiego architekta epoki baroku, Kacpra Bażanki.'
place.save

point = Point.new
point.y = 50.0634002686
point.x = 19.9402999878
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Ulica Floriańska'
place.description = 'Ulica Floriańska była od zawsze jedną z ważniejszych ulic Krakowa. Jako jedna z pierwszych w mieście ulica zyskała solidne bruki. Pod koniec XV wieku większość domów przy Floriańskiej była już murowana.'
place.save

point = Point.new
point.y = 50.0565986633
point.x = 19.9374008179
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Ulica Kanonicza'
place.description = 'Malownicza ulica Kanonicza jest najlepiej zachowaną zabytkową ulicą starego Krakowa. Każdy z jej domów może poszczycić się bogatą i długą historią, sięgającą nierzadko pierwszej połowy XIV wieku.'
place.save

point = Point.new
point.y = 50.0365982056
point.x = 19.9388999939
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Zakład Przyrodoleczniczy Matecznego'
place.description = 'Nazwisko Antoniego Matecznego powszechnie kojarzy się w Krakowie z ruchliwym rondem. Tymczasem ten inżynier stał się - dość przypadkowo - jednym z pionierów rodzimej balneologii.'
place.save

point = Point.new
point.y = 50.0546989441
point.x = 19.9354000092
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Katedra na Wawelu'
place.description = 'Nie każdy zgadnie, która świątynia nosi oficjalne miano kościoła archikatedralnego pod wezwaniem św. Stanisława Biskupa i Męczennika i św. Wacława. Ale niemal wszyscy słyszeli o katedrze wawelskiej!!!'
place.save

point = Point.new
point.y = 50.0547981262
point.x = 19.9356002808
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Dzwon Zygmunta'
place.description = 'Najsłynniejszy - choć nie najstarszy - polski dzwon został zawieszony na najwyższym piętrze wieży Zygmuntowskiej 12 lipca 1521 roku. Nazwano go na cześć fundatora - króla Zygmunta I Starego.'
place.save

point = Point.new
point.y = 50.0546989441
point.x = 19.9354991913
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Groby Królewskie'
place.description = 'Rząd krypt w Katedrze Królewskiej na Wawelu to jedyna w swoim rodzaju narodowa nekropolia. Dość powiedzieć, że spoczęło tu piętnastu królów Polski dwanaście królowych.'
place.save

point = Point.new
point.y = 50.0616989136
point.x = 19.9391002655
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół Mariacki'
place.description = 'Ponad 600 lat historii, ołtarz Wita Stwosza, hejnał, gwiaździsta polichromia sklepienia pędzla Jana Matejki. A to wszystko w jednym kościele! I to w centrum Krakowa!'
place.save

point = Point.new
point.y = 50.0614013672
point.x = 19.9398994446
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół św. Barbary'
place.description = 'Kościół ten został wzniesiony ok 1400 r., najprawdopodobniej jako kaplica cmentarna (św. Barbara była czczona jako patronka dobrej śmierci) na miejscu dawnej kostnicy.'
place.save

point = Point.new
point.y = 50.0569000244
point.x = 19.9377994537
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Plac św. Marii Magdaleny (Okół)'
place.description = 'Jak wiele placów w mieście - był kiedyś rynkiem niezależnej osady. I jak większość z nich, nosi nazwę odziedziczoną po nieistniejącym już kościele św. Marii Magdaleny.'
place.save

point = Point.new
point.y = 50.0572013855
point.x = 19.9379997253
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Collegium Iuridicum'
place.description = 'Już od swoich początków w średniowieczu ten budynek Akademii Krakowskiej, a później Uniwersytetu Jagiellońskiego przeznaczony był dla prawników. Prawnicza powaga zachowała się nawet w jego łacińskiej nazwie...'
place.save

point = Point.new
point.y = 50.0614013672
point.x = 19.9377994537
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Pomnik Adama Mickiewicza'
place.description = 'Krakowską tradycją stało się umawianie się „pod Adasiem”, jak nazywają go pieszczotliwie krakowianie, i... skakanie wokół monumentu na jednej nodze.'
place.save

point = Point.new
point.y = 50.0536994934
point.x = 19.9332008362
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Smocza Jama'
place.description = 'Jaskinię pod Wzgórzem Wawelskim - o łącznej długości korytarzy 270 m i wysokości do 10 m - według legendy miał niegdyś zamieszkiwać smok wawelski. Udostępniono ją do zwiedzania w roku 1918, po adaptacji dawnej austriackiej studni na klatkę schodową.'
place.save

point = Point.new
point.y = 50.0616989136
point.x = 19.9374008179
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Sukiennice'
place.description = 'Wizytówka miasta, najstarsze krakowskie "centrum handlowe", perła renesansowej architektury. Sukiennice są jednym z najważniejszych obiektów historycznych w Krakowie.'
place.save

point = Point.new
point.y = 50.0541000366
point.x = 19.9365005493
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Wawel zaginiony'
place.description = 'Jak wyglądał Wawel w czasach pierwszych Piastów? Tego dowiesz się na tej wystawie. Tu zobaczysz także jeden z najstarszych (jeśli nie najstarszy) kościół na wawelskim wzgórzu.'
place.save

point = Point.new
point.y = 50.0550003052
point.x = 19.8932991028
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kopiec Kościuszki'
place.description = 'Pomnik-świadectwo pamięci o narodowym bohaterze. Wybrano koncepcję kopca, która nawiązując do kopców Krakusa i Wandy manifestowała przywiązanie do polskiej tradycji.'
place.save

point = Point.new
point.y = 50.0544013977
point.x = 19.9370002747
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Komnaty królewskie'
place.description = 'Odznaczająca się wielkim artystycznym smakiem renesansowa pałacowa rezydencja. Dziś jedno z największych i najwspanialszych polskich muzeów. To tutaj mieszkali królowie...'
place.save

point = Point.new
point.y = 50.0535011292
point.x = 19.9526996613
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Cmentarz Nowy'
place.description = 'Teren pod cmentarz żydowski zakupiono od katolickiego zakonu. Taka historia nie dziwi na Kazimierzu, gdzie krzyżują się ulice rabina Meiselsa i Bożego Ciała...'
place.save

point = Point.new
point.y = 50.0546989441
point.x = 19.9368991852
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Skarbiec Koronny i Zbrojownia'
place.description = 'Dzieje skarbca na Wawelu sięgają prawdopodobnie zamierzchłych czasów Bolesława Chrobrego (X/XI w.). Przechowuje się tu m.in. najstarsze i jedyne zachowane insygnium koronacyjne - miecz zwany Szczerbcem. W zbrojowni eksponowany jest jeden z najpoważniejszych zbiorów militariów w Polsce.'
place.save

point = Point.new
point.y = 50.0462989807
point.x = 19.9542007446
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Apteka Pod Orłem'
place.description = 'Tadeusz Pankiewicz, farmaceuta z dyplomem Uniwersytetu Jagiellońskiego, przejmując aptekę po swoim ojcu, nie spodziewał się zapewne, że wraz z nią przejdzie niebawem do historii.'
place.save

point = Point.new
point.y = 50.047492981
point.x = 19.9623298645
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Fabryka Schindlera'
place.description = 'Fabryka przy ulicy Lipowej 4 zaczęła działalność dwa lata przed wojną. Najbardziej dramatyczne są jednak jej wojenne dzieje. Na ich kanwie powstał słynny film Stevena Spielberga Lista Schindlera.'
place.save

point = Point.new
point.y = 50.0466995239
point.x = 19.9543991089
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Plac Bohaterów Getta'
place.description = 'Wytyczono go około roku 1838 jako rynek pomocniczy miasta Podgórza, pełniący zapewne funkcję targowe. Podczas II wojny światowej plac stał się centralnym punktem getta, które Niemcy utworzyli dla ludności żydowskiej.'
place.save

point = Point.new
point.y = 50.0526008606
point.x = 19.9456996918
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Synagoga Kupa'
place.description = 'Nazwa pochodzi z język hebrajskiego, kupa oznacza w nim bowiem kasę kahału, gminy żydowskiej, a to właśnie jej fundusze pozwoliły na postawienie bóżnicy.'
place.save

point = Point.new
point.y = 50.0514984131
point.x = 19.9477005005
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Synagoga Wysoka'
place.description = 'Zbudowana w latach 1556-1563 należała do najbogatszych synagog żydowskiego miasta na Kazimierzu. Jej nazwa wiąże się z usytuowaniem męskiej sali modlitewnej na I piętrze'
place.save

point = Point.new
point.y = 50.0525512695
point.x = 19.9481239319
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Ulica Szeroka'
place.description = 'Ta ulica to właściwie wydłużony rynek, ze starymi synagogami, pałacem i dostojnymi domami z XVI, XVII i XVIII wieku. W średniowieczu było to centrum wsi Bawół, włączonej do Kazimierza wkrótce po lokacji miasta, w roku 1340'
place.save

point = Point.new
point.y = 50.0377006531
point.x = 19.9584007263
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kopiec Krakusa'
place.description = 'Książę Krak miał być legendarnym założycielem Krakowa. Gdy zmarł, poddani z wdzięczności za jego dobroć i sprawiedliwe rządy, usypali mu mogiłę w formie kopca. Tyle mówi legenda.'
place.save

point = Point.new
point.y = 50.0600166321
point.x = 19.8472099304
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kopiec Piłsudskiego'
place.description = 'Miał upamiętnić odzyskanie przez Polskę niepodległości po 123 latach zaborów. Jego budowę zainaugurowano w 20. rocznicę wymarszu z Krakowa I Kompanii Kadrowej - pierwszej po zaborach polskiej formacji wojskowej, stworzonej przez Józefa Piłsudskiego.'
place.save

point = Point.new
point.y = 50.0694999695
point.x = 20.067899704
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kopiec Wandy'
place.description = 'Kim była Wanda i dlaczego usypano jej kopiec? Legendy mówią, że była córką założyciela miasta, księcia Kraka. Odrzuciwszy rękę niemieckiego władcy, rzuciła się w fale Wisły.'
place.save

point = Point.new
point.y = 50.0547981262
point.x = 19.9384994507
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Arsenał Królewski'
place.description = 'Tę ważną ze względów strategicznych budowlę wzniósł u stóp Wawelu w roku 1533 król Zygmunt Stary. Arsenał, położony tuż przy Bramie Grodzkiej, należał do miejskiego systemu fortyfikacji.'
place.save

point = Point.new
point.y = 50.0648002625
point.x = 19.9410991669
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Arsenał Miejski'
place.description = 'W latach 1565-1566 król Zygmunt August sfinalizował budowę drugiego krakowskiego arsenału. Dla odróżnienia od stojącego przy Bramie Grodzkiej Arsenału Królewskiego, wzniesionego trzydzieści lat wcześniej, ten nazwany został Miejskim.'
place.save

point = Point.new
point.y = 50.061000824
point.x = 19.9330997467
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Collegium Novum'
place.description = 'Najokazalszy gmach Uniwersytetu Jagiellońskiego wzniesiono w latach 1883-1887 według projektu Feliksa Księżarskiego. Usytuowano go głównie na miejscu dwóch wyburzonych burs akademickich - Filozofów i Jerozolimskiej.'
place.save

point = Point.new
point.y = 50.0625991821
point.x = 19.9412994385
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Dom pod Krzyżem'
place.description = 'Dom ten kryje zręby średniowiecznego szpitala scholarów (studentów) i gotyckiej kaplicy pod wezwaniem św. Rocha. Kronikarz Jan Długosz podaje, że zbudowano go w roku 1474.'
place.save

point = Point.new
point.y = 50.0616989136
point.x = 19.9374008179
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Rynek Główny – najważniejsze kamienice'
place.description = 'Pałac Pod Baranami, Jaszczury, Krzysztofory... Nazwy tych kamienic, położonych przy krakowskim Rynku brzmią znajomo, nawet dla nie-krakusów. A kto ich nie zna, niech koniecznie zobaczy!'
place.save

point = Point.new
point.y = 50.0616989136
point.x = 19.9374008179
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Historia getta w Krakowie'
place.description = 'Rozporządzeniem gubernatora dystryktu krakowskiego Otto Wächtera z 3 marca 1941 zamieszkującym kraków Żydom nakazano przeniesienie się do pierwszej na terenie dystryktu "dzielnicy mieszkaniowej dla żydów", utworzonej w Podgórzu.'
place.save

point = Point.new
point.y = 50.0620002747
point.x = 19.9333992004
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kolegium Nowodworskiego'
place.description = 'Profesorowie Uniwersytetu Jagiellońskiego (zwanego wtedy jeszcze Akademią Krakowską) założyli w roku 1588 szkołę średnią św. Anny, tzw. classes, uważaną obecnie za najstarszą w Polsce.'
place.save

point = Point.new
point.y = 50.057800293
point.x = 19.9365005493
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół i klasztor św. Michała i Józefa (Muzeum Archeologiczne)'
place.description = 'U zbiegu dzisiejszych ulic Senackiej i Poselskiej stał niegdyś tzw. Malowany Dwór, posiadłość rodu Tenczyńskich. Ci podarowali teren przybyłym do Krakowa z początkiem XVII wieku karmelitom bosym.'
place.save

point = Point.new
point.y = 50.0649986267
point.x = 19.9398994446
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół oo. Pijarów (Przemienienia Pańskiego)'
place.description = 'Ulicę św. Jana zamyka od północy efektownie rozwiązana fasada kościoła oo. Pijarów. Świątynię wzniesiono w latach 1718-1728 według projektu Kacpra Bażanki.'
place.save

point = Point.new
point.y = 50.0648002625
point.x = 19.9363002777
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół oo. Reformatów'
place.description = 'Niepozorny z zewnątrz kościół pod wezwaniem św. Kazimierza kryje jedną z największych osobliwości Krakowa - krypty, w których spoczywają zmumifikowane ciała dobroczyńców kościoła i zakonników.'
place.save

point = Point.new
point.y = 50.0632019043
point.x = 19.9388999939
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół św. Jana Chrzciciela i Jana Ewangelisty'
place.description = 'Już samo usytuowanie kościoła - ukosem i poza linią regulacyjną ulicy św. Jana - wskazuje na jego przedlokacyjne pochodzenie (czyli sprzed 1257 r.). Potwierdzają to pozostałości XII-wiecznych romańskich murów'
place.save

point = Point.new
point.y = 50.0646018982
point.x = 19.9379005432
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół św. Marka'
place.description = 'Budowa kościoła ufundowanego przez Bolesława Wstydliwego trwała dość długo, choć rozpoczęto ją - od wzniesienia prezbiterium - już w latach 60. XIII wieku.'
place.save

point = Point.new
point.y = 50.0602989197
point.x = 19.934299469
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Cerkiew grekokatolicka (Kościół św. Norberta)'
place.description = 'Budowę kościoła prowadzono w latach 1636-1643 dzięki staraniom słynącej z energicznych poczynań ksieni zwierzynieckich norbertanek, Doroty Kątskiej. Położone na Zwierzyńcu, z dala od miasta, klasztor i kościół okazały się bezbronne'
place.save

point = Point.new
point.y = 50.0611991882
point.x = 19.9403991699
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Mały Rynek'
place.description = 'Mały Rynek zwano forum antiquum (od uprawianego tu handlu starzyzną) Wendetą lub Tandetą. Handlowano tu głównie towarami o niezbyt pięknym wyglądzie i zapachu - mięsem i rybami.'
place.save

point = Point.new
point.y = 50.0327987671
point.x = 19.9640007019
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Obóz w Płaszowie'
place.description = 'W szczytowym momencie jego istnienia w obozie przebywało w nieludzkich warunkach ok. 20.000 więźniów. Funkcję dowódcy obozu pełnił znany z okrucieństwa Amon Goeth.'
place.save

point = Point.new
point.y = 50.0616989136
point.x = 19.9374008179
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Rynek Główny'
place.description = 'Ogromny, główny plac miejski, wytyczony został podczas lokacji miasta na prawie magdeburskim w roku 1257 na przecięciu dawnych szlaków handlowych. Od tamtej pory jest wciąż żyjącym centrum miasta.'
place.save

point = Point.new
point.y = 50.0424003601
point.x = 19.9596996307
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Stary Cmentarz Podgórski'
place.description = 'Powstał prawdopodobnie tuż po nadaniu Podgórzu praw miejskich około roku 1790 i jest dziś najstarszym cmentarzem komunalnym w granicach Krakowa. To, co obecnie pozostało z dawnej nekropolii, należy pilnie odrestaurować, bo w przeciwnym razie cmentarz zniknie na naszych oczach...'
place.save

point = Point.new
point.y = 50.0377998352
point.x = 19.9624996185
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Nowy Cmentarz Podgórski'
place.description = 'Spoczywają tu zasłużeni mieszkańcy miasta, a później dzielnicy Podgórze, m.in. Antoni Mateczny, założyciel Zakładu Przyrodoleczniczego, czy Józef Kałuża, piłkarz i działacz sportowy klubu Cracovia'
place.save

point = Point.new
point.y = 50.0457992554
point.x = 19.9524993896
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Ulica Józefińska i ważniejsze instytucje krakowskiego getta'
place.description = 'Józefińska jest jedną z najstarszych w pierwotnym układzie urbanistycznym Podgórza. W latach 1941-1943 znalazła się w obrębie utworzonego przez hitlerowców getta. Ulokowano tu wówczas wiele instytucji istotnych dla codziennego funkcjonowania żydowskiej dzielnicy.'
place.save

point = Point.new
point.y = 50.0583992004
point.x = 19.9379997253
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Ulica Grodzka'
place.description = 'Ulica Grodzka jest jedną z najstarszych w Krakowie. Istniała jeszcze przed lokacją miasta w 1257 roku. Była ważnym fragmentem wczesnośredniowiecznego szlaku handlowego północ-południe.'
place.save

point = Point.new
point.y = 50.0659828186
point.x = 19.941493988
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Akademia Sztuk Pięknych'
place.description = 'Zalążkiem dzisiejszej akademii były katedry rysunku, malarstwa i rzeźby wyodrębnione z Wydziału Filozoficznego UJ w latach 1818-1819. Po uzyskaniu samodzielności (1873 r.), uczelnia funkcjonowała jako Szkoła Sztuk Pięknych, a jej dyrektorem został obecny patron - Jan Matejko.'
place.save

point = Point.new
point.y = 50.0643005371
point.x = 19.9238777161
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Aleje Trzech Wieszczów'
place.description = 'Elegancka w formie zabudowa czynszowa oraz imponujące swym rozmachem, wysokiej próby, monumentalne gmachy użyteczności publicznej - oto jedna z najważniejszych arterii komunikacyjnych miasta'
place.save

point = Point.new
point.y = 50.0655708313
point.x = 19.9497127533
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Celestat i Bractwo Kurkowe'
place.description = 'Krakowskie Bractwo Kurkowe założono prawdopodobnie w XIV wieku. Była to organizacja ponadcechowa, której członkowie przygotowywali mieszczan do obrony murów.'
place.save

point = Point.new
point.y = 50.0876846313
point.x = 19.8779582977
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Bronowice Małe i Rydlówka'
place.description = 'Dawna wieś, położona ok. 5 km od Krakowa nad Rudawą, założona została już w XIII wieku na prawie niemieckim. Sławę jednak przyniósł wsi dopiero w XX wieku Stanisław Wyspiański, który właśnie tu ulokował akcję swojego dramatu Wesele'
place.save

point = Point.new
point.y = 50.0746574402
point.x = 19.9537467957
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Cmentarz Rakowicki'
place.description = 'Założony na początku XIX w., zastąpił wszystkie dotychczas istniejące cmentarze przykościelne. Jego najstarszej części nadano charakterystyczny plan bramy - symbolu przejścia do wiecznego świata'
place.save

point = Point.new
point.y = 50.0526733398
point.x = 19.903793335
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Cmentarz Salwatorski'
place.description = 'Cmentarz Salwatorski założony został w roku 1865. Wieczny odpoczynek znalazło tu wiele znanych i zasłużonych osób, m.in. twórca Teatru Reduta Juliusz Osterwa i pisarz Stanisław Lem.'
place.save

point = Point.new
point.y = 50.0658187866
point.x = 19.930273056
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Garbary i ulica Karmelicka'
place.description = 'Z początkiem XV wieku rozwinęła się tu największa miejska jurydyka Garbary. Cała osada skupiła się wokół kościoła oo. Karmelitów. Zamieszkiwali ją głównie rzemieślnicy.'
place.save

point = Point.new
point.y = 50.058380127
point.x = 19.9022922516
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Historia Zwierzyńca i Półwsia Zwierzynieckiego'
place.description = 'Mnóstwo zieleni, tajemnicze zakątki i ciekawa, zróżnicowana architektura, z niepowtarzalnym, wtopionym w krajobraz wzgórza osiedlem, zwanym niekiedy Urzędniczym, czynią ze Zwierzyńca jedno z najbardziej urokliwych miejsc.'
place.save

point = Point.new
point.y = 50.068157196
point.x = 19.9392414093
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kleparz'
place.description = 'Osada kleparska powstała pod koniec XII wieku wokół ufundowanego wówczas kościoła św. Floriana. Stała się zalążkiem miasta lokowanego na mocy przywileju Kazimierza Wielkiego w roku 1366.'
place.save

point = Point.new
point.y = 50.0869407654
point.x = 19.9570941925
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół Ecce Homo'
place.description = 'W kościele tym szczególnie czci się św. Brata Alberta - Adama Chmielowskiego, powstańca styczniowego, malarza, a w końcu zakonnika, który poświęcił się opiece nad najuboższymi, alkoholikami i bezdomnymi.'
place.save

point = Point.new
point.y = 50.0530319214
point.x = 19.9125061035
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół Najświętszego Salwatora'
place.description = 'Tradycja każe wiązać to miejsce z pogańską świątynią z X wieku. Mimo że dokładny czas powstania kościoła nie został ostatecznie wyjaśniony, nie ulega wątpliwości, że jest to jedna z najstarszych krakowskich świątyń'
place.save

point = Point.new
point.y = 50.0624961853
point.x = 19.9495201111
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół Najświętszego Serca Jezusowego (oo. Jezuitów)'
place.description = 'W zwieńczonej monumentalną wieżą budowli pobrzmiewają echa niemal wszystkich stylów historycznych, z wyraźną jednak dominantą wątków neoromańskich i neogotyckich. Projekt jednego z najwybitniejszych krakowskich architektów pierwszej połowy XX wieku - Franciszka Mączyńskiego.'
place.save

point = Point.new
point.y = 50.0653762817
point.x = 19.931646347
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół oo. Karmelitów na Piasku (Nawiedzenia Najświętszej Marii Panny)'
place.description = 'Kiedy papież Urban VI ustanowił nowe święto - Nawiedzenia Najświętszej Marii Panny - Władysław Jagiełło i królowa Jadwiga postanowili uczcić to budową nowego kościoła pod takim właśnie wezwaniem i przekazać go nieznanemu dotąd w Polsce zakonowi oo. Karmelitów.'
place.save

point = Point.new
point.y = 50.0456466675
point.x = 19.8408355713
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół oo. Kamedułów na Bielanach'
place.description = 'Wniebowzięcia Najświętszej Marii Panny. Obecna nazwa "Bielany" określająca rejon miasta, gdzie znajduje się klasztor tego zgromadzenia (analogicznie używana także w Warszawie) pochodzi od charakterystycznych białych habitów zakonników.'
place.save

point = Point.new
point.y = 50.0617141724
point.x = 19.9300575256
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół oo. Kapucynów (Zwiastowania Najświętszej Marii Panny)'
place.description = 'Osobliwością kościoła jest armatnia kula umieszczona w lewym, bocznym filarze ołtarza, która utkwiła w ścianie podczas walk konfederatów barskich z wojskami rosyjskimi w roku 1768.'
place.save

point = Point.new
point.y = 50.0520973206
point.x = 19.9147148132
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół ss. Norbertanek'
place.description = 'To stąd, rok w rok od niepamiętnych czasów wyrusza na swe harce Lajkonik - jeden z flisaków wiślanych, przebrany w zdobyczny strój tatarskiego chana - aby obwieścić krakowianom zwycięstwo nad Tatarami.'
place.save

point = Point.new
point.y = 50.0674819946
point.x = 19.9431247711
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół św. Floriana'
place.description = 'Relikwie świętego Floriana, bohatera wypraw krzyżowych sprowadzono do Polski w końcu XII wieku. Wedle legendy orszak, który wiózł je z Rzymu musiał stanąć w tym miejscu, ponieważ woły ciągnące wóz nie chciały dalej iść.'
place.save

point = Point.new
point.y = 50.0606651306
point.x = 19.9458503723
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół św. Mikołaja'
place.description = 'Jest to jeden z ciekawszych i najstarszych krakowskich kościołów. Wzniesiony został przy starym szlaku handlowym na Ruś i Ukrainę. Na jego terenie stoją dwa niezwykłe obiekty - latarnia zmarłych i chaczkar'
place.save

point = Point.new
point.y = 50.0526199341
point.x = 19.9123344421
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kościół św. Małgorzaty i Judyty'
place.description = 'Przy ulicy bł. Bronisławy na Zwierzyńcu podziwiać można jedyny w swoim rodzaju zabytek - drewniany, kryty gontem kościół św.św. Małgorzaty i Judyty.  Według przekazów stała tu niegdyś prasłowiańska gontyna.'
place.save

point = Point.new
point.y = 50.0186882019
point.x = 19.8024272919
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Opactwo oo. Benedyktynów w Tyńcu'
place.description = 'Opactwo położone jest na wysokim wapiennym wzgórzu, wznoszącym się nad Wisłą, przy dogodnej przeprawie na jej drugi brzeg. Dzięki temu było dobrym miejscem do kontrolowania przewozów przez rzekę i wyśmienitym punktem obronnym.'
place.save

point = Point.new
point.y = 50.0533103943
point.x = 19.9106388092
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Osiedle na Salwatorze'
place.description = 'Osiedle-ogród rozplanowano zgodnie z ideą angielskiego urbanisty z drugiej połowy XIX stulecia, Ebenezera Howarda. Wzniesiono je w latach 1909-1913 wzdłuż półkoliście biegnących ulic'
place.save

point = Point.new
point.y = 50.0667266846
point.x = 19.9421596527
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Plac Matejki'
place.description = 'Nazwa placu wiązała się z ofiarowaniem malarzowi Janowi Matejce tytułu honorowego obywatela Krakowa. Był to szczególny hołd dla wielkiego artysty, bowiem niezwykle rzadko zdarza się, aby ktokolwiek został patronem jeszcze za życia...'
place.save

point = Point.new
point.y = 50.0666007996
point.x = 19.9422035217
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Pomnik Grunwaldzki'
place.description = 'Odsłonięcie pomnika w 1910 roku było centralnym punktem obchodów 500-lecia zwycięstwa nad Zakonem Krzyżackim, odniesionego przez wojska polsko-litewskie pod wodzą króla Władysława Jagiełły.'
place.save

point = Point.new
point.y = 50.0597305298
point.x = 19.9275684357
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Ulice Piłsudskiego i Retoryka'
place.description = 'Dzisiejsza ulica Piłsudskiego zyskała swój obecny kształt w ostatniej ćwierci XIX wieku. Wiele uwagi poświęcono wówczas urbanistycznej kompozycji traktu, toteż efekty były znakomite'
place.save

point = Point.new
point.y = 50.0632553101
point.x = 19.9528026581
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Wesoła i ulica Kopernika'
place.description = 'Nazwa tej części miasta powoli wychodzi z użycia, zapominana także przez miejscowych. warto jednak o niej pamiętać. Spacer ulicą Kopernika to: cztery kościoły, klasycystyczne pałacyki i najstarszy w Polsce ogród botaniczny.'
place.save

point = Point.new
point.y = 50.0539131165
point.x = 19.8953399658
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Wzgórze bł. Bronisławy'
place.description = 'Bronisława norbertanka i mistyczka, beatyfikowana przez papieża Grzegorza XVI,  całe swe życie związała z klasztorem na Zwierzyńcu. Jej kult sięga XIV wieku. Związany jest ze wzgórzem Sikornik, zwanym również później jej imieniem, bowiem według tradycji tam zamieszkała i zmarła.'
place.save

point = Point.new
point.y = 50.0472335815
point.x = 19.9599266052
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'AUSCHWITZ WIELICZKA'
place.description = 'Praca AUSCHWITZ WIELICZKA jest pierwszą stałą pracą Mirosława Bałki, która artysta zrealizował w przestrzeni publicznej w Polsce. To efekt jego osobistej refleksji i doświadczeń'
place.save

point = Point.new
point.y = 50.0458946228
point.x = 19.9481678009
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kładka o. Laetusa Bernatka'
place.description = 'Kładka pieszo-rowerowa na Wiśle u wylotu ulic Mostowej i Brodzińskiego,  łączy dzielnice Podgórze i Kazimierz. Wybudowano ją w miejscu  niegdysiejszego Mostu Karola (zniszczonego przez powódź w 1813 roku).'
place.save

point = Point.new
point.y = 50.0470542908
point.x = 19.947052002
point.save
place = Place.new
place.point_id = point.id
place.minutes = 15
place.name = 'Kładka o. Laetusa Bernatka'
place.description = 'Kładka pieszo-rowerowa na Wiśle u wylotu ulic Mostowej i Brodzińskiego, łączy dzielnice Podgórze i Kazimierz. Nosi nazwę o. Laetusa Bernatka, przeora konwentu bonifratrów w XIX wieku.'
place.save
