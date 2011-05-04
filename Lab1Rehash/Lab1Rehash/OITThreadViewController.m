//
//  OITPanelViewController.m
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/28/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "OITThreadViewController.h"

#define kLoopCount  5000

@interface OITThreadViewController (Private)
- (void)threadDidFinish;
@end

@implementation OITThreadViewController

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


- (IBAction)buttonWasSelected:(id)sender {
    NSLog(@"OITThreadViewController: button Was selected");
    //start the progress indicator
    [_progressIndicator startAnimation:self];
    
    _resultValue = 0;
    //run a time intensive process
    
    //grand central dispatch queueing
    dispatch_queue_t myQueue =  dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_queue_t mainQueue = dispatch_get_main_queue();
    dispatch_async(myQueue, ^{
        
        //make a block
        int i = 0;
        for (i = 0; i < kLoopCount; i++) {    
            NSLog(@"doing stuff, %d", i);
        }
        _resultValue += i;
        //call back to main thread when done
        dispatch_async(mainQueue, ^{
            [self threadDidFinish];
        });
    });
}

- (void)threadDidFinish {
    NSLog(@"OITThreadViewController:  finished processing thread");
    [_progressIndicator stopAnimation:self];
    NSString* resultString = [NSString stringWithFormat:@"%d", _resultValue];
    [_resultField setStringValue:resultString];
}

//lazy loading
- (NSOperationQueue*)queue {
    if (!_queue) {
        _queue = [[NSOperationQueue alloc] init];
    }
    return _queue;
}
@end
