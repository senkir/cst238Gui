//
//  OITTextViewController.h
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/28/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface OITTextViewController : NSViewController {
@private
    IBOutlet NSScrollView* _scrollView;
    IBOutlet NSTextField* _textField;
    IBOutlet NSSecureTextField* _secureText;
}

@end
