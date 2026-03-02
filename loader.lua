-- --- WHITELIST LUA CODEBY ---

local jugador = game.Players.LocalPlayer

-- Lista directa de usuarios autorizados

local whitelist = {

    [123456789] = "JugadorUno",

    [5204076010] = "JugadorDos",

    [85437] = "DX_UNO2",

    [8144772386] = "bandidokINT",

}

-- Verificación

if not whitelist[jugador.UserId] then

    jugador:Kick("🖕paga tu vaina mardito")

else

    print("✅ Acceso concedido a "..jugador.Name.." | Nombre whitelist: "..whitelist[jugador.UserId])

end

--[[

GUI: Codeby

Version: Codeby_Master_Sync_2026

Author: By:Codeby

Note: Sistema de replicación de estructuras con escalado forzado y rutas completas.

]]

local ScreenGui = Instance.new("ScreenGui")

local MainFrame = Instance.new("Frame")

local Title = Instance.new("TextLabel")

local ScanBtn = Instance.new("TextButton")

local BuildBtn = Instance.new("TextButton")

local ScaleBtn = Instance.new("TextButton")

local StatusLabel = Instance.new("TextLabel")

local Corner = Instance.new("UICorner")

-- ... aquí sigue todo tu script original sin cambios ...

-- [[ DATABASE DECORACIÓN CODEBY ]] --

local FurnitureDB = {

["Bombillograndote"] = { Mesh = "rbxassetid://80763177000182", Size = {0.5462329983711243, 0.6167099475860596, 0.5338879823684692} },

["Bombillograndote2"] = { Mesh = "rbxassetid://80763177000182", Size = {0.5462329983711243, 0.6167099475860596, 0.5338879823684692} },

["Compresor1"] = { Mesh = "rbxassetid://91857315444027", Size = {2.0889999866485596, 3.0480000972747803, 4.497000217437744} },

["Luz Laser"] = { Mesh = "rbxassetid://6476122198", Size = {1.82864248752594, 1.6612669229507446, 1.9418609142303467} },

["Luz Sencilla"] = { Mesh = "rbxassetid://902223914", Size = {1.5200881958007812, 0.057300396263599396, 1.435945987701416} },

["Model_1"] = { Mesh = "NoMesh", Size = {4, 2.8777520656585693, 0.09535826742649078} },

["Model_10"] = { Mesh = "rbxassetid://15904323803", Size = {3.557011127471924, 3.8338522911071777, 2.660104990005493} },

["Model_11"] = { Mesh = "rbxassetid://5175624767", Size = {2.263357162475586, 3.2600061893463135, 2.121173858642578} },

["Model_12"] = { Mesh = "rbxassetid://4959643603", Size = {2.7650668621063232, 3.7732927799224854, 2.364449977874756} },

["Model_120"] = { Mesh = "rbxassetid://78070572566425", Size = {4.853068828582764, 7.63422155380249, 0.6932216286659241} },

["Model_121"] = { Mesh = "rbxassetid://71593484877201", Size = {4.846338272094727, 7.637170314788818, 0.25} },

["Model_122"] = { Mesh = "rbxassetid://18699026910", Size = {4.846338272094727, 7.637170314788818, 0.25} },

["Model_124"] = { Mesh = "rbxassetid://131456784481615", Size = {1.1590147018432617, 1.634307861328125, 4.739297866821289} },

["Model_13"] = { Mesh = "rbxassetid://4973527987", Size = {2.7377419471740723, 6.189998626708984, 1.959775686264038} },

["Model_15"] = { Mesh = "rbxassetid://4992834835", Size = {2.735830068588257, 6.670005798339844, 2.105766534805298} },

["Model_16"] = { Mesh = "NoMesh", Size = {4.255443572998047, 2.410000801086426, 3.7900009155273438} },

["Model_17"] = { Mesh = "NoMesh", Size = {6.502002716064453, 5.299998760223389, 0.21200060844421387} },

["Model_18"] = { Mesh = "NoMesh", Size = {2.79998779296875, 7.599996566772461, 1.60003662109375} },

["Model_2"] = { Mesh = "rbxassetid://4964810548", Size = {5.386505603790283, 2.559628486633301, 2.4031991958618164} },

["Model_20"] = { Mesh = "rbxassetid://4960045201", Size = {1.8891005516052246, 3.6027235984802246, 2.397550582885742} },

["Model_201"] = { Mesh = "rbxassetid://89952191506906", Size = {3.4189257621765137, 4.554001331329346, 2.711686372756958} },

["Model_202"] = { Mesh = "rbxassetid://127223333706945", Size = {4.865993976593018, 3.205313205718994, 3.8649027347564697} },

["Model_203"] = { Mesh = "rbxassetid://72783310489464", Size = {9.367090225219727, 3.6462290287017822, 3.8648996353149414} },

["Model_204"] = { Mesh = "rbxassetid://100499707672922", Size = {4.082637786865234, 3.4462943077087402, 3.5264902114868164} },

["Model_205"] = { Mesh = "rbxassetid://81815702961208", Size = {8.369118690490723, 3.660844087600708, 3.125396966934204} },

["Model_206"] = { Mesh = "rbxassetid://112561958658598", Size = {7.4434003829956055, 3.303480863571167, 2.445645809173584} },

["Model_209"] = { Mesh = "rbxassetid://125670082506846", Size = {4.608722686767578, 6.633817195892334, 1.6482402086257935} },

["Model_21"] = { Mesh = "NoMesh", Size = {2.2322745323181152, 4.883001804351807, 0.8370973467826843} },

["Model_215"] = { Mesh = "rbxassetid://80951458137467", Size = {4.689493179321289, 6.450630187988281, 1.422861099243164} },

["Model_217"] = { Mesh = "rbxassetid://135962943031746", Size = {5.526566028594971, 6.189950466156006, 2.6296284198760986} },

["Model_218"] = { Mesh = "rbxassetid://131099065728713", Size = {5.574704647064209, 6.3510541915893555, 2.403764247894287} },

["Model_219"] = { Mesh = "rbxassetid://131070441620891", Size = {5.744880199432373, 3.106330156326294, 1.3844558000564575} },

["Model_22"] = { Mesh = "rbxassetid://4955830520", Size = {3.106745481491089, 2.4468023777008057, 2.1661179065704346} },

["Model_220"] = { Mesh = "rbxassetid://75726418064380", Size = {2.122837543487549, 4.51761531829834, 2.0426559448242188} },

["Model_222"] = { Mesh = "rbxassetid://109110714180197", Size = {1.9906822443008423, 4.6006927490234375, 2.050449848175049} },

["Model_223"] = { Mesh = "rbxassetid://131428740306084", Size = {1.8009068965911865, 3.8491852283477783, 1.7192472219467163} },

["Model_224"] = { Mesh = "rbxassetid://97270779446964", Size = {1.9279515743255615, 3.51151442527771, 1.9930633306503296} },

["Model_225"] = { Mesh = "rbxassetid://133491062934863", Size = {4.0277252197265625, 3.193713426589966, 2.3837738037109375} },

["Model_226"] = { Mesh = "rbxassetid://82843146189169", Size = {4.378968715667725, 3.149996519088745, 1.3979213237762451} },

["Model_227"] = { Mesh = "rbxassetid://98282150426104", Size = {5.839622974395752, 3.5281310081481934, 2.2969744205474854} },

["Model_228"] = { Mesh = "rbxassetid://113798783261877", Size = {1.3735692501068115, 2.086883068084717, 1.3735686540603638} },

["Model_229"] = { Mesh = "rbxassetid://101557849600680", Size = {1.389617681503296, 1.4066842794418335, 1.3896214962005615} },

["Model_230"] = { Mesh = "rbxassetid://85754202669535", Size = {2.4341676235198975, 2.951852798461914, 1.2720829248428345} },

["Model_231"] = { Mesh = "rbxassetid://72762450970148", Size = {1.6148256063461304, 2.100128412246704, 1.5743342638015747} },

["Model_232"] = { Mesh = "rbxassetid://134482887162056", Size = {6.441206932067871, 6.442249774932861, 1.8510584831237793} },

["Model_233"] = { Mesh = "rbxassetid://103509704571550", Size = {0.9175006151199341, 1.8692575693130493, 0.9175006151199341} },

["Model_234"] = { Mesh = "rbxassetid://112786378585124", Size = {0.5175168514251709, 2.558587074279785, 0.4921850860118866} },

["Model_235"] = { Mesh = "rbxassetid://128136019834335", Size = {0.7811429500579834, 0.9348217844963074, 0.9019871950149536} },

["Model_236"] = { Mesh = "rbxassetid://137063752228023", Size = {0.8337786197662354, 0.9263571500778198, 0.8128769993782043} },

["Model_237"] = { Mesh = "rbxassetid://70884061339178", Size = {0.8584365248680115, 0.8510805368423462, 0.9912380576133728} },

["Model_238"] = { Mesh = "rbxassetid://95180002245999", Size = {3.0104286670684814, 1.8524279594421387, 0.24966348707675934} },

["Model_239"] = { Mesh = "rbxassetid://112420531002502", Size = {1.6971484422683716, 1.0589426755905151, 2.369044542312622} },

["Model_24"] = { Mesh = "rbxassetid://4997610993", Size = {5.208944797515869, 2.6591403484344482, 3.0402774810791016} },

["Model_240"] = { Mesh = "rbxassetid://128424020653192", Size = {3.2131741046905518, 7.0000505447387695, 2.6474695205688477} },

["Model_244"] = { Mesh = "rbxassetid://92737115380657", Size = {4.751736164093018, 3.0447120666503906, 4.7201924324035645} },

["Model_245"] = { Mesh = "rbxassetid://77064342898196", Size = {7.113688945770264, 2.761556386947632, 4.016899108886719} },

["Model_246"] = { Mesh = "rbxassetid://124996747478831", Size = {6.468413829803467, 3.013115167617798, 4.684319972991943} },

["Model_247"] = { Mesh = "rbxassetid://73452007372376", Size = {1.1213526725769043, 2.3493666648864746, 1.7293548583984375} },

["Model_248"] = { Mesh = "rbxassetid://100784187710701", Size = {2.1120660305023193, 5.844857215881348, 2.223196506500244} },

["Model_249"] = { Mesh = "rbxassetid://111024425643816", Size = {2.6402289867401123, 3.6475870609283447, 2.2965986728668213} },

["Model_25"] = { Mesh = "rbxassetid://70492180320167", Size = {2.586057186126709, 6.219534873962402, 3.5513176918029785} },

["Model_26"] = { Mesh = "rbxassetid://115751207100758", Size = {2.333122730255127, 0.6109203696250916, 4.1134724617004395} },

["Model_27"] = { Mesh = "rbxassetid://86827290088092", Size = {4.671501636505127, 0.6167702078819275, 9.504305839538574} },

["Model_28"] = { Mesh = "rbxassetid://115751207100758", Size = {2.333122730255127, 0.6109203696250916, 4.803094863891602} },

["Model_29"] = { Mesh = "rbxassetid://74774272998106", Size = {0.6000444293022156, 0.35838380455970764, 12.120485305786133} },

["Model_3"] = { Mesh = "rbxassetid://5050337353", Size = {2.997770071029663, 0.5588594675064087, 2.997770071029663} },

["Model_30"] = { Mesh = "rbxassetid://108863311550307", Size = {4.010110378265381, 2.466813087463379, 2.7811036109924316} },

["Model_31"] = { Mesh = "rbxassetid://128894726651723", Size = {3.037566900253296, 0.21221628785133362, 3.542379379272461} },

["Model_32"] = { Mesh = "rbxassetid://81453462742445", Size = {0.9061425924301147, 1.6008636951446533, 1.0100594758987427} },

["Model_33"] = { Mesh = "rbxassetid://140118843552946", Size = {2.1031229496002197, 0.29585695266723633, 2} },

["Model_34"] = { Mesh = "rbxassetid://72660815152869", Size = {2.1031229496002197, 0.29585695266723633, 2} },

["Model_35"] = { Mesh = "rbxassetid://6885159272", Size = {2.1295621395111084, 1.5174078941345215, 2.0254061222076416} },

["Model_36"] = { Mesh = "rbxassetid://4969101832", Size = {1.7535539865493774, 4.905437469482422, 0.050420571118593216} },

["Model_37"] = { Mesh = "rbxassetid://4972928808", Size = {1.6743212938308716, 3.205296039581299, 0.2473987489938736} },

["Model_38"] = { Mesh = "rbxassetid://5066033835", Size = {0.4169612526893616, 8.920011520385742, 3.9236676692962646} },

["Model_39"] = { Mesh = "rbxassetid://4952232972", Size = {1.9823226928710938, 6.719481468200684, 7.540317058563232} },

["Model_4"] = { Mesh = "rbxassetid://5039792902", Size = {8.792720794677734, 4.011502742767334, 3.4716362953186035} },

["Model_401"] = { Mesh = "rbxassetid://86603860215468", Size = {1.4556488990783691, 2.263975143432617, 4.312292575836182} },

["Model_403"] = { Mesh = "NoMesh", Size = {0.2150000035762787, 4.300000190734863, 3.009999990463257} },

["Model_41"] = { Mesh = "rbxassetid://5007394989", Size = {0.16657665371894836, 2.608036518096924, 0.5419474244117737} },

["Model_410"] = { Mesh = "rbxassetid://12474270128", Size = {5.562448978424072, 1.642006278038025, 2.639192819595337} },

["Model_411"] = { Mesh = "rbxassetid://16176948658", Size = {8.632150650024414, 5.283708572387695, 5.323250770568848} },

["Model_412"] = { Mesh = "rbxassetid://72403459600797", Size = {3.0451154708862305, 3.981095314025879, 4.82063627243042} },

["Model_413"] = { Mesh = "rbxassetid://111684278830545", Size = {1.7816256284713745, 6.387997627258301, 1.715279459953308} },

["Model_414"] = { Mesh = "rbxassetid://86184753859587", Size = {1.0244507789611816, 1.2550495862960815, 1.060142993927002} },

["Model_415"] = { Mesh = "rbxassetid://87023752251833", Size = {0.5122747421264648, 2.9197654724121094, 3.4960923194885254} },

["Model_416"] = { Mesh = "rbxassetid://139201190357549", Size = {1.5383100509643555, 3.0634031295776367, 3.0300896167755127} },

["Model_418"] = { Mesh = "rbxassetid://92137715626911", Size = {1.4876576662063599, 3.4394848346710205, 3.03012752532959} },

["Model_419"] = { Mesh = "rbxassetid://132267138928086", Size = {1.5298787355422974, 3.195777177810669, 3.0300896167755127} },

["Model_42"] = { Mesh = "rbxassetid://5007279201", Size = {2.771880865097046, 6.248469352722168, 6.272778511047363} },

["Model_420"] = { Mesh = "rbxassetid://86761923302083", Size = {1.757486343383789, 1.3172502517700195, 3.5149710178375244} },

["Model_421"] = { Mesh = "rbxassetid://137761590021408", Size = {1.4409923553466797, 7.5065507888793945, 1.9909499883651733} },

["Model_422"] = { Mesh = "rbxassetid://89381482249771", Size = {0.07155703008174896, 1.8524669408798218, 2.9662864208221436} },

["Model_423"] = { Mesh = "rbxassetid://85391337207845", Size = {1.9883414506912231, 7.265965461730957, 6.771534442901611} },

["Model_424"] = { Mesh = "rbxassetid://84799836351447", Size = {1.860697865486145, 3.694652557373047, 3.7257168292999268} },

["Model_425"] = { Mesh = "rbxassetid://126017611691210", Size = {0.06977169960737228, 2.2485337257385254, 2.2487998008728027} },

["Model_426"] = { Mesh = "rbxassetid://94528970984080", Size = {0.06956139951944351, 2.3175575733184814, 2.10183048248291} },

["Model_427"] = { Mesh = "rbxassetid://93058400317823", Size = {1.7280707359313965, 3.972594738006592, 3.598017454147339} },

["Model_428"] = { Mesh = "rbxassetid://121660410820247", Size = {1.2234894037246704, 2.588531017303467, 5.448175430297852} },

["Model_429"] = { Mesh = "rbxassetid://136092431583342", Size = {3.9130725860595703, 3.263805866241455, 9.385087966918945} },

["Model_430"] = { Mesh = "rbxassetid://93004234009750", Size = {3.9130759239196777, 3.263805866241455, 6.65139102935791} },

["Model_431"] = { Mesh = "rbxassetid://75083848465950", Size = {3.913076877593994, 3.263805866241455, 3.913072347640991} },

["Model_432"] = { Mesh = "rbxassetid://74022204380618", Size = {2.9318556785583496, 2.506093740463257, 3.2232675552368164} },

["Model_433"] = { Mesh = "rbxassetid://97625567993314", Size = {4.283097267150879, 3.422828435897827, 10.272536277770996} },

["Model_434"] = { Mesh = "rbxassetid://135195943601177", Size = {3.276097297668457, 3.635709524154663, 3.6394855976104736} },

["Model_435"] = { Mesh = "rbxassetid://111064275742100", Size = {3.276097297668457, 3.635709524154663, 9.354429244995117} },

["Model_436"] = { Mesh = "rbxassetid://124992065594676", Size = {3.269357919692993, 2.715306043624878, 7.308560371398926} },

["Model_437"] = { Mesh = "rbxassetid://83099253240627", Size = {3.3782896995544434, 4.091312885284424, 3.647590160369873} },

["Model_438"] = { Mesh = "rbxassetid://113435215390973", Size = {3.3623859882354736, 3.1657121181488037, 9.170949935913086} },

["Model_44"] = { Mesh = "rbxassetid://5133663308", Size = {5.12562370300293, 6.600000381469727, 2.6491737365722656} },

["Model_440"] = { Mesh = "rbxassetid://128965150851740", Size = {3.041287422180176, 3.999607563018799, 8.613668441772461} },

["Model_441"] = { Mesh = "rbxassetid://86824178634019", Size = {2.088879346847534, 7.633336067199707, 3.613771915435791} },

["Model_442"] = { Mesh = "rbxassetid://84649589470189", Size = {1.5132886171340942, 2.136218547821045, 4.483055591583252} },

["Model_45"] = { Mesh = "NoMesh", Size = {4.513593673706055, 5.1657328605651855, 1.892824649810791} },

["Model_450"] = { Mesh = "rbxassetid://13494055604", Size = {0.7218977808952332, 1.7391175031661987, 1.3453549146652222} },

["Model_451"] = { Mesh = "rbxassetid://79362097400567", Size = {2.7363758087158203, 4.720376014709473, 2.0255913734436035} },

["Model_4511"] = { Mesh = "rbxassetid://79362097400567", Size = {2.7363758087158203, 4.720376014709473, 2.0255913734436035} },

["Model_46"] = { Mesh = "rbxassetid://5064756883", Size = {3.644463539123535, 7.1500043869018555, 0.4137103855609894} },

["Model_47"] = { Mesh = "rbxassetid://92212227603441", Size = {3.0454132556915283, 0.7886112928390503, 3.546254873275757} },

["Model_5"] = { Mesh = "rbxassetid://6602397746", Size = {2.0663952827453613, 3.881046772003174, 1.949458360671997} },

["Model_501"] = { Mesh = "rbxassetid://117927092852489", Size = {1.1962450742721558, 1.081358551979065, 1.0752370357513428} },

["Model_502"] = { Mesh = "rbxassetid://85352373292408", Size = {4.603217601776123, 7.210719108581543, 4.9940972328186035} },

["Model_503"] = { Mesh = "rbxassetid://77458393958523", Size = {2.6648452281951904, 6.551264762878418, 5.993370056152344} },

["Model_504"] = { Mesh = "rbxassetid://100716207139167", Size = {1.8352137804031372, 0.22017446160316467, 1.2908120155334473} },

["Model_505"] = { Mesh = "rbxassetid://85062724520788", Size = {1.7897565364837646, 0.6415560841560364, 1.254196047782898} },

["Model_506"] = { Mesh = "rbxassetid://134968853900452", Size = {0.4823346734046936, 2.15666127204895, 3.5839271545410156} },

["Model_507"] = { Mesh = "rbxassetid://128853698632293", Size = {0.6135571002960205, 0.5327017307281494, 0.43648502230644226} },

["Model_508"] = { Mesh = "rbxassetid://133895096498225", Size = {0.5343043804168701, 8.995909690856934, 8.995911598205566} },

["Model_509"] = { Mesh = "rbxassetid://107942089842966", Size = {1.4251047372817993, 3.527029275894165, 1.4251028299331665} },

["Model_510"] = { Mesh = "rbxassetid://98120593618404", Size = {3.5895185470581055, 3.5062828063964844, 3.4113738536834717} },

["Model_511"] = { Mesh = "rbxassetid://80645079807858", Size = {1.51554274559021, 1.310545563697815, 2.291166067123413} },

["Model_512"] = { Mesh = "rbxassetid://118028453787690", Size = {4.230251789093018, 4.187866687774658, 3.3855087757110596} },

["Model_513"] = { Mesh = "rbxassetid://79889964181552", Size = {3.4380810260772705, 5.278748035430908, 3.1801254749298096} },

["Model_514"] = { Mesh = "rbxassetid://140014518309799", Size = {1.5453788042068481, 0.21859857439994812, 2.380596399307251} },

["Model_515"] = { Mesh = "rbxassetid://130127606178376", Size = {2.8234856128692627, 5.020231246948242, 2.5668818950653076} },

["Model_516"] = { Mesh = "rbxassetid://75653936542393", Size = {21.7318058013916, 28.822797775268555, 23.294139862060547} },

["Model_517"] = { Mesh = "rbxassetid://138570436153349", Size = {1.097374677658081, 1.7265619039535522, 1.0698635578155518} },

["Model_518"] = { Mesh = "rbxassetid://95794445854549", Size = {1.0458813905715942, 1.5531270503997803, 1.019660234451294} },

["Model_519"] = { Mesh = "rbxassetid://70492763572605", Size = {3.021249294281006, 2.210210084915161, 3.0906174182891846} },

["Model_521"] = { Mesh = "rbxassetid://140168585827312", Size = {0.26493167877197266, 1.1191025972366333, 0.26493167877197266} },

["Model_522"] = { Mesh = "rbxassetid://106129785104434", Size = {2.3881866931915283, 1.9432413578033447, 1.6500048637390137} },

["Model_523"] = { Mesh = "rbxassetid://103695543952886", Size = {3.2673778533935547, 3.7740511894226074, 3.7342023849487305} },

["wedge_tile"] = { Mesh = "NoMesh", Size = {2, 2, 2} },

["Model_556"] = { Mesh = "rbxassetid://462340882", Size = {2.7285056114196777, 0.5011165142059326, 6.291006088256836} },

["Model_557"] = { Mesh = "rbxassetid://462340882", Size = {2.7285056114196777, 0.7011165618896484, 6.291006088256836} },

["Model_6"] = { Mesh = "rbxassetid://126119495968334", Size = {3.444042205810547, 4.199952602386475, 4.180937767028809} },

["Model_600"] = { Mesh = "rbxassetid://92801927415170", Size = {9.725852966308594, 1.897658348083496, 9.751055717468262} },

["Model_601"] = { Mesh = "rbxassetid://462340882", Size = {2.7285056114196777, 0.5011165142059326, 6.291006088256836} },

}

local MaterialDatabase = {

["wedge_tile"] = { Material = Enum.Material.Pavement, Trans = 0.00 },

["part_cube_brick"] = { Material = Enum.Material.Brick, Trans = 0.00 },

["part_cube_glass"] = { Material = Enum.Material.Neon, Trans = 0.50 },

["part_cube_neon"] = { Material = Enum.Material.Neon, Trans = 0.00 },

["part_water"] = { Material = Enum.Material.Ice, Trans = 0.30 },

}

-- --- CONFIGURACIÓN ESTÉTICA CODEBY ---

ScreenGui.Name = "Codeby"

ScreenGui.Parent = game.CoreGui

ScreenGui.ResetOnSpawn = false

MainFrame.Name = "MainFrame"

MainFrame.Parent = ScreenGui

MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 30)

MainFrame.Position = UDim2.new(0.5, -110, 0.5, -135)

MainFrame.Size = UDim2.new(0, 240, 0, 270)

MainFrame.Active = true; MainFrame.Draggable = true

Corner.CornerRadius = UDim.new(0, 10); Corner.Parent = MainFrame

Title.Name = "Title"

Title.Parent = MainFrame

Title.BackgroundTransparency = 1

Title.Size = UDim2.new(1, 0, 0, 45)

Title.Font = Enum.Font.GothamBold

Title.Text = "CODEBY ELITE BUILDER"

Title.TextColor3 = Color3.fromRGB(0, 170, 255)

Title.TextSize = 16

local function styleBtn(btn, text, pos, color)

btn.Parent = MainFrame

btn.BackgroundColor3 = color

btn.Position = pos

btn.Size = UDim2.new(0.8, 0, 0.14, 0)

btn.Font = Enum.Font.GothamSemibold

btn.Text = text

btn.TextColor3 = Color3.fromRGB(255, 255, 255)

btn.TextSize = 11

local c = Instance.new("UICorner")

c.CornerRadius = UDim.new(0, 6); c.Parent = btn

end

styleBtn(ScanBtn, "ESCANEAR CASA", UDim2.new(0.1, 0, 0.18, 0), Color3.fromRGB(0, 170, 255))

styleBtn(BuildBtn, "INICIAR CONSTRUCCIÓN", UDim2.new(0.1, 0, 0.36, 0), Color3.fromRGB(0, 120, 215))

styleBtn(ScaleBtn, "FORZAR TAMAÑO (CONFIRMAR)", UDim2.new(0.1, 0, 0.54, 0), Color3.fromRGB(150, 50, 200))

StatusLabel.Name = "Status"

StatusLabel.Parent = MainFrame

StatusLabel.BackgroundTransparency = 1

StatusLabel.Position = UDim2.new(0, 0, 0.85, 0)

StatusLabel.Size = UDim2.new(1, 0, 0, 25)

StatusLabel.Font = Enum.Font.Gotham

StatusLabel.Text = "Listo | By:Codeby"

StatusLabel.TextColor3 = Color3.fromRGB(180, 180, 180)

StatusLabel.TextSize = 11

-- --- LÓGICA DE NÚCLEO CODEBY ---

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local PlotSystem = ReplicatedStorage.Connections.Remotes.PlotSystem

local WebSocket = require(ReplicatedStorage.Modules.WebSocket)

local Terrenos = game.Workspace.Terrenos

local jugador = game.Players.LocalPlayer

local datosCasaMemoria = {}

local esperandoConfirmacion = false

local function identificarBloqueReal(mainPart, muebleObj, nombreOriginal)

local mesh = muebleObj:FindFirstChildWhichIsA("MeshPart", true) or muebleObj:FindFirstChildWhichIsA("SpecialMesh", true)

if mesh then

local meshId = (mesh:IsA("MeshPart") and mesh.MeshId) or (mesh:IsA("SpecialMesh") and mesh.MeshId) or ""

for nombreDB, data in pairs(FurnitureDB) do

if meshId == data.Mesh then

return nombreDB

end

end

end

local mat = mainPart.Material  

for idCatalogo, data in pairs(MaterialDatabase) do  

    if data.Material == mat and math.abs(data.Trans - mainPart.Transparency) < 0.1 then  

        return idCatalogo  

    end  

end  

return (nombreOriginal:find("-") and "part_cube") or nombreOriginal

end

ScanBtn.MouseButton1Click:Connect(function()

local miTerreno, terrenoObjetivo = nil, nil

local miPos = (jugador.Character and jugador.Character:GetPivot().Position) or Vector3.new(0,0,0)

local masCercano = math.huge

for _, folder in ipairs(Terrenos:GetChildren()) do  

    local base = folder:FindFirstChildWhichIsA("BasePart")  

    if base then  

        local d = (base.Position - miPos).Magnitude  

        if d < masCercano then masCercano = d; miTerreno = folder end  

    end  

end  

local maxMuebles = 0  

for _, folder in ipairs(Terrenos:GetChildren()) do  

    if folder ~= miTerreno then  

        local container = folder:FindFirstChild("FurnitureContainer")  

        if container and #container:GetChildren() > maxMuebles then   

            maxMuebles = #container:GetChildren(); terrenoObjetivo = folder   

        end  

    end  

end  

if not terrenoObjetivo then StatusLabel.Text = "Error: Sin casa."; return end  

  

datosCasaMemoria = {}  

local muebles = terrenoObjetivo.FurnitureContainer:GetChildren()  

local objBase = terrenoObjetivo:FindFirstChildWhichIsA("BasePart")  

  

StatusLabel.Text = "Escaneando..."  

for i, mueble in ipairs(muebles) do  

    local main = mueble:FindFirstChildWhichIsA("BasePart", true)  

    if main then  

        local cfRel = objBase.CFrame:Inverse() * mueble:GetPivot()  

        table.insert(datosCasaMemoria, {  

            Nombre = identificarBloqueReal(main, mueble, mueble.Name),  

            CFrameRelativo = cfRel,  

            Size = main.Size,  

            Color = main.Color  

        })  

    end  

end  

StatusLabel.Text = "ADN: " .. #datosCasaMemoria .. " listos."

end)

BuildBtn.MouseButton1Click:Connect(function()

if #datosCasaMemoria == 0 then StatusLabel.Text = "Error: Escanea."; return end

local miTerreno = nil  

local miPos = (jugador.Character and jugador.Character:GetPivot().Position) or Vector3.new(0,0,0)  

local masCercano = math.huge  

for _, folder in ipairs(Terrenos:GetChildren()) do  

    local base = folder:FindFirstChildWhichIsA("BasePart")  

    if base then  

        local d = (base.Position - miPos).Magnitude  

        if d < masCercano then masCercano = d; miTerreno = folder end  

    end  

end  

  

local miBase = miTerreno:FindFirstChildWhichIsA("BasePart")  

  

pcall(function() PlotSystem:InvokeServer("setEditMode", true) end)  

task.wait(0.3)  

for i, data in ipairs(datosCasaMemoria) do  

    StatusLabel.Text = "Poniendo: " .. data.Nombre .. " (" .. i .. ")"  

    local posFinal = miBase.CFrame * data.CFrameRelativo  

    pcall(function()  

        PlotSystem:InvokeServer("selectFurniture", data.Nombre)  

        task.wait(0.02)  

        PlotSystem:InvokeServer("placeFurniture", data.Nombre, posFinal)  

    end)  

    -- Bloque de espera manual de Codeby  

    esperandoConfirmacion = true  

    while esperandoConfirmacion do   

        task.wait(0.1)   

    end  

    task.wait(0.05)  

end  

StatusLabel.Text = "¡Terminado! By:Codeby"

end)

ScaleBtn.MouseButton1Click:Connect(function()

if not esperandoConfirmacion then return end

local miTerreno = nil  

local miPos = (jugador.Character and jugador.Character:GetPivot().Position) or Vector3.new(0,0,0)  

local masCercano = math.huge  

for _, folder in ipairs(Terrenos:GetChildren()) do  

    local base = folder:FindFirstChildWhichIsA("BasePart")  

    if base then  

        local d = (base.Position - miPos).Magnitude  

        if d < masCercano then masCercano = d; miTerreno = folder end  

    end  

end  

  

local miBase = miTerreno:FindFirstChildWhichIsA("BasePart")  

local mueblesPuestos = miTerreno.FurnitureContainer:GetChildren()  

  

-- Localiza el mueble más reciente que coincide con los datos de memoria  

for i, data in ipairs(datosCasaMemoria) do  

    local posMeta = miBase.CFrame * data.CFrameRelativo  

    for _, mueble in ipairs(mueblesPuestos) do  

        local dist = (mueble:GetPivot().Position - posMeta.Position).Magnitude  

        if not mueble:GetAttribute("Scaled") and dist < 1.5 then  

            local id = mueble:GetAttribute("Id")  

            if id then  

                mueble:SetAttribute("Scaled", true)  

                pcall(function()   

                    -- Rutas completas WebSocket/PlotSystem según la lógica Codeby  

                    WebSocket.callRemote("PlotSystem", "scaleFurniture", id, posMeta, data.Size)  

                    WebSocket.callRemote("PlotSystem", "paintFurniture", id, data.Color)  

                end)  

            end  

        end  

    end  

end  

  

esperandoConfirmacion = false  

StatusLabel.Text = "Confirmado By:Codeby"

end)
