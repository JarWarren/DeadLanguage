//
//  Source.h
//  LinguaMortua
//
//  Created by Jared Warren on 9/5/20.
//  Copyright © 2020 Warren. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Source : NSObject

@property NSString *title;
@property NSString *subtitle;
@property NSString *date;
@property NSArray *works;

- (instancetype) initWithTitle:(NSString *)title
                      subtitle:(NSString *)subtitle
                          date:(NSString *)date
                         works:(NSArray *)works;

@end

NS_ASSUME_NONNULL_END
