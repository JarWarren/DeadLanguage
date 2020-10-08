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
#import "SectionHeaderLabel.h"

@implementation ReaderTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.work.title;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.work.sections.count;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    NSString *header = self.work.sections[section].header;
    return [[SectionHeaderLabel alloc] initWithTitle:header];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 44;
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
