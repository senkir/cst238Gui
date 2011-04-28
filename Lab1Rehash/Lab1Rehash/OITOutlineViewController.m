//
//  OITOutlineViewController.m
//  GuiLab1
//
//  Created by Travis Churchill on 4/27/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "OITOutlineViewController.h"
#import "OITMenuOptionsDataSource.h"

@implementation OITOutlineViewController

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
        NSLog(@"setting up outline view controller");
        [self setDataSource:[[OITMenuOptionsDataSource alloc] init]];
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

@end
