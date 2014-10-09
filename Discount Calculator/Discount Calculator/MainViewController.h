//
//  MainViewController.h
//  Discount Calculator
//  Krazydave65@csu.fullerton.edu
//  Created by David Pedroza on 10/4/14.
//  Copyright (c) 2014 CSUF. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "discountCalc.h"
#import "GraphViewController.h"

@interface MainViewController : UIViewController{
    IBOutlet UITextField *price;
    IBOutlet UITextField *priceOff;
    IBOutlet UITextField *discount;
    IBOutlet UITextField *addDisc;
    IBOutlet UITextField *tax;
    IBOutlet UILabel *originalPriceLabel;
    IBOutlet UILabel *discountedPriceLabel;
    
    discountCalc *calc;
    
    NSString *OPstring;
    NSString *DPstring;
    NSString *differenceString;
    
    float difference;
    NSString *diffPercent;
    NSString *dpPercent;
    
}



@end
