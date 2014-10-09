//
//  discountCalc.m
//  Discount Calculator
//  Krazydave65@csu.fullerton.edu
//  Created by David Pedroza on 10/5/14.
//  Copyright (c) 2014 CSUF. All rights reserved.
//

#import "discountCalc.h"

@implementation discountCalc

-(float )originalCalcPrice:(float)aPrice andTax:(float)aTax{
    
   // NSNumber *testNSNumber = [NSNumber numberWithFloat: (aPrice + (aPrice *(aTax*.01)))];
    
    
   // NSString* formattedNumber = [NSString stringWithFormat:@"%.02f", myFloat];


    return (aPrice + (aPrice *(aTax*.01)));
}

-(float)discountCalcPrice:(float)aPrice andTax:(float)aTax andPriceOff:(float)priceOff andDiscount:(float)aDiscount andAddDisc:(float)addDisc{
    
    
    discountedPrice = aPrice + (aPrice * (aTax * .01));
    
    aDiscount = (aPrice * (aDiscount * .01));
    
    addDisc = (aPrice - aDiscount)*(addDisc * .01);
    
    discountedPrice = discountedPrice - aDiscount - addDisc - priceOff;
    
    
    //discountedPrice -= .01;
    
//    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
//    
//    [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
//    
//    NSNumber *testNSNumber = [NSNumber numberWithFloat: discountedPrice];
    
    return discountedPrice;
}

-(float )priceDifferenceOriginal:(float)orignial andDicountedPrice:(float)discounted{
    
    float difference;
    
    difference = original - discounted;
    
    
//    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
//    
//    [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
//    
//    NSNumber *testNSNumber = [NSNumber numberWithFloat: difference];
    
    return difference;
    
}


@end
