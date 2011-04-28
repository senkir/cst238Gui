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
@synthesize primaryController = _primaryController;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    NSLog(@"initialize!");
    _primaryController = [[OITMainWindowController alloc] initWithWindow:window andSplitView:_splitView];
//    [_primaryController window];
}

@end
