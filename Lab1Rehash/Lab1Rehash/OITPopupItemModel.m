//
//  OITPopupItemModel.m
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/29/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "OITPopupItemModel.h"


@implementation OITPopupItemModel

@synthesize items = _items;

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
        self.items = [NSMutableArray arrayWithObjects:@"Larry", @"Curly", @"Moe", nil];
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

@end
