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
         initWithTitle:@"Alcuin of York" // not done with alcuin
         subtitle:@"Latin: Flaccus Albinus Alcuinus – an English scholar, clergyman, poet, and teacher from York, Northumbria. Alcuin wrote many theological and dogmatic treatises, as well as a few grammatical works and a number of poems. \"The most learned man anywhere to be found\", according to Einhard's Life of Charlemagne, he is considered among the most important architects of the Carolingian Renaissance."
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
                   ]],
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
         initWithTitle:@"Day of Wrath"
         subtitle:@"Medieval Latin poem describing the Last Judgment, with a trumpet summoning souls before the throne of God. The saved will be delivered and the rest cast into eternal flames. Best known for its use in the Requiem."
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
