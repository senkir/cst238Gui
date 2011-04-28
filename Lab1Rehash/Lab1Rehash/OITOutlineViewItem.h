//
//  OITOutlineViewDataSourceItem.h
//  GuiLab1
//
//  Created by Travis Churchill on 4/27/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface OITOutlineViewItem : NSObject {
@private
        NSString *relativePath;
        OITOutlineViewItem *parent;
        NSMutableArray *children;
}


+ (OITOutlineViewItem *)rootItem;
- (NSInteger)numberOfChildren;// Returns -1 for leaf nodes
- (OITOutlineViewItem *)childAtIndex:(NSUInteger)n; // Invalid to call on leaf nodes
- (NSString *)fullPath;
- (NSString *)relativePath;

@end
