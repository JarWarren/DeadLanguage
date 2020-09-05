//
//  Work.m
//  LinguaMortua
//
//  Created by Jared Warren on 9/5/20.
//  Copyright © 2020 Warren. All rights reserved.
//

#import "Work.h"

@implementation Work

- (instancetype)initWithTitle:(NSString *)title sections:(NSArray *)sections {
    self = [super init];
    if (self) {
        _title = title;
        _sections = sections;
    }
    return self;
}

@end
