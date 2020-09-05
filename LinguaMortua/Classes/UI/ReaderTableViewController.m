//
//  ReaderTableViewController.m
//  LinguaMortua
//
//  Created by Jared Warren on 9/5/20.
//  Copyright © 2020 Warren. All rights reserved.
//

#import "ReaderTableViewController.h"
#import "Work.h"

@interface ReaderTableViewController ()

@end

@implementation ReaderTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.titleLabel.text = self.work.title;
}


@end
