//
//  secondViewController.h
//  iOS通知传值
//
//  Created by 李育腾 on 2022/8/3.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface secondViewController : UIViewController
// 需要传过去的字符串
@property (nonatomic, strong)NSString *string;
@property (nonatomic, strong)NSMutableDictionary* dictionary;
// 点击按钮跳转到第一界面
@property (nonatomic, strong)UIButton* button;

@end

NS_ASSUME_NONNULL_END
