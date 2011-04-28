//
//  OITMainWindowController.h
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/28/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import <Cocoa/Cocoa.h>

/**
 This window is built with split controllers on the inside
 */
@interface OITMainWindowController : NSWindowController {
@private
    NSView   *_leftView;
    NSView   *_rightView;
}
@property (nonatomic, retain) NSView* leftView;
@property (nonatomic, retain) NSView* rightView;
@end
