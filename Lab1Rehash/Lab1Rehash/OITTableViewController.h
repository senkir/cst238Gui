//
//  OITTableViewController.h
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/28/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class OITPopupViewController;

@interface OITTableViewController : NSViewController {
@private
    IBOutlet NSTableView* _table;
    IBOutlet NSButton*      _deleteButton;
    IBOutlet NSButton*      _addButton;
    IBOutlet NSForm*        _form;
    
    IBOutlet NSArrayController*      _contentArray;
    
    OITPopupViewController*        _popupController;
}

- (IBAction)addWasSelected:(id)sender;

- (IBAction)deleteWasSelected:(id)sender;

- (NSWindow*)window;
@end
