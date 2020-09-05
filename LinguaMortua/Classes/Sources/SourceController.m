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
         initWithTitle:@"Alcuin of York"
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
