//
//  OITOutlineViewController.m
//  GuiLab1
//
//  Created by Travis Churchill on 4/27/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "OITNavigationViewController.h"

@implementation OITNavigationViewController

@synthesize delegate = _delegate;

#pragma mark NSView
- (id)init {
    self = [super init];
    if (self) {
        // Initialization code here.
        NSLog(@"setting up outline view controller");
    }
    
    return self;
}

- (void)dealloc {
    [super dealloc];
}

#pragma mark -
#pragma mark OITNavigationViewController

- (IBAction)buttonWasPressed:(id)sender {
    //do stuff with the button action
    NSLog(@"button %ld was pressed", [(NSButton*)sender tag]);
    [_delegate buttonWasPressed:(NSButton*)sender];
}
@end
