//
//  OITOutlineViewDataSourceItem.m
//  GuiLab1
//
//  Created by Travis Churchill on 4/27/11.
//  Copyright 2011 SpiderMuffinArt. All rights reserved.
//

#import "OITOutlineViewItem.h"


@implementation OITOutlineViewItem

static OITOutlineViewItem *rootItem = nil;
static NSMutableArray *leafNode = nil;

#pragma mark NSObject

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    if (children != leafNode) {
        [children release];
    }
    [relativePath release];
    [super dealloc];
}

#pragma mark OITOutlineViewItem

+ (void)initialize {
    if (self == [OITOutlineViewItem class]) {
        leafNode = [[NSMutableArray alloc] init];
    }
}

- (id)initWithPath:(NSString *)path parent:(OITOutlineViewItem *)parentItem {
    self = [super init];
    if (self) {
        relativePath = [[path lastPathComponent] copy];
        parent = parentItem;
    }
    return self;
}


+ (OITOutlineViewItem *)rootItem {
    if (rootItem == nil) {
        rootItem = [[OITOutlineViewItem alloc] initWithPath:@"/" parent:nil];
    }
    return rootItem;
}


// Creates, caches, and returns the array of children
// Loads children incrementally
- (NSArray *)children {
    
    if (children == nil) {
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSString *fullPath = [self fullPath];
        BOOL isDir, valid;
        
        valid = [fileManager fileExistsAtPath:fullPath isDirectory:&isDir];
        
        if (valid && isDir) {
            NSArray *array = [fileManager contentsOfDirectoryAtPath:fullPath error:NULL];
            
            NSUInteger numChildren, i;
            
            numChildren = [array count];
            children = [[NSMutableArray alloc] initWithCapacity:numChildren];
            
            for (i = 0; i < numChildren; i++)
            {
                OITOutlineViewItem *newChild = [[OITOutlineViewItem alloc]
                                            initWithPath:[array objectAtIndex:i] parent:self];
                [children addObject:newChild];
                [newChild release];
            }
        }
        else {
            children = leafNode;
        }
    }
    return children;
}


- (NSString *)relativePath {
    return relativePath;
}


- (NSString *)fullPath {
    // If no parent, return our own relative path
    if (parent == nil) {
        return relativePath;
    }
    
    // recurse up the hierarchy, prepending each parent’s path
    return [[parent fullPath] stringByAppendingPathComponent:relativePath];
}


- (OITOutlineViewItem *)childAtIndex:(NSUInteger)n {
    return [[self children] objectAtIndex:n];
}


- (NSInteger)numberOfChildren {
    NSArray *tmp = [self children];
    return (tmp == leafNode) ? (-1) : [tmp count];
}
@end
