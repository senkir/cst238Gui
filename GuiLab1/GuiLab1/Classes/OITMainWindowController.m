//
//  mainMenuController.m
//  GuiLab1
//
//  Created by Travis Churchill on 4/14/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "OITMainWindowController.h"
#import "OITLeftPanelView.h"

@implementation OITMainWindowController
- (id)initWithWindowNibName:(NSString *)windowNibName owner:(id)owner
{
    self = [super initWithWindowNibName:windowNibName owner:owner];
    if (self) {
        // Initialization code here.
        
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

#pragma mark -
#pragma mark NSViewController

- (void)loadWindow {
    [super loadWindow];
}

- (IBAction)buttonWasSelected:(id)sender {
    NSLog(@"button was selected");
}

@end
