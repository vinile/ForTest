//
//  ContentViewController.m
//  RPGOverview
//
//  Created by mike on 3/8/13.
//  Copyright (c) 2013 mike. All rights reserved.
//

#import "ContentViewController.h"

@interface ContentViewController ()

@end

@implementation ContentViewController

NSMutableArray *levelArray;

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"pushToPhoto"]) {
        PhotoViewController *pvc = [segue destinationViewController];
        [pvc setGotLevel:[levelArray objectAtIndex:[self.tableView indexPathForSelectedRow].row]];
    }
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    levelArray = [[NSMutableArray alloc] init];

    Level *lvl;
    
    lvl = [[Level alloc] init];
    [lvl setName:@"level 1"];
    [lvl setFile:@"level1.jpg"];
    [lvl setInfo:@"Thanks for reading Level 1 details"];
    [levelArray addObject:lvl];
    
    lvl = [[Level alloc] init];
    [lvl setName:@"level 2"];
    [lvl setFile:@"level2.jpg"];
    [lvl setInfo:@"Thanks for reading Level 2 details"];
    [levelArray addObject:lvl];
    
    lvl = [[Level alloc] init];
    [lvl setName:@"level 3"];
    [lvl setFile:@"level3.jpg"];
    [lvl setInfo:@"Thanks for reading Level 3 details"];
    [levelArray addObject:lvl];
    
    lvl = [[Level alloc] init];
    [lvl setName:@"level 4"];
    [lvl setFile:@"level4.jpg"];
    [lvl setInfo:@"Thanks for reading Level 4 details"];
    [levelArray addObject:lvl];
    
    lvl = [[Level alloc] init];
    [lvl setName:@"level 5"];
    [lvl setFile:@"level5.jpg"];
    [lvl setInfo:@"Thanks for reading Level 5 details"];
    [levelArray addObject:lvl];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [levelArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"levelContentCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    [cell.textLabel setText:[[levelArray objectAtIndex:indexPath.row] name]];
//    Level *lvl = [[Level alloc] init];
//    lvl = [levelArray objectAtIndex:indexPath.row];
//    [cell.textLabel setText:[lvl name]];
//    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
