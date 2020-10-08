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
    UIFont *font = [UIFont fontWithName:@"HiraMinProN-W3" size:16];
    UIFontMetrics *metrics = [UIFontMetrics metricsForTextStyle:UIFontTextStyleLargeTitle];
    self.font = [metrics scaledFontForFont:font];
    self.numberOfLines = 0;
    self.textAlignment = NSTextAlignmentCenter;
    self.lineBreakMode = NSLineBreakByWordWrapping;
    self.backgroundColor = UIColor.systemBackgroundColor;

    return self;
}

@end
