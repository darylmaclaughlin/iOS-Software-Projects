//
//  UTLDoubleLimits.m
//  Utility
//
//  Created by Daryl Freeman on 10/19/14.
//  Copyright (c) 2014 Daryl MacLaughlin. All rights reserved.
//

#import "UTLDoubleLimits.h"

@implementation UTLDoubleLimits

- (instancetype)init {
    return [self initWithArgs:(double) 0
                      maximum:(double) 100];
};

- (instancetype)initWithArgs:(double)minimum
                     maximum:(double)maximum {
    self = [super init];
    if (self != nil) {
        self->_minimum = minimum;
        self->_maximum = maximum;
    }
    return self;
}

- (double)average {
    return (_maximum + _minimum) / 2;
}


@end
