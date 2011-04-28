//
//  Lab1RehashAppDelegate.m
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/28/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "Lab1RehashAppDelegate.h"
#import "OITMainWindowController.h"
#import "OITNavigationViewController.h"

@implementation Lab1RehashAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    NSLog(@"initialize!");
    OITNavigationViewController* controller = [[OITNavigationViewController alloc] initWithNibName:@"navigationView" bundle:nil];
    NSViewController* defaultView = [[NSViewController alloc] initWithNibName:@"OITEmptyView" bundle:nil];
    NSArray* views = [NSArray arrayWithObjects:[controller view], [defaultView view], nil];
    [splitView setSubviews:views];
}

@end
