//
//  HBCIngredient.h
//  HomebrewCore
//
//  Created by Daryl Freeman on 10/19/14.
//  Copyright (c) 2014 Daryl MacLaughlin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HBCIngredient <NSObject>

@property NSString name;
@property double amount;
@property NSString ingredientDescription;

@end
