//
//  OITListViewController.m
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/28/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "OITListViewController.h"
#import "OITPopupItemModel.h"

@implementation OITListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //fill in the button contents
        [_popupButton removeAllItems];
        OITPopupItemModel* model = [[OITPopupItemModel alloc] init];
        for (NSString* item in model.items) {
            [_popupButton addItemWithTitle:item];
        }
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

#pragma mark OITListViewController
- (IBAction)popupButtonWasSelected:(id)sender {
    NSLog(@"OITListViewController: popup list button was selected");
}

@end
