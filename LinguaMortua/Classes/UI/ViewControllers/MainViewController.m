//
//  MainViewController.m
//  LinguaMortua
//
//  Created by Jared Warren on 9/5/20.
//  Copyright © 2020 Warren. All rights reserved.
//

#import "MainViewController.h"
#import "SourceTableViewCell.h"
#import "SourceController.h"
#import "Source.h"
#import "WorkSelectionTableViewController.h"
#import "ReaderTableViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewDidLoad];
    [self.navigationController.navigationBar setTitleTextAttributes:
    @{NSFontAttributeName:[UIFont fontWithName:@"HiraMinProN-W6" size:24]}];
}

- (void)viewWillDisappear:(BOOL)animated {
    [self.navigationController.navigationBar setTitleTextAttributes:
    @{NSFontAttributeName:[UIFont fontWithName:@"HiraMinProN-W3" size:18]}];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return SourceController.shared.sources.count - 1; // last item in the array is an empty template
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SourceTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"sourceCell" forIndexPath:indexPath];
    Source *source = SourceController.shared.sources[indexPath.row];
    cell.titleLabel.text = source.title;
    cell.dateLabel.text = source.date;
    cell.infoLabel.text = source.subtitle;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Source *source = SourceController.shared.sources[indexPath.row];
    NSLog(@"%@", self.splitViewController.viewControllers);
    if (self.splitViewController.isCollapsed) {
        if (source.works.count > 1) {
            [self performSegueWithIdentifier:@"toWorkSelection" sender:self];
        } else {
            [self performSegueWithIdentifier:@"toReader" sender:self];
        }
    } else {
        [self replaceDetailViewWithSource:source];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    Source *source = SourceController.shared.sources[indexPath.row];
    
    if ([segue.identifier isEqualToString:@"toWorkSelection"]) {
        WorkSelectionTableViewController *destination = segue.destinationViewController;
        destination.source = source;
        
    } else if ([segue.identifier isEqualToString:@"toReader"]) {
        ReaderTableViewController *destination = segue.destinationViewController;
        destination.work = source.works[0];
    }
}

- (void)replaceDetailViewWithSource:(Source *)source {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    [self.splitViewController.viewControllers[1] viewWillDisappear:true];
    if (source.works.count > 1) {
        WorkSelectionTableViewController *destination = [storyboard instantiateViewControllerWithIdentifier:@"work"];
        destination.source = source;
        UINavigationController *navigationController = self.splitViewController.viewControllers[1];
        [navigationController setViewControllers:@[destination]];
    } else {
        ReaderTableViewController *destination = [storyboard instantiateViewControllerWithIdentifier:@"reader"];
        destination.work = source.works[0];
        UINavigationController *navigationController = self.splitViewController.viewControllers[1];
        [navigationController setViewControllers:@[destination]];
    }
    [self.splitViewController.viewControllers[1] viewWillAppear:true];
}

@end
