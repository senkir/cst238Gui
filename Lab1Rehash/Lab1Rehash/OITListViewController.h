//
//  OITListViewController.h
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/28/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import <Cocoa/Cocoa.h>

/**
 Including List Box, Suggestion Box, Tree, Menu, Stack Panel
 */
@interface OITListViewController : NSViewController {
@private
    IBOutlet NSPopUpButton* _popupButton;
    IBOutlet NSPathControl* _pathControl;
    IBOutlet NSOutlineView* _outlineView;
    IBOutlet NSTableColumn* _table;
    
}

- (IBAction)popupButtonWasSelected:(id)sender;
@end
