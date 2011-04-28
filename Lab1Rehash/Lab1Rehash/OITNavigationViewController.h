//
//  OITOutlineViewController.h
//  GuiLab1
//
//  Created by Travis Churchill on 4/27/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface OITNavigationViewController : NSViewController {
@private
    id _delegate;
}
@property (nonatomic, retain) id delegate;

- (IBAction)buttonWasPressed:(id)sender;
@end
