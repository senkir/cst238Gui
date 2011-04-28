//
//  OITMainWindowController.h
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/28/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "OITNavigationViewController.h"
#import "MasterConstants.h"
/**
 This window is built with split controllers on the inside
 */
@interface OITMainWindowController : NSWindowController <OITNavigationViewControllerDelegate> {
@private
    NSSplitView* _splitView;
    NSViewController* _leftController;
    NSViewController* _rightController;
}
@property (nonatomic, retain) NSSplitView *splitView;


- (id)initWithWindow:(NSWindow *)window andSplitView:(NSSplitView*)splitView;
@end
