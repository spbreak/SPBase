//
//  SPBaseController.h
//  Pods
//
//  Created by huanglexian on 16/4/3.
//
//

#import <UIKit/UIKit.h>

typedef void(^SPBRightBarFinishBlock)();

@interface SPBaseController : UIViewController

- (void)leftBarForImageName:(NSString *)str;
- (void)rightBarForImageName:(NSString *)str withFinishBlock:(SPBRightBarFinishBlock)finishBlock;

@end
