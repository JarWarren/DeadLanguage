//
//  Source.m
//  LinguaMortua
//
//  Created by Jared Warren on 9/5/20.
//  Copyright © 2020 Warren. All rights reserved.
//

#import "Source.h"

@implementation Source

- (instancetype)initWithTitle:(NSString *)title subtitle:(NSString *)subtitle date:(NSString *)date works:(NSArray *)works {
    self = [super init];
    if (self) {
        _title = title;
        _subtitle = subtitle;
        _date = date;
        _works = works;
    }
    return self;
}

@end
