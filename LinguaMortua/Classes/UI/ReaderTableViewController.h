//
//  ReaderTableViewController.h
//  LinguaMortua
//
//  Created by Jared Warren on 9/5/20.
//  Copyright © 2020 Warren. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Work;


@interface ReaderTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property Work *work;

@end
