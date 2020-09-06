//
//  WorkSection.m
//  LinguaMortua
//
//  Created by Jared Warren on 9/5/20.
//  Copyright © 2020 Warren. All rights reserved.
//

#import "WorkSection.h"

@implementation WorkSection

- (instancetype)initWithHeader:(NSString *)header text:(NSArray *)text {
    self = [super init];
    if (self) {
        _header = header;
        _text = text;
    }
    return self;
}

@end
