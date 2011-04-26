//
//  GuiLab1AppDelegate.h
//  GuiLab1
//
//  Created by Travis Churchill on 4/14/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class OITLeftPanelView;

@interface GuiLab1AppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
    IBOutlet NSButton *_openMenuButton;
    IBOutlet NSTextField *_instructionsLabel;
}

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic, retain) IBOutlet NSButton *openMenuButton;
@property (nonatomic, retain) IBOutlet NSTextField *instructionsLabel;

- (IBAction) openMenuButtonWasSelected;

@end
