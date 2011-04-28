//
//  Lab1RehashAppDelegate.h
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/28/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Lab1RehashAppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
    NSViewController* _primaryController;
    IBOutlet NSSplitView*    _splitView;
}

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic, retain) NSViewController *primaryController;
@end
