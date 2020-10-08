//
//  DynamicFontLabel.m
//  LinguaMortua
//
//  Created by Jared Warren on 10/7/20.
//  Copyright © 2020 Warren. All rights reserved.
//

#import "DynamicFontLabel.h"

@implementation DynamicFontLabel

- (void)awakeFromNib {
    [super awakeFromNib];
    
    UIFontMetrics *metrics = [UIFontMetrics metricsForTextStyle:UIFontTextStyleTitle1];
    self.font = [metrics scaledFontForFont:self.font];
}

@end
