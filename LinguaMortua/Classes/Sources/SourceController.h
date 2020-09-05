//
//  SourceController.h
//  LinguaMortua
//
//  Created by Jared Warren on 9/5/20.
//  Copyright © 2020 Warren. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SourceController : NSObject

+ (SourceController *)shared;
@property NSArray *sources;

@end

NS_ASSUME_NONNULL_END
