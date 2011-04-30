//
//  OITTableViewController.m
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/28/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "OITTableViewController.h"
#import "OITPopupViewController.h"

@implementation OITTableViewController

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

- (void) loadView {
    [super loadView];
    NSTableColumn *productColumn = [_table tableColumnWithIdentifier:@"product"];
    [productColumn bind:@"value" toObject:_contentArray withKeyPath:@"arrangedObjects.product" options:nil];
    
    NSTableColumn *quantityColumn = [_table tableColumnWithIdentifier:@"quantity"];
    [quantityColumn bind:@"value" toObject:_contentArray withKeyPath:@"arrangedObjects.quantity" options:nil];
    
    NSDictionary *valueOptionsDict = [NSDictionary dictionaryWithObjectsAndKeys:
                                      [NSNumber numberWithBool:YES], @"NSAllowsEditingMultipleValuesSelection",
                                      [NSNumber numberWithBool:YES], @"NSConditionallySetsEditable",
                                      [NSNumber numberWithBool:YES], @"NSRaisesForNotApplicableKeys",
                                      nil];
    [[_form cellAtIndex:0] bind:@"value" toObject:_contentArray withKeyPath:@"selection.product" options:valueOptionsDict];
    [[_form cellAtIndex:1] bind:@"value" toObject:_contentArray withKeyPath:@"selection.quantity" options:valueOptionsDict];
    
    [_contentArray addObserver:self forKeyPath:@"selectionIndexes" options:NSKeyValueObservingOptionNew context:NULL];
    
    NSMutableArray *initialContent = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                      @"Peanuts", @"product",
                                      @"30", @"quantity",
                                      nil];
    [_contentArray addObject:initialContent];
}
#pragma mark OITTableViewController
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    NSLog(@"Tables section changed");
}


- (IBAction)addWasSelected:(id)sender {
    NSLog(@"Adding an object to the table");
    if (_popupController == nil) {
        _popupController = [[OITPopupViewController alloc] init];
    }
    
    NSMutableDictionary* newValue = [_popupController newObjectFor:self];
    if (![_popupController wasCanceled]) {
        [_contentArray addObject:newValue];
    }
}

- (IBAction)deleteWasSelected:(id)sender {
    NSLog(@"Deleting an object in the table");
    [_contentArray removeObjectAtArrangedObjectIndex:[_contentArray selectionIndex]];
}

- (NSWindow*)window {
    return [[[NSApplication sharedApplication] windows] objectAtIndex:0];
}
@end
