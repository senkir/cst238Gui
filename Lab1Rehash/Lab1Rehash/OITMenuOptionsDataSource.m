//
//  OITMenuOptionsModel.m
//  GuiLab1
//
//  Created by Travis Churchill on 4/27/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "OITMenuOptionsDataSource.h"
#import "OITOutlineViewItem.h"

@implementation OITMenuOptionsDataSource

@synthesize items = _items;

- (id)init
{
    self = [super init];
    if (self) {
        NSLog(@"Making options model");
        //load the titles
        self.items = [NSArray arrayWithObjects:@"Widgets", @"Lists & Menus", @"Text Input", @"Popups", @"Panels", @"Tables", @"Cell Widgets", nil];
        
    }
    
    return self;
}

- (void)dealloc
{
    [self.items release];
    [super dealloc];
}

#pragma mark dataSourceDelegate

- (NSInteger)outlineView:(NSOutlineView *)outlineView numberOfChildrenOfItem:(id)item {
    
    return (item == nil) ? 1 : [item numberOfChildren];
}


- (BOOL)outlineView:(NSOutlineView *)outlineView isItemExpandable:(id)item {
    return (item == nil) ? YES : ([item numberOfChildren] != -1);
}


- (id)outlineView:(NSOutlineView *)outlineView child:(NSInteger)index ofItem:(OITOutlineViewItem*)item {
    
    return (item == nil) ? [OITOutlineViewItem rootItem] : [(OITOutlineViewItem *)item childAtIndex:index];
}


- (id)outlineView:(NSOutlineView *)outlineView objectValueForTableColumn:(NSTableColumn *)tableColumn byItem:(id)item {
    return (item == nil) ? @"/" : [item relativePath];
}

@end
