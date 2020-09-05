//
//  Work.h
//  LinguaMortua
//
//  Created by Jared Warren on 9/5/20.
//  Copyright © 2020 Warren. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Work : NSObject

@property NSString *title;
@property NSArray *sections;

- (instancetype) initWithTitle:(NSString *)title
                     sections:(NSArray *)sections;

@end

NS_ASSUME_NONNULL_END
