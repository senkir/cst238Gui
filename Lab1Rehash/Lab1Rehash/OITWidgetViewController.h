//
//  OITWidgetViewController.h
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/28/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import <Cocoa/Cocoa.h>

/**
 Various butten widgets and a date picker are included here
 */
@interface OITWidgetViewController : NSViewController {
@private
    IBOutlet NSButton* _button;
    IBOutlet NSMatrix* _matrixButtons;
    IBOutlet NSButton* _buttonOption1;
    IBOutlet NSButton* _buttonOption2;
    IBOutlet NSDatePicker* _datePicker;
    IBOutlet NSPathControl* _pathControl;
    IBOutlet NSSlider* _slider;
    IBOutlet NSLevelIndicator* _levelIndicator;
}

@end
