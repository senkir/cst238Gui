//
//  OITWidgetViewController.m
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/28/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "OITWidgetViewController.h"

#define kTagForRed      5
#define kTagForYellow   6
@implementation OITWidgetViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (IBAction)checkmarkWasPushed:(id)sender {
    if ([sender tag] == kTagForRed) {
        if ([sender state] == NSOnState) {
            NSLog(@"red is now selected");
        } else {
            NSLog(@"red state is no longer selected");
        }
    }
    if ([sender tag] == kTagForYellow) {
        if ([sender state] == NSOnState) {
            NSLog(@"yellow is now selected");
        } else {
            NSLog(@"yellow state is no longer selected");
        }
    }}

- (IBAction)selectOneWasPushed:(id)sender {
    NSLog(@"%@ was selected", [[sender selectedCell] title]);
}
@end 
