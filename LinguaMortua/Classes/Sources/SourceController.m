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
         initWithTitle:@"Alcuin of York" // not done with alcuin
         subtitle:@"Latin: Flaccus Albinus Alcuinus – an English scholar, clergyman, poet, and teacher from York, Northumbria. Alcuin wrote many theological and dogmatic treatises, as well as a few grammatical works and a number of poems. \"The most learned man anywhere to be found\", according to Einhard's Life of Charlemagne, he is considered among the most important architects of the Carolingian Renaissance."
         date:@"circa 735-804"
         works:@[
             [[Work alloc]
              initWithTitle:@"De Luscinia"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"De Luscinia"
                   info:@"Concerning a Nightingale"
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
              initWithTitle:@"Versus de Cuculo"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Versus de Cuculo"
                   info:@"Lines of the Cuckoo"
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
         initWithTitle:@"The Day of Wrath"
         subtitle:@"Medieval Latin poem describing the Last Judgment, with a trumpet summoning souls before the throne of God. The saved will be delivered and the unsaved cast into eternal flames. Best known for its use in the Requiem"
         date:@"13th century"
         works:@[
             [[Work alloc]
              initWithTitle:@"Dies Irae"
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@"Dies Irae"
                   info:@"The Day of Wrath"
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
         initWithTitle:@""
         subtitle:@""
         date:@""
         works:@[
             [[Work alloc]
              initWithTitle:@""
              sections:@[
                  [[WorkSection alloc]
                   initWithHeader:@""
                   info:@""
                   text:@[
                       @""
                   ]]
              ]]
         ]]
    ];
}

@end
