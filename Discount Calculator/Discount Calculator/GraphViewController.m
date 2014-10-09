//
//  GraphViewController.m
//  Discount Calculator
//
//  Created by David Pedroza on 10/4/14.
//  Copyright (c) 2014 CSUF. All rights reserved.
//

#import "GraphViewController.h"

@interface GraphViewController ()

@end



@implementation GraphViewController

@synthesize op2nd;
@synthesize diff2nd;
@synthesize dp2nd;
@synthesize graphDiffPercent;
@synthesize graphDpPercent;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    orignialPrice.text = op2nd;
    differencePrice.text = diff2nd;
    discountPrice.text = dp2nd;
    
    diffPercent.text = graphDiffPercent;
    discountPricePercent.text = graphDpPercent;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
