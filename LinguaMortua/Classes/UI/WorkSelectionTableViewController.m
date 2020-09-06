//
//  WorkSelectionTableViewController.m
//  LinguaMortua
//
//  Created by Jared Warren on 9/5/20.
//  Copyright © 2020 Warren. All rights reserved.
//

#import "WorkSelectionTableViewController.h"
#import "ReaderTableViewController.h"
#import "Source.h"
#import "Work.h"

@interface WorkSelectionTableViewController ()

@end

@implementation WorkSelectionTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.source.title;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.source.works.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"workCell" forIndexPath:indexPath];
    Work *work = self.source.works[indexPath.row];
    cell.textLabel.text = work.title;
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    Work *work = self.source.works[indexPath.row];
    ReaderTableViewController *destination = segue.destinationViewController;
    destination.work = work;
}

@end
