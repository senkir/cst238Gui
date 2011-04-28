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

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
    //pass control to the Main Window Controller
    OITMainWindowController* controller = [[OITMainWindowController alloc] initWithWindowNibName:@"OITMainMenu" owner:self];
    
    [controller showWindow:self];
}

@end
