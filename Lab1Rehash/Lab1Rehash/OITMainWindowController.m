//
//  OITMainWindowController.m
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/28/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "OITMainWindowController.h"
#import "OITNavigationViewController.h"

@implementation OITMainWindowController

@synthesize splitView = _splitView;

#pragma mark -
#pragma mark NSWindowController
- (id) initWithWindow:(NSWindow *)window andSplitView:(NSSplitView*)splitView {
    self = [self initWithWindow:window];
    if (self) {
        self.splitView = splitView;
        OITNavigationViewController* navController = [[OITNavigationViewController alloc] 
                                                      initWithNibName:@"navigationView" bundle:nil];
        NSViewController* defaultView = [[NSViewController alloc] initWithNibName:@"OITEmptyView" bundle:nil];
        NSArray* views = [NSArray arrayWithObjects:[navController view], [defaultView view], nil];
        [_splitView setSubviews:views];
    }
    return self;
}

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.

    }
    
    return self;
}

- (void)dealloc {
    
    [super dealloc];
}

- (void)loadWindow {
    [super loadWindow];
}

- (void)windowDidLoad

{
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

#pragma mark -
#pragma mark OITMainWindowController

@end
