//
//  OITPanelViewController.h
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/28/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface OITThreadViewController : NSViewController{
@private
    IBOutlet NSButton* _button;
    IBOutlet NSProgressIndicator* _progressIndicator;
    IBOutlet NSTextField* _resultField;
    NSOperationQueue* _queue;
    NSInteger* _resultValue;
}
- (NSOperationQueue*)queue;
- (IBAction)buttonWasSelected:(id)sender;
@end
