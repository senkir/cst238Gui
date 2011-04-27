//
//  GuiLab1AppDelegate.m
//  GuiLab1
//
//  Created by Travis Churchill on 4/14/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "GuiLab1AppDelegate.h"
#import "OITMainWindowController.h"

@implementation GuiLab1AppDelegate

@synthesize window;
@synthesize openMenuButton = _openMenuButton;
@synthesize instructionsLabel = _instructionsLabel;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    OITMainWindowController* _controller = [[OITMainWindowController alloc] initWithWindowNibName:@"OITMainMenuController" owner:self];
    
    [self.instructionsLabel setTitleWithMnemonic:@"hit the button to start doing stuff"];
    [_controller showWindow:self];
}

- (IBAction) openMenuButtonWasSelected {
    NSLog(@"opening the floating menu bar");
    //open the floating menu bar
}

@end
