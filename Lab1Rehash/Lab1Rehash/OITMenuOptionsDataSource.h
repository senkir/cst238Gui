//
//  OITMenuOptionsModel.h
//  GuiLab1
//
//  Created by Travis Churchill on 4/27/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OITMenuOptionsDataSource : NSObject <NSOutlineViewDataSource> {
@private
    NSMutableArray* _items;
}
@property (nonatomic, retain) NSMutableArray* items;
@end
