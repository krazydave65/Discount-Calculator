//
//  MainViewController.m
//  Discount Calculator
//  Krazydave65@csu.fullerton.edu
//  Created by David Pedroza on 10/4/14.
//  Copyright (c) 2014 CSUF. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(discountCalc *)calc
{
    if (!calc){ // if brain doesn't exist... then it is created [here]
        calc = [[discountCalc alloc] init];
    }
    
    return calc;
}

- (IBAction)calculate:(id)sender {
    float originalPrice, discountedPrice;
    float _price = [price.text floatValue];
    float _priceOff = [priceOff.text floatValue];
    float _discount = [discount.text floatValue];
    float _addDisc = [addDisc.text floatValue];
    float _tax = [tax.text floatValue];

    
    originalPrice = [[self calc] originalCalcPrice:_price andTax:_tax];
    discountedPrice = [[self calc] discountCalcPrice:_price andTax:_tax andPriceOff:_priceOff andDiscount:_discount andAddDisc:_addDisc];
    difference = originalPrice - discountedPrice;
    
    float discountPricePercent = (discountedPrice / originalPrice) * 100;
    float differencePricePercent = (difference / originalPrice) * 100;
    
    OPstring = [[NSString alloc]initWithFormat:@"$%.02f", originalPrice];
    DPstring = [[NSString alloc]initWithFormat:@"$%.02f", discountedPrice];
    differenceString = [[NSString alloc]initWithFormat:@"$%.02f", difference];
    dpPercent = [[NSString alloc]initWithFormat:@"%.02f %%",discountPricePercent];
    diffPercent = [[NSString alloc]initWithFormat:@"$%.02f %%",differencePricePercent];
    
    
    originalPriceLabel.text = OPstring;
    discountedPriceLabel.text = DPstring;
    
    //GraphViewController *wvc = [self.storyboard instantiateViewControllerWithIdentifier:
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"Inside prepareForSegue");
    
    if([segue.identifier isEqualToString:@"toGraph"]){
        UINavigationController *navController = (UINavigationController *)segue.destinationViewController;
        GraphViewController *controller = (GraphViewController *)navController.topViewController;
        controller.op2nd = OPstring;
        controller.diff2nd = differenceString;
        controller.dp2nd = DPstring;
        controller.graphDiffPercent = diffPercent;
        controller.graphDpPercent = dpPercent;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
