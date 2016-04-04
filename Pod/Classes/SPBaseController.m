//
//  SPBaseController.m
//  Pods
//
//  Created by huanglexian on 16/4/3.
//
//

#import "SPBaseController.h"

@interface SPBaseController () <UIGestureRecognizerDelegate>

@property (nonatomic, copy) SPBRightBarFinishBlock rightBarFinishBlock;

@end

@implementation SPBaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
}

#pragma mark - UIGestureRecognizerDelegate
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
    if (self.navigationController.viewControllers.count == 1){
        return NO;
    }else{
        return YES;
    }
}

#pragma mark - Public
- (void)leftBarForImageName:(NSString *)str{
    UIBarButtonItem *bar=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:str] style:UIBarButtonItemStyleDone target:self action:@selector(p_back)];
    if(([[[UIDevice currentDevice] systemVersion] floatValue]>=7.0?20:0)){
        UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc]
                                           initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                                           target:nil action:nil];
        negativeSpacer.width = -10;
        self.navigationItem.leftBarButtonItems = @[negativeSpacer, bar];
    }else{
        self.navigationItem.leftBarButtonItem = bar;
    }
}

- (void)rightBarForImageName:(NSString *)str withFinishBlock:(SPBRightBarFinishBlock)finishBlock{
    self.rightBarFinishBlock = finishBlock;
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:str] style:UIBarButtonItemStyleDone target:self action:@selector(p_rightBarAction)];
}

#pragma makr - Private
-(void)p_back{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)p_rightBarAction{
    if (_rightBarFinishBlock) {
        _rightBarFinishBlock();
    }
}

@end
