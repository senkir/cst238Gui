//
//  GuiLab1AppDelegate.m
//  GuiLab1
//
//  Created by Travis Churchill on 4/14/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "GuiLab1AppDelegate.h"
#import "OITMainMenuController.h"

@implementation GuiLab1AppDelegate

@synthesize window;
@synthesize openMenuButton = _openMenuButton;
@synthesize instructionsLabel = _instructionsLabel;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    OITMainMenuController* _controller = [[OITMainMenuController alloc] initWithNibName:@"OITMainMenuController" bundle:nil];
    [self.instructionsLabel setTitleWithMnemonic:@"hit the button to start doing stuff"];
    
}

- (IBAction) openMenuButtonWasSelected {
    NSLog(@"opening the floating menu bar");
    //open the floating menu bar
}

@end
