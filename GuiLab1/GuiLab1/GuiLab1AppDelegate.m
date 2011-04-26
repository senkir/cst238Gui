//
//  GuiLab1AppDelegate.m
//  GuiLab1
//
//  Created by Travis Churchill on 4/14/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "GuiLab1AppDelegate.h"
#import "OITLeftPanelView.h"

@implementation GuiLab1AppDelegate

@synthesize window;
@synthesize menuWindow = _menuWindow;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{

}

- (void)viewDidLoad {
    _menuWindow = [[OITLeftPanelView alloc] initWithFrame:self.window.frame];
    [self.window addChildWindow:[self.menuWindow window] ordered:NSWindowAbove];
}

@end
