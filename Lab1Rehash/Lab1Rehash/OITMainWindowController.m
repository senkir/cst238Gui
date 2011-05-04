//
//  OITMainWindowController.m
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/28/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "OITMainWindowController.h"

//View Controllers
#import "OITWidgetViewController.h"
#import "OITListViewController.h"
#import "OITTextViewController.h"
#import "OITPopupViewController.h"
#import "OITTableViewController.h"
#import "OITThreadViewController.h"

#import "MasterConstants.h"

@interface OITMainWindowController (Private)

- (NSViewController*)controllerForButton:(NSButton*)button;

@end


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
/**
 returns a controller based on the button which has been selected.
 */
- (NSViewController*)controllerForButton:(NSButton *)button {
    NSInteger tag = [button tag];
    NSViewController* toReturn = nil;
    NSString* logString = [NSString stringWithString:@"MainWindow: matched WidgetViewController to"];
    switch (tag) {
        case kButtonWidgetTag:
            toReturn = [[OITWidgetViewController alloc] initWithNibName:@"OITWidgetViewController" bundle:nil];
            NSLog(@"%@ %@ button", logString, @"Widget");
            break;
        case kButtonTextTag:
            NSLog(@"%@ %@ button", logString, @"Text");
            toReturn = [[OITTextViewController alloc] initWithNibName:@"OITTextViewController" bundle:nil];
            break;
        case kButtonPopupsTag:
            NSLog(@"%@ %@ button", logString, @"Popups");
            toReturn = [[OITPopupViewController alloc] initWithNibName:@"OITPopupViewController" bundle:nil];
            break;
        case kButtonTablesTag:
            NSLog(@"%@ %@ button", logString, @"Tables");
            toReturn = [[OITTableViewController alloc] initWithNibName:@"OITTableViewController" bundle:nil];
            break;
        case kButtonThreadTag:
            NSLog(@"%@ %@ button", logString, @"Thread");
            toReturn = [[OITThreadViewController alloc] initWithNibName:@"OITThreadViewController" bundle:nil];
            break;
        case kButtonListsTag:
            NSLog(@"%@ %@ button", logString, @"Lists");
            toReturn = [[OITListViewController alloc] initWithNibName:@"OITListViewController" bundle:nil];
            break;
        default:
            
            NSLog(@"tag does not relate to any known button");
            break;
    }
    return toReturn;
}

#pragma mark -
#pragma mark OITNavigationViewControllerDelegate
- (void)buttonWasPressed:(NSButton *)button {
    NSLog(@"MainWindow: deciding what to do with the button");
    NSViewController* controller = [self controllerForButton:button];
    if (controller) {
        [_splitView replaceSubview:[_rightController view] with:[controller view]];
        _rightController = controller;
    }
}
@end
