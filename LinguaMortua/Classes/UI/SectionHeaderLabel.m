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
    self.textAlignment = NSTextAlignmentCenter;
    self.numberOfLines = 0;
    self.lineBreakMode = NSLineBreakByWordWrapping;
    self.font = [UIFont fontWithName:@"HiraMinProN-W3" size:16];
    
    bool isDarkMode = UITraitCollection.currentTraitCollection.userInterfaceStyle == UIUserInterfaceStyleDark;
    UIColor *textColor = isDarkMode ? UIColor.whiteColor : UIColor.blackColor;
    UIColor *backgroundColor = isDarkMode ? UIColor.blackColor : UIColor.whiteColor;
    
    self.textColor = textColor;
    self.backgroundColor = backgroundColor;
    
    return self;
}

@end
