//
//  GraphViewController.h
//  Discount Calculator
//
//  Created by David Pedroza on 10/4/14.
//  Copyright (c) 2014 CSUF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GraphViewController : UIViewController{
    
    __weak IBOutlet UILabel *orignialPrice;
    __weak IBOutlet UILabel *differencePrice;
    __weak IBOutlet UILabel *discountPrice;
    __weak IBOutlet UILabel *diffPercent;
    __weak IBOutlet UILabel *discountPricePercent;
    
}

@property(nonatomic) NSString *op2nd;
@property(nonatomic) NSString *diff2nd;
@property(nonatomic) NSString *dp2nd;

@property(nonatomic) NSString *graphDiffPercent;
@property(nonatomic) NSString *graphDpPercent;



//IBOutlet UILabel *op2nd;
//IBOutlet UILabel *dp2nd;
//IBOutlet UILabel *difference;

@end
