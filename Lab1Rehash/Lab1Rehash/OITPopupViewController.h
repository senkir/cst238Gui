//
//  OITPopupViewController.h
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/28/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class OITTableViewController;

@interface OITPopupViewController : NSWindowController {
@private
    BOOL                    _canceled;
    NSMutableDictionary*    _savedFields;
    IBOutlet NSForm*        _form;
}

- (NSMutableDictionary*) newObjectFor:(OITTableViewController*)sender;
- (BOOL)wasCanceled;

- (IBAction)done:(id)sender;
- (IBAction)cancel:(id)sender;

@end
