//
//  OITPopupItemModel.h
//  Lab1Rehash
//
//  Created by Travis Churchill on 4/29/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface OITPopupItemModel : NSObject {
@private
    NSMutableArray* _items;
}
@property (nonatomic, retain) NSMutableArray* items;

@end
