//
//  discountCalc.h
//  Discount Calculator
//  Krazydave65@csu.fullerton.edu
//  Created by David Pedroza on 10/5/14.
//  Copyright (c) 2014 CSUF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface discountCalc : NSObject{
    float original;
    float discountedPrice;
}

-(float)originalCalcPrice:(float)aPrice andTax:(float)aTax;

-(float)discountCalcPrice:(float)aPrice andTax:(float)aTax andPriceOff:(float)priceOff andDiscount:(float)aDiscount andAddDisc:(float)addDisc;

-(float)priceDifferenceOriginal:(float)orignial andDicountedPrice:(float)discounted;


@end
