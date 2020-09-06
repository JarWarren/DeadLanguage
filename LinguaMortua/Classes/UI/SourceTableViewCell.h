//
//  SourceTableViewCell.h
//  LinguaMortua
//
//  Created by Jared Warren on 9/6/20.
//  Copyright © 2020 Warren. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SourceTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;

@end

NS_ASSUME_NONNULL_END
