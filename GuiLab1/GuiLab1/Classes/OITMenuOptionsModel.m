//
//  OITMenuOptionsModel.m
//  GuiLab1
//
//  Created by Travis Churchill on 4/27/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "OITMenuOptionsModel.h"


@implementation OITMenuOptionsModel

@synthesize items = _items;

- (id)init
{
    self = [super init];
    if (self) {
        //load the titles
        NSArray* titles = [NSArray arrayWithObjects:@"Widgets", @"Lists & Menus", @"Text Input", @"Popups", @"Panels", @"Tables", @"Cell Widgets", nil];
        
        //make a bunch of menu items
        _items = [NSMutableArray new];
        for (NSString* menuTitle in titles) {
            NSMenuItem* menuItem = [[NSMenuItem alloc] initWithTitle:menuTitle action:@selector(loadWindow:) keyEquivalent:nil];
            [self.items addObject:menuItem];
            
            //memory management
            [menuItem release];
        }
    }
    
    return self;
}

- (void)dealloc
{
    [self.items release];
    [super dealloc];
}

@end
