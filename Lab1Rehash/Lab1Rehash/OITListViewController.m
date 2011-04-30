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
        //initialize
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}


- (void)loadView {
    [super loadView];
    NSLog(@"Load View");
    //fill in the button contents
    [_popupButton removeAllItems];
    OITPopupItemModel* model = [[OITPopupItemModel alloc] init];
    for (NSString* item in model.items) {
        [_popupButton addItemWithTitle:item];
    }
    [model release];
    
    [_popupLabel setStringValue:@"Ham and Eggs"];
    
}

#pragma mark OITListViewController
- (IBAction)popupButtonWasSelected:(id)sender {
    NSLog(@"OITListViewController: popup list button %@was selected", [_popupButton stringValue]);
}

- (IBAction)pathControlWasSelected:(id)sender {
    NSLog(@"OITListViewController: path control did something");
    NSLog(@"%@",[_pathControl clickedPathComponentCell]);
}

@end
