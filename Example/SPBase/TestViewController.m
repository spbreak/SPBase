//
//  TestViewController.m
//  SPBase
//
//  Created by huanglexian on 16/4/3.
//  Copyright © 2016年 spbreak. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
//    
    [self leftBarForImageName:@"left"];
    
    UIView *view = [UIView new];
    self.color = view;
    __weak typeof(self) weakSelf = self;
    [self rightBarForImageName:@"right" withFinishBlock:^{
        NSLog(@"%@",weakSelf.color);
        NSLog(@"%@",weakSelf);
    }];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [btn setFrame:CGRectMake(100, 100, 100, 100)];
    [btn addTarget:self action:@selector(p_btn) forControlEvents:UIControlEventTouchUpInside];
    [btn setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:btn];
    
    
}

- (void)p_btn{
    NSLog(@"%@", self.color);
}

@end
