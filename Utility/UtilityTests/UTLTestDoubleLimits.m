//
//  UTLTestDoubleLimits.m
//  Utility
//
//  Created by Daryl Freeman on 10/19/14.
//  Copyright (c) 2014 Daryl MacLaughlin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "UTLDoubleLimits.h"

@interface UTLTestDoubleLimits : XCTestCase {
    UTLDoubleLimits *theLimits;
}

@end

@implementation UTLTestDoubleLimits


#pragma mark - Setup/Tear-down
- (void)setUp {
    [super setUp];
    theLimits = [[UTLDoubleLimits alloc] init];
}

- (void)tearDown {
    [super tearDown];
}

#pragma mark - Initializer
- (void)testInitializer {
    
    double defaultMin = 0;
    double defaultMax = 100;
    double defaultAvg = 50;
    
    XCTAssertEqual(theLimits.minimum, defaultMin);
    XCTAssertEqual(theLimits.maximum, defaultMax);
    XCTAssertEqual(theLimits.average, defaultAvg);
    
    double newMin = 50;
    double newMax = 70;
    double newAvg = 60;
    
    theLimits = [[UTLDoubleLimits alloc] initWithArgs:newMin
                                              maximum:newMax];
    
    XCTAssertEqual(theLimits.minimum, newMin);
    XCTAssertEqual(theLimits.maximum, newMax);
    XCTAssertEqual(theLimits.average, newAvg);
    
}

#pragma mark - Properties
- (void)testMinimum {
    
    double inVal = 0;
    theLimits.minimum = inVal;
    double outVal = theLimits.minimum;
    XCTAssertEqual(inVal, outVal);
    
    inVal = 50;
    theLimits.minimum = inVal;
    outVal = theLimits.minimum;
    XCTAssertEqual(inVal, outVal);
    
}

- (void)testMaximum {
    
    double inVal = 50;
    theLimits.maximum = inVal;
    double outVal = theLimits.maximum;
    XCTAssertEqual(inVal, outVal);
    
    inVal = 80;
    theLimits.maximum = inVal;
    outVal = theLimits.maximum;
    XCTAssertEqual(inVal, outVal);
    
}

@end
