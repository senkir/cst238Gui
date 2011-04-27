//
//  mainMenuController.h
//  GuiLab1
//
//  Created by Travis Churchill on 4/14/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface OITMainWindowController : NSWindowController {
    IBOutlet NSButton* _openButton;
@private
    
}

- (IBAction)buttonWasSelected:(id)sender;
@end
