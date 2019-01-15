//
//  AutoLayoutViewController.m
//  W2D2-Views+AutoLayout
//
//  Created by Daniel Mathews on 2019-01-15.
//  Copyright © 2019 Daniel Mathews. All rights reserved.
//

#import "AutoLayoutViewController.h"

@interface AutoLayoutViewController ()

@end

@implementation AutoLayoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *orangeBox = [[UIView alloc] initWithFrame:CGRectZero];
    orangeBox.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:orangeBox];
    
    orangeBox.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSLayoutConstraint *topLayout = [NSLayoutConstraint
                                     constraintWithItem:orangeBox attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:200];
    
    topLayout.active = YES;
    
    NSLayoutConstraint *heightLayout = [NSLayoutConstraint
                                     constraintWithItem:orangeBox attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeHeight multiplier:0.5 constant:0];
    
    heightLayout.active = YES;
    
    NSLayoutConstraint *widthLayout = [NSLayoutConstraint
                                        constraintWithItem:orangeBox attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:200];
    
    widthLayout.active = YES;
    
    NSLayoutConstraint *centerXLayout = [NSLayoutConstraint
                                       constraintWithItem:orangeBox attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    
    centerXLayout.active = YES;
    
    
//    [self.view addConstraints:@[topLayout, heightLayout, widthLayout, centerXLayout]];
    
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
