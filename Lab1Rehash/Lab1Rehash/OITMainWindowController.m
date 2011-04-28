//
//  OITMainWindowController.m
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/28/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "OITMainWindowController.h"
#import "OITWidgetViewController.h"

@implementation OITMainWindowController

@synthesize splitView = _splitView;

#pragma mark -
#pragma mark NSWindowController
- (id) initWithWindow:(NSWindow *)window andSplitView:(NSSplitView*)splitView {
    self = [self initWithWindow:window];
    if (self) {
        self.splitView = splitView;
        _leftController = [[OITNavigationViewController alloc] 
                                                      initWithNibName:@"navigationView" bundle:nil];
        [(OITNavigationViewController*)_leftController setDelegate:self];
        _rightController = [[NSViewController alloc] initWithNibName:@"OITEmptyView" bundle:nil];
        NSArray* views = [NSArray arrayWithObjects:[_leftController view], [_rightController view], nil];
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
    [_leftController release];
    [_rightController release];
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


#pragma mark -
#pragma mark OITNavigationViewControllerDelegate
- (void)buttonWasPressed:(NSButton *)button {
    //do stuff with the button
}
@end
