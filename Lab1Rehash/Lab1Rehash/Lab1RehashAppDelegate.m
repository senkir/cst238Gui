//
//  Lab1RehashAppDelegate.m
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/28/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "Lab1RehashAppDelegate.h"
#import "OITMainWindowController.h"
@implementation Lab1RehashAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    NSLog(@"initialize!");
    OITMainWindowController* controller = [[OITMainWindowController alloc] initWithWindow:window];
    [controller loadWindow];
    [controller windowDidLoad];
}

@end
