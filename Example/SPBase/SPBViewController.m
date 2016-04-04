//
//  SPBViewController.m
//  SPBase
//
//  Created by spbreak on 04/03/2016.
//  Copyright (c) 2016 spbreak. All rights reserved.
//

#import "SPBViewController.h"
#import "TestViewController.h"

@interface SPBViewController ()
@property (weak, nonatomic) TestViewController *con;
@end

@implementation SPBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [btn setFrame:CGRectMake(100, 100, 100, 100)];
    [btn setTitle:@"推送" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(p_btn) forControlEvents:UIControlEventTouchUpInside];
    [btn setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:btn];
    
    UIButton *btnA = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [btnA setFrame:CGRectMake(250, 100, 100, 100)];
    [btnA setTitle:@"检测对象" forState:UIControlStateNormal];
    [btnA addTarget:self action:@selector(p_btnA) forControlEvents:UIControlEventTouchUpInside];
    [btnA setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:btnA];
}

- (void)p_btn{
    TestViewController *con = [TestViewController new];
    [self.navigationController pushViewController:con animated:YES];
    self.con = con;
}

- (void)p_btnA{
    NSLog(@"推送控制器: %@",self.con);
    NSLog(@"%@",self.con.color);
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
