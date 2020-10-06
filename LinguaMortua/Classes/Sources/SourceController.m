//
//  SourceController.m
//  LinguaMortua
//
//  Created by Jared Warren on 9/5/20.
//  Copyright © 2020 Warren. All rights reserved.
//

#import "SourceController.h"
#import "Source.h"
#import "Work.h"
#import "WorkSection.h"

@implementation SourceController

+ (SourceController *) shared {
    static SourceController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [SourceController new];
    });
    return shared;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _sources = [self initializeSources];
    }
    return self;
}

- (NSArray *) initializeSources {
    return @[
        [[Source alloc]
         initWithTitle:@"The Instructions of Commodianus"
         subtitle:@"A series of acrostic poems written by the elderly Commodianus. Having lived his early life as a heathen before converting to Christianity, he felt the need to instruct youth against"
         date:@"late 200s"
         works:@[
             [[Work alloc]
              initWithTitle:@"Preface"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Præfatio"
                   text:@[
                       @"Prima præfatio nostra uiam erranti demonstrat\n"
                       "Respectumque bonum, cum uenerit saeculi meta,\n"
                       "Aeternum fieri, quod discredunt inscia corda.\n"
                       "Ego similiter erraui tempore multo\n"
                       "Fana prosequendo parentibus insciis ipsis;\n"
                       "Abstulit me tandem inde legendo de lege,\n"
                       "Testifico Dominum: doleo pro ciuica turba,\n"
                       "Inscia quod pergit periens deos quaerere uanos;\n"
                       "Ob ea perdoctus ignaros instruo uerum."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"God's Indignation"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Indignatio Dei"
                   text:@[
                       @"In lege praecepit dominus caeli, terrae marisque:\n"
                       "Nolite, inquid, adorare deos inanes\n"
                       "De manibus uestris factos ex ligno uel auro\n"
                       "Indignatio mea ne uos disperdat ob ista.\n"
                       "Gens ante Moysi rudis, sine lege morata\n"
                       "Nesciensque Deum, defunctos reges orabant,\n"
                       "Ad quorum effigies faciebant idola uana.\n"
                       "Translatis Iudaeis Dominus de terra Aegypti\n"
                       "Imposuit legem postmodum et ista praecepit,\n"
                       "Omnipotenti sibi soli deseruire, non illis.\n"
                       "De resurrectione quoque docetur in ipsa\n"
                       "Et spe fortunata rursum in aeuo uiuendi,\n"
                       "Idola si uana relinquantur neque colantur."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Demon Worship"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Cultura Dæmonum"
                   text:@[
                       @"Cum Deus omnipotens exornasset mundi naturam\n"
                       "Uisitari uoluit terram ab angelis istam;\n"
                       "Legitima cuius spreuerunt illi dimissi;\n"
                       "Tanta fuit forma feminarum, quae flecteret illos.\n"
                       "Ut quoinquinati non possunt caelo redire,\n"
                       "Rebelles ex illo contra Deum uerba misere.\n"
                       "Altissimus inde sententiam misit in illis;\n"
                       "De semine quorum Gigantes nati feruntur.\n"
                       "Ab ipsis in terra artis probata fuere,\n"
                       "Et tingere lanas docuerunt et quaecumque geruntur,\n"
                       "Mortales et illi mortuos simulacro ponebant.\n"
                       "Omnipotens autem, quod essent de semine prauo\n"
                       "Non censuit illos recipi defunctos e morte.\n"
                       "Unde modo uagi subuertunt corpora multa;\n"
                       "Maxime quos hodie colitis et deos oratis."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Saturn"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Saturnus"
                   text:@[
                       @"Saturnusque senex si deus, deus quando senescit?\n"
                       "Aut si deus erat, cur natos ille uorabat?\n"
                       "Terroribus actus, sed quia deus non erat ille,\n"
                       "Uiscera natorum rabie monstruosa sumebat.\n"
                       "Rex fuit in terris, in monte natus Olympo,\n"
                       "Nec erat diuinus; sic deum esse dicebant.\n"
                       "Uenit inops animi, lapidem pro filio sorbsit:\n"
                       "Sic deus euasit, dicitur modo Iuppiter ille."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Jupiter"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Iuppiter"
                   text:@[
                       @"Iuppiter hic natus in insula Creta Saturno\n"
                       "Ut fuit adultus, patrem de regno priuauit.\n"
                       "Proinde nobilium uxores sororesque delusit.\n"
                       "Praeterea sceptra fecerat faber ille Piragmon.\n"
                       "Initium caelum, terram Deus et mare fecit;\n"
                       "Terribilis autem iste medio tempore natus\n"
                       "Ex antro processit iuuenis furtimque nutritus.\n"
                       "Respice querellas: Alter est Deus, non Iouis ille."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Of the same Jupiter's Thunderbolt"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Fulmine Ipsius Iovis Audite"
                   text:@[
                       @"Dicitis o stulti: Iouis tonat, fulminat ipse.\n"
                       "Etsi paruulitas sic sensit, cur anni dicentes?\n"
                       "Fuistis infantes: numquid et semper eritis?\n"
                       "Uersari inmaturum infantia non capit usus\n"
                       "Lusus puerilis cessit: sic et corda recedant;\n"
                       "Moribus utique consilia uestra debentur.\n"
                       "Insipiens ergo Iouem tonitruare tu credis\n"
                       "Natum hic in terris et lacte caprino nutritum;\n"
                       "Ergo si illum deuorasset pater Saturnus,\n"
                       "In istis temporibus quis pluebat illo defuncto?\n"
                       "Praesertim mortali patre deus nasci credatur?\n"
                       "Saturnus in terris senuit et defecit in ipsis.\n"
                       "Illum non aliquis prophetauit ante pronasci.\n"
                       "Uel, si tonat ipse, lex ab ipso lata fuisset.\n"
                       "Seducunt historiae, factus cum fuerat ipse.\n"
                       "Ille autem in Cretam regnauit et ibi defecit.\n"
                       "Omnipotens uobis factus Semelis amator.\n"
                       "Uix ipse modo similiter amaret, si uiueret ille.\n"
                       "Inpuros oratis et dicitis esse caelestes\n"
                       "Semine mortali natos de Gigantibus illis.\n"
                       "Auditis et legitis natum in terra fuisse:\n"
                       "Unde bene meruit corruptor ascendere caelum?\n"
                       "Dicitis et fulmen Ciclopas illi fecissent.\n"
                       "Inmortalis enim habuit a mortalibus arma.\n"
                       "Tot reum criminibus, parricidam quoque suorum,\n"
                       "Ex auctoritate uestra contulistis in altum."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Of the Septizodium and Stars"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Septizonio et Stellis"
                   text:@[
                       @"De circulo zonae fallit uos imperitia uestra,\n"
                       "Ex eo quod forte Iouem experitis orandum.\n"
                       "Saturnus fertur ibi, sed stella, non ille; exfugit\n"
                       "Expulsus a Ioue. Aut Iouis in stella credatur\n"
                       "Poli quoque sidera tractauit solisque sator?\n"
                       "Troianis qui bellum fecit, auem mortalem amauit.\n"
                       "Ipsis sideribus aut Mars qui cum ipsa deprehensus\n"
                       "Zelo maritali deus dominetur aduliscens?\n"
                       "O nimium stulti, qui putatis moechos ab astris\n"
                       "Nascentes regere aut totam mundi naturam.\n"
                       "In uulnera positi et ipsi sub fata uiuentes,\n"
                       "Obsceni, furiosi, bellatores, impii uitae,\n"
                       "Et filios totidem mortales illi fecere:\n"
                       "Terribilis omnis, stulti, septizonio fortis!\n"
                       "Si stellas colitis, colite et bis sena sigilla!\n"
                       "Tam arietem, taurum, geminos, toruumque leonem\n"
                       "Et dein qui uadunt in piscibus tu quoque probabis.\n"
                       "Lex sine lege, fuga uestra, quod uult esse ualebit.\n"
                       "Lasciua uult esse, sine freno uiuere quaerit.\n"
                       "Ipsi quod uultis erit, et deos et deas oratis.\n"
                       "Sic ego colui, dum erraui, quos modo culpo."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Of the Sun and Moon"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Sole et Luna"
                   text:@[
                       @"De Sole et Luna, licet sint praesentanea nobis,\n"
                       "Erratis; quod ego prius, putatis oranda.\n"
                       "Sunt quidem in astris, sed non sua sponte currunt\n"
                       "Omnipotens illos, cum conderet omnia primum,\n"
                       "Locauitque ibidem cum stellis quarta dierum.\n"
                       "Errorem antiquus quin cum ***\n"
                       "Et quidem in legem iussit, ne quis illos adoret.\n"
                       "Tot deos oratis, qui nihil de uita promittunt,\n"
                       "Lex quorum in terra non est, nec ipsi praedicti\n"
                       "Uos autem seducunt sacerdotes pauci inanes\n"
                       "Numina qui dicunt aliquid morituro prodesse.\n"
                       "Accedite legis codicem et discite uerum."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Mercury"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Mercurius"
                   text:@[
                       @"Mercurius uester fiat cum arabylo depictus\n"
                       "Et galea et planta, pinnatus et cetera nudus.\n"
                       "Rem uideo miram, deum cum saccello uolare:\n"
                       "Currite pauperculi, cum gremio quo uolat ille,\n"
                       "Ut sacculum effundat: uos extunc estote parati.\n"
                       "Respicite pictum: quando uobis hic ab alto\n"
                       "Iactabit nummos, uos tunc saltate securi.\n"
                       "Uane, non insanis, colere deos pictos in axe?\n"
                       "Si uiuere recte nescis, cum besteis perge morari."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Neptune"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Neptunus"
                   text:@[
                       @"Neptunum facitis deum ex Saturno pronatum,\n"
                       "Et tridentem regit, ut pisces suffigere possit.\n"
                       "Paret esse deum + cumerale illi parate!\n"
                       "Troianis non ipse cum Apolline muros eduxit?\n"
                       "Unde deus factus inops cimentarius ille?\n"
                       "Non Cyclopem genuit monstrum? non moechus et ipse?\n"
                       "Uiuere non poterat de suo, quod structuram gerebat.\n"
                       "Sic genuit generatus, qui fuit iam mortuus olim."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Apollo Sortilegus Falsus"
                   text:@[
                       @"Apollinem facitis citharoedum atque diuinum.\n"
                       "Primum de moechia natus in insula Delo,\n"
                       "Oblata mercede postmodum structuras secutus\n"
                       "Laomedonti regi Troianorum muros eduxit\n"
                       "Locauitque sese, quem deum seducti putatis;\n"
                       "Ossibus cuius amor Cassandrae flagrauit,\n"
                       "Subdole quem lusit uirgo, falliturque diuinus\n"
                       "Officio uerbenis is potuit scire bicordem,\n"
                       "Repudiatus enim discessit inde diuinus.\n"
                       "Terruit hunc uirgo specie, quam ille deberet.\n"
                       "Illa prior utique debuerat deum amasse.\n"
                       "Lasciuientemque Daphnem sic coepit amare.\n"
                       "Et tamen insequitur, dum uult uiolare puellam:\n"
                       "Gratis amat stultus, nec potuit consequi cursum.\n"
                       "Uel, si deus erat, occurreret illi per auras:\n"
                       "Sub tectis illa prior uenit remansitque diuinus.\n"
                       "Fallit uos genus hominum, nam improbi isti fuerunt.\n"
                       "A primitia quoque pecora pauisse refertur.\n"
                       "Lusibus in positis dum mitteret discum in altum,\n"
                       "Sublapsum non potuit retinere prostrauit amicum:\n"
                       "Ultimus ille dies fuit Hyacinthi sodalis.\n"
                       "Si diuinus erat, mortem praecessisset amici."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Father Liber Bacchus"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Liber Pater Bacchus"
                   text:@[
                       @"Liberum patrem certe bis genitum dicitis ipsi.\n"
                       "In India natus ex Ioue Proserpina primum\n"
                       "Belligerans contra Titanas profuso cruore\n"
                       "Expirauit enim sicut ex mortalibus unus.\n"
                       "Rursus flato suo redditus in altero uentre.\n"
                       "Percipit hoc Semele iterum Iouis altera moecha,\n"
                       "Absciso cuius utero prope partu defunctae\n"
                       "Tollitur et datur Niso nutriendus alumnus.\n"
                       "Ex eo bis natus Dionisius ille uocatur,\n"
                       "Religio cuius in uacuo falsa curatur.\n"
                       "Bacchantur et illi, qualis nunc ipsi uidentur,\n"
                       "Aut pediculones mineruae omnisque scitoris.\n"
                       "Conspirant in malo, proludunt fincto furore,\n"
                       "Ceteros ut fallant dicturos numen adesse.\n"
                       "Huic manifeste rudes homines suille uiuentes\n"
                       "Uino permutati, primo quod expresserat ille,\n"
                       "Sub ludicro suo honorem illi dedere."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"The Unconquered One"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Invictus"
                   text:@[
                       @"Inuictus de petra natus si deus habetur,\n"
                       "Nunc ergo reticeo; uos de istis date priorem!\n"
                       "Uicit petra deum, quaerendus est petrae creator.\n"
                       "Insuper et furem adhuc depingitis esse,\n"
                       "Cum, si deus esset, utique non furto uiuebat.\n"
                       "Terrenus utique fuit et monstruosa natura\n"
                       "Uertebatque boues alienos semper in antris\n"
                       "Sicut et Cacus Uulcani filius ille."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Sylvanus"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Silvanus"
                   text:@[
                       @"Siluanus unde deus iterum apparuit esse?\n"
                       "Inde forte placet, eo quod bene fistula cantat?\n"
                       "Lar igitur quando? lignum nam forte non esset.\n"
                       "Uenalem emisti dominum, cum tu ipse sis illi.\n"
                       "Aspice, deficit lignum! quid illi debetur?\n"
                       "Non te pudet, stulte, tales adorare tabellas?\n"
                       "Unum quaere Deum, qui post mortem uiuere dicit!\n"
                       "Secede ab istis, qui sunt biothanati facti."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Hercules"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Hercles"
                   text:@[
                       @"Hercules quod monstrum Auentini montis elisit\n"
                       "Euandri qui solitus erat armenta furare,\n"
                       "Rustica mens hominum, indocilis quoque, pro laude\n"
                       "Cum gratias agere uellent, absentis Tonantis\n"
                       "Laetandas aras in memoriam sibi fecerunt.\n"
                       "Ex eo porrexit, de uetusto more colatur.\n"
                       "Sed deus hic non est, licet fuit fortis in armis."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Of the Gods and Goddesses"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Dis Deabusque"
                   text:@[
                       @"Dicitis esse deos, qui sunt manifeste cruenti,\n"
                       "Et dicitis fata genesis adscribere nobis?\n"
                       "Dicite nunc ergo, quibus primum sacra ferantur:\n"
                       "Inter utrumque uias mors inmatura uagatur.\n"
                       "Si tribuunt fata genesis, cur deum oratis?\n"
                       "Deciperis, uane, qui Manes quaeris orare,\n"
                       "Et qui fabricantur dominos tibi nuncupas esse.\n"
                       "Aut feminas quoque nescio quas deas oratis,\n"
                       "Bellonam et Nemesim, deas Furinam, Caelestem,\n"
                       "Uirginis, et Uenerem, cui coniuges uestrae delumbant.\n"
                       "Sunt alia praeterea daemonia procul a fanis,\n"
                       "Quae nec numerantur adhuc et in collo feruntur,\n"
                       "Ut nec ipsi sibi possint rationem reddere pestis.\n"
                       "Exportari magis in ultima terra deberent."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Of Their Images"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Simulacris Eorum"
                   text:@[
                       @"Deludunt uos pauci scelerati uates inanes,\n"
                       "Extricare suam dum quaerunt ** uitam.\n"
                       "Subornant aliis ex se sub mysteria falsum.\n"
                       "Inde simulantes concussi numine quodam\n"
                       "Maiestatemque canunt et se sub figura fatigant.\n"
                       "Uidistis saepe Duellonarios, quali fragore\n"
                       "Luxurias ineunt, dum furias fingere quaerunt,\n"
                       "Aut cum dorsa sua allidunt parca bipinne,\n"
                       "Cum doctrina sua cernant, quod cruore sanent.\n"
                       "Respicite, quando non illos numina cogunt,\n"
                       "Ipsi qui se primum conponunt integra mente;\n"
                       "Sed stipem ut tollant ingenia talia quaerunt.\n"
                       "Ex eo uidete, quoniam sunt omnia ficta.\n"
                       "Obumbrant populum supplicem, perituri ne credant.\n"
                       "Res semel in uano de uetustate processit,\n"
                       "Ut uaticinanti credatur prodita falsa;\n"
                       "Maiestas autem illorum nulla locutust."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Of the Ammydates and the Great God"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Ammudate et Deo Magno"
                   text:@[
                       @"Diximus iam multa de superstitione nefanda,\n"
                       "Et tamen exsequimur, ne quod praeterisse dicamur.\n"
                       "Ammudatem qui suum cultores more colebant,\n"
                       "Magnus erat illis, quando fuit aurum in aedem.\n"
                       "Mittebant capita sub numine quasi praesenti.\n"
                       "Uentum est ad summum, ut Caesar tolleret aurum:\n"
                       "Deficit numen aut fugit aut transit in ignem.\n"
                       "Auctor huius sceleris constat, qui formabat eundem.\n"
                       "Tot uiros et magnos seduxit false prophetans,\n"
                       "Et modo retacuit qui solebat esse diuinus.\n"
                       "Erumpebat enim uocis quasi mente mutata,\n"
                       "Tamquam illi deus ligni loqueretur in aurem.\n"
                       "Dicite nunc ipsi, si non sunt numina falsa.\n"
                       "Ex eo prodigio, quod perdidit, ille propheta\n"
                       "Oblitus est iste prophetare, qui ante solebat.\n"
                       "Monstra deo ista fincta sunt per uiniuoraces,\n"
                       "Audacia quorum damnabilis numina fingit.\n"
                       "Gestabantur enim, et aliut tale sigillum:\n"
                       "Nunc et ipse silet, nec ullus de illo prophetat.\n"
                       "O nimium stulti, sed uos ipsos perdere uultis."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"The Vain Nemesiaci"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Nemesiaci Vanis"
                   text:@[
                       @"Non ignominium est uirum seduci prudentem\n"
                       "Et colere talem aut Dianam dicere lignum?\n"
                       "Mane ebrio, crudo, perituro creditis uno,\n"
                       "Ex arte qui fincte loquitur, quod illi uidetur;\n"
                       "Se uere deum agit, sibi uiscera poscit.\n"
                       "Incopriat ciues unus detestabilis omnes\n"
                       "Adplicuitque sibi similis collegio facto,\n"
                       "Cum quibus historiam fingit, ut deum adornet.\n"
                       "Ipse sibi nescit diuinare, ceteris audet.\n"
                       "Succollat, quando libet, eum, et quando, deponit;\n"
                       "Uertitur a se rotans cum ligno bifurci,\n"
                       "Ac si putes illum adflatum numine ligni.\n"
                       "Non deos uos colitis, quos isti false prophetant:\n"
                       "Ipsos sacerdotes colitis in uano timentes.\n"
                       "Sed si corde uiges, fuge iam sacraria mortis."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"The Titans"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Titanes"
                   text:@[
                       @"Titanes uobis tutanos dicitis esse;\n"
                       "Ita Mutas, Tacitas sub culmine uestro rogatis,\n"
                       "Tot Lares aediculis, simulacra facta titano!\n"
                       "Adoratis enim stulti malo leto defunctos,\n"
                       "Non legem ipsorum legentes; non ipsi loquuntur,\n"
                       "Et deos audetis eramine dicere fusos?\n"
                       "Solueretis eos magis in uascula uobis."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"The Montesiani"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Montesianis"
                   text:@[
                       @"Monteses deos dicitis, dominentur in aruo\n"
                       "Obscurati malo aliena mente iurantes.\n"
                       "Nam si purus animus et mens serena maneret\n"
                       "Tu tibi de illis ipsi disputare deberes.\n"
                       "Excordaris homo, si putas, ut isti te saluent\n"
                       "Seu regant, seu minuant, nisi quod tu fani decurris.\n"
                       "Iustitiam legis quaere magis quam illa, salutis\n"
                       "Auxilium portat et fieri dicit aeternum.\n"
                       "Nam quicquid in uano sequeris, per tempora gaudes\n"
                       "In breui laetaris et postmodum plangis in imis:\n"
                       "Subtrahe te illis, si uis resurgere Christo."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"The Dullness of the Age"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Hebetudo Sæculi"
                   text:@[
                       @"Heu doleo, ciues, sic uos hebetari de mundo!\n"
                       "Excurrit alius ad sortis, aues aspicit alter\n"
                       "Belantum cruore fuso malus inspicit alter\n"
                       "Et cupit audire responsa bona crudelis,\n"
                       "Tot duces et reges ubi sunt consulti de uita.\n"
                       "Uel portenta sua scisse quo profuit illi?\n"
                       "Discite quaeso bonum, ciues, simulacra cauete:\n"
                       "Omnipotentis enim in legem quaerite cuncti.\n"
                       "Sic ipsi conplacuit domino dominorum in altis\n"
                       "Ad probationem nostram daemones in mundo uagari.\n"
                       "-"
                       "Caelestis fieri qui relinquant aras eorum.\n"
                       "Unde non hoc curo disputari paruo libello:\n"
                       "Lex docet in medio; oror consulete pro uobis!\n"
                       "In duas intrastis uias: condiscite rectam."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Of Those Who are Everywhere Ready"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Ubique Paratis"
                   text:@[
                       @"Dum uentri seruis, innocentem esse te dicis,\n"
                       "Et quasi communis facis te ubique paratum.\n"
                       "Uae tibi, stulte homo, mortem circumspicis ipse,\n"
                       "Barbaro de more sine lege uiuere quaeris:\n"
                       "Ipse tibi figis asciam in crure de uerbo.\n"
                       "Qui simplicem fingis, simpliciter uiue cum isto.\n"
                       "Uiuere te credis, dum uentrem cupis implere.\n"
                       "Exiguus tua in domo resedes, praue,\n"
                       "Paratus ad epulas, et refugis cenae praecepta.\n"
                       "Aut quia discredis Deum iudicare defunctos,\n"
                       "Rectorem caeli facis te tu forte pro illo?\n"
                       "Aspicis ad uentrem, quasi tu sis prouidus illi.\n"
                       "Tu modo profanus, modo sanctus esse uideris.\n"
                       "In supplicem prodis Dei sub aspectu, tyranne.\n"
                       "Senties in fatis, cuias modo legem inanis."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Those Who Live Between the Two"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Inter Utrumque Viventibus"
                   text:@[
                       @"Inter utrumque putans dubie uiuendo carere\n"
                       "Nudatus a lege, decrepitus luxu praecedis.\n"
                       "Tot, uane, luxurias prospicis; quid quaeris iniqua?\n"
                       "Et quidquid egistis, istinc remanere defuncto\n"
                       "Respicite! Stulte, non eras, et ecce uideris!\n"
                       "Unde processisti nescis nec unde nutriris.\n"
                       "Tu Deum excelsum fugis tuae uitae benignum\n"
                       "Rectoremque tuum, qui te magis uiuere uelit;\n"
                       "Uertis te in faciem et dorsum Deo remittis,\n"
                       "Mergis te in tenebris, dum putas te in lucem morari.\n"
                       "Quid in sinagoga decurris saepe bifarius?\n"
                       "Exis inde foris, iterum tu fana requiris;\n"
                       "Uis inter utrumque uiuere, sed inde peribis.\n"
                       "Insuper et dicis: 'Quis est, qui a morte reuenit\n"
                       "Ut credamus ei, quoniam ibi poenas aguntur?'\n"
                       "Ea non sunt sic, ut tu putas esse, maligne!\n"
                       "Nam illique prodest post funera, recte qui uixit,\n"
                       "Tu tamen mox moreris, duceris in loco maligno;\n"
                       "In Christo credentes autem in loco benigno,\n"
                       "Blanditurque quibus haeret amoenitas illa.\n"
                       "Uos autem dubios uiuos sine corpore poena\n"
                       "Suscitat in faciem tortoris sero clamare."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Those Who Fear and Not Believe"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Qui Imentet? Non Credent"
                   text:@[
                       @"Quamdiu, stulte homo, Christum cognoscere non uis?\n"
                       "Uitas agrum pinguem et stereli semina iactas.\n"
                       "In silua manere quaeris, ubi latro moratur.\n"
                       "Ingredere iam nunc totiens inuitatus in aula:\n"
                       "Matura iam messis, tempus totidemque paratum,\n"
                       "Ecce modo mete, quodsi non te paenitet inde.\n"
                       "Nunc, si non habes, collige; uindemia uenit;\n"
                       "Tempus adest uitae credenti tempore mortis.\n"
                       "Est Dei lex prima fundamentum posterae legis,\n"
                       "Teque designabat, crederes in lege secunda;\n"
                       "Nec minus et ipsos et ex ipsa sibi prudentes\n"
                       "Obstupe iam factus ora tu credere Christo,\n"
                       "Nam testamentum uetus de isto proclamat.\n"
                       "Credere nunc opus est, tantum in isto defunctum\n"
                       "Resurgere posse et uiuere tempore toto.\n"
                       "Ergo si quis ea discredis esse futura\n"
                       "Dummodo uincetur reus in morte secunda,\n"
                       "Euentura canam paucis in isto libello\n"
                       "Nam cognosci potest, ubi sit spes uitae ponenda.\n"
                       "Tamen uos adhortor quantocius credere Christo."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Those to Resist the Law of Christ the Living God"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Repugnantibus Adversus Legem Christi Dei Vivi"
                   text:@[
                       @"Respuis, infelix, bonum disciplinae caelestis\n"
                       "Et ruis in mortem, dum uis sine freno uagari.\n"
                       "Perdunt te luxuriae et breuia gaudia mundi,\n"
                       "Unde sub inferno cruciaberis tempore toto.\n"
                       "Gaudia sunt uana, quibus oblectaris inepte.\n"
                       "Non illa te reddunt hominem fuisse defunctum.\n"
                       "Anni te non possunt iam triginta reddere doctum?\n"
                       "Nescius si primum errasti, respice canum.\n"
                       "Tu putas nunc uitam isti te perfrui laetum?\n"
                       "Iniurias, lites ibi sunt et damna diurnum,\n"
                       "Bella uel infanda, fraudes, cum sanguine furta,\n"
                       "Ulceribus corpus uexatur gemiturque, ploratur,\n"
                       "Seu luis inuadit aut longo morbo teneris,\n"
                       "Aut natis orbaris, aut perdita coniugula defles;\n"
                       "Destruitur totum, ruunt dignitatis ab alto;\n"
                       "Ureris pauperie dupliciter certe si languis:\n"
                       "Et dicis uitam, ubi uitrea uita moraris?\n"
                       "Respice iam tandem hoc tempus inritum esse;\n"
                       "Sed in futuro tibi spes est sine dolo uiuendi.\n"
                       "Uiuere uolebant utique paruoli rapti,\n"
                       "Sed uita priuati iuuenes senescere forte,\n"
                       "Lautities diues perfrui quia ipse parabat;\n"
                       "Et tamen inuiti relinquimus omnia mundo.\n"
                       "Gens et ego fui peruersa mente moratus\n"
                       "Et uitam istius saeculi coram esse putabam\n"
                       "Mortemque similiter sicut uos iudicabam adesse,\n"
                       "Cum semel exisset animus, perisse defunctum.\n"
                       "Haec autem sic non sunt; sed conditor orbis et auctor\n"
                       "Requisiuit enim fratrem a fratre peremptum:\n"
                       "Impie, dic, inquit, ubinam frater? Ille negauit.\n"
                       "Sanguis enim fratris ad me perclamauit in altum.\n"
                       "Torqueris, uideo, ubi nil sentire putabas,\n"
                       "Ille autem uiuet et loca dextera tenet,\n"
                       "Delicias fruitur, quas tu perdidisti, nefande!\n"
                       "Et cum renouasti saeculum, et ille praegressus\n"
                       "Iam inmortalis erit; nam tu sub tartara planges.\n"
                       "Uiuet certe Deus, qui defunctos uiuere fecit\n"
                       "Innocuisque bonis ut reddat praemia digna,\n"
                       "Uesanis autem et impiis tartara saeua.\n"
                       "Incipe sentire iudicia Dei, seducte!"
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"O Fool, Thou Dost Not Die to God"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Stulte Non Permoreris Deo"
                   text:@[
                       @"Stulte, non permoreris nec mortuus effugis actus,\n"
                       "Tu licet disponas nihil te sentire defuncto.\n"
                       "Uinceris, insipiens: uiuit Deus conditor orbis,\n"
                       "Legitima cuius clamat ualere defuncto.\n"
                       "Tu autem dum praeceps sine Deo uiuere quaeris,\n"
                       "Extinctum in fatis iudicas aut fatale credis.\n"
                       "Non ita disposuit, ut tu putas, Deus aeternus,\n"
                       "Obliuitos esse mortuos de gesto priore.\n"
                       "Nunc nobis imperita fecit receptacula mortis,\n"
                       "Post cineres autem nostros uidebimus illa.\n"
                       "Erue te, stulte, qui putas, post funera non sis.\n"
                       "Rectorem dominumque tuum nihil posse fecisti.\n"
                       "Mors autem in uacuum non est, si corde retractes.\n"
                       "Optandum noscas, nam sero senties illum.\n"
                       "Rector eras carnis, non te certe caro regebat;\n"
                       "Exemptus ab illa reconditur illa tuorum.\n"
                       "Recte mortalis homo separatur a carne.\n"
                       "Idcirco nec poterint oculi mortales aequare,\n"
                       "Sic habet abyssus noster de Dei secreta.\n"
                       "Da nunc ergo Deo, fragilis dum moreris, honorem,\n"
                       "Et crede, quod Christus uiuum te de mortuo reddit.\n"
                       "Omnipotenti laudes in ecclesia reddere debes."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"The Righteous Rise Again"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Iusti Res Urgunt"
                   text:@[
                       @"Iustitia et bonitas, pax et patientia uera\n"
                       "Uiuere post fata faciunt et quaeri de actu:\n"
                       "Subdola mens autem, innoxia, perfida, praua\n"
                       "Tollit se in parte et fera mente moratur.\n"
                       "Impie, nunc audi, qui uis malefacta lucrari:\n"
                       "Respice terrenos iudices, in corpore qui nunc\n"
                       "Excruciant poenis diros: aut ferro parantur\n"
                       "Supplicia meritis aut longo carcere flere.\n"
                       "Ultime tu speras Deum inridere caelestem\n"
                       "Rectoremque poli, per quem sunt omnia facta?\n"
                       "Grassaris, insanis, detractas nunc et Dei nomen?\n"
                       "Unde non effugies, poenam post fata qui ponet.\n"
                       "Nunc uolo sis cautus, ne uenias ignis in aestu.\n"
                       "Trade te iam Christo, ut te benefacta sequantur."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"The Wicked and Unbelieving Rich Man"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Diviti Incredulo Malo"
                   text:@[
                       @"Differris, diues, nimium tua cuncta uidendo,\n"
                       "Insatiabiliter quibus adhuc adicere quaeris.\n"
                       "Uiuere post ista, dicis, non spero defunctus.\n"
                       "Ingrate summo Deo, qui sic Deum iudicas esse,\n"
                       "Te qui nesciente protulit, deinde nutriuit;\n"
                       "Ipse prata tua, gubernat uineas ipse,\n"
                       "Ipse greges pecorum et quicquid possides ipse,\n"
                       "Nec istis adtendistis. Aut tu regis omnia forte?\n"
                       "Caelum hoc et terram et maria salsa qui fecit,\n"
                       "Reddere decreuit nos ipsos in aureo saeclo\n"
                       "Et modo si credis, uiuitur in Dei secreta.\n"
                       "Disce Deum, stulte, qui uult te inmortalem adesse\n"
                       "Ut gratias illi referas in agone perennis.\n"
                       "Lex docet ipsius, sed quia uagari tu quaeris,\n"
                       "Omnia discredis et inde in tartara ibis:\n"
                       "Mox animam reddis, duceris quo te paenitet esse.\n"
                       "At luitur ibi poena spiritalis aeterna;\n"
                       "Lugia sunt semper, nec permoreris in illa\n"
                       "Omnipotentem Deum iam tunc ibi sero proclamans."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Rich Men, Be Humble"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Divites Humiles Estote"
                   text:@[
                       @"Disce, moriture, bonum ostendere cunctis.\n"
                       "In medio populi quid te facis alterum esse?\n"
                       "Uadis ubi nescis, et inscius inde recedis;\n"
                       "Impie tractas, cum ipso corpore sitis\n"
                       "Tu super diuitias, nimium te tollis in altum\n"
                       "Et festiua ducis nec respicis pauperes ultro\n"
                       "Subditos nunc uobis, nec parentes pascitis ipsos.\n"
                       "Heu miseri! fugiant longius mediocres a uobis.\n"
                       "'Uixit et extinxit pauper' ebriace clames.\n"
                       "Mox furiis ageris, cum pereas ipse, Carybdis.\n"
                       "Indisciplinati sicut pecora diuites estis:\n"
                       "Legem datis istis, nam uobis parcitis ipsis.\n"
                       "Exuite, diuites, tantis malis Deo peruersos,\n"
                       "Subueniat utique tibi, qui nunc operati si forte.\n"
                       "Estote communes minimis, dum tempus habetis;\n"
                       "Sicut ulmus amat uitem, sic ipsi pusillos.\n"
                       "Terribilem legem malis bonis atque benignam\n"
                       "Obserua nunc sterelis, subditus in prosperis esto;\n"
                       "Tollite corda fraudis, diuites, et sumite pacis.\n"
                       "Expiate malum uestrum benefactis a Summo."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"To Judges"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Iudicibus Sibi Placentibus"
                   text:@[
                       @"Intuite dicta Salominis, iudices omnes,\n"
                       "Uno uerbo suo qualiter uos ille detractat:\n"
                       "Dona quam et xenia corrumpunt iudices omnes!\n"
                       "Inde 'nimis', sequitur, 'datorem semper amatis',\n"
                       "Cum quaeritur, causa uictoriam tollit iniqua.\n"
                       "Innocens hic ego sum, nec uos incuso pusillus,\n"
                       "Blasphemium tollat Salomon, qui clamat aperte.\n"
                       "'Uobis autem Deus est uenter et praemia iura.'\n"
                       "Suggerit hoc Paulus apostolus, non ego pulex.\n"
                       "Si locus aut tempus fauet aut persona prouenit,\n"
                       "Iudex esto tuus. Quod nunc extolleris inde?\n"
                       "Blasphemas, indocilis: de cuius praestantia uiuis,\n"
                       "In fragilitate tanta non respicis umquam.\n"
                       "Per gradum et lucra auidus fortunae praesumis,\n"
                       "Lex tibi non ulla est, nec te in prosperitate dignos\n"
                       "Auro licet cenes cum turba choraulica semper\n"
                       "Cruciarium Dominum si non adorasti, peristi.\n"
                       "Et locus et tempus et persona tibi donatur,\n"
                       "Nunc si tamen credis; sin autem, pro eo timebis.\n"
                       "Tempera te Christo et ceruicem illi depone:\n"
                       "Isti honor remanet et tota fiducia rerum.\n"
                       "Blanditur quando tibi tempus nunc, cautior esto,\n"
                       "Ultima fatorum non prouidens, quae te oportet.\n"
                       "Sine Christo nec uixisse te conpotis unquam."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"To Self-Pleasers"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Sibi Placentibus"
                   text:@[
                       @"Si locus aut tempus fauet aut persona prouenit,\n"
                       "Iudex esto tuus. Quod nunc extolleris inde?\n"
                       "Blasphemas, indocilis: de cuius praestantia uiuis,\n"
                       "In fragilitate tanta non respicis umquam.\n"
                       "Per gradum et lucra auidus fortunae praesumis,\n"
                       "Lex tibi non ulla est, nec te in prosperitate dignos\n"
                       "Auro licet cenes cum turba choraulica semper\n"
                       "Cruciarium Dominum si non adorasti, peristi.\n"
                       "Et locus et tempus et persona tibi donatur,\n"
                       "Nunc si tamen credis; sin autem, pro eo timebis.\n"
                       "Tempera te Christo et ceruicem illi depone:\n"
                       "Isti honor remanet et tota fiducia rerum.\n"
                       "Blanditur quando tibi tempus nunc, cautior esto,\n"
                       "Ultima fatorum non prouidens, quae te oportet.\n"
                       "Sine Christo nec uixisse te conpotis unquam."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"To the Gentiles"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Gentilibus"
                   text:@[
                       @"Gens sine pastore ferox iam noli uagare.\n"
                       "Et ego, qui moneo, idem fui nescius errans.\n"
                       "Nunc ideo Domini figuram sumite uestri,\n"
                       "Tollite corda fera et exasperate seorsum:\n"
                       "Intrate stabulis, siluestris, ad praesepia tauri,\n"
                       "Latronibus tuti sub regis tecta manentes.\n"
                       "In silua lupi sunt, ideo refugite sub antro.\n"
                       "Bellaris, insanis nec respicis, ubi moraris.\n"
                       "Uno crede Deo, ubi mortuus uiuere possis\n"
                       "Surgas et in regno, cum sit resurrectio iustis."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Moreover, to Ignorant Gentiles"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Item Gentilibus Ignaris"
                   text:@[
                       @"Indomita ceruia respuit iugum ferre labori,\n"
                       "Tunc iuuat in campis crassis satiare cauliclis.\n"
                       "Et tamen inuita domatur utilis aeque\n"
                       "Minuiturque ferox esse perinde domata;\n"
                       "Gens, homo, tu frater, noli pecus esse ferinum,\n"
                       "Erue te tandem et tecum ipse retracta:\n"
                       "Non utique pecus nec besteis, sed homo natus,\n"
                       "Tu te ipse doma sapiens et intra sub antra.\n"
                       "Idola qui sequeris, nihil nisi uanitas aeui.\n"
                       "Leuia uos corda perducunt poenali barathro.\n"
                       "Ibi aurum, uestes, argentum ulnis refertis,\n"
                       "Ballatur ibi, dein cantatur pro psalmis amori.\n"
                       "Uitam esse putas, ubi ludi, aut prospicis ista:\n"
                       "Sortiris, ignare, extincta, aurea quaeris.\n"
                       "Inde non effugies pestem, licet ipse diuines.\n"
                       "Gratiam, quam misit Dominus in terra legendam,\n"
                       "Non requiris eam, sed sic quasi besteus errans.\n"
                       "Aurea post fata ueniet tibi saecla, si credis recte,\n"
                       "Rursus ut incipias inmortale uiuere semper.\n"
                       "Illud quoque datur scire, quod ante fuisti:\n"
                       "Subiectum te praebe Deo, qui cuncta gubernat."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Of the Tree of Life and Death"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Of the Tree of Life and Death"
                   text:@[
                       @"Adam protoplaustus ut Dei praecepta uitaret,\n"
                       "Belias seruator fuit de inuidia plasmae.\n"
                       "Contulisset nobis seu boni seu mali quod egit\n"
                       "Dux natiuitatis; morimur idemque per illum,\n"
                       "Ex diuino ipse ut recedens exsul factus a uerbo.\n"
                       "Finitis sex milibus annis inmortales erimus.\n"
                       "Gustato pomo ligni mors intrauit in orbem:\n"
                       "Hoc ligno mortis quaeramus uitae futurae.\n"
                       "In ligno pendit uita ferens poma, praecepta:\n"
                       "Kapite nunc ligno uitali poma credentes.\n"
                       "Lex a ligno data est homini primitiuo timenda,\n"
                       "Mors unde prouenit neglecta lege primordi:\n"
                       "Nunc extende manum et sume de ligno uitali.\n"
                       "Optima lex Domini sequens de ligno processit;\n"
                       "Perdita lex prima; gustat, unde licet illi,\n"
                       "Qui deos adorat uetitos, mala gaudia uitae.\n"
                       "Respuite gustum; sufficiet scire quod esset.\n"
                       "Si uiuere uultis, reddite uos legi secundae,\n"
                       "Templorum culturam, daemonum fana uitate.\n"
                       "Uertite uos Christo, et eritis Deo sodales.\n"
                       "Xancta Dei lex est, qui mortuos uiuere dicit.\n"
                       "Ymnum sibi soli Dominus proferre praecepit,\n"
                       "Zabolicam legem omnes omnino uitate."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Of the Foolishness of the Cross"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Ruci Stulitia"
                   text:@[
                       @"De duplici ligno dixi, mors unde processit,\n"
                       "Et iterum inde procedere uitam frequenter.\n"
                       "Rex aeternitatis per crucem diros adumbrat,\n"
                       "Ut sibi non credant. O stulti, morte uiuentes!\n"
                       "Cain iuniorem occisit nequam repertus:\n"
                       "Inde Noe subolis Cananaei nati feruntur.\n"
                       "Sic genus iniquum increuit mundo, qui nunquam\n"
                       "Transmutat animos in Domini credere crucem.\n"
                       "Uenit in errorem, et dicunt se uiuere recte.\n"
                       "Lex in ligno fuit prima, et inde secunda\n"
                       "Terribilem legem primam cum pace praeuenit.\n"
                       "In praua iactatione saeua scelerati ruerunt:\n"
                       "Traiectum clauis Dominum cognoscere nolunt,\n"
                       "In cuius iudicium cum uenerit, ibi dignoscunt.\n"
                       "Abel genus autem credit modo Christo benigno."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"The Fanatics Who Judaize"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Quid Iudæ Diant Fanatic?"
                   text:@[
                       @"Quid? medius Iudaeus, medius uis esse profanus?\n"
                       "Unde non effugies iudicium Christi defunctus.\n"
                       "Ipse caecus erras et ad caecos intras, inepte;\n"
                       "Idcirco caecus caecum in fossa reducit.\n"
                       "Uadis ubi nescis, et inscius inde recedis.\n"
                       "Discentes ad doctos eunt, ut docti recedant,\n"
                       "At tu aliis uadis, unde nihil discere possis.\n"
                       "Exis pro foribus, inde et ad idola uadis.\n"
                       "Interroga primum, quod sit in lege praeceptum,\n"
                       "Dicant illi tibi, si iussum est deos adorare.\n"
                       "Ignoratur enim propter quod maxime sumus:\n"
                       "At illi quoniam rei sunt ex ipso delicto,\n"
                       "Nihil de praeceptis Dei nisi mirabilia narrant.\n"
                       "Tunc tamen in fossam secum uos caeci deducunt.\n"
                       "Funera sunt; nimium de illis tota deferre,\n"
                       "Aut, quia concludor, agerem congustus aratris.\n"
                       "Noluit Omnipotens illos intellegere Regem;\n"
                       "A scelere a tanto refugit ipse cruentos.\n"
                       "Tradidit se nobis noua superaddita lege,\n"
                       "Inde modo latrant nobiscum rege deserti.\n"
                       "Ceterum in illis si spem inesse putatis"
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"To the Jews"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Iudæis"
                   text:@[
                       @"Inprobi semper et dura ceruice recalces,\n"
                       "Uinci uos non uultis: sic exheredes eritis.\n"
                       "Dixit Esaias incrassato corde uos esse.\n"
                       "Aspicis legem, quam Moyses allisit iratus;\n"
                       "Et idem Dominus dedit illi legem secundam.\n"
                       "In illa spem posuit, quam uos subsannatis erecti.\n"
                       "Sic ideo indigni non eritis regno caelesti?"
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Also to the Jews"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Item Iudæis"
                   text:@[
                       @"Inspice Liam typum sinagogae fuisse,\n"
                       "Tam infirmis oculis, quam Iacob in signo recepit;\n"
                       "Et tamen seruiuit rursum pro minore dilecta,\n"
                       "Mysterium uerum et typum ecclesiae nostrae.\n"
                       "Intuite plenae dictum Rebeccae de caelo,\n"
                       "Unde simulatis aliene, ne Christo credatis.\n"
                       "Deinde Thamar partum geminorum adite;\n"
                       "Ad Kain intendite, primum terraeque cultorem,\n"
                       "Et Abel pastorem, priscus inmaculatus offertor\n"
                       "In fratris saeuitie qui fuit mactatus a fratre.\n"
                       "Sic ergo percipite iuniores Christo probatos."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Again to the Same"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Iterum Ipsis"
                   text:@[
                       @"Incredulus populus non est nisi uester, iniqui,\n"
                       "Tot locis et totiens reprobatus lege clamantum.\n"
                       "Et sabbatas uestras spernit et tricensimas Altus\n"
                       "Rescidit omnino uniuersas uestras de lege,\n"
                       "Ut nec sacrificia faceretis illi praecepta\n"
                       "Mittere qui dixit lapidem in scandalo uestro.\n"
                       "Iniqua si quis uestrum non crediderint morte\n"
                       "Pars alia legis clamat: 'Uidebitis inde\n"
                       "Suspensam in ligno uitam; nec illi credidistis'.\n"
                       "Ipse Deus uita est, pependit ipse pro nobis,\n"
                       "Sed uos indurato corde subsannatis eundem."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Of the Time of the Antichrist"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Antechristi Tempore?"
                   text:@[
                       @"Dixit Esaias: Hic homo, qui commouit orbem\n"
                       "Et reges totidem, sub quo fiet terra deserta.\n"
                       "Audite, quoniam propheta de illo praedixit;\n"
                       "Nihil ego conposite dixi, sed legem legendo.\n"
                       "Tum scilicet mundus finitur, cum ille parebit\n"
                       "Et tres imperantes ipse deuicerit orbe.\n"
                       "Cum fuerit autem Nero de inferno leuatus,\n"
                       "Helias ueniet prius signare dilectos,\n"
                       "Rex quam sub fine regit et artatio tota.\n"
                       "In septem annis tremebit undique terra:\n"
                       "Sed medium tempus Helias, medium Nero tenebit.\n"
                       "Tunc Babillon meretrix erit incinefacta fauilla\n"
                       "Inde ad Hierusalem perget, uictorque Latinus\n"
                       "Tunc dicit: Ego sum Christus, quem semper oratis.\n"
                       "Et quidem conlaudant illum primitiui decepti\n"
                       "Multa signa facit quoniam cuius pseudopropheta.\n"
                       "---\n"
                       "Omnipotens tribuit, ut spiritalis eradat.\n"
                       "Recapitulantes scripturas ex eo Iudaei\n"
                       "Exclamant pariter ad Excelsum sese deceptos."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Of the Hidden and Holy People of the Almighty Christ, the Living God"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Populo Absconso Sancto Omnipotentis Christi Dei Vivi"
                   text:@[
                       @"Desidet populus absconsus ultimus sanctus\n"
                       "Et quidem ignotus a nobis ubi moretur.\n"
                       "Per nouem tribum agant et dimidiam ipsi,\n"
                       "Omissae duae tribum haec sunt et dimidia nobis.\n"
                       "Praecepitque Christus per legem uiuere priscos.\n"
                       "Uiuamus nunc omnes, nouellae traditio legis\n"
                       "Lex ut ipsa docet! Apertius indico uobis.\n"
                       "Obrelictae duae tribum et dimidia: quare\n"
                       "Ab istis dimidia tribum? Ut martyres essent\n"
                       "Bellum cum inferret electis suis in orbem,\n"
                       "Seu certe sanctorum chorus prophetarum ad illam\n"
                       "Consurgeret plebem, qui frenum inponeret illis,\n"
                       "Obsceni quos equi trucidarunt calci remissa\n"
                       "Nec suerit ad manus pacem aliquando tenere.\n"
                       "Semotae sunt isti tribuum, ut mysteria Christi\n"
                       "Omnia per istas conpleatur saeculo toto.\n"
                       "Sunt autem de scelere duorum fratrum enatae,\n"
                       "Auspicio quorum facinus secutae fuere.\n"
                       "Non merito tales dispersi sunt ipsi cruenti?\n"
                       "Conueniunt iterum propter mysteria castris.\n"
                       "Tunc autem properant conpleri legis narrata.\n"
                       "Omnipotens Christus descendit ad suos electos,\n"
                       "Obscurati nobis qui fuerunt tempore tanto\n"
                       "Milia fot facti; illa est gens uera caelestis.\n"
                       "Non natus ante patrem moritur ibi, neque dolores\n"
                       "In suis corporibus sentiunt ut ulcera nata.\n"
                       "Pausantes in lecto suo mature recedunt\n"
                       "Omnia conplentes legis, ideoque tutantur.\n"
                       "Transire iubentur ad Dominum partibus istis\n"
                       "Exsiccat fluuium quibus sicut ante traiectis,\n"
                       "Nec minus et Dominus ipse producit cum illis.\n"
                       "Transiit ad nostra, ueniunt cum rege caeleste.\n"
                       "In quorum itinere quod dicam, quo Deus educet,\n"
                       "Subsidunt montes ante illos et fontes erumpunt:\n"
                       "Caelestem populum gaudet creatura uidere.\n"
                       "Hic tamen festinant matrem defendere captam.\n"
                       "Rex autem iniquus, qui obtinet, illum ut audit,\n"
                       "In partem boreae refugit et colligit omnes.\n"
                       "Sed cum se inlidet exercitu Dei tyrannus\n"
                       "Terrore caelesti prosternuntur milites eius,\n"
                       "Ipse cum infando conprehenditur pseudopropheta;\n"
                       "Decreto Domini traduntur uiui gehennae.\n"
                       "Ex eo primores et duces seruire iubentur.\n"
                       "Intrabunt tunc sancti ad antiqua ubera matris,\n"
                       "Ut autem et illi refrigerent, quos malus ille suasit,\n"
                       "In uariis poenis cruciabat sibi credendos.\n"
                       "Uentum est ad finem, quod tollantur scandala mundo;\n"
                       "Incipiet Dominus iudicium dare per ignem."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Of the End of this Age"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Sæculi Istius Fine"
                   text:@[
                       @"Dat tuba caelo signum sublato leone\n"
                       "Et fiunt desubito tenebrae cum caeli fragore.\n"
                       "Summittit oculos Dominus, ut terra tremescat,\n"
                       "Adclamat etiam, ut audiant omnes in orbem:\n"
                       "'Ecce diu tacui sufferens tanto tempore uestra!'\n"
                       "Conclamant pariter plangentes sero gementes,\n"
                       "Ululatur, ploratur, nec spatium datur iniquis.\n"
                       "Lactanti quod faciet mater, cum ipsa crematur?\n"
                       "In flamma ignis Dominus iudicabit iniquos:\n"
                       "Iustos autem non tanget ignis, sed immo delinget.\n"
                       "Sub uno morantur, sed pars in sententia flebit.\n"
                       "Tantus erit ardor, ut lapides ipsi liquescant,\n"
                       "In fulmine cogunt uenti, furet ira caelestis\n"
                       "Ut, quacumque fugit, impius occupetur ab igne.\n"
                       "Subpetium nullum erit nec nauticae puppes.\n"
                       "Flamma tamen gentis media partiturque seruans,\n"
                       "In annis mille ut ferant corpora sanctis.\n"
                       "Nam inde post annos mille gehennae traduntur,\n"
                       "Et fabrica cuius erant cum ipsa cremantur."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Of the First Resurrection"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Resurrectione Prima"
                   text:@[
                       @"De caelo descendit ciuitas in anastase prima.\n"
                       "Et quod referamus de fabrica tanta caeleste?\n"
                       "Resurgimus illi, qui fuimus illi deuoti,\n"
                       "Et incorrupti erint iam tunc sine morte uiuentes,\n"
                       "Sed nec dolor ullus nec gemitus erit in illa.\n"
                       "Uenturi sunt illi quoque, sub Antechristo qui uincunt\n"
                       "Robusta martyria, et ipsi toto tempore uiuunt\n"
                       "Recipiuntque bona, quoniam mala passi fuere,\n"
                       "Et generant ipsi per annos mille nubentes.\n"
                       "Conparantur ibi tota uectigalia terrae,\n"
                       "Terra quia nimium fundit sine fine nouata.\n"
                       "Inibi non pluuiam, non frigus in aurea castra,\n"
                       "Obsidiae nullae, sicut nunc, neque rapinae.\n"
                       "Nec lucernae lumen desiderat ciuitas illa:\n"
                       "Ex auctore suo lucet, nec nox ibi paret.\n"
                       "Per duodecim milia stadia lata, longa, sic alta;\n"
                       "Radicem in terra, sed caput cum caelo peraequat;\n"
                       "In urbem pro foribus autem sol aut luna lucebit.\n"
                       "Malus in angore saeptus propter iustos alendos.\n"
                       "Ab annis autem mille Deus omnia portat."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Of the Day of Judgement"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Die Iudicii"
                   text:@[
                       @"De die iudicii propter incredulos addo:\n"
                       "Emissus iterum Dei dominabitur ignis;\n"
                       "Dat gemitum terra rerum tunc in ultima fine\n"
                       "In terra gentes ut tunc incredulae cunctae,\n"
                       "Euitat et tamen sanctorum castra suorum.\n"
                       "In una flamma conuertit tota natura,\n"
                       "Uritur ab imis terra montesque liquescunt,\n"
                       "De mare nihil remanet, uincetur ab igne potente,\n"
                       "Interit hoc caelum et ista terra mutatur.\n"
                       "Conponitur alia nouitas caeli, terrae perennis.\n"
                       "Inde qui mereunt mittuntur in morte secunda,\n"
                       "Interius autem habitaculis iusti locantur."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"To Catechumins"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Catecuminis"
                   text:@[
                       @"Credentes in Christo derelictis idolis omnes\n"
                       "Admoneo paucis propter salutaria uestra.\n"
                       "Temporibus primis per errorem si qua gerebas,\n"
                       "Erogatus enim Christo tu cuncta relinque,\n"
                       "Cumque Deum nosti, esto bonus tiro, probatus,\n"
                       "Uirgineusque pudor tecum uersetur in agno.\n"
                       "Mens bonis inuigilet: caue ut non delinquas ut ante;\n"
                       "In baptismo tibi genitali sola donantur.\n"
                       "Nam si quis peccans catecuminus poena notantur,\n"
                       "Insignis illa uiuat, sed non sine damna moraris.\n"
                       "Summa tibi: grauia peccata deuita tu semper."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"To the Faithful"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Fidelibus"
                   text:@[
                       @"Fideles admoneo, fratres ne odia tollant:\n"
                       "Impia martyribus odia reputantur in ignem;\n"
                       "Destruitur martyr, cuius est confessio talis,\n"
                       "Lex iniquo datur, ut possit sese frenare;\n"
                       "Inde lotus carere debes similiter et tu.\n"
                       "Bis Deo peccas, qui lites fratri protendis.\n"
                       "Unde non effugies peccatum prisce sectans.\n"
                       "Semel es lotus, numquid poteris denuo mergi?"
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"O Faithful, Beware of Evil"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Fideles Cavete Malum"
                   text:@[
                       @"Fallantur uolucres et siluarum bestei escis:\n"
                       "Incauta natura quibus est tradita mentis,\n"
                       "Decipiunturque strofia aut esca sequentes,\n"
                       "Et uitare malum nesciunt nec lege tenentur.\n"
                       "Lex homini data est et doctrina uitae legenda,\n"
                       "Ex qua recordatur, ut possit uiuere caute,\n"
                       "Sui quoque locum, mortis et deroget ea quae sunt.\n"
                       "Condemnat se ipsum grauiter qui regi delinquet:\n"
                       "Aut ferro ligatur aut decus gradu deiectus\n"
                       "Uel uita priuatus perdet, quod frui deberet.\n"
                       "Exemplo moniti grauiter peccare nolite,\n"
                       "Translati lauacro magis caritatem habete,\n"
                       "Et escam muscipuli, ubi mors est, longe uitate.\n"
                       "Multa sunt martyria, quae sunt sine sanguine fuso.\n"
                       "Alienum non cupire, uelle martyrii habere,\n"
                       "Linguam refrenare, humilem te reddere debes,\n"
                       "Uim ultro non facere nec factam reddere contra\n"
                       "Mens patiens fueris: intellege martyrem esse."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"To Penitents"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Pænitentibus"
                   text:@[
                       @"Paenitens es factus: noctibus diebusque precare,\n"
                       "Attamen a matre noli discedere longe,\n"
                       "Et tibi misericors poterit Altissimus esse.\n"
                       "Non fiet in uacuum confusio culpae perinde\n"
                       "In reatu tuo debes manifesta deflere,\n"
                       "Tu si uulnus habes altum, medicumque require,\n"
                       "Et tamen in poenis poteris tua damna lenire.\n"
                       "Namque fatebor enim unum me ex uobis adesse\n"
                       "Terroremque diu quondam sensisse ruinae.\n"
                       "Idcirco commoneo uulneratos cautius ire,\n"
                       "Barbam atque comam foedare in puluere terrae\n"
                       "Uolutareque saccis et petere summo de Rege\n"
                       "Subuenire tibi, ne pereas forte de plebe."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Who Have Apostitized from God"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Qui Apostatauerunt Deo"
                   text:@[
                       @"Quando bellum autem geritur aut inrigat hostis,\n"
                       "Uincere qui poterit aut latere, magna tropaea,\n"
                       "Infelix autem erit, qui fuerit captus ab illis.\n"
                       "Amittit et patriam et regem, cui digne prouenit,\n"
                       "Pugnare pro patria qui noluit neque pro uita.\n"
                       "Obisse debuerat quam ire sub barbaro rege,\n"
                       "Seruitiumque pateat hostibus sine lege deferre.\n"
                       "Tu si praedicando moreris pro terra, uicisti,\n"
                       "At si manus dederis incolumem, lege peristi.\n"
                       "Transfluuiat hostis, tu sub latebra reconde,\n"
                       "Aut si intrare potest sine caede, ne cessa.\n"
                       "Undique te redde tutum tuos quoque: uicisti;\n"
                       "Et uigilanter age, ne quis incurrat in illa.\n"
                       "Rex infamis erit, si quis se propalat hosti.\n"
                       "Uincere qui nescit et occurrit tradere sese,\n"
                       "Nec sibi nec patriae laudem remisit ineptus;\n"
                       "Tunc uiuere noluit, cum ipsa uita peribit.\n"
                       "Deinde si refugiat inops aut profanus ab hoste,\n"
                       "Eramen ut sonans, facti uel ut aspides surdi,\n"
                       "Orare satis debet et se condere talis."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Of Infants"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Infantibus"
                   text:@[
                       @"Debellum hostis si subito uenit inundans,\n"
                       "Et prius quam fugerent, paruulos occupauit inertes,\n"
                       "Inproperandum eis non est, licet capti uidentur.\n"
                       "Nec quidem excuso: ob delicta forte parentum\n"
                       "Fuere promeriti, ideo Deus tradidit illos.\n"
                       "Attamen adultos hortor, in aula recurrant,\n"
                       "Nascunturque quasi denuo suae matri de uentre,\n"
                       "Terribilem gentem fugiens semperque cruentam,\n"
                       "Impiam, indocilem, ferina uita uiuentem\n"
                       "Bellum enim alium cum fuerit forte gerendum\n"
                       "Uincere qui poterit aut certe iam scire cauere"
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Deserters"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Desertores"
                   text:@[
                       @"Desertores enim genere non uno dicuntur:\n"
                       "Est alius nequam, alius in parte secedat,\n"
                       "Sed tamen utroque iudicia uera decernunt.\n"
                       "Ecce militatur Christo sicut Caesari: paret.\n"
                       "Refugium Regis pete, si delictor fuisti;\n"
                       "Tu illum inplora, prostratus illi fatere:\n"
                       "Omnia concedet, cuius sunt et omnia nostra.\n"
                       "Repositus castris ulterius caue delinquas.\n"
                       "Errare noli diu miles per spelaea ferarum.\n"
                       "Sit tibi pro peccare desistere gestum inmensum."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"To the Soldiers of Christ"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Militibus Christi"
                   text:@[
                       @"Militiae nomen cum dederis, freno teneris.\n"
                       "Incipe tunc ergo dimittere pristina gesta,\n"
                       "Luxurias uita, quoniam labor inminet armis;\n"
                       "Imperio Regis omni uirtute parendum,\n"
                       "Tempora postrema si uis pertingere laeta.\n"
                       "Illa bonus milis semper expecta fruenda,\n"
                       "Blandire noli tibi, desidias omnino omitte;\n"
                       "Ut tuo proposito cottidie praesto sis ante,\n"
                       "Sollicitus esto, matutinus signa reuise.\n"
                       "Cum uideris bellum, agonia sume propinquus;\n"
                       "Haec gloria Regis, militem uidere paratum.\n"
                       "Rex adest optato; propter spem dimicat uestram;\n"
                       "Ille parat dona, ille pro uictoria lectos\n"
                       "Suscipit et proprium satellem dedicat esse.\n"
                       "Tu tibi praeterea in datis parcere noli,\n"
                       "Impiger esto magis, ut reddat famam pro morte."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Of Fugitives"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Refugis"
                   text:@[
                       @"Damnatorum animae merito se ipsae secernunt;\n"
                       "Ex hoc protegenti iterum ad sua recurrunt.\n"
                       "Radix Cananaea, maledictum semen, erumpit\n"
                       "Et in seruili gente sub barbaro rege refugit,\n"
                       "Flamma quos aeterna torquebit die decreto.\n"
                       "Uult uagus errare sine disciplina profanus\n"
                       "Grassari per fauces uiarum lege solutus.\n"
                       "Isti ergo tales, quos nulla poena coegit\n"
                       "Si secedere nolunt ab idolis, respui debent."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Of the Seed of the Tares"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Lolii Semine"
                   text:@[
                       @"De semine lolii, qui stant in ecclesia mixti\n"
                       "Expletis temporibus messis separatur a fructu.\n"
                       "Lolium est natum, quod non inmiserat dominus;\n"
                       "Omne lolium agricola collectum separat illud.\n"
                       "Lex ager nobis est: qui fecerit bonum in illa,\n"
                       "Ipsam utique nobis prestat requiem ueram\n"
                       "Ipse Dominator, qua lolium igne crematur.\n"
                       "Si ergo putastis, quando sub uno morantur\n"
                       "Erratis: sterelis Christianos uos esse designo\n"
                       "Maledicta fuit arbor sine fructu ficulna\n"
                       "In uerbo Domini et statim exaruit illa.\n"
                       "Non operas facitis, non donum gazo paratis:\n"
                       "Et sic promereri Dominum putatis inanes?"
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"To the Dissembler"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Dissimulatori"
                   text:@[
                       @"Dissimulas legem tanto praeconio latam\n"
                       "In tuba praesente caeleste uoce clamante.\n"
                       "Si propheta tantum declamauisset in nubem,\n"
                       "Sufficeret utique Domini uox missa per illum.\n"
                       "In tot profatorum uolumina uox Domni proclamat;\n"
                       "Malitiam nullus dimittit [ita] aeque de corde.\n"
                       "Uis bona uidere et fraudibus uiuere quaeris.\n"
                       "Lex ipsa cur ergo processit tanto labore?\n"
                       "Abuteris Domini mandata et te filium inquis;\n"
                       "Tu si talis eris, sine causa fideris, inquam.\n"
                       "Omnipotens mites quaerit sibi filios esse,\n"
                       "Rectos, corde bonos, deuotos legi diuinae,\n"
                       "Inmites autem iam scitis ubi demersit."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"That Worldly Things are Absolutely to be Avoided"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Sæcularia in Totum Fugienda"
                   text:@[
                       @"Si quidam doctores, dum expectant munera uestra\n"
                       "Aut timent personas, laxantes singula uobis,\n"
                       "Et ego non doceo, sed cogor dicere uerum.\n"
                       "Cum caterua Mali pergis ad expectacula uana,\n"
                       "Ubi Satanas fragoribus conparat astus\n"
                       "Licere persuadis tibi, quocumque placebit.\n"
                       "Altissimi prolis cum filiis Zabuli mixta\n"
                       "Respicere non uis, cui renuntiasti, priora.\n"
                       "In ipsis uersaris iterum: qui proderit Unus?\n"
                       "Aut si pro languore datum quod stulte profanas\n"
                       "---\n"
                       "Nolite diligere mundum neque ambitum eius:\n"
                       "Tanta Dei uox est, et tibi pro leui uidetur.\n"
                       "Obseruas mandatum hominis, et Dei deuitas;\n"
                       "Tu fidis muneri, quod doctores ora procludunt\n"
                       "Ut taceant neque dicant tibi iussa diuina.\n"
                       "Me uera dicentem si contemneres, prospice Summum:\n"
                       "Filius cuius eras, illi te adsigna clientem.\n"
                       "Uiuere si quaeris gentiliter homo fidelis,\n"
                       "Gaudia te mundi remouent a gratia Christi;\n"
                       "Indisciplinate quod leue licere praesumis,\n"
                       "Et choros historicos et cantica musica quaeris,\n"
                       "Nec tali subolem exuanniri amentia curas.\n"
                       "Dum uita frunisci putas, inprouidus erras.\n"
                       "Altissimus uiuet, et iusta praecepta deuitas."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"That the Christian Should be Such"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Christianum Talem Esse"
                   text:@[
                       @"Cum Dominus dicat, in gemitum edere panem,\n"
                       "Hic ut quid nunc agis, qui cupis uiuere laetus?\n"
                       "Rescindere quaeris sententiam Summi demissam\n"
                       "In protoplausto uide frenum procedere legis.\n"
                       "Si Deus omnipotens cum sudore uiuere iussit,\n"
                       "Tu qui iocundaris, ergo iam exter es illi.\n"
                       "Indignatum ait Dominum scriptura Iudaeis:\n"
                       "Ab esca refecti surrexerunt ludere fili.\n"
                       "Nunc ergo cur illos persequimur sponte profectos?\n"
                       "Unde perierunt illi, nos cauere debemus.\n"
                       "Maxima pars uestra luxuriis dedita paret.\n"
                       "Transgrederis legem, cum te facis musicis inter.\n"
                       "Apostolus clamat, clamat immo Deus per illum:\n"
                       "Licentia uestra uos, inquit in ipsa, deperdunt.\n"
                       "Esto ergo talis, qualem uult esse te Christus:\n"
                       "Mitis et in illo hilaris, nam saeculo tristis.\n"
                       "Excurre, labora, suda, cum tristitia pugna;\n"
                       "Spes cum labore uenit et uictoriae palma donatur.\n"
                       "Si refrigerare cupis animam, ad martyres i!\n"
                       "Expecta requiem futurorum transitu mortis."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"To the Matrons of the Church of the Living God"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Matronis Ecclesiæ Dei Vivi"
                   text:@[
                       @"Matrona uis esse Christiana ut saeculi discens:\n"
                       "Auro te circumdas aut sirica ueste, pudica,\n"
                       "Terrorem legis ex auribus uento remittis,\n"
                       "Res uanas adfectas cuncta de Zabuli pompa,\n"
                       "Ornas et ad speclum cincinnos fronte reflexos,\n"
                       "Nec non et inducis malis medicamina falsa,\n"
                       "In oculis puris stibium peruerso decore,\n"
                       "Seu crines tingis, ut sint toto tempore nigri.\n"
                       "Est Deus inspector, penetrat qui singula corda.\n"
                       "Ceterum pudicis ista necessaria non sunt.\n"
                       "Claro ac pudico sensu pertundite pectus;\n"
                       "Lex Dei testatur tales abscedere leges,\n"
                       "Ex corde quae credit femina marito probata\n"
                       "Sufficiat esse non cultibus sed bona mente.\n"
                       "Induite uestes quas oportet, frigus ut ostent\n"
                       "Aut nimium solis, tantum ut pudico proberis\n"
                       "Et in plebe Dei facultatis dona demonstres.\n"
                       "Dat tibi memoriam Tabitha clarissima quondam;\n"
                       "Exanimata iacet precibus uiduarum erecta.\n"
                       "In dando promeruit, non comtibus, inde leuari.\n"
                       "Uos matronae bonae uanitatis fugite decorem:\n"
                       "Incestas in feminas congruet cultura lupana.\n"
                       "Uincite malignum, pudicae feminae Christi,\n"
                       "In dando diuitias uestras ostendite totas.\n"
                       "[Xancta Dei mulier diuitias corde demonstrat.\n"
                       "Ymnificato choro placitoque Christo seruire\n"
                       "Zelantes fauore Christo offerte odorem.]"
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"To the Same Again"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"To the Same Again"
                   text:@[
                       @"Audiuisti uocem, quae uis Christiana manere,\n"
                       "Beatus Paulus qualiter rogare praecepit.\n"
                       "Caeliloquax autem Esaias doctor et auctor\n"
                       "(Detestatur enim caritatem mundi sequentes)\n"
                       "Exaltatae, inquit, ceciderunt filiae Sion.\n"
                       "Fas in Deo non est Christianam coli fidelem.\n"
                       "Gentili more quaeris praecedere Dei sancta?\n"
                       "Has Dei praecones damnant in lege clamantes\n"
                       "Iniustas esse feminas, quae se taliter ornant.\n"
                       "Kapillos inficitis, oculos nigrore linitis,\n"
                       "Lunatis comulas gradulatim fronte deuinctas,\n"
                       "Malam medicatis quodam superducto rubore,\n"
                       "Nec non et inaures grauissimo pondere pendent,\n"
                       "Obruitis collum naturale gemmis et auro,\n"
                       "Palmas Deo dignas praesagio malo ligatis.\n"
                       "Quid memorem uestes aut totam Zabuli pompam?\n"
                       "Respuitis legem, mauultis mundo placere,\n"
                       "Saltatis in domibus, pro psalmis cantatis amores.\n"
                       "Tu licet sis casta, non te purgat sinistra sequendo:\n"
                       "Uos ideo tales Christus cum gentibus aequat.\n"
                       "Xancta Dei mulier diuitias corde demonstrat.\n"
                       "Ymnificato choro placitoque Christo seruire\n"
                       "Zelantes fauore Christo offerte odorem."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"In the Church to All People of God"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"In Ecclesia Omni Populo Dei"
                   text:@[
                       @"Iustus ego non sum, fratres, de cloaca leuatus,\n"
                       "Nec me supertollo, sed doleo uestri, qui cerno\n"
                       "Ex tanto populo nullum in agone coronari.\n"
                       "Certe si non ipse pugnat, uel suggerat illis.\n"
                       "Cladem obiurgate, ouanter officite luxu!\n"
                       "Laborat frater aduersante mundo sub armis,\n"
                       "Et fretus opibus nec pugnas nec pugnanti resistis.\n"
                       "---\n"
                       "In talem pendit ecclesia tota, si uincat.\n"
                       "Abstinere uides fratrem et pugnare cum hoste.\n"
                       "Optas tu in castris pacem, foras ille repugnat.\n"
                       "Misericors esto, ut sis ante omnia saluus.\n"
                       "Nec intuis Dominum praeconio tanto clamantem,\n"
                       "Inimicis etiam qui iubet alimenta praebere?\n"
                       "Prandia ob ea prospice diurna, quae semper\n"
                       "Omnibus omnino diebus cum pauperis sumpsit.\n"
                       "Pascere tu quaeris, stulte, qui te denuo pascat.\n"
                       "Uix ille mihi paret, qui conponi proponit.\n"
                       "Laute cibatum distenso uentre declamas,\n"
                       "Oppressus inopia frater est iuxta tabescens.\n"
                       "De die Dominica quid dicis? Si non ante uocauit,\n"
                       "Exuoca de turba pauperem quem ad prandium ducas\n"
                       "In talibus spes est uestra de uestro refectis."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"To Him Who Wishes for Martyrdom"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Zela Concupiscenciæ"
                   text:@[
                       @"Dum cupis, inde peris, dum ardis proximi zelo;\n"
                       "Extinguis te ipsum, quando te incendis abactus.\n"
                       "Zelaris alium, inuide, de malo lucrantem,\n"
                       "Et te parem concupis fieri pecuniae tantae.\n"
                       "Lex sic non aspicit; dum illam incumbere quaeris,\n"
                       "Omnia suspensus uiuis in ardore lucrorum;\n"
                       "Cumque reus tibi sis ipsum te iudice damnans,\n"
                       "Oculorum acies nunquam satiatur auara.\n"
                       "Nunc ergo si credeas et cogites: uana cupido est\n"
                       "Congerere nimium sub fragili uita moranti.\n"
                       "Unde Deus clamat: Stulte, hanc noctem uocaris!\n"
                       "Postea ruina ruit: cuius erint ista talenta?\n"
                       "In suprema cadis iniusta lucra conando,\n"
                       "Suggeret cum Dominus unicuique uicta diurna.\n"
                       "Congestet alius: tu bono uiuere quaere,\n"
                       "Et Deus cor censens agis super omnia uictor;\n"
                       "Nec enim dico, ut in timore te mittas,\n"
                       "Cum pro die tuo uigilas sine fraude uiuendo.\n"
                       "In esca perit auis aut inhaeret inprouida uisco.\n"
                       "Arbitrare tibi simpliciter ualde cauendum.\n"
                       "Excedant alii, finem tu prospice semper."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"The Daily War"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Bellum Cottidianum"
                   text:@[
                       @"Belligerare cupis, stulte, quasi bella quiescunt!\n"
                       "Ex protoplausto die pugnatur in fine nobis.\n"
                       "Libido praecipitat: bellum est, compugna cum illo.\n"
                       "Luxuria suadet: abutere, bellum uicisti.\n"
                       "Uino copioso parce, ne per illum aberres;\n"
                       "Maledicti retinete linguam, unde dominum adoras;\n"
                       "Conpescere furiam, pacificum redde te cunctis;\n"
                       "Oppressos miseriis depremere caue minores\n"
                       "Terrorem adcommoda tantum et noli nocere;\n"
                       "Tramite uos recto ducite sincero per saeclum\n"
                       "In tuis diuitiis communem te redde pusillis;\n"
                       "De labore tuo dona, nudum uesti: sic uincis.\n"
                       "Insidias nullo facias qui Deo deseruis:\n"
                       "Aspice principium, unde perit inuidiis hostis.\n"
                       "Non sum ego doctor, sed lex docet ipsa clamando.\n"
                       "Uerba geris tanta uana, qui sub uno momento\n"
                       "Martyrium quaeris otiosus tollere Christo."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Of the Zeal of Concupiscence"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Zelo Concupscenciæ"
                   text:@[
                       @"Dum cupis, inde peris, dum ardis proximi zelo;\n"
                       "Extinguis te ipsum, quando te incendis abactus.\n"
                       "Zelaris alium, inuide, de malo lucrantem,\n"
                       "Et te parem concupis fieri pecuniae tantae.\n"
                       "Lex sic non aspicit; dum illam incumbere quaeris,\n"
                       "Omnia suspensus uiuis in ardore lucrorum;\n"
                       "Cumque reus tibi sis ipsum te iudice damnans,\n"
                       "Oculorum acies nunquam satiatur auara.\n"
                       "Nunc ergo si credeas et cogites: uana cupido est\n"
                       "Congerere nimium sub fragili uita moranti.\n"
                       "Unde Deus clamat: Stulte, hanc noctem uocaris!\n"
                       "Postea ruina ruit: cuius erint ista talenta?\n"
                       "Suggeret cum Dominus unicuique uicta diurna.\n"
                       "Congestet alius: tu bono uiuere quaere,\n"
                       "Et Deus cor censens agis super omnia uictor;\n"
                       "Nec enim dico, ut in timore te mittas,\n"
                       "Cum pro die tuo uigilas sine fraude uiuendo.\n"
                       "In esca perit auis aut inhaeret inprouida uisco.\n"
                       "Arbitrare tibi simpliciter ualde cauendum.\n"
                       "Excedant alii, finem tu prospice semper."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"The Who Give from Evil"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Qui de Malo Donant"
                   text:@[
                       @"Quid te bonum fingis alieno uulnere, nequor?\n"
                       "Unde tu largiris, alter cottidie plorat.\n"
                       "Ista tu discredis Dominum uidere: doceris.\n"
                       "Dona iniquorum non probat Altissimus, inquit.\n"
                       "Erumpis miseris, dum fueris locos adeptus.\n"
                       "Munera dat alter, ut alterum reddat inanem,\n"
                       "Aut si fenerasti duplicem centesima nummum,\n"
                       "Largiri uis inde, ut te quasi malum depurges:\n"
                       "Omnipotens tales operas omnino recusat.\n"
                       "Donas tu de lacrimis candidatus; ille nigratus\n"
                       "Oppressus usuris deplorat factus egenus.\n"
                       "Nanctus praeterea tempus captat oribus hostis,\n"
                       "Ad praesens populas pretio tu sanctos iniquus.\n"
                       "Nec non et de lucro mercis si uis te piare,\n"
                       "Te ipsum inlidis, non alium, inquam inique."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Of a Deceitful Peace"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Pace Subdola"
                   text:@[
                       @"Dispositum tempus uenit nostris pacem in urbe\n"
                       "Et ruinas simul blandiente saeculo primis.\n"
                       "Praecipitis populo, quem ipsi in schisma misistis:\n"
                       "Aut facite legem ciuitatis aut exite de illa.\n"
                       "Conspicitis stipulam cohaerentem in oculis nostris,\n"
                       "Et uestris in oculis non uultis cernere trabem.\n"
                       "Subdola pax uobis uenit, persecutio flagrat.\n"
                       "Uulnera non parent, et sic sine caede ruistis,\n"
                       "---\n"
                       "De omnibus uobis uix unus caute se gessit.\n"
                       "O malo nutriri in occisione praedicti!\n"
                       "Laudatis pacem subdolam et uobis iniquam.\n"
                       "Alterius facti milites, non Christi, peristis."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Lectoribus"
                   text:@[
                       @"Lectores moneo quosdam cognoscere tantum,\n"
                       "Et dare materiam ceteris exemplo uiuendi,\n"
                       "Certamen fugire lites totidemque uitare,\n"
                       "Terrorem premere, nec unquam esse superbos.\n"
                       "Obsequia iusta maiorum quoque deferte;\n"
                       "Reddite uos Christo similes, filioli, magistro;\n"
                       "Inter agrestiua benefacitis lilia sitis.\n"
                       "Beati facti estis, cum feceritis edicta.\n"
                       "Uos flores in plebe, uos estis Christi lucernas,\n"
                       "Seruate quod estis et memorare potestis."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"To Ministers"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Ministris"
                   text:@[
                       @"Ministerium Christi zacones exercite casti;\n"
                       "Idcirco ministri facite praecepta magistri.\n"
                       "Nolite fugere personam iudicis aequi,\n"
                       "Integrate locum uestrum per omnia docti.\n"
                       "Susum intendentes, semper Deo summo deuoti\n"
                       "Tota Deo reddite inlaesa sacra, ministri.\n"
                       "Rebus in diuersis exemplum date parati;\n"
                       "Inclinate caput uestrum pastoribus ipsi:\n"
                       "Sic fiet, ut Christo possitis esse probati."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"To God's Shepherds"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Pastoribus Dei"
                   text:@[
                       @"Pastor si confessus fuerit, geminauit agonem.\n"
                       "Apostolus autem tales iubet esse magistros:\n"
                       "Sit patiens rector, sciat, ubi frena remittat;\n"
                       "Terreat in primis, et postea melle perungat,\n"
                       "Obseruetque prius, ut faciat ipse quid dicit;\n"
                       "Redditur in culpa pastor saecularia seruans,\n"
                       "In faciem cuius sis ausus dicere quicquam.\n"
                       "Bullit in inferno rumoribus ipsa gehenna:\n"
                       "Uae miserae plebi, dubia quae forte uacillat!\n"
                       "Si talis aderit pastor, paene perdita instat;\n"
                       "Deuotus autem eam continet recte gubernans;\n"
                       "Exhilaratur enim ex anima regibus aptis.\n"
                       "In talibus spes est et uiuit ecclesia tota."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"I Speak to the Elder-Born"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Maioribus Nati Dico"
                   text:@[
                       @"Me solum exposcit tempus uobis dicere uerum.\n"
                       "Ab uno semper mouitur, quod multi detractant.\n"
                       "In me solo uolo odia conuertere uestra,\n"
                       "Omnium ut pausent praecordias tanto rumore.\n"
                       "Respicite dictum, quod ueritas odia tollat.\n"
                       "Iam praedixi quod est de pace subdola quanta!\n"
                       "Blandiendo uobis subrepsit Euae seductor.\n"
                       "Uos quia nescitis, laqueo instar ruistis,\n"
                       "Sorbitis omnino auram dum saeculi ipsam.\n"
                       "Non gratis aget, pro quo interceditis, ullus;\n"
                       "Ab igne qui refugit, agit in uoragine uestro.\n"
                       "Tunc repetit suppetium miser denudatus a uobis:\n"
                       "Ipsi iam horrescunt iudices peculantia uestra.\n"
                       "De breuiori titulo nam in uobis inararem.\n"
                       "Inspicitis dicentes, quibus uos ostenditis ultro;\n"
                       "Cum ipsis et epulas capitis et pascitis ipsos.\n"
                       "Ob ea iam terrae paene fundamenta paratis."
                   ]]
              ]]
         ]],
        [[Source alloc]
         initWithTitle:@"Saint Ambrose"
         subtitle:@"The Bishop of Milan in the late 4th century and now its patron saint. His influential life and extensive writings are credited with helping to shape Western Christianity in its early days."
         date:@"circa 340-397"
         works:@[
             [[Work alloc]
              initWithTitle:@"On Mysteries"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Sanctii Ambrosii Mediolanensis Episcopi de Mysteriis Liber Unus"
                   text:@[
                       @"Tractatibus, quos ante de moribus Sanctus habuerat, subjecturum se mysteriorum expositionem spondet. Deinde cur ea non prius patefecerit, declarato, mysticam aggreditur apertionem, quam a Christo ipso olim celebratam demonstrat.",
                       @"1. De moralibus quotidianum sermonem habuimus, cum vel Patriarcharum gesta, vel Proverbiorum legerentur praecepta; ut his informati atque instituti assuesceretis majorum ingredi vias, eorumque iter carpere, ac divinis obedire oraculis: quo renovati per baptismum, ejus vitae usum teneretis, quae ablutos deceret.",
                       @"2. Nunc de mysteriis dicere tempus admonet, atque ipsam sacramentorum rationem edere: quam ante baptismum si putassemus insinuandam nondum initiatis, prodidisse potius quam edidisse aestimaremur. Deinde quod inopinantibus melius se ipsa lux mysteriorum infuderit, quam si eam sermo aliquis praecucurrisset.",
                       @"3. Aperite igitur aures, et bonum odorem vitae aeternae inhalatum vobis munere sacramentorum carpite: quod vobis significavimus, cum apertionis celebrantes mysterium diceremus: Epheta, quod est adaperire (Marc. VII, 34); ut venturus unusquisque ad gratiam quid interrogaretur, cognosceret: quid responderet, meminisse deberet.",
                       @"4. Hoc mysterium celebravit Christus in Evangelio (Ibid.), sicut legimus, cum mutum curaret et surdum. Sed ille os tetigit; quia et mutum curabat et virum: in altero, ut os ejus infusae sono vocis aperiret; in altero, quia tactus iste virum decebat, feminam non decebat."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput II"
                   text:@[
                       @"Quid initiandi Ecclesiam ingressi promiserint, quibusve coram testibus, et quamobrem se converterint ad orientem?",
                       @"5. Post haec reserata tibi sunt sancta sanctorum, ingressus es regenerationis sacrarium: repete quid interrogatus sis, recognosce quid responderis. Renuntiasti diabolo et operibus ejus, mundo et luxuriae ejus ac voluptatibus. Tenetur vox tua, non in tumulo mortuorum, sed in libro viventium.",
                       @"6. Vidisti illic levitam, vidisti sacerdotem, vidisti summum sacerdotem. Noli considerare corporum figuras, sed mysteriorum gratiam. Praesentibus angelis locutus es, sicut scriptum est: Quia labia sacerdotis custodiunt scientiam, et legem exquirunt ex ore ipsius; quoniam angelus est Domini omnipotentis (Malac. II, 7). Non est fallere, non est negare: angelus est qui regnum Christi et vitam aeternam annuntiat. Non specie tibi aestimandus sit, sed munere. Quid tradiderit considera, usum ejus expende, et statum ejus agnosce.",
                       @"7. Ingressus es igitur ut adversarium tuum cerneres, cui renuntiandum in os putaris: ad orientem converteris; qui enim renuntiat diabolo, ad Christum convertitur, illum directo cernit obtutu."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput III"
                   text:@[
                       @"In aqua et sacris ministris praesentiam atque operationem divinitatis considerandam esse, pluribus figuris quibus baptisma jam inde a mundi creatione ac postea praenuntiatum est, docet.",
                       @"8. Quid vidisti? Aquas utique, sed non solas: levitas illic ministrantes, summum sacerdotem interrogantem et consecrantem. Primo omnium docuit te Apostolus non ea contemplanda nobis quae videntur, sed quae non videntur, quoniam quae videntur, temporalia sunt: quae autem non videntur, aeterna (II Cor. IV, 18). Nam et alibi habes: Quia invisibilia Dei a creatura mundi per ea quae facta sunt comprehenduntur: sempiterna quoque virtus ejus ac divinitas operibus aestimatur (Rom. I, 20). Unde et ipse Dominus ait: Si mihi non creditis, vel operibus credite (Joan. X, 38). Crede ergo divinitatis illic adesse praesentiam. Operationem credis, non credis praesentiam? Unde sequeretur operatio, nisi praecederet ante praesentia?",
                       @"9. Considera autem quam vetus mysterium sit, in ipsius mundi praefiguratum origine. In principio ipso, quando fecit Deus coelum et terram, Spiritus, inquit, superferebatur super aquas (Gen. I, 2). Qui superferebatur super aquas, non operabatur super aquas? Sed quid dicam operabatur? quod ad praesentiam spectat, superferebatur. Non operabatur, qui superferebatur? Cognosce quia operabatur in illa mundi fabrica, quando tibi dicit Propheta: Verbo Domini coeli firmati sunt, et Spiritu oris ejus omnis virtus eorum (Psal. XXXII, 6). Utrumque prophetico subnixum est testimonio, et quia superferebatur et quia operabatur. Quia superferebatur, Moyses dicit: quia operabatur, David testificatur.",
                       @"10. Accipe aliud testimonium. Corrupta erat caro omnis ab iniquitatibus suis. Non permanebit, inquit Deus, Spiritus meus in hominibus, quia carnes sunt (Gen. VI, 3.) Quo ostendit Deus quia carnali immunditia, et gravioris labe peccati gratia spiritalis avertitur. Unde volens Deus reparare quod deerat, dilnvium fecit, et justum Noe in arcam jussit ascendere (Gen. VII, 1 et seq.) Qui dum, decedente diluvio, corvum dimisisset prius, qui non revertit; dimisit columbam, quae cum ramo oleae legitur revertisse (Gen. VIII, 7, 8). Vides aquam, vides lignum, columbam aspicis, et dubitas de mysterio?",
                       @"11. Aqua est ergo qua caro mergitur, ut omne abluatur carnale peccatum. Sepelitur illic omne flagitium. Lignum est in quo suffixus est Dominus Jesus, cum pateretur pro nobis. Columba est in cujus specie descendit Spiritus sanctus, sicut didicisti in novo Testamento (Matth. III, 16), qui tibi pacem animae, tranquillitatem mentis inspirat. Corvus est figura peccati, quod exit, et non revertitur; si in te quoque justi custodia et forma servetur.",
                       @"12. Tertium quoque testimonium est, sicut te Apostolus docet: Quoniam patres nostri omnes sub nube fuerunt, et omnes mare transierunt, et omnes in Moyse baptizati sunt, in nube et in mari (I Cor. X, 1, 2). Denique et ipse Moyses dicit in Cantico: Misisti Spiritum tuum, et operuit eos mare (Exod.XV, 10). Advertis quod in illo Hebraeorum transitu jam tunc sacri baptismatis figura praecesserit, in quo Aegyptius interiit et Hebraeus evasit. Quid enim aliud in hoc quotidie sacramento docemur, nisi quia culpa mergitur, et error aboletur: pietas autem et innocentia tuta permansit?",
                       @"13. Audis quia sub nube fuerunt patres nostri, et bona nube, quae carnalium refrigeravit incendia passionum. Bona nubes obumbrat quos revisit Spiritus sanctus. Denique supervenit in Mariam virginem, et virtus Altissimi obumbravit ei (Luc. I, 75); quando redemptionem genti genuit humanae. Et illud miraculum per Moysen in figura factum est (Exod. XIV, 21 et seq.). Si ergo in figura adfuit Spiritus, non adest in veritate, cum Scriptura tibi dicat: Quia lex per Moysen data est, gratia autem et veritas per Jesum Christum facta est (Joan. I, 17).",
                       @"14. Merrha fons amarissimus erat: misit in eum Moyses lignum, et dulcis est factus (Exod. XV, 23 et seq.). Aqua enim sine praedicatione Domini caecrucis ad nullos usus futurae salutis est: cum vero salutaris fuerit crucis mysterio consecrata, tunc ad usum spiritalis lavacri et salutaris poculi temperatur. Sicut ergo in illum fontem Moyses misit lignum, hoc est propheta; ita et in hunc fontem sacerdos praedicationem Dominicae crucis mittit, et aqua fit dulcis ad gratiam.",
                       @"15. Non ergo solis corporis tui credas oculis: magis videtur quod non videtur; quia istud temporale, illud aeternum aspicitur, quod oculis non comprehenditur, animo autem ac mente cernitur.",
                       @"16. Denique doceat te decursa Regnorum lectio. (IV Reg. V, 1 et seq.). Naaman Syrus erat, et lepram habebat, nec ab ullo mundari poterat. Tunc ait puella ex captivis, quoniam esset propheta in Israel, qui posset eum a leprae contagione mundare. Sumpto, inquit, auro et argento, perrexit ad regem Israel. Qui cognita adventus ejus causa, scidit vestimenta sua, dicens quod tentaretur magis, cum de se ea quae non essent potestatis regiae, poscerentur: Elisaeus autem regi intimavit ut ad se dirigeret Syrum, quo cognosceret quod esset Deus in Israel. Et cum venisset, mandavit ei ut septies mergeretur in Jordane fluvio.",
                       @"17. Tunc ille secum tractare coepit quod meliores aquas haberet patriae suae, in quibus se saepe mersisset, et numquam a lepra esset ablutus; eoque revocatus non obediebat mandatis prophetae: sed et admonitu et persuasionibus servulorum acquievit, ac mersit. Mundatusque illico intellexit non aquarum esse quod unusquisque mundatur, sed gratiae.",
                       @"18. Cognosce nunc quae sit illa puella ex captivis junior, scilicet ex gentibus congregatio, id est, Ecclesia Domini depressa ante captivitate peccati, quando libertatem adhuc gratiae non habebat; cujus consilio vanus ille populus nationum verbum audivit propheticum, de quo ante diu dubitavit; postea tamen ubi credidit exsequendum, ablutus est ab omni contagione vitiorum. Et ille quidem dubitavit, antequam sanaretur: tu jam sanatus es, et ideo dubitare non debes."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput IV"
                   text:@[
                       @"Aquam non mundare sine Spiritu, Joannis testimonio et ipsis quibus idem sacramentum administratur, verbis declaratur. Quod etiam asseritur significatum per Evangelicam piscinam, et paralyticum a Domino ibi sanatum: quo loco Spiritus sanctus in ejusdem Christi baptismo vere descendisse ostenditur, et quid in hoc mysterio intelligendum?",
                       @"19. Ideo tibi ante praedictum est, ut non hoc solum crederes quod videbas; ne forte et tu diceres: Hoc est illud magnum mysterium; quod oculus non vidit, nec auris audivit, nec in cor hominis ascendit (I Cor. II, 9)? Aquas video, quas videbam quotidie: istae me habent mundare, in quas saepe descendi, et numquam mundatus sum? Hinc cognosce quod aqua non mundat sine Spiritu.",
                       @"20. Ideoque legisti quod tres testes in baptismate unum sunt, aqua, sanguis, et Spiritus (I Joan. V, 7); quia si in unum horum detrahas, non stat baptismatis sacramentum. Quid est enim aqua sine cruce Christi? Elementum commune, sine ullo sacramenti effectu. Nec iterum sine aqua, regenerationis mysterium est: Nisi enim quis renatus fuerit ex aqua et Spiritu, non potest introire in regnum Dei (Joan. III, 5). Credit autem etiam catechumenus in crucem Domini Jesu, qua et ipse signatur: sed nisi baptizatus fuerit in nomine Patris et Filii et Spiritus sancti, remissionem non potest accipere peccatorum, nec spiritualis gratiae munus haurire.",
                       @"21. Ergo ille Syrus septies mersit in Lege: (IV Reg. V, 14) tu autem baptizatus es in nomine Trinitatis, confessus es Patrem, recordare quid feceris; confessus es Filium, confessus es Spiritum sanctum. Tene ordinem rerum in hac fide; mundo mortuus es, et Deo resurrexisti. Et quasi in illo mundi consepultus elemento, peccato mortuus, ad vitam es resuscitatus aeternam. Crede ergo quia non sunt vacuae aquae.",
                       @"22. Ideo tibi dictum est: Quia angelus Domini descendebat secundum tempus in natatoriam, et movebatur aqua; et qui prior descendisset in natatoriam post commotionem aquae, sanus fiebat a languore quocumque tenebatur (Joan. V, 4). Haec piscina in Hierosolymis erat, in qua unus annuus sanabatur: sed nemo ante sanabatur, quam descendisset angelus. Ut esset indicium quia descenderat angelus, movebatur aqua propter incredulos. Illis signum, tibi fides: illis angelus descendebat, tibi Spiritus sanctus: illis creatura movebatur, tibi Christus operatur ipse Dominus creaturae.",
                       @"23. Tunc curabatur unus, nunc omnes sanantur: aut certe unus solus populus christianus; est enim in aliquibus et aqua mendax (Jerem. XV, 18). Non sanat baptismus perfidorum (I, q. 1, c. Non sanat), non mundat, sed polluit. Judaeus urceos baptizat et calices (Marc. VII, 4), quasi insensibilia vel culpam possint recipere, vel gratiam. Tu baptiza hunc calicem tuum sensibilem, in quo bona opera tua luceant, in quo gratiae tuae splendor fulgeat. Ergo et illa piscina in figura; ut credas quia in hunc fontem vis divina descendit.",
                       @"24. Denique paralyticus ille exspectabat hominem (Joan. V, 7). Quem illum, nisi Dominum Jesum natum ex Virgine: cujus adventu non jam umbra sanaret singulos, sed veritas universos? Iste est ergo qui exspectabatur ut descenderet, de quo dixit Deus Pater ad Joannem Baptistam: Super quem videris Spiritum descendentem de coelo, et manentem super eum, hic est qui baptizat in Spiritu sancto (Joan. I, 33). De quo testificatus est Joannes dicens: Quia vidi Spiritum descendentem de coelo quasi columbam et manentem super eum (Ibid., 32). Et hic quare Spiritus sicut columba descendit, nisi ut tu videres, nisi ut tu agnosceres columbam etiam illam quam Noe justus emisit ex arca, istius columbae speciem fuisse, ut typum agnosceres sacramenti (Gen., VIII, 8)?",
                       @"25. Et fortasse dicas: Cum illa vera columba fuerit quae emissa est, hic quasi columba descenderit: quomodo illic speciem fuisse dicimus, hic veritatem; cum secundum Graecos in specie columbae Spiritum descendisse sit scriptum (Luc. III, 12)? Sed quid tam verum quam divinitas quae manet semper? Creatura autem non potest veritas esse, sed species, quae facile solvitur atque mutatur. Simul quia eorum qui baptizantur, non in specie esse debeat, sed vera simplicitas. Unde et Dominus ait: Estote astuti sicut serpentes, et simplices sicut columbae (Matth. X, 16). Merito ergo sicut columba descendit, ut admoneret nos simplicitatem columbae habere debere. Speciem autem et pro veritate accipiendam legimus et de Christo: Et specie inventus ut homo (Phil. II, 7); et de Patre Deo: Neque speciem ejus vidistis (Joan. V, 37)."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput V"
                   text:@[
                       @"Confirmatur adesse Christum in baptismate, atque adeo non considerandos ejus ministros. Demum confessio Trinitatis a baptizatis edi solita paucis expenditur. 26. Estne adhuc quod dubitare debeas, cum evidenter tibi clamet in Evangelio Pater, qui ait: Hic est Filius meus in quo complacui (Matth. III, 17); clamet Filius, super quem sicut columba se demonstravit Spiritus sanctus; clamet et Spiritus sanctus, qui sicut columba descendit; clamet David: Vox Domini super aquas, Deus majestatis intonuit: Dominus super aquas multas (Psal. XXVIII, 3); Cum tibi Scriptura (1, q. 1, c. Cum Script.) testetur quod ad Hierobaal preces ignis descenderit de coelo (Judic. VI, 21), et rursus precante Elia, ignis sit missus qui sacrificium consecravit (III Reg. XVIII, 38)?",
                       @"27. Non merita personarum consideres, sed officia sacerdotum. Et si merita spectes; sicut Eliam consideres, Petri quoque merita spectato, vel Pauli, qui acceptum a Domino Jesu hoc nobis mysterium tradiderunt. Ignis illis visibilis mittebatur (l, q. 1, c. Cum Script., § Ignis), ut crederent: nobis invisibilis operatur, qui credimus: illis ad figuram, nobis ad commonitionem. Crede ergo adesse Dominum Jesum invocatum precibus sacerdotum, qui ait: Ubi fuerint duo vel tres, ibi et ego sum (Matt. XVIII, 20); quanto magis ubi est Ecclesia, ubi mysteria sua sunt, ibi dignatur suam impertire praesentiam!",
                       @"28. Descendisti igitur; recordare quid responderis, quod credas in Patrem, credas in Filium, credas in Spiritum sanctum. Non habes illic: Credo in majorem et minorem et ultimum: sed eadem vocis tuae cautione constringeris, ut similiter credas in Filium, sicut in Patrem credis: similiter in Spiritum sanctum credas, sicut credis in Filium; hoc solo excepto, quod in crucem solius Domini Jesu fateris tibi esse credendum."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput VI"
                   text:@[
                       @"Egressis e fonte baptismatis quare unctio fiat in capite: cur etiam pedum lotio post baptismum; quaeve peccata utrisque remittantur.",
                       @"29. Post haec utique ascendisti ad sacerdotem: considera quid secutum sit. Nonne illud quod ait David. Sicut unguentum in capite, quod descendit in barbam, barbam Aaron (Psal. CXXXII, 2)? Hoc est unguentum, de quo et Salomon ait: Unguentum exinanitum est nomen tuum, propterea adolescentulae dilexerunt te, et attraxerunt te (Cant. I, 2). Quantae hodie renovatae animae dilexerunt te, Domine Jesu, dicentes: Attrahe nos post te, in odorem vestimentorum tuorum currimus (Ibid., 3), ut odorem resurrectionis haurirent!",
                       @"30. Quare hoc fiat intellige, quia oculi sapientis in capite ejus (Eccles. II, 14). Ideo in barbam defluit, id est, in gratiam juventutis; ideo in barbam Aaron, ut fias electum genus, sacerdotale, pretiosum; omnes enim in regnum Dei et in sacerdotium ungimur gratia spiritali.",
                       @"31. Ascendisti de fonte, memento Evangelicae lectionis. Etenim Dominus noster Jesus in Evangelio lavit pedes discipulis suis. Quando venit ad Simonem Petrum, ait Petrus: Non lavas mihi pedes in aeternum (Joan. XIII, 8); non advertit mysterium, et ideo ministerium recusavit; quod gravari humilitatem servi crederet, si sibi obsequium domini patienter admitteret. Cui respondit Dominus: Si non lavero tibi pedes, non habebis partem mecum. Quo audito, Petrus: Domine, non tantum pedes, inquit, sed et manus et caput. Respondit Dominus: Qui lotus est, non indiget nisi ut pedes lavet; sed est mundus totus (Ibid., 9).",
                       @"32. Mundus erat Petrus, sed plantam lavare debebat; habebat enim primi hominis de successione peccatum: quando eum supplantavit serpens, et persuasit errorem (Gen. III, 6). Ideo planta ejus abluitur, ut haereditaria peccata tollantur; nostra enim propria per baptismum relaxantur.",
                       @"33. Simul cognosce mysterium in ipso humilitatis consistere ministerio; ait enim: Si ego lavi vobis pedes Dominus et magister; quanto magis et vos debetis lavare pedes invicem vobis (Joan. XIII. 14)! Cum enim ipse auctor salutis per obedientiam nos redemerit; quanto magis nos servuli ejus humilitatis et obedientiae exhibere debemus obsequium!"
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput VII"
                   text:@[
                       @"Vestimentis candidis peccatorum ablutionem indicari: cujus opera ut Ecclesia se nigram atque decoram diceret, effectum est. Angelos nitorem ejus sicut et Dominicae carnis miratos esse; quin immo ipsummet Christum sub variis figuris commendasse Sponsae suae formam: quorum in se mutui affectus describuntur.",
                       @"34. Accepisti post haec vestimenta candida (De Consec. dist. 4, c. Accepsiti), ut esset indicium quod exueris involucrum peccatorum, indueris innocentiae casta velamina, de quibus dixit Propheta: Asperges me hyssopo, et mundabor: lavabis me, et super nivem dealbabor (Psal. L, 9). Qui enim baptizatur, et secundum Legem et secundum Evangelium videtur esse mundatus: secundum Legem, quia hyssopi fasciculo Moyses aspergebat sanguinem agni (Exod. XII, 22): secundum Evangelium, quia Christi erant candida vestimenta sicut nix, cum resurrectionis suae gloriam in Evangelio (Matth. XVII, 2) demonstraret. Super nivem ergo dealbatur, cui culpa dimittitur. Unde et per Esaiam Dominus ait: Si fuerint peccata vestra sicut phoenicium, ut nivem dealbabo (Esai. I, 18).",
                       @"35. Haec vestimenta habens Ecclesia per lavacrum regenerationis assumpta, dicit in Canticis: Nigra sum et decora, filiae Hierusalem (Cant. I, 4). Nigra per fragilitatem conditionis humanae, decora per gratiam: nigra, quia ex peccatoribus; decora fidei sacramento. Haec vestimenta cernentes filiae Hierusalem stupefactae dicunt: Quae est haec quae ascendit dealbata (Cant. VIII, 5)? Haec erat nigra, unde nunc subito dealbata!",
                       @"36. Dubitaverunt etiam angeli cum resurgeret Christus, dubitaverunt Potestates coelorum videntes quod caro in coelum ascenderet. Denique dicebant: Quis est iste Rex gloriae? Et cum alii dicerent: Tollite portas Principis vestri, et elevamini portae aeternales, et introibit Rex gloriae; alii dubitabant dicentes: Quis est iste Rex gloriae (Psal. XXIII, 8, 9)? In Esaia quoque habes dubitantes virtutes coelorum dixisse: Quis est iste qui ascendit ex Edom, rubor vestimentorum ejus ex Bosor, speciosus in stola candida (Esai. LXIII, 1)?",
                       @"37. Christus autem videns Ecclesiam suam in vestimentis candidis, pro qua ipse, ut habes in Zachariae libro prophetae (Zach. III, 3), sordida vestimenta susceperat, vel animam regenerationis lavacro mundam atque ablutam, dicit: Ecce formosa es, proxima mea, ecce es formosa, oculi tui sicut columbae (Cant. IV, 1); in cujus specie Spiritus sanctus descendit de coelo (Luc. III, 22). Formosi oculi sicut columbae, quia in ejus specie Spiritus sanctus descendit de coelo.",
                       @"38. Et infra: Dentes tui sicut grex tonsarum, quae ascenderunt de lavacro, quae omnes geminos creant, et infecunda non est in eis; ut resticula coccinea labia tua (Cantic. IV, 2, 3). Non mediocris ista laudatio. Primum dulci comparatione tonsarum; capras enim et in altis pasci sine periculo novimus, et in praeruptis securas cibum capere: deinde cum tondentur, deonerari superfluis. Harum gregi comparatur Ecclesia, multas in se habens animarum virtutes, quae per lavacrum superflua peccata deponant, quae mysticam fidem et moralem gratiam deferant Christo, quae crucem Domini Jesu loquantur.",
                       @"39. In iis formosa est Ecclesia. Unde ad eam Verbum Deus dicit: Tota formosa es, proxima mea; et reprehensio non est in te; quia culpa demersa est. Ades huc a Libano, Sponsa, ades huc a Libano: transibis, et pertransibis a principio fidei (Ibid., 7, 8); eo quod renuntians mundo transierit saeculum, pertransierit ad Christum. Et iterum dicit ad eam Deus Verbum: Quid pulchra et suavis facta es charitas in deliciis tuis? Statura tua similis facta est palmae, et ubera tua botris (Cant. VII, 6, 7).",
                       @"40. Cui respondet Ecclesia: Quis dabit te, frater, mihi lactentem ubera matris meae? Inveniens te foris, osculabor te: et quidem non spernent me. Assumam te, et inducam te in domum matris meae, et in secretum ejus quae concepit me. Docebis me (Cant. VIII, 1, 2). Vides quemadmodum delectata munere gratiarum, ad interiora cupit mysteria pervenire, et omnes sensus suos consecrare Christo? Adhuc quaerit, adhuc suscitat charitatem, et suscitari sibi eam poscit a filiabus Hierusalem, quarum gratia, hoc est, animarum fidelium, Sponsum in amorem sui uberiorem desiderat provocari.",
                       @"41. Unde Dominus Jesus et ipse invitatus tantae studio charitatis, pulchritudine decoris et gratiae; quod nulla jam in ablutis delicta sorderent, dicit ad Ecclesiam: Pone me ut signaculum in cor tuum, ut sigillum in brachium tuum (Ibid., 6); hoc est, decora es, proxima mea, tota formosa es, nihil tibi deest. Pone me ut signaculum in cor tuum; quo fides tua pleno fulgeat sacramento. Opera quoque tua luceant, et imaginem Dei praeferant, ad cujus imaginem facta es. Charitas tua nulla persecutione minuatur, quam multa aqua excludere, flumina undare non possint (Ibid. 7).",
                       @"42. Unde repete quia accepisti signaculum spiritale, spiritum sapientiae et intellectus, spiritum consilii atque virtutis, spiritum cognitionis atque pietatis, spiritum sancti timoris (Esai. XI, 2): et serva quod accepisti. Signavit te Deus Pater, confirmavit te Christus Dominus; et dedit pignus Spiritus in cordibus tuis, sicut Apostolica lectione didicisti (II Cor. V, 2)."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput VIII"
                   text:@[
                       @"De mystico Dominici altaris convivio: quod ne quispiam minoris faciat, ostenditur Synagogae sacris antiquius esse; cum in sacrificio Melchisedech expressum fuerit: ipso autem manna longe praestantius, cum sit corpus Christi; ac inter utrumque perelegans comparatio instituitur.",
                       @"43. His abluta plebs dives insignibus, ad Christi contendit altaria, dicens: Et introibo ad altare Dei, ad Deum qui laetificat juventutem meam (Psal. XLII, 4); depositis enim inveterati erroris exuviis, renovata in aquilae juventute, coeleste illud festinat adire convivium. Venit igitur, et videns sacrosanctum altare compositum, exclamans ait: Parasti in conspectu meo mensam. Hanc loquentem inducit David dicens: Dominus pascit me, et nihil mihi deerit: in loco pascuae ibi me collocavit. Super aquam refectionis educavit me (Psal. XXII, 1, 2). Et infra: Nam etsi ambulem in medio umbrae mortis, non timebo mala; quoniam tu mecum es. Virga tua et baculus tuus, ipsa me consolata sunt. Parasti in conspectu meo mensam adversus eos qui tribulant me. Impinguasti in oleo caput meum, et poculum tuum inebrians quam praeclarum est!",
                       @"44. Nunc illud consideremus, ne quis forte visibilia videns (quoniam quae sunt invisibilia, non videntur, nec possunt humanis oculis comprehendi) dicat forte: Judaeis Deus manna pluit, pluit coturnices (Exod. XVI, 13): Ecclesiae autem illi dilectae haec sunt quae praeparavit; de quibus dictum est: Quod oculus non vidit, nec auris audivit, nec in cor hominis ascendit, quae praeparavit Deus diligentibus eum (I Cor. II, 9). Ergo ne quis hoc dicat, summo studio volumus comprobare quod et antiquiora sunt sacramenta Ecclesiae quam Synagogae, et praestantiora quam manna est.",
                       @"45. Antiquiora docet lectio Genesis quae decursa est (Gen. XIV, 18); Synagoga enim ex lege Moysi principium sumpsit (Exod. XXXIV, 1 et seq.): Abraham vero longe anterior, qui victis hostibus, et nepote proprio recepto. cum potiretur victoria; tunc illi occurrit Melchisedech, et protulit ea quae Abraham veneratus accepit. Non Abraham protulit, sed Melchisedech; qui inducitur sine patre, sine matre, neque initium dierum, neque finem habens, similis autem Filio Dei: de quo ait Paulus ad Hebraeos: Quia manet sacerdos in perpetuum (Hebr. VII et seq.); qui interpretatione Latina dicitur rex justitiae, rex pacis.",
                       @"46. Non agnoscis quis iste sit? Potest homo esse rex justitiae, cum ipse vix justus sit? Potest esse rex pacis, cum vix possit esse pacificus? Sine matre secundum divinitatem; quia ex Patre Deo genitus est, unius substantiae cum Patre: sine patre secundum incarnationem, qui natus ex Virgine est: initium et finem non habens, quia ipse est initium et finis omnium, primus et novissimus. Non igitur humani, sed divini est muneris sacramentum quod accepisti, ab eo prolatum qui benedixit fidei patrem Abraham, illum cujus gratiam et gesta miraris.",
                       @"47. Probatum est antiquiora esse Ecclesiae sacramenta, nunc cognosce potiora. Revera (De Consec. dist. 2, c. Revera) mirabile est quod manna Deus pluerit patribus, et quotidiano coeli pascebantur alimento. Unde dictum est: Panem angelorum manducavit homo (Psal. LXXVII, 25). Sed tamen panem illum qui manducaverunt, omnes in deserto mortui sunt: ista autem esca quam accipis, iste panis vivus qui descendit de coelo, vitae aeternae substantiam subministrat; et quicumque hunc manducaverit, non morietur in aeternum: et est corpus Christi.",
                       @"48. Considera nunc (De Consec. dist. 2, c. Revera, § Considera) utrum praestantior sit panis angelorum, an caro Christi, quae utique corpus est vitae. Manna illud e coelo, hoc supra coelum; illud coeli, hoc Domini coelorum: illud corruptioni obnoxium, si in diem alterum servaretur; hoc alienum ab omni corruptione, quod quicumque religiose gustaverit, corruptionem sentire non poterit. Illis aqua de petra fluxit (Exod. XVII, 6), tibi sanguis e Christo (Joan.VI, 55 et seq.): illos ad horam satiavit aqua, te sanguis diluit in aeternum. Judaeus bibit, et sitit: tu cum biberis, sitire non poteris: et illud in umbra, hoc in veritate.",
                       @"49. Si illud quod miraris, umbra est; quantum istud est, cujus et umbram miraris! Audi quia umbra est quae apud patres facta est: Bibebant, inquit, de consequenti eos petra: petra autem erat Christus. Sed non in pluribus eorum complacitum est Deo; nam prostrati sunt in deserto (I Cor. X, 4, 5). Haec autem in figura facta sunt nostra. Cognovisti praestantiora; potior est enim lux quam umbra, veritas quam figura, corpus auctoris quam manna de coelo."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput IX"
                   text:@[
                       @"Ne quis externa perculsus specie, in fide fluctuet, plurimis exemplis, quibus mutatam aut victam fuisse naturam constat, in medium allatis, e pane veram Christi carnem fieri evincit. Postremo nonnullis quae ad effectus ejus, utentium dispositiones ac similia pertinent, figurate propositis, tractatum claudit.",
                       @"50. Forte dicas: Aliud video, quomodo tu mihi asseris quod Christi corpus accipiam? Et hoc nobis adhuc superest ut probemus. Quantis igitur utimur exemplis! Probemus non hoc esse quod natura formavit, sed quod benedictio consecravit: majoremque vim esse benedictionis quam naturae; quia benedictione etiam natura ipsa mutatur.",
                       @"51. Virgam tenebat Moyses, projecit eam, et facta est serpens (Exod. IV, 3, 4). Rursus prehendit caudam serpentis, et in virgae naturam revertit. Vides igitur prophetica gratia bis mutatam esse naturam et serpentis et virgae? Currebant Aegypti flumina puro aquarum meatu, subito de fontium venis sanguis coepit erumpere; et non erat potus in fluviis (Exod. VII, 20 et seq.). Rursus a prophetae prece cruor cessavit fluminum, aquarum natura remeavit. Circumclusus undique erat populus Hebraeorum, hinc Aegyptiis vallatus, inde mari clausus: virgam levavit Moyses, separavit se aqua, et in murorum specie congelavit, atque inter undas via pedestris apparuit (Exod. XIV, 21 et seq.). Jordanis retrorsum conversus contra naturam in sui fontis revertit exordium (Jos. III, 16). Nonne claret naturam vel maritimorum fluctuum vel fluvialis cursus esse mutatam? Sitiebat populus patrum, tetigit Moyses petram, et aqua de petra fluxit. Numquid non praeter naturam operata est gratia, ut aquam vomeret petra, quam non habebat natura? Merrha fluvius amarissimus erat, ut sitiens populus bibere non posset. Misit Moyses lignum in aquam, et amaritudinem suam aquarum natura deposuit (Exod. XV, 23 et seq.), quam infusa subito gratia temperavit. Sub Elisaeo propheta uni ex filiis prophetarum excussum est ferrum de securi, et statim mersum est. Rogavit Elisaeum, qui amiserat ferrum: misit etiam Elisaeus lignum in aquam, et ferrum natavit (IV Reg. VI, 6). Utique et hoc praeter naturam factum cognoscimus; gravior est enim ferri species, quam aquarum liquor.",
                       @"52. Advertimus igitur majoris esse virtutis gratiam quam naturam, et adhuc tamen propheticae benedictionis numeramus gratiam? Quod si tantum valuit humana benedictio, ut naturam converteret (III Reg. XVIII, 38); quid dicimus de ipsa consecratione divina, ubi verba ipsa Domini Salvatoris operantur? Nam sacramentum istud quod accipis, Christi sermone conficitur. Quod si tantum valuit sermo Eliae, ut ignem de coelo deponeret: non valebit Christi sermo, ut species mutet elementorum? De totius mundi operibus legisti: Quia ipse dixit, et facta sunt: ipse mandavit, et creata sunt, (Psal. CXLVIII, 5.De Consec., dist. 2, c. In quibus, § Cujus clare) sermo ergo Christi qui potuit ex nihilo facere quod non erat, non potest ea quae sunt, in id mutare, quod non erant? Non enim minus est novas rebus dare, quam mutare naturas.",
                       @"53. Sed quid argumentis utimur? Suis utamur exemplis, incarnationisque exemplo astruamus mysterii veritatem. Numquid naturae usus praecessit, cum Jesus Dominus ex Maria nasceretur? Si ordinem quaerimus, viro mixta femina generare consuevit. Liquet igitur quod praeter naturae ordinem Virgo generavit. Et hoc quod conficimus corpus, ex Virgine est: quid hic quaeris naturae ordinem in Christi corpore, cum praeter naturam sit ipse Dominus Jesus partus ex Virgine? Vera utique caro Christi, quae crucifixa est, quae sepulta est: vere ergo carnis illius sacramentum est.",
                       @"54. Ipse clamat Dominus Jesus: Hoc est corpus meum (Matth. XXVI, 26). Ante benedictionem verborum coelestium alia species nominatur, post consecrationem corpus significatur (De Consec. dist. 10, § Haec et his). Ipse dicit sanguinem suum. Ante consecrationem aliud dicitur, post consecrationem sanguis nuncupatur. Et tu dicis: Amen, hoc est, verum est. Quod os loquitur, mens interna fateatur: quod sermo sonat, affectus sentiat.",
                       @"55. His igitur sacramentis pascit Ecclesiam suam Christus, quibus animae firmatur substantia: meritoque videns profectum ejus gratiae continentem, dicit ad eam: Quam decora facta sunt ubera tua, soror mea sponsa! Quam decora facta sunt a vino: et odor vestimentorum tuorum super omnia aromata! Favus distillans labia tua, o sponsa, mel et lac sub lingua tua, et odor vestimentorum tuorum sicut odor Libani. Hortus conclusus, soror mea sponsa, hortus conclusus, fons signatus (Cant. IV, 10 et seq.). Quo significat signatum debere apud te manere mysterium, ne violetur operibus malae vitae, atque adulterio castitatis, ne divulgetur quibus non convenit, ne garrula loquacitate dispergatur in perfidos. Bona ergo debet esse fidei tuae custodia, ut intemerata vitae ac silentii integritas perseveret.",
                       @"56. Unde et Ecclesia altitudinem servans mysteriorum coelestium, rejicit a se graviores venti procellas, et invitat vernantis gratiae suavitatem: et sciens quod hortus suus Christo displicere non possit, ipsum advocat Sponsum dicens: Exsurge aquilo, et veni auster: perfla hortum meum, et defluant unguenta mea (Ibid., 16). Descendat frater meus in hortum suum, et edat fructum pomiferarum suarum (Cant. V, 1). Bonas enim arbores et fructiferas habet, quae radices suas tinxerint sacri fontis irriguo, et in bonos fructus novae fecunditatis germine pullulaverint; ut non jam prophetica caedantur securi, sed Evangelica ubertate fecundentur (Matth. III, 10).",
                       @"57. Denique fertilitate earum etiam Dominus delectatus respondet: Ingressus sum in hortum meum, soror mea Sponsa: vindemiavi myrrham meam cum unguentis meis, manducavi cibum meum cum melle meo, bibi potum meum cum lacte meo (Cant. V, 1). Quare cibum et potum dixerit, fidelis intellige. Illud autem non dubium, quod in nobis ipse manducat et bibit, sicut in nobis legisti quia in carcere esse se dicit (Matth. XXV, 36).",
                       @"58. Unde et Ecclesia videns tantam gratiam, hortatur filios suos, hortatur proximos, ut ad sacramenta concurrant, dicens: Edite proximi mei, et bibite, et inebriamini, fratres mei (Cant. V, 1). Quid edamus, quid bibamus, alibi tibi per Prophetam Spiritus sanctus expressit dicens: Gustate et videte quoniam suavis est Dominus: beatus vir qui sperat in eo (Psal. XXXIII, 9). In illo sacramento (De Consec. dist. 2, cap., In illo sacram.) Christus est; quia corpus est Christi: non ergo corporalis esca, sed spiritalis est. Unde et Apostolus de typo ejus ait: Quia patres nostri escam spiritalem manducaverunt, et potum spiritalem biberunt (ICor. X, 3); corpus enim Dei corpus est spiritale: corpus Christi corpus est divini Spiritus; quia Spiritus Christus, ut legimus: Spiritus ante faciem nostram Christus Dominus (Thren. IV, 20). Et in Petri Epistola habemus: Christus pro nobis mortuus est (I Pet. II, 21). Denique cor nostrum esca ista confirmat, et potus iste laetificat cor hominis, ut Propheta memoravit (Psal. CIII, 15).",
                       @"59. Unde adepti omnia, sciamus regeneratos nos esse: nec dicamus, quomodo regenerati sumus? Numquid in ventrem matris nostrae introivimus, et renati sumus? non agnosco usum naturae. Sed nullus hic naturae ordo, ubi excellentia gratiae est. Denique non semper usus naturae generationem facit: generatum ex Virgine Christum Dominum confitemur, et naturae ordinem denegamus. Non enim ex viro Maria concepit: sed de Spiritu sancto in utero accepit, ut dicit Matthaeus: Quia inventa est in utero habens de Spiritu sancto (Matth. I, 18). Si ergo superveniens Spiritus sanctus in Virginem, conceptionem operatus est, et generationis munus implevit: non utique dubitandum est quod superveniens in fontem, vel super eos qui baptismum consequuntur, veritatem regenerationis operetur."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Ambrose to his Sister Marcellina"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Ambrosi Epistula ad Sororem Marcellinam"
                   text:@[
                       @"1. Quoniam in omnibus fere epistulis sollicite quaeris de ecclesia, accipe, quid agatur. postridie quam accepi litteras tuas, quibus significaveras, quod te exagitarent somnia tua, moles inquietudinum gravium coepit moveri. nec iam Porciana, hoc est extramurana, basilica petebatur, sed basilica nova, hoc est intramurana, quae maior est.",
                       @"2. convenerunt me primo principes virtutum viri, comites consistoriani, ut et basilicam traderem et procurarem, ne quid populus turbarum moveret. respondi, quod erat ordinis: templum dei a sacerdote tradi non posse. acclamatum est sequenti die in ecclesia. etiam praefectus eo venit; coepit suadere, vel ut basilica Porciana cederemus. populus reclamavit. ita tunc discessum est, ut intimaturum se imperatori diceret.",
                       @"3. sequenti die - erat autem dominica - post lectiones atque tractatum dimissis catechumenis symbolum aliquibus competentibus in baptisterii tradebam basilica. illic nuntiatum est mihi comperto, quod ad Porcianam basilicam de palatio decanos misissent et vela suspenderent, populi partem eo pergere. ego tamen mansi in munere; missam facere coepi.",
                       @"4. dum offero, raptum cognovi a populo Castulum quendam, quem presbyterum dicerent Ariani. hunc autem in platea offenderant transeuntes. amarissime flere et orare in ipsa oblatione Deum coepi, ut subveniret ne cuius sanguis in causa ecclesiae fieret, certe ut meus sanguis pro salute non solum populi, sed etiam pro ipsis impiis effunderetur. quid multa? missis presbyteris et diaconibus eripui iniuriae virum.",
                       @"5. condemnationes ilico gravissimae decernuntur, primo in corpus omne mercatorum. itaque sanctis diebus hebdomadis ultimae, quibus solebant debitorum laxari vincula, stridunt catenae, imponuntur collo innocentium, exiguntur ducenta pondo auri infra totum triduum. respondent aliud se tantum aut duplum, si peterentur, daturos, dummodo servarent fidem. erant pleni carceres negotiatoribus.",
                       @"6. palatina omnia officia, hoc est memoriales, agentes in rebus, apparitores diversorum comitum temperare a processu iubentur, specie qua seditioni interesse prohibebantur; honoratis multa minabantur gravissima, nisi basilicam traderent. fervebat persecutio, ac si aperuissent portam, prorupturi in omne facinus videbantur",
                       @"7. convenior ipse a comitibus et tribunis, ut basilicae fieret matura traditio, dicentibus imperatorem iure suo uti, eo guod in potestate eius essent omnia. respondi, si a me peteret, quod meum esset, id est fundum meum, argentum meum, quidvis huiusmodi meum, me non refragaturum, quamquam omnia, quae mea sunt, essent pauperum; verum ea, quae sunt divina, imperatoriae potestati non esse subiecta. \"si patrimonium petitur, invadite, si corpus, occurram. vultis in vincula rapere? vultis in mortem? voluptati est mihi. non ego vallabor circumfusione populorum nec altaria tenebo vitam obsecrans, sed pro altaribus gratius immolabor.\"",
                       @"8. horrebam quippe animo, cum armatos ad basilicam ecclesiae occupandam missos cognoscerem: ne, dum basilicam vindicant, aliqua strages fieret, quae. in perniciem totius vergeret civitatis. orabam, ne tantae urbis vel totius Italiae busto superviverem; detestabar invidiam fundendi cruoris; offerebam iugulum meum. aderant Gothi tribuni; adoriebar eos dicens: \"propterea vos possessio Romana suscepit, ut perturbationis publicae vos praebeatis ministros? quo transibitis, si haec deleta fuerint?\"",
                       @"9. exigebatur a me, ut compescerem populum. referebam in meo iure esse, ut non excitarem, in Dei manu, uti mitigaret; postremo si me incentorem putaret, iam in me vindicari oportere vel abduci me in quas vellet terrarum solitudines. his dictis illi abierunt; ego in basilica veteri totum exegi diem. inde domum cubitum me recepi, ut, si quis abducere vellet, inveniret paratum.",
                       @"10. ante lucem ubi pedem limine extuli, circumfuso milite 1occupatur basilica. idque a militibus imperatori mandatum dicitur, ut, si prodire vellet, haberet copiam; se tamen praesto futuros, si viderent eum cum catholicis convenire - alioquin se ad eum coetum, quem Ambrosius cogeret, transituros. prodire de Arianis nullus audebat, quia nec quisquam de civibus erat, pauci de familia regia, nonnulli etiam Gothi. quibus ut olim plaustra sedes erat, ita nunc plaustrum ecclesia est. quocumque femina ista processerit, secum suos omnes coetus vehit.",
                       @"11. circumfusam basilicam esse gemitu populi intellexi. sed dum leguntur lectiones, intimatur mihi plenam populi esse basilicam etiam novam; maiorem videri plebem, quam cum essent omnes liberi; lectorem efflagitari. quid plura? milites ipsi, qui videbantur occupasse basilicam cognito, quod praecepissem - ut abstinerentur a communionis consortio -, ad conventum hunc nostrum venire coeperunt.",
                       @"12. quibus visis turbantur mulierum animi, proripit se una. ipsi tamen milites se ad orationem venisse, non ad proelium loquebantur. clamavit aliqua populus: quam moderate, quam constanter, quam fideliter poscebat, ut ad illam pergeremus basilicam! in illa quoque basilica fertur quod populus praesentiam flagitabat meam.",
                       @"13. tunc ego hunc adorsus sermonem sum: \"audistis, filii, librum Iob legi, qui solemni munere est decursus et tempore. scivit ex usu hunc librum etiam diabolus intimandum, quo virtus omnis suae temptationis aperitur et proditur, et ideo se hodie motu maiore concussit. sed gratias Deo nostro, qui vos ita firmavit fide atque patientia. unum Iob miraturus ascenderam, omnes Iob quos mirarer inveni.",
                       @"14. in singulis vobis lob revixit, in singulis sancti illius patientia et virtus refulsit. quid enim praestantius dici potuit a Christianis viris quam id, quod hodie in vobis spiritus sanctus est locutus? \"rogamus, Auguste, non pugnamus; non timemus, sed rogamus.\" hoc Christianos decet, ut et tranquillitas pacis optetur et fidei veritatisque constantia nec mortis revocetur periculo. est enim praesul dominus, qui salvos faciet sperantes in se.",
                       @"15. sed veniamus ad propositas lectiones. videtis diabolo temptandi licentiam dari, ut boni probentur. invidet iniquus bonis profectibus; temptat diversis modis. temptavit sanctum Iob in patrimonio, temptavit in filiis, temptavit in dolore corporis. fortior in suo corpore temptatur, infirmior alieno. et mihi meas divitias, quas in vobis habeo, volebat auferre, et hoc tranquillitatis vestrae patrimonium dissipare cupiebat.",
                       @"16. vos quoque ipsos mihi bonos filios gestiebat eripere, pro quibus ego quotidie instauro sacrificium; vos ruinis quibusdam publicae perturbationis conabatur involvere. duo igitur iam genera temptationis excepi. et fortasse quia infirmiorem me dominus Deus novit, adhuc in corpus meum non dedit potestatem. etsi ipse cupiam, etsi offeram, adhuc me fortasse huic certamini imparem iudicat et diversis exercet laboribus. nec Iob ab isto coepit certamine, sed in hoc consummavit.",
                       @"17. temptatus est autem Iob nuntiis coacervatis malorum temptatus est etiam per mulierem, quae ait: \"dic aliquod verbum in Deum et morere.\" videtis, quanta subito moveantur: Gothi, arma, gentiles, multa mercatorum, poena sanctorum. advertitis, quid iubeatur, cum mandatur: \"trade basilicam\" - hoc est: \"dic aliquod verbum in Deum et morere. nec solum dic adversus Deum, sed etiam fac adversus Deum.\" mandatur: \"trade altaria Dei.\"",
                       @"18. urgemur igitur praeceptis regalibus, sed confirmamur scripturae sermonibus, quae respondit: \"tamquam una ex insipientibus locuta es.\" non mediocris igitur ista temptatio; namque asperiores temptationes has esse cognovimus, quae fiunt per mulieres. denique per Evam etiam Adam supplantatus est eoque factum, ut a mandatis caelestibus deviaret. quo errore cognito praevaricatricis conscientiae reus latere cupiebat, sed latere non poterat, et ideo ait ei Deus: \"Adam, ubi es?\"",
                       @"19. hoc est: quid eras ante, ubi nunc esse coepisti; ubi te constitueram, quo ipse transgressus es? agnoscis esse te nudum, quia bonae indumenta fidei perdidisti. folia sunt ista, quibus nunc velare te quaeris. repudiasti fructum, sub foliis legis latere cupis, sed proderis. recedere a domino Deo tuo propter unam mulierem desiderasti; propterea fugis, quem videre quaerebas. cum una muliere te abscondere maluisti, relinquere speculam mundi, incolatum paradisi, gratiam Christi.",
                       @"20. quid dicam, quod etiam Eliam Iezabel cruente persecuta est, quod Ioannem Baptistam Herodias fecit occidi? singulae tamen singulos; mihi quo minora longe merita, eo temptamenta graviora. virtus infirmior, sed plus periculi. succedunt sibi mulierum vices, alternantur odia, commenta variantur, seniores conveniuntur, praetexitur regis iniuria. quae ratio igitur est adversus hunc vermiculum gravioris temptationis, nisi quia non me, sed ecclesiam persequuntur?",
                       @"21. mandatur denique: \"trade basilicam.\" respondeo: \"nec mihi fas est tradere, nec tibi accipere, imperator, expedit. domum privati nullo potes iure temerare, domum Dei existimas auferendam?\" allegatur imperatori licere omnia, ipsius esse universa. respondeo: \"noli te gravare, imperator, ut putes te in ea, quae divina sunt, imperiale aliquod ius habere. noli te extollere, sed si vis diutius imperare, esto Deo subditus.",
                       @"22. scriptum est: quae dei deo, quae Caesaris Caesari. ad imperatorem palatia pertinent, ad sacerdotem ecclesiae. publicorum tibi moenium ius commissum est, non sacrorum.\" iterum dicitur mandasse imperatorem: \"debeo et ego unam basilicam habere.\" respondi: \"non tibi licet illam habere. quid tibi cum adultera? adultera est enim, quae non est legitimo Christi coniugio copulata.\"\"",
                       @"23. dum haec tracto, suggestum est mihi cortinas regias esse collectas, refertam autem populo basilicam praesentiam mei poscere, statimque eo converti sermonem meum dicens: \"quam alta et profunda oracula sunt spiritus sancti! matutinis horis lectum est, ut meministis, fratres, quod summo animi dolore respondebamus: \"Deus, venerunt gentes in hereditatem tuam.\" et re vera venerunt gentes, et plus etiam quam gentes venerunt; venerunt enim Gothi et diversarum nationum viri, venerunt cum armis et circumfusi occupaverunt basilicam. hoc nos ignari tuae altitudinis dolebamus, et nostra imprudentia aliud opinabatur.",
                       @"24. venerunt gentes, sed vere in hereditatem tuam venerunt; qui enim gentes venerunt; facti sunt Christiani. qui ad invadendam hereditatem venerunt, facti sunt coheredes Dei. defensores habeo, quos hostes putabam; socios teneo, quos adversarios aestimabam. completum est illud, quod de domino Iesu David propheta cecinit, quia \"factus est in pace locus eius\" et \"ibi confregit cornua arcuum, scutum, gladium et bellum\".",
                       @"25. cuius enim hoc munus, cuius opus nisi tuum, domine Iesu? videbas ad templum tuum armatos venire, hinc gemere populum et frequentem adesse, ne basilicam Dei tradere videretur, inde vim militibus imperari. mors ante oculos mihi, ne quid inter haec furori liceret: inseruisti te, domine, medium et fecisti utraque unum.",
                       @"26. compescuisti armatos dicens profecto: \"si ad arma concurritur, si in templo meo clausi commoventur, quae utilitas in sanguine meo?\" gratias itaque tibi, Christe. non legatus neque nuntius, sed tu, domine, salvum fecisti populum tuum; conscidisti saccum meum et praecinxisti me laetitita.\"",
                       @"27. haec ego dicebam miratus imperatoris animum studio militum, obsecratione comitum, precatu populi posse mitescere. interea nuntiatur mihi missum notarium, qui mandata deferret. concessi paulum; mandatum intimat. \"quid tibi visum est\", inquit, \"ut contra placitum faceres?\" respondi: \"quod placitum sit, ignoro, quidve temere factum dicatur, incertum habeo.\" ait: \"cur presbyteros ad basilicam destinasti? si tyrannus es, scire volo: ut sciam, quemadmodum me adversus te praeparem.\"",
                       @"28. rettuli dicens me nihil in praeiudicium fecisse ecclesiae; eo tempore, quo audieram occupatam esse a militibus basilicam, gemitum tantummodo liheriorem habuisse multisque adhortantibus, ut eo pergerem, dixisse: \"tradere basilicam non possum, sed pugnare non debeo\"; postea vero quam cognoverim cortinas regias inde esse sublatas, cum me populus eo ire deposceret, direxisse presbyteros; me tamen noluisse ire, sed dixisse: \"credo in Christo, quod ipse nobiscum faciet imperator.\"",
                       @"29. si haec tyrannidis videntur, habeo arma, sed in Christi nomine: habeo offerendi mei corporis potestatem. quid moraretur ferire, si tyrannum putaret? veteri iure a sacerdotibus donata imperia, non usurpata, et vulgo dici, quod imperatores sacerdotium magis optaverint, quam imperium sacerdotes. Christus fugit, ne rex fieret.",
                       @"30. habemus tyrannidem nostram. tyrannis sacerdotis infirmitas est: \"cum infirmor\", inquit, \"tunc potens sum.\" caveret tamen, ne ipse sibi tyrannum faceret, cui Deus adversarium non excitavit. non hoc Maximum dicere, quod tyrannus ego sim Valentiniani, qui se meae legationis obiectu queritur ad Italiam non potuisse transire. addidi, quia numquam sacerdotes tyranni fuerunt, sed tyrannos saepe sunt passi.",
                       @"31. exactus est totus ille dies in maerore nostro; scissae tamen ab illudendibus pueris cortinae regiae. ego domum redire non potui, quia circumfusi erant milites, qui basilicam custodiebant. cum fratribus psalmos in ecclesiae basilica minore diximus.",
                       @"32. sequenti die lectus est de more liber Ionae, quo completo hunc sermonem exorsus sum: \"liber lectus est, fratres, quo prophetatur, quod peccatores in paenitentiam revertantur. acceptum est ita, ut speraretur in praesenti futurum.\" addidi, quod vir iustus etiam offensam contrahere voluisset, ne vel spectaret vel denuntiaret excidium civitati, et quod contristatus quoque sit, quod aruisset cucurbita.",
                       @"33. Deum quoque dixisse ad prophetam: \"tristis es pro cucurbita?\" respondisse Ionam: \"tristis.\" dixisse dominum, si illud doleret, quod exusta esset cucurbita, quanto magis sibi curae esse oportere tantae plebis salutem! et ideo excidium, quod paratum toti urbi fuerat, removisse.",
                       @"34. nec mora, nuntiatur imperatorem iussisse, ut recederent milites de basilica, negotiatoribus quoque, quod exacti de condemnatione fuerant, redderetur. quae tunc plebis totius laetitia fuit! qui totius populi plausus, quae gratiae! erat autem dies, quo sese dominus pro nobis tradidit, quo in ecclesia paenitentia relaxatur. certatim hoc nuntiare milites, irruentes in altaria osculis significare pacis insigne. tunc agnovi, quod Deus vermem antelucanum percusserat, ut tota civitas servaretur.",
                       @"35. haec gesta sunt atque utinam iam finita! sed graviores motus futuros plena commotionis imperialia verba indicant. ego tyrannus appellor, et plus etiam quam tyrannus. nam cum imperatorem comites obsecrarent, uti prodiret ad ecclesiam, idque petitu militum facere se dicerent, respondit: \"si vobis iusserit Ambrosius, vinctum.me tradetis.\" quid post hanc vocem supersit, considera.",
                       @"36. quam vocem omnes cohorruerunt, sed habet, a quibus exasperetur. denique etiam speciali expressione Calligonus, praepositus cubiculi, mandare mihi ausus est: \"me vivo tu contemnis Valentinianum? caput tibi tollo.\" respondi: \"Deus permittat tibi, ut impleas, quod minaris; ego enim patiar quod episcopi, tu facies quod spadones.\" atque utinam Deus avertat eos ab ecclesia: in me omnia sua tela convertant, meo sanguine sitim suam expleant!"
                   ]]
              ]]
         ]],
        [[Source alloc]
         initWithTitle:@"Battle of Spirits"
         subtitle:@"An early and extremely influential Christian poem, considered the first medieval allegory. The poem describes an epic war between seven personified virtues and seven corresponding vices. A thousand martyrs cheer as virtue triumphs in the end."
         date:@"eary 400s"
         works:@[
             [[Work alloc]
              initWithTitle:@"Battle of Spirits"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Psychomachia"
                   text:@[
                       @"Senex fidelis prima credendi uia\n"
                       "Abram, beati seminis serus pater,\n"
                       "adiecta cuius nomen auxit syllaba,\n"
                       "Abram parenti dictus, Abraham Deo,\n"
                       "senile pignus qui dicauit uictimae,\n"
                       "docens ad aram cum litare quis uelit,\n"
                       "quod dulce cordi, quod pium, quod unicum\n"
                       "deo libenter offerendum credito,\n"
                       "pugnare nosmet cum profanis gentibus\n"
                       "suasit, suumque suasor exemplum dedit,\n"
                       "nec ante prolem coniugalem gignere\n"
                       "deo placentem, matre uirtute editam,\n"
                       "quam strage multa bellicosus spiritus\n"
                       "portenta cordis seruientis uicerit.\n"
                       "uictum feroces forte reges ceperant\n"
                       "Loth inmorantem criminosis urbibus\n"
                       "Sodomae et Gomorrae, quas fouebat aduena\n"
                       "pollens honore patruelis gloriae.\n"
                       "Abram sinistris excitatus nuntiis\n"
                       "audit propinquum sorte captum bellica\n"
                       "seruire duris barbarorum uinculis:\n"
                       "armat trecentos terque senos uernulas,\n"
                       "pergant ut hostis terga euntis caedere.\n"
                       "quem gaza diues ac triumphus nobilis\n"
                       "captis tenebant inpeditum copiis.\n"
                       "quin ipse ferrum stringit et plenus deo\n"
                       "reges superbos mole praedarum graues\n"
                       "pellit fugatos, sauciatos proterit,\n"
                       "frangit catenas et rapinam liberat:\n"
                       "aurum, puellas, paruulos, monilia,\n"
                       "greges equarum, uasa, uestem, buculas.\n"
                       "Loth ipse ruptis expeditus nexibus\n"
                       "attrita bacis colla liber erigit.\n"
                       "Abram triumphi dissipator hostici\n"
                       "redit recepta prole fratris inclytus\n"
                       "ne quam fidelis sanguinis prosapiam\n"
                       "uis pessimorum possideret principum.\n"
                       "adhuc recentem caede de tanta uirum\n"
                       "donat sacerdos ferculis caelestibus,\n"
                       "dei sacerdos, rex et idem praepotens,\n"
                       "origo cuius fonte inenarrabili\n"
                       "secreta nullum prodit auctorem sui,\n"
                       "Melchisedech, qua stirpe, quis maioribus\n"
                       "ignotus, uni cognitus tantum deo.\n"
                       "mox et triformis angelorum trinitas\n"
                       "senis reuisit hospitis mapalia,\n"
                       "et iam uietam Sarra in aluum fertilis\n"
                       "munus iuuentae mater exsanguis stupet,\n"
                       "herede guadens, et cachinni paenitens.\n"
                       "haec ad figuram praenotata est linea,\n"
                       "quam nostra recto uita resculpat pede:\n"
                       "uigilandum in armis pectorum fidelium,\n"
                       "omnemque nostri portionem corporis,\n"
                       "quae capta foedae seruiat libidini,\n"
                       "domi coactis liberandam uiribus;\n"
                       "nos esse large uernularum diuites,\n"
                       "si quid trecenti bis nouenis additis\n"
                       "possint figura nouerimus mystica.\n"
                       "mox ipse Christus, qui sacerdos uerus est,\n"
                       "parente inenarrabili atque uno satus,\n"
                       "cibum beatis offerens uictoribus\n"
                       "paruam pudici cordis intrabit casam,\n"
                       "monstrans honorem trinitatis hospitae.\n"
                       "animam deinde spiritus conplexibus\n"
                       "pie maritam, prolis expertem diu,\n"
                       "faciet perenni fertilem de semine,\n"
                       "tunc sera dotem possidens puerpera\n"
                       "herede digno patris inplebit domum.",
                       @"Christe, graues hominum semper miserate labores,\n"
                       "qui patria uirtute cluis propriaque, sed una,\n"
                       "(unum namque deum colimus de nomine utroque,\n"
                       "non tamen et solum, quia tu deus ex patre, Christe)\n"
                       "dissere, rex noster, quo milite pellere culpas\n"
                       "mens armata queat nostri de pectoris antro,\n"
                       "exoritur quotiens turbatis sensibus intus\n"
                       "seditio atque animam morborum rixa fatigat,\n"
                       "quod tunc praesidium pro libertate tuenda\n"
                       "quaeue acies furiis inter praecordia mixtis\n"
                       "obsistat meliore manu. nec enim, bone ductor,\n"
                       "magnarum virtutum inopes neruisque carentes\n"
                       "Christicolas uitiis populantibus exposuisti.\n"
                       "ipse salutiferas obsesso in corpore turmas\n"
                       "depugnare iubes, ipse excellentibus armas\n"
                       "artibus ingenium, quibus ad ludibria cordis\n"
                       "oppugnanda potens tibi dimicet et tibi uincat.\n"
                       "uincendi praesens ratio est, si comminus ipsas\n"
                       "uirtutum facies et conluctantia contra\n"
                       "uiribus infestis liceat portenta notare.",
                       @"prima petit campum dubia sub sorte duelli\n"
                       "pugnatura Fides, agresti turbida cultu,\n"
                       "nuda umeros, intonsa comas, exerta lacertos;\n"
                       "namque repentinus laudis calor ad noua feruens\n"
                       "proelia nec telis meminit nec tegmine cingi,\n"
                       "pectore sed fidens ualido membrisque retectis\n"
                       "prouocat insani frangenda pericula belli.\n"
                       "ecce lacessentem conlatis uiribus audet\n"
                       "prima ferire Fidem Veterum Cultura Deorum.\n"
                       "illa hostile caput phalerataque tempora uittis\n"
                       "altior insurgens labefactat, et ora cruore\n"
                       "de pecudum satiata solo adplicat et pede calcat\n"
                       "elisos in morte oculos, animamque malignam\n"
                       "fracta intercepti commercia gutturis artant,\n"
                       "difficilemque obitum suspiria longa fatigant.\n"
                       "exultat uictrix legio, quam mille coactam\n"
                       "martyribus regina Fides animarat in hostem.\n"
                       "nunc fortes socios parta pro laude coronat\n"
                       "floribus ardentique iubet uestirier ostro.",
                       @"exim gramineo in campo concurrere prompta\n"
                       "uirgo Pudicitia speciosis fulget in armis,\n"
                       "quam patrias succincta faces Sodomita Libido\n"
                       "adgreditur piceamque ardenti sulpure pinum\n"
                       "ingerit in faciem pudibundaque lumina flammis\n"
                       "adpetit, et taetro temptat subfundere fumo.\n"
                       "sed dextram furiae flagrantis et ignea dirae\n"
                       "tela lupae saxo ferit inperterrita uirgo,\n"
                       "excussasque sacro taedas depellit ab ore.\n"
                       "tunc exarmatae iugulum meretricis adacto\n"
                       "transfigit gladio; calidos uomit illa uapores\n"
                       "sanguine concretos caenoso; spiritus inde\n"
                       "sordidus exhalans uicinas polluit auras.\n"
                       "\"hoc habet,\" exclamat uictrix regina, \"supremus\n"
                       "hic tibi finis erit, semper prostrata iacebis,\n"
                       "nec iam mortiferas audebis spargere flammas\n"
                       "in famulos famulasue dei, quibus intima casti\n"
                       "uena animi sola feruet de lampade Christi.\n"
                       "tene, o uexatrix hominum, potuisse resumptis\n"
                       "uiribus extincti capitis recalescere flatu,\n"
                       "Assyrium postquam thalamum ceruix Olofernis\n"
                       "caesa cupidineo madefactum sanguine lauit,\n"
                       "gemmantemque torum moechi ducis aspera Iudith\n"
                       "spreuit et incestos conpescuit ense furores,\n"
                       "famosum mulier referens ex hoste tropaeum\n"
                       "non trepidante manu uindex mea caelitus audax?\n"
                       "at fortasse parum fortis matrona sub umbra\n"
                       "legis adhuc pugnans, dum tempora nostra figurat,\n"
                       "uera quibus uirtus terrena in corpora fluxit\n"
                       "grande per infirmos caput excisura ministros.\n"
                       "numquid et intactae post partum uirginis ullum\n"
                       "fas tibi iam superest? post partum uirginis, ex quo\n"
                       "corporis humani naturam pristina origo\n"
                       "deseruit carnemque nouam uis ardua seuit,\n"
                       "atque innupta deum concepit femina Christum,",
                       @"mortali de matre hominem, sed cum patre numen.\n"
                       "inde omnis iam diua caro est quae concipit illum\n"
                       "naturamque dei consortis foedere sumit.\n"
                       "Verbum quippe caro factum non destitit esse\n"
                       "quod fuerat, Verbum, dum carnis glutinat usum,\n"
                       "maiestate quidem non degenerante per usum\n"
                       "carnis, sed miseros ad nobiliora trahente.\n"
                       "ille manet quod semper erat, quod non erat esse\n"
                       "incipiens: nos quod fuimus iam non sumus, aucti\n"
                       "nascendo in melius: mihi contulit et sibi mansit.\n"
                       "nec deus ex nostris minuit sua, sed sua nostris\n"
                       "dum tribuit nosmet dona ad caelestia uexit.\n"
                       "dona haec sunt, quod uicta iaces, lutulenta Libido,\n"
                       "nec mea post Mariam potis es perfringere iura.\n"
                       "tu princeps ad mortis iter, tu ianua leti,\n"
                       "corpora conmaculans animas in tartara mergis.\n"
                       "abde caput tristi, iam frigida pestis, abysso;\n"
                       "occide, prostibulum; manes pete, claudere Auerno,\n"
                       "inque tenebrosum noctis detrudere fundum.\n"
                       "te uoluant subter uada flammea, te uada nigra\n"
                       "sulpureusque rotet per stagna sonantia uertex,\n"
                       "nec iam Christicolas, furiarum maxima, temptes,\n"
                       "ut purgata suo seruentur corpora regi.\"\n"
                       "dixerat haec et laeta Libidinis interfectae\n"
                       "morte Pudicitia gladium Iordanis in undis\n"
                       "abluit infectum, sanies cui rore rubenti\n"
                       "haeserat et nitidum macularat uulnere ferrum.\n"
                       "expiat ergo aciem fluuiali docta lauacro\n"
                       "uictricem uictrix, abolens baptismate labem\n"
                       "hostilis iuguli; nec iam contenta piatum\n"
                       "condere uaginae gladium, ne tecta rubigo\n"
                       "occupet ablutum scabrosa sorde nitorem,\n"
                       "catholico in templo diuini fontis ad aram\n"
                       "consecrat, aeterna splendens ubi luce coruscet.",
                       @"ecce modesta graui stabat Patientia uultu\n"
                       "per medias inmota acies uariosque tumultus,\n"
                       "uulneraque et rigidis uitalia peruia pilis\n"
                       "spectabat defixa oculos et lenta manebat.\n"
                       "hanc procul Ira tumens, spumanti feruida rictu,\n"
                       "sanguinea intorquens subfuso lumina felle,\n"
                       "ut belli exsortem teloque et uoce lacessit,\n"
                       "inpatiensque morae conto petit, increpat ore,\n"
                       "hirsutas quatiens galeato in uertice cristas.\n"
                       "\"en tibi Martis,\" ait, \"spectatrix libera nostri,\n"
                       "excipe mortiferum securo pectore ferrum,\n"
                       "nec doleas, quia turpe tibi gemuisse dolorem.\"\n"
                       "sic ait, et stridens sequitur conuicia pinus\n"
                       "per teneros crispata notos, et certa sub ipsum\n"
                       "defertur stomachum rectoque inliditur ictu,\n"
                       "sed resilit duro loricae excussa repulsu.\n"
                       "prouida nam Virtus conserto adamante trilicem\n"
                       "induerat thoraca umeris squamosaque ferri\n"
                       "texta per intortos conmiserat undique neruos.\n"
                       "inde quieta manet Patientia, fortis ad omnes\n"
                       "telorum nimbos et non penetrabile durans.\n"
                       "nec mota est iaculo monstri sine more furentis,\n"
                       "opperiens propriis perituram uiribus Iram.\n"
                       "scilicet indomitos postquam stomachando lacertos\n"
                       "barbara bellatrix inpenderat et iaculorum\n"
                       "nube superuacuam lassauerat inrita dextram,\n"
                       "cum uentosa leui cecidissent tela uolatu,\n"
                       "iactibus et uacuis hastilia fracta iacerent,\n"
                       "uertitur ad capulum manus inproba et ense corusco\n"
                       "conisa in plagam dextra sublimis ab aure\n"
                       "erigitur mediumque ferit librata cerebrum.\n"
                       "aerea sed cocto cassis formata metallo\n"
                       "tinnitum percussa refert aciemque retundit\n"
                       "dura resultantem, frangit quoque uena rebellis\n"
                       "inlisum chalybem, dum cedere nescia cassos\n"
                       "excipit adsultus ferienti et tuta resistit.\n"
                       "Ira, ubi truncati mucronis fragmina uidit\n"
                       "et procul in partes ensem crepuisse minutas,\n"
                       "iam capulum retinente manu sine pondere ferri,\n"
                       "mentis inops ebur infelix decorisque pudendi\n"
                       "perfida signa abicit monumentaque tristia longe\n"
                       "spernit, et ad proprium succenditur effera letum.\n"
                       "missile de multis, quae frustra sparserat, unum\n"
                       "puluere de campi peruersos sumit in usus:\n"
                       "rasile figit humi lignum ac se cuspide uersa\n"
                       "perfodit et calido pulmonem uulnere transit.\n"
                       "quam super adsistens Patientia \"uicimus,\" inquit,\n"
                       "\"exultans Vitium solita uirtute, sine ullo\n"
                       "sanguinis ac uitae discrimine; lex habet istud\n"
                       "nostra genus belli, furias omnemque malorum\n"
                       "militiam et rabidas tolerando extinguere uires.\n"
                       "ipsa sibi est hostis uesania seque furendo\n"
                       "interimit moriturque suis Ira ignea telis.\"\n"
                       "haec effata secat medias inpune cohortes\n"
                       "egregio comitata uiro; nam proximus Iob\n"
                       "haeserat inuictae dura inter bella magistrae,\n"
                       "fronte seuerus adhuc et multo funere anhelus,\n"
                       "sed iam clausa truci subridens ulcera uultu,\n"
                       "perque cicatricum numerum sudata recensens\n"
                       "millia pugnarum, sua praemia, dedecus hostis.\n"
                       "illum diua iubet tandem requiescere ab omni\n"
                       "armorum strepitu, captis et perdita quaeque\n"
                       "multiplicare opibus, nec iam peritura referre.\n"
                       "ipsa globos legionum et concurrentia rumpit\n"
                       "agmina, uulniferos gradiens intacta per imbres.\n"
                       "omnibus una comes uirtutibus adsociatur,\n"
                       "auxiliumque suum fortis Patientia miscet.\n"
                       "nulla anceps luctamen init uirtute sine ista\n"
                       "uirtus, nam uidua est quam non Patientia firmat.",
                       @"forte per effusas inflata Superbia turmas\n"
                       "effreni uolitabat equo, quem pelle leonis\n"
                       "texerat et ualidos uillis onerauerat armos,\n"
                       "quo se fulta iubis iactantius illa ferinis\n"
                       "inferret tumido despectans agmina fastu.\n"
                       "turritum tortis caput adcumularat in altum\n"
                       "crinibus, extructos augeret ut addita cirros\n"
                       "congeries celsumque apicem frons ardua ferret.\n"
                       "carbasea ex umeris summo collecta coibat\n"
                       "palla sinu teretem nectens a pectore nodum.\n"
                       "a ceruice fluens tenui uelamine limbus\n"
                       "concipit infestas textis turgentibus auras.\n"
                       "nec minus instabili sonipes feritate superbit,\n"
                       "inpatiens madidis frenarier ora lupatis.\n"
                       "huc illuc frendens obuertit terga, negata\n"
                       "libertate fugae, pressisque tumescit habenis.\n"
                       "hoc sese ostentans habitu uentosa uirago\n"
                       "inter utramque aciem supereminet et phaleratum\n"
                       "circumflectit equum, uultuque et uoce minatur\n"
                       "aduersum spectans cuneum, quem milite raro\n"
                       "et paupertinis ad bella coegerat armis\n"
                       "Mens Humilis, regina quidem, sed egens alieni\n"
                       "auxilii proprio nec sat confisa paratu.\n"
                       "Spem sibi collegam coniunxerat, edita cuius\n"
                       "et suspensa ab humo est opulentia diuite regno.\n"
                       "ergo Humilem postquam male sana Superbia Mentem\n"
                       "uilibus instructam nullo ostentamine telis\n"
                       "aspicit, in uocem dictis se effundit amaris:\n"
                       "\"non pudet, o miseri, plebeio milite claros\n"
                       "adtemptare duces ferroque lacessere gentem\n"
                       "insignem titulis, ueteres cui bellica uirtus\n"
                       "diuitias peperit, laetos et gramine colles\n"
                       "imperio calcare dedit? nunc aduena nudus\n"
                       "nititur antiquos, si fas est, pellere reges!\n"
                       "en qui nostra suis in praedam cedere dextris\n"
                       "sceptra uolunt! en qui nostras sulcare nouales\n"
                       "aruaque capta manu popularier hospite aratro\n"
                       "contendunt, duros et pellere Marte colonos!\n"
                       "nempe, o ridiculum uulgus, natalibus horis\n"
                       "totum hominem et calidos a matre amplectimur artus,\n"
                       "uimque potestatum per membra recentis alumni\n"
                       "spargimus, et rudibus dominamur in ossibus omnes.\n"
                       "quis locus in nostra tunc uobis sede dabatur,\n"
                       "congenitis cum regna simul dicionibus aequo\n"
                       "robore crescebant? nati iam luce sub una\n"
                       "et domus et domini paribus adoleuimus annis,\n"
                       "ex quo plasma nouum de consaepto paradisi\n"
                       "limite progrediens amplum transfugit in orbem,\n"
                       "pellitosque habitus sumpsit uenerabilis Adam,\n"
                       "nudus adhuc, ni nostra foret praecepta secutus.\n"
                       "quisnam iste ignotis hostis nunc surgit ab oris\n"
                       "inportunus, iners, infelix, degener, amens,\n"
                       "qui sibi tam serum ius uindicat, hactenus exul?\n"
                       "nimirum uacuae credentur friuola famae,\n"
                       "quae miseros optare iubet quandoque futuri\n"
                       "spem fortasse boni, lenta ut solacia mollem\n"
                       "desidiam pigro rerum meditamine palpent.\n"
                       "quidni illos spes palpet iners, quos puluere in isto\n"
                       "tirones Bellona truci non excitat aere,\n"
                       "inbellesque animos uirtus tepefacta resoluit?\n"
                       "anne Pudicitiae gelidum iecur utile bello est?\n"
                       "an tenerum Pietatis opus sudatur in armis?\n"
                       "quam pudet, o Mauors et uirtus conscia, talem\n"
                       "contra stare aciem ferroque lacessere nugas,\n"
                       "et cum uirgineis dextram conferre choreis,\n"
                       "Iustitia est ubi semper egens et pauper Honestas,\n"
                       "arida Sobrietas, albo Ieiunia uultu,\n"
                       "sanguine uix tenui Pudor interfusus, aperta\n"
                       "Simplicitas et ad omne patens sine tegmine uulnus,\n"
                       "et prostrata in humum nec libera iudice sese\n"
                       "Mens Humilis, quam degenerem trepidatio prodit!\n"
                       "faxo ego, sub pedibus stipularum more teratur\n"
                       "inualida ista manus; neque enim perfringere duris\n"
                       "dignamur gladiis, algenti et sanguine ferrum\n"
                       "inbuere fragilique uiros foedare triumpho.\"\n"
                       "talia uociferans rapidum calcaribus urget\n"
                       "cornipedem laxisque uolat temeraria frenis,\n"
                       "hostem humilem cupiens inpulsu umbonis equini\n"
                       "sternere deiectamque supercalcare ruinam.\n"
                       "sed cadit in foueam praeceps, quam callida forte\n"
                       "Fraus interciso subfoderat aequore furtim,\n"
                       "Fraus detestandis Vitiorum e pestibus una,\n"
                       "fallendi uersuta opifex, quae praescia belli\n"
                       "planitiem scrobibus uitiauerat insidiosis\n"
                       "hostili de parte latens, ut fossa ruentes\n"
                       "exciperet cuneos atque agmina mersa uoraret;\n"
                       "ac ne fallacem puteum deprendere posset\n"
                       "cauta acies, uirgis adopertas texerat oras,\n"
                       "et superinposito simularat caespite campum.\n"
                       "at regina humilis, quamuis ignara, manebat\n"
                       "ulteriore loco nec adhuc ad Fraudis opertum\n"
                       "uenerat aut foueae calcarat furta malignae.\n"
                       "hunc eques illa dolum, dum fertur praepete cursu,\n"
                       "incidit, et caecum subito patefecit hiatum.\n"
                       "prona ruentis equi ceruice inuoluitur, ac sub\n"
                       "pectoris inpressu fracta inter crura rotatur.\n"
                       "at Virtus placidi moderaminis, ut leuitatem\n"
                       "prospicit obtritam monstri sub morte iacentis,\n"
                       "intendit gressum mediocriter, os quoque parce\n"
                       "erigit et comi moderatur gaudia uultu.\n"
                       "cunctanti Spes fida comes succurrit et offert\n"
                       "ultorem gladium laudisque inspirat amorem.\n"
                       "illa cruentatam correptis crinibus hostem\n"
                       "protrahit et faciem laeua reuocante supinat,\n"
                       "tunc caput orantis flexa ceruice resectum\n"
                       "eripit ac madido suspendit colla capillo.\n"
                       "extinctum Vitium sancto Spes increpat ore:\n"
                       "\"desine grande loqui; frangit deus omne superbum,\n"
                       "magna cadunt, inflata crepant, tumefacta premuntur.\n"
                       "disce supercilium deponere, disce cauere\n"
                       "ante pedes foueam, quisquis sublime minaris.\n"
                       "peruulgata uiget nostri sententia Christi\n"
                       "scandere celsa humiles et ad ima redire feroces.\n"
                       "uidimus horrendum membris animisque Goliam\n"
                       "inualida cecidisse manu: puerilis in illum\n"
                       "dextera fundali torsit stridore lapillum\n"
                       "traiectamque cauo penetrauit uulnere frontem.\n"
                       "ille minax, rigidus, iactans, truculentus, amarus,\n"
                       "dum tumet indomitum, dum formidabile feruet,\n"
                       "dum sese ostentat, clipeo dum territat auras,\n"
                       "expertus pueri quid possint ludicra parui\n"
                       "subcubuit teneris bellator turbidus annis.\n"
                       "me tunc ille puer uirtutis pube secutus\n"
                       "florentes animos sursum in mea regna tetendit,\n"
                       "seruatur quia certa mihi domus omnipotentis\n"
                       "sub pedibus domini, meque ad sublime uocantem\n"
                       "uictores caesa culparum labe capessunt.\"\n"
                       "dixit, et auratis praestringens aëra pinnis\n"
                       "in caelum se uirgo rapit. mirantur euntem\n"
                       "Virtutes tolluntque animos in uota uolentes\n"
                       "ire simul, ni bella duces terrena retardent.\n"
                       "confligunt Vitiis seque ad sua praemia seruant.",
                       @"uenerat occiduis mundi de finibus hostis\n"
                       "Luxuria, extinctae iamdudum prodiga famae,\n"
                       "delibuta comas, oculis uaga, languida uoce,\n"
                       "perdita deliciis, uitae cui causa uoluptas,\n"
                       "elumbem mollire animum, petulanter amoenas\n"
                       "haurire inlecebras et fractos soluere sensus.\n"
                       "ac tunc peruigilem ructabat marcida cenam,\n"
                       "sub lucem quia forte iacens ad fercula raucos\n"
                       "audierat lituos, atque inde tepentia linquens\n"
                       "pocula lapsanti per uina et balsama gressu\n"
                       "ebria calcatis ad bellum floribus ibat.\n"
                       "non tamen illa pedes, sed curru inuecta uenusto\n"
                       "saucia mirantum capiebat corda uirorum.\n"
                       "o noua pugnandi species! non ales harundo\n"
                       "neruum pulsa fugit, nec stridula lancea torto\n"
                       "emicat amento, frameam nec dextra minatur;\n"
                       "sed uiolas lasciua iacit foliisque rosarum\n"
                       "dimicat et calathos inimica per agmina fundit.\n"
                       "inde eblanditis Virtutibus halitus inlex\n"
                       "inspirat tenerum labefacta per ossa uenenum,\n"
                       "et male dulcis odor domat ora et pectora et arma\n"
                       "ferratosque toros obliso robore mulcet.\n"
                       "deiciunt animos ceu uicti et spicula ponunt,\n"
                       "turpiter, heu, dextris languentibus obstupefacti\n"
                       "dum currum uaria gemmarum luce micantem\n"
                       "mirantur, dum bratteolis crepitantia lora\n"
                       "et solido ex auro pretiosi ponderis axem\n"
                       "defixis inhiant obtutibus et radiorum\n"
                       "argento albentem seriem, quam summa rotarum\n"
                       "flexura electri pallentis continet orbe.\n"
                       "et iam cuncta acies in deditionis amorem\n"
                       "sponte sua uersis transibat perfida signis\n"
                       "Luxuriae seruire uolens dominaeque fluentis\n"
                       "iura pati et laxa ganearum lege teneri.\n"
                       "ingemuit tam triste nefas fortissima Virtus\n"
                       "Sobrietas, dextro socios decedere cornu\n"
                       "inuictamque manum quondam sine caede perire.\n"
                       "uexillum sublime crucis, quod in agmine primo\n"
                       "dux bona praetulerat, defixa cuspide sistit,\n"
                       "instauratque leuem dictis mordacibus alam\n"
                       "exstimulans animos nunc probris, nunc prece mixta:\n"
                       "\"quis furor insanas agitat caligine mentes?\n"
                       "quo ruitis? cui colla datis? quae uincula tandem,\n"
                       "pro pudor, armigeris amor est perferre lacertis,\n"
                       "lilia luteolis interlucentia sertis\n"
                       "et ferrugineo uernantes flore coronas?\n"
                       "his placet adsuetas bello iam tradere palmas\n"
                       "nexibus, his rigidas nodis innectier ulnas,\n"
                       "ut mitra caesariem cohibens aurata uirilem\n"
                       "conbibat infusum croceo religamine nardum,\n"
                       "post inscripta oleo frontis signacula, per quae\n"
                       "unguentum regale datum est et chrisma perenne,\n"
                       "ut tener incessus uestigia syrmate uerrat\n"
                       "sericaque infractis fluitent ut pallia membris,\n"
                       "post inmortalem tunicam quam pollice docto\n"
                       "texuit alma Fides, dans inpenetrabile tegmen\n"
                       "pectoribus lotis, dederat quibus ipsa renasci,\n"
                       "inde ad nocturnas epulas, ubi cantharus ingens\n"
                       "despuit effusi spumantia damna Falerni\n"
                       "in mensam cyathis stillantibus, uda ubi multo\n"
                       "fulcra mero ueterique toreumata rore rigantur?\n"
                       "excidit ergo animis eremi sitis, excidit ille\n"
                       "fons patribus de rupe datus, quem mystica uirga\n"
                       "elicuit scissi salientem uertice saxi?\n"
                       "angelicusne cibus prima in tentoria uestris\n"
                       "fluxit auis, quem nunc sero felicior aeuo\n"
                       "uespertinus edit populus de corpore Christi?\n"
                       "his uos inbutos dapibus iam crapula turpis\n"
                       "Luxuriae ad madidum rapit inportuna lupanar,\n"
                       "quosque uiros non Ira fremens, non idola bello\n"
                       "cedere conpulerant, saltatrix ebria flexit!\n"
                       "state, precor, uestri memores, memores quoque Christi\n"
                       "quae sit uestra tribus, quae gloria, quis deus et rex,\n"
                       "quis dominus meminisse decet. uos nobile Iudae\n"
                       "germen ad usque dei genetricem, qua deus ipse\n"
                       "esset homo, procerum uenistis sanguine longo.\n"
                       "excitet egregias mentes celeberrima Dauid\n"
                       "gloria continuis bellorum exercita curis,\n"
                       "excitet et Samuel, spolium qui diuite ab hoste\n"
                       "adtrectare uetat nec uictum uiuere regem\n"
                       "incircumcisum patitur, ne praeda superstes\n"
                       "uictorem placidum recidiua in proelia poscat.\n"
                       "parcere iam capto crimen putat ille tyranno,\n"
                       "at uobis contra uinci et subcumbere uotum est.\n"
                       "paeniteat, per si qua mouet reuerentia summi\n"
                       "numinis, hoc tam dulce malum uoluisse nefanda\n"
                       "proditione sequi; si paenitet, haud nocet error.\n"
                       "paenituit Ionatham ieiunia sobria dulci\n"
                       "conuiolasse fauo sceptri mellisque sapore\n"
                       "heu male gustato, regni dum blanda uoluptas\n"
                       "oblectat iuuenem iurataque sacra resoluit.\n"
                       "sed quis paenituit, nec sors lacrimabilis illa est,\n"
                       "nec tinguit patrias sententia saeua secures.\n"
                       "en ego Sobrietas, si conspirare paratis,\n"
                       "pando uiam cunctis Virtutibus, ut malesuada\n"
                       "Luxuries, multo stipata satellite, poenas\n"
                       "cum legione sua Christo sub iudice pendat.\"\n"
                       "sic effata crucem domini feruentibus offert\n"
                       "obuia quadriiugis, lignum uenerabile in ipsos\n"
                       "intentans frenos. quod ut expauere feroces\n"
                       "cornibus obpansis et summa fronte coruscum,\n"
                       "uertunt praecipitem caeca formidine fusi\n"
                       "per praerupta fugam. fertur resupina reductis\n"
                       "nequiquam loris auriga comamque madentem\n"
                       "puluere foedatur. tunc et uertigo rotarum\n"
                       "inplicat excussam dominam; nam prona sub axem\n"
                       "labitur et lacero tardat sufflamine currum.\n"
                       "addit Sobrietas uulnus letale iacenti,\n"
                       "coniciens silicem rupis de parte molarem.\n"
                       "hunc uexilliferae quoniam fors obtulit ictum\n"
                       "spicula nulla manu sed belli insigne gerenti,\n"
                       "casus agit saxum, medii spiramen ut oris\n"
                       "frangeret, et recauo misceret labra palato.\n"
                       "dentibus introrsum resolutis lingua resectam\n"
                       "dilaniata gulam frustis cum sanguinis inplet.\n"
                       "insolitis dapibus crudescit guttur, et ossa\n"
                       "conliquefacta uorans reuomit quas hauserat offas.\n"
                       "\"ebibe iam proprium post pocula multa cruorem,\"\n"
                       "uirgo ait increpitans, \"sint haec tibi fercula tandem\n"
                       "tristia praeteriti nimiis pro dulcibus aeui.\n"
                       "lasciuas uitae inlecebras gustatus amarae\n"
                       "mortis et horrifico sapor ultimus asperat haustu.\"\n"
                       "caede ducis dispersa fugit trepidante pauore\n"
                       "nugatrix acies. Iocus et Petulantia primi\n"
                       "cymbala proiciunt; bellum nam talibus armis\n"
                       "ludebant resono meditantes uulnera sistro.\n"
                       "dat tergum fugitiuus Amor, lita tela ueneno\n"
                       "et lapsum ex umeris arcum pharetramque cadentem\n"
                       "pallidus ipse metu sua post uestigia linquit.\n"
                       "Pompa, ostentatrix uani splendoris, inani\n"
                       "exuitur nudata peplo; discissa trahuntur\n"
                       "serta Venustatis collique ac uerticis aurum\n"
                       "soluitur, et gemmas Discordia dissona turbat.\n"
                       "non piget adtritis pedibus per acuta frutecta\n"
                       "ire Voluptatem, quoniam uis maior acerbam\n"
                       "conpellit tolerare fugam; formido pericli\n"
                       "praedurat teneras iter ad cruciabile plantas.\n"
                       "qua se cumque fugax trepidis fert cursibus agmen,\n"
                       "damna iacent, crinalis acus, redimicula, uittae,\n"
                       "fibula, flammeolum, strophium, diadema, monile.\n"
                       "his se Sobrietas et totus Sobrietatis\n"
                       "abstinet exuuiis miles damnataque castis\n"
                       "scandala proculcat pedibus, nec fronte seueros\n"
                       "coniuente oculos praedarum ad gaudia flectit.\n"
                       "fertur Auaritia gremio praecincta capaci,\n"
                       "quidquid Luxus edax pretiosum liquerat, unca\n"
                       "corripuisse manu, pulchra in ludibria uasto\n"
                       "ore inhians aurique legens fragmenta caduci\n"
                       "inter harenarum cumulos. nec sufficit amplos\n"
                       "inpleuisse sinus; iuuat infercire cruminis\n"
                       "turpe lucrum et grauidos furtis distendere fiscos,\n"
                       "quos laeua celante tegit laterisque sinistri\n"
                       "uelat opermento; uelox nam dextra rapinas\n"
                       "abradit spoliisque ungues exercet aënos.\n"
                       "Cura, Famis, Metus, Anxietas, Periuria, Pallor,\n"
                       "Corruptela, Dolus, Commenta, Insomnia, Sordes,\n"
                       "Eumenides uariae monstri comitatus aguntur.\n"
                       "nec minus interea rabidorum more luporum\n"
                       "Crimina persultant toto grassantia campo,\n"
                       "matris Auaritiae nigro de lacte creata.\n"
                       "si fratris galeam fuluis radiare ceraunis\n"
                       "germanus uidit conmilito, non timet ensem\n"
                       "exerere atque caput socio mucrone ferire,\n"
                       "de consanguineo rapturus uertice gemmas.\n"
                       "filius extinctum belli sub sorte cadauer\n"
                       "aspexit si forte patris, fulgentia bullis\n"
                       "cingula et exuuias gaudet rapuisse cruentas:\n"
                       "cognatam Ciuilis agit Discordia praedam,\n"
                       "nec parcit propriis Amor insatiatus Habendi\n"
                       "pigneribus spoliatque suos Famis inpia natos.\n"
                       "talia per populos edebat funera uictrix\n"
                       "orbis Auaritia, sternens centena uirorum\n"
                       "millia uulneribus uariis: hunc lumine adempto\n"
                       "effossisque oculis uelut in caligine noctis\n"
                       "caecum errare sinit perque offensacula multa\n"
                       "ire, nec oppositum baculo temptare periclum.\n"
                       "porro alium capit intuitu fallitque uidentem,\n"
                       "insigne ostentans aliquid, quod dum petit ille,\n"
                       "excipitur telo incautus cordisque sub ipso\n"
                       "saucius occulto ferrum suspirat adactum.\n"
                       "multos praecipitans in aperta incendia cogit\n"
                       "nec patitur uitare focos, quibus aestuat aurum,\n"
                       "quod petit arsurus pariter speculator auarus.\n"
                       "omne hominum rapit illa genus, mortalia cuncta\n"
                       "occupat interitu, neque est uiolentius ullum\n"
                       "terrarum Vitium, quod tantis cladibus aeuum\n"
                       "mundani inuoluat populi damnetque gehennae.\n"
                       "quin ipsos temptare manu, si credere dignum est,\n"
                       "ausa sacerdotes domini, qui proelia forte\n"
                       "ductores primam ante aciem pro laude gerebant\n"
                       "uirtutum, magnoque inplebant classica flatu.\n"
                       "et fors innocuo tinxisset sanguine ferrum,\n"
                       "ni Ratio armipotens, gentis Leuitidis una\n"
                       "semper fida comes, clipeum obiectasset et atrae\n"
                       "hostis ab incursu claros texisset alumnos.\n"
                       "stant tuti Rationis ope, stant turbine ab omni\n"
                       "inmunes fortesque animi; uix in cute summa\n"
                       "praestringens paucos tenui de uulnere laedit\n"
                       "cuspis Auaritiae. stupuit Luis inproba castis\n"
                       "heroum iugulis longe sua tela repelli;\n"
                       "ingemit et dictis ardens furialibus infit:\n"
                       "\"uincimur, heu, segnes nec nostra potentia perfert\n"
                       "uim solitam, languet uiolentia saeua nocendi,\n"
                       "sueuerat inuictis quae uiribus omnia ubique\n"
                       "rumpere corda hominum; nec enim tam ferrea quemquam\n"
                       "durauit natura uirum, cuius rigor aera\n"
                       "sperneret aut nostro foret inpenetrabilis auro.\n"
                       "ingenium omne neci dedimus; tenera, aspera, dura,\n"
                       "docta, indocta simul, bruta et sapientia, nec non\n"
                       "casta, incesta meae patuerunt pectora dextrae.\n"
                       "sola igitur rapui quidquid Styx abdit auaris\n"
                       "gurgitibus. nobis ditissima Tartara debent\n"
                       "quos retinent populos. quod uoluunt saecula nostrum est,\n"
                       "quod miscet mundus, uesana negotia, nostrum.\n"
                       "qui fit praeualidas quod pollens gloria uires\n"
                       "deserit et cassos ludit fortuna lacertos?\n"
                       "sordet Christicolis rutilantis fulua monetae\n"
                       "effigies, sordent argenti emblemata, et omnis\n"
                       "thensaurus nigrante oculis uilescit honore.\n"
                       "quid sibi docta uolunt fastidia? nonne triumphum\n"
                       "egimus e Scarioth, magnus qui discipulorum\n"
                       "et conuiua dei, dum fallit foedere mensae\n"
                       "haudquaquam ignarum dextramque parabside iungit,\n"
                       "incidit in nostrum flammante cupidine telum,\n"
                       "infamem mercatus agrum de sanguine amici\n"
                       "numinis, obliso luiturus iugera collo?\n"
                       "uiderat et Iericho propria inter funera quantum\n"
                       "posset nostra manus, cum uictor concidit Achar.\n"
                       "caedibus insignis murali et strage superbus\n"
                       "subcubuit capto uictis ex hostibus auro,\n"
                       "dum uetitis insigne legens anathema fauillis\n"
                       "maesta ruinarum spolia insatiabilis haurit.\n"
                       "non illum generosa tribus, non plebis auitae\n"
                       "iuuit Iuda parens, Christo quandoque propinquo\n"
                       "nobilis et tali felix patriarcha nepote.\n"
                       "quis placet exemplum generis, placeat quoque forma\n"
                       "exitii: sit poena eadem, quibus et genus unum est.\n"
                       "quid moror aut Iudae populares aut populares\n"
                       "sacricolae summi (summus nam fertur Aaron)\n"
                       "fallere fraude aliqua Martis congressibus inpar?\n"
                       "nil refert armis contingat palma dolisue.\"\n"
                       "dixerat et toruam faciem furialiaque arma\n"
                       "exuit inque habitum sese transformat honestum;\n"
                       "fit Virtus specie uultuque et ueste seuera\n"
                       "quam memorant Frugi, parce cui uiuere cordi est\n"
                       "et seruare suum; tamquam nil raptet auare,\n"
                       "artis adumbratae meruit ceu sedula laudem.\n"
                       "huius se specie mendax Bellona coaptat,\n"
                       "non ut auara lues, sed Virtus parca putetur;\n"
                       "nec non et tenero pietatis tegmine crines\n"
                       "obtegit anguinos, ut candida palla latentem\n"
                       "dissimulet rabiem diroque obtenta furori,\n"
                       "quod rapere et clepere est auideque abscondere parta,\n"
                       "natorum curam dulci sub nomine iactet.\n"
                       "talibus inludens male credula corda uirorum\n"
                       "fallit imaginibus, monstrumque ferale sequuntur\n"
                       "dum credunt Virtutis opus; capit inpia Erinys\n"
                       "consensu faciles manicisque tenacibus artat.\n"
                       "attonitis ducibus perturbatisque maniplis\n"
                       "nutabat Virtutum acies errore biformis\n"
                       "portenti, ignorans quid amicum credat in illo\n"
                       "quidue hostile notet: letum uersatile et anceps\n"
                       "lubricat incertos dubia sub imagine uisus,\n"
                       "cum subito in medium frendens Operatio campum\n"
                       "prosilit auxilio sociis, pugnamque capessit\n"
                       "militiae postrema gradu, sed sola duello\n"
                       "inpositura manum, ne quid iam triste supersit.\n"
                       "omne onus ex umeris reiecerat, omnibus ibat\n"
                       "nudata induuiis multo et se fasce leuarat,\n"
                       "olim diuitiis grauibusque oppressa talentis,\n"
                       "libera nunc miserando inopum, quos larga benigne\n"
                       "fouerat effundens patrium bene prodiga censum.\n"
                       "iam loculos ditata fidem spectabat inanes,\n"
                       "aeternam numerans redituro faenore summam.\n"
                       "horruit inuictae Virtutis fulmen et inpos\n"
                       "mentis Auaritia stupefactis sensibus haesit\n"
                       "certa mori: nam quae fraudis uia restet, ut ipsa\n"
                       "calcatrix mundi mundanis uicta fatiscat\n"
                       "inlecebris spretoque iterum sese inplicet auro?\n"
                       "inuadit trepidam Virtus fortissima duris\n"
                       "ulnarum nodis, obliso et gutture frangit\n"
                       "exsanguem siccamque gulam; conpressa ligantur\n"
                       "uincla lacertorum sub mentum et faucibus artis\n"
                       "extorquent animam, nullo quae uulnere rapta\n"
                       "palpitat atque aditu spiraminis intercepto\n"
                       "inclusam patitur uenarum carcere mortem.\n"
                       "illa reluctanti genibusque et calcibus instans\n"
                       "perfodit et costas atque ilia rumpit anhela,\n"
                       "mox spolia exstincto de corpore diripit, auri\n"
                       "sordida frusta rudis nec adhuc fornace recoctam\n"
                       "materiam, tineis etiam marsuppia crebris\n"
                       "exesa et uirides obducta aerugine nummos\n"
                       "dispergit seruata diu uictrix et egenis\n"
                       "dissipat ac tenues captiuo munere donat.\n"
                       "tunc circumfusam uultu exultante coronam\n"
                       "respiciens alacris media inter milia clamat:\n"
                       "\"soluite procinctum, iusti, et discedite ab armis!\n"
                       "causa mali tanti iacet interfecta; lucrandi\n"
                       "ingluuie pereunte licet requiescere sanctis.\n"
                       "summa quies nil uelle super quam postulet usus\n"
                       "debitus, ut simplex alimonia uestis et una\n"
                       "infirmos tegat ac recreet mediocriter artus\n"
                       "expletumque modum naturae non trahat extra.\n"
                       "intressurus iter peram ne tollito, neue\n"
                       "de tunicae alterius gestamine prouidus ito,\n"
                       "nec te sollicitet res crastina, ne cibus aluo\n"
                       "defuerit: redeunt escae cum sole diurnae.\n"
                       "nonne uides ut nulla auium cras cogitet ac se\n"
                       "pascendam, praestante deo, non anxia credat?\n"
                       "confidunt uolucres uictum non defore uiles,\n"
                       "passeribusque subest modico uenalibus asse\n"
                       "indubitata fides dominum curare potentem\n"
                       "ne pereant. tu, cura dei, facies quoque Christi,\n"
                       "addubitas ne te tuus umquam deserat auctor?\n"
                       "ne trepidate, homines; uitae dator et dator escae est.\n"
                       "quaerite luciferum caelesti dogmate pastum,\n"
                       "qui spem multiplicans alat inuitiabilis aeui,\n"
                       "corporis inmemores: memor est qui condidit illud\n"
                       "subpeditare cibos atque indiga membra fouere.\"",
                       @"his dictis curae emotae, Metus et Labor et Vis\n"
                       "et Scelus et placitae fidei Fraus infitiatrix\n"
                       "depulsae uertere solum. Pax inde fugatis\n"
                       "hostibus alma abigit bellum, discingitur omnis\n"
                       "terror et auulsis exfibulat ilia zonis.\n"
                       "uestis ad usque pedes descendens defluit imos,\n"
                       "temperat et rapidum priuata modestia gressum.\n"
                       "cornicinum curua aera silent, placabilis inplet\n"
                       "uaginam gladius, sedato et puluere campi\n"
                       "suda redit facies liquidae sine nube diei,\n"
                       "purpuream uideas caeli clarescere lucem.\n"
                       "agmina casta super uultum sensere Tonantis\n"
                       "adridere hilares pulso certamine turmae,\n"
                       "et Christum gaudere suis uictoribus arce\n"
                       "aetheris ac patrium famulis aperire profundum.\n"
                       "dat signum felix Concordia reddere castris\n"
                       "uictrices aquilas atque in tentoria cogi.\n"
                       "numquam tanta fuit species nec par decus ulli\n"
                       "militiae, cum dispositis bifida agmina longe\n"
                       "duceret ordinibus peditum psallente caterua,\n"
                       "ast alia de parte equitum resonantibus hymnis.\n"
                       "non aliter cecinit respectans uictor hiantem\n"
                       "Istrahel rabiem ponti post terga minacis,\n"
                       "cum iam progrediens calcaret litora sicco\n"
                       "ulteriora pede, stridensque per extima calcis\n"
                       "mons rueret pendentis aquae nigrosque relapso\n"
                       "gurgite Nilicolas fundo deprenderet imo,\n"
                       "ac refluente sinu iam redderet unda natatum\n"
                       "piscibus et nudas praeceps operiret harenas.\n"
                       "pulsauit resono modulantia tympana plectro\n"
                       "turba dei celebrans mirum ac memorabile saeclis\n"
                       "omnipotentis opus, liquidas inter freta ripas\n"
                       "fluctibus incisis et subsistente procella\n"
                       "crescere suspensosque globos potuisse teneri.\n"
                       "sic expugnata Vitiorum gente resultant\n"
                       "mystica dulcimodis Virtutum carmina psalmis.\n"
                       "uentum erat ad fauces portae castrensis, ubi artum\n"
                       "liminis introitum bifori dant cardine claustra.\n"
                       "nascitur hic inopina mali lacrimabilis astu\n"
                       "tempestas, placidae turbatrix inuida pacis,\n"
                       "quae tantum subita uexaret clade triumphum.\n"
                       "inter confertos cuneos Concordia forte\n"
                       "dum stipata pedem iam tutis moenibus infert,\n"
                       "excipit occultum Vitii latitantis ab ictu\n"
                       "mucronem laeuo in latere, squalentia quamuis\n"
                       "texta catenato ferri subtegmine corpus\n"
                       "ambirent sutis et acumen uulneris hamis\n"
                       "respuerent, rigidis nec fila tenacia nodis\n"
                       "inpactum sinerent penetrare in uiscera telum.\n"
                       "rara tamen chalybem tenui transmittere puncto\n"
                       "commissura dedit, qua sese extrema politae\n"
                       "squama ligat tunicae sinus et sibi conserit oras.\n"
                       "intulit hoc uulnus pugnatrix subdola uictae\n"
                       "partis et incautis uictoribus insidiata est.\n"
                       "nam pulsa culparum acie Discordia nostros\n"
                       "intrarat cuneos sociam mentita figuram.\n"
                       "scissa procul palla structum et serpente flagellum\n"
                       "multiplici media camporum in strage iacebant.\n"
                       "ipsa redimitos olea frondente capillos\n"
                       "ostentans festis respondet laeta choreis.\n"
                       "sed sicam sub ueste tegit, te, maxima Virtus,\n"
                       "te solam tanto e numero, Concordia, tristi\n"
                       "fraude petens. sed non uitalia rumpere sacri\n"
                       "corporis est licitum, summo tenus extima tactu\n"
                       "laesa cutis tenuem signauit sanguine riuum.\n"
                       "exclamat Virtus subito turbata: \"quid hoc est?\n"
                       "quae manus hic inimica latet, quae prospera nostra\n"
                       "uulnerat et ferrum tanta inter gaudia uibrat?\n"
                       "quid iuuat indomitos bello sedasse Furores\n"
                       "et sanctum Vitiis pereuntibus omne receptum,\n"
                       "si Virtus sub pace cadit?\" trepida agmina maestos\n"
                       "conuertere oculos: stillabat uulneris index\n"
                       "ferrata de ueste cruor, mox et pauor hostem\n"
                       "comminus adstantem prodit; nam pallor in ore\n"
                       "conscius audacis facti dat signa reatus\n"
                       "et deprensa tremunt languens manus et color albens.\n"
                       "circumstat propere strictis mucronibus omnis\n"
                       "Virtutum legio exquirens feruente tumultu\n"
                       "et genus et nomen, patriam sectamque, deumque\n"
                       "quem colat et missu cuiatis uenerit. illa\n"
                       "exsanguis turbante metu: \"Discordia dicor,\n"
                       "cognomento Heresis; deus est mihi discolor,\" inquit,\n"
                       "\"nunc minor, aut maior, modo duplex et modo simplex,\n"
                       "cum placet, aërius et de phantasmate uisus,\n"
                       "aut innata anima est quoties uolo ludere numen;\n"
                       "praeceptor Belia mihi, domus et plaga mundus.\"\n"
                       "non tulit ulterius capti blasphemia monstri\n"
                       "Virtutum regina Fides, sed uerba loquentis\n"
                       "inpedit et uocis claudit spiramina pilo,\n"
                       "pollutam rigida transfigens cuspide linguam.\n"
                       "carpitur innumeris feralis bestia dextris;\n"
                       "frustatim sibi quisque rapit quod spargat in auras\n"
                       "quod canibus donet, coruis quod edacibus ultro\n"
                       "offerat, inmundis caeno exhalante cloacis\n"
                       "quod trudat, monstris quod mandet habere marinis.\n"
                       "discissum foedis animalibus omne cadauer\n"
                       "diuiditur, ruptis Heresis perit horrida membris.",
                       @"conpositis igitur rerum morumque secundis\n"
                       "in commune bonis, tranquillae plebis ad unum\n"
                       "sensibus in tuta valli statione locatis\n"
                       "struitur media castrorum sede tribunal\n"
                       "editiore loco, tumulus quem uerti\n"
                       "exstruitur media castrorum sede tribunal\n"
                       "editiore loco, tumulus quem uertice acuto\n"
                       "excitat in speculam, subiecta unde omnia late\n"
                       "liber inoffenso circum inspicit aëre uisus.\n"
                       "hunc sincera Fides simul et Concordia, sacro\n"
                       "foedere iuratae Christi sub amore sorores,\n"
                       "conscendunt apicem; mox et sublime tribunal\n"
                       "par sanctum carumque sibi supereminet aequo\n"
                       "iure potestatis, consistunt aggere summo\n"
                       "conspicuae populosque iubent adstare frequentes.\n"
                       "concurrunt alacres castris ex omnibus omnes,\n"
                       "nulla latet pars Mentis iners, quae corporis ullo\n"
                       "intercepta sinu per conceptacula sese\n"
                       "degeneri languore tegat, tentoria apertis\n"
                       "cuncta patent uelis, reserantur carbasa, ne quis\n"
                       "marceat obscuro stertens habitator operto.\n"
                       "auribus intentis expectant contio, quidnam\n"
                       "uictores post bella uocet Concordia princeps,\n"
                       "quam uelit atque Fides Virtutibus addere legem.\n"
                       "erumpit prima in uocem Concordia tali\n"
                       "adloquio: \"cumulata quidem iam gloria uobis,\n"
                       "o patris, o domini fidissima pignera Christi,\n"
                       "contigit: extincta est multo certamine saeua\n"
                       "barbaries, sanctae quae circumsaepserat urbis\n"
                       "indigenas, ferroque uiros flammaque premebat.\n"
                       "publica sed requies priuatis rure foroque\n"
                       "constat amicitiis: scissura domestica turbat\n"
                       "rem populi, titubatque foris quod dissidet intus.\n"
                       "ergo cauete, uiri, ne sit sententia discors\n"
                       "Sensibus in nostris, ne secta exotica tectis\n"
                       "nascatur conflata odiis, quia fissa uoluntas\n"
                       "confundit uariis arcana biformia fibris.\n"
                       "quod sapimus coniungat amor; quod uiuimus uno\n"
                       "conspiret studio: nil dissociabile firmum est.\n"
                       "utque homini atque deo medius interuenit Iesus,\n"
                       "qui sociat mortale patri, ne carnea distent\n"
                       "Spiritui aeterno sitque ut deus unus utrumque,\n"
                       "sic, quidquid gerimus mentisque et corporis actu,\n"
                       "spiritus unimodis texat conpagibus unus.\n"
                       "pax plenum Virtutis opus, pax summa laborum,\n"
                       "pax belli exacti pretium est pretiumque pericli.\n"
                       "sidera pace uigent, consistunt terrea pace.\n"
                       "nil placitum sine pace deo: non munus ad aram\n"
                       "cum cupias offerre probat, si turbida fratrem\n"
                       "mens inpacati sub pectoris oderit antro,\n"
                       "nec, si flammicomis Christi pro nomine martyr\n"
                       "ignibus insilias seruans inamabile uotum\n"
                       "bile sub obliqua, pretiosam proderit Iesu\n"
                       "inpendisse animam, meriti quia clausula pax est.\n"
                       "non inflata tumet, non inuidet aemula fratri,\n"
                       "omnia perpetitur patiens atque omnia credit,\n"
                       "nunquam laesa dolet, cuncta offensacula donat,\n"
                       "occasum lucis uenia praecurrere gestit,\n"
                       "anxia ne stabilem linquat sol conscius iram.\n"
                       "quisque litare deo mactatis uult holocaustis,\n"
                       "offerat in primis pacem: nulla hostia Christo\n"
                       "dulcior: hoc solo sancta ad donaria uultum\n"
                       "munere conuertens liquido oblectatur odore.\n"
                       "sed tamen et niueis tradit deus ipse columbis\n"
                       "pinnatum tenera plumarum ueste colubrum\n"
                       "rimante ingenio docte internoscere mixtum\n"
                       "innocuis auibus; latet et lupus ore cruento\n"
                       "lacteolam mentitus ouem sub uellere molli,\n"
                       "cruda per agninos exercens funera rictus.\n"
                       "hac sese occultat Photinus et Arrius arte,\n"
                       "inmanes feritate lupi. discrimina produnt\n"
                       "nostra recensque cruor, quamuis de corpore summo,\n"
                       "quid possit furtiua manus.\" gemitum dedit omnis\n"
                       "Virtutum populus casu concussus acerbo.\n"
                       "tum generosa Fides haec subdidit: \"immo secundis\n"
                       "in rebus cesset gemitus. Concordia laesa est,\n"
                       "sed defensa Fides: quin et Concordia sospes,\n"
                       "germanam comitata Fidem, sua uulnera ridet.\n"
                       "haec mea sola salus, nihil hac mihi triste recepta.\n"
                       "unum opus egregio restat post bella labori,\n"
                       "o proceres, regni quod tandem pacifer heres\n"
                       "belligeri, armatae successor inermus et aulae,\n"
                       "instituit Solomon, quoniam genitoris anheli\n"
                       "fumarat calido regum de sanguine dextra.\n"
                       "sanguine nam terso templum fundatur et ara\n"
                       "ponitur auratis Christi domus ardua tectis.\n"
                       "tunc Hierusalem templo inlustrata quietum\n"
                       "suscepit iam diua deum, circumuaga postquam\n"
                       "sedit marmoreis fundata altaribus arca.\n"
                       "surgat et in nostris templum uenerabile castris,\n"
                       "omnipotens cuius sanctorum sancta reuisat.\n"
                       "nam quid terrigenas ferro pepulisse phalangas\n"
                       "Culparum prodest, hominis si Filius arce\n"
                       "aetheris inlapsus purgati corporis urbem\n"
                       "intret inornatam templi splendentis egenus?\n"
                       "hactenus alternis sudatum est comminus armis:\n"
                       "munia nunc agitet tacitae toga candida pacis,\n"
                       "atque sacris sedem properet discincta iuuentus.\"\n"
                       "haec ubi dicta dedit, gradibus regina superbis\n"
                       "desiluit tantique operis Concordia consors\n"
                       "metatura nouum iacto fundamine templum.\n"
                       "aurea planitiem spatiis percurrit harundo\n"
                       "dimensis, quadrent ut quattuor undique frontes,\n"
                       "ne commissuris distantibus angulus inpar\n"
                       "argutam mutilet per dissona semetra normam.\n"
                       "Aurorae de parte tribus plaga lucida portis\n"
                       "inlustrata patet, triplex aperitur ad austrum\n"
                       "portarum numerus, tris occidualibus offert\n"
                       "ianua trina fores, totiens aquilonis ad axem\n"
                       "panditur alta domus. nullum illic structile saxum,\n"
                       "sed caua per solidum multoque forata dolatu\n"
                       "gemma relucenti limen conplectitur arcu,\n"
                       "uestibulumque lapis penetrabile concipit unus.\n"
                       "portarum summis inscripta in postibus auro\n"
                       "nomina apostolici fulgent bis sena senatus.\n"
                       "Spiritus his titulis arcana recondita mentis\n"
                       "ambit et electos uocat in praecordia sensus;\n"
                       "quaque hominis natura uiget, quam corpore toto\n"
                       "quadrua uis animat, trinis ingressibus aram\n"
                       "cordis adit castisque colit sacraria uotis;\n"
                       "seu pueros sol primus agat, seu feruor ephebos\n"
                       "incendat nimius, seu consummabilis aeui\n"
                       "perficiat lux plena uiros, siue algida borrae\n"
                       "aetas decrepitam uocet ad pia sacra senectam,\n"
                       "occurrit trinum quadrina ad compita nomen,\n"
                       "quod bene discipulis disponit rex duodenis.\n"
                       "quin etiam totidem gemmarum insignia textis\n"
                       "parietibus distincta micant, animasque colorum\n"
                       "uiuentes liquido lux euomit alta profundo.\n"
                       "ingens chrysolitus, natiuo interlitus auro,\n"
                       "hinc sibi sapphirum sociauerat, inde beryllum,\n"
                       "distantesque nitor medius uariabat honores.\n"
                       "hic chalcedon hebes perfunditur ex hyacinthi\n"
                       "lumine uicino; nam forte cyanea propter\n"
                       "stagna lapis cohibens ostro fulgebat aquoso.\n"
                       "sardonicem pingunt amethystina, pingit iaspis\n"
                       "sardium iuxta adpositum pulcherque topazon.\n"
                       "has inter species smaragdina gramine uerno\n"
                       "prata uirent uoluitque uagos lux herbida fluctus.\n"
                       "te quoque conspicuum structura interserit, ardens\n"
                       "chrysoprase, et sidus saxis stellantibus addit.\n"
                       "stridebat grauidis funalis machina uinclis\n"
                       "inmensas rapiens alta ad fastigia gemmas.\n"
                       "at domus interior septem subnixa columnis\n"
                       "crystalli algentis uitrea de rupe recisis\n"
                       "construitur, quarum tegit edita calculus albens\n"
                       "in conum caesus capita et sinuamine subter\n"
                       "subductus conchae in speciem, quod mille talentis\n"
                       "margaritum ingens, opibusque et censibus hastae\n"
                       "addictis, animosa Fides mercata pararat.\n"
                       "hoc residet solio pollens Sapientia et omne\n"
                       "consilium regni celsa disponit ab aula,\n"
                       "tutandique hominis leges sub corde retractat.\n"
                       "in manibus dominae sceptrum non arte politum\n"
                       "sed ligno uiuum uiridi est, quod stirpe reciso,\n"
                       "quamuis nullus alat terreni caespitis umor,\n"
                       "fronde tamen uiret incolumi, tum sanguine tinctis\n"
                       "intertexta rosis candentia lilia miscet\n"
                       "nescia marcenti florem submittere collo.\n"
                       "huius forma fuit sceptri gestamen Aaron\n"
                       "floriferum, sicco quod germina cortice trudens\n"
                       "explicuit tenerum spe pubescente decorem\n"
                       "inque nouos subito tumuit uirga arida fetus.",
                       @"reddimus aeternas, indulgentissime doctor,\n"
                       "grates, Christe, tibi, meritosque sacramus honores\n"
                       "ore pio; nam cor uitiorum stercore sordet.\n"
                       "tu nos corporei latebrosa pericula operti\n"
                       "luctantisque animae uoluisti agnoscere casus.\n"
                       "nouimus ancipites nebuloso in pectore sensus\n"
                       "sudare alternis conflictibus, et uariato\n"
                       "pugnarum euentu nunc indole crescere dextra,\n"
                       "nunc inclinatis uirtutibus ad iuga uitae\n"
                       "deteriora trahi seseque addicere noxis\n"
                       "turpibus et propriae iacturam ferre salutis.\n"
                       "o quotiens animam, uitiorum peste repulsa,\n"
                       "sensimus incaluisse deo! quotiens tepefactum\n"
                       "caeleste ingenium post gaudia candida taetro\n"
                       "cessisse stomacho! feruent bella horrida, feruent\n"
                       "ossibus inclusa, fremit et discordibus armis\n"
                       "non simplex natura hominis; nam uiscera limo\n"
                       "effigiata premunt animam, contra ille sereno\n"
                       "editus adflatu nigrantis carcere cordis\n"
                       "aestuat, et sordes arta inter uincla recusat.\n"
                       "spiritibus pugnant uariis lux atque tenebrae,\n"
                       "distantesque animat duplex substantia uires,\n"
                       "donec praesidio Christus deus adsit et omnes\n"
                       "uirtutum gemmas conponat sede piata,\n"
                       "atque, ubi peccatum regnauerat, aurea templi\n"
                       "atria constituens texat spectamine morum\n"
                       "ornamenta animae, quibus oblectata decoro\n"
                       "aeternum solio diues Sapientia regnet."
                   ]]
              ]]
         ]],
        [[Source alloc]
         initWithTitle:@"Rule of Saint Benedict"
         subtitle:@"Written by Saint Benedict of Nursia - a highly influential book of rules or precepts directed at monks in the Middle Ages. The Rule encourages self mastery through principles such as prayer, humility and the instruments of good works while also placing an emphasis on the importance of obedience and harmonious living."
         date:@"516"
         works:@[
             [[Work alloc]
              initWithTitle:@"Regula Sancti Benedicti"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Incipit prologus"
                   text:@[
                       @"Obsculta, o fili, præcepta magistri, et inclina aurem cordis tui et admonitionem pii patris libenter excipe et efficaciter conple, ut ad eum per oboedientiæ laborem redeas, a quo per inoboedientiæ desidiam recesseras. Ad te ergo nunc mihi sermo dirigitur, quisquis abrenuntians propriis voluntatibus, Domino Christo vero Regi militaturus oboedientiæ fortissima atque præclara arma sumis. In primis, ut quidquid agendum inchoas bonum, ab eo perfici instantissima oratione deposcas, ut qui nos iam in filiorum dignatus est numero conputare, non debet aliquando de malis actibus nostris contristari. Ita enim ei omni tempore de bonis suis in nobis parendum est ut non solum iratus pater suos non aliquando filios exheredet, sed nec ut metuendus dominus inritatus a malis nostris, ut nequissimos servos perpetuam tradat ad poenam qui eum sequi noluerint ad gloriam.",
                       @"Exurgamus ergo tandem aliquando excitante nos Scriptura ac dicente: Hora est iam nos de somno surgere, et apertis oculis nostris ad deificum lumen adtonitis auribus audiamus divina cotidie clamans quid nos admonet vox dicens: Hodie si vocem eius audieritis, nolite obdurare corda vestra. Et iterum: Qui habet aures audiendi audiat, quid Spiritus dicat ecclesiis. Et quid dicit? Venite, filii, audite me; timorem Dei docebo vos. Currite dum lumen vitæ habetis, ne tenebræ mortis vos conprehendant.",
                       @"Et quærens Dominus in multitudine populi cui hæc clamat operarium suum iterum dicit: Quis est homo qui vult vitam et cupit videre dies bonos? Quod si tu audiens respondeas: Ego, dicit tibi Deus: Si vis habere veram et perpetuam vitam, prohibe linguam tuam a malo et labia tua ne loquantur dolum; deverte a malo et fac bonum, inquire pacem et sequere eam. Et cum hæc feceritis, oculi mei super vos et aures meas ad preces vestras, et antequam me invocetis, dicam vobis: Ecce adsum. Quid dulcius ab hac voce Domini invitantis nos, fratres carissimi? Ecce pietate sua demonstrat nobis Dominus viam vitæ.",
                       @"Succinctis ergo fide vel observantia bonorum actuum lumbis nostris, per ducatum Evangelii pergamus itinera eius, ut mereamur eum qui nos vocavit in regnum suum videre. In cujus regni tabernaculo si volumus habitare, nisi illuc bonis actibus curritur, minime pervenitur. Sed interrogemus cum Propheta Dominum dicentes ei: Domine, quis habitabit in tabernaculo tuo, aut quis requiescet in monte sancto tuo? Post hanc interrogationem, fratres, audiamus Dominum respondentem et ostendentem nobis viam ipsius tabernaculi, dicens: Qui ingreditur sine macula et operatur iustitiam; qui loquitur veritatem in corde suo, qui non egit dolum in lingua sua; qui non fecit proximo suo malum, qui obprobrium non accepit adversus proximum suum; qui malignum diabulum aliqua suadentem sibi cum ipsa suasione sua a conspectibus cordis sui respuens deduxit ad nihilum, et parvulos cogitatos eius tenuit et adlisit ad Christum; qui timentes Dominum de bona observantia sua non se reddunt elatos, sed ipsa in se bona non a se posse, sed a Domino fieri existimantes, operantem in se Dominum magnificant, illud cum Propheta dicentes: Non nobis, Domine, non nobis, sed nomini tuo da gloriam; sicut nec Paulus Apostolus de prædicatione sua sibi aliquid inputavit dicens: Gloria Dei sum id quod sum; et iterum ipse dicit: Qui gloriatur, in Domino glorietur.",
                       @"Unde et Dominus in Evangelio ait: Qui audit verba mea hæc et facit ea, similabo eum viro sapienti qui ædificavit domum suam super petram; venerunt flumina, flaverunt venti, et inpegerunt in domum illam, et non cecidit, quia fundata erat super petram. Hæc conplens Dominus expectat nos cotidie his suis sanctis monitis factis nos respondere debere. Ideo nobis propter emendationem malorum huius vitæ dies ad indutias relaxantur, dicente Apostolo: An nescis quia patientia Dei ad pænitentiam te adducit? Nam pius Dominus dicit: Nolo mortem peccatoris, sed convertatur et vivat.",
                       @"Cum ergo interrogassemus Dominum, fratres, de habitatore tabernaculi eius, audivimus habitandi præceptum; sed si conpleamus habitatoris officium, erimus heredes regni cælorum. Ergo præparanda sunt corda nostra et corpora sanctæ præceptorum oboedientiæ militanda, et quod minus habet in nos natura possibile, rogemus Dominum, ut gratiæ suæ iubeat nobis adiutorium ministrare. Et si, fugientes gehennæ poenas, ad vitam volumus pervenire perpetuam, dum adhuc vacat et in hoc corpore sumus et hæc omnia per hanc lucis vitam vacat implere, currendum et agendum est modo quod in perpetuo nobis expediat.",
                       @"Constituenda est ergo nobis dominici scola servitii. In qua institutione nihil asperum, nihil grave nos constituturos speramus; sed et si quid paululum restrictius, dictante æquitatis ratione, propter emendationem vitiorum vel conservationem caritatis processerit, non ilico pavore perterritus refugias viam salutis, quæ non est nisi angusto initio incipienda. Processu vero conversationis et fidei, dilatato corde inenarrabili dilectionis dulcedine curritur via mandatorum Dei, ut ab ipsius numquam magisterio discedentes, in eius doctrinam usque ad mortem in monasterio perseverantes passionibus Christi per patientiam participemur, ut et regno eius mereamur esse consortes. Amen.",
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 1: De generibus monachorum"
                   text:@[
                       @"Monachorum quattuor esse genera, manifestum est. Primum coenobitarum, hoc est monasteriale, militans sub regula vel abbate. Deinde secundum genus est anachoritarum id est heremitarum, horum qui non conversationis fervore novicio, sed monasterii probatione diuturna, qui didicerunt contra diabulum multorum solacio iam docti pugnare, et bene extructi fraterna ex acie ad singularem pugnam heremi, securi iam sine consolatione alterius, sola manu vel brachio contra vitia carnis vel cogitationum, Deo auxiliante, pugnare sufficiunt.",
                       @"Tertium vero monachorum teterrimum genus est sarabaitarum, qui nulla regula adprobati, experienta magistra, sicut aurum fornacis, sed in plumbi natura molliti, adhuc operibus servantes sæculo fidem, mentiri Deo per tonsuram noscuntur. Qui bini aut terni aut certe singuli sine pastore, non dominicis sed suis inclusi ovilibus, pro lege eis est desideriorum voluptas, cum quidquid putaverint vel elegerint, hoc dicunt sanctum, et quod noluerint, hoc putant non licere. Quartum vero genus est monachorum quod nominatur girovagum, qui tota vita sua per diversas provincias ternis aut quaternis diebus per diversorum cellas hospitantur, semper vagi et numquam stabiles, et propriis voluntatibus et guilæ inlecebris servientes, et per omnia deteriores sarabaitis. De quorum omnium horum miserrima conversatione melius est silere quam loqui. His ergo omissis, ad coenobitarum fortissimum genus disponendum, adiuvante Domino, veniamus."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 2: Qualis debeat esse abbas"
                   text:@[
                       @"Abbas qui præesse dignus est monasterio semper meminere debet quod dicitur et nomen maioris factis implere. Christi enim agere vices in monasterio creditur, quando ipsius vocatur pronomine, dicente apostolo: Accepistis spiritum adoptionis filiorum, in quo clamamus: Abba, Pater. Ideoque abbas nihil extra præceptum Domini quod sit debet aut docere aut constituere vel iubere, sed iussio eius vel doctrina fermentum divinæ iustitiæ in discipulorum mentibus conspargatur, memor semper abbas quia doctrinæ suæ vel discipulorum oboedientiæ, utrarumque rerum, in tremendo iudicio Dei facienda erit discussio. Sciatque abbas culpæ pastotis incumbere quidquid in ovibus paterfamilias utilitatis minus potuerit invenire. Tantumdem iterum erit ut, si inquieto vel inoboedienti gregi pastoris fuerit omnis diligentia adtributa et morbidis earum actibus universa fuerit cura exhibita, pastor eorum in iudicio Domini absolutus dicat cum Propheta Domino: Iustitiam tuam non abscondi in corde meo, veritatem tuam et salutare tuum dixi; ipsi autem contemnentes spreverunt me, et tunc demum inoboetientibus cursæ suæ ovibus poena sit eis prævalens ipsa mors.",
                       @"Ergo, cum aliquis suscipit nomen abbatis, duplici debet doctrina suis præesse discipulis, id est omnia bona et sancta factis amplius quam verbis ostendat, ut capacibus discipulis mandata Domini verbis proponere, duris corde vero et simplicioribus factis suis divina præcepta monstrare. Omnia vero quæ discipulis docuerit esse contraria, in suis factis indicet non agenda, ne aliis prædicans ipse reprobus inveniatur, ne quando illi dicat Deus precanti: quare tu enarras iustitias meas et adsumis testamentum meum per os tuum? tu vero odisti disciplinam et proiecisti sermones meos post te, et:qui in fratris tui oculo festucam videbas, in tuo trabem non vidisti.",
                       @"Non ab eo persona in monasterio discernatur. Non unus plus ametur quam alius, nisi quem in bonis actibus aut oboedientia invenerit meliorem. Non convertenti ex servitio præponatur ingenuus, nisi alia rationabilis causa existat. Quod si ita, iustitia dictante, abbati visum fuerit, et de cuiuslibet ordine id faciet; sin alias, propria teneant loca, quia: Sive servus sive liber, omnes in Christo unum sumus et sub uno Domino æqualem servitutis militiam baiulamus, quia: Non est apud Deum personarum acceptio. Solummodo in hac parte apud ipsum discernimur, si meliores ab aliis in operibus bonis et humiles inveniamur. Ergo æqualis sit ab eo omnibus caritas, una præ beatur in omnibus secundum merita disciplina.",
                       @"In doctrina sua namque abbas apostolicam debet illam semper formam servare in qua dicit: Argue, obsecra, increpa, id est, miscens temporibus tempora, terroribus blandimenta, dirum magistri, pium patris ostendat affectum, id est indisciplinatos et inquietos debet durius arguere, oboedientes autem et mites et patientes, ut in melius proficiant obsecrare, neglegentes et contemnentes ut increpat et corripiat admonemus. Neque dissimulet peccata delinquentiump; sed ut, mox ut coeperint oriri, radicitus ea ut prævalet amputet, memor periculi Heli sacerdotis de Silo. Et honestiores quidem atque intellegibiles animos prima vel secunda admonitione verbis corripiat, inprobos autem et duros ac superbos vel inoboedientes verberum vel corporis castigatio in ipso initio peccati coerceat, sciens scriptum: Stultus verbis non corrigitur, et iterum: Percute filium tuum virga et liberabis animam eius a morte.",
                       @"Meminere debet semper abbas quod est, meminere quod dicitur, et scire quia cui plus committitur, plus ab eo exigitur. Sciatque quam difficilem et arduam rem suscipit, regere animas et multorum servire moribus, et alium quidem blandimentis, alium vero increpationibus, alium suasionibus; et secundum unuscuiusque qualitatem vel intellegentiam, ita se omnibus conformet et aptet ut non solum detrimenta gregis sibi commissi non patiatur, verum in augmentatione boni gregis gaudeat.",
                       @"Ante omnia, ne dissimulans aut parvipendens salutem animarum sibi commissarum, ne plus gerat sollicitudinem de rebus transitoriis et terrenis atque caducis, sed semper cogitet quia animas suscepit regendas, de quibus et rationem redditurus est. Et ne causetur de minori forte substantia , meminerit scriptum: Primum quærite regnum Dei et iustitiam eius, et hæc omnia adicientur vobis, et iterum: Nihil deest timentibus eum. Sciatque quia qui suscipit animas regendas paret se ad rationem reddendam. Et quantum sub cura sua fratrum se habere scierit numerum, agnoscat pro certo quia in die iudicii ipsarum omnium animarum est redditurus Domino rationem, sine dubio addita et suæ animæ. Et ita, timens semper futuram discussionem pastoris de creditis ovibus, cum de aliis ratiociniis cavet, redditur de suis sollicitus, et cum de monitionibus suis emendationem aliis subministrat, ipse efficitur a vitiis emendatus."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 3: De adhibendis ad consilium fratribus"
                   text:@[
                       @"Quotiens aliqua præcipua sunt in monasterio, convocet abbas omnem congregationem et dicat ipse unde agitur. Et audiens consilium fratrum tractet apud se et quod utilius iudicaverit faciat. Ideo autem omnes ad consilium vocari diximus, quia sæpe iuniori Dominus revelat quod melius est. Sic autem dent fratres consilium cum omni humilitatis subiectione, et non præsumant procaciter defendere quod eis visum fuerit; et magis in abbatis pendat arbitrio, ut quod salubrius esse iudicaverit, ei cuncti oboediant. Sed sicut discipulos convenit oboedire magistro, ita et ipsum provide et iuste condecet cuncta disponere.",
                       @"In omnibus igitur omnes magistram sequentur regulam, neque ab ea temere declinetur a quoquam. Nullus in monasterio proprii sequatur cordis voluntatem. Neque præsumat quisquam cum abbate suo proterve aut foris monasterium contendere. Quod si præsumpserit, regulari disciplinæ subiaceat. Ipse tamen abbas cum timore Dei et observatione regulæ omnia faciat, sciens se procul dubio de omnibus iudiciis suis æquissimo iudici Deo rationem redditurum. Si qua vero minora agenda sunt in monasterii utilitatibus, seniorum tantum utatur consilio, sicut scriptum est: Omnia fac cum consilio, et post factum non pæniteberis."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 4: Quæ sunt instrumenta bonorum operum"
                   text:@[
                       @"In primis Dominum Deum diligere ex toto corde, tota anima, tota virtute. Deinde proximum tamquam seipsum. Deinde non occidere. Non adulterare. Non facere futum. Non concupiscere. Non falsum testimonium dicere. Honorare omnes homines. Et quod sibi quis fieri non vult, alio ne faciat. Abnegare semetipsum sibi ut sequatur Christum. Corpus castigare. Delicias non amplecti. Ieiunium amare. Pauperes recreare.Nudum vestire. Infirmum visitare. Mortuum sepelire. In tribulatione subvenire. Dolentem consolari. Sæculi actibus se facere alienum. Nihil amori Christi præponere. Iram non perficere.",
                       @"Iracundiæ tempus non reservare. Dolum in corde non tenere. Pacem falsam non dare. Caritatem non derelinquere. Non iurare ne forte periuret. Veritatem ex corde et ore proferre. Malum pro malo non reddere. Iniuriam non facere, sed et factas patienter sufferre. Inimicos diligere. Maledicentes se non remaledicere, sed magis benedicere. Persecutionem pro iustitia sustinere. Non esse superbum. Non vinolentum. Non multum edacem. Non somnulentum. Non pigrum. Non murmuriosum. Non detractorem. Spem suam Deo committere. Bonum aliquid in se cum viderit, Deo adplicet, non sibi. Malum vero semper a se factum sciat et sibi reputet.",
                       @"Diem iudicii timere. Gehennam expavescere. Vitam æternam omni concupiscentia spiritali desiderare. Mortem cotidie ante oculos suspectam habere. Actus vitæ suæ omni hora custodire. In omni loco Deum se respicere pro certo scire. Cogitationes malas cordi suo advenientes mox ad Christum adlidere et seniori spiritali patefacere.Os suum a malo vel pravo eloquio custodire. Multum loqui non amare. Verba vana aut risui apta non loqui. Risum multum aut excussum non amare. Lectiones sanctas libenter audire. Orationi frequenter incumbere. Mala sua præterita cum lacrimis vel gemitu cotidie in oratione Deo confiteri. De ipsis malis de cetero emendare. Desideria carnis non efficere. Voluntatem propriam odire. Præceptis abbatis in omnibus oboedire, etiam si ipse aliter - quod absit - agat, memores illud dominicum præceptum: Quæ dicunt facite, quæ autem faciunt facere nolite. Non velle dici sanctum antequam sit, sed prius esse quod verius dicatur.",
                       @"Præcepta Dei factis cotidie adimplere. Castitatem amare. Nullum odire. Zelum non habere. Invidiam non exercere. Contentionem non amare. Elationem fugere. Et seniores venerare. Iuniores diligere. In Christi amore pro inimicis orare. Cum discordante ante solis occasum in pacem redire. Et de Dei misericordia numquam desperare. Ecce hæc sunt instrumenta artis spiritalis. Quæ cum fuerint a nobis die noctuque incessabiliter adimpleta et in die iudicii reconsignata, illa mercis nobis a Domino reconpensabitur quam ipse promisit: Quod oculus non vidit nec auris audivit, quæ præparavit Deus his qui diligunt illum. Officina vero ubi hæc omnia diligenter operemur claustra sunt monasterii et stabilitas in congregatione."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 5: De oboedentia"
                   text:@[
                       @"Primus humilitatis gradus est oboedientia sine mora. Hæc convenit his qui nihil sibi a Christo carius aliquid existimant. Propter servitium sanctum quod professi sunt seu propter metum gehennæ vel gloriam vitæ æternæ, mox aliquid imperatum a maiore fuerit, ac si divinitus imperetur, moram pati nesciant in faciendo. De quibus Dominus dicit: Obauditu auris oboedivit mihi. Et item dicit doctoribus: Qui vos audit me audit. Ergo hii tales, relinquentes statim quæ sua sunt et voluntatem propriam deserentes, mox exoccupatis manibus et quod agebant imperfectum relinquentes, vicino oboedentiæ pede iubentis vocem factis sequuntur, et veluti uno momento prædicta magistri iussio et perfecta discipuli opera, in velocitate timoris Dei, ambæ res communiter citius explicantur. Quibus ad vitam æternam gradiendi amor incumbit, ideo angustam viam arripiunt, unde Dominus dicit: Angusta via est quæ ducit ad vitam, ut non suo arbitrio viventes et desideriis suis et voluptatibus oboedientes, sed ambulantes alieno iudicio et imperio, in coenobiis degentes abbatem sibi præesse desiderant. Sine dubio hii tales illam Domini imitantur sententiam qua dicit: Non veni facere voluntatem meam, sed eius qui misit me.",
                       @"Sed hæc ipsa oboedientia tunc acceptabilis erit Deo et dulcis hominibus, si quod iubetur non trepide, non tarde, non tepide, aut cum murmurio vel cum responso nolentis efficiatur, quia oboedientia quæ maioribus præbetur Deo exhibetur; ipse enim dixit: Qui vos audit me audit. Et cum bono animo a discipulis præberi oportet, quia hilarem datorem diligit Deus. Nam, cum malo animo si oboedit discipulus et non solum ore, sed etiam in corde si murmuraverit, etiam si impleat iussionem, tamen acceptum iam non erit Deo, qui cor eius respicit murmurantem. Et pro tali facto nullam consequitur gratiam, immo poenam murmurantium incurrit, si non cum satisfactione emendaverit."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 6: De taciturnitate"
                   text:@[
                       @"Faciamus quod ait Propheta: Dixi: custodiam vias meas, ut non delinquam in lingua mea. Posui ori meo custodiam, obmutui et humiliatus sum et silui a bonis. Hic ostendit Propheta, si a bonis eloquiis interdum propter taciturnitatem debet tacere, quanto magis a malis verbis propter poenam peccati debet cessari. Ergo quamvis de bonis et sanctis et ædificationum eloquiis perfectis discipulis propter taciturnitatis gravitatem rara loquendi concedatur licentia, quia scriptum est:In multiloquio non effugies peccatum, et alibi: Mors et vita in manibus linguæ. Nam loqui et docere magistrum condecet, tacere et audire discipulum convenit. Et ideo, si qua requirenda sunt a priore, cum omni humilitate et subiectione reverentiæ requirantur. Scurrilitates vero vel verba otiosa et risum moventia æterna clusura in omnibus locis damnamus et ad talia eloquia aperire os non permittimus."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 7: De humilitate"
                   text:@[
                       @"Clamat nobis Scriptura divina, fratres, dicens: Omnis qui se exaltat humiliabitur et qui se humiliat exaltabitur. Cum hæc ergo dicit, ostendit nobis omnem exaltationem genus esse superbiæ. Quod se cavere Propheta indicat dicens: Domine, non est exaltatum cor meum neque elati sunt oculi mei, neque ambulavi in magnis neque in mirabilibus super me. Sed quid, si non humiliter sentiebam, si exaltavi animam meam, sicut ablactatum super matrem suam, ita retribues in animam suam.",
                       @"Unde fratres, si summæ humilitatis volumus culmen adtingere et ad exaltationem illam cælestem ad quam per præsentis vitæ humilitatem ascenditur, volumus velociter pervenire, actibus nostris ascendentibus scala illa erigenda est quæ in somnio Iacob apparuit, per quam ei descendentes et ascendentes angeli monstrabantur. Non aliud sine dubio descensus ille et ascensus a nobis intelligitur nisi exaltatione descendere et humilitate ascendere. Scala vero ipsa erecta nostra est vita in sæculo, quæ humiliato corde a Domino erigatur ad cælum. Latera enim eius scalæ dicimus nostrum esse corpus et animam, in qua latera diversos gradus humilitatis vel disciplinæ evocatio divina ascendendo inseruit.",
                       @"Primus itaque humilitatis gradus est, si timorem Dei sibi ante oculos semper ponens, oblivionem omnimo fugiat et semper sit memor omnia quæ præcepit Deus, ut qualiter et contemnentes Deum gehenna de peccatis incendat et vita æterna quæ timentibus Deum præparata est, animo suo semper revolvat. Et custodiens se omni hora a peccatis et vitiis, id est cogitationum, linguæ, manuum, pedum vel voluntatis propriæ sed et desideria , æstimet se homo de cælis a Deo semper respici omni hora et facta sua omni loco ab aspectu Divinitatis videri et ab angelis omni hora renuntiari. Demonstrans nobis hoc Propheta, cum in cogitationibus nostris ita Deum semper præsentem ostendit dicens: Scrutans corda et renes Deus; et item: Dominus novit cogitationes hominum; et item dicit: Intellexisti cogitationes meas a longe; et: Quia cogitatio hominis confitebitur tibi. Nam ut sollicitus sit circa cogitationes suas perversas, dicat semper utilis frater in corde suo: Tunc ero immaculatus coram eo si observavero me ab iniquitate mea.",
                       @"Voluntatem vero propriam ita facere prohibemur cum dicit Scriptura nobis: Et a voluntatibus tuis avertere. Et item rogamus Deum in oratione ut fiat illius voluntas in nobis. Docemur ergo merito nostram non facere voluntatem cum cavemus illud quod dicit Scriptura: Sunt viæ quæ putantur ab hominibus rectæ, quarum finis usque ad profundum inferni demergit, et cum item pavemus illud quod de neglegentibus dictum est: Corrupti sunt et abominabiles facti sunt in voluntatibus suis. In desideriis vero carnis ita nobis Deum credamus semper esse præsentem, cum dicit Propheta Domino: Ante te est omne desiderium meum.",
                       @"Cavendum ergo ideo malum desiderium, quia mors secus introitum dilectationis posita est. Unde Scriptura præcepit dicens: Post concupiscentias tuas non eas. Ergo si oculi Domini speculantur bonos et malos et Dominus de cælo semper respicit super filios hominum, ut videat si est intellegens aut requirens Deum, et si ab angelis nobis deputatis cotidie die noctuque Domino factorum nostrorum opera nuntiantur, cavendum est ergo omni hora, fratres, sicut dicit in psalmo Propheta, ne nos declinantes in malo et inutiles factos aliqua hora aspiciat Deus et, parcendo nobis in hoc tempore, quia pius est et expectat nos converti in melius, ne dicat nobis in futuro: Hæc fecisti et tacui.",
                       @"Secundus humilitatis gradus est, si propriam quis non amans voluntatem desideria sua non delectetur implere, sed vocem illam Domini factis imitemur dicentis: Non veni facere voluntatem meam, sed eius qui me misit. Item dicit Scriptura: Voluntas habet poenam et necessitas parit coronam.",
                       @"Tertius humilitatis gradus est, ut quis pro Dei amore omni oboedientia se subdat maiori, imitans Dominum, de quo dicit Apostolus: Factus oboediens usque ad mortem.",
                       @"Quartus humulitatis gradus est, si in ipsa oboedientia duris et contrariis rebus vel etiam quibuslibet inrogatis iniuriis, tacite conscientia patientiam amplectatur et sustinens non lassescat vel discedat, dicente Scriptura: Qui perseveraverit usque in finem, hic salvus erit. Item: Confortetur cor tuum et sustine Dominum. Et ostendens fidelem pro Domino universa etiam contraria sustinere debere, dicit ex persona sufferentium: Propter te morte adficimur tota die, æstimati sumus ut oves occisionis. Et securi de spe retributionis divinæ subsecuntur gaudentes et dicentes: Sed in his omnibus superamus propter eum qui dilexit nos. Et item alio loco Scriptura: Probasti nos, Deus, igne nos examinasti sicut igne examinatur argentum; induxisti nos in laqueum; posuisti tribulationes in dorso nostro. Et ut ostendat sub priore debere nos esse, subsequitur dicens: Inposuisti homines super capita nostra. Sed et præceptum Domini in adversis et iniuriis per patientiam adimplentes, qui percussi in maxillam præbent et aliam, auferenti tunicam dimittunt et pallium, angarizati militario vadunt duo, cum Paulo apostolo falsos fratres sustinent et persecutionem sustinent, et maledicentes se benedicent.",
                       @"Quintus humilitatis gradus est, si omnes cogitationes malas cordi suo advenientes vel mala a se absconse commissa per humilem confessionem abbatem non celaverit suum. Hortans nos de hac re Scriptura dicens: Revela ad Dominum viam tuam et spera in eum. Et item dicit: Confitemini Domino quoniam bonus, quoniam in æternum misericordia eius. Et item Propheta: Delictum meum cognitum tibi feci et iniustitias meas non operui. Dixi: pronuntiabo adversum me iniustitias meas Domino, et tu remisisti impietatem cordis mei.",
                       @"Sextus humilitatis gradus est, si omni vilitate vel extremitate contentus sit monachus, et ad omnia quæ sibi iniunguntur velut operarium malum se iudicet et indignum, dicens sibi cum Propheta: Ad nihilum redactus sum et nescivi; ut iumentum factus sum apud te et ego semper tecum.",
                       @"Septimus humilitatis gradus est: si omnibus se inferiorem et viliorem non solum sua lingua pronuntiet, sed etiam intimo cordis credat affectu, humilians se et dicens cum Propheta: Ego autem sum vermis et non homo, obprobrium hominum et abiectio plebis. Exaltatus sum et humiliatus et confusus. Et item: Bonum mihi quod humiliasti me, et discam mandata tua.",
                       @"Octavus humilitatis gradus est, si nihil agat monachus, nisi quod communis monasterii regula vel maiorum cohortatur exempla.",
                       @"Nonus humilitatis gradus est, si linguam ad loquendum prohibeat monachus et taciturnitatem habens, usque ad interrogationem non loquatur, monstrante Scriptura quia in multoloquio non effugitur peccatum, et quia vir linguosus non dirigitur super terram.",
                       @"Decimus humilitatis gradus est, si non sit facilis ac promptus in risu, qui scriptum est: Stultus in risu exaltat vocem suam.",
                       @"Undecimus humilitatis gradus est, si cum loquitur monachus, leniter et sine risu, humiliter cum gravitate vel pauca verba et rationabilia loquatur, et non sit clamosus in voce, sicut scriptum est: Sapiens verbis innotescit paucis.",
                       @"Duodecimus humilitatis gradus est, si non solum corde monachus, sed etiam ipso corpore humilitatem videntibus se semper indicet, id est Opere Dei, in oratorio, in monasterio, in horto, in via, in agro vel ubicumque sedens, ambulans vel stans, inclinato sit semper capite, defixis in terram aspectibus, reum se omni hora de peccatis suis æstimans iam se tremendo iudicio repræsentari æstimet, dicens sibi in corde semper illud, quod publicanus ille evangelicus fixis in terram oculis dixit: Domine, non sum dignus, ego peccator, levare oculos meos ad cælos. Et item cum Propheta: Incurvatus sum et humiliatus sum usquequaque. Ergo, his omnibus humilitatis gradibus ascensis, monachus mox ad caritatem Dei perveniet illam quæ perfecta foris mittit timorem, per quam universa quæ prius non sine formidine observabat absque ullo labore velut naturaliter ex consuetudine incipiet custodire, non iam timore gehennæ, sed amore Christi et consuetudine ipsa bona et dilectatione virtutum. Quæ Dominus iam in operarium suum mundum a vitiis et peccatis Spiritu Sancto dignabitur demonstrare."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 8: De officiis divinis in noctibus"
                   text:@[
                       @"Hiemis tempore, id est a kalendas novembres usque in Pascha, iuxta considerationem rationis, octava hora noctis surgendum est, ut modice amplius de media nocte pausetur et iam digesti surgant. Quod vero restat post Vigilias a fratribus qui psalterii vel lectionum aliquid indigent, meditationi inserviatur. A Pascha autem usque ad supradictas novembres sic temperetur hora, ut Vigiliarum agenda parvissimo intervallo, quo fratres ad necessaria naturæ exeant, mox Matutini qui incipiente luce agendi sunt, subsequantur."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 9: Quanti psalmi dicendi sunt nocturni"
                   text:@[
                       @"Hiemis tempore suprascripto, in primis versu tertio dicendum: Domine, labia mea aperies, et os meum adnuntiabit laudem tuam. Cum subiungendus est tertius psalmus et Gloria. Post hunc, psalmum nonagesimum quartum cum antefana, aut certe decantandum. Inde sequatur ambrosianum, deinde sex psalmi cum antefanas. Quibus dictis, dicto versu, benedicat abbas et, sedentibus omnibus in scamnis, legantur vicissim a fratribus in codice super analogium tres lectiones, inter quas et tria responsoria cantentur. Duo responsoria sine Gloria dicantur; post tertiam vero lectionem, qui cantat dicat Gloriam. Quam dum incipit cantor dicere, mox omnes de sedilia sua surgant ob honorem et reverentiam sanctæ Trinitatis. Codices autem legantur in Vigiliis divinæ auctoritatis tam Veteris Testamenti quam Novi, sed et expositiones earum, quæ a nominatis et orthodoxis catholicis Patribus factæ sunt. Post has vero tres lectiones cum responsoria sua, sequantur reliqui sex psalmi cum Alleluia canendi. Post hos, lectio Apostoli sequatur ex corde recitanda, et versus, et supplicatio litaniæ, id est Quirie eleison. Et sic finiantur Vigiliæ nocturnæ."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 10: Qualiter æstatis tempore agatur nocturna laus"
                   text:@[
                       @"A Pascha autem usque ad kalendas novembres, omnis ut supra dictum est psalmodiæ quantitas teneatur excepto quod lectiones in codice propter brevitatem noctium legantur, sed pro ipsis tribus lectionibus una de Veteri Testamento memoriter dicatur, quam brevis responsorius subsequatur. Et reliqua omnia, ut dictum est, impleantur, id est ut numquam minus a duodecim psalmorum quantitate ad Vigilias nocturnas dicantur, exceptis tertio et nonagesimo quarto psalmo."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 11: Qualiter diebus dominicis vigiliæ agantur"
                   text:@[
                       @"Dominico die temperius surgatur ad Vigilias. In quibus Vigiliis teneatur mensura, id est, modulatis ut supra disposuimus sex psalmis et versu, residentibus cunctis disposite et per ordinem in subselliis, legantur in codice, ut supra diximus, quattuor lectiones cum responsoriis suis. Ubi tantum in quarto responsorio dicatur a cantante Gloria; quam dum incipit, mox omnes cum reverentia surgant. Post quibus lectionibus sequantur ex ordine alii sex psalmi cum antefanas sicut anteriores, et versu. Post quibus iterum legantur aliæ quattuor lectiones cum responsoriis suis, ordine quo supra. Post quibus dicantur tria cantica Prophetarum, quas instituerit abbas; quæ cantica cum Alleluia psallantur. Dicto etiam versu et benedicente abbate, legantur aliæ quattuor lectiones de Novo Testamento, ordine quo supra. Post quartum autem responsorium incipiat abbas hymnum Te Deum laudamus. Quo perdicto, legat abbas lectionem de Evangelia, cum honore et timore stantibus omnibus. Qua perlecta, respondeant omnes Amen, et subsequatur mox abbas hymnum Te decet laus, et data benedictione incipiant Matutinos. Qui ordo Vigiliarum omni tempore tam æstatis quam hiemis æqualiter in die dominico teneatur, nisi forte - quod absit - tardius surgant, aliquid de lectionibus breviandum est aut responsoriis. Quod tamen omnino caveatur ne proveniat; quod si contigerit, digne inde satisfaciat Deo in oratorio per cuius evenerit neglectum."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 12: Quomodo matutinorum sollemnitas agatur"
                   text:@[
                       @"In Matutinis dominico die, in primis dicatur sexagesimus sextus psalmus, sine antefana, in directum. Post quem dicatur quinquagesimus cum Alleluia. Post quem dicatur centisemus septimus decimus et sexagesimus secundus. Inde Benectiones et Laudes, lectionem de Apocalipsis una ex corde et responsorium, ambrosianum, versu, canticum de Evangelia, litania, et conpletum est."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 13: Privatis diebus qualiter agantur matutini"
                   text:@[
                       @"Diebus autem privatis Matutinorum sollemnitas ita agatur, id est, ut sexagesimus sextus psalmus sine antefana, subtrahendo modice, sicut Dominica, ut omnes occurant ad quinquagesimum, qui cum antefana dicatur. Post quem alii duo psalmi dicantur secundum consuetudinem, id est: secunda feria quintus et tricesimus quintus; tertia feria quadragesimus secundus et quinquagesimus sextus; quarta feria sexagesimum tertium et sexagesimum quartum; quinta feria octogesimum septimum et octogesimum nonum; sexta feria septuagesimum quintum et nonagesimum primum; sabbatorum autem centesimum quadragesimum secundum et canticum Deuteronomium, qui dividatur in duas Glorias. Nam ceteris diebus canticum unumquemque die suo ex Prophetis, sicut psallit Ecclesia romana, dicantur. Post hæc sequantur Laudes; deinde lectio una Apostoli memoriter recitanda, responsorium, ambrosianum, versu, canticum de Evangelia, litania et conpletum est. Plane agenda matutina vel vespertina non transeat aliquando, nisi in ultimo per ordinem oratio dominica, omnibus audientibus, dicatur a priore propter scandalorum spinas quæ oriri solent, ut conventi per ipsius orationis sponsionem qua dicunt: Dimitte nobis sicut et nos dimittimus, purgent se ab huiusmodi vitio. Ceteris vero agendis ultima pars eius orationis dicatur, ut ab omnibus respondeatur: Sed libera nos a malo."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 14: In nataliciis sanctorum qualiter agantur vigiliæ"
                   text:@[
                       @"In sanctorum vero festivitatibus vel omnibus sollemnitatibus sicut diximus dominico die agendum, ita agatur, excepto quod psalmi aut antefanæ vel lectiones ad ipsum diem pertinentes dicantur; modus autem suprascriptus teneatur."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 15: Alleluia quibus temporibus dicatur"
                   text:@[
                       @"A sanctum Pascha usque Pentecosten sine intermissione dicatur Alleluia, tam in psalmis quam in responsoriis. A Pentecosten autem usque caput quadragesimæ, omnibus noctis, cum sex posterioribus psalmis tantum ad Nocturnos dicatur. Omni vero Dominica extra quadragesima cantica, Matutinos, Prima, Tertia, Sexta Nonaque cum Alleluia dicatur, Vespera vero iam antefana. Responsoria vero numquam dicantur cum Alleluia, nisi a Pascha usque Pentecosten."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 16: Qualiter divina opera per diem agantur"
                   text:@[
                       @"Ut ait Propheta: Septies in die laudem dixi tibi. Qui septenarius sacratus numerus a nobis sic implebitur, si Matutino, Primæ, Tertiæ, Sextæ, Nonæ, Vesperæ Conpletoriique tempore nostræ servitutis officia persolvamus, quia de his diurnis Horis dixit: Septies in die laudem dixi tibi. Nam de nocturnis Vigiliis idem ipse Propheta ait: Media nocte surgebam ad confitendum tibi. Ergo his temporibus referamus laudes Creatori nostro super iudicia iustitiæ suæ, id est Matutinis, Prima, Tertia, Sexta, Nona, Vespera, Conpletorios, et nocte surgamus ad confitendum ei."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 17: Quot psalmi per easdem horas dicendi sunt"
                   text:@[
                       @"Iam de Nocturnis vel Matutinis digessimus ordinem psalmodiæ; nunc de sequentibus Horis videamus. Prima hora dicantur psalmi tres singillatim et non sub una Gloria, hymnum eiusdem Horæ post versum Deus, in adiutorium, antequam psalmi incipiantur. Post expletionem vero trium psalmorum recitetur lectio una, versu et Quirie eleison et missas. Tertia vero, Sexta et Nona item eo ordine celebretur oratio, id est versu, hymnos earundem Horarum, ternos psalmos, lectionem et versu, Quirie eleison et missas. Si maior congregatio fuerit, cum antefanas, si vero minor, in directum psallantur. Vespertina autem sinaxis quattuor psalmis cum antefanas terminetur. Post quibus psalmis lectio recitanda est: inde responsorium, ambrosianum, versu, canticum de Evangelia, litania, et oratione dominica fiant missæ. Conpletorios autem trium psalmorum dictione terminentur; qui psalmi directanei sine antefana dicendi sunt. Post quos hymnum eiusdem Horæ, lectionem unam, versu, Quirie eleison, et benedictione missæ fiant."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 18: Quo ordine ipsi psalmi dicendi sunt"
                   text:@[
                       @"In primis dicatur versu: Deus, in adiutorium meum intende; Domine, ad adiuvandum me festina, Gloria, inde hymnum unuscuiusque Horæ. deinde Prima Hora, Dominica, dicenda quattuor capitula psalmi centesimi octavi decimi. Reliquis vero Horis, id est Tertia, Sexta vel Nona, terna capitula suprascripti psalmi centesimi octavi decimi dicantur. Ad Primam autem secundæ feriæ dicantur tres psalmi, id est primus, secundus et sextus. Et ita per singulos dies ad Primam, usque Dominica, dicantur per ordinem terni psalmi usque nonum decimum psalmum, ita sane, ut nonus psalmus et septimus decimus partiantur in binos. Et sic fit, ut ad Vigilias Dominica semper a vicesimo incipiatur.",
                       @"Ad Tertiam vero, Sextam Nonamque secundæ feriæ novem capitula quæ residua sunt de centesimo octavo decimo, ipsa terna per easdem Horas dicantur. Expenso ergo psalmo centesimo ocatvo decimo duobus diebus, id est Dominico et secunda feria, tertia feria iam ad Tertiam, Sextam vel Nonam psallantur terni psalmi a centesimo nono decimo usque centesimo vicesimo septimo, id est psalmi novem. Quique psalmi semper usque Dominica per easdem Horas itidem repetantur, hymnorum nihilominus, lectionum vel versuum dispositionem uniformem cunctis diebus servatam. Et ita scilicet semper Dominica a centesimo octavo decimo incipietur.",
                       @"Vespera autem cotidie quattuor psalmorum modulatione canatur. Qui psalmi incipiantur a centesimo nono usque centesimo quadragesimo septimo, exceptis his qui in diversis Horis ex eis sequestrantur, id est a centesimo septimo decimo usque centesimo vicesimo septimo et centesimo tricesimo tertio et centesimo quadragesimo secundo; reliqui omnes in Vespera dicendi sunt. Et quia minus veniunt tres psalmi, ideo dividendi sunt qui ex numero suprascripto fortiores inveniuntur, id est centesimum tricesimum octavum et centesimum quadragesimum tertium et centesimum quadragesimum quartum; centesimus vero sextus decimus, quia parvus est, cum centesimo quinto decimo coniungatur. Digesto ergo ordine psalmorum vespertinorum, reliquia, id est lectionem, responsum, hymnum, versum vel canticum, sicut supra taxavimus impleatur. Ad Conpletorios vero cotidie idem psalmi repetantur, id est quartum, nonagesimum et centesimum tricesimum tertium.",
                       @"Disposito ordine psalmodiæ diurnæ, reliqui omnes psalmi qui supersunt æqualiter dividantur in septem noctium Vigilias, partiendoscilicet qui inter eos prolixiores sunt psalmi et duodecim per unamquamque constituens noctem. Hoc præcipue commonentes ut, si sui forte hæc distributio psalmorum displicuerit, ordinet si melius aliter iudicaverit, dum omnimodis id adtendat, ut omni ebdomada psalterium ex integro numero centum quinquaginta psalmorum psallantur, et dominico die semper a caput reprendatur ad Vigilias. Quia nimis inertem devotionis suæ servitium ostendunt monachi qui minus a psalterio cum canticis consuetudinariis per septimanæ circulum psallunt, dum quando legamus sanctos Patres nostros uno die hoc strenue implesse, quod nos tepidi utinam septimana integra persolvamus."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 19: De disciplina psallendi"
                   text:@[
                       @"Ubique credimus divinam esse præsentiam et oculos Domini in omni loco speculari bonos et malos, maxime tamen hoc sine aliqua dubitatione credamus, cum ad opus divinum adsistimus. Ideo semper memores simus quod ait Propheta: Servite Domino in timore, et iterum: Psallite sapienter, et: In conspectu angelorum psallam tibi. Ergo consideremus qualiter oporteat in conspectu Divinitatis et angelorum eius esse, et sic stemus ad psallendum, ut mens nostra concordet voci nostræ."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 20: De reverentia orationis"
                   text:@[
                       @"Si, cum hominibus potentibus volumus aliqua suggerere, non præsumimus nisi cum humilitate et reverentia, quanto magis Domino Deo universorum cum omni humilitate et puritatis devotione supplicandum est. Et non in multiloquio, sed in puritate cordis et conpunctione lacrimarum nos exaudiri sciamus. Et ideo brevis debet esse et pura oratio, nisi forte ex affectu inspirationis divinæ gratiæ protendatur. In conventu tamen omnino brevietur oratio, et facto signo a priore pariter surgant."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 21: De decanis monasterii"
                   text:@[
                       @"Si maior fuerit congregatio, elegantur de ipsis fratres boni testimonii et sanctæ conversationis, et constituantur decani, qui sollicitudinem gerant super decanias suas in omnibus secundum mandata Dei et præcepta abbatis sui. Qui decani tales elegantur in quibus securus abbas partiat onera sua. Et non elegantur per ordinem, sed secundum vitæ meritum et sapientiæ doctrinam. Quique decani, si ex eis aliqua forte qui inflatus superbia repertus fuerit reprehensibilis, correptus semel et iterum atque tertio si emendare noluerit, deiciatur, et alter in loco eius qui dignus est subrogetur. Et de præposito eadem constituimus."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 22: Quomodo dormiant monachi"
                   text:@[
                       @"Singuli per singula lecta dormiant. Lectisternia pro modo conversationis secundum dispensationem abbatis sui accipiant. Si potest fieri omnes in uno loco dormiant; sin autem multitudo non sinit, deni aut viceni cum senioribus qui super eos solliciti sint, pausent. Candela iugiter in eadem cella ardeat usque mane. Vestiti dormiant et cincti cingulis aut funibus, ut cultellos suos ad latus suum non habeant dum dormiunt, ne forte per somnium vulnerent dormientem; et ut parati sint monachi semper et, facto signo absque mora surgentes, festinent invicem se prævenire ad opus Dei, cum omni tamen gravitate et modestia. Adulescentiores fratres iuxta se non habeant lectos, sed permixti cum senioribus. Surgentes vero ad opus Dei invicem se moderate cohortentur propter somnulentorum excusationes."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 23: De excommunicatione culparum"
                   text:@[
                       @"Si quis frater contumax aut inoboediens aut superbus aut murmurans vel in aliquo contrarius sanctæ regulæ et præceptis seniorum suorum contemptor repertus fuerit, hic secundum Domini nostri præceptum admoneatur semel et secundo secrete a senioribus suis. Si non emendaverit, obiurgetur publice coram omnibus. Si vero neque sic correxerit, si intelligit qualis poena sit, excommunicationi subiaceat; sin autem inprobus est, vindictæ corporali subdatur."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 24: Qualis debet esse modus excommunicationis"
                   text:@[
                       @"Secundum modum culpæ, et excommunicationis vel disciplinæ mensura debet extendi. Qui culparum modus in abbatis pendat iudicio. Si quis tamen frater in levioribus culpis invenitur, a mensæ participatione privetur. Privati autem a mensæ consortio ista erit ratio, ut in oratorio psalmum aut antefanam non imponat, neque lectionem recitet, usque ad satisfactionem. Refectionem autem cibi post fratrum refectionem solus accipiat, ut, si verbi gratia fratres reficiunt sexta hora, ille frater nona, si fratres nona, ille vespera, usque dum satisfactione congrua veniam consequatur."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 25: De gravioribus culpis"
                   text:@[
                       @"Is autem frater qui gravioribus culpæ noxa tenetur, suspendatur a mensa, simul ab oratorio. Nullus ei fratrum in nullo iungatur consortio nec in conloquio. Solus sit ad opus sibi iniunctum, persistens in pænitentiæ luctu, sciens illam terribilem Apostoli sententiam dicentis: Traditum eiusmodi hominem in interitum carnis, ut spiritus salvus sit in diem Domini. Cibi autem refectionem solus percipiat, mensura vel hora qua præviderit abbas ei conpetere; nec a quoquam benedicatur transeunte nec cibum quod ei datur."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 26: De his qui sine iussione iungunt se excommunicatis"
                   text:@[
                       @"Si quis frater præsumpserit sine iussione abbatis fratri excommunicato quolibet modo se iungere aut loqui cum eo vel mandatum ei dirigere, similem sortiatur excommunicationis vindictam."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 27: Qualiter debeat abbas sollicitus esse circa excommunicatos"
                   text:@[
                       @"Omni sollicitudine curam gerat abbas circa delinquentes fratres, quia: Non est opus sanis medicus, sed male habentibus. Et ideo uti debet omni modo ut sapiens medicus: inmittere senpectas, id est seniores sapientes fratres, qui quasi secrete consolentur fratrem fluctuantem et provocent ad humilitatis satisfactionem et consolentur eum ne abundantiori tristitia absorbeatur, sed, sicut ait item Apostolus: Confirmetur in eo caritas, et oretur pro eo ab omnibus. Magnopere enim debet sollicitudinem gerere abbas et omni sagacitate et industria currere, ne aliquam de ovibus sibi creditis perdat. Noverit enim se infirmarum curam suscepisse animarum, non super sanas tyrannidem. Et metuat Prophetæ comminationem per quam dicit Deus: Quod crassum videbatis, et quod debile erat proiciebatis. Et Pastoris boni pium imitetur exemplum, qui, relictis nonaginta novem ovibus in montibus, abiit unam ovem quæ erraverat quærere. Cuius infirmati in tantum conpassus est, ut eam in sacris humeris suis dignaretur inponere et sic reportare ad gregem."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 28: De his qui sæpius correpti emendare noluerint"
                   text:@[
                       @"Si quis frater frequenter correptus pro qualibet culpa, si etiam excommunicatus non emendaverit, acrior ei accedat correptio, id est ut verberum vindicta in eum procedant. Quod si nec ita correxerit, aut forte - quod absit - in superbia elatus etiam defendere voluerit opera sua, tunc abbas faciat quod sapiens medicus: si exhibuit fomenta, si unguenta adhortationum, si medicamina Scripturarum divinarum, si ad ultimum ustionem excommunicationis vel plagarum virgæ, et iam si viderit nihil suam prævalere industriam, adhibeat etiam, quod maius est, suam et omnium fratrum pro eo orationem, ut Dominus qui omnia potest operetur salutem circa infirmum fratrem. Quod si nec isto modo sanatus fuerit, tunc iam utatur abbas ferro abscisionis, ut ait Apostolus: Auferte malum ex vobis; et iterum: Infidelis si discedit, discedat, ne una ovis morbida omnem gregem contagiet."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 29: Si debeant fratres exeuntes de monasterio item recipi"
                   text:@[
                       @"Frater qui proprio vitio egreditur de monasterio, si reverti voluerit, spondeat prius omnem emendationem pro quo egressus est, et sic in ultimo gradu recipiatur, ut ex hoc eius humilitas conprobetur. Quod si denuo exierit, usque tertio ita recipiatur, iam postea sciens omnem sibi reversionis aditum denegari."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 30: De pueris minori ætate qualiter corripiantur"
                   text:@[
                       @"Omnis ætas vel intellectus proprias debet habere mensuras. Ideoque quotiens pueri vel adulescentiores ætate, aut qui minus intellegere possunt, quanta poena sit excommunicationis, hii tales dum delinquunt, aut ieiuniis nimiis affligantur aut acris verberibus coerceantur, ut sanentur."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 31: De cellarario monasterii qualis sit"
                   text:@[
                       @"Cellararius monasterii elegatur de congregatione sapiens, maturis moribus, sobrius, non multum edax, non elatus, non turbulentus, non iniuriosus, non tardus, non prodigus, sed timens Deum; qui omni congregationi sit sicut pater. Curam gerat de omnibus. Sine iussione abbatis nihil faciat. Quæ iubentur custodiat. Fratres non contristet. Si quis frater ab eo foret aliqua inrationabiliter postulat, non spernendo eum contristet, sed rationabiliter cum humilitate male petenti deneget. Animam suam custodiat, memor semper illud apostolicum, quia: Qui bene ministraverit, gradum bonum sibi adquirit. Infirmorum, infantum, hospitum pauperumque cum omni sollicitudine curam gerat, sciens sine dubio, quia pro his omnibus in die iudicii rationem redditurus est. Omnia vasa monasterii cunctamque substantiam ac si altaris vasa sacrata conspiciat. Nihil ducat neglegendum. Neque avaritiæ studeat neque prodigus sit et stirpator substantiæ monasterii, sed omnia mensurate faciat et secundum iussionem abbatis.",
                       @"Humilitatem ante omnia habeat, et cui substantia non est quod tribuatur, sermo responsionis porrigatur bonus, ut scriptum est: Sermo bonus super datum optimum. Omnia quæ ei iniunxerit abbas, ipsa habeat sub cura sua; a quibus eum prohibuerit, non præsumat. Fratribus constitutam annonam sine aliquo tyfo vel mora offerat, ut non scandalizentur, memor divini eloquii, quid mereatur qui scandalizaverit unum de pusillis. Si congregatio maior fuerit, solacia ei dentur, a quibus adiutus et ipse æquo animo impleat officium sibi commissum. Horis conpetentibus et dentur quæ danda sunt et petantur quæ petanda sunt, nemo perturbetur neque contristetur in domo Dei."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 32: De ferramentis vel rebus monasterii"
                   text:@[
                       @"Substantia monasterii in ferramentis vel vestibus seu quibuslibet rebus prævideat abbas fratres de quorum vita et moribus securus sit; et eis singula, ut utile iudicaverit, consignet custodienda atque recolligenda. Ex quibus abbas brevem teneat, ut dum sibi in ipsa adsignata fratres vicissim succedunt, sciat quid dat aut quid recipit. Si quis autem sordide aut neglegenter res monasterii tractaverit, corripiatur; si non emendaverit, disciplinæ regulari subiaceat."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 33: Si quid debeant monachi proprium habere"
                   text:@[
                       @"Præcipue hoc vitium radicitus amputandum est de monasterio ne quis præsumat aliquid dare aut accipere sine iussione abbatis, neque aliquid habere proprium, nullam omnimo rem, neque codicem, neque tabulas, neque grafium, sed nihil omnimo, quippe quibus nec corpora sua nec voluntates licet habere in propria voluntate; omnia vero necessaria a patre sperare monasterii, nec quicquam liceat habere quod abbas non dederit aut permiserit. Omniaque omnibus sint communia, ut scriptum est, ne quisquam suum aliquid dicat vel præsumat. Quod si quisquam huic nequissimo vitio deprehensus fuerit delectari, admoneatur semel et iterum; si non emendaverit, correptioni subiaceat."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 34: Si omnes æqualiter debeant necessaria accipere"
                   text:@[
                       @"Sicut scriptum est: Dividebatur singulis prout cuique opus erat. Ubi non dicimus ut personarum - quod absit - acceptio sit, sed infirmitatum consideratio; ubi qui minus indiget, agat Deo gratias et non contristetur, qui vero plus indiget, humilietur pro infirmitate, non extollatur pro misericordia; et ita omnia membra erunt in pace. Ante omnia, ne murmurationis malum pro qualicumque causa in aliquo qualicumque verbo vel significatione appareat. Quod si deprehensus fuerit, districtiori disciplinæ subdatur."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 35: De septimanariis coquinæ"
                   text:@[
                       @"Fratres sibi invicem serviant, ut nullus excusetur a coquinæ officio, nisi aut ægritudo aut in causa gravis utilitatis quis occupatus fuerit, quia exinde maior mercis et caritas adquiritur. Inbecillibus autem procurentur solacia, ut non cum tristitia hoc faciant; sed habeant omnes solacia, secundum modum congregationis aut positionem loci. Si maior congregatio fuerit, cellararius excusetur a coquina, vel si qui, ut diximus, maioribus utilitatibus occupantur. Ceteri sibi sub caritate invicem serviant. Egressurus de septimana, sabbato munditias faciat. Lintea cum quibus sibi fratres manus aut pedes tergunt, lavent. Pedes vero tam ipse qui egreditur quam ille qui intraturus est omnibus lavent. Vasa ministerii sui munda et sana cellarario reconsignet; qui cellararius item intranti consignet, ut sciat quod dat aut quod recipit.",
                       @"Septimanarii autem ante unam horam refectionis accipiant super statutam annonam singulas biberes et panem, ut hora refectionis sine murmuratione et gravi labore serviant fratribus suis. In diebus tamen sollemnibus usque ad missas sustineant. Intrantes et exeuntes ebdomadarii in oratorio mox Matutinis finitis Dominica omnium genibus provolvantur postulantes pro se orari. Egrediens autem de septimana dicat hunc versum: Benedictus es, Domine Deus, qui adiuvisti me et consolatus es me. Quo dicto tertio accepta benedictione egrediens, subsequatur ingrediens et dicat: Deus, in adiutorium meum intende, Domine, ad adiuvandum me festina, et hoc idem tertio repetatur ab omnibus et accepta benedictione ingrediatur."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 36: De infirmis fratribus"
                   text:@[
                       @"Infirmorum cura ante omnia et super omnia adhibenda est, ut sicut revera Christo ita eis serviatur, quia ipse dixit: Infirmus fui, et visitastis me, et: Quod fecistis uni de his minimis, mihi fecistis. Sed et ipsi infirmi considerent in honorem Dei sibi serviri, et non superfluitate sua contristent fratres suos servientes sibi; qui tamen patienter portandi sunt, quia de talibus copiosior mercis adquiritur. Ergo cura maxima sit abbati, ne aliquam neglegentiam patiantur. Quibus fratribus infirmis sit cella super se deputata et servitor timens Deum et diligens ac sollicitus. Balnearum usus infirmis quotiens expedit offeratur, sanis autem et maxime iuvenibus tardius concedatur. Sed et carnium esus infirmis omnimo debilibus pro reparatione concedatur; at ubi meliorati fuerint, a carnibus more solito omnes abstineant. Curam autem maximam habeat abbas ne a cellarariis aut a servitoribus neglegantur infirmi; et ipsum respicit quidquid a discipulis delinquitur."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 37: De senibus vel infantibus"
                   text:@[
                       @"Licet ipsa natura humana trahatur ad misericordiam in his ætatibus, senum videlicet et infantum, tamen et regulæ auctoritas eis prospiciat. Consideretur semper in eis inbecillitas et ullatenus eis districtio regulæ teneatur in alimentis; sed sit in eis pia consideratio et præveniant horas canonicas."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 38: De ebdomadario lectore"
                   text:@[
                       @"Mensis fratrum lectio deesse non debet, nec fortuito casu qui arripuerit codicem legere ibi, sed lecturus tota ebdomada dominica ingrediatur. Qui ingrediens post missas et communionem petat ab omnibus pro se orari, ut avertat ab ipso Deus spiritum elationis. Et dicatur hic versus in oratorio tertio ab omnibus, ipso tamen incipiente: Domine, labia mea aperies, et os meum adnuntiabit laudem tuam. Et sic accepta benedictione ingrediatur ad legendum. Et summum fiat silentium, ut nullus musitatio vel vox nisi solius legentis ibi audiatur. Quæ vero necessaria sunt comedentibus et bibentibus sic sibi vicissim ministrent fratres, ut nullus indigeat petere aliquid. Si quid tamen opus fuerit, sonitu cuiuscumque signi potius petatur quam voce. Nec præsumat ibi aliquis de ipsa lectione aut aliunde quicquam requirere, ne detur occasio; nisi forte prior pro ædificatione voluerit aliquid breviter dicere. Frater autem lector ebdomadarius accipiat mixtum, priusquam incipiat legere, propter communionem sanctam, et ne forte grave si ei ieiunium sustinere. Postea autem cum coquinæ ebdomadariis et servitoribus reficiat. Fratres autem non per ordinem legant aut cantent, sed qui ædificant audientes."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 39: De mensura cibus"
                   text:@[
                       @"Sufficere credimus ad refectionem cotidianam tam sextæ quam nonæ, omnibus mensis, cocta duo pulmentaria propter diversorum infirmitatibus, ut forte qui ex illo non potuerit edere, ex alio reficiatur. Ergo duo pulmentaria cocta fratribus omnibus sufficiant et, si fuerit unde poma aut nascentia leguminum, addatur et tertium. Panis libra una propensa sufficiat in die, sive una sit refectio sivi prandii et cenæ. Quod si cenaturi sunt, de eadem libra tertia pars a cellarario servetur reddenda cenandis. Quod si labor forte factus fuerit maior, in arbitrio et potestate abbatis erit, si expediat, aliquid augere, remota præ omnibus crapula, et ut numquam subripiat monacho indigeries; quia nihil sic contrarium est omni christiano quomodo crapula, sicut ait Dominus noster: Videte ne graventur corda vestra crapula. Pueris vero minori ætate non eadem servetur quantitas, sed minor quam maioribus, servata in omnibus parcitate. Carnium vero quadrupedum omnimodo ab omnibus abstineatur comestio, præter omnimo debiles ægrotos."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 40: De mensura potus"
                   text:@[
                       @"Unusquisque proprium habet donum ex Deo, alius sic, alius vero sic; et ideo cum aliqua scrupulositate a nobis mensura victus aliorum constituitur. Tamen infirmorum contuentes inbecillitatem, credimus eminam vini per singulos sufficere per diem. Quibus autem donat Deus tolerantiam abstinentiæ, propriam se habituros mercedem sciant. Quod si aut loci necessitas vel labor aut ardor æstatis amplius poposcerit, in arbitrio prioris consistat, considerans in omnibus ne subrepat satietas aut ebrietas. Licet legamus: Vinum omnimo monachorum non esse, sed quia nostris temporibus id monachis persuaderi non potest, saltim vel hoc consentiamus ut non usque ad satietatem bibamus, sed parcius, quia: Vinum apostatare facit etiam sapientes. Ubi autem necessitas loci exposcit, ut nec suprascripta mensura inveniri possit, sed multo minus aut ex toto nihil, benedicant Deum qui ibi habitant et non murmurent, hoc ante omnia admonentes, ut absque murmurationibus sint."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 41: Quibus horis oportet reficere fratres"
                   text:@[
                       @"A sancto Pascha usque Pentecosten ad sextam reficiant fratres et sera cenent. A Pentecosten autem tota æstate, si labores agrorum non habent monachi aut nimietas æstatis non perturbat, quarta et sexta feria ieiunent usque ad nonam; reliquis diebus ad sextam prandeant. Quam prandii sextam, si operis in agris habuerint aut æstatis fervor nimius fuerit, continuanda erit et in abbatis sit providentia. Et sic omnia temperet atque disponat, qualiter et animæ salventur et quod faciunt fratres absque iusta murmuratione faciant. Ab idus autem septembres usque caput quadragesimæ ad nonam semper reficiant. In quadragesima vero usque in Pascha ad vesperam reficiant. Ipsa tamen Vespera sic agatur, ut lucernæ lumen non indigeant reficientes, sed luce adhuc diei omnia consummentur. Sed et omni tempore, sive cena sive refectionis hora sic temperetur, ut luce fiant omnia."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 42: Ut post conpletorium nemo loquatur"
                   text:@[
                       @"Omni tempore silentium debent studere monachi, maxime tamen nocturnis horis. Et ideo omni tempore, sive ieiunii sive prandii: si tempus fuerit prandii, mox surrexerint a cena, sedeant omnes in unum, et legat unus Collationes vel Vitas Patrum aut certe aliud quod ædificet audientes, non autem Eptaticum aut Regum, quia infirmis intellectibus non erit utile illa hora hanc Scripturam audire, aliis vero horis legantur. Si autem ieiunii dies fuerit, dicta Vespera, parvo intervallo mox accedant ad lectionem Collationum, ut diximus. Et lectis quattuor aut quinque foliis vel quantum hora permittit, omnibus in unum occurentibus per hanc moram lectionis, si qui forte in adsignato sibi commisso fuit occupatus, omnes ergo in unum positi conpleant, et exeuntes a Conpletoriis nulla sit licentia denuo cuiquam loqui aliquid. Quod si inventus fuerit quisquam prævaricare hanc taciturnitatis regulam, gravi vindictæ subiaceat, excepto si necessitas hospitum supervenerit aut forte abbas alicui aliquid iusserit. Quod tamen et ipsud cum summa gravitate et moderatione honestissima fiat."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 43: De his qui ad opus Dei vel ad mensam tarde occurrunt"
                   text:@[
                       @"Ad horam divini Officii, mox auditus fuerit signus, relictis omnibus quælibet fuerint in manibus, summa cum festinatione curratur, cum gravitate tamen, ut non scurrilitas inveniat fomitem. Ergo nihil operi Dei præponatur. Quod si quis in nocturnis Vigiliis post Gloriam psalmi nonagesimi quarti, quem propter hoc omnimo subtrahendo et morose volumus dici, occurrerit, non stet in ordine suo in choro, sed ultimus omnium stet aut in loco, quem talibus neglegentibus seorsum constituerit abbas, ut videantur ab ipso vel ab omnibus, usque dum conpleto opere Dei publica satisfactione pæniteat. Ideo autem eos in ultimo aut seorsum iudicavimus debere stare ut, visi ab omnibus, vel pro ipsa verecundia sua emendent; nam si foris oratorium remaneant, erit forte talis qui se aut recollocet et dormit, aut certe sedit sibi foris vel fabulis vacat, et datur occasio maligno; sed ingrediantur intus, ut nec totum perdant et de reliquo emendent. Diurnis autem Horis, qui ad opus Dei post versum et Gloriam primi psalmi qui post versum dicitur non occurrerit, lege qua supra diximus, in ultimo stent, nec præsumant sociari choro psallentium usque ad satisfactionem, nisi forte abbas licentiam dederit remissione sua, ita tamen ut satisfaciat reus ex hoc.",
                       @"Ad mensam autem qui ante versu non occurrerit, ut simul omnes dicant versu et orent et sub uno omnes accedant ad mensam, qui per neglegentiam suam aut vitio non occurrerit, usque secunda vice pro hoc corripiatur; si denuo non emendaverit, non permittatur ad mensæ communis participationem, sed sequestratus a consortio omnium reficiat solus, sublata ei portione sua vinum, usque ad satisfactionem et emendationem. Similiter autem patiatur, qui et ad illum versum non fuerit præsens, qui post cibum dicitur. Et ne suis præsumat ante statutam horam vel postea quicquam cibi aut potus præsumere; sed et cui offertur aliquid a priore et accipere rennuit, hora qua desideravit hoc quod prius recusavit aut aliud, omnimo nihil percipiat usque emendationem congruam."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 44: De his qui excommunicantur quomodo satisfaciant"
                   text:@[
                       @"Qui pro gravibus culpis ab oratorio et a mensa excommunicantur, hora qua Opus Dei in oratorio percelebratur, ante fores oratorii prostratus iaceat nihil dicens, nisi tantum posito in terra capite, status pronus omnium de oratorio exeuntium pedibus. Et hoc tamdiu faciat, usque dum abbas iudicaverit satisfactum esse. Qui dum iussus ab abbate venerit, volvat se ipsius abbatis, deinde omnium vestigiis ut orent pro ipso. Et tunc, se iusserit abbas, recipiatur in choro vel in ordine quo abbas decreverit, ita sane, ut psalmum aut lectionem vel aliud quid non præsumat in oratorio inponere, nisi iterum abbas iubeat. Et omnibus Horis, dum perconpletur opus Dei, proiciat se in terra in loco qua stat. Et sic satisfaciat, usque dum ei iubeat iterum abbas, ut quiescat iam ab hac satisfactione. Qui vero pro levibus culpis excommunicantur tantum a mensa, in oratorio satisfaciant usque ad iussionem abbatis. Hoc perficiant usque dum benedicat et dicat: \"Sufficit\"."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 45: De his qui falluntur in oratorio"
                   text:@[
                       @"Si quis dum pronuntiat psalmum, responsorium, antefanam vel lectionem fallitus fuerit, nisi satisfactione ibi coram omnibus humiliatus fuerit, maiori vindictæ subiaceat, quippe qui noluit humilitate corrigere quod neglegentia deliquit. Infantes autem pro tali culpa vapulent."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 46: De his qui in aliis quibuslibet rebus delinquunt"
                   text:@[
                       @"Si quis dum in labore quovis, in coquina, in cellario, in ministerio, in pistrino, in horto, in arte aliqua dum laborat, vel in quocumque loco, aliquid deliquerit, aut fregerit quippiam aut perdiderit, vel aliud quid excesserit ubiubi, et non veniens continuo ante abbatem vel congregationem ipse ultro satisfecerit et prodiderit delictum suum, dum per alium cognitum fuerit, maiori subiaceat emendationi. Si animæ vero peccati causa fuerit latens, tantum abbati aut spiritualibus senioribus patefaciat, qui sciat curare et sua et aliena vulnera, non detegere et publicare."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 47: De significanda hora operis Dei"
                   text:@[
                       @"Nuntianda hora operis Dei dies noctisque sit cura abbatis; aut ipse nuntiare aut tali sollicito fratri iniungat hanc curam, ut omnia horis conpetentibus conpleantur. Psalmos autem vel antefanas post abbatem ordine suo quibus iussum fuerit inponant. Cantare autem et legere non præsumat, nisi qui potest ipsud officium implere ut ædificentur audientes; quod cum humilitate et gravitate et tremore fiat, et cui iusserit abbas."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 48: De opera manuum cotidiana"
                   text:@[
                       @"Otiositas inimica est animæ, et ideo certis temporibus occupari debent fratres in labore manuum, certis iterum horis in lectione divina. Ideoque hac dispositione credimus utraque tempore ordinari: id est: ut a Pascha usque kalendas octobres a mane exeuntes a prima usque hora pene quarta laborent quod necessarium fuerit. Ab hora autem quarta usque hora qua Sextam agent, lectioni vacent. Post Sextam autem surgentes a mensa pausent in lecta sua cum omni silentio, aut forte qui voluerit legere sibi sic legat, ut alium non inquietet. Et agatur Nonam temperius mediante octava hora, et iterum quod faciendum est operentur usque ad Vesperam. Si autem necessitas locis aut paupertas exegerit, ut ad fruges recollegendas per se occupentur, non contristentur. Quia tunc vere monachi sunt, si labore manuum suarum vivunt, sicut et Patres nostri et Apostoli. Omnia tamen mensurate fiant propter pusillanimes.",
                       @"A kalendas autem octobres usque caput quadragesimæ usque in hora secunda plena lectioni vacent; hora secunda agatur Tertia; et usque nona omnes in opus suum laborent quod eis iniungitur. Facto autem primo signo nonæ horæ, deiungant ab opera sua singuli et sint parati, dum secundum signum pulsaverit. Post refectionem autem vacent lectionibus suis aut psalmis. In quadragesimæ vero diebus, a mane usque tertia plena vacent lectionibus suis, et usque decima hora plena operentur quod eis iniungitur. In quibus diebus quadragesimæ dandi sunt. Ante omnia sane seputentur unus aut duo seniores qui circumeant monasterium horis quibus vacant fratres lectioni, et videant ne forte inveniatur frater acediosus qui vacat otio aut fabulis et non est intentus lectioni, et non solum sibi inutilis est, sed etiam alios distollit. Hic tallis si - quod absit - repertus fuerit, corripiatur semel et secundo; si non emendaverit, correptioni regulari subiaceat taliter ut ceteri timeant. Neque frater ad fratrem ingatur horis inconpetentibus.",
                       @"Dominico item die lectioni vacent omnes, excepto his qui variis officiis deputati sunt. Si quis vero ita neglegens et desidiosus fuerit, ut non velit aut non possit meditare aut legere, iniungatur ei opus quod faciat, ut non vacet. Fratribus infirmis aut delicatis talis opera aut ars iniungatur, ut nec otiosi sint nec violentia laboris opprimantur aut effungentur. Quorum inbecillitas ab abbate consideranda est."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 49: De quadragesimæ observatione"
                   text:@[
                       @"Licet omni tempore vita monachi quadragesimæ debet observationem habere, tamen quia paucorum est ista virtus, ideo suademus istis diebus quadragesimæ omni puritate vitam suam custodire, omnes pariter et neglegentias aliorum temporum his diebus sanctis diluere. Quod tunc digne fit, si ab omnibus vitiis temperamus, orationis cum fletibus, lectioni et conpunctioni cordis atque abstinentiæ operam damus. Ergo his diebus augeamus nobis aliquid solito pensu servitutis nostræ, orationes peculiares, ciborum et potus abstinentiam, et unusquisque super mensuram sibi indictam aliquid propria voluntate cum gaudio Sancti Spiritus offerat Deo, id est: subtrahat corpori suo de cibo, de potu, de loquacitate, de scurrilitate, et cum spiritalis desiderii gaudio sanctum Pascha expectet. Hoc ipsud tamen quod unusquisque offerit, abbati suo suggerat, et cum eius fiat oratione et voluntate; quia quod sine permissione patris spiritalis fit, præsumptioni deputabitur et vanæ gloriæ, non mercedi. Ergo cum voluntate abbatis omnia agenda sunt."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 50: De fratribus qui longe ab oratorio laborant aut in via sunt"
                   text:@[
                       @"Fratres qui omnimo longe sunt in labore et non possunt occurrere hora conpetenti ad oratorium - et abbas hoc perpendet quia ita est - agant ibidem opus Dei, ubi operantur, cum tremore divino flectentes genua. Similiter qui in itinere directi sunt, non eos prætereant Horæ constitutæ, sed, ut possunt, agant sibi et servitutis pensum non neglegant reddere."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 51: De fratribus qui non longe satis proficiscuntur"
                   text:@[
                       @"Frater qui pro quovis responso dirigitur et ea die speratur reverti ad monasterium, non præsumat foris manducare, etiam si omnimo rogetur a quovis, nisi forte ei ab abbate suo præcipiatur. Quod si aliter fecerit, excommunicetur."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 52: De oratorio monasterii"
                   text:@[
                       @"Oratorium hoc sit quod dicitur, nec ibi quicquam aliud geratur aut condatur. Expleto opere Dei, omnes cum summo silentio exeant, et habeatur reverentia Deo, ut frater qui forte sibi peculiariter vult orare, non inpediatur alterius inprobitate. Sed et si aliter vult sibi forte secretius orare, simpliciter intret et oret, non in clamosa voce, sed in lacrimis et intentione cordis. Ergo qui simile opus non facit, non permittatur explicito opere Dei remorari in oratorio, sicut dictum est, ne alius impedimentum patiatur."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 53: De hospitibus suscipiendis"
                   text:@[
                       @"Omnes supervenientes hospites tamquam Christus suscipiantur, quia ipse dicturus est: Hospis fui et suscepistis me. Et omnibus congruus honor exhibeatur, maxime domesticis fidei et peregrinis. Ut ergo nuntiatus fuerit hospis, occurratur ei a priore vel a fratribus cum omni officio caritatis; et primitus orent pariter, et sic sibi societur in pace. Quod pacis osculum non prius offeratur nisi oratione præmissa, propter inlusiones diabolicas. In ipsa autem salutatione omnis exhibeatur humilitas omnibus venientibus sive discedentibus hospitibus: inclinato capite vel prostrato omni corpore in terra, Christus in eis adoretur qui et suscipitur. Suscepti autem hospites ducantur ad orationem, et postea sedeat cum eis prior aut cui iusserit ipse. Legatur coram hospite Lex divina ut ædificetur, et post hæc omnis ei exhibeatur humanitas. Ieiunium a priore frangatur propter hospitem, nisi forte præcipuus sit dies ieiunii qui non possit violari; fratres autem consuetudines ieiuniorum prosequantur. Aquam in manibus abbas hospitibus det; pedes hospitibus omnibus tam abbas quam cuncta congregatio lavet; quibus lotis, hunc versum dicant: Suscepimus, Deus, misericordiam tuam in medio templi tui. Pauperum et peregrinorum maxime susceptioni cura sollicite exhibeatur, quia in ipsis magis Christus suscipitur; nam divitum terror ipse sibi exigit honorem.",
                       @"Coquina abbatis et hospitum super se sit, ut, incertis horis supervenientes hospites, qui numquam desunt monasterio, non inquietentur fratres. In qua coquina ad annum ingrediantur duo fratres qui ipsud officium bene impleant. Quibus, ut indigent, solacia administrentur, ut absque murmuratione serviant, et iterum, quando occupationem minorem habent, exeant ubi eis imperatur in opera. Et non solum ipsis, sed et in omnibus officiis monasterii ista consideratio, ut quando indigent solacia adcommodentur eis, et iterum quando vacant oboediant imperatis. Item et cellam hospitum habeat adsignatam frater cuius animam timor Dei possidet; ubi sint lecti strati sufficienter. Et domus Dei a sapientibus administretur. Hospitibus autem, cui non præcipitur, ullatenus societur neque conloquatur; sed si obviaverit aut viderit, salutatis humiliter, ut diximus, et petita benedictione pertranseat, dicens sibi non licere conloqui cum hospite."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 54: Si debeat monachus litteras vel aliquid suscipere"
                   text:@[
                       @"Nullatenus liceat monacho neque a parentibus suis neque a quoquam hominum nec sibi invicem litteras, eulogias vel quælibet munuscula accipere aut dare sine præcepto abbatis. Quod si etiam a parentibus suis ei quicquam directum fuerit, non præsumat suscipere illud, nisi prius indicatum fuerit abbati. Quod si iusserit suscipi, in abbatis sit potestate cui illud iubeat dari, et non contristetur frater, cui forte directum fuerat, ut non detur occasio diabulo. Qui autem aliter præsumpserit, disciplinæ regulari subiaceat."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 55: De vestiario vel calciario fratrum"
                   text:@[
                       @"Vestimenta fratribus secundum locorum qualitatem ubi habitant vel ærum temperiem dentur, quia in frigidis regionibus amplius indigetur, in calidis vero minus. Hæc ergo consideratio penes abbatem est. Nos tamen mediocribus locis sufficere credimus monachis per singulos cucullam et tunicam - cucullam in hieme vellosam, in æstate puram aut vetustam - et scapulare propter opera, indumenta pedum pedules et caligas. De quarum rerum omnium colore aut grossitudine non causentur monachi, sed quales inveniri possunt in provincia qua degunt aut quod vilius conparari possit. Abbas autem de mensura provideat ut non sint curta ipsa vestimenta utentibus ea, sed mensurata. Accipientes nova, vetera semper reddant in præsenti reponenda in vestiario propter pauperes. Sufficit enim monacho duas tunicas et duas cucullas habere propter noctes et propter lavare ipsas res; iam quod supra fuerit superfluum est, amputari debet. Et pedules et quodcumque est vetere reddant, dum accipiunt novum. Femolaria hii qui in via diriguntur de vestiario accipiant, quæ revertentes lota ibi restituant. Et cucullæ et tunicæ sint aliquanto a solito quas habent modice meliores; quas exeuntes in via accipiant de vestiario et revertentes restituant.",
                       @"Stramenta autem lectorum sufficiant matta, sagum et lena et capitale. Quæ tamen lecta frequenter ab abbate scrutinanda sunt propter opus peculiare, ne inveniatur. Et si cui inventum fuerit quod ab abbate non accepit, gravissimæ disciplinæ subiaceat. Et ut hoc vitium peculiaris radicitus amputetur, dentur ab abbate omnia quæ sunt necessaria: id est cuculla, tunica, pedules, caligas, bracile, cultellum, grafium, acum, mappula, tabulas, ut omnis auferatur necessitatis excusatio. A quo tamen abbate semper consideretur illa sententia Actuum Apostolorum, quia: Dabatur singulis prout cuique opus erat. Ita ergo et abbas consideret infirmitates indigentium, non malam voluntatem invidentium. In omnibus tamen iudiciis Dei retributionem cogitet."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 56: De mensa abbatis"
                   text:@[
                       @"Mensa abbatis cum hospitibus et peregrinis sit semper. Quotiens tamen minus sunt hospites, quos vult de fratribus vocare in ipsius sit potestate. Seniorem tamen unum aut duo semper cum fratribus dimittendum propter disciplinam."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 57: De artificibus monasterii"
                   text:@[
                       @"Artifices si sunt in monasterio cum omni humilitate faciant ipsas artes, si permiserit abbas. Quod si aliquis ex eis extollitur pro scientiæ artis suæ, eo quod videatur aliquid conferre monasterio, hic talis erigatur ab ipsa arte et denuo per eam non transeat, nisi forte humiliato ei iterum abbas iubeat. Si quid vero ex operibus artificum venundandum est, videant ipsi per quorum manum transigendam sint, ne aliquam fraudem præsumant. Memorentur semper Ananiæ et Safiræ, ne forte mortem quam illi in corpore pertulerunt, hanc isti vel omnes qui aliquam fraudem de rebus monasterii fecerint, in anima patiantur. In ipsis autem pretiis non subripiat avaritiæ malum, sed semper aliquantulum vilius detur quam ab aliis sæcularibus dari potest, ut in omnibus glorificetur Deus."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 58: De disciplina suscipiendorum fratrum"
                   text:@[
                       @"Noviter veniens quis ad conversationem, non ei facilis tribuatur ingressus, sed sicut ait Apostolus: Probate spiritus si ex Deo sunt. Ergo si veniens perseveraverit pulsans et inlatas sibi iniurias et difficultatem ingressus post quattuor aut quinque dies visus fuerit patienter portare et persistere petitioni suæ, annuatur ei ingressus et sit in cella hospitum paucis diebus. Postea autem sit in cella noviciorum ubi meditent et manducent et dormiant. Et senior eis talis deputetur qui aptus sit ad lucrandas animas, qui super eos omnimo curiose intendat. Et sollicitudo sit si revera Deum quærit, si sollicitus est ad opus Dei, ad oboedientiam, ad obprobria. Prædicentur ei omnia dura et aspera per quæ itur ad Deum. Si promiserit de stabilitatis suæ perseverentia, post duorum mensuum circulum legatur ei hæc regula per ordinem, et dicatur ei: «Ecce lex sub qua militare vis; si potes observare, ingredere; si vero non potes, liber discede». Si adhuc steterit, tunc ducatur in supradictam cellam noviciorum et iterum probetur in omni patientia. Et post sex mensuum circuitum legatur ei regula, ut sciat ad quod ingreditur. Et si adhuc stat, post quattuor menses iterum relegatur ei eadem regula. Et si habita secum deliberatione promiserit se omnia custodire et cuncta sibi imperata servare, tunc suscipiatur in congregatione, sciens et lege regulæ constitutum quod ei ex illa die non liceat egredi monasterio, nec collum excutere de sub iugo regulæ quem sub tam morosam deliberationem licuit aut excusare aut suscipere.",
                       @"Suscipiendus autem in oratorio coram omnibus promittat de stabilitate sua et conversatione morum suorum et oboedientia, coram Deo et sanctis eius, ut si aliquando aliter fecerit, ab eo se damnandum sciat quem inridit. De qua promissione sua faciat petitionem ad nomen sanctorum quorum reliquiæ ibi sunt et abbatis præsentis. Quam petitionem manu sua scribat, aut certe, si non scit litteras, alter ab eo rogatus scribat et ille novicius signum faciat et manu sua eam super altare ponat. Quam dum inposuerit, incipiat ipse novicius mox hunc versum: Suscipe me, Domine, secundum eloquium tuum et vivam, et ne confundas me ab expectatione mea. Quem versum omnis congregatio tertio respondeat, adiungentes: Gloria Patri. Tunc ille frater novicius prosternatur singulorum pedibus ut orent pro eo; et iam ex illa die in congregatione reputetur. Res si quas habet, aut eroget prius pauperibus aut facta sollemniter donatione conferat monasterio, nihil sibi reservans ex omnibus, quippe qui ex illo die nec proprii corporis potestatem se habiturum scit. Mox ergo in oratorio exuatur rebus propriis quibus vestitus est, et induatur rebus monasterii. Illa autem vestimenta quibus exutus est reponatur in vestiario conservanda, ut si aliquando suadenti diabulo consenserit ut egrediatur de monasterio - quod absit - tunc exutus rebus monasterii proiciatur. Illam tamen petitionem eius, quam desuper altare abbas tulit, non recipiat, sed in monasterio reservetur."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 59: De filiis nobilium aut pauperum qui offeruntur"
                   text:@[
                       @"Si quis forte de nobilibus offerit filium suum Deo in monasterio, si ipse puer minor ætate est, parentes eius faciant petitionem quam supra diximus, et cum oblatione ipsam petitionem et manum pueri involvant in palla altaris, et sic eum offerant. De rebus autem suis aut in præsenti petitione promittant sub iureiurando, quia numquam per se, numquam per suffectam personam nec quolibet modo ei aliquando aliquid dant aut tribuunt occasionem habendi; vel certe si hoc facere noluerint et aliquid offere volunt in elemosinam monasterio pro mercede sua, faciant ex rebus quas dare volunt monasterio donationem, reservato sibi, si ita voluerint usum fructum. Atque ita omnia obstruantur ut nulla suspicio remaneat puero per quam deceptus perire possit - quod absit - quod experimento didicimus. Similiter autem et pauperiores faciant. Qui vero ex toto nihil habent, simpliciter petitionem faciant et cum oblatione offerant filium suum coram testibus."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 60: De sacerdotibus qui forte voluerint in monasterio habitare"
                   text:@[
                       @"Si quis de ordine sacerdotum in monasterio se suscipi rogaverit, non quidem citius ei adsentiatur. Tamen, si omnimo persteterit in hac supplicatione, sciat se omnem regulæ disciplinam servaturum, nec aliquid ei relaxabitur, ut sicut scriptum est: Amice, ad quod venisti? Concedatur ei tamen post abbatem stare et benedicere aut missas tenere, si tamen iusserit ei abbas. Sin alias, ullatenus aliqua præsumat, sciens se disciplinæ regulari subditum, et magis humilitatis exempla omnibus det. Et si forte ordinationis aut alicuius rei causa fuerit in monasterio, illum locum adtendat quando ingressus est in monasterio, non illum qui ei pro reverentia sacerdotii concessus est. Clericorum autem si quis eodem desiderio monasterio sociari voluerit, loco mediocri conlocentur; et ipsi tamen si promittunt de observatione regulæ vel propria stabilitate."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 61: De monachis peregrinis qualiter suscipiantur"
                   text:@[
                       @"Si quis monachus peregrinus de longiquis provinciis supervenerit, si pro hospite voluerit habitare in monasterio et contentus fuerit consuetudinem loci quam invenerit, et non forte superfluitate sua perturbat monasterium, sed simpliciter contentus est quod invenerit, suscipiatur quanto tempore cupit. Si qua sane rationabiliter et cum humilitate caritatis reprehendit aut ostendit, tractet abbas prudenter ne forte pro hoc ipsud eum Dominus direxerit. Si vero postea voluerit stabilitatem suam firmare, non rennuatur talis voluntas, et maxime quia tempore hospitalitatis potuit eius vita dinosci.",
                       @"Quod si superfluus aut vitiosus inventus fuerit tempore hospitalitatis, non solum non debet sociari corpori monasterii, verum etiam dicatur ei honeste ut discedat, ne eius miseria etiam alii vitientur. Quod si non fuerit talis qui mereatur proici, non solum si petierit, suscipiatur congregationi sociandus, verum etiam suadeatur ut stet, ut eius exemplo alii erudiantur, et quia in omni loco uni Domino servitur, uni Regi militatur. Quem si etiam talem esse perspexerit abbas, liceat eum in superiori aliquantum constituere loco. Non solum autem monachum, sed etiam de suprascriptis gradibus sacerdotum vel clericorum stabilire potest abbas in maiori quam ingrediuntur loco, si eorum talem perspexerit esse vitam. Caveat autem abbas, ne aliquando de alio noto monasterio monachum ad habitandum suscipiat sine consensu abbatis eius aut litteras commendaticias, quia scriptum est: Quod tibi non vis fieri, alio ne feceris."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 62: De sacerdotibus monasterii"
                   text:@[
                       @"Si quis abbas sibi presbyterum vel diaconem ordinari petierit, de suis elegat qui dignus sit sacerdotio fungi. Ordinatus autem caveat elationem aut superbiam, nec quicquam præsumat nisi quod ei ab abbate præcipitur, sciens se multo magis disciplinæ regulari subdendum. Nec occasione sacerdotii obliviscatur regulæ oboedientiam et disciplinam sed magis ac magis in Deum proficiat. Locum vero illum semper adtendat quod ingressus est in monasterio, præter officium altaris, et si forte electio congregationis et voluntas abbatis pro vitæ merito eum promovere voluerint. Qui tamen regulam decanis vel præpositis constitutam sibi servare sciat. Quod si aliter præsumpserit, non sacerdos sed rebellio iudicetur. Et sæpe admonitus si non correxerit, etiam episcopus adhibeatur in testimonio. Quod si nec sic emendaverit, clarescentibus culpis, proiciatur de monasterio, si tamen talis fuerit eius contumacia ut subdi aut oboedire regulæ nolit."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 63: De ordine congregationis"
                   text:@[
                       @"Ordines suos in monasterio ita conservent ut conversationis tempus, ut vitæ meritum discernit atque abbas constituerit. Qui abbas non conturbet gregem sibi commissum nec, quasi libera utens potestate, iniuste disponat aliquid, sed cogitet semper quia de omnibus iudiciis et operibus suis redditurus est Deo rationem. Ergo secundum ordines suos quos constituerit vel quos habuerint ipsi fratres, sic accedant ad pacem, ad communionem, ad psalmum inponendum, in choro standum. Et in omnibus omnimo locis ætas non discernat ordines nec præiudicet, quia Samuhel et Danihel pueri presbyteros iudicaverunt. Ergo, excepto hos quos, ut diximus, altiori consilio abbas prætulerit vel degradaverit certis ex causis, reliqui omnes ut convertuntur ita sint ut verbi gratia qui secunda hora diei venerit in monasterio iuniorem se noverit illius esse qui prima hora venit diei, cuiuslibet ætatis aut dignitatis sit. Pueris per omnia ab omnibus disciplina conservata.",
                       @"Iuniores igitur priores suos honorent, priores minores suos diligant. In ipsa appellatione nominum nulli liceat alium puro appellare nomine, sed proiores iuniores suos fratrum nomine, iuniores autem priores suos nonnos vocent, quod intelligitur paterna reverentia. Abbas autem, quia vices Christi creditur agere, dominus et abbas vocetur, non sua adsumptione sed honore et amore Christi; ipse autem cogitet et sic se exhibeat ut dignus sit tali honore. Ubicumque autem sibi obviant fratres, iunior priorem benedictionem petat. Transeunte maiore minor surgat et det ei locum sedendi, nec præsumat iunior consedere nisi ei præcipiat senior suus, ut fiat quod scriptum est: Honore invicem prævenientes. Pueri parvi vel adulescentes in oratorio vel ad mensas cum disciplina ordines suos consequantur. Foris autem vel ubiubi, et custodiam habeant et disciplinam, usque dum ad intellegibilem ætatem perveniant."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 64: De ordinando abbate"
                   text:@[
                       @"In abbatis ordinatione illa semper consideretur ratio, ut hic constituatur quem sibi omnis concors congregatio secundum timorem Dei, sive etiam pars quamvis parva congregationis saniore consilio elegerit. Vitæ autem merito et sapientiæ doctrina elegatur qui ordinandus est, etiam si ultimus fuerit in ordine congregationis. Quod si etiam omnis congregatio vitiis suis - quod quidem absit - consentientem personam pari consilio elegerit, et vitia ipsa aliquatenus in notitia episcopi ad cuius diocesim pertinet locus ipse vel ab abbates aut christianos vicinos claruerint, prohibeant pravorum prævalere consensum, sed domui Dei dignum constituant dispensatorem, scientes pro hoc se recepturos mercedem bonam, si illud caste et zelo Dei faciant, sicut e diverso peccatum si neglegant.",
                       @"Ordinatus autem abbas cogitet semper, quale onus suscepit et cui redditurus est rationem vilicationis suæ, sciatque sibi oportere prodesse magis quam præesse. Oportet ergo eum esse doctum Lege divina, ut sciat et si unde proferat nova et vetera, castum, sobrium, misericordem, et semper superexaltet misericordiam iudicio, ut idem ipse consequatur. Oderit vitia, diligat fratres. In ipsa autem correptione prudenter agat et ne quid nimis, ne dum nimis eradere cupit æruginem frangatur vas. Suamque fragilitatem semper suspectus sit, memineritque calamum quassatum non conterendum. In quibus non dicimus ut permittat nutriri vitia, sed prudenter et cum caritate ea amputet, ut viderit cuique expedire sicut iam diximus, et studeat plus amari quam timeri. Non sit turbulentus et anxius, non sit nimius et obstinatus, non sit zelotipus et nimis suspiciosus, quia numquam requiescit. In ipsis imperiis suis providus et consideratus, et sive secundum Deum sive secundum sæculum sit opera quam iniungit, discernat et temperet, cogitans discretionem sancti Iacob dicentis: Si gerges meos plus in ambulando fecero laborare, morientur cuncti una die. Hæc ergo aliaque testimonia discretionis matris virtutum sumens, sic omnia temperet ut sit et fortes quod cupiant et infirmi non refugiant. Et præcipue ut præsentem regulam in omnibus conservet, ut dum bene ministraverit audiat a Domino quod servus bonus qui erogavit triticum conservis in tempore suo: Amen dico vobis, ait, super omnia bona sua constituit eum."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 65: De præposito monasterii"
                   text:@[
                       @"Sæpius quidem contigit, ut per ordinationem præpositi sandala gravia in monasteriis oriantur, dum sint aliqui maligno spiritu superbiæ inflati et æstimantes se secundos esse abbates, adsumentes sibi tyrannidem, scandala nutriunt et dissensiones in congregationes faciunt, et maxime in illis locis ubi ab eodem sacerdote vel ab eis abbatibus qui abbatem ordinant ab ipsis etiam et præpositus ordinatur. Quod quam sit absurdum facile advertitur, quia ab ipso initio ordinationis materia ei datur superbiendi, dum ei suggeritur a cogitationibus suis exutum eum esse a potestate abbatis sui, quia ab ipsis es tu ordinatus a quibus et abbas. Hinc suscitantur invidiæ, rixæ, detractiones, æmulationes, dissensiones, exordinationes, ut dum contraria sibi abbas præpositusque sentiunt, et ipsorum necesse est sub hanc dissensionem animas periclitari, et hii qui sub ipsi sunt, dum adulantur partibus, eunt in perditionem. Cuius periculi malum illos respicit in capite qui talius inordinationis se fecerunt auctores.",
                       @"Ideo nos vidimus expedire propter pacis caritatisque custodiam in abbatis pendere arbitrio ordinationem monasterii sui. Et si potest fieri per decanos ordinetur, ut ante disposuimus, omnis utilitas monasterii, prout abbas disposuerit, ut dum pluribus committitur, unus non superbiat. Quod si aut locus expetit aut congregatio petierit rationabiliter cum humilitate et abbas iudicaverit expedire, quemcumque elegerit abbas cum consilio fratrum timentium Deum ordinet ipse sibi præpositum. Qui tamen præpositus illa agat cum reverentia quæ ab abbate suo et iniuncta fuerint, nihil contra abbatis voluntatem aut ordinationem faciens, quia quantum prælatus est ceteris, ita eum oportet sollicitius observare præcepta regulæ. Qui præpositus si repertus fuerit vitiosus aut elatione deceptus superbire, aut contemptor sanctæ regulæ fuerit conprobatus, admoneatur verbis usque quater. Si non emendaverit, adhibeatur ei correptio disciplinæ regularis. Quod si neque sic correxerit, tunc deiciatur de ordine præposituræ et alius qui dignus est in loco eius subrogetur. Quod si et postea in congregatione quietus et oboediens non fuerit, etiam de monasterio pellatur. Cogitet tamen abbas se de omnibus iudiciis suis Deo reddere rationem, ne forte invidiæ aut zeli flamma urat animam."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 66: De hostiariis monasterii"
                   text:@[
                       @"Ad portam monasterii ponatur senes sapiens, qui sciat accipere responsum et reddere, et cuius maturitas eum non sinat vacari. Qui portarius cellam debebit habere iuxta portam, ut venientes semper præsentem inveniant a quo responsum accipiant. Et mox ut aliquis pulsaverit aut pauper clamaverit, «Deo gratias» respondeat aut «Benedic», et cum omni mansuetudine timoris Dei reddat responsum festinanter cum fervore caritatis. Qui portarius si indiget solacio iuniorem fratrem accipiat. Monasterium autem, si possit fieri, ita debet constitui ut omnia necessaria, id est aqua, molendinum, hortum vel artes diversas intra monasterium exerceantur, ut non sit necessitas monachis vagandi foris, quia omnimo non expedit animabus eorum.Hanc autem regulam sæpius volumus in congregatione legi, ne quis fratrum se de ignorantia excuset."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 67: De fratribus in viam directis"
                   text:@[
                       @"Dirigendi fratres in via omnium fratrum vel abbatis se orationi conmendent, et semper ad orationem ultimam operis Dei commemoratio omnium absentum fiat. Revertentes autem de via fratres ipso die quo redeunt per omnes canonicas horas, dum expletur opus Dei, prostrati solo oratorii ab omnibus petant orationem propter excessos, ne qui forte subripuerint in via visus aut auditus malæ rei aut otiosi sermonis. Nec præsumat quisquam referre alio quæcumque foris monasterium viderit aut audierit, quia plurima destructio est. Quod si quis præsumpserit, vindictæ regulari subiaceat. Similiter et qui præsumpserit claustra monasterii egredi vel quocumque ire vel quippiam quamvis parvum sine iussione abbatis facere."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 68: Si fratri inpossibilia iniungantur"
                   text:@[
                       @"Si cui fratri aliqua forte gravia aut inpossibilia iniunguntur suscipiat quidem iubentis imperium cum omni mansuetudine et oboedientia. Quod si omnimo virium suarum mensuram viderit pondus oneris excedere, inpossibilitatis suæ causas ei qui sibi præest patienter et oportune suggerat, non superbiendo aut resistendo vel contradicendo. Quod si post suggestionem suam in sua sententia prioris imperium perduraverit, sciat iunior ita sibi expedire, et ex caritate, confidens de adiutorio Dei, oboediat."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 69: Ut in monasterio non præsumat alter alterum defendere"
                   text:@[
                       @"Præcavendum est ne quavis occasione præsumat alter alium defendere monachum in monasterio aut quasi tueri, etiam si qualivis consanguinitatis propinquitate iungantur. Nec quolibet modo id a monachis præsumatur, quia exinde gravissima occasio scandalorum oriri potest. Quod si quis hæc transgressus fuerit, acrius coerceatur."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 70: Ut non præsumat passim aliquis cædere"
                   text:@[
                       @"Vitetur in monasterio omnis præsumptionis occasio; atque constituimus ut nulli liceat quemquam fratrum suorum excommunicare aut cædere, nisi cui potestas ab abbate date fuerit. Peccantes autem coram omnibus arguantur ut ceteri metum habeant. Infantum vero usque quindecim annorum ætates disciplinæ diligentia ab omnibus et custodia sit; sed et hoc cum omni mensura et ratione. Nam in fortiori ætate qui præsumit aliquatenus sine præcepto abbatis vel in ipsis infantibus sine discretione exarserit, disciplinæ regulari subiaceat, quia scriptum est: Quod tibi non vis fieri, alio ne feceris."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 71: Ut oboedientes sibi sint invicem"
                   text:@[
                       @"Oboedientiæ bonum non solum abbati exhibendum est ab omnibus, sed etiam sibi invicem ita oboediant fratres, scientes per hanc oboedientiæ viam se ituros ad Deum. Præmisso ergo abbatis aut præpositorum qui ab eo constituuntur imperio, cui non permittimus privata imperia præponi, de cetero omnes iuniores prioribus suis omni caritate et sollicitudine oboediant. Quod si quis contentiosus repperitur, corripiatur. Si quis autem frater pro quavis minima causa ab abbate vel a quocumque priore corripitur quolibet modo, vel si leviter senserit animos prioris cuiuscumque contra se iratos vel commotos quamvis modice, mox sine mora tamdiu prostratus in terra ante pedes eius iaceat satisfaciens, usque dum benedictione sanetur illa commotio. Quod si contempserit facere, aut corporali vindictæ subiaceat aut, si contumax fuerit, de monasterio expellatur."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 72: De zelo bono quod debent monachi habere"
                   text:@[
                       @"Sicut est zelus amaritudinis malus qui separat a Deo et ducit ad infernum, ita est zelus bonus qui separat a vitia et ducit ad Deum et ad vitam æternam. Hunc ergo zelum ferventissimo amore exerceant monachi, id est ut honore se invicem præveniant, infirmitates suas sive corporum sive morum patientissime tolerent, oboedientiam sibi certatim inpendant: nullus quod sibi utile iudicat sequatur, sed quod magis alio; caritatem fraternitatis caste inpendant. Amore Deum timeant. Abbatem suum sincera et humili caritate diligant. Christo omnimo nihil præponant, qui nos pariter ad vitam æternam perducat."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput 73: De hoc quod non omnis iustitiæ observatio in hac sit regula constituta"
                   text:@[
                       @"Regulam autem hanc descripsimus, Regulam autem hanc descripsimus, ut hanc observantes in monasteriis aliquatenus vel honestatem morum aut initium conversationis nos demonstremus habere. Ceterum ad perfectionem conversationis qui festinat, sunt doctrinæ sanctorum Patrum, quarum observatio perducat hominem ad celsitudinem perfectionis. Quæ enim pagina aut qui sermo divinæ auctoritatis Veteris ac Novi Testamenti non est rectissima norma vitæ humanæ? Aut quis liber sanctorum catholicorum Patrum hoc non resonat ut recto cursu perveniamus ad Creatorem nostrum? Necnon et Collationes Patrum et Instituta et Vitas eorum, sed et regula sancti Patris nostri Basilii, quid aliud sunt nisi bene viventium et oboedientium monachorum instrumenta virtutum? Nobis autem desidiosis et male viventibus atque neglegentibus rubor confusionis est. Quisquis ergo ad patriam cælestem festinas, hanc minimam inchoationis regulam descriptam adiuvante Christo perfice; et tunc demum ad maiora, quæ supra commemoravimus, doctrinæ virtutumque culmina Deo protegente pervenies. Amen."
                   ]]
              ]]
         ]],
        [[Source alloc]
         initWithTitle:@"Alcuin of York"
         subtitle:@"An English scholar, clergyman, poet, and teacher. Named \"the most learned man anywhere to be found\" by a well known contemporary. Known to have written many theological treatises, many poems and a handful of other works."
         date:@"circa 735-804"
         works:@[
             [[Work alloc]
              initWithTitle:@"Concerning a Nightingale"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Luscinia"
                   text:@[
                       @"Quae te dextra mihi rapuit, luscinia, ruscis,\nilla meae fuerat invida laetitiae.",
                       @"Tu mea dulcisonis implesti pectora musis,\natque animum moestum carmine mellifluo.",
                       @"Qua propter veniant volucrum simul undique coetus\n carmine te mecum plangere Pierio.",
                       @"Spreta colore tamen fueras non spreta canendo.",
                       @"Lata sub angusto gutture vox sonuit,\ndulce melos iterans vario modulamine Musae,\natque creatorem semper in ore canens.",
                       @"Noctibus in furvis nusquam cessavit ab odis,\nvox veneranda sacris, o decus atque decor.",
                       @"Quid mirum, cherubim, seraphim si voce tonantem\nperpetua laudent, dum tua sic potuit?"
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Lines of the Cuckoo"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Versus de Cuculo"
                   text:@[
                       @"Heu, cuculus nobis fuerat cantare suetus,\nquae te nunc rapuit hora nefanda tuis?",
                       @"Heu, cuculus, cuculus, qua te regione reliqui,\ninfelix nobis illa dies fuerat.",
                       @"Omne genus hominum cuculum conplangat ubique,\nperditus est cuculus, heu, perit ecce meus.",
                       @"Non pereat cuculus, veniet sub tempore veris,\net nobis veniens carmina laeta ciet.",
                       @"Quis scit, si veniat; timeo, est summersus in undis,\nvorticibus raptus atque necatus aquis.",
                       @"Heu mihi, si cuculum Bachus dimersit in undis,\nqui rapiet iuvenes vortice pestifero.",
                       @"Si vivat, redeat, nidosque recurrat ad almos,\nnec corvus cuculum dissecet ungue fero.",
                       @"Heu quis te, cuculus, nido rapit ecce paterno?",
                       @"Heu, rapuit, rapuit, nescio si venias.",
                       @"Carmina si curas, cuculus, citus ecce venito,\necce venito, precor, ecce venito citus.",
                       @"Non tardare, precor, cuculus, dum currere possis,\nte Dafnis iuvenis optat habere tuus.",
                       @"Tempus adest veris, cuculus modo rumpe soporem,\nte cupit, en, senior atque Menalca pater.",
                       @"En tondent nostri librorum prata iuvenci,\nsolus abest cuculus, quis, rogo, pascit eum?",
                       @"Heu, male pascit eum Bachus, reor, impius ille,\nqui sub cuncta cupit vertere corda mala.",
                       @"Plangite nunc cuculum, cuculum nunc plangite cuncti\nille recessit ovans, flens redit ille, puto.",
                       @"Opto tamen, flentem cuculum habeamus ut illum,\net nos plangamus cum cuculo pariter.",
                       @"Plange tuos casus lacrimis, puer inclite, plange,\net casus plangunt viscera tota tuos.",
                       @"Si non dura silex genuit te, plange, precamur,\nte memorans ipsum plangere forte potes.",
                       @"Dulcis amor nati cogit deflere parentem,\nnatus ab amplexu dum rapitur subito.",
                       @"Dum frater fratrem germanum perdit amatum,\nquid nisi idem faciat, semper et ipse fleat.",
                       @"Tres olim fuimus, iunxit quos spiritus unus,\nvix duo nunc pariter, tertius ille fugit.",
                       @"Heu fugiet, fugiet planctus quapropter amarus\nnunc nobis restat, carus abit cuculus.",
                       @"Carmina post illum mittamus, carmina luctus,\ncarmina deducunt forte, reor, cuculum.",
                       @"Sis semper felix utinam, quocunque recedas,\nsis memor et nostri, semper ubique vale."
                   ]]
              ]]
         ]],
        [[Source alloc]
         initWithTitle:@"Book to the Knights of the Temple, in Praise of the New Knighthood"
         subtitle:@"Written by Saint Bernard of Clairvaux addressing the newly formed Knights Templar of Jerusalem, a group of warrior-monks charged with defending Christianity. There existed doubt about the religious justification of combat monks, leading to low morale. The Book praises the Templars as a higher class of knight, important guardians of holy Christian sites; not bound by vices or distracted by worldly things."
         date:@"1120-1136"
         works:@[
             [[Work alloc]
              initWithTitle:@"Liber ad Milites Templi de Laude Novae Militiae"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Admonitio in Opusculum VI"
                   text:@[
                       @"1. Liber subjectus in codicibus antiquis hunc praefert titulum, \"Incipit prologus sancti Bernardi abbatis in libello ad Milites Templi:\" et post prologum, \"Incipiunt capitula de laude novae Militiae:\" quae omnino sunt tredecim, ut in editis nostris, ubi titulos ex mente auctoris retinuimus. Liber iste a Gaufrido in libro tertio de Vita Bernardi, capite octavo, \"Exhortatorius sermo ad Milites Templi\" vocatur. \"Quam vero fidelis,\" inquit, \"cujuslibet piae conversationis commendator exstiterit et adjutor, exhortatorius ad Milites Templi Sermo declarat.\" Ita ergo hujusce libri titulus institui potest: \"Liber ad Milites Templi, de laude novae Militiae.\"",
                       @"2. \"Hugoni\" tamen \"militi Christi et magistro Militiae Christi\" inscriptus est prologus: sed perinde est Magistro Militiae, atque omnibus Militibus librum nuncupasse. Dicti sunt Fratres Templi ex eo, quod concessu Balduini regis juxta Templum Domini primo consederint, teste Guillelmo archiepiscopo Tyrensi in libro duodecimo, capite septimo, ubi eorum originem describit ad annum 1118. \"Eodem anno,\" inquit, \"quidam nobiles viri de equestri ordine, Deo devoti, religiosi, et timentes Deum, in manu domini patriarchae Christi servitio se mancipantes, more canonicorum regularium, in castitate, et obedientia, et sine proprio, velle perpetuo vivere professi sunt. Inter quos primi et praecipui fuerunt viri venerabiles, Hugo de Paganis, et Gaufredus de Sancto-Aldemaro: quibus quoniam neque ecclesia erat, neque certum habebant domicilium, Rex in palatio, quod secus Templum Domini ad australem habet partem, eis ad tempus concessit habitaculum. Prima autem eorum professio, quodque eis a domino patriarcha et aliis episcopis in remissionem peccatorum injunctum est, ut vias et itinera, maxime ad salutem peregrinorum, contra latronum et incursantium insidias, pro viribus conservarent.\" Haec de Militum Templi origine, quibus primus Magister praefectus est praedictus Hugo de Paganis, quem idem Guillelmus Tyrensis magistrum militiae Templi primum vo cat in libri decimi tertii capite vigesimo sexto. \"Hugoni sanctae militiae Priori\" inscripta est Guigonis Carthusiae praepositi epistola secunda. Iste est Hugo, cui Bernardus sequentem librum nuncupavit, distinguendus utique ab altero Hugone, qui ex comite Campaniae miles Templi factus est, testante Bernardi epistola trigesima prima ipsi directa. Porro Hugoni de Paganis primo militiae Magistro successit \"miles eximius et in armis strenuus, nobilis carne et moribus, dominus Robertus, cognomine Burgundio, natione Aquitanicus,\" et quidem sub annum 1136, ut colligitur ex Guillelmo Tyrensi in libri decimi quinti capite sexto, qui item de eodem agit initio libri decimi septimi. Roberto suffectus videtur Ebrardus, cui Petrus Venerabilis scribit epistolam, quae est libri sexti epistola vigesima sexta.",
                       @"3. Quo anno scriptus sit iste liber, non facile dixerim. Id factum constat Ordine jam plurimum aucto, et militum numero multiplicato. Bernardi verba hoc probant n. 10: \"Haec Jerosolymis actitantur, et orbis excitatur. Audiunt insulae, et attendunt populi de longe, et ebulliunt ab Oriente et Occidente. Quodque cernitur jucundius, et agitur commodius, paucos admodum in tanta multitudine hominum illo confluere videas, nisi utique sceleratos,\" etc. Atqui ante consilium Trecense, id est ante annum 1127, novem tantum erant ejus instituti Milites, ut ex Guillelmo mox videbimus. Vix ergo ante annum 1132, hic liber compositus dici potest, sed tamen ante annum 1136, quo fere anno Robertus magister Hugoni successit.",
                       @"4. Templariorum Regulam ex codice Victorino typis mandavit Miraeus, eamque Chronico Cisterciensi inseruit, \"utpote a sancto Bernardo,\" inquit, \"abbate Clarae-Vallensi, ut ex prologo patet, dictatam.\" Regula haec totidem capitulis, quot Regula sancti Benedicti, ex qua magna ex parte de verbo sumpta est, constat, id est capitulis septuaginta duobus. Sic vero inscribitur ante prologum: Regula pauperum commilitonum Christi Templique Salomonici.\" Manricus ad annum 1128, cap. 2, hanc Regulam Bernardo auctori cum Miraeo tribuit, ad idque probandum duo loca adduxit ex prologo. Primus locus sic habet: \"Sane autem prorsus licet nostri dictaminis auctoritatem permaximus numerus religiosorum Patrum, qui in illo concilio divina admonitione convenerunt, commendat; non debemus silenter transire, quibus videntibus et veras sententias proferentibus, ego Joannes Michaelensis praesentis paginae, jussu concilii ac venerabilis abbatis Clarae-Vallensis, cui creditum ac debitum hoc erat, humilis scriba esse divina gratia merui.\" Verum haec verba non significant ullam Regulam a Bernardo pro Templariis fuisse compositam: sed eum in Joannem Michaelensem rejecisse impositum sibi scribae officium. Neque quidquam amplius conficitur ex sequentibus verbis, quae post enumerationem Patrum Trecensis concilii hoc modo referuntur: \"Ipse vero magister militiae, Hugo nomine, revera non defuit, et quosdam de fratribus suis secum habuit, verbi gratia F. Godefridum F. Rovallum, F. Gaufridum Bisol, F. Paganum de Monte-Desiderii, Archembaudum de Sancto-Aniano. Iste vero magister Hugo cum istis discipulis modum et observantiam exiguae inchoationis sui militaris Ordinis, qui ab illo qui dicit, Ego principium qui et loquor vobis, sumpsit exordium, juxta memoriae suae notitiam supra nominatis Patribus intimavit. Placuit itaque concilio, ut consilium ibi lima et consideratione divinarum Scripturarum diligenter e\xaminatum, tamen cum providentia Papae Romanorum ac Patriarchae Jerosolymitarum, necnon etiam assensu capituli pauperum commilitonum templi quod est in Jerusalem, scripto commendaretur, et inenodabiliter servaretur.\" Quibus verbis in tantum a Patribus sancitum fuisse intelligimus, ut Militibus Regula ex eorum consensu, consultis Romano Pontifice et Patriarcha Jerosolymitano, praescriberetur: sed Bernardus ejus auctor nequaquam asseritur. Quinimo Albericus Ordinis Cisterciensis eisdem Militibus Regulam sancti Augustini impositam scribit. Unde in Monastico Anglicano ad Ordinem sancti Augustini revocantur. Permirum esset, si Albericus Trium-Fontium haud longe a Clara-Valle monachus Cisterciensis, hanc Bernardi Regulam ignorasset, et pro illa Militibus, qui ejus tempore supererant, aliam tribuisset. Guillelmus Tyrensis episcopus in jam dicti libri duodecimi capite septimo tradit, eisdem Militibus, qui ante concilium Trecense \"nonnisi novem erant, de mandato domini Honorii papae et domini Stephani Jerosolymitani patriarchae, fuisse institutam Regulam, et album habitum assignatum,\" cum antea vulgari usi essent. \"Postmodum vero tempore domini Eugenii papae, ut dicitur, cruces de panno rubeo mantellis suis coeperunt assuere,\" tam equites, \"quam eorum Fratres qui dicuntur Servientes. Quorum res adeo crevit in immensum, ut hodie,\" inquit Guillelmus, \"trecentos plus minusve in conventu habeant equites, albis chlamydibus indutos, exceptis Fratribus.\" Ex his postremis verbis conjicimus, Regulam illam, quae Bernardo auctori tribuitur, nonnisi post Guillelmum Tyrensem scriptam fuisse: quandoquidem in capite vigesimo primo notantur quidam \"pseudofratres ex Ultramontanis partibus, mentientes se esse de Templo;\" et quaedam apud ipsos Milites \"sine discretione ac consilio communis capituli succrevisse penitus amputanda\" arguuntur, nempe quod \"habebant olim famuli et armigeri alba vestimenta, unde veniebant damna importabilia,\" Nullum vero capitulum generale Templariorum fuit ante concilium Trecense: nullus antea peculiaris Militum habitus, sed vulgaris. Albus eis concessus est a Patribus concilii, exceptis Servientibus. Plane vel ex his solis verbis intelligitur, hoc saltem capitulum longe post tempus concilii fuisse adscriptum. Capitulum septimum \"standum divinum officium audiri\" non solum non laudat, sed etiam vituperat, statuitque audiri sedendo: quod sane statutum in Bernardi mentem non venisset. In capitulo quinquagesimo sexto statuitur, \"ut amplius sorores non habeantur:\" quod arguit non fuisse recens institutum. An Joannes Michaelensis istius Regulae auctor sit aliis judicandum relinquo. Illud in ea observatu non indignum, quod \"collatio\" pro coenula jejuniorum usurpatur in capite decimo sexto."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Prologus"
                   text:@[
                       @"HUGONI militi Christi, et magistro Militiae Christi, BERNARDUS Clarae-Vallis solo nomine abbas, bonum certamen certare. Semel, et secundo, et tertio, ni fallor, petiisti a me, Hugo charissime, ut tibi tuisque commilitonibus scriberem exhortationis sermonem; et adversus hostilem tyrannidem, quia lanceam non liceret, stylum vibrarem: asserens vobis non parum fore adjutorii, si quos armis non possum, litteris animarem. Distuli sane aliquandiu: non quod contemnenda videretur petitio, sed ne levis praecepsque culparetur assensio, si quod melius melior implere sufficeret, praesumerem imperitus, et res admodum necessaria per me minus forte commoda redderetur. Verum videns me longa satis hujuscemodi exspectatione frustratum, ne jam magis nolle, quam non posse viderer, tandem ego quidem quod potui feci: lector judicet, an satisfeci. Quanquam etsi cui forte aut minime placeat, aut non sufficiat; non tamen interest mea, qui tuae pro meo sapere non defui voluntati."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput Primum\nDe laude novae militia"
                   text:@[
                       @"1. Novum militiae genus ortum nuper auditur in terris, et in illa regione, quam olim in carne praesens visitavit Oriens ex alto: ut unde tunc in fortitudine manus suae tenebrarum principes exturbavit, inde et modo ipsorum satellites, filios diffidentiae, in manu fortium suorum dissipatos exterminet, faciens etiam nunc redemptionem plebis suae, et rursum erigens cornu salutis nobis in domo David pueri sui. Novum, inquam, militiae genus, et saeculis inexpertum: qua gemino pariter conflictu infatigabiliter decertatur, tum adversus carnem et sanguinem, tum contra spiritualia nequitiae in coelestibus. Et quidem ubi solis viribus corporis corporeo fortiter hosti resistitur, id quidem ego tam non judico mirum, quam nec rarum existimo. Sed et quando animi virtute vitiis sive daemoniis bellum indicitur, ne hoc quidem mirabile, etsi laudabile dixerim, cum plenus monachis cernatur mundus. Caeterum cum uterque homo suo quisque gladio potenter accingitur, suo cingulo nobiliter insignitur; quis hoc non aestimet omni admiratione dignissimum, quod adeo liquet esse insolitum? Impavidus profecto miles, et omni ex parte securus, qui ut corpus ferri, sic animum fidei lorica induitur. Utrisque nimirum munitus armis, nec daemonem timet, nec hominem. Nec vero mortem formidat, qui mori desiderat. Quid enim vel vivens, vel moriens metuat, cui vivere Christus est, et mori lucrum? Stat quidem fidenter libenterque pro Christo; sed magis cupit dissolvi, et esse cum Christo: hoc enim melius. Securi igitur procedite, milites, et intrepido animo inimicos crucis Christi propellite, certi quia neque mors, neque vita poterunt vos separare a charitate Dei, quae est in Christo Jesu; illud sane vobiscum in omni periculo replicantes: Sive vivimus, sive morimur, Domini sumus (Rom. XIV, 8). Quam gloriosi revertuntur victores de praelio! quam beati moriuntur martyres in praelio! Gaude, fortis athleta, si vivis et vincis in Domino: sed magis exsulta et gloriare, si moreris et jungeris Domino. Vita quidem fructuosa, et victoria gloriosa: sed utrique mors sacra jure praeponitur. Nam si beati qui in Domino moriuntur, num multo magis qui pro Domino moriuntur?",
                       @"2. Et quidem sive in lecto, sive in bello quis moritur, pretiosa erit sine dubio in conspectu Domini mors sanctorum ejus. Caeterum in bello tanto profecto pretiosior, quanto et gloriosior. O vita secura, ubi pura conscientia! O, inquam, vita secura, ubi absque formidine mors exspectatur, imo et exoptatur cum dulcedine, et excipitur cum devotione! O vere sancta et tuta militia, atque a duplici illo periculo prorsus libera, quo id hominum genus solet, frequenter periclitari, ubi duntaxat Christus non est causa militandi. Quoties namque congrederis tu, qui militiam militas saecularem, timendum omnino, ne aut occidas hostem quidem in corpore, te vero in anima: aut forte tu occidaris ab illo, et in corpore simul, et in anima. Ex cordis nempe affectu, non belli eventu, pensatur vel periculum, vel victoria christiani. Si bona fuerit causa pugnantis, pugnae exitus malus exitus esse non poterit; sicut nec bonus judicabitur finis, ubi causa non bona, et intention non recta praecesserit. Si in voluntate alterum occidendi te potius occidi contigerit, moreris homicida. Quod si praevales, et voluntate superandi vel vindicandi forte occidis hominem, vivis homicida. Non autem expedit sive mortuo, sive vivo; sive victori, sive victo, esse homicidam. Infelix victoria, qua superans hominem, succumbis vitio. Et ira tibi aut superbia dominante, frustra gloriaris de homine superato. Est tamen qui nec ulciscendi zelo, nec vincendi typho, sed tantum evadendi remedio interficit hominem. Sed ne hanc quidem bonam dixerim victoriam: cum de duobus malis, in corpore quam in anima mori levius sit. Non autem quia corpus occiditur, etiam anima moritur: sed anima, quae peccaverit, ipsa morietur."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput II\nDe militia saeculari"
                   text:@[
                       @"3. Quis igitur finis fructusve saecularis hujus, non dico, militiae, sed malitiae; si et occisor letaliter peccat, et occisus aeternaliter perit? Enimvero, ut verbis utar Apostoli, Et qui arat, in spe debet arare; et qui triturat, in spe fructus percipiendi (I Cor. IX, 10). Quis ergo, o milites, hic tam stupendus error, quis furor hic tam non ferendus, tantis sumptibus ac laboribus militare, stipendiis vero nullis, nisi aut mortis, aut criminis? Operitis equos sericis, et pendulos nescio quos panniculos loricis superinduitis; depingitis hastas, clypeos et sellas; frena et calcaria auro et argento, gemmisque circumornatis: et cum tanta pompa pudendo furore et impudenti stupore ad mortem properatis. Militaria sunt haec insignia, an muliebria potius ornamenta? Numquid forte hostilis mucro reverebitur aurum, gemmis parcet, serica penetrare non poterit? Denique, quod ipsi saepius certiusque experimini, tria esse praecipue necessaria praelianti, ut scilicet strenuus industriusque miles et circumspectus sit ad se servandum, et expeditus ad discurrendum, et promptus ad feriendum: vos per contrarium in oculorum gravamen femineo ritu comam nutritis, longis ac profusis camisiis propria vobis vestigia obvolvitis, delicatas ac teneras manus amplis et circumfluentibus manicis sepelitis. Super haec omnia est, quod armati conscientiam magis terret, causa illa nimirum satis levis ac frivola, qua videlicet talis praesumitur et tam periculosa militia. Non sane inter vos aliud bella movet, litesque suscitat, nisi aut irrationabilis iracundiae motus, aut inanis gloriae appetitus, aut terrenae qualiscunque possessionis cupiditas. Talibus certe ex causis neque occidere, neque occumbere tutum est."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput III\nDe Militibus Christi"
                   text:@[
                       @"4. At vero Christi milites securi praeliantur praelia Domini sui, nequaquam metuentes aut de hostium caede peccatum, aut de sua nece periculum: quandoquidem mors pro Christo vel ferenda, vel inferenda, et nihil habeat criminis, et plurimum gloriae mereatur. Hinc quippe Christo, inde Christus acquiritur: qui nimirum et libenter accipit hostis mortem pro ultione, et libentius praebet se ipsum militi pro consolatione. Miles, inquam, Christi securus interimit, interit securior. Sibi praestat cum interit, Christo cum interimit. Non enim sine causa gladium portat. Dei etenim minister est ad vindictam malefactorum, laudem vero bonorum. Sane cum occidit malefactorem, non homicida, sed, ut ita dixerim, malicida, et plane Christi vindex in his qui male agunt, et defensor Christianorum reputatur. Cum autem occiditur ipse, non periisse, sed pervenisse cognoscitur. Mors ergo quam irrogat, Christi est lucrum: quam excipit, suum. In morte pagani christianus gloriatur, quia Christus glorificatur: in morte christiani, Regis liberalitas aperitur, cum miles remunerandus educitur. Porro super illo laetabitur justus cum viderit vindictam. De isto dicet homo: Si utique est fructus justo: utique est Deus judicans eos in terra (Psal. LVII, 12). Non quidem vel Pagani necandi essent, si quo modo aliter possent a nimia infestatione seu oppressione fidelium cohiberi. Nunc autem melius est ut occidantur, quam certe relinquatur virga peccatorum super sortem justorum: ne forte extendant justi ad iniquitatem manus suas.",
                       @"5. Quid enim? si percutere in gladio omnino fas non est Christiano, cur ergo praeco Salvatoris contentos fore suis stipendiis militibus indixit (Luc. III, 14); et non potius omnem eis militiam interdixit? Si autem (quod verum est) omnibus fas est, ad hoc ipsum duntaxat divinitus ordinatis, nec aliud sane quidquam melius professis; quibus, quaeso, potius, quam quorum manibus et viribus urbs fortitudinis nostrae Sion pro nostro omnium munimine retinetur? ut depulsis divinae transgressoribus legis, secura ingrediatur gens justa, custodiens veritatem. Secure proinde dissipentur gentes quae bella volunt, et abscindantur qui nos conturbant, et disperdantur de civitate Domini omnes operantes iniquitatem, qui repositas in Jerosolymis christiani populi inaestimabiles divitias tollere gestiunt, sancta polluere, et haereditate possidere sanctuarium Dei. Exeratur gladius uterque fidelium in cervices inimicorum, ad destruendam omnem altitudinem extollentem se adversus scientiam Dei, quae est christianorum fides; ne quando dicant gentes: ubi est Deus eorum? (Psal. CXIII, 2.)",
                       @"6. Quibus expulsis revertetur ipse in haereditatem domumque suam, de qua iratus in Evangelio, Ecce, inquit, relinquetur vobis domus vestra deserta (Matth. XXIII, 38); et per prophetam ita conqueritur, Reliqui domum meam, dimisi haereditatem meam (Jerem. XII, 7): implebitque illud propheticum, Redemit Dominus populum suum, et liberavit eum: et venient et exsultabunt in monte Sion, et gaudebunt de bonis Domini (Jerem. XXXI, 11, 12). Laetare, Jerusalem, et cognosce jam tempus visitationis tuae. Gaudete et laudate simul, deserta Jerusalem, quia consolatus est Dominus populum suum, redemit Jerusalem; paravit Dominus brachium suum sanctum in oculis omnium gentium. Virgo Israel, corrueras, et non erat qui sublevaret te. Surge jam, excutere de pulvere, virgo, captiva filia Sion. Surge, inquam, et sta in excelso, et vide jucunditatem quae venit tibi a Deo tuo. Non vocaberis ultra derelicta, et terra tua non vocabitur amplius desolata, quia complacuit Domino in te, et terra tua inhabitabitur. Leva in circuitu oculos tuos et vide: omnes isti congregati sunt, venerunt tibi. Hoc tibi auxilium missum de sancto. Omino per istos tibi jamjamque illa persolvitur antiqua promissio, Ponam te in superbiam saeculorum, gaudium in generatione et generationem, et suges lac gentium, et mammilla regum lactaberis (Isa. LX, 15, 16): et item, Sicut mater consolatur filios suos, ita et ego consolabor vos, et in Jerusalem consolabimini (Isa. LXVI, 13). Videsne quam crebra veterum attestatione nova approbatur militia, et quod sicut audivimus, sic videmus in civitate Domini virtutum? Dummodo sane spiritualibus non praejudicet sensibus litteralis interpretatio, quominus scilicet speremus in aeternum, quidquid huic tempori significando ex Prophetarum vocibus usurpamus: ne per id quod cernitur, evanescat quod creditur; et spei copias imminuat penuria rei, praesentiumque attestatio sit evacuatio futurorum. Alioquin terrenae civitatis temporalis gloria non destruit coelestia bona, sed astruit; si tamen istam minime dubitamus illius tenere figuram, quae in coelis et mater nostra."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput IV\nDe conversatione Militum Christi"
                   text:@[
                       @"7. Sed jam ad imitationem seu ad confusionem nostrorum militum, non plane Deo, sed diabolo res et vitam; qualiter in bello domive conversentur: quo palam fiat, quantum ab invicem differant Dei saeculique militia. Primo quidem utrolibet disciplina non deest, obedientia nequaquam contemnitur, quia, teste Scriptura, et filius indisciplinatus peribit (Eccli. XXII, 3); et, peccatum est hariolandi repugnare, et quasi scelus idololatriae nolle acquiescere (I Reg. XV, 23). Itur, et reditur ad nutum ejus qui praeest: induitur quod ille donaverit; nec aliunde vestimentum seu alimentum praesumitur. Et in victu et vestitu cavetur omne superfluum, soli necessitati consulitur. Vivitur plane in communi jucunda et sobria conversatione, absque uxoribus, et absque liberis. Et ne quid desit ex evangelica perfectione absque omni proprio habitant unius moris in domo una, solliciti servare unitatem spiritus in vinculo pacis. Dicas universae multitudinis esse cor unum, et animam unam: ita quisque non omnino propriam sequi voluntatem, sed magis obsequi satagit imperanti. Nullo tempore aut otiosi sedent, aut curiosi vagantur: sed semper dum non procedunt (quod quidem raro contingit), ne gratis comedant panem, armorum seu vestimentorum vel scissa resarciunt, vel vetusta reficiunt, vel inordinata componunt, et quaeque postremo facienda magistri voluntas et communis indicit necessitas. Persona inter eos minime accipitur: defertur meliori, non nobiliori. Honore se invicem praeveniunt; alterutrum onera portant, ut sic adimpleant legem Christi. Verbum insolens, opus inutile, risus immoderatus, murmur vel tenue, sive susurrium nequaquam, ubi deprehenditur, relinquitur inemendatum. Scacos et aleas detestantur; abhorrent venationem: nec ludicra illa avium rapina (ut assolet) delectantur. Mimos, et magos, et fabulatores, scurrilesque cantilenas, atque ludorum spectacula, tanquam vanitates et insanias falsas respuunt et abominantur. Capillos tondent, scientes juxta Apostolum ignominiam esse viro, si comam nutrierit. Nunquam compti, raro loti, magis autem neglecto crine hispidi, pulvere foedi: lorica et caumate fusci.",
                       @"8. Porro imminente bello, intus fide, foris ferro, non auro se muniunt: quatenus armati, et non ornati, hostibus metum incutiant, non provocent avaritiam. Equos habere cupiunt fortes et veloces, non tamen coloratos aut phaleratos: pugnam quippe, non pompam, victoriam, sed non gloriam cogitantes, et studentes magis esse formidini quam admirationi. Deinde non turbulenti aut impetuosi, et quasi ex levitate praecipites, sed consulte atque cum omni cautela et providentia se ipsos ordinantes, et disponentes in aciem, juxta quod de patribus scriptum est. Veri profecto Israelitae procedunt ad bella pacifici. At vero ubi ventum fuerit ad certamen, tum demum pristina lenitate postposita, tanquam si dicerent. Nonne qui oderunt te, Domine, oderam, et super inimicos tuos tabescebam? (Psal. CXXXVIII, 21.) irruunt in adversarios, hostes velut oves reputant; nequaquam, etsi paucissimi, vel saevam barbariem, vel numerosam multitudinem formidantes. Noverunt siquidem non de suis praesumere viribus, sed de virtute Domini sabaoth sperare victoriam: cui nimirum facile esse confidunt, juxta sententiam Macchabaei, concludi multos in manus paucorum, et non esse differentiam in conspectu Dei coeli liberare in multis, et in paucis; quia non in multitudine exercitus est victoria belli, sed de coelo fortitudo est (I Macchab. III, 18, 19). Quod et frequentissime experti sunt, ita ut plerumque quasi persecutus sit unus mille, et duo fugarint decem millia. Ita denique miro quodam ac singulari modo cernuntur et agnis mitiores, et leonibus ferociores, ut pene dubitem quid potius censeam appellandos, monachos videlicet, an milites: nisi quod utrumque forsan congruentius nominarim, quibus neutrum deesse cognoscitur, nec monachi mansuetudo, nec militis fortitudo. De qua re quid dicendum, nisi quod a Domino factum est istud, et est mirabile in oculis nostris? Tales sibi elegit Deus, et collegit a finibus terrae ministros ex fortissimis Israel, qui veri lectulum Salomonis, sacrum scilicet sepulcrum, vigilanter fideliterque custodiant, omnes tenentes gladios, et ad bella doctissimi [al. fortissimi]."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput V\nDe Templo"
                   text:@[
                       @"9. Est vero templum Jerosolymis, in quo pariter habitant, antiquo et famosissimo illi Salomonis impar quidem structura, sed non inferius gloria. Siquidem universa illius magnificentia in corruptibilibus auro et argento, in quadratura lapidum et varietate lignorum continebatur: hujus autem omnis decor, et gratae venustatis ornatus, pia est habitantium religiositas, et ordinatissima conversatio. Illud variis exstitit spectandum coloribus: hoc diversis virtutibus et sanctis actibus venerandum. Domum quippe Dei decet sanctitudo (Psal. XCII, 5), qui non tam politis marmoribus, quam ornatis moribus delectatur, et puras diligit mentes super auratos parietes. Ornatur tamen hujus quoque facies templi, sed armis, non gemmis: et pro antiquis coronis aureis, circum pendentibus clypeis paries operitur; pro candelabris, thuribulis, atque urceolis, domus undique frenis, sellis, ac lanceis communitur. Plane his omnibus liquido demonstrantibus, eodem pro domo Dei fervere milites zelo, quo ipse quondam militum Dux vehementissime inflammatus armata illa sanctissima manu, non tamen ferro, sed flagello, quod fecerat de resticulis [al. funiculis], introivit in templum, negotiantes expulit, nummulariorum effudit aes, et cathedras vendentium columbas evertit (Joan. II, 15): indignissimum judicans, orationis domum hujuscemodi forensibus incestari [al infestari]. Tali proinde sui Regis permotus exemplo devotus exercitus, multo sane indignius, longeque intolerabilius arbitrans sancta pollui ab infidelibus, quam a mercatoribus incestari, in domo sancta cum equis et armis commoratur; tamque ab ipsa, quam a caeteris sacris omni infidelitatis spurca et tyrannica rabie propulsata, ipsi in ea die noctuque tam honestis quam utilibus officiis occupantur. Honorant certatim Dei templum sedulis et sinceris obsequiis, jugi in eo devotione immolantes, non quidem veterum ritu pecudum carnes, sed vere hostias pacificas, fraternam dilectionem, devotam subjectionem, voluntariam paupertatem.",
                       @"10. Haec Jerosolymis actitantur, et orbis excitatur. Audiunt insulae, et attendunt populi de longe, et ebulliunt ab Oriente et Occidente, tanquam torrens inundans gloriae gentium, et tanquam fluminis impetus laetificans civitatem Dei. Quodque cernitur jucundius, et agitur commodius, paucos admodum in tanta multitudine hominum illo confluere videas, nisi utique sceleratos et impios, raptores et sacrilegos, homicidas, perjuros, adulteros; de quorum profecto perfectione sicut duplex quoddam constat provenire bonum, ita duplicatur et gaudium; quandoquidem tam suos de suo discessu laetificant, quam illos de adventu quibus subvenire festinant. Prosunt quippe utrobique, non solum utique istos tuendo, sed etiam illos jam non opprimendo. Itaque laetatur Aegyptus in profectione eorum, cum tamen de protectione eorum nihilominus laetetur mons Sion, et exsultent filiae Judae. Illa quidem se de manu eorum, ista magis in manu eorum liberari se merito gloriatur. Illa libenter amittit crudelissimos sui vastatores: ista cum gaudio suscipit sui fidelissimos defensores; et unde ista dulcissime consolatur, inde illa aeque saluberrime desolatur. Sic Christus, sic novit ulcisci in hostes suos, ut non solum de ipsis, sed per ipsos quoque frequenter soleat tanto gloriosius, quanto et potentius triumphare. Jucunde sane et commode: ut quos diu pertulit oppugnatores magis jam propugnatores habere incipiat; faciatque de hoste militem, qui de Saulo quondam persecutore fecit Paulum praedicatorem (Act. IX). Quamobrem non miror, si etiam superna illa curia, juxta testimonium Salvatoris, exsultat magis super uno peccatore poenitentiam agente, quam super plurimis justis qui non indigent poenitentia, dum peccatoris et maligni tantis procul dubio prosit conversio, quantis et prior nocuerat conversatio.",
                       @"11. Salve igitur, civitas sancta, quam ipse sanctificavit sibi tabernaculum suum Altissimus, quo tanta in te et per te generatio salvaretur. Salve, civitas Regis magni, ex qua nova et jucunda mundo miracula nullis pene temporibus defuere ab initio. Salve, domina gentium, princeps provinciarum, Patriarcharum possessio, Prophetarum mater et Apostolorum, initiatrix fidei, gloria populi christiani, quam Deus semper a principio propterea passus est oppugnari, ut viris fortibus sicut virtutis, ita fores occasio et salutis. Salve, terra promissionis, quae olim fluens lac et mel tuis duntaxat habitatoribus, nunc universo orbi remedia salutis, vitae porrigis alimenta. Terra, inquam, bona et optima, quae in fecundissimo illo sinu tuo ex arca paterni cordis coeleste granum suscipiens, tantas ex superno semine martyrum segetes protulisti, et nihilominus ex reliquo omnium fidelium genere fructum fertilis gleba tricesimum, et sexagesimum, et centesimum super omnem terram multipliciter procreasti. Unde et de magna multitudine dulcedinis tuae jucundissime satiati et opulentissime saginati, memoriam abundantiae suavitatis tuae ubique eructant qui te viderunt, et usque ad extremum terrae magnificentiam gloriae tuae loquuntur eis qui te non viderunt, et enarrant mirabilia quae in te fiunt. Gloriosa dicta sunt de te civitas Dei: sed jam ex his quibus affluis deliciis, nos quoque pauca proferamus in medium, ad laudem et gloriam nominis tui."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput VI\nDe Bethlehem"
                   text:@[
                       @"12. Habes ante omnia in refectione animarum sanctarum Bethlehem domum panis, in qua primum is qui de coelo descenderat [al. descendit], pariente Virgine panis vivus apparuit. Monstratur piis ibidem jumentis praesepium, et in praesepio fenum de prato virginali, quo vel sic cognoscat bos possessorem suum, et asinus praesepe Domini sui. Omnis quippe caro fenum, et omnis gloria ejus ut flos feni (Isai. XL, 6). Porro homo quia suum, in quo factus est, honorem non intelligendo, comparatus est jumentis insipientibus, et similis factus est illis (Psal. XLVIII, 13); Verbum panis Angelorum factum est pabulum jumentorum, ut habeat carnis fenum quod ruminet, qui verbi pane vesci penitus dissuevit: quousque per hominem Deum priori redditus dignitati, et ex pecore rursus conversus in hominem, cum Paulo dicere possit, Etsi cognovimus Christum secundum carnem, sed nunc jam non novimus (II Cor. V, 16). Quod sane non arbitror quempiam dicere posse veraciter, nisi qui prius cum Petro ex ore Veritatis illud item audierit: Verba quae ego locutus sum vobis, spiritus et vita sunt; caro autem non prodest quidquam (Joan. VI, 64). Alioquin qui in verbis Christi vitam invenit, carnem jam non requirit, et est de numero beatorum qui non viderunt et crediderunt (Joan. XX, 29). Nec enim opus est vel lactis poculum, nisi parvulo; vel feni pabulum, nisi utique jumento. Qui autem non offendit in verbo, ille perfectus est vir, solido plane vesci cibo idoneus: et, licet in sudore vultus sui, panem verbi comedit, absque offensione. Sed et securus ac sine scandalo loquitur Dei sapientiam duntaxat inter perfectos, spiritualibus spiritualia comparans, cum tamen infantibus sive pecoribus cautus sit pro captu quidem eorum proponere tantummodo Jesum Christum, et hunc crucifixum. Unus tamen idemque cibus ex coelestibus pascuis suaviter quidem et ruminatur a pecore, et manducatur ab homine; et viro vires, et parvulo tribuit nutrimentum."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput VII\nDe Nazareth"
                   text:@[
                       @"13. Cernitur et Nazareth, quae interpretatur flos, in qua is qui natus in Bethlehem erat, tanquam fructus in flore coalescens, nutritus est Deus infans: ut floris odor fructus saporem praecederet, ac de naribus Prophetarum, faucibus se Apostolorum liquor sanctus infunderet; Judaeisque tenui odore contentis, gustu solido reficeret Christianos. Senserat tamen hunc florem Nathanael, quod super omnia aromata suave redoleret. Unde et aiebat: A Nazareth potest aliquid boni esse? Sed nequaquam sola contentus fragrantia, respondentem sibi, Veni et vide (Joan. I, 46), Philippum secutus est. Imo vero mirae illius suavitatis admodum respersione delectatus, haustuque boni odoris factus saporis a vidior, odore ipso duce, ad fructum usque sine mora pervenire curavit, cupiens plenius experiri quod tenuiter praesenserat, praesensque degustare quod odoraverat absens. Videamus et de olfactu Isaac, ne forte aliquid, quod pertineat ad haec ipsa quae in manibus sunt, portenderit. Loquitur de illo Scriptura sic: Statimque ut sensit vestimentorum ejus fragrantiam (haud dubium quin Jacob), Ecce, inquit, odor filii mei sicut odor agri pleni, cui benedixit Dominus (Gen. XXVII, 27). Vestimenti fragrantiam sensit, sed vestiti praesentiam non agnovit: soloque vestis, tanquam floris odore, forinsecus delectatus, quasi fructus interioris dulcedinem non gustavit, dum et electi filii simul et sacramenti fraudatus cognitione remansit. Quo spectat hoc? Vestimentum profecto spiritus, littera est et caro Verbi. Sed ne nunc quidem Judaeus in carne Verbum, in homine scit deitatem; nec sub tegmine litterae sensum pervidet spiritualem: forisque palpans haedi pellem, quae similitudinem majoris, hoc est primi et antiqui peccatoris, expresserat, ad nudam non pervenit veritatem. Non sane in carne peccati, sed in similitudine carnis peccati, qui peccatum non facere, sed tollere veniebat, apparuit, ea scilicet de causa quam ipse non tacuit, ut qui non vident videant, et qui vident caeci fiant (Joan. IX, 39). Hac ergo similitudine deceptus Propheta, caecus hodieque, quem nescit benedicit, dum quem lectitat in libris, ignorat et in miraculis: et quem propriis attrectat manibus, ligando, flagellando, colaphizando, minine tamen vel resurgentem [al. resurgendo] intelligit. Si enim cognovissent, nunquam Dominum gloriae crucifixissent (I Cor. II, 8). Percurramus succincto sermone et caetera loca sancta, et si non omnia, saltem aliqua: quoniam quae admirari per singular non sufficimus, libet vel insigniora, et ipsa breviter recordari."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput VIII\nDe monte Oliveti et valle Josaphat"
                   text:@[
                       @"14. Ascenditur in montem Oliveti, descenditur in vallem Josaphat: ut sic divitias divinae misericordiae cogites, quatenus horrorem judicii nequaquam dissimules; quia etsi in multis miserationibus suis multus est ad ignoscendum, judicia tamen ejus nihilominus abyssus multa, quibus agnoscitur valde omnino terribilis super filios hominum. David denique qui montem Oliveti demonstrat, dicens, Homines et jumenta salvabis, Domine, quemadmodum multiplicasti misericordiam tuam, Deus; etiam judicii vallem in eodem psalmo commemorat, dicens. Non veniat mihi, inquiens, pes superbiae, et manus peccatoris non moveat me (Psal. XXXV, 7, 12). Cujus et praecipitium se omnino perhorrescere fatetur, cum in alio psalmo ita loquitur, orans: Confige timore tuo carnes meas, a judiciis enim tuis timui (Psal. CXVIII, 120). Superbus in hanc vallem corruit, et conquassatur: humilis descendit, et minime periclitatur. Superbus excusat peccatum suum: humilis accusat, sciens quia Deus non bis judicat in idipsum; et quod si nosmetipsos judicaverimus, non utique judicabimur (I Cor. XI, 31).",
                       @"15. Porro superbus non attendens quam horrendum sit incidere in manus Dei viventis, facile prorumpit in verba malitiae ad excusandas excusationes in peccatis. Magna revera malitia, tui te non misereri, et solum post peccatum remedium confessionis a te ipso repellere, ignemque in sinu tuo involvere potius, quam excutere, nec praebere autem consilio Sapientis qui ait: Miserere animae tuae placens Deo (Eccli. XXX, 24). Proinde qui sibi nequam, cui bonus? Nunc judicium est mundi, nunc princeps hujus mundi ejicietur foras (Joan. 12, 31), hoc est de corde tuo, si te tamen humiliando ipse dijudicas. Erit judicium coeli, quando ipsum vocabitur coelum desursum, et terra discernere populum suum (Psal. XLIX, 4): in quo sane timendum, ne projiciaris tu cum ipso et angelis ejus, si tamen inventus fueris injudicatus. Alioquin spiritualis homo, qui omnia dijudicat, ipse a nemine judicabitur (I Cor. II, 15). Propter hoc ergo judicium incipit a domo Dei, ut suos, quos novit judex, cum venerit inveniat judicatos: et jam nil de eis habeat judicare, quando videlicet judicandi sunt hi qui in labore hominum non sunt, et cum hominibus non flagellantur (Psal. LXXII, 5)."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput IX\nDe Jordane"
                   text:@[
                       @"16. Quam laeto sinu Jordanis excipit Christianos, qui se Christi gloriatur consecratum baptismate! Mentitus est plane Syrus ille leprosus, qui nescio quas Damasci aquas aquis praetulit Israelis (IV Reg. V, 12), cum Jordanis nostri devotus Deo famulatus toties probatus exstiterit, sive quando Eliae, sive quando Elisaeo (IV Reg. II), sive etiam (ut antiquius aliquid recolam) quando Josue et omni populo simul, impetum mirabiliter inhibens, siccum in se transitum praebuit (Josue. III). Denique quid in fluminibus isto eminentius, quod ipsa sui [al. sibi] Trinitas quadam evidenti praesentia dedicavit? Pater auditus, visus Spiritus sanctus, Filius est et baptizatus. Merito proinde ipsam ejus virtutem, quam Naaman ille consulente propheta sensit in corpore (IV Reg. V, 14), jubente Christo universus quoque fidelis populus in anima experitur."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput X\nDe loco Calvariae"
                   text:@[
                       @"17. Exitur etiam in Calvariae locum, ubi verus Elisaeus ab insensatis pueris irrisus, risum suis insinuavit aeternum, de quibus ait: Ecce ego, et pueri mei, quos mihi dedit Dominus (Isai. VIII, 18). Boni pueri, quos per contrarium illorum malignantium ad laudem excitat Psalmista, dicens, Laudate, pueri, Dominum, laudate nomen Domini (Psal. CXII, 1), quatenus in ore sanctorum infantium et lactentium perficeretur laus, quae ex ore defecerat invidorum, eorum utique, de quibus queritur ita: Filios enutrivi et exaltavi, ipsi autem spreverunt me (Isai. I, 2). Ascendit itaque crucem calvus noster, mundo pro mundo expositus: et revelata facie ac discooperta fronte purgationem peccatorum faciens, probrosae et austerae mortis tam non erubuit ignominiam, quam nec poenam exhorruit, ut nos opprobrio sempiterno eriperet, restitueret gloriae. Nec mirum. Quid enim erubesceret, qui ita lavit nos a peccatis, non quidem ut aqua diluens et retinens sordes, sed veluti solis radius desiccans et retinens puritatem? Est quippe Dei sapientia ubique attingens propter munditiam suam."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput XI\nDe Sepulcro"
                   text:@[
                       @"18. Inter sancta ac desiderabilia loca sepulcrum tenet quodammodo principatum, et devotionis plus nescio quid sentitur, ubi mortuus requievit, quam ubi vivens conversatus est; atque amplius movet ad pietatem mortis, quam vitae recordatio. Puto quod illa austerior, haec dulcior videatur: magisque infirmitati blandiatur humanae quies dormitionis, quam labor conversationis; mortis securitas, quam vitae rectitudo. Vita Christi, vivendi mihi regula exstitit: mors, a morte redemptio. Illa vitam instruxit, mortem ista destruxit. Vita quidem laboriosa, sed mors pretiosa; utraque vero admodum necessaria. Quid enim Christi prodesse poterat, sive mors nequiter viventi, sive vita damnabiliter morienti? Nunquid denique aut mors Christi etiam nunc male usque ad mortem viventes a morte aeterna liberat, aut mortuos ante Christum sanctos patres vitae sanctitas liberavit? sicut scriptum est, Quis est homo qui vivet, et non videbit mortem, eruet animam suam de manu inferi? (Psal. LXXXVIII, 49)? Nunc ergo quia utrumque nobis pariter necessarium erat, et pie vivere, et secure mori; et vivendo vivere docuit, et mortem moriendo securam reddidit: quoniam quidem resurrecturus occubuit, et spem fecit morientibus resurgendi. Sed addidit et tertium beneficium, cum etiam peccata donavit, sine quo utique caetera non valebant. Quid enim (quantum quidem ad veram summamque beatitudinem spectat) quantalibet vitae rectitudo seu longitudo prodesse poterat illi, qui vel solo originali peccato teneretur adstrictus? Peccatum quippe praecessit, ut sequeretur mors: quod sane si cavisset homo, mortem non gustasset in aeternum.",
                       @"19. Peccando itaque vitam amisit, et mortem invenit: quoniam quidem et Deus ita praedixerat, et justum profecto erat, ut si peccaret homo, moreretur. Quid namque justius poterat quam recipere talionem? Vita siquidem Deus animae est, ipsa corporis. Peccando voluntarie, volens perdidit vivere: nolens perdat et vivificare. Sponte repulit vitam cum vivere noluit; non valeat eam dare cui, vel quatenus voluerit. Noluit anima regi a Deo: non queat regere corpus. Si non paret superiori, inferiori cur imperet? Invenit Conditor suam sibi rebellem creaturam: inveniat anima suam sibi rebellem pedissequam. Transgressor inventus est homo divinae legis: inveniat et ipse aliam legem in membris suis, repugnantem legi mentis suae, et captivantem se in legem peccati (Rom. VII, 23). Porro peccatum, ut scriptum est, separat inter nos et Deum (Isai. LIX, 2): separet proinde etiam mors inter corpus nostrum et nos. Non potuit dividi a Deo anima nisi peccando, nec corpus ab ipsa nisi moriendo. Quid itaque austerius pertulit in ultione, id solum passa a subdito, quod praesumpserat in auctorem? Nihil profecto congruentius, quam ut mors operata sit mortem, spiritualis corporalem, culpabilis poenalem, voluntaria necessariam.",
                       @"20. Cum ergo hac gemina morte secundum utramque naturam homo damnatus fuisset, altera quidem spirituali et voluntaria, altera corporali et necessaria; utrique Deus homo una sua corporali ac voluntaria benigne et potenter occurrit, illaque una sua nostram utramque damnavit. Merito quidem: nam ex duabus mortibus nostris, cum altera nobis in culpae meritum, altera in poenae debitum reputaretur; suscipiens poenam, et nesciens culpam, dum sponte et tantum in corpore moritur et vitam nobis, et justitiam promeretur. Alioquin si corporaliter non pateretur, debitum non solvisset: si non voluntarie moreretur, meritum mors illa non habuisset. Nunc autem si, ut dictum est, mortis meritum est peccatum, et peccati debitum mors; Christo remittente peccatum, et moriente pro peccatoribus, profecto jam nullum est meritum, et solutum est debitum.",
                       @"21. Caeterum unde scimus, quod Christus possit peccata dimittere? Hinc procul dubio, quia Deus est, et quidquid vult, potest. Unde autem et quod Deus sit? Miracula probant. Facit quippe opera, quae nemo alius facere possit: ut taceam oracula Prophetarum, necnon et paternae vocis testimonium elapsae coelitus ad ipsum a magnifica gloria. Quod si Deus pro nobis, quis contra nos? Deus qui justificat, quis est qui condemnet? Si ipse est et non alius, cui quotidie confitemur dicentes: Tibi soli peccavi (Psal. L, 6); quis melius, imo quis alius remittere potest quod in eum peccatum est? Aut quomodo ipse non potest, qui omnia potest? Denique ego quod in me delinquitur valeo, si volo, donare: et Deus non queat in se commissa remittere? Si ergo peccata remittere et possit, omnipotens, et solus possit, cui soli peccatur; beatus profecto, cui non imputabit ipse peccatum. Itaque cognovimus, quod peccata Christus divinitatis suae potentia valuit relaxare.",
                       @"22. Porro jam de voluntate quis dubitet? Qui enim nostram et induit carnem, et subiit mortem; putas, suam nobis negabit justitiam? Voluntarie incarnatus, voluntarie passus, voluntarie crucifixus, solam a nobis retinebit justitiam? Quod ergo ex deitate constat illum potuisse, ex humanitate innotuit et voluisse. Sed unde rursum confidimus quod mortem abstulit? Hinc plane, quod eam ipse qui non meruit, pertulit. Qua enim ratione iterum exigeretur a nobis, quod pro nobis ille jam solvit? Qui peccati meritum tulit, suam nobis donando justitiam; ipse mortis debitum solvit et reddidit vitam. Sic namque mortua morte revertitur vita, quemadmodum ablato peccato redit justitia. Porro mors in Christi morte fugatur, et Christi nobis justitia imputatur. Verum quomodo mori potuit qui Deus erat? Quoniam nimirum et homo erat. Sed quo pacto mors hominis illius pro altero valuit? Quia et justus erat. Profecto namque cum homo esset, potuit mori; cum justus, non debuit gratis. Non quidem peccator mortis sufficit solvere debitum pro altero peccatore, cum quisque moriatur pro se. Qui autem mori pro se non habet, nunquid pro alio frustra debet? Quanto sane indignius moritur qui mortem non meruit, tanto is justius pro quo moritur, vivit.",
                       @"23. Sed quae, inquis, justitia est, ut innocens moriatur pro impio? Non est justitia, sed misericordia. Si justitia esset, jam non gratis, sed ex debito moreretur. Si ex debito, ipse quidem moreretur: sed is pro quo moreretur, non viveret. At vero si Justitia non est, non tamen contra justitiam est. Alioquin et justus, et misericors simul esse non posset. Sed etsi Justus non injuste pro peccatore satisfacere valeat, quo tamen pacto etiam unus pro pluribus? Etenim satis esse videretur ad justitiam, si unus uni moriens vitam restituat. Huic jam respondeat Apostolus. Sicut enim, inquit, per unius delictum, in omnes homines, in condemnationem; sic et per unius justitiam, in omnes homines, in justificationem vitae. Sicut enim per inobedientiam unius hominis peccatores constituti sunt multi, ita et per unius hominis obedientiam justi constituentur multi (Rom. V, 18, 19). Sed forte unus pluribus justitiam quidem restituere potuit, vitam non potuit. Per unum, ait, hominem mors, et per unum hominem vita. Sicut enim in Adam omnes moriuntur, ita et in Christo omnes vivificabuntur (I Cor. XV, 21, 22). Quid enim? Unus peccavit, et omnes tenentur rei; et unius innocentia soli reputabitur uni [al. innocenti]? Unius peccatum omnibus operatum est mortem, et unius justitia uni vitam restituet? Itane Dei justitia magis ad condemnandum, quam ad restaurandum valuit? aut plus potuit Adam in malo, quam Christus in bono? Adae peccatum imputabitur mihi, et Christi justitia non pertinebit ad me? Illius me inobedientia perdidit, et hujus obedientia non proderit mihi?",
                       @"24. Sed Adae, inquis, delictum merito omnes contrahimus, in quo quippe omnes peccavimus: quoniam cum peccavit, in ipso eramus, et ex ejus carne per carnis concupiscentiam geniti sumus. Atqui ex Deo multo germanius secundum spiritum nascimur, quam secundum carnem ex Adam; secundum quem etiam spiritum longe ante fuimus in Christo, quam secundum carnem in Adam: si tamen et nos inter illos numerari confidimus, de quibus Apostolus, Qui elegit nos, inquit, in ipso (haud dubium quin Pater in Filio) ante mundi constitutionem (Ephes. I, 4). Quod autem etiam ex Deo nati sunt, testatur evangelista Joannes, ubi ait, Qui non ex sanguinibus, neque ex voluntate carnis, neque ex voluntate viri, sed ex Deo nati sunt (Joan. I, 13): item ipse in Epistola, Omnis qui natus est ex Deo, non peccat, quia generatio coelestis conservat eum (I Joan. III, 9). At carnis traducem, ais, carnalis testatur concupiscentia: et peccatum quod in carne sentimus, manifeste probat, quod secundum carnem de carne peccatoris descendimus. Sed enim nihilominus spiritualis illa generatio, non quidem in carne, sed in corde sentitur ab his duntaxat qui cum Paulo dicere possunt, Nos autem sensum Christi habemus (I Cor. II, 16); in quo et eatenus profecisse se sentiunt, ut et ipsi cum omni fiducia dicant, Ipse enim spiritus testimonium reddit spiritui nostro, quod sumus filii Dei (Rom. VIII, 16): et illud, Nos autem non spiritum hujus mundi accepimus, sed spiritum qui ex Deo est, ut sciamus quae a Deo donata sunt nobis (I Cor. II, 12). Per spiritum ergo qui ex Deo est, charitas diffusa est in cordibus nostris: sicut et per carnem quae est ex Adam, manat concupiscentia nostris insita membris. Et quomodo ista quae a progenitore corporum descendit, nunquam in hac vita mortali a carne recidit; sic illa procedens ex Patre spirituum, ab intentione filiorum duntaxat perfectorum nunquam excidit.",
                       @"25. Si ergo ex Deo nati, et in Christo electi sumus: quaenam justitia est, ut plus noceat humana atque terrena, quam valeat divina coelestisque generatio; Dei electionem vincat carnalis successio, et aeterno ejus proposito carnis praescribat temporaliter traducta concupiscentia? Quinimo si per unum hominem mors, cur non multo magis per unum, et illum hominem vita? Et si in Adam omnes morimur, cur non longe potentius in Christo omnes vivificabimur? Denique non sicut delictum, ita et donum. Nam judicium ex uno in condemnationem; gratia autem ex multis delictis in justificationem (Rom. V, 15, 16). Christus igitur et peccata dimittere potuit, cum Deus sit; et mori, cum sit homo; et mortis moriendo solvere debitum, quia justus; et omnibus unus ad justitiam vitamque sufficere, quandoquidem et peccatum, et mors ex uno in omnes processerit.",
                       @"26. Sed hoc quoque necessarie omnino provisum est, quod dilata morte homo inter homines dignatus est aliquandiu conversari: quatenus crebris et veris locutionibus ad invisibilia excitaret, miris operibus astrueret fidem, rectis moribus instrueret. Itaque in oculis hominum Deus homo sobrie, et juste, et pie conversatus, vera locutus, mira operatus, indigna passus, in quo jam defuit nobis ad salutem? Accedat et gratia remissionis peccatorum, hoc est, ut gratis peccata dimittat: et opus profecto nostrae salutis consummatum est. Non autem metuendum, quod donandis peccatis aut potestas Deo, aut voluntas passo, et tanta passo pro peccatoribus desit: si tamen solliciti inveniamur digne, ut oportet, et imitari exempla, et venerari miracula; doctrinae quoque non existamus increduli, et passionibus non ingrati.",
                       @"27. Itaque totum nobis de Christo valuit, totum salutiferum, totumque necessarium fuit, nec minus profuit infirmitas quam majestas: quia etsi ex deitatis potentia peccati jugum jubendo submovit, ex carnis tamen infirmitate mortis jura moriendo concussit. Unde pulchre ait Apostolus: Quod infirmum est Dei, fortius est hominibus. Sed et illa ejus stultitia, per quam ei placuit salvum facere mundum, ut mundi confutaret sapientiam, confunderet sapientes; quod videlicet cum in forma Dei esset, Deo aequalis, semetipsum exinanivit formam servi accipiens; quod dives cum esset, propter nos egenus factus est, de magno parvus, de celso humilis, infirmus de potente; quod esuriit, quod sitiit, quod fatigatus est in itinere, et caetera quae passus est voluntate, non necessitate: haec ergo ipsius quaedam stultitia, nonne fuit nobis via prudentiae, justitiae forma, sanctitatis exemplum? Ob hoc item Apostolus: Quod stultum est, inquit, Dei, sapientius est hominibus (I Cor. I, 25). Mors ergo a morte, vita ab errore, a peccato gratia liberavit. Et quidem mors per justitiam suam peregit victoriam: quia justus exsolvendo quae non rapuit, jure omnino quod amiserat recepit. Vita vero quod ad se pertinuit, per sapientiam adimplevit, quae nobis vitae et disciplinae documentum ac speculum exstitit. Porro gratia ex illa, ut dictum est, potestate peccata dimisit, qua omnia quaecunque voluit, fecit. Mors itaque Christi, mors est meae mortis: quia ille mortuus est, ut ego viverem. Quo pacto enim jam non vivat, pro quo moritur Vita? Aut quis jam in via morum, seu rerum notitia errare timebit duce Sapientia? Aut unde jam reus tenebitur, quem absolvit Justitia? Vitam quidem se ipse perhibet in Evangelio: Ego sum, inquiens, vita (Joan. XIV, 6). Porro duo sequentia testator Apostolus, dicens: Qui factus est nobis justitia et sapientia a Deo Patre (I Cor. I, 30).",
                       @"28. Si ergo lex spiritus vitae in Christo Jesu liberavit nos a lege peccati et mortis, utquid adhuc morimur, et non statim immortalitate vestimur? Sane ut Dei veritas impleatur. Quia enim misericordiam et veritatem diligit Deus (Psal. LXXXIII, 12), necesse est mori quidem hominem, quippe quod praedixerat Deus: sed a morte tamen resurgere, ne obliviscatur misereri Deus. Ita ergo mors etsi non perpetuo dominatur, manet tamen propter veritatem Dei vel ad tempus in nobis: quemadmodum peccatum, etsi jam non regnat in nostro mortali corpore, non tamen deest penitus nobis. Proinde Paulus ex parte quidem liberatum se a lege peccati et mortis gloriatur; sed rursum se utraque nihilominus lege aliqua gravari ex parte conqueritur, sive cum adversus peccatum miserabiliter clamat, Invenio aliam legem in membris meis (Rom. VI, 23), et caetera; sive cum ingemiscit gravatus, haud dubium quin lege mortis, redemptionem exspectans corporis sui (Rom., VIII, 23).",
                       @"29. Sive itaque haec, sive alia quaecunque in hunc modum, prout in talibus in suo quisque abundat sensu, ex occasione sepulcri christianis sensibus suggerantur: puto quod non mediocris dulcedo devotionis infundatur cominus intuenti; nec parum proficitur cernendo etiam corporalibus oculis corporalem locum dominicae quietis. Etsi quippe jam vacuum sacris membris, plenum tamen nostris et jucundis admodum sacramentis. Nostris, inquam, nostris, si tamen tam ardenter amplectimur, quam indubitanter tenemus quod Apostolus ait: Consepulti enim sumus per Baptismum in mortem, ut quomodo surrexit Christus a mortuis per gloriam Patris, ita et nos in novitate vitae ambulemus. Si enim complantati facti sumus similitudini mortis ejus, simul et resurrectionis erimus (Rom. VI, 4, 5). Quam dulce est peregrinis post multam longi itineris fatigationem, post plurima terrae marisque pericula, ibi tandem quiescere, ubi et agnoscunt suum Dominum quievisse! Puto jam prae gaudio non sentiunt viae laborem, nec gravamen reputant expensarum; sed tanquam laboris praemium, cursusve bravium assecuti, juxta Scripturae sententiam, gaudent vehementer cnm invenerint sepulcrum (Job. III, 22). Nec casu vel subito, aut veluti lubrica popularis favoris opinione, id tam celebre nomen sepulcrum nactum esse putetur, cum hoc ipsum tantis retro temporibus Isaias tam aperte praedixerit: Et erit, inquit, in die illa radix Jesse, qui stat in signum populorum, ipsum gentes deprecabuntur, et erit sepulcrum ejus gloriosum (Isa. XI, 10). Revera ergo impletum cernimus quod legimus prophetatum, novum quidem intuenti, sed legenti antiquum: ut sic adsit de novitate jucunditas, ut de vetustate non desit auctoritas. Et de sepulcro ista sufficiant."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput XII\nDe Bethphage"
                   text:@[
                       @"30. Quid de Bethphage dicam, viculo sacerdotum, quem pene praeterieram, ubi et confessionis sacramentum, et sacerdotalis ministerii mysterium continetur? Bethphage quippe Domus buccae interpretatur. Scriptum est autem: Prope est verbum in ore tuo, et in corde tuo (Deut. XXX, 14). Non in altero tantum, sed simul in utroque verbum habere memineris. Et quidem verbum in corde peccatoris operatur salutiferam contritionem: verbum vero in ore noxiam tollit confusionem, ne impediat necessariam confessionem. Ait enim Scriptura: Est pudor adducens peccatum, et est pudor adducens gloriam (Eccli. IV, 25). Bonus pudor est, quo peccasse, aut certe peccare confunderis: et omnis licet humanus arbiter forte absit, divinum tamen quam humanum tanto verecundius revereris aspectum, quanto et verius Deum quam hominem cogitas puriorem [al. praesentiorem]: tantoque eum gravius offendi a peccante, quanto constat longius ab illo esse omne peccatum. Hujuscemodi procul dubio pudor fugat opprobrium, parat gloriam, dum aut peccatum omnino non admittit, aut certe admissum et poenitendo punit, et confitendo expellit: si tamen gloria etiam nostra haec est, testimonium conscientiae nostrae. Quod si quispiam confiteri confunditur id quoque, unde compungitur, talis pudor peccatum adducit, et gloriam de conscientia perdit, quando malum quod ex profundo cordis compunctio conatur expellere, pudor ineptus obstruso labiorum ostio non permittit exire; cum eum exemplo David dicere potius oporteret: Et labia mea non prohibebo, Domine, tu scisti (Psal. XXXIX, 10). Qui et seipsum redarguens, puto super hujuscemodi stulto et irrationabili pudore, Quoniam tacui, inquit, inveteraveverunt ossa mea (Psal. XXXI, 3). Unde et optat ostium poni circumstantiae labiis suis (Psal. CXL, 3), ut oris januam et aperire confessioni, et defensioni claudere norit. Denique et aperte hoc ipsum orans petit a Domino, sciens nimirum, quia confessio et magnificentia opus ejus (Psal. CX, 3). Et quod videlicet nostram malitiam, et quod aeque divinae bonitatis et virtutis magnificentiam minime tacemus, magnum quidem geminae confessionis bonum, sed Dei est donum. Ait itaque: Non declines cor meum in verba malitiae ad excusandas excusationes in peccatis (Psal. CXL, 4). Quamobrem ministros verbi sacerdotes caute necesse est ad utrumque vigilare sollicitos, quo videlicet delinquentium cordibus tanto moderamine verbum timoris et contritionis infligant, quatenus eos nequaquam a verbo confessionis exterreant; sic corda aperiant, ut ora non obstruant; sed nec absolvant etiam compunctum, nisi viderint et confessum: quandoquidem corde creditur ad justitiam, ore autem confessio fit ad salutem. Alioquin a mortuo, tanquam qui non est, perit confessio (Eccli. XVII, 26). Quisquis igitur verbum in ore habet, et in corde non habet, aut dolosus est, aut vanus: quisquis vero in corde, et non in ore, aut superbus est, aut timidus."
                   ]],
                  [[WorkSection alloc]
                   initWithHeader:@"Caput XIII\nDe Bethania"
                   text:@[
                       @"31. Sane non omnino (etsi multum festinem) debeo transire silenter domum obedientiae, Bethaniam videlicet, castellum Mariae et Marthae, in quo Lazarus est resuscitatus: ubi nimirum et utriusque vitae figura, et Dei erga peccatores mira clementia, necnon et virtus obedientiae una cum fructibus poenitentiae commendatur. Hoc ergo in loco breviter intimatum sufficiat, quod quidem nec studium bonae actionis, nec otium sanctae contemplationis, nec lacrymae poenitentis extra Bethaniam accepta esse poterunt illi, qui tanti habuit obedientiam, ut vitam quam ipsam perdere maluerit, factus obediens Patri usque ad mortem. Hae sunt illae profecto divitiae, quas sermo propheticus ex verbo Domini pollicetur: Consolabitur, inquiens, Dominus Sion, et consolabitur omnes ruinas ejus; et ponet desertum ejus quasi delicias, et solitudinem ejus quasi hortum Domini. gaudium et laetitia invenietur in ea, gratiarum actio, et vox laudis (Isa. LI, 3). Haec igitur orbis deliciae, hic thesaurus coelestis, haec fidelium haereditas populorum, vestrae sunt, charissimi, credita fidei, vestrae prudentiae et fortitudini commendata. Tunc autem coeleste depositum secure et fideliter custodire sufficitis, si nequaquam de ipsa vestra prudentia vel fortitudine, sed de Dei tantum adjutorio ubique praesumitis, scientes quia non in fortitudine sua roborabitur vir, et ideo dicentes cum propheta: Dominus firmamentum meum, et refugium meum, et liberator meus (Psal. XVII, 2): et illud, Fortitudinem meam ad te custodiam, quia Deus susceptor meus; Deus meus, misericordia ejus praeveniet me (Psal. LVIII, 10, 11); et item: Non nobis, Domine, non nobis, sed nomini tuo da gloriam (Psal. CXIII, 9): ut in omnibus sit ipse benedictus, qui docet manus vestras ad praelium, et digitos vestros ad bellum (Psal. CXLIII, 1)"
                   ]]
              ]]
         ]],
        [[Source alloc]
         initWithTitle:@"Day of Wrath"
         subtitle:@"Well known for its use in the Requiem, The Day of Wrath is a poem describing the Final Judgement. The earth quakes and a trumpet summons all before the throne of God to be judged from a book. The worthy receive remission and the cursed are burned by everlasting fire. There are a few candidates for attribution, but ultimately the author is unknown."
         date:@"1200s"
         works:@[
             [[Work alloc]
              initWithTitle:@"Day of Wrath"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Dies Irae"
                   text:@[
                       @"Dies irae, dies illa\nsolvet saeclum in favilla:\nteste David cum Sibylla.",
                       @"Quantus tremor est futurus,\nquando judex est venturus,\ncuncta stricte discussurus!",
                       @"Tuba mirum spargens sonum\nper sepulcra regionum,\ncoget omnes ante thronum.",
                       @"Mors stupebit et natura,\ncum resurget creatura,\njudicanti responsura.",
                       @"Liber scriptus proferetur,\nin quo totum continetur,\nunde mundus judicetur.",
                       @"Judex ergo cum sedebit,\nquidquid latet apparebit:\nnil inultum remanebit.",
                       @"Quid sum miser tunc dicturus?\nQuem patronum rogaturus,\ncum vix justus sit securus?",
                       @"Rex tremendae majestatis,\nqui salvandos salvas gratis,\nsalva me fons pietatis.",
                       @"Recordare, Jesu pie,\nquod sum causa tuae viae:\nne me perdas illa die.",
                       @"Quaerens me, sedisti lassus:\nredemisti Crucem passus:\ntantus labor non sit cassus.",
                       @"Juste judex ultionis,\ndonum fac remissionis\nante diem rationis.",
                       @"Ingemisco, tamquam reus:\nculpa rubet vultus meus:\nsupplicanti parce, Deus.",
                       @"Qui Mariam absolvisti,\net latronem exaudisti,\nmihi quoque spem dedisti.",
                       @"Preces meae non sunt dignae:\nsed tu bonus fac benigne,\nne perenni cremer igne.",
                       @"Inter oves locum praesta,\net ab haedis me sequestra,\nstatuens in parte dextra.",
                       @"Confutatis maledictis,\nflammis acribus addictis:\nvoca me cum benedictis.",
                       @"Oro supplex et acclinis,\ncor contritum quasi cinis:\ngere curam mei finis.",
                       @"Lacrimosa dies illa,\nqua resurget ex favilla\njudicandus homo reus.",
                       @"Huic ergo parce, Deus:\npie Jesu Domine,\ndona eis requiem. Amen."
                   ]]
              ]]
         ]],
        [[Source alloc]
         initWithTitle:@"The Magna Carta"
         subtitle:@"Considered one of the most important documents in history, \"The Great Charter of the Liberties\" was a royal declaration of individual freedom. It guaranteed fair trials and outlawed illegal imprisonment. Remarkably, it asserted that everyone, even kings, were subject to the law."
         date:@"15 June 1215"
         works:@[
             [[Work alloc]
              initWithTitle:@"Magna Carta Libertatum"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Johannis sine Terra regis Angliae 15° Junii anno Domini 1215"
                   text:@[
                       @"Johannes Dei gracia rex Anglie, Dominus Hibernie, dux Normannie, Aquitannie et comes Andegavie, archiepiscopis, episcopis, abbatibus, comitibus, baronibus, justiciariis, forestariis, vicecomitibus, prepositis, ministris et omnibus ballivis et fidelibus suis salutem. Sciatis nos intuitu Dei et pro salute anime nostre et omnium antecessorum et heredum nostrorum ad honorem Dei et exaltacionem sancte Ecclesie, et emendacionem regi nostri, per consilium venerabilium patrum nostrorum, Stephani Cantuariensis archiepsicopi, tocius Anglie primatis et sancte Romane ecclesie cardinalis, Henrici Dublinensis archiepiscopi, Willelmi Londoniensis, Petri Wintoniensis, Joscelini Bathoniensis et Glastoniensis, Hugonis Lincolniensis, Walteri Wygorniensis, Willelmi Coventriensis, et Benedicti Roffensis, episcoporum; magistri Pandulfi domini pape subdiaconi et familiaris, fratris Aymerici magistri milicie Templi in Anglia; et nobilium virorum Willelmi Mariscalli comitis Penbrocie, Willelmi comitis Sarisberie, Willelmi comitis Warennie, Willelmi comitis Arundellie, Alani de Galewey a constabularii Scocie, Warini filii Geroldi, Petri filii Hereberti, Huberti de Burgo senescalli Pictavie, Hugonis de Nevilla, Mathei filii Hereberti, Thome Basset, Alani Basset, Philippi de Albiniaco, Roberti de Roppel., Johannis Mariscalli, Johannis filii Hugonis et aliorum fidelium nostrum.",
                       @"1. In primis concessisse Deo et hac presenti carta nostra confirmasse, pro nobis et heredibus nostris in perpetuum quod Anglicana ecclesia libera sit, et habeat jura sua integra, et libertates suas illesas; et ita volumus observari; quod apparet ex eo quod libertatem electionum, que maxima et magis necessaria reputatur Ecclesie Anglicane, mera et spontanea voluntate, ante discordiam inter nos et barones nostros motam, concessimus et carta nostra [illa carta data 21É novembris anno Domini 1214; confirmatio papae Innocentii tertii 30É martii anno Domini 1215] confirmavimus, et eam obtinuimus a domino papa Innocentio tercio confirmari; quam et nos observabimus et ab heredibus nostris in perpetuum bona fide volumus observari. Concessimus eciam omnibus liberis hominibus regni nostri, pro nobis et heredibus nostri in perpetuum, omnes libertates subscriptas, habendas et tenendas eis et heredibus suis, de nobis et heredibus nostris.",
                       @"2. Si quis comitum vel baronum nostrorum, sive aliorum tenencium de nobis in capite per servicium militare, mortuus fuerit, et cum decesserit heres suus plene etatis fuerit et relevium debeat, habeat hereditatem suam per antiquum relevium; scilicet heres vel heredes comitis de baronia comitis integra per centum libras; heres vel heredes baronis de baronia per centum libras (sic); heres vel heredes militis de feodo militis integro per centum solidos ad plus; et qui minus debuerit minus det secundum antiquam consuetudinem feodorum.",
                       @"3. Si autem heres alicujus talium fuerit infra etatem et fuerit in custodia, cum ad etatem pervenerit, habeat hereditatem suam sine relevio et sine fine.",
                       @"4. Custos terre hujusmodi heredis qui infra etatem fuerit, non capiat de terra heredis nisi racionabiles exitus, et racionabiles consuetudines, et racionabilia servicia, et hoc sine destructione et vasto hominum vel rerum; et si nos commiserimus custodiam alicujus talis terre vicecomiti vel alicui alii qui de exitibus illius nobis respondere debeat, et ille destructionem de custodia fecerit vel vastum, nos ab illo capiemus emendam, et terra committatur duobus legalibus et discretis hominibus de feodo illo, qui de exitibus respondeant nobis vel ei cui eos assignaverimus; et si dederimus vel vendiderimus alicui custodiam alicujus talis terre, et ille destructionem inde fecerit vel vastum, amittat ipsam custodiam, et tradatur duobus legalibus et discretis hominibus de feodo illo qui similiter nobis respondeant sicut predictum est.",
                       @"5. Custos autem, quamdiu custodiam terre habuerit, sustentet domos, parcos, vivaria, stagna, molendina, et cetera ad terram illam pertinencia, de exitibus terre ejusdem; et reddat heredi, cum ad plenam etatem pervenerit, terram suam totam instauratam de carucis et waynagiis, secundum quod tempus waynagii exiget et exitus terre racionabiliter poterunt sustinere.",
                       @"6. Heredes maritentur absque disparagacione, ita tamen quod, antequam contrahatur matrimonium, ostendatur propinquis de consanguinitate ipsius heredis.",
                       @"7. Vidua post mortem mariti sui statim et sine difficultate habeat maritagium et hereditatem suam, nec aliquid det pro dote sua, vel pro maritagio suo, vel hereditate sua, quam hereditatem maritus suus et ipsa tenuerint dit obitus ipsius mariti, et maneat in domo mariti sui per quadraginta dies post mortem ipsius, infra quos assignetur ei dos sua.",
                       @"8. Nulla vidua distringatur ad se maritandum, dum voluerit vivere sine marito, ita tamen quod securitatem faciat quod se non maritabit sine assensu nostro, si de nobis tenuerit, vel sine assensu domini sui de quo tenuerit, si de alio tenuerit.",
                       @"9. Nec nos nec ballivi nostri seisiemus terram aliquam nec redditum pro debito aliquo, quamdiu catalla debitoris sufficiunt ad debitum reddendum; nec plegii ipsius debitoris distringantur quamdiu ipse capitalis debitor sufficit ad solucionem debiti; et si capitalis debitor defecerit in solucione debiti, non habens unde solvat, plegii respondeant de debito; et, si voluerint, habeant terras et redditus debitoris, donec sit eis satisfactum de debito quod ante pro eo solverint, nisi capitalis debitor monstraverit se esse quietum inde versus eosdem plegios.",
                       @"10. Si quis mutuo ceperit aliquid a Judeis, plus vel minus, et moriatur antequam debitum illud solvatur, debitum non usuret quamdiu heres fuerit infra etatem, de quocumque teneat; et si debitum illud inciderit in manus nostras, nos non capiemus nisi catallum contentum in carta.",
                       @"11. Et si quis moriatur, et debitum debeat Judeis, uxor ejus habeat dotem suam, et nichil reddat de debito illo; et si liberi ipsius defuncti qui fuerint infra etatem remanserint, provideantur eis necessaria secundum tenementum quod fuerit defuncti, et de residuo solvatur debitum, salvo servicio dominorum; simili modo fiat de debitis que debentur aliis quam Judeis.",
                       @"12. Nullum scutagium vel auxilium ponatur in regno nostro, nisi per commune consilium regni nostri, nisi ad corpus nostrum redimendum, et primogenitum filium nostrum militem faciendum, et ad filiam nostram primogenitam semel maritandam, et ad hec non fiat nisi racionabile auxilium; simili modo fiat de auxiliis de civitate London.",
                       @"13. Et civitas London. habeat omnes antiquas libertates et liberas consuetudines suas, tam per terras, quam per aquas. Preterea volumus et concedimus quod omnes alie civitates, et burgi, et ville, et portus, habeant omnes libertates et liberas consuetudines suas.",
                       @"14. Et ad habendum commune consilium regni de auxilio assidendo aliter quam in tribus casibus predictis, vel de scutagio assidendo, summoneri faciemus archiepiscopos, episcopos, abbates, comites, et majores barones sigillatim per litteras nostras; et preterea faciemus summoneri in generali per vicecomites et ballivos nostros omnes illos qui de nobis tenent in capite ad certum diem, scilicet ad terminum quadraginta dierum ad minus, et ad certum locum; et in omnibus litteris illius summonicionis causam summonicionis exprimemus; et sic facta summonicione negocium ad diem assignatum procedat secundum consilium illorum qui presentes fuerint, quamvis non omnes summoniti venerint.",
                       @"15. Nos non concedemus de cetero alicui quod capiat auxilium de liberis hominibus suis, nisi ad corpus suum redimendum, et ad faciendum primogenitum filium suum militem, et ad primogenitam filiam suam semel maritandam, et ad hec non fiat nisi racionabile auxilium.",
                       @"16. Nullus distringatur ad faciendum majus servicium de feodo militis, nec de alio libero tenemento, quam inde debetur.",
                       @"17. Communia placita non sequantur curiam nostram, set teneantur in aliquo loco certo.",
                       @"18. Recogniciones de nova disseisina, de morte antecessoris, et de ultima presentacione, non capiantur nisi in suis comitatibus et hoc modo : nos, vel si extra regnum fuerimus, capitalis justiciarius noster, mittemus duos justiciarios per unum quemque comitatum per quatuor vices in anno, qui, cum quatuor militibus cujuslibet comitatus electis per comitatum, capiant in comitatu et in die et loco comitatus assisas predictas.",
                       @"19. Et si in die comitatus assise predicte capi non possint, tot milites et libere tenentes remaneant de illis qui interfuerint comitatui die illo, per quos possint judicia sufficenter fieri, secundum quod negocium fuerit majus vel minus.",
                       @"20. Liber homo non amercietur pro parvo delicto, nisi secundum modum delicti; et pro magno delicto amercietur secundum magnitudinem delicti, salvo contenemento suo; et mercator eodem modo, salva mercandisa sua; et villanus eodem modo amercietur salvo waynagio suo, si inciderint in misericordiam nostram; et nulla predictarum misericordiarum ponatur, nisi per sacramentum proborum hominum de visneto.",
                       @"21. Comites et barones non amercientur nisi per pares suos, et non nisi secundum modum delicti.",
                       @"22. Nullus clericus amercietur de laico tenemento suo, nisi secundum modum aliorum predictorum, et non secundum quantitatem beneficii sui ecclesiastici.",
                       @"23. Nec villa nec homo distringatur facere pontes ad riparias, nisi qui ab antiquo et de jure facere debent.",
                       @"24. Nullus vicecomes, constabularius, coronatores, vel alii ballivi nostri, teneant placita corone nostre.",
                       @"25. Omnes comitatus, hundredi, wapentakii, et trethingi' sint ad antiquas firmas absque ullo incremento, exceptis dominicis maneriis nostris.",
                       @"26. Si aliquis tenens de nobis laicum feodum moriatur, et vicecomes vel ballivus noster ostendat litteras nostras patentes de summonicione nostra de debito quod defunctus nobis debuit, liceat vicecomiti vel ballivo nostro attachiare et imbreviare catalla defuncti inventa in laico feodo, ad valenciam illius debiti, per visum legalium hominum, ita tamen quod nichil inde amoveatur, donec persolvatur nobis debitum quod clarum fuerit, et residuum relinquatur executoribus ad faciendum testamentum defuncti; et, si nichil nobis debeatur ad ipso, omnia catalla cedant defuncto, salvis uxori ipsius et pueris racionabilibus partibus suis.",
                       @"27. Si aliquis liber homo intestatus decesserit, catalla sua per manus propinquorum parentum et amicorum suorum, per visum ecclesie distribuantur, salvis unicuique debitis que defunctus ei debebat.",
                       @"28. Nullus constabularius, vel alius ballivus noster, capiat blada vel alia catalla alicujus, nisi statim inde reddat denarios, aut respectum inde habere possit de voluntate venditoris.",
                       @"29. Nullus constabularius distringat aliquem militem ad dandum denarios pro custodia castri, si facere voluerit custodiam illam in propria persona sua, vel per alium probum hominem, si ipse eam facere non possit propter racionabilem causam; et si nos duxerimus vel miserimus eum in exercitum, erit quietus de custodia, secundum quantitatem temporis quo per nos fuerit in exercitu.",
                       @"30. Nullus vicecomes, vel ballivus noster, vel aliquis alius, capiat equos vel carettas alicujus liberi hominis pro cariagio faciendo, nisi de voluntate ipsius liberi hominis.",
                       @"31. Nec nos nec ballivi nostri capiemus alienum boscum ad castra vel alia agenda nostra, nisi per voluntatem ipsius cujus boscus ille fuerit.",
                       @"32. Nos non tenebimus terras illorum qui convicti fuerint de felonia, nisi per unum annum et unum diem, et tunc reddantur terre dominis feodorum.",
                       @"33. Omnis kidelli de cetero deponantur penitus de Tamisia, et de Medewaye, et per totam Angliam, nisi per costeram maris.",
                       @"34. Breve quod vocatur \"Precipe\" de cetero non fiat alicui de aliquo tenemento unde liber homo amittere possit curiam suam.",
                       @"35. Una mensura vini sit per totum regnum nostrum, et una mensura cervisie, et una mensura bladi, scilicet quarterium Londoniense, et una latitudo pannorum tinctorum et russetorum et halbergettorum, scilicet due ulne infra listas; de ponderibus autem sit ut de mensuris.",
                       @"36. Nichil detur vel capiatur de cetero pro brevi inquisicionis de vita vel membris, set gratis concedatur et non negetur.",
                       @"37. Si aliquis teneat de nobis per feodifirmam, vel per sokagium, vel per burgagium, et de alio terram teneat per servicium militare, nos non habebimus custodiam heredis nec terre sue que est de feodo alterius, occasione illius feodifirme, vel sokagii, vel burgagii; nec habebimus custodiam illius feodifirme, vel sokagii, vel burgagii, nisi ipsa feodifirma debeat servicium militare. Nos non habebimus custodiam heredis vel terre alicujus, quam tenet de alio per servicium militare, occasione alicujus parve serjanterie quam tenet de nobis per servicium reddendi nobis cultellos, vel sagittas, vel hujusmodi.",
                       @"38. Nullus ballivus ponat decetero aliquem ad legem simplici loquela sua, sine testibus fidelibus ad hoc inductis.",
                       @"39. Nullus liber homo capiatur, vel imprisonetur, aut disseisiatur, aut utlagetur, aut exuletur, aut aliquo modo destruatur, nec super eum ibimus, nec super eum mittemus, nisi per legale judicium parium suorum vel per legem terre.",
                       @"40. Nulli vendemus, nulli negabimus, aut differemus rectum aut justiciam.",
                       @"41. Omnes mercatores habeant salvum et securum exire de Anglia, et venire in Angliam, et morari, et ire per Angliam, tam per terram quam per aquam, ad emendum et vendendum, sine omnibus malis toltis, per antiquas et rectas consuetudines, preterquam in tempore gwerre, et si sint de terra contra nos gwerrina; et si tales inveniantur in terra nostra in principio gwerre, attachientur sine dampno corporum et rerum, donec sciatur a nobis vel capitali justiciario nostro quomodo mercatores terre nostre tractentur, qui tunc invenientur in terra contra nos gwerrina; et si nostri salvi sint ibi, alii salvi sint in terra nostra.",
                       @"42. Liceat unicuique decetero exire de regno nostro, et redire, salvo et secure, per terram et per aquam, salva fide nostra, nisi tempore gwerre per aliquod breve tempus, propter communem utilitatem regni, exceptis imprisonatis et utlagatis secundum legem regni, et gente de terra contra nos gwerrina, et mercatoribus, de quibus fiat sicut predictum est.",
                       @"43. Si quis tenuerit de aliqua eskaeta, sicut de honore Walligefordie, Notingeham, Bolonie, Lancastrie, vel de aliis eskaetis que sunt in manu nostra et sunt baronie, et obierit, heres ejus non det aliud relevium, nec faciat nobis aliud servicium quam faceret baroni si baronia illa esset in manu baronis; et nos eodem modo eam tenebimus quo baro eam tenuit.",
                       @"44. Homines qui manent extra forestam non veniant decetero coram justiciariis nostris de foresta per communes summoniciones, nisi sint in placito, vel plegii alicujus vel aliquorum, qui attachiati sint pro foresta.",
                       @"45. Nos non faciemus justiciarios, constabularios, vicecomites, vel ballivos, nisi de talibus qui sciant legem regni et eam bene velint observare.",
                       @"46. Omnes barones qui fundaverunt abbacias, unde habent cartas regum Anglie, vel antiquam tenuram, habeant earum custodiam cum vacaverint, sicut habere debent.",
                       @"47. Omnes foreste que afforestate sunt tempore nostro, statim deafforestentur; et ita fiat de ripariis que per nos tempore nostro posite sunt in defenso.",
                       @"48. Omnes male consuetudines de forestis et warennis, et de forestariis et warennariis, vicecomitibus et eorum ministris, ripariis et earum custodibus, statim inquirantur in quolibet comitatu per duodecim milites juratos de eodem comitatu, qui debent eligi per probos homines ejusdem comitatus, et infra quadraginta dies post inquisicionem factam, penitus, ita quod numquam revocentur, deleantur per eosdem, ita quod nos hoc sciamus prius, vel justiciarius noster, si in Anglia non fuerimus.",
                       @"49. Omnes obsides et cartas statim reddemus que liberate fuerunt nobis ab Anglicis in securitatem pacis vel fidelis servicii.",
                       @"50. Nos amovebimus penitus de balliis parentes Gerardi de Athyes, quod decetero nullam habeant balliam in Anglia, Engelardum de Cygony, Petrum et Gionem et Andream de Cancellis, Gionem de Cygony, Galfridum de Martinny et fratres ejus, Philippum Marc. et fratres ejus, et Galfridum nepotem ejus, et totam sequelam eorundem.",
                       @"51. Et statim post pacis reformacionem amovebimus de regno omnes alienigenas milites, balistarios, servientes, stipendiarios, qui venerint cum equis et armis ad nocumentum regni.",
                       @"52. Si quis fuerit disseisitus vel elongatus per nos sine legali judicio parium suorum, de terris, castellis, libertatibus, vel jure suo, statim ea ei restituemus; et si contencio super hoc orta fuerit, tunc inde fiat per judicium viginti quinque baronum, de quibus fit mencio inferius in securitate pacis. De omnibus autem illis de quibus aliquis disseisitus fuerit vel elongatus sine legali judicio parium suorum, per Henricum regem patrem nostrum vel per Ricardum regem fratrem nostrum, que in manu nostra habemus, vel que alii tenent, que nos oporteat warantizare, respectum habebimus usque ad communem terminum crucesignatorum; exceptis illis de quibus placitum motum fuit vel inquisicio facta per preceptum nostrum, ante suscepcionem crucis nostre : cum autem redierimus de peregrinacione nostra, vel si forte remanserimus a peregrinacione nostra, statim inde plenam justiciam exhibebimus.",
                       @"53. Eundem autem respectum habebimus et eodem modo de justicia exhibenda, de forestis deafforestandis vel remanseris forestis quas Henricus pater noster vel Ricardus frater noster afforestaverunt, et de custodiis terrarum que sunt de alieno feodo, cujusmodi custodias hucusque habuimus occasione feodi quod aliquis de nobis tenuit per servicium militare, et de abbaciis que fundate fuerint in feodo alterius quam nostro, in quibus dominus feodi dixerit se jus habere; et cum redierimus, vel si remanserimus a peregrinatione nostra, super hiis conquerentibus plenam justiciam statim exhibebimus.",
                       @"54. Nullus capiatur nec imprisonetur propter appellum femine de morte alterius quam viri sui.",
                       @"55. Omnes fines qui injuste et contra legem terre facti sunt nobiscum, et omnia amerciamenta facta injuste et contra legem terre, omnino condonentur, vel fiat inde per judicium viginti quinque baronum de quibus fit mencio inferius in securitate pacis, vel per judicium majoris partis eorundem, una cum predicto Stephano Cantuarensi archiepiscopo, si interesse poterit, et aliis quos secum ad hoc vocare voluerit. Et si interesse non poterit, nichilominus procedat negocium sine eo, ita quod, si aliquis vel aliqui de predictis viginti quinque baronibus fuerint in simili querela, amoveantur quantum ad hoc judicium, et alii loco eorum per residuos de eisdem viginti quinque, tantum ad hoc faciendum electi et jurati substituantur.",
                       @"56. Si nos disseisivimus vel elongavimus Walenses de terris vel libertatibus vel rebus aliis, sine legali judicio parium suorum, in Anglia vel in Wallia, eis statim reddantur; et si contencio super hoc orta fuerit, tunc inde fiat in Marchia per judicium parium suorum; de tenementis Anglie secundum legem Anglie; de tenementis Wallie secundum legem Wallie; de tenementis Marchie secundum legem Marchie. Idem facient Walenses nobis et nostris.",
                       @"57. De omnibus autem illis de quibus aliquis Walensium disseisitus fuerit vel elongatus, sine legali judicio parium suorum, per Henricum regem patrem nostrum vel Ricardum regem fratrem nostrum, que nos in manu nostra habemus, vel que alii tenent que nos oporteat warantizare, respectum habebimus usque ad communem terminum crucesignatorum, illis exceptis de quibus placitum motum fuit vel inquisicio facta per preceptum nostrum ante suscepcionem crucis nostre; cum autem redierimus, vel si forte remanserimus a peregrinatione nostra, statim eis inde plenam justitiam exhibebimus, secundum leges Walensium et partes predictas.",
                       @"58. Nos reddemus filium Lewelini statim, et omnes obsides de Wallia, et cartas que nobis liberate fuerunt in securitate pacis.",
                       @"59. Nos faciemus Alexandro regi Scottorum de sororibus suis, et obsidibus reddendis, et libertatibus suis, et jure suo, secundum formam in qua faciemus aliis baronibus nostris Anglie, nisi aliter esse debeat per cartas quas habemus de Willelmo patre ipsius, quondam rege Scottorum; et hoc erit per judicium parium suorum in curia nostra.",
                       @"60. Omnes autem istas consuetudines predictas et libertates quas nos concessimus in regno nostro tenendas quantum ad nos pertinet erga nostros, omnes de regno nostro, tam clerici quam laici, observent quantum ad se pertinet erga suos.",
                       @"61. Cum autem pro Deo, et ad emendacionem regni nostri, et ad melius sopiendum discordiam inter nos et barones nostros ortam, hec omnia predicta concesserimus, volentes ea integra et firma stabilitate in perpetuum gaudere, facimus et concedimus eis securitatem subscriptam; videlicet quod barones eligant viginti quinque barones de regno quos voluerint, qui debeant pro totis viribus suis observare, tenere, et facere observari, pacem et libertates quas eis concessimus, et hac presenti carta nostra confirmavimus; ita scilicet quod, si nos, vel justiciarius noster, vel ballivi nostri, vel aliquis de ministris nostris, in aliquo erga aliquem deliquerimus, vel aliquem articulorum pacis aut securitatis transgressi fuerimus, et delictum ostensum fuerit quatuor baronibus de predictis viginti quinque baronibus, illi quatuor barones accedant ad nos vel ad justiciarium nostrum, si fuerimus extra regnum, proponentes nobis excessum; petent ut excessum illum sine dilacione faciamus emendari. Et si nos excessum non emendaverimus, vel, si fuerimus extra regnum, justiciarius noster non emendaverit infra tempus quadraginta dierum computandum a tempore quo monstratum fuerit nobis vel justiciario nostro, si extra regnum fuerimus, predicti quatuor barones referant causam illam ad residuos de illis viginti quinque baronibus, et illi viginti quinque barones cum communia tocius terre distringent et gravabunt nos modis omnibus quibus poterunt, scilicet per capcionem castrorum, terrarum, possessionum, et aliis modis quibus poterunt, donec fuerit emendatum secundum arbitrium eorum, salva persona nostra et regine nostre et liberorum nostrorum; et cum fuerit emendatum intendent nobis sicut prius fecerunt. Et quicumque voluerit de terra juret quod ad predicta omnia exequenda parebit mandatis predictorum viginti quinque baronum, et quod gravabit nos pro posse suo cum ipsis, et nos publice et libere damus licenciam jurandi cuilibet qui jurare voluerit, et nulli umquam jurare prohibebimus. Omnes autem illos de terra qui per se et sponte sua noluerint jurare viginti quinque baronibus de distringendo et gravando nos cum eis, faciemus jurare eosdem de mandato nostro sicut predictum est. Et si aliquis de viginti quinque baronibus decesserit, vel a terra recesserit, vel aliquo alio modo impeditus fuerit, quominus ista predicta possent exequi, qui residui fuerint de predictis viginti quinque baronibus eligant alium loco ipsius, pro arbitrio suo, qui simili modo erit juratus quo et ceteri. In omnibus autem que istis viginti quinque baronibus committuntur exequenda, si forte ipsi viginti quinque presentes fuerint, et inter se super re aliqua discordaverint, vel aliqui ex eis summoniti nolint vel nequeant interesse, ratum habeatur et firmum quod major pars eorum qui presentes fuerint providerit, vel preceperit ac si omnes viginti quinque in hoc consensissent; et predicti viginti quinque jurent quod omnia antedicta fideliter observabunt, et pro toto posse suo facient observari. Et nos nichil impetrabimus ab aliquo, per nos nec per alium, per quod aliqua istarum concessionum et libertatum revocetur vel minuatur; et, si aliquid tale impetratum fuerit, irritum sit et inane et numquam eo utemur per nos nec per alium.",
                       @"62. Et omnes malas voluntates, indignaciones, et rancores, ortos inter nos et homines nostros, clericos et laicos, a tempore discordie, plene omnibus remisimus et condonavimus. Preterea omnes transgressiones factas occasione ejusdem discordie, a Pascha anno regni nostri sextodecimo usque ad pacem reformatam, plene remisimus omnibus, clericis et laicis, et quantum ad nos pertinet plene condonavimus. Et insuper fecimus eis fieri litteras testimoniales patentes domini Stephani Cantuariensis archiepiscopi, domini Henrici Dublinensis archiepiscopi, et episcoporum predictorum et magistri Pandulfi, super securitate ista et concessionibus prefatis.",
                       @"63. Quare volumus et firmiter precipimus quod Anglicana ecclesia libera sit et quod homines in regno nostro habeant et teneant omnes prefatas libertates, jura, et concessiones, bene et in pace, libere et quiete, plene et integre, sibi et heredibus suis, de nobis et heredibus nostris, in omnibus rebus et locis, in perpetuum, sicut predictum est. Juratum est autem tam ex parte nostra quam ex parte baronum, quod hec omnia supradicta bona fide et sine malo ingenio observabuntur. Testibus supradictis et multis aliis. Data per manum nostram in prato quod vocatur Ronimed. inter Windlesoram et Stanes, quinto decimo die junii, anno regni nostri decimo septimo."
                   ]]
              ]]
         ]],
        [[Source alloc]
         initWithTitle:@"Creeds"
         subtitle:@"A collection of early Christian creeds."
         date:@"300s-500s"
         works:@[
             [[Work alloc]
              initWithTitle:@"Nicene Creed"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Symbolum Nicænum"
                   text:@[
                       @"Credo in unum Deum, Patrem omnipotentem, factorem caeli et terrae,visibilium omnium et invisibilium.",
                       @"Et in unum Dominum Iesum Christum, Filium Dei unigenitum, et ex Patre natum ante omnia saecula.",
                       @"Deum de Deo, Lumen de Lumine, Deum verum de Deo vero, genitum non factum, consubstantialem Patri; per quem omnia facta sunt.",
                       @"Qui propter nos homines et propter nostram salutem descendit de caelis.",
                       @"Et incarnatus est de Spiritu Sancto ex Maria Virgine, et homo factus est.",
                       @"Crucifixus etiam pro nobis sub Pontio Pilato, passus et sepultus est, et resurrexit tertia die, secundum Scripturas, et ascendit in caelum, sedet ad dexteram Patris.",
                       @"Et iterum venturus est cum gloria, iudicare vivos et mortuos, cuius regni non erit finis.",
                       @"Et in Spiritum Sanctum, Dominum et vivificantem, qui ex Patre Filioque procedit.",
                       @"Qui cum Patre et Filio simul adoratur et conglorificatur: qui locutus est per prophetas.",
                       @"Et unam, sanctam, catholicam et apostolicam Ecclesiam.",
                       @"Confiteor unum baptisma in remissionem peccatorum.",
                       @"Et expecto resurrectionem mortuorum, et vitam venturi saeculi."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Athanasian Creed"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Quicumque Vult"
                   text:@[
                       @"Quicumque vult salvus esse, ante omnia opus est, ut teneat catholicam fidem:",
                       @"Quam nisi quisque integram inviolatamque servaverit, absque dubio in aeternam peribit.",
                       @"Fides autem catholica haec est: ut unum Deum in Trinitate, et Trinitatem in unitate veneremur.",
                       @"Neque confundentes personas, neque substantiam seperantes.",
                       @"Alia est enim persona Patris alia Filii, alia Spiritus Sancti:",
                       @"Sed Patris, et Fili, et Spiritus Sancti una est divinitas, aequalis gloria, coeterna maiestas.",
                       @"Qualis Pater, talis Filius, talis Spiritus Sanctus. Increatus Pater, increatus Filius, increatus Spiritus Sanctus.",
                       @"Immensus Pater, immensus Filius, immensus Spiritus Sanctus.",
                       @"Aeternus Pater, aeternus Filius, aeternus Spiritus Sanctus.",
                       @"Et tamen non tres aeterni, sed unus aeternus.",
                       @"Sicut non tres increati, nec tres immensi, sed unus increatus, et unus immensus.",
                       @"Similiter omnipotens Pater, omnipotens Filius, omnipotens Spiritus Sanctus.",
                       @"Et tamen non tres omnipotentes, sed unus omnipotens.",
                       @"Ita Deus Pater, Deus Filius, Deus Spiritus Sanctus.",
                       @"Et tamen non tres dii, sed unus est Deus.",
                       @"Ita Dominus Pater, Dominus Filius, Dominus Spiritus Sanctus.",
                       @"Et tamen non tres Domini, sed unus est Dominus.",
                       @"Quia, sicut singillatim unamquamque personam Deum ac Dominum confiteri christiana veritate compelimur: ita tres Deos aut Dominos dicere catholica religione prohibemur.",
                       @"Pater a nullo est factus: nec creatus, nec genitus.",
                       @"Filius a Patre solo est: non factus, nec creatus, sed genitus.",
                       @"Spiritus Sanctus a Patre et Filio: non factus, nec creatus, nec genitus, sed procedens.",
                       @"Unus ergo Pater, non tres Patres: unus Filius, non tres Filii: unus Spiritus Sanctus, non tres Spiritus Sancti.",
                       @"Et in hac Trinitate nihil prius aut posterius, nihil maius aut minus: sed totae tres personae coaeternae sibi sunt et coaequales.",
                       @"Ita ut per omnia, sicut iam supra dictum est, et unitas in Trinitate, et Trinitas in unitate veneranda sit.",
                       @"Qui vult ergo salvus esse, ita de Trinitate sentiat.",
                       @"Sed necessarium est ad aeternam salutem, ut incarnationem quoque Domini nostri Iesu Christi fideliter credat.",
                       @"Est ergo fides recta ut credamus et confiteamur, quia Dominus noster Iesus Christus, Dei Filius, Deus et homo est.",
                       @"Deus est ex substantia Patris ante saecula genitus: et homo est ex substantia matris in saeculo natus.",
                       @"Perfectus Deus, perfectus homo: ex anima rationali et humana carne subsistens.",
                       @"Aequalis Patri secundum divinitatem: minor Patre secundum humanitatem.",
                       @"Qui licet Deus sit et homo, non duo tamen, sed unus est Christus.",
                       @"Unus autem non conversione divinitatis in carnem, sed assumptione humanitatis in Deum.",
                       @"Unus omnino, non confusione substantiae, sed unitate personae.",
                       @"Nam sicut anima rationalis et caro unus est homo: ita Deus et homo unus est Christus.",
                       @"Qui passus est pro salute nostra: descendit ad inferos: tertia die resurrexit a mortuis.",
                       @"Ascendit ad caelos, sedet ad dexteram Dei Patris omnipotentis: inde venturus est iudicare vivos et mortuos.",
                       @"Ad cuius adventum omnes homines resurgere habent cum corporibus suis: et reddituri sunt de factis propriis rationem.",
                       @"Et qui bona egerunt, ibunt in vitam aeternam: qui vero mala, in ignem aeternum.",
                       @"Haec est fides catholica, quam nisi quisque fideliter firmiterque crediderit, salvus esse non poterit.",
                       @"Amen."
                   ]]
              ]],
             [[Work alloc]
              initWithTitle:@"Apostle's Creed"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Symbolum Apostolorum"
                   text:@[
                       @"Credo in Deum Patrem omnipotentem, Creatorem caeli et terrae.",
                       @"Et in Iesum Christum, Filium eius unicum, Dominum nostrum, qui conceptus est de Spiritu Sancto, natus ex Maria Virgine, passus sub Pontio Pilato, crucifixus, mortuus, et sepultus, descendit ad inferos, tertia die resurrexit a mortuis, ascendit ad caelos, sedet ad dexteram Dei Patris omnipotentis, inde venturus est iudicare vivos et mortuos.",
                       @"Credo in Spiritum Sanctum, sanctam Ecclesiam catholicam, sanctorum communionem, remissionem peccatorum, carnis resurrectionem, vitam aeternam.",
                       @"Amen."
                   ]]
              ]]
         ]],
        [[Source alloc]
         initWithTitle:@"Hymns and Songs"
         subtitle:@"A collection of Christian hymns and songs."
         date:@"400s-1700s"
         works:@[
             [[Work alloc]
             initWithTitle:@"O Come, All Ye Faithful"
             sections:@[
                 [[WorkSection alloc]
                  initWithHeader:@"Adeste Fidelis"
                  text:@[
                      @"Adeste, fideles, laeti, triumphantes,\nvenite, venite in Bethlehem:\nnatum videte regem angelorum.\nvenite, adoremus Dominum",
                      @"Deum de Deo, lumen ex lumine,\ngestant puellae viscera,\nDeum verum, genitum non factum.\nvenite, adoremus Dominum",
                      @"Cantet nunc io, chorus angelorum;\ncantet nunc aula caelestium:\ngloria, gloria in excelsis Deo.\nvenite, adoremus Dominum",
                      @"En grege relicto, humiles ad cunas\nvocati pastores approperant:\net nos ovanti gradu festinemus:\nvenite, adoremus Dominum",
                      @"Ergo qui natus die hodierna\nJesu, tibi sit gloria:\nPatris aeterni verbum caro factum.\nvenite, adoremus Dominum"
                  ]]
             ]],
             [[Work alloc]
             initWithTitle:@"O Come O Come, Emmanuel"
             sections:@[
                 [[WorkSection alloc]
                  initWithHeader:@"Veni, Veni, Emmanuel"
                  text:@[
                      @"Veni, veni, Emmanuel;\ncaptivum solve Israel\nqui gemit in exilio\nprivatus Dei Filio.\ngaude, gaude; Emmanuel nascetur pro te, Israel.",
                      @"Veni, O Jesse Virgula,\nex hostis tuos ungula,\nde specu tuos tartari\neduc et antro barathri.\ngaude, gaude; Emmanuel nascetur pro te, Israel.",
                      @"Veni, veni, O Oriens;\nsolare nos adveniens;\nnoctis depelle nebulas\ndirasque noctis tenebras.\ngaude, gaude; Emmanuel nascetur pro te, Israel.",
                      @"Veni, Clavis Davidica;\nregna reclude caelica;\nfac iter tutum superum,\net claude vias inferum.\ngaude, gaude, Emmanuel nascetur pro te, Israel.",
                      @"Veni, veni, Adonai,\nqui populo in Sinai\nlegem dedisti vertice\nin maiestate gloriae.\ngaude, gaude, Emmanuel nascetur pro te, Israel."
                  ]]
             ]],
             [[Work alloc]
             initWithTitle:@"Of the Father's Heart Begotten"
             sections:@[
                 [[WorkSection alloc]
                  initWithHeader:@"Corde Natus ex Parentus"
                  text:@[
                      @"Corde natus ex parentis ante mundi exordium\nA et O cognominatus, ipse fons et clausula\nomnium quae sunt, fuerunt, quaeque post futura sunt.",
                      @"Ipse iussit et creata, dixit ipse et facta sunt,\nterra, caelum, fossa ponti, trina rerum machina,\nquaeque in his vigent sub alto solis et lunae globo.",
                      @"Corporis formam caduci, membra morti obnoxia\ninduit, ne gens periret primoplasti ex germine,\nmerserat quem lex profundo noxialis tartaro.",
                      @"O beatus ortus ille, virgo cum puerpera\nedidit nostram salutem, feta Sancto Spiritu,\net puer redemptor orbis os sacratum protulit.",
                      @"Psallat altitudo caeli, psallite omnes angeli,\nquidquid est virtutis usquam psallat in laudem Dei,\nnulla linguarum silescat, vox et omnis consonet.",
                      @"Ecce, quem vates vetustis concinebant saeculis,\nquem prophetarum fideles paginae spoponderant,\nemicat promissus olim; cuncta conlaudent eum.",
                      @"Macte iudex mortuorum, macte rex viventium,\ndexter in Parentis arce qui cluis virtutibus,\nomnium venturus inde iustus ultor criminum.",
                      @"Te senes et te iuventus, parvulorum te chorus,\nturba matrum, virginumque, simplices puellulae,\nvoce concordes pudicis perstrepant concentibus.",
                      @"Tibi, Christe, sit cum Patre hagioque Pneumate\nhymnus, decus, laus perennis, gratiarum actio,\nhonor, virtus, victoria, regnum aeternaliter."
                  ]]
             ]],
             [[Work alloc]
             initWithTitle:@"Requiem"
             sections:@[
                 [[WorkSection alloc]
                  initWithHeader:@"Introitus"
                  text:@[
                      @"Requiem aeternam dona ets, Domine,\net lux perpetua luceat ets.\nTe decet hymnus, Deus, in Sion,\net tibi reddetur votum in Jerusalem.\nExaudi orationem meam,\nad te omnis caro veniet.\nRequiem aeternam dona ets, Domine,\net lux perpetua luceat ets."
                  ]],
                 [[WorkSection alloc]
                  initWithHeader:@"Kyrie"
                  text:@[
                      @"Kyrie eleison.\nChriste eleison.\nKyrie eleison."
                  ]],
                 [[WorkSection alloc]
                  initWithHeader:@"Sequentia"
                  text:@[
                      @"Dies irae, dies illa\nSolvet saeclum in favilla,\nTeste David cum Sibylla.",
                      @"Quantus tremor est futurus\nQuando judex est venturus\nCuncta stricte discussurus.",
                      @"Tuba mirum spargens sonum\nPer sepulcra regionum\nCoget omnes ante thronum.",
                      @"Mors slopebit et natora\nCum resurget creatura\nJudicanti responsura.",
                      @"Liber scriptus proferetur\nIn quo totum continetur,\nUnde mundus judicetur.",
                      @"Judex ergo cum sedebit\nQuidquid latet apparebit,\nNil inultum remanebit.",
                      @"Quid sum miser tunc dicturus,\nQuem patronum togaturus,\nCum vix justus sit securus?",
                      @"Rex tremendae majestatis,\nQui salvandos salvas gratis,\nSalve me, fons pietatis.",
                      @"Recordare, Jesu pie,\nQuod sum causa tuae viae,\nNe me perdas ilia die.",
                      @"Quaerens me sedisti lassus,\nRedemisti crucem passus,\nTamus labor non sit cassus.",
                      @"Juste judex ultionis\nDonum fac remissionis\nAnte diem rationis.",
                      @"lngemisco tamquam reus,\nCulpa rubet vultus meus,\nSupplicanti parce, Deus.",
                      @"Qui Mariam absolvisti\nEt latronem exaudisti,\nMihi quoque spem dedisti.",
                      @"Preces meae non sum dignae,\nSed tu bonus fac benigne,\nNe perenni cremet igne.",
                      @"Inter oves locurn praesta,\nEt ab haedis me sequestra,\nStatuens in parle dextra.",
                      @"Confutatis maledictis\nFlammis acribus addictis,\nVoca me cum benedictis.",
                      @"Oro supplex et acclinis,\nCor contritum quasi cinis,\nGere curam mei finis.",
                      @"Lacrimosa dies ilia\nQua resurget ex favilla\nJudicandus homo reus.\nHuic ergo parce, Deus,\nPie Jesu Domine,\nDona els requiem."
                  ]],
                 [[WorkSection alloc]
                  initWithHeader:@"Offertorium"
                  text:@[
                      @"Domine, Jesu Christe, Rex gloriae,\nlibera animas omniurn fidelium defunctorum\nde poenis inferni, et de prof undo lacu:\nlibera cas de ore leonis,\nne absorbeat eas tartarus, ne cadant in obscurum,",
                      @"Sed signifer sanctus Michael\nrepraesentet eas in lucem sanctam,\nquam olim Abrahae promisisti\net semini ejus.",
                      @"Hostias et preces, tibi, Domine,\nlaudis offerimus:\ntu suscipe pro animabus illis,\nquarum hodie memoriam facimus:\nfac eas, Domine, de morte Iransire ad vitam,\nquam olim Abrahae promisisti\net semini ejus."
                  ]],
                 [[WorkSection alloc]
                  initWithHeader:@"Sanctus"
                  text:@[
                      @"Sanctus\nSanctus. Sanctus, Sanctus,\nDominus Deus Sabaoth!\nPleni suni coeli et terra gloria tua.\nOsanna in excelsis."
                  ]],
                 [[WorkSection alloc]
                  initWithHeader:@"Benedictus"
                  text:@[
                      @"Benedictus qui venit in nomine Domini.\nOsanna in excelsis."
                  ]],
                 [[WorkSection alloc]
                  initWithHeader:@"Agnus Dei"
                  text:@[
                      @"Agnus Dei, qui tollis peccata mundi,\ndona eis requiem.\nAgnus Dei, qui tollis peccata mundi,\ndona eis requiem sempiternam."
                  ]],
                 [[WorkSection alloc]
                  initWithHeader:@"Communio"
                  text:@[
                      @"Lux aeterna luceat eis, Domine,\ncum sanctis mis in aeternum,\nquia pius es.\nRequiem aeternam dona eis, Domine,\net lux perpetua luceat eis,\ncum sanetis tuis in aeternum,\nquia plus es."
                  ]]
             ]],
             [[Work alloc]
             initWithTitle:@"Stood the Mournful Mother"
             sections:@[
                 [[WorkSection alloc]
                  initWithHeader:@"Stabat Mater Dolorosa"
                  text:@[
                      @"Stabat mater dolorosa iuxta crucem lacrimosa,\ndum pendebat filius;\ncuius animam gementem, contristatam et dolentem,\npertransivit gladius.",
                      @"O quam tristis et afflicta fuit illa benedicta\nmater unigeniti,\nquae maerebat et dolebat et tremebat, cum videbat\nnati poenas inclyti.",
                      @"Quis est homo qui non fleret, Christi matrem si videret\nin tanto supplicio?\nquis non posset contristari, piam matrem, contemplari\ndolentem cum filio?",
                      @"Pro peccatis suae gentis vidit Iesum in tormentis\net flagellis subditum:\nvidit suum dulcem natum morientem desolatum,\ndum emisit spiritum.",
                      @"Eia mater, fons amoris, me sentire vim doloris\nfac ut tecum lugeam;\nfac ut ardeat cor meum, in amando Christum Deum\nut sibi complaceam."
                  ]]
             ]],
             [[Work alloc]
              initWithTitle:@"Ye Choirs of New Jerusalem"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Chorus Novae Ierusalem"
                   text:@[
                       @"Chorus novae Ierusalem\nnovam meli dulcidinem\npromat colens cum sobriis\npaschale festum gaudiis,",
                       @"Quo Christus, invictus leo,\ndracone surgens obruto,\ndum voce viva personat,\na morte functos excitat.",
                       @"Quam devorarat improbus,\npraedam refudit tartarus;\ncaptivitate libera\nIesum sequuntur agmina.",
                       @"Triumphat ille splendide,\net dignus amplitudine\nsoli polique patriam\nunam facit rem publicam.",
                       @"Ipsum canendo supplices\nregem precemur milites\nut in suo clarissimo\nnos ordinet palatio.",
                       @"Per saecla metae nescia\nPatri supremo gloria\nhonorque sit cum Filio\net Spiritu Paraclito."
                   ]]
              ]]
         ]],
        [[Source alloc]
         initWithTitle:@""
         subtitle:@""
         date:@""
         works:@[
             [[Work alloc]
              initWithTitle:@""
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@""
                   text:@[
                       @""
                   ]]
              ]]
         ]]
    ];
}

@end
