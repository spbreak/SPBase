//
//  SPBaseController.h
//  Pods
//
//  Created by huanglexian on 16/4/3.
//
//

#import <UIKit/UIKit.h>

typedef void(^SPBBarFinishBlock)();

@interface SPBaseController : UIViewController

- (void)leftBarForImageName:(NSString *)str withFinishBlock:(SPBBarFinishBlock)finishBlock;
- (void)rightBarForImageName:(NSString *)str withFinishBlock:(SPBBarFinishBlock)finishBlock;

@end
