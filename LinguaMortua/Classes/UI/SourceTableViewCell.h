//
//  SourceTableViewCell.h
//  LinguaMortua
//
//  Created by Jared Warren on 9/6/20.
//  Copyright © 2020 Warren. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SourceTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;

@end
