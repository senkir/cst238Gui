//
//  OITPopupViewController.m
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/28/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "OITPopupViewController.h"


@implementation OITPopupViewController

- (NSString*)windowNibName {
    return @"AddProductView";
}

- (void)dealloc
{
    [_savedFields release];
    [super dealloc];
}

- (NSMutableDictionary*) newObjectFor:(OITTableViewController*)sender {
    NSWindow *window = [self window];
    
    _canceled = NO;
    NSArray* editFields = [_form cells];
    
    [[editFields objectAtIndex:0] setStringValue:@""];
    [[editFields objectAtIndex:1] setStringValue:@""];
    
    [NSApp beginSheet:window modalForWindow:[sender window] modalDelegate:nil didEndSelector:nil contextInfo:nil];
    [NSApp runModalForWindow:window];
    
    [NSApp endSheet:window];
    [window orderOut:self];
    
    return _savedFields;
    
}

- (BOOL)wasCanceled {
    return _canceled;
}

- (IBAction)done:(id)sender {
    
    NSArray* editFields = [_form cells];
    
    [_savedFields release];
    _savedFields = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                    [[editFields objectAtIndex:0] stringValue], @"product",
                    [[editFields objectAtIndex:1] stringValue], @"quantity",
                    nil];
    [_savedFields retain];
    
    [NSApp stopModal];
}

- (IBAction)cancel:(id)sender {
    [NSApp stopModal];
    _canceled = YES;
}

@end
