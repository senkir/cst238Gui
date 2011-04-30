//
//  OITMenuSampleModel.m
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/29/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "OITMenuSampleModel.h"


@implementation OITMenuSampleModel

@synthesize menu = _menu;

- (id)init
{
    self = [super init];
    if (self) {
        _menu = [[NSMenu alloc] initWithTitle:@"Sample"];
        [_menu addItemWithTitle:@"tuna" action:nil keyEquivalent:@""];
        [_menu addItemWithTitle:@"cheese" action:nil keyEquivalent:@""];
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

@end
