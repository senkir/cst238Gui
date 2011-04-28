//
//  mainMenuController.m
//  GuiLab1
//
//  Created by Travis Churchill on 4/14/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "OITMainWindowController.h"
#import "OITMenuOptionsModel.h"

@implementation OITMainWindowController
- (id)initWithWindowNibName:(NSString *)windowNibName owner:(id)owner
{
    self = [super initWithWindowNibName:windowNibName owner:owner];
    if (self) {
        NSLog(@"Making the main window controller");
        [_menu removeAllItems];
        OITMenuOptionsModel* optionList = [[OITMenuOptionsModel alloc] init];
        for (NSMenuItem* menuItem in [optionList items]) {
            NSInteger index = [[_menu itemArray] count];
            if (!index) {
                index = 0;
            }
            [_menu insertItem:menuItem atIndex:index];
        }
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
//    OITWidgetMenu *panel = [[OITWidgetMenu alloc] initWithWindowNibName:@"OITMainMenu" owner:self];
//    [panel showWindow:self];
}

@end
