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

@synthesize leftView = _leftView;
@synthesize rightView = _rightView;

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)loadWindow {
    [super loadWindow];
    
    //setup table navigation panel
    NSViewController* navigation = [[OITNavigationViewController alloc] initWithNibName:@"navigationView" bundle:nil];
    [self.leftView addSubview:navigation];
}

- (void)windowDidLoad

{
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

@end
