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
@interface OITWidgetViewController (Private)
- (void)colorLabelShouldChange;
@end


@implementation OITWidgetViewController

#pragma mark NSViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [_datePicker setDatePickerStyle:NSClockAndCalendarDatePickerStyle];
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

#pragma mark OITWidgetViewController

- (IBAction)checkmarkWasPushed:(id)sender {
    //log the changes
    if ([sender tag] == kTagForRed) {
        if ([sender state] == NSOnState) {
            NSLog(@"OITWidgetViewController: red is now selected");
        } else {
            NSLog(@"OITWidgetViewController: red state is no longer selected");
        }
    }
    if ([sender tag] == kTagForYellow) {
        if ([sender state] == NSOnState) {
            NSLog(@"OITWidgetViewController: yellow is now selected");
        } else {
            NSLog(@"OITWidgetViewController: yellow state is no longer selected");
        }
    }
    [self colorLabelShouldChange];
}

- (IBAction)selectOneWasPushed:(id)sender {
    NSLog(@"OITWidgetViewController: %@ was selected", [[sender selectedCell] title]);
}

- (void)colorLabelShouldChange {
    if ([_buttonOption1 state] == NSOnState && [_buttonOption2 state] == NSOnState) {
        [_colorLabel setStringValue:@"Orange"];
    } else if ([_buttonOption1 state] == NSOnState){
        [_colorLabel setStringValue:@"Red"];
    } else if ([_buttonOption2 state] == NSOnState){
        [_colorLabel setStringValue:@"Yellow"];
    } else {
        [_colorLabel setStringValue:@"White"];
    }
}


- (IBAction)doNothingButtonPushed:(id)sender {
    NSLog(@"OITWidgetViewController: still doing nothing");
}

- (IBAction)sliderDidChange:(id)sender {
    [_sliderLabel setStringValue:[NSString stringWithFormat:@"%@",[_slider stringValue]]];
    [_levelIndicator setFloatValue:[_slider floatValue]];
}

- (IBAction)datePickerDidChange:(id)sender {
    NSLog(@"OITWidgetViewController: date picker changed to %@",[_datePicker stringValue]);
}

@end 
