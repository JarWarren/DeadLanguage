//
//  SectionHeaderLabel.m
//  LinguaMortua
//
//  Created by Jared Warren on 10/3/20.
//  Copyright © 2020 Warren. All rights reserved.
//

#import "SectionHeaderLabel.h"

@implementation SectionHeaderLabel

- (instancetype)initWithTitle:(NSString *)title {
    self = [super init];

    self.text = title;
    self.font = [UIFont fontWithName:@"HiraMinProN-W3" size:16];
    self.numberOfLines = 0;
    self.textAlignment = NSTextAlignmentCenter;
    self.lineBreakMode = NSLineBreakByWordWrapping;
    self.backgroundColor = UIColor.systemBackgroundColor;

    return self;
}

@end
