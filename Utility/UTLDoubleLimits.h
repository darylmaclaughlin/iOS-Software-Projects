//
//  UTLDoubleLimits.h
//  Utility
//
//  Created by Daryl Freeman on 10/19/14.
//  Copyright (c) 2014 Daryl MacLaughlin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UTLDoubleLimits : NSObject

@property double minimum;
@property double maximum;
@property(readonly) double average;

- (instancetype)initWithArgs:(double)minimum
                     maximum:(double)maximum;

@end
