//
//  ViewController.m
//  W2D2-Views+AutoLayout
//
//  Created by Daniel Mathews on 2019-01-15.
//  Copyright © 2019 Daniel Mathews. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIView *redBox;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.redBox = [[UIView alloc] initWithFrame:CGRectMake(100, 250, 200, 100)];
    self.redBox.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redBox];
    
    UIButton *animateButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [animateButton setTitle:@"Animated" forState:UIControlStateNormal];
    animateButton.frame = CGRectMake(100, 400, 200, 200);
    [self.view addSubview:animateButton];
    [animateButton addTarget:self action:@selector(animateButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)animateButtonPressed:(UIButton *)sender {
    [UIView animateWithDuration:2.0 animations:^{
        self.redBox.alpha = 0.01;
    }];
}

- (IBAction)secondButtonPressed:(UIButton *)sender {
}

@end
