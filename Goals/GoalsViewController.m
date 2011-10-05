//
//  GoalsViewController.m
//  Goals
//
//  Created by Kory Calmes on 10/4/11.
//  Copyright 2011 Calmes Apps. All rights reserved.
//

#import "GoalsViewController.h"

@implementation GoalsViewController

@synthesize controller;

@synthesize goalsDictionary;
@synthesize frequencies;
@synthesize goals;

- (void)dealloc
{
    [super dealloc];
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    NSLog(@"I enter view did load");
    self.goals = [[NSArray alloc] initWithObjects: 
                       [NSDictionary dictionaryWithObjectsAndKeys: @"Goal 1", @"name", @"daily"     , @"frequency", [NSNumber numberWithInteger:1], @"id", nil], 
                       [NSDictionary dictionaryWithObjectsAndKeys: @"Goal 2", @"name", @"weekly"    , @"frequency", [NSNumber numberWithInteger:2], @"id", nil], 
                       [NSDictionary dictionaryWithObjectsAndKeys: @"Goal 3", @"name", @"monthly"   , @"frequency", [NSNumber numberWithInteger:3], @"id", nil], 
                       [NSDictionary dictionaryWithObjectsAndKeys: @"Goal 4", @"name", @"quarterly" , @"frequency", [NSNumber numberWithInteger:4], @"id", nil], 
                       [NSDictionary dictionaryWithObjectsAndKeys: @"Goal 5", @"name", @"annualy"   , @"frequency", [NSNumber numberWithInteger:5], @"id", nil], 
                       [NSDictionary dictionaryWithObjectsAndKeys: @"Goal 6", @"name", @"daily"     , @"frequency", [NSNumber numberWithInteger:6], @"id", nil], 
                       [NSDictionary dictionaryWithObjectsAndKeys: @"Goal 7", @"name", @"weekly"    , @"frequency", [NSNumber numberWithInteger:7], @"id", nil], 
                       [NSDictionary dictionaryWithObjectsAndKeys: @"Goal 8", @"name", @"monthly"   , @"frequency", [NSNumber numberWithInteger:8], @"id", nil], 
                       [NSDictionary dictionaryWithObjectsAndKeys: @"Goal 9", @"name", @"quarterly" , @"frequency", [NSNumber numberWithInteger:9], @"id", nil], 
                       nil];
    
    self.frequencies = [NSArray arrayWithObjects: @"daily", @"weekly",@"monthly", @"quarterly",@"annualy",  nil];
    
    NSInteger i, j;
    
    NSMutableArray * objects = [[NSMutableArray alloc] initWithCapacity:1];
    NSMutableArray * ints = [[NSMutableArray alloc] initWithCapacity:1];
    
    for (i = 0; i < [frequencies count]; i++) {
        NSString * frequency = [frequencies objectAtIndex: i];
        [ints removeAllObjects];
        for (j = 0; j < [goals count]; j++) {
            if ([[goals objectAtIndex: j] objectForKey: @"frequency"]  == frequency) {
                [ints addObject: [NSNumber numberWithInteger:j]];
            }
        }
        [objects addObject:[NSArray arrayWithArray:ints]];
    }
    
    self.goalsDictionary = [NSDictionary dictionaryWithObjects:objects forKeys:frequencies];
    
//    NSLog (goalsDictionary);
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    NSLog(@"Number of sections: %d", [self.goalsDictionary count]);
    return [self.goalsDictionary count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    NSLog(@"Number of rows: %d",[[self.goalsDictionary objectForKey:[self.frequencies objectAtIndex: section]] count]);
    return [[self.goalsDictionary objectForKey:[self.frequencies objectAtIndex: section]] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    NSString * section = [frequencies objectAtIndex:[indexPath section]];
    NSString * rowValue = [[goals objectAtIndex:[[[goalsDictionary objectForKey:section] objectAtIndex:[indexPath row]] integerValue]] objectForKey: @"name"];
    cell.textLabel.text = rowValue;
    
    return cell;
}

- (NSString *)tableView :(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *key = [frequencies objectAtIndex:section];
    return key;
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
 [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
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
     [detailViewController release];
     */
    //NSString * rowValue = [listData objectAtIndex:[indexPath row]];
    //Get the section key
    NSString * section = [frequencies objectAtIndex:[indexPath section]];
    NSString * rowValue = [[goals objectAtIndex:[[[goalsDictionary objectForKey:section] objectAtIndex:[indexPath row]] integerValue]] objectForKey: @"name"];
    NSLog(@"Row Selected: %d", [indexPath row]);
    NSLog(@"Row Selected: %d", [indexPath section]);
    NSString * message = [[NSString alloc] initWithFormat: @"You selected %@", rowValue];
    UIAlertView * alert = [[UIAlertView alloc] 
                           initWithTitle:@"Row Selected!"
                           message: message
                           delegate:nil
                           cancelButtonTitle: @"Yes I Did"
                           otherButtonTitles: nil];
    [alert show];
    
    [message release];
    [alert release];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    
}

@end

