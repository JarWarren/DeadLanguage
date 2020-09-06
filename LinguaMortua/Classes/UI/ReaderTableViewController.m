//
//  ReaderTableViewController.m
//  LinguaMortua
//
//  Created by Jared Warren on 9/5/20.
//  Copyright © 2020 Warren. All rights reserved.
//

#import "ReaderTableViewController.h"
#import "Work.h"
#import "WorkSection.h"

@interface ReaderTableViewController ()

@end

@implementation ReaderTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.titleLabel.text = self.work.title;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.work.sections.count;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UILabel *headerLabel = [UILabel new];
    headerLabel.textAlignment = NSTextAlignmentCenter;
    headerLabel.text = self.work.sections[section].header;
    return headerLabel;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.work.sections[section].text.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"textCell" forIndexPath:indexPath];
    cell.textLabel.text = self.work.sections[indexPath.section].text[indexPath.row];
    return cell;
}

@end
