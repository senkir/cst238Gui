//
//  OITLeftPanel.m
//  GuiLab1
//
//  Created by Travis Churchill on 4/18/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "OITLeftPanelView.h"


@implementation OITLeftPanelView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    
    [super dealloc];
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Drawing code here.
}

- (void)menu:(NSMenu *)menu willHighlightItem:(NSMenuItem *)item {
    NSLog(@"menu about to highlight an item");
}

- (void)menuWillOpen:(NSMenu *)menu {
    NSLog(@"menu about to open");
}
@end
